Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/packed_image_convert?download=true
inline.NumInlined: 3820
inline.NumDeleted: 1734
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN3jxl13ImageMetadataC2ERKS0_:bb.a

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.p) #24
  unreachable

_ZNSt3__16vectorIhNS_9allocatorIhEEE11__vallocateB8nn180100Em.exit.i.i.i.i: ; preds = %bb.b
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #25 ; 4 uses
  store ptr %i.aa, ptr %i.p, align 8, !tbaa !166
  store ptr %i.aa, ptr %i.r, align 8, !tbaa !167
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y ; 2 uses
  store ptr %i.ab, ptr %i.s, align 8, !tbaa !168
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.t, i64 %i.y, i1 false)
  store ptr %i.ab, ptr %i.r, align 8, !tbaa !167
  br label %_ZN3jxl13ColorEncodingC2ERKS0_.exit

_ZN3jxl13ColorEncodingC2ERKS0_.exit:              ; preds = %bb.a, %_ZNSt3__16vectorIhNS_9allocatorIhEEE11__vallocateB8nn180100Em.exit.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.ac, ptr noundef nonnull align 8 dereferenceable(52) %i.ad, i64 52, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl8CustomxyE, i64 16), ptr %i.ae, align 8, !tbaa !177
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ah = load i64, ptr %i.ag, align 8
  store i64 %i.ah, ptr %i.af, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl22CustomTransferFunctionE, i64 16), ptr %i.ai, align 8, !tbaa !177
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl8CustomxyE, i64 16), ptr %i.al, align 8, !tbaa !177
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ao = load i64, ptr %i.an, align 8
  store i64 %i.ao, ptr %i.am, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl8CustomxyE, i64 16), ptr %i.ap, align 8, !tbaa !177
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.as = load i64, ptr %i.ar, align 8
  store i64 %i.as, ptr %i.aq, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl8CustomxyE, i64 16), ptr %i.at, align 8, !tbaa !177
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.aw = load i64, ptr %i.av, align 8
  store i64 %i.aw, ptr %i.au, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ax, ptr noundef nonnull align 8 dereferenceable(7) %i.ay, i64 7, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl10SizeHeaderE, i64 16), ptr %i.az, align 8, !tbaa !177
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 264
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl11ToneMappingE, i64 16), ptr %i.bc, align 8, !tbaa !177
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 296
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bd, ptr noundef nonnull align 8 dereferenceable(20) %i.be, i64 20, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !398
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !398
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !105 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !104 ; 3 uses
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 3 uses
  %.not.i.i = icmp eq ptr %i.bo, %i.bm
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEEC2ERKS5_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN3jxl13ColorEncodingC2ERKS0_.exit
  %i.bs = sdiv exact i64 %i.br, 96
  %i.bt = icmp ugt i64 %i.bs, 192153584101141162
  br i1 %i.bt, label %bb.e, label %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNKSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.bi) #24
  unreachable

_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i: ; preds = %bb.d
  %i.bu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #25 ; 6 uses
  store ptr %i.bu, ptr %i.bi, align 8, !tbaa !105
  store ptr %i.bu, ptr %i.bk, align 8, !tbaa !104
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.br
  store ptr %i.bv, ptr %i.bl, align 8, !tbaa !175
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl16ExtraChannelInfoEEEE9constructB8nn180100IS3_JRS3_EvEEvRS4_PT_DpOT0_.exit.i.i.i.i.i, %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i
  %.014.i.i.i.i.i = phi ptr [ %i.cp, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl16ExtraChannelInfoEEEE9constructB8nn180100IS3_JRS3_EvEEvRS4_PT_DpOT0_.exit.i.i.i.i.i ], [ %i.bm, %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i ] ; 8 uses
  %.01113.i.i.i.i.i = phi ptr [ %i.cq, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl16ExtraChannelInfoEEEE9constructB8nn180100IS3_JRS3_EvEEvRS4_PT_DpOT0_.exit.i.i.i.i.i ], [ %i.bu, %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i ] ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl16ExtraChannelInfoE, i64 16), ptr %.01113.i.i.i.i.i, align 8, !tbaa !177
  %i.bw = getelementptr inbounds nuw i8, ptr %.01113.i.i.i.i.i, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 8
  %i.by = load i64, ptr %i.bx, align 8
  store i64 %i.by, ptr %i.bw, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.01113.i.i.i.i.i, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl8BitDepthE, i64 16), ptr %i.bz, align 8, !tbaa !177
  %i.ca = getelementptr inbounds nuw i8, ptr %.01113.i.i.i.i.i, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ca, ptr noundef nonnull align 8 dereferenceable(12) %i.cb, i64 12, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %.01113.i.i.i.i.i, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 40
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !172
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !172
  %i.cf = getelementptr inbounds nuw i8, ptr %.01113.i.i.i.i.i, i64 48 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 48 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 8
  %i.ci = trunc i8 %i.ch to i1
  br i1 %i.ci, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false), !tbaa.struct !399
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl16ExtraChannelInfoEEEE9constructB8nn180100IS3_JRS3_EvEEvRS4_PT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 64
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !178
  %i.cl = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 56
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !178
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef %i.ck, i64 noundef %i.cm) #20
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl16ExtraChannelInfoEEEE9constructB8nn180100IS3_JRS3_EvEEvRS4_PT_DpOT0_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl16ExtraChannelInfoEEEE9constructB8nn180100IS3_JRS3_EvEEvRS4_PT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.cn = getelementptr inbounds nuw i8, ptr %.01113.i.i.i.i.i, i64 72
  %i.co = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 96 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.01113.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cp, %i.bo
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !396

_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl16ExtraChannelInfoEEEE9constructB8nn180100IS3_JRS3_EvEEvRS4_PT_DpOT0_.exit.i.i.i.i.i
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.bu to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = getelementptr inbounds i8, ptr %i.bu, i64 %i.ct
  store ptr %i.cu, ptr %i.bk, align 8, !tbaa !104
  br label %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEEC2ERKS5_.exit

_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEEC2ERKS5_.exit: ; preds = %_ZN3jxl13ColorEncodingC2ERKS0_.exit, %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl13PreviewHeaderE, i64 16), ptr %i.cv, align 8, !tbaa !177
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl15AnimationHeaderE, i64 16), ptr %i.cy, align 8, !tbaa !177
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.cz, ptr noundef nonnull align 8 dereferenceable(13) %i.da, i64 13, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 408
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.db, ptr noundef nonnull align 8 dereferenceable(9) %i.dc, i64 9, i1 false)
  ret void
}

declare i32 @_ZN3jxl17TransformIfNeededERKNS_11ImageBundleERKNS_13ColorEncodingERK15JxlCmsInterfacePNS_10ThreadPoolEPS0_PPS1_(ptr noundef nonnull align 8 dereferenceable(504), ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_ZN3jxl17ConvertToExternalERKNS_11ImageBundleEmbm13JxlEndiannessmPNS_10ThreadPoolEPvmRKNS_13PixelCallbackENS_11OrientationEb(ptr noundef nonnull align 8 dereferenceable(504), i64 noundef, i1 noundef zeroext, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #6

declare i32 @_ZN3jxl10SizeHeader3SetEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i32 @_ZN3jxl3cms13ColorEncoding12FromExternalERK16JxlColorEncoding(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.jxl::cms::PrimariesCIExy", align 16 ; 6 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !239    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.a, ptr %i.b, align 8, !tbaa !187
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !240  ; 3 uses
  switch i32 %i.d, label %_ZN3jxl3cmsL22WhitePointFromExternalE13JxlWhitePointPNS0_10WhitePointE.exit [
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 10, label %bb.b
    i32 11, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  store i32 %i.d, ptr %0, align 8, !tbaa !400
  %i.e = icmp eq i32 %i.d, 2
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %3 = load double, ptr %i.f, align 8, !tbaa !222 ; 6 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %5 = load double, ptr %4, align 8, !tbaa !222   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i8, ptr %i.g, align 4, !tbaa !241, !range !164, !noundef !165
  %i.i = trunc nuw i8 %i.h to i1
  %.not = xor i1 %i.i, true
  %i.j = fcmp oeq double %3, 0.000000e+00
  %or.cond = select i1 %.not, i1 true, i1 %i.j
  %i.k = fcmp oeq double %5, 0.000000e+00
  %or.cond91 = select i1 %or.cond, i1 true, i1 %i.k
  br i1 %or.cond91, label %_ZN3jxl3cmsL22WhitePointFromExternalE13JxlWhitePointPNS0_10WhitePointE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = fadd double %3, -3.127000e-01
  %i.m = tail call noundef double @llvm.fabs.f64(double %i.l)
  %i.n = fcmp ugt double %i.m, 1.000000e-03
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = fadd double %5, -3.290000e-01
  %i.p = tail call noundef double @llvm.fabs.f64(double %i.o)
  %i.q = fcmp ugt double %i.p, 1.000000e-03
  br i1 %i.q, label %bb.f, label %.thread.sink.split

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = fadd double %3, f0xBFD5555555555555
  %i.s = tail call noundef double @llvm.fabs.f64(double %i.r)
  %i.t = fcmp ugt double %i.s, 1.000000e-03
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = fadd double %5, f0xBFD5555555555555
  %i.v = tail call noundef double @llvm.fabs.f64(double %i.u)
  %i.w = fcmp ugt double %i.v, 1.000000e-03
  br i1 %i.w, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = fadd double %3, -3.140000e-01
  %i.y = tail call noundef double @llvm.fabs.f64(double %i.x)
  %i.z = fcmp ugt double %i.y, 1.000000e-03
  br i1 %i.z, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = fadd double %5, -3.510000e-01
  %i.ab = tail call noundef double @llvm.fabs.f64(double %i.aa)
  %i.ac = fcmp ugt double %i.ab, 1.000000e-03
  br i1 %i.ac, label %bb.j, label %.thread.sink.split

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 2, ptr %0, align 8, !tbaa !242
  %6 = tail call noundef double @llvm.fabs.f64(double %3)
  %7 = fcmp olt double %6, 4.000000e+00
  %8 = tail call double @llvm.fabs.f64(double %5)
  %9 = fcmp olt double %8, 4.000000e+00
  %or.cond.i = and i1 %7, %9
  br i1 %or.cond.i, label %bb.k, label %_ZN3jxl3cmsL22WhitePointFromExternalE13JxlWhitePointPNS0_10WhitePointE.exit

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ae = fmul nnan double %3, 1.000000e+06
  %i.af = fptrunc double %i.ae to float
  %i.ag = tail call float @llvm.round.f32(float %i.af)
  %i.ah = fptosi float %i.ag to i32               ; 2 uses
  store i32 %i.ah, ptr %i.ad, align 4, !tbaa !243
  %i.ai = add i32 %i.ah, -2097152
  %or.cond.i.i = icmp ult i32 %i.ai, -4194304
  br i1 %or.cond.i.i, label %_ZN3jxl3cmsL22WhitePointFromExternalE13JxlWhitePointPNS0_10WhitePointE.exit, label %_ZN3jxl3cms13ColorEncoding13SetWhitePointERKNS0_5CIExyE.exit

_ZN3jxl3cms13ColorEncoding13SetWhitePointERKNS0_5CIExyE.exit: ; preds = %bb.k
  %i.aj = fmul nnan double %5, 1.000000e+06
  %i.ak = fptrunc double %i.aj to float
  %i.al = tail call float @llvm.round.f32(float %i.ak)
  %i.am = fptosi float %i.al to i32               ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.am, ptr %i.an, align 8, !tbaa !244
  %i.ao = add i32 %i.am, -2097152
  %or.cond8.i.i = icmp ult i32 %i.ao, -4194304
  br i1 %or.cond8.i.i, label %_ZN3jxl3cmsL22WhitePointFromExternalE13JxlWhitePointPNS0_10WhitePointE.exit, label %.thread

.thread.sink.split:                               ; preds = %bb.i, %bb.g, %bb.e
  %.sink = phi i32 [ 10, %bb.g ], [ 1, %bb.e ], [ 11, %bb.i ]
  store i32 %.sink, ptr %0, align 8, !tbaa !242
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %_ZN3jxl3cms13ColorEncoding13SetWhitePointERKNS0_5CIExyE.exit, %bb.b
  switch i32 %i.a, label %bb.o [
    i32 0, label %bb.l
    i32 3, label %bb.l
  ]

bb.l:                                             ; preds = %.thread, %.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !245 ; 3 uses
  switch i32 %i.aq, label %_ZN3jxl3cmsL22WhitePointFromExternalE13JxlWhitePointPNS0_10WhitePointE.exit [
    i32 1, label %bb.m
    i32 2, label %bb.m
    i32 9, label %bb.m
    i32 11, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !401
  %i.as = icmp eq i32 %i.aq, 2
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = load <2 x double>, ptr %i.at, align 8, !tbaa !222
  store <2 x double> %i.au, ptr %2, align 16, !tbaa !222
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = load <2 x double>, ptr %i.av, align 8, !tbaa !222
  store <2 x double> %i.ax, ptr %i.aw, align 16, !tbaa !222
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ba = load <2 x double>, ptr %i.ay, align 8, !tbaa !222
  store <2 x double> %i.ba, ptr %i.az, align 16, !tbaa !222
  %i.bb = call i32 @_ZN3jxl3cms13ColorEncoding12SetPrimariesERKNS0_14PrimariesCIExyE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(48) %2) #20 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %i.bc, label %bb.o, label %_ZN3jxl3cmsL22WhitePointFromExternalE13JxlWhitePointPNS0_10WhitePointE.exit

bb.o:                                             ; preds = %bb.n, %.thread, %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !246 ; 8 uses
  switch i32 %i.be, label %_ZN3jxl3cmsL22WhitePointFromExternalE13JxlWhitePointPNS0_10WhitePointE.exit [
    i32 65535, label %bb.p
    i32 1, label %_ZN3jxl3cms22CustomTransferFunction8SetGammaEd.exit.thread
    i32 2, label %_ZN3jxl3cms22CustomTransferFunction8SetGammaEd.exit.thread
    i32 8, label %_ZN3jxl3cms22CustomTransferFunction8SetGammaEd.exit.thread
    i32 13, label %_ZN3jxl3cms22CustomTransferFunction8SetGammaEd.exit.thread
    i32 16, label %_ZN3jxl3cms22CustomTransferFunction8SetGammaEd.exit.thread
    i32 17, label %_ZN3jxl3cms22CustomTransferFunction8SetGammaEd.exit.thread
    i32 18, label %_ZN3jxl3cms22CustomTransferFunction8SetGammaEd.exit.thread
  ]

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !247 ; 5 uses
  %i.bh = fcmp olt double %i.bg, f0x3F20000000000000
  %i.bi = fcmp ogt double %i.bg, 1.000000e+00
  %or.cond.i37 = or i1 %i.bh, %i.bi
  br i1 %or.cond.i37, label %_ZN3jxl3cmsL22WhitePointFromExternalE13JxlWhitePointPNS0_10WhitePointE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = fadd double %i.bg, -1.000000e+00
  %i.bk = call noundef double @llvm.fabs.f64(double %i.bj)
  %i.bl = fcmp ugt double %i.bk, 1.000000e-03
  br i1 %i.bl, label %bb.r, label %_ZN3jxl3cms22CustomTransferFunction8SetGammaEd.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.bm = fadd double %i.bg, f0xBFD89D89D89D89D8
  %i.bn = call noundef double @llvm.fabs.f64(double %i.bm)
  %i.bo = fcmp ugt double %i.bn, 1.000000e-03
  br i1 %i.bo, label %bb.s, label %_ZN3jxl3cms22CustomTransferFunction8SetGammaEd.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.bp = fmul double %i.bg, 1.000000e+07
  %i.bq = fptrunc double %i.bp to float
  %i.br = call float @llvm.round.f32(float %i.bq)
  %i.bs = fptoui float %i.br to i32
  br label %_ZN3jxl3cms22CustomTransferFunction8SetGammaEd.exit.thread

_ZN3jxl3cms22CustomTransferFunction8SetGammaEd.exit.thread: ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.q, %bb.r, %bb.s
  %.sroa.9.1 = phi i32 [ 2, %bb.s ], [ 17, %bb.r ], [ 8, %bb.q ], [ %i.be, %bb.o ], [ %i.be, %bb.o ], [ %i.be, %bb.o ], [ %i.be, %bb.o ], [ %i.be, %bb.o ], [ %i.be, %bb.o ], [ %i.be, %bb.o ]
  %.sroa.742.0 = phi i32 [ %i.bs, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.o ], [ 0, %bb.o ], [ 0, %bb.o ], [ 0, %bb.o ], [ 0, %bb.o ], [ 0, %bb.o ], [ 0, %bb.o ]
  %.sroa.0.1 = phi i8 [ 1, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.o ], [ 0, %bb.o ], [ 0, %bb.o ], [ 0, %bb.o ], [ 0, %bb.o ], [ 0, %bb.o ], [ 0, %bb.o ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sroa.0.1, ptr %i.bt, align 8, !tbaa !402
  %.sroa.742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.742.0, ptr %.sroa.742.0..sroa_idx, align 4, !tbaa !160
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sroa.9.1, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !403
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !248 ; 2 uses
  %i.bw = icmp ult i32 %i.bv, 4
  br i1 %i.bw, label %bb.t, label %_ZN3jxl3cmsL22WhitePointFromExternalE13JxlWhitePointPNS0_10WhitePointE.exit

bb.t:                                             ; preds = %_ZN3jxl3cms22CustomTransferFunction8SetGammaEd.exit.thread
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bv, ptr %i.bx, align 8, !tbaa !404
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !166
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !167
  br label %_ZN3jxl3cmsL22WhitePointFromExternalE13JxlWhitePointPNS0_10WhitePointE.exit

_ZN3jxl3cmsL22WhitePointFromExternalE13JxlWhitePointPNS0_10WhitePointE.exit: ; preds = %bb.t, %bb.p, %_ZN3jxl3cms22CustomTransferFunction8SetGammaEd.exit.thread, %bb.o, %bb.c, %bb.j, %bb.k, %bb.l, %bb.a, %bb.n, %_ZN3jxl3cms13ColorEncoding13SetWhitePointERKNS0_5CIExyE.exit
  %.sroa.044.1 = phi i32 [ 1, %bb.k ], [ %i.bb, %bb.n ], [ 1, %bb.l ], [ 1, %_ZN3jxl3cms13ColorEncoding13SetWhitePointERKNS0_5CIExyE.exit ], [ 1, %bb.a ], [ 1, %bb.c ], [ 1, %bb.j ], [ 0, %bb.t ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %_ZN3jxl3cms22CustomTransferFunction8SetGammaEd.exit.thread ]
  ret i32 %.sroa.044.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i32 @_ZN3jxl3cms13ColorEncoding12SetPrimariesERKNS0_14PrimariesCIExyE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !241, !range !164, !noundef !165
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !187
  %i.f = add i32 %i.e, -3
  %spec.select.i = icmp ult i32 %i.f, -2
  br i1 %spec.select.i, label %bb.c, label %bb.ag

bb.c:                                             ; preds = %bb.b
  %i.g = load double, ptr %1, align 8, !tbaa !406 ; 4 uses
  %i.h = fcmp oeq double %i.g, 0.000000e+00
  br i1 %i.h, label %bb.ag, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !407 ; 4 uses
  %i.k = fcmp oeq double %i.j, 0.000000e+00
  br i1 %i.k, label %bb.ag, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !408 ; 4 uses
  %i.n = fcmp oeq double %i.m, 0.000000e+00
  br i1 %i.n, label %bb.ag, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !409 ; 4 uses
  %i.q = fcmp oeq double %i.p, 0.000000e+00
  br i1 %i.q, label %bb.ag, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !410 ; 4 uses
  %i.t = fcmp oeq double %i.s, 0.000000e+00
  br i1 %i.t, label %bb.ag, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load double, ptr %i.u, align 8, !tbaa !411 ; 4 uses
  %i.w = fcmp oeq double %i.v, 0.000000e+00
  br i1 %i.w, label %bb.ag, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = fadd double %i.g, -6.400000e-01
  %i.y = tail call noundef double @llvm.fabs.f64(double %i.x)
  %i.z = fcmp ugt double %i.y, 1.000000e-03
  br i1 %i.z, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = fadd double %i.j, -3.300000e-01
  %i.ab = tail call noundef double @llvm.fabs.f64(double %i.aa)
  %i.ac = fcmp ugt double %i.ab, 1.000000e-03
  br i1 %i.ac, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = fadd double %i.m, -3.000000e-01
  %i.ae = tail call noundef double @llvm.fabs.f64(double %i.ad)
  %i.af = fcmp ugt double %i.ae, 1.000000e-03
end_hunk_0
begin_hunk_1_@_ZNSt3__16vectorIhNS_9allocatorIhEEE18__assign_with_sizeB8nn180100INS_11__wrap_iterIPKhEES8_EEvT_T0_l:bb.a
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__14copyB8nn180100INS_11__wrap_iterIPKhEEPhEET0_T_S7_S6_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %1, i64 %i.j, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !167
  br label %_ZNSt3__14copyB8nn180100INS_11__wrap_iterIPKhEEPhEET0_T_S7_S6_.exit

_ZNSt3__14copyB8nn180100INS_11__wrap_iterIPKhEEPhEET0_T_S7_S6_.exit: ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.h, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.o = ptrtoint ptr %2 to i64
  %i.p = sub i64 %i.o, %i.m                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %2, %i.l
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endINS_11__wrap_iterIPKhEES8_EEvT_T0_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__14copyB8nn180100INS_11__wrap_iterIPKhEEPhEET0_T_S7_S6_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.l, i64 %i.p, i1 false)
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endINS_11__wrap_iterIPKhEES8_EEvT_T0_m.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endINS_11__wrap_iterIPKhEES8_EEvT_T0_m.exit: ; preds = %_ZNSt3__14copyB8nn180100INS_11__wrap_iterIPKhEEPhEET0_T_S7_S6_.exit, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  store ptr %i.q, ptr %i.g, align 8, !tbaa !167
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  %i.r = ptrtoint ptr %2 to i64
  %i.s = ptrtoint ptr %1 to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPKhEES5_PhEENS_4pairIT0_T2_EES8_T1_S9_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %1, i64 %i.t, i1 false)
  br label %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPKhEES5_PhEENS_4pairIT0_T2_EES8_T1_S9_.exit

_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPKhEES5_PhEENS_4pairIT0_T2_EES8_T1_S9_.exit: ; preds = %bb.f, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  store ptr %i.u, ptr %i.g, align 8, !tbaa !167
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.v, align 8, !tbaa !167
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit: ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.b, %bb.h ], [ null, %bb.i ] ; 2 uses
  %i.x = icmp slt i64 %3, 0
  br i1 %i.x, label %bb.j, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE11__vallocateB8nn180100Em.exit

bb.j:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit
  tail call void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  unreachable

_ZNSt3__16vectorIhNS_9allocatorIhEEE11__vallocateB8nn180100Em.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit
  %i.y = ptrtoint ptr %i.w to i64
  %.not.i19 = icmp ult ptr %i.w, inttoptr (i64 4611686018427387903 to ptr)
  %i.z = shl nuw nsw i64 %i.y, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %3)
  %.0.i = select i1 %.not.i19, i64 %.sroa.speculated.i, i64 9223372036854775807 ; 2 uses
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i) #25 ; 5 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !166
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !167
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.0.i
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !168
  %i.ad = ptrtoint ptr %2 to i64
  %i.ae = ptrtoint ptr %1 to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i20 = icmp eq ptr %2, %1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i20, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endINS_11__wrap_iterIPKhEES8_EEvT_T0_m.exit21, label %bb.k

bb.k:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE11__vallocateB8nn180100Em.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %1, i64 %i.af, i1 false)
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endINS_11__wrap_iterIPKhEES8_EEvT_T0_m.exit21

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endINS_11__wrap_iterIPKhEES8_EEvT_T0_m.exit21: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE11__vallocateB8nn180100Em.exit, %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !167
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endINS_11__wrap_iterIPKhEES8_EEvT_T0_m.exit, %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPKhEES5_PhEENS_4pairIT0_T2_EES8_T1_S9_.exit, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endINS_11__wrap_iterIPKhEES8_EEvT_T0_m.exit21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorIN3jxl6extras11PackedFrameENS_9allocatorIS3_EEE21__push_back_slow_pathIS3_EEPS3_OT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141
  %i.c = load ptr, ptr %0, align 8, !tbaa !140
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 200
  %i.h = add nsw i64 %i.g, 1                      ; 2 uses
  %i.i = icmp ugt i64 %i.h, 92233720368547758
  br i1 %i.i, label %bb.b, label %_ZNKSt3__16vectorIN3jxl6extras11PackedFrameENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__16vectorIN3jxl6extras11PackedFrameENS_9allocatorIS3_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  unreachable

_ZNKSt3__16vectorIN3jxl6extras11PackedFrameENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !171
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = sdiv exact i64 %i.m, 200                 ; 2 uses
  %.not.i = icmp ult i64 %i.n, 46116860184273879
  %i.o = shl nuw nsw i64 %i.n, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %i.h)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 92233720368547758 ; 4 uses
  %i.p = icmp ne i64 %.0.i, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp ugt i64 %.0.i, 92233720368547758
  br i1 %i.q, label %bb.c, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl6extras11PackedFrameEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i

bb.c:                                             ; preds = %_ZNKSt3__16vectorIN3jxl6extras11PackedFrameENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #24
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl6extras11PackedFrameEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i: ; preds = %_ZNKSt3__16vectorIN3jxl6extras11PackedFrameENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit
  %i.r = mul nuw i64 %.0.i, 200
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #25 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.f ; 4 uses
  %i.u = getelementptr inbounds nuw [200 x i8], ptr %i.s, i64 %.0.i
  tail call void @_ZN3jxl6extras11PackedFrameC1EOS1_(ptr noundef nonnull align 8 dereferenceable(200) %i.t, ptr noundef nonnull align 8 dereferenceable(200) %1) #19
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 200 ; 2 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !141  ; 3 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !171    ; 3 uses
  %.not13.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not13.i.i, label %_ZNSt3__16vectorIN3jxl6extras11PackedFrameENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl6extras11PackedFrameEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i, %.lr.ph.i.i
  %i.y = phi ptr [ %i.z, %.lr.ph.i.i ], [ %i.t, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl6extras11PackedFrameEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i ]
  %.sroa.18.014.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %i.w, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl6extras11PackedFrameEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i ]
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -200 ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %.sroa.18.014.i.i, i64 -200 ; 3 uses
  tail call void @_ZN3jxl6extras11PackedFrameC1EOS1_(ptr noundef nonnull align 8 dereferenceable(200) %i.z, ptr noundef nonnull align 8 dereferenceable(200) %i.aa) #19
  %.not.i.i = icmp eq ptr %i.aa, %i.x
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3jxl6extras11PackedFrameENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !4

_ZNSt3__16vectorIN3jxl6extras11PackedFrameENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !171
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !171
  br label %_ZNSt3__16vectorIN3jxl6extras11PackedFrameENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit

_ZNSt3__16vectorIN3jxl6extras11PackedFrameENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit: ; preds = %_ZNSt3__16vectorIN3jxl6extras11PackedFrameENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exitthread-pre-split, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl6extras11PackedFrameEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i
  %i.ab = phi ptr [ %.pre, %_ZNSt3__16vectorIN3jxl6extras11PackedFrameENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exitthread-pre-split ], [ %i.w, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl6extras11PackedFrameEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i ] ; 2 uses
  %i.ac = phi ptr [ %.pr, %_ZNSt3__16vectorIN3jxl6extras11PackedFrameENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exitthread-pre-split ], [ %i.x, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl6extras11PackedFrameEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i ] ; 5 uses
  %.sroa.2.0.copyload.i.i = phi ptr [ %i.z, %_ZNSt3__16vectorIN3jxl6extras11PackedFrameENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exitthread-pre-split ], [ %i.t, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl6extras11PackedFrameEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i ]
  store ptr %.sroa.2.0.copyload.i.i, ptr %0, align 8, !tbaa !171
  store ptr %i.v, ptr %i.a, align 8, !tbaa !171
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !171
  store ptr %i.u, ptr %i.j, align 8, !tbaa !171
  %.not2.i.i.i.i = icmp eq ptr %i.ac, %i.ab
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl6extras11PackedFrameERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3__16vectorIN3jxl6extras11PackedFrameENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit, %.lr.ph.i.i.i.i
  %i.ae = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %i.ab, %_ZNSt3__16vectorIN3jxl6extras11PackedFrameENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit ]
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -200 ; 3 uses
  tail call void @_ZN3jxl6extras11PackedFrameD1Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %i.af) #19
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.af
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl6extras11PackedFrameERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZNSt3__114__split_bufferIN3jxl6extras11PackedFrameERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt3__16vectorIN3jxl6extras11PackedFrameENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit
  %.not.i4 = icmp eq ptr %i.ac, null
  br i1 %.not.i4, label %_ZNSt3__114__split_bufferIN3jxl6extras11PackedFrameERNS_9allocatorIS3_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__114__split_bufferIN3jxl6extras11PackedFrameERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ai) #23
  br label %_ZNSt3__114__split_bufferIN3jxl6extras11PackedFrameERNS_9allocatorIS3_EEED2Ev.exit

_ZNSt3__114__split_bufferIN3jxl6extras11PackedFrameERNS_9allocatorIS3_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferIN3jxl6extras11PackedFrameERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i, %bb.d
  ret ptr %i.v
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #7

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nobuiltin nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #10 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #11 = { noreturn "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #20 = { "no-builtin-fread" "no-builtin-fwrite" }
attributes #21 = { nounwind }
attributes #22 = { cold nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #23 = { builtin nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #24 = { noreturn "no-builtin-fread" "no-builtin-fwrite" }
attributes #25 = { builtin nounwind allocsize(0) "no-builtin-fread" "no-builtin-fwrite" }
attributes #26 = { noreturn nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #27 = { nounwind willreturn memory(none) "no-builtin-fread" "no-builtin-fwrite" }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !113}
!1 = distinct !{!1, !113}
!2 = distinct !{!2, !113}
!3 = distinct !{!3, !113}
!4 = distinct !{!4, !113}
!5 = distinct !{!5, !113}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"p1 _ZTS22JxlMemoryManagerStruct", !15, i64 0}
!17 = !{!"_ZTSN3jxl6FieldsE"}
!18 = !{!"bool", !11, i64 0}
!19 = !{!"_ZTSN3jxl8BitDepthE", !17, i64 0, !18, i64 8, !12, i64 12, !12, i64 16}
!20 = !{!"_ZTSN3jxl3cms10WhitePointE", !11, i64 0}
!21 = !{!"_ZTSN3jxl3cms9PrimariesE", !11, i64 0}
!22 = !{!"_ZTSN3jxl3cms15RenderingIntentE", !11, i64 0}
!23 = !{!"p1 omnipotent char", !15, i64 0}
!24 = !{!"_ZTSNSt3__122__compressed_pair_elemIPhLi0ELb0EEE", !23, i64 0}
!25 = !{!"_ZTSNSt3__117__compressed_pairIPhNS_9allocatorIhEEEE", !24, i64 0}
!26 = !{!"_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !23, i64 0, !23, i64 8, !25, i64 16}
!27 = !{!"_ZTSN3jxl3cms10ColorSpaceE", !11, i64 0}
!28 = !{!"_ZTSN3jxl3cms16TransferFunctionE", !11, i64 0}
!29 = !{!"_ZTSN3jxl3cms22CustomTransferFunctionE", !18, i64 0, !12, i64 4, !28, i64 8}
!30 = !{!"_ZTSN3jxl3cms8CustomxyE", !12, i64 0, !12, i64 4}
!31 = !{!"_ZTSN3jxl3cms13ColorEncodingE", !20, i64 0, !21, i64 4, !22, i64 8, !18, i64 12, !26, i64 16, !27, i64 40, !18, i64 44, !29, i64 48, !30, i64 60, !30, i64 68, !30, i64 76, !30, i64 84}
!32 = !{!"_ZTSN3jxl8CustomxyE", !17, i64 0, !30, i64 8}
!33 = !{!"_ZTSN3jxl22CustomTransferFunctionE", !17, i64 0, !27, i64 8, !29, i64 12}
!34 = !{!"_ZTSN3jxl13ColorEncodingE", !17, i64 0, !18, i64 8, !18, i64 9, !31, i64 16, !32, i64 112, !33, i64 128, !32, i64 152, !32, i64 168, !32, i64 184}
!35 = !{!"_ZTSN3jxl10SizeHeaderE", !17, i64 0, !18, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28}
!36 = !{!"float", !11, i64 0}
!37 = !{!"_ZTSN3jxl11ToneMappingE", !17, i64 0, !18, i64 8, !36, i64 12, !36, i64 16, !18, i64 20, !36, i64 24}
!38 = !{!"p1 _ZTSN3jxl16ExtraChannelInfoE", !15, i64 0}
!39 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl16ExtraChannelInfoELi0ELb0EEE", !38, i64 0}
!40 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEEE", !39, i64 0}
!41 = !{!"_ZTSNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEEE", !38, i64 0, !38, i64 8, !40, i64 16}
!42 = !{!"_ZTSN3jxl13PreviewHeaderE", !17, i64 0, !18, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28}
!43 = !{!"_ZTSN3jxl15AnimationHeaderE", !17, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !18, i64 20}
!44 = !{!"long", !11, i64 0}
!45 = !{!"_ZTSN3jxl13ImageMetadataE", !17, i64 0, !18, i64 8, !19, i64 16, !18, i64 40, !18, i64 41, !34, i64 48, !12, i64 248, !18, i64 252, !18, i64 253, !18, i64 254, !35, i64 256, !37, i64 288, !12, i64 320, !41, i64 328, !42, i64 352, !43, i64 384, !44, i64 408, !18, i64 416}
!46 = !{!"_ZTSNSt3__15arrayINS0_IfLm3EEELm3EEE", !11, i64 0}
!47 = !{!"_ZTSN3jxl18OpsinInverseMatrixE", !17, i64 0, !18, i64 8, !46, i64 12, !11, i64 48, !11, i64 60}
!48 = !{!"_ZTSN3jxl19CustomTransformDataE", !17, i64 0, !18, i64 8, !18, i64 9, !47, i64 16, !12, i64 96, !11, i64 100, !11, i64 160, !11, i64 380}
!49 = !{!"_ZTSN3jxl13CodecMetadataE", !45, i64 0, !35, i64 424, !48, i64 456}
!50 = !{!"p1 _ZTSN3jxl4jpeg8JPEGDataE", !15, i64 0}
!51 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl4jpeg8JPEGDataELi0ELb0EEE", !50, i64 0}
!52 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl4jpeg8JPEGDataENS_14default_deleteIS3_EEEE", !51, i64 0}
!53 = !{!"_ZTSNSt3__110unique_ptrIN3jxl4jpeg8JPEGDataENS_14default_deleteIS3_EEEE", !52, i64 0}
!54 = !{!"_ZTSN3jxl14ColorTransformE", !11, i64 0}
!55 = !{!"_ZTSN3jxl22YCbCrChromaSubsamplingE", !17, i64 0, !11, i64 8, !11, i64 20, !11, i64 21}
!56 = !{!"_ZTSN3jxl11FrameOriginE", !12, i64 0, !12, i64 4}
!57 = !{!"_ZTSN3jxl9BlendModeE", !11, i64 0}
!58 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE", !11, i64 0}
!59 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE", !58, i64 0}
!60 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE", !59, i64 0}
!61 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !60, i64 0}
!62 = !{!"p1 _ZTSN3jxl13ImageMetadataE", !15, i64 0}
!63 = !{!"_ZTSN3jxl6Image3IfEE", !11, i64 0}
!64 = !{!"p1 _ZTSN3jxl5PlaneIfEE", !15, i64 0}
!65 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl5PlaneIfEELi0ELb0EEE", !64, i64 0}
!66 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl5PlaneIfEENS_9allocatorIS3_EEEE", !65, i64 0}
!67 = !{!"_ZTSNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEEE", !64, i64 0, !64, i64 8, !66, i64 16}
!68 = !{!"_ZTSN3jxl11ImageBundleE", !16, i64 0, !53, i64 8, !54, i64 16, !55, i64 24, !56, i64 48, !12, i64 56, !12, i64 60, !18, i64 64, !18, i64 65, !57, i64 68, !61, i64 72, !62, i64 96, !63, i64 104, !34, i64 272, !67, i64 472, !44, i64 496}
!69 = !{!"p1 _ZTSN3jxl11ImageBundleE", !15, i64 0}
!70 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl11ImageBundleELi0ELb0EEE", !69, i64 0}
!71 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl11ImageBundleENS_9allocatorIS2_EEEE", !70, i64 0}
!72 = !{!"_ZTSNSt3__16vectorIN3jxl11ImageBundleENS_9allocatorIS2_EEEE", !69, i64 0, !69, i64 8, !71, i64 16}
!73 = !{!"_ZTSN3jxl10CodecInOutE", !16, i64 0, !49, i64 8, !68, i64 1688, !72, i64 2192, !44, i64 2216}
!74 = !{!73, !16, i64 0}
!75 = !{!15, !15, i64 0}
!76 = !{!"_ZTS15JxlBitDepthType", !11, i64 0}
!77 = !{!"_ZTS11JxlBitDepth", !76, i64 0, !12, i64 4, !12, i64 8}
!78 = !{!"_ZTS12JxlBlendMode", !11, i64 0}
!79 = !{!"_ZTS12JxlBlendInfo", !78, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!80 = !{!"_ZTS12JxlLayerInfo", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !79, i64 20, !12, i64 36}
!81 = !{!"_ZTS14JxlFrameHeader", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !80, i64 16}
!82 = !{!"_ZTS11JxlDataType", !11, i64 0}
!83 = !{!"_ZTS13JxlEndianness", !11, i64 0}
!84 = !{!"_ZTS14JxlPixelFormat", !12, i64 0, !82, i64 4, !83, i64 8, !44, i64 16}
!85 = !{!"_ZTSNSt3__122__compressed_pair_elemIPvLi0ELb0EEE", !15, i64 0}
!86 = !{!"_ZTSNSt3__122__compressed_pair_elemIPDoFvPvELi1ELb0EEE", !15, i64 0}
!87 = !{!"_ZTSNSt3__117__compressed_pairIPvPDoFvS1_EEE", !85, i64 0, !86, i64 8}
!88 = !{!"_ZTSNSt3__110unique_ptrIvPDoFvPvEEE", !87, i64 0}
!89 = !{!"_ZTSN3jxl6extras11PackedImageE", !44, i64 0, !44, i64 8, !44, i64 16, !84, i64 24, !44, i64 48, !44, i64 56, !44, i64 64, !18, i64 72, !88, i64 80}
!90 = !{!"p1 _ZTSN3jxl6extras11PackedImageE", !15, i64 0}
!91 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl6extras11PackedImageELi0ELb0EEE", !90, i64 0}
!92 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl6extras11PackedImageENS_9allocatorIS3_EEEE", !91, i64 0}
!93 = !{!"_ZTSNSt3__16vectorIN3jxl6extras11PackedImageENS_9allocatorIS3_EEEE", !90, i64 0, !90, i64 8, !92, i64 16}
!94 = !{!"_ZTSN3jxl6extras11PackedFrameE", !81, i64 0, !61, i64 56, !89, i64 80, !93, i64 176}
!95 = !{!"_ZTS14JxlOrientation", !11, i64 0}
!96 = !{!"_ZTS16JxlPreviewHeader", !12, i64 0, !12, i64 4}
!97 = !{!"_ZTS18JxlAnimationHeader", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!98 = !{!"_ZTS12JxlBasicInfo", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !36, i64 20, !36, i64 24, !12, i64 28, !36, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !95, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !96, i64 72, !97, i64 80, !12, i64 96, !12, i64 100, !11, i64 104}
!99 = !{!94, !44, i64 128}
!100 = !{!68, !12, i64 56}
!101 = !{!34, !27, i64 56}
!102 = !{!94, !44, i64 80}
!103 = !{!94, !44, i64 88}
!104 = !{!41, !38, i64 8}
!105 = !{!41, !38, i64 0}
!106 = !{!"_ZTSN3jxl10StatusCodeE", !11, i64 0}
!107 = !{!"_ZTSN3jxl8StatusOrINS_5PlaneIfEEEE", !11, i64 0, !106, i64 56}
!108 = !{!107, !106, i64 56}
!109 = !{!"_ZTSN3jxl13AlignedMemoryE", !15, i64 0, !16, i64 8, !15, i64 16}
!110 = !{!"_ZTSN3jxl6detail9PlaneBaseE", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !44, i64 16, !109, i64 24, !44, i64 48}
!111 = !{!110, !44, i64 48}
!112 = !{!67, !64, i64 0}
!113 = !{!"llvm.loop.mustprogress"}
!114 = !{!67, !64, i64 8}
!115 = !{!"p1 _ZTSN3jxl6extras18PackedExtraChannelE", !15, i64 0}
!116 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl6extras18PackedExtraChannelELi0ELb0EEE", !115, i64 0}
!117 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl6extras18PackedExtraChannelENS_9allocatorIS3_EEEE", !116, i64 0}
!118 = !{!"_ZTSNSt3__16vectorIN3jxl6extras18PackedExtraChannelENS_9allocatorIS3_EEEE", !115, i64 0, !115, i64 8, !117, i64 16}
!119 = !{!"_ZTSN3jxl6extras15PackedPixelFileUt_E", !11, i64 0}
!120 = !{!"_ZTS13JxlColorSpace", !11, i64 0}
!121 = !{!"_ZTS13JxlWhitePoint", !11, i64 0}
!122 = !{!"_ZTS12JxlPrimaries", !11, i64 0}
!123 = !{!"_ZTS19JxlTransferFunction", !11, i64 0}
!124 = !{!"double", !11, i64 0}
!125 = !{!"_ZTS18JxlRenderingIntent", !11, i64 0}
!126 = !{!"_ZTS16JxlColorEncoding", !120, i64 0, !121, i64 4, !11, i64 8, !122, i64 24, !11, i64 32, !11, i64 48, !11, i64 64, !123, i64 80, !124, i64 88, !125, i64 96}
!127 = !{!"p1 _ZTSN3jxl6extras11PackedFrameE", !15, i64 0}
!128 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl6extras11PackedFrameELi0ELb0EEE", !127, i64 0}
!129 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl6extras11PackedFrameENS_14default_deleteIS3_EEEE", !128, i64 0}
!130 = !{!"_ZTSNSt3__110unique_ptrIN3jxl6extras11PackedFrameENS_14default_deleteIS3_EEEE", !129, i64 0}
!131 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl6extras11PackedFrameENS_9allocatorIS3_EEEE", !128, i64 0}
!132 = !{!"_ZTSNSt3__16vectorIN3jxl6extras11PackedFrameENS_9allocatorIS3_EEEE", !127, i64 0, !127, i64 8, !131, i64 16}
!133 = !{!"p1 _ZTSN3jxl6extras18ChunkedPackedFrameE", !15, i64 0}
!134 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl6extras18ChunkedPackedFrameELi0ELb0EEE", !133, i64 0}
!135 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl6extras18ChunkedPackedFrameENS_9allocatorIS3_EEEE", !134, i64 0}
!136 = !{!"_ZTSNSt3__16vectorIN3jxl6extras18ChunkedPackedFrameENS_9allocatorIS3_EEEE", !133, i64 0, !133, i64 8, !135, i64 16}
!137 = !{!"_ZTSN3jxl6extras14PackedMetadataE", !26, i64 0, !26, i64 24, !26, i64 48, !26, i64 72, !26, i64 96}
!138 = !{!"_ZTSN3jxl6extras15PackedPixelFileE", !98, i64 0, !118, i64 208, !119, i64 232, !126, i64 240, !26, i64 344, !26, i64 368, !77, i64 392, !130, i64 408, !132, i64 416, !136, i64 440, !137, i64 464}
!139 = !{!138, !12, i64 60}
!140 = !{!132, !127, i64 0}
!141 = !{!132, !127, i64 8}
!142 = !{!138, !12, i64 12}
!143 = !{!138, !12, i64 64}
!144 = !{!138, !12, i64 16}
!145 = !{!138, !12, i64 52}
!146 = !{!138, !12, i64 4}
!147 = !{!138, !12, i64 8}
!148 = !{!73, !12, i64 36}
!149 = !{!73, !12, i64 40}
!150 = !{!138, !12, i64 68}
!151 = !{!"_ZTSN3jxl12ExtraChannelE", !11, i64 0}
!152 = !{!"_ZTSN3jxl16ExtraChannelInfoE", !17, i64 0, !18, i64 8, !151, i64 12, !19, i64 16, !12, i64 40, !61, i64 48, !18, i64 72, !11, i64 76, !12, i64 92}
!153 = !{!152, !151, i64 12}
!154 = !{!138, !12, i64 36}
!155 = !{!73, !18, i64 49}
!156 = !{!138, !95, i64 48}
!157 = !{!73, !12, i64 256}
!158 = !{!138, !12, i64 44}
end_hunk_1
