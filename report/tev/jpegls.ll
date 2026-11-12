Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/jpegls?download=true
inline.NumInlined: 3471
inline.NumDeleted: 999
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 143
begin_hunk_0_@_ZN8JlsCodecI14DefaultTraitsTIhhE15DecoderStrategyE13CreateProcessE14ByteStreamInfo:bb.a
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %.0 = phi i1 [ false, %bb.ad ], [ true, %bb.ac ] ; 2 uses
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bi = load i8, ptr %5, align 8
  %i.bj = trunc i8 %i.bi to i1
  br i1 %i.bj, label %.split41, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32

.split41:                                         ; preds = %bb.af
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !51
  %i.bm = load i64, ptr %5, align 8
  %i.bn = and i64 %i.bm, -2
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bn) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.ag, label %bb.ah

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.split41, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32
  %.pn40 = phi { ptr, i32 } [ %i.bg, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32.thread ], [ %i.bh, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32 ], [ %i.bh, %.split41 ]
  call void @__cxa_free_exception(ptr %i.be) #23
  br label %bb.ah

bb.ah:                                            ; preds = %.split41, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32, %bb.ag, %bb.ae
  %.pn.pn = phi { ptr, i32 } [ %.pn40, %bb.ag ], [ %i.bh, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32 ], [ %i.bf, %bb.ae ], [ %i.bh, %.split41 ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.am

bb.ai:                                            ; preds = %bb.t
  %i.bo = tail call ptr @__cxa_allocate_exception(i64 32) #23 ; 3 uses
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z22CharLSCategoryInstancev() ; 0 uses
  invoke void @_ZNSt3__112system_errorC1EiRKNS_14error_categoryE(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) @_ZZ22CharLSCategoryInstancevE8instance)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @__cxa_throw(ptr nonnull %i.bo, ptr nonnull @_ZTINSt3__112system_errorE, ptr nonnull @_ZNSt3__112system_errorD1Ev) #24
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bo) #23
  br label %bb.am

bb.al:                                            ; preds = %.sink.split, %bb.v, %bb.x, %bb.z, %bb.k, %bb.i, %bb.g, %bb.c
  %.111 = phi ptr [ %i.au, %bb.v ], [ %i.t, %bb.c ], [ %i.y, %bb.g ], [ %i.aa, %bb.i ], [ %i.ac, %bb.k ], [ %i.ay, %bb.z ], [ %i.aw, %bb.x ], [ %i.i, %.sink.split ]
  ret ptr %.111

bb.am:                                            ; preds = %bb.w, %bb.y, %bb.aa, %bb.ah, %bb.ak, %bb.s, %bb.l, %bb.j, %bb.h, %bb.d
  %.pn26 = phi { ptr, i32 } [ %i.u, %bb.d ], [ %.pn23.pn, %bb.s ], [ %i.z, %bb.h ], [ %i.ab, %bb.j ], [ %i.ad, %bb.l ], [ %i.bq, %bb.ak ], [ %.pn.pn, %bb.ah ], [ %i.av, %bb.w ], [ %i.ax, %bb.y ], [ %i.az, %bb.aa ]
  resume { ptr, i32 } %.pn26

bb.an:                                            ; preds = %bb.ad, %bb.o
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI14DefaultTraitsTIhhE15DecoderStrategyE10SetPresetsERK19JlsCustomParameters(ptr noundef nonnull align 8 dereferenceable(4697) %0, ptr noundef nonnull align 4 dereferenceable(20) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %struct.JlsCustomParameters, align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !243
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load i32, ptr %i.c, align 8, !tbaa !244
  call void @_Z14ComputeDefaultii(ptr dead_on_unwind nonnull writable sret(%struct.JlsCustomParameters) align 4 %2, i32 noundef %i.b, i32 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !39   ; 2 uses
  %.not13 = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = select i1 %.not13, i32 %i.j, i32 %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !53   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.q = load <2 x i32>, ptr %i.e, align 4, !tbaa !62 ; 2 uses
  %i.r = icmp eq <2 x i32> %i.q, zeroinitializer
  %i.s = load <2 x i32>, ptr %i.f, align 4
  %i.t = select <2 x i1> %i.r, <2 x i32> %i.s, <2 x i32> %i.q
  store <2 x i32> %i.t, ptr %i.p, align 8, !tbaa !62
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %i.k, ptr %i.u, align 8, !tbaa !94
  call void @_ZN8JlsCodecI14DefaultTraitsTIhhE15DecoderStrategyE19InitQuantizationLUTEv(ptr noundef nonnull align 8 dereferenceable(4697) %0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.w = load i32, ptr %i.v, align 4, !tbaa !517  ; 2 uses
  %i.x = icmp slt i32 %i.w, 96
  %i.y = add nuw nsw i32 %i.w, 32
  %i.z = lshr i32 %i.y, 6
  %i.aa = select i1 %i.x, i32 2, i32 %i.z         ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %indvars.iv.i ; 4 uses
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !62
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 0, ptr %.sroa.420.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i16 0, ptr %.sroa.521.0..sroa_idx.i, align 4, !tbaa !245
  %.sroa.622.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 10
  store i16 1, ptr %.sroa.622.0..sroa_idx.i, align 2, !tbaa !245
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 364
  br i1 %exitcond.not.i, label %_ZN8JlsCodecI14DefaultTraitsTIhhE15DecoderStrategyE10InitParamsEiiii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %indvars.iv.i ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 %i.aa, ptr %i.ae, align 8, !tbaa !62
  %.sroa.420.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i32 0, ptr %.sroa.420.0..sroa_idx.i.1, align 4, !tbaa !62
  %.sroa.521.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  store i16 0, ptr %.sroa.521.0..sroa_idx.i.1, align 8, !tbaa !245
  %.sroa.622.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.ad, i64 22
  store i16 1, ptr %.sroa.622.0..sroa_idx.i.1, align 2, !tbaa !245
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  br label %bb.b

_ZN8JlsCodecI14DefaultTraitsTIhhE15DecoderStrategyE10InitParamsEiiii.exit: ; preds = %bb.b
  %.not14 = icmp eq i32 %i.m, 0
  %i.af = select i1 %.not14, i32 %i.o, i32 %i.m
  %.sink.i = trunc i32 %i.af to i8                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4616
  store i32 %i.aa, ptr %i.ag, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4620
  store i32 0, ptr %i.ah, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4624
  store i8 %.sink.i, ptr %i.ai, align 8, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4625
  store i8 1, ptr %i.aj, align 1, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4626
  store i8 0, ptr %i.ak, align 2, !tbaa !51
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4628
  store i32 %i.aa, ptr %i.al, align 4, !tbaa !62
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4632
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4636
  store i8 %.sink.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !51
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4637
  store i8 1, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !51
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4638
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 2, !tbaa !51
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4640
  store i32 0, ptr %i.am, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI14DefaultTraitsTIhhE15DecoderStrategyE10DecodeScanENSt3__110unique_ptrI11ProcessLineNS4_14default_deleteIS6_EEEERK7JlsRectR14ByteStreamInfob(ptr noundef nonnull align 8 dereferenceable(4697) %0, ptr nofree noundef align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = zext i1 %4 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !238
  store ptr null, ptr %1, align 8, !tbaa !238
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !238  ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !238
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit, label %_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i

_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i: ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #23, !inline_history !3
  br label %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit

_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit: ; preds = %bb.a, %_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !240
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4696
  store i8 %i.a, ptr %i.j, align 8, !tbaa !518
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 204
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !246
  tail call void @_ZN15DecoderStrategy4InitER14ByteStreamInfo(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN8JlsCodecI14DefaultTraitsTIhhE15DecoderStrategyE6DoScanEv(ptr noundef nonnull align 8 dereferenceable(4697) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !248
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit
  %.010.i = phi i32 [ %i.m, %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit ], [ %i.t, %bb.b ] ; 2 uses
  %.09.i = phi ptr [ %i.o, %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit ], [ %i.p, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.09.i, i64 -1 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !51
  %i.r = icmp eq i8 %i.q, -1
  %i.s = select i1 %i.r, i32 7, i32 8             ; 2 uses
  %.not.i = icmp slt i32 %.010.i, %i.s
  %i.t = sub nuw nsw i32 %.010.i, %i.s
  br i1 %.not.i, label %_ZNK15DecoderStrategy13GetCurBytePosEv.exit, label %bb.b, !llvm.loop !4

_ZNK15DecoderStrategy13GetCurBytePosEv.exit:      ; preds = %bb.b
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !240  ; 2 uses
  %.not.i6 = icmp eq ptr %i.u, null
  br i1 %.not.i6, label %_Z9SkipBytesR14ByteStreamInfom.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK15DecoderStrategy13GetCurBytePosEv.exit
  %i.v = ptrtoint ptr %.09.i to i64
  %i.w = ptrtoint ptr %i.i to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  store ptr %i.y, ptr %i.h, align 8, !tbaa !240
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !249
  %i.ab = sub i64 %i.aa, %i.x
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !249
  br label %_Z9SkipBytesR14ByteStreamInfom.exit

_Z9SkipBytesR14ByteStreamInfom.exit:              ; preds = %_ZNK15DecoderStrategy13GetCurBytePosEv.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN15DecoderStrategyD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV15DecoderStrategy, i64 16), ptr %0, align 8, !tbaa !68
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235  ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.b, ptr %i.c, align 8, !tbaa !236
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.h) #26
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !238  ; 3 uses
  store ptr null, ptr %i.i, align 8, !tbaa !238
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEED2B8ne180100Ev.exit, label %_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i

_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #23, !inline_history !5
  br label %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEED2B8ne180100Ev.exit

_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, %_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN15DecoderStrategyD0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #27
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN18ProcessTransformedI13TransformNoneIhEEC2E14ByteStreamInfoRK13JlsParametersS1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef byval(%struct.ByteStreamInfo) align 8 %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18ProcessTransformedI13TransformNoneIhEE, i64 16), ptr %0, align 8, !tbaa !68
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !251
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = load i32, ptr %2, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !103
  %i.f = mul nsw i32 %i.e, %i.c                   ; 3 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp slt i32 %i.f, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #24
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25
          to label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit.i unwind label %bb.e ; 3 uses

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit.i: ; preds = %bb.d
  store ptr %i.k, ptr %i.b, align 8, !tbaa !235
  %i.l = getelementptr i8, ptr %i.k, i64 %i.g     ; 2 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !50
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.k, i8 0, i64 %i.g, i1 false), !tbaa !51
  store ptr %i.l, ptr %i.h, align 8, !tbaa !236
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !235  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %.body, label %.body.sink.split

_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit:    ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit.i, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.p = load i32, ptr %2, align 8, !tbaa !77
  %i.q = load i32, ptr %i.d, align 8, !tbaa !103
  %i.r = mul nsw i32 %i.q, %i.p                   ; 3 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not.i9 = icmp eq i32 %i.r, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  br i1 %.not.i9, label %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit16, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit
  %i.v = icmp slt i32 %i.r, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.o) #24
          to label %.noexc.i13 unwind label %bb.i

.noexc.i13:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #25
          to label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit.i12 unwind label %bb.i ; 3 uses

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit.i12: ; preds = %bb.h
  store ptr %i.w, ptr %i.o, align 8, !tbaa !235
  %i.x = getelementptr i8, ptr %i.w, i64 %i.s     ; 2 uses
  store ptr %i.x, ptr %i.u, align 8, !tbaa !50
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.w, i8 0, i64 %i.s, i1 false), !tbaa !51
  store ptr %i.x, ptr %i.t, align 8, !tbaa !236
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit16

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !235  ; 4 uses
  %.not.i.i.i10 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i10, label %.body14, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.z, ptr %i.t, align 8, !tbaa !236
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #26
  br label %.body14

_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit16:  ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit.i12, %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !254
  ret void

.body14:                                          ; preds = %bb.i, %bb.j
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !235 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body14, %bb.e
  %.sink26 = phi ptr [ %i.n, %bb.e ], [ %i.af, %.body14 ] ; 3 uses
  %.pn.ph = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.y, %.body14 ]
  store ptr %.sink26, ptr %i.h, align 8, !tbaa !236
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %.sink26 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink26, i64 noundef %i.aj) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body14, %bb.e
  %.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.y, %.body14 ], [ %.pn.ph, %.body.sink.split ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN18ProcessTransformedI12TransformHp1IhEEC2E14ByteStreamInfoRK13JlsParametersS1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef byval(%struct.ByteStreamInfo) align 8 %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
begin_hunk_1_@_ZN8JlsCodecI15LosslessTraitsTI7TripletIhELi8EE15DecoderStrategyE13CreateProcessE14ByteStreamInfo:bb.a

bb.ae:                                            ; preds = %_ZlsIN6charls19ColorTransformationEERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERNS2_9enable_ifIXsr3std7is_enumIT_EE5valueES6_E4typeERKS9_.exit30, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit29, %bb.ab
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32.thread: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit31
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %.0 = phi i1 [ false, %bb.ad ], [ true, %bb.ac ] ; 2 uses
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bi = load i8, ptr %5, align 8
  %i.bj = trunc i8 %i.bi to i1
  br i1 %i.bj, label %.split41, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32

.split41:                                         ; preds = %bb.af
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !51
  %i.bm = load i64, ptr %5, align 8
  %i.bn = and i64 %i.bm, -2
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bn) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.ag, label %bb.ah

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.split41, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32
  %.pn40 = phi { ptr, i32 } [ %i.bg, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32.thread ], [ %i.bh, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32 ], [ %i.bh, %.split41 ]
  call void @__cxa_free_exception(ptr %i.be) #23
  br label %bb.ah

bb.ah:                                            ; preds = %.split41, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32, %bb.ag, %bb.ae
  %.pn.pn = phi { ptr, i32 } [ %.pn40, %bb.ag ], [ %i.bh, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32 ], [ %i.bf, %bb.ae ], [ %i.bh, %.split41 ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.am

bb.ai:                                            ; preds = %bb.t
  %i.bo = tail call ptr @__cxa_allocate_exception(i64 32) #23 ; 3 uses
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z22CharLSCategoryInstancev() ; 0 uses
  invoke void @_ZNSt3__112system_errorC1EiRKNS_14error_categoryE(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) @_ZZ22CharLSCategoryInstancevE8instance)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @__cxa_throw(ptr nonnull %i.bo, ptr nonnull @_ZTINSt3__112system_errorE, ptr nonnull @_ZNSt3__112system_errorD1Ev) #24
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bo) #23
  br label %bb.am

bb.al:                                            ; preds = %.sink.split, %bb.v, %bb.x, %bb.z, %bb.k, %bb.i, %bb.g, %bb.c
  %.111 = phi ptr [ %i.au, %bb.v ], [ %i.t, %bb.c ], [ %i.y, %bb.g ], [ %i.aa, %bb.i ], [ %i.ac, %bb.k ], [ %i.ay, %bb.z ], [ %i.aw, %bb.x ], [ %i.i, %.sink.split ]
  ret ptr %.111

bb.am:                                            ; preds = %bb.w, %bb.y, %bb.aa, %bb.ah, %bb.ak, %bb.s, %bb.l, %bb.j, %bb.h, %bb.d
  %.pn26 = phi { ptr, i32 } [ %i.u, %bb.d ], [ %.pn23.pn, %bb.s ], [ %i.z, %bb.h ], [ %i.ab, %bb.j ], [ %i.ad, %bb.l ], [ %i.bq, %bb.ak ], [ %.pn.pn, %bb.ah ], [ %i.av, %bb.w ], [ %i.ax, %bb.y ], [ %i.az, %bb.aa ]
  resume { ptr, i32 } %.pn26

bb.an:                                            ; preds = %bb.ad, %bb.o
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI15LosslessTraitsTI7TripletIhELi8EE15DecoderStrategyE10SetPresetsERK19JlsCustomParameters(ptr noundef nonnull align 8 dereferenceable(4673) %0, ptr noundef nonnull align 4 dereferenceable(20) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %struct.JlsCustomParameters, align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_Z14ComputeDefaultii(ptr dead_on_unwind nonnull writable sret(%struct.JlsCustomParameters) align 4 %2, i32 noundef 255, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !39   ; 2 uses
  %.not13 = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4
  %i.g = select i1 %.not13, i32 %i.f, i32 %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !53   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.m = load <2 x i32>, ptr %i.a, align 4, !tbaa !62 ; 2 uses
  %i.n = icmp eq <2 x i32> %i.m, zeroinitializer
  %i.o = load <2 x i32>, ptr %i.b, align 4
  %i.p = select <2 x i1> %i.n, <2 x i32> %i.o, <2 x i32> %i.m
  store <2 x i32> %i.p, ptr %i.l, align 8, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %i.g, ptr %i.q, align 8, !tbaa !110
  call void @_ZN8JlsCodecI15LosslessTraitsTI7TripletIhELi8EE15DecoderStrategyE19InitQuantizationLUTEv(ptr noundef nonnull align 8 dereferenceable(4673) %0)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %indvars.iv.i ; 4 uses
  store i32 4, ptr %i.s, align 4, !tbaa !62
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 0, ptr %.sroa.417.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i16 0, ptr %.sroa.518.0..sroa_idx.i, align 4, !tbaa !245
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  store i16 1, ptr %.sroa.619.0..sroa_idx.i, align 2, !tbaa !245
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 364
  br i1 %exitcond.not.i, label %_ZN8JlsCodecI15LosslessTraitsTI7TripletIhELi8EE15DecoderStrategyE10InitParamsEiiii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %indvars.iv.i ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 4, ptr %i.u, align 8, !tbaa !62
  %.sroa.417.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i32 0, ptr %.sroa.417.0..sroa_idx.i.1, align 4, !tbaa !62
  %.sroa.518.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store i16 0, ptr %.sroa.518.0..sroa_idx.i.1, align 8, !tbaa !245
  %.sroa.619.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.t, i64 22
  store i16 1, ptr %.sroa.619.0..sroa_idx.i.1, align 2, !tbaa !245
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  br label %bb.b

_ZN8JlsCodecI15LosslessTraitsTI7TripletIhELi8EE15DecoderStrategyE10InitParamsEiiii.exit: ; preds = %bb.b
  %.not14 = icmp eq i32 %i.i, 0
  %i.v = select i1 %.not14, i32 %i.k, i32 %i.i
  %i.w = trunc i32 %i.v to i8                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4592
  store i32 4, ptr %i.x, align 8, !tbaa !62
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4596
  store i32 0, ptr %.sroa.411.0..sroa_idx.i, align 4, !tbaa !62
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4600
  store i8 %i.w, ptr %.sroa.512.0..sroa_idx.i, align 8, !tbaa !51
  %.sroa.613.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4601
  store i8 1, ptr %.sroa.613.0..sroa_idx.i, align 1, !tbaa !51
  %.sroa.714.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4602
  store i8 0, ptr %.sroa.714.0..sroa_idx.i, align 2, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4604
  store i32 4, ptr %i.y, align 4, !tbaa !62
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4608
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4612
  store i8 %i.w, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !51
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4613
  store i8 1, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !51
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4614
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 2, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4616
  store i32 0, ptr %i.z, align 8, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI15LosslessTraitsTI7TripletIhELi8EE15DecoderStrategyE10DecodeScanENSt3__110unique_ptrI11ProcessLineNS6_14default_deleteIS8_EEEERK7JlsRectR14ByteStreamInfob(ptr noundef nonnull align 8 dereferenceable(4673) %0, ptr nofree noundef align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = zext i1 %4 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !238
  store ptr null, ptr %1, align 8, !tbaa !238
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !238  ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !238
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit, label %_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i

_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i: ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #23, !inline_history !3
  br label %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit

_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit: ; preds = %bb.a, %_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !240
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4672
  store i8 %i.a, ptr %i.j, align 8, !tbaa !1022
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 180
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !246
  tail call void @_ZN15DecoderStrategy4InitER14ByteStreamInfo(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN8JlsCodecI15LosslessTraitsTI7TripletIhELi8EE15DecoderStrategyE6DoScanEv(ptr noundef nonnull align 8 dereferenceable(4673) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !248
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit
  %.010.i = phi i32 [ %i.m, %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit ], [ %i.t, %bb.b ] ; 2 uses
  %.09.i = phi ptr [ %i.o, %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit ], [ %i.p, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.09.i, i64 -1 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !51
  %i.r = icmp eq i8 %i.q, -1
  %i.s = select i1 %i.r, i32 7, i32 8             ; 2 uses
  %.not.i = icmp slt i32 %.010.i, %i.s
  %i.t = sub nuw nsw i32 %.010.i, %i.s
  br i1 %.not.i, label %_ZNK15DecoderStrategy13GetCurBytePosEv.exit, label %bb.b, !llvm.loop !4

_ZNK15DecoderStrategy13GetCurBytePosEv.exit:      ; preds = %bb.b
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !240  ; 2 uses
  %.not.i6 = icmp eq ptr %i.u, null
  br i1 %.not.i6, label %_Z9SkipBytesR14ByteStreamInfom.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK15DecoderStrategy13GetCurBytePosEv.exit
  %i.v = ptrtoint ptr %.09.i to i64
  %i.w = ptrtoint ptr %i.i to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  store ptr %i.y, ptr %i.h, align 8, !tbaa !240
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !249
  %i.ab = sub i64 %i.aa, %i.x
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !249
  br label %_Z9SkipBytesR14ByteStreamInfom.exit

_Z9SkipBytesR14ByteStreamInfom.exit:              ; preds = %_ZNK15DecoderStrategy13GetCurBytePosEv.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI15LosslessTraitsTI7TripletIhELi8EE15DecoderStrategyE19InitQuantizationLUTEv(ptr noundef nonnull align 8 dereferenceable(4673) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.JlsCustomParameters, align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @_Z14ComputeDefaultii(ptr dead_on_unwind nonnull writable sret(%struct.JlsCustomParameters) align 4 %1, i32 noundef 255, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !108
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.i = load i32, ptr %i.h, align 4, !tbaa !109
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load i32, ptr %i.m, align 8, !tbaa !110
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rgquant8Ll, i64 8), align 8, !tbaa !49
  %i.q = load ptr, ptr @rgquant8Ll, align 8, !tbaa !48 ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr i64 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4640
  store ptr %i.v, ptr %i.w, align 8, !tbaa !371
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %.loopexit

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4648 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4656 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !49
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !48  ; 4 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 512
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = sub nuw nsw i64 512, %i.ad
  call void @_ZNSt3__16vectorIaNS_9allocatorIaEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %i.af)
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !48
  br label %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit

bb.g:                                             ; preds = %bb.e
  %.not = icmp eq i64 %i.ad, 512
  br i1 %.not, label %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 512
  store ptr %i.ag, ptr %i.y, align 8, !tbaa !49
  br label %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit

_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.ah = phi ptr [ %.pre, %bb.f ], [ %i.aa, %bb.g ], [ %i.aa, %bb.h ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 256
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4640 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !371
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 204
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit, %_ZN8JlsCodecI15LosslessTraitsTI7TripletIhELi8EE15DecoderStrategyE19QuantizeGratientOrgEi.exit
  %indvars.iv = phi i64 [ -256, %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit ], [ %indvars.iv.next, %_ZN8JlsCodecI15LosslessTraitsTI7TripletIhELi8EE15DecoderStrategyE19QuantizeGratientOrgEi.exit ] ; 10 uses
  %i.am = load i32, ptr %i.ak, align 8, !tbaa !110 ; 2 uses
  %i.an = sub nsw i32 0, %i.am
  %i.ao = sext i32 %i.an to i64
  %.not.i = icmp sgt i64 %indvars.iv, %i.ao
  br i1 %.not.i, label %bb.j, label %_ZN8JlsCodecI15LosslessTraitsTI7TripletIhELi8EE15DecoderStrategyE19QuantizeGratientOrgEi.exit

bb.j:                                             ; preds = %bb.i
  %i.ap = load i32, ptr %i.al, align 4, !tbaa !109 ; 2 uses
  %i.aq = sub nsw i32 0, %i.ap
  %i.ar = sext i32 %i.aq to i64
  %.not10.i = icmp sgt i64 %indvars.iv, %i.ar
  br i1 %.not10.i, label %bb.k, label %_ZN8JlsCodecI15LosslessTraitsTI7TripletIhELi8EE15DecoderStrategyE19QuantizeGratientOrgEi.exit

bb.k:                                             ; preds = %bb.j
  %i.as = load i32, ptr %i.c, align 8, !tbaa !108 ; 2 uses
  %i.at = sub nsw i32 0, %i.as
  %i.au = sext i32 %i.at to i64
  %.not11.i = icmp sgt i64 %indvars.iv, %i.au
  br i1 %.not11.i, label %bb.l, label %_ZN8JlsCodecI15LosslessTraitsTI7TripletIhELi8EE15DecoderStrategyE19QuantizeGratientOrgEi.exit

bb.l:                                             ; preds = %bb.k
  %i.av = icmp slt i64 %indvars.iv, 0
  br i1 %i.av, label %_ZN8JlsCodecI15LosslessTraitsTI7TripletIhELi8EE15DecoderStrategyE19QuantizeGratientOrgEi.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = icmp eq i64 %indvars.iv, 0
  br i1 %i.aw, label %_ZN8JlsCodecI15LosslessTraitsTI7TripletIhELi8EE15DecoderStrategyE19QuantizeGratientOrgEi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = sext i32 %i.as to i64
  %i.ay = icmp slt i64 %indvars.iv, %i.ax
  br i1 %i.ay, label %_ZN8JlsCodecI15LosslessTraitsTI7TripletIhELi8EE15DecoderStrategyE19QuantizeGratientOrgEi.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = sext i32 %i.ap to i64
  %i.ba = icmp slt i64 %indvars.iv, %i.az
  br i1 %i.ba, label %_ZN8JlsCodecI15LosslessTraitsTI7TripletIhELi8EE15DecoderStrategyE19QuantizeGratientOrgEi.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = sext i32 %i.am to i64
  %i.bc = icmp slt i64 %indvars.iv, %i.bb
  %..i = select i1 %i.bc, i8 3, i8 4
  br label %_ZN8JlsCodecI15LosslessTraitsTI7TripletIhELi8EE15DecoderStrategyE19QuantizeGratientOrgEi.exit

_ZN8JlsCodecI15LosslessTraitsTI7TripletIhELi8EE15DecoderStrategyE19QuantizeGratientOrgEi.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i = phi i8 [ 2, %bb.o ], [ -4, %bb.i ], [ -3, %bb.j ], [ -2, %bb.k ], [ -1, %bb.l ], [ 0, %bb.m ], [ 1, %bb.n ], [ %..i, %bb.p ]
  %i.bd = load ptr, ptr %i.aj, align 8, !tbaa !371
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %indvars.iv
  store i8 %.0.i, ptr %i.be, align 1, !tbaa !51
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !1023

.loopexit:                                        ; preds = %_ZN8JlsCodecI15LosslessTraitsTI7TripletIhELi8EE15DecoderStrategyE19QuantizeGratientOrgEi.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI15LosslessTraitsTI7TripletIhELi8EE15DecoderStrategyE6DoScanEv(ptr noundef nonnull align 8 dereferenceable(4673) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__1::vector.104", align 8 ; 9 uses
  %2 = alloca %"class.std::__1::vector.92", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !107
  %i.c = add nsw i32 %i.b, 4                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !102
  %i.f = icmp eq i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8
  %i.i = select i1 %i.f, i32 %i.h, i32 1          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.j = shl nsw i32 %i.i, 1
  %i.k = mul nsw i32 %i.j, %i.c                   ; 3 uses
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %_ZNSt3__16vectorI7TripletIhENS_9allocatorIS2_EEEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp slt i32 %i.k, 0
  br i1 %i.o, label %bb.c, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorI7TripletIhEEEEEDaRT_m.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNKSt3__16vectorI7TripletIhENS_9allocatorIS2_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #24
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorI7TripletIhEEEEEDaRT_m.exit.i.i: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #25
          to label %_ZNSt3__16vectorI7TripletIhENS_9allocatorIS2_EEE18__construct_at_endEm.exit.i unwind label %bb.d ; 5 uses

end_hunk_1
begin_hunk_2_@_ZN8JlsCodecI15LosslessTraitsTIhLi8EE15DecoderStrategyE13CreateProcessE14ByteStreamInfo:bb.a

bb.ae:                                            ; preds = %_ZlsIN6charls19ColorTransformationEERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERNS2_9enable_ifIXsr3std7is_enumIT_EE5valueES6_E4typeERKS9_.exit30, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit29, %bb.ab
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32.thread: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit31
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %.0 = phi i1 [ false, %bb.ad ], [ true, %bb.ac ] ; 2 uses
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bi = load i8, ptr %5, align 8
  %i.bj = trunc i8 %i.bi to i1
  br i1 %i.bj, label %.split41, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32

.split41:                                         ; preds = %bb.af
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !51
  %i.bm = load i64, ptr %5, align 8
  %i.bn = and i64 %i.bm, -2
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bn) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.ag, label %bb.ah

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.split41, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32
  %.pn40 = phi { ptr, i32 } [ %i.bg, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32.thread ], [ %i.bh, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32 ], [ %i.bh, %.split41 ]
  call void @__cxa_free_exception(ptr %i.be) #23
  br label %bb.ah

bb.ah:                                            ; preds = %.split41, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32, %bb.ag, %bb.ae
  %.pn.pn = phi { ptr, i32 } [ %.pn40, %bb.ag ], [ %i.bh, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32 ], [ %i.bf, %bb.ae ], [ %i.bh, %.split41 ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.am

bb.ai:                                            ; preds = %bb.t
  %i.bo = tail call ptr @__cxa_allocate_exception(i64 32) #23 ; 3 uses
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z22CharLSCategoryInstancev() ; 0 uses
  invoke void @_ZNSt3__112system_errorC1EiRKNS_14error_categoryE(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) @_ZZ22CharLSCategoryInstancevE8instance)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @__cxa_throw(ptr nonnull %i.bo, ptr nonnull @_ZTINSt3__112system_errorE, ptr nonnull @_ZNSt3__112system_errorD1Ev) #24
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bo) #23
  br label %bb.am

bb.al:                                            ; preds = %.sink.split, %bb.v, %bb.x, %bb.z, %bb.k, %bb.i, %bb.g, %bb.c
  %.111 = phi ptr [ %i.au, %bb.v ], [ %i.t, %bb.c ], [ %i.y, %bb.g ], [ %i.aa, %bb.i ], [ %i.ac, %bb.k ], [ %i.ay, %bb.z ], [ %i.aw, %bb.x ], [ %i.i, %.sink.split ]
  ret ptr %.111

bb.am:                                            ; preds = %bb.w, %bb.y, %bb.aa, %bb.ah, %bb.ak, %bb.s, %bb.l, %bb.j, %bb.h, %bb.d
  %.pn26 = phi { ptr, i32 } [ %i.u, %bb.d ], [ %.pn23.pn, %bb.s ], [ %i.z, %bb.h ], [ %i.ab, %bb.j ], [ %i.ad, %bb.l ], [ %i.bq, %bb.ak ], [ %.pn.pn, %bb.ah ], [ %i.av, %bb.w ], [ %i.ax, %bb.y ], [ %i.az, %bb.aa ]
  resume { ptr, i32 } %.pn26

bb.an:                                            ; preds = %bb.ad, %bb.o
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI15LosslessTraitsTIhLi8EE15DecoderStrategyE10SetPresetsERK19JlsCustomParameters(ptr noundef nonnull align 8 dereferenceable(4673) %0, ptr noundef nonnull align 4 dereferenceable(20) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %struct.JlsCustomParameters, align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_Z14ComputeDefaultii(ptr dead_on_unwind nonnull writable sret(%struct.JlsCustomParameters) align 4 %2, i32 noundef 255, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !39   ; 2 uses
  %.not13 = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4
  %i.g = select i1 %.not13, i32 %i.f, i32 %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !53   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.m = load <2 x i32>, ptr %i.a, align 4, !tbaa !62 ; 2 uses
  %i.n = icmp eq <2 x i32> %i.m, zeroinitializer
  %i.o = load <2 x i32>, ptr %i.b, align 4
  %i.p = select <2 x i1> %i.n, <2 x i32> %i.o, <2 x i32> %i.m
  store <2 x i32> %i.p, ptr %i.l, align 8, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %i.g, ptr %i.q, align 8, !tbaa !117
  call void @_ZN8JlsCodecI15LosslessTraitsTIhLi8EE15DecoderStrategyE19InitQuantizationLUTEv(ptr noundef nonnull align 8 dereferenceable(4673) %0)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %indvars.iv.i ; 4 uses
  store i32 4, ptr %i.s, align 4, !tbaa !62
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 0, ptr %.sroa.417.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i16 0, ptr %.sroa.518.0..sroa_idx.i, align 4, !tbaa !245
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  store i16 1, ptr %.sroa.619.0..sroa_idx.i, align 2, !tbaa !245
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 364
  br i1 %exitcond.not.i, label %_ZN8JlsCodecI15LosslessTraitsTIhLi8EE15DecoderStrategyE10InitParamsEiiii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %indvars.iv.i ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 4, ptr %i.u, align 8, !tbaa !62
  %.sroa.417.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i32 0, ptr %.sroa.417.0..sroa_idx.i.1, align 4, !tbaa !62
  %.sroa.518.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store i16 0, ptr %.sroa.518.0..sroa_idx.i.1, align 8, !tbaa !245
  %.sroa.619.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.t, i64 22
  store i16 1, ptr %.sroa.619.0..sroa_idx.i.1, align 2, !tbaa !245
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  br label %bb.b

_ZN8JlsCodecI15LosslessTraitsTIhLi8EE15DecoderStrategyE10InitParamsEiiii.exit: ; preds = %bb.b
  %.not14 = icmp eq i32 %i.i, 0
  %i.v = select i1 %.not14, i32 %i.k, i32 %i.i
  %i.w = trunc i32 %i.v to i8                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4592
  store i32 4, ptr %i.x, align 8, !tbaa !62
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4596
  store i32 0, ptr %.sroa.411.0..sroa_idx.i, align 4, !tbaa !62
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4600
  store i8 %i.w, ptr %.sroa.512.0..sroa_idx.i, align 8, !tbaa !51
  %.sroa.613.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4601
  store i8 1, ptr %.sroa.613.0..sroa_idx.i, align 1, !tbaa !51
  %.sroa.714.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4602
  store i8 0, ptr %.sroa.714.0..sroa_idx.i, align 2, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4604
  store i32 4, ptr %i.y, align 4, !tbaa !62
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4608
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4612
  store i8 %i.w, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !51
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4613
  store i8 1, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !51
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4614
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 2, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4616
  store i32 0, ptr %i.z, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI15LosslessTraitsTIhLi8EE15DecoderStrategyE10DecodeScanENSt3__110unique_ptrI11ProcessLineNS4_14default_deleteIS6_EEEERK7JlsRectR14ByteStreamInfob(ptr noundef nonnull align 8 dereferenceable(4673) %0, ptr nofree noundef align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = zext i1 %4 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !238
  store ptr null, ptr %1, align 8, !tbaa !238
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !238  ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !238
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit, label %_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i

_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i: ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #23, !inline_history !3
  br label %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit

_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit: ; preds = %bb.a, %_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !240
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4672
  store i8 %i.a, ptr %i.j, align 8, !tbaa !1036
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 180
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !246
  tail call void @_ZN15DecoderStrategy4InitER14ByteStreamInfo(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN8JlsCodecI15LosslessTraitsTIhLi8EE15DecoderStrategyE6DoScanEv(ptr noundef nonnull align 8 dereferenceable(4673) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !248
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit
  %.010.i = phi i32 [ %i.m, %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit ], [ %i.t, %bb.b ] ; 2 uses
  %.09.i = phi ptr [ %i.o, %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit ], [ %i.p, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.09.i, i64 -1 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !51
  %i.r = icmp eq i8 %i.q, -1
  %i.s = select i1 %i.r, i32 7, i32 8             ; 2 uses
  %.not.i = icmp slt i32 %.010.i, %i.s
  %i.t = sub nuw nsw i32 %.010.i, %i.s
  br i1 %.not.i, label %_ZNK15DecoderStrategy13GetCurBytePosEv.exit, label %bb.b, !llvm.loop !4

_ZNK15DecoderStrategy13GetCurBytePosEv.exit:      ; preds = %bb.b
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !240  ; 2 uses
  %.not.i6 = icmp eq ptr %i.u, null
  br i1 %.not.i6, label %_Z9SkipBytesR14ByteStreamInfom.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK15DecoderStrategy13GetCurBytePosEv.exit
  %i.v = ptrtoint ptr %.09.i to i64
  %i.w = ptrtoint ptr %i.i to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  store ptr %i.y, ptr %i.h, align 8, !tbaa !240
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !249
  %i.ab = sub i64 %i.aa, %i.x
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !249
  br label %_Z9SkipBytesR14ByteStreamInfom.exit

_Z9SkipBytesR14ByteStreamInfom.exit:              ; preds = %_ZNK15DecoderStrategy13GetCurBytePosEv.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI15LosslessTraitsTIhLi8EE15DecoderStrategyE19InitQuantizationLUTEv(ptr noundef nonnull align 8 dereferenceable(4673) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.JlsCustomParameters, align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @_Z14ComputeDefaultii(ptr dead_on_unwind nonnull writable sret(%struct.JlsCustomParameters) align 4 %1, i32 noundef 255, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !115
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.i = load i32, ptr %i.h, align 4, !tbaa !116
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load i32, ptr %i.m, align 8, !tbaa !117
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rgquant8Ll, i64 8), align 8, !tbaa !49
  %i.q = load ptr, ptr @rgquant8Ll, align 8, !tbaa !48 ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr i64 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4640
  store ptr %i.v, ptr %i.w, align 8, !tbaa !381
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %.loopexit

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4648 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4656 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !49
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !48  ; 4 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 512
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = sub nuw nsw i64 512, %i.ad
  call void @_ZNSt3__16vectorIaNS_9allocatorIaEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %i.af)
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !48
  br label %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit

bb.g:                                             ; preds = %bb.e
  %.not = icmp eq i64 %i.ad, 512
  br i1 %.not, label %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 512
  store ptr %i.ag, ptr %i.y, align 8, !tbaa !49
  br label %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit

_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.ah = phi ptr [ %.pre, %bb.f ], [ %i.aa, %bb.g ], [ %i.aa, %bb.h ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 256
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4640 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !381
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 204
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit, %_ZN8JlsCodecI15LosslessTraitsTIhLi8EE15DecoderStrategyE19QuantizeGratientOrgEi.exit
  %indvars.iv = phi i64 [ -256, %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit ], [ %indvars.iv.next, %_ZN8JlsCodecI15LosslessTraitsTIhLi8EE15DecoderStrategyE19QuantizeGratientOrgEi.exit ] ; 10 uses
  %i.am = load i32, ptr %i.ak, align 8, !tbaa !117 ; 2 uses
  %i.an = sub nsw i32 0, %i.am
  %i.ao = sext i32 %i.an to i64
  %.not.i = icmp sgt i64 %indvars.iv, %i.ao
  br i1 %.not.i, label %bb.j, label %_ZN8JlsCodecI15LosslessTraitsTIhLi8EE15DecoderStrategyE19QuantizeGratientOrgEi.exit

bb.j:                                             ; preds = %bb.i
  %i.ap = load i32, ptr %i.al, align 4, !tbaa !116 ; 2 uses
  %i.aq = sub nsw i32 0, %i.ap
  %i.ar = sext i32 %i.aq to i64
  %.not10.i = icmp sgt i64 %indvars.iv, %i.ar
  br i1 %.not10.i, label %bb.k, label %_ZN8JlsCodecI15LosslessTraitsTIhLi8EE15DecoderStrategyE19QuantizeGratientOrgEi.exit

bb.k:                                             ; preds = %bb.j
  %i.as = load i32, ptr %i.c, align 8, !tbaa !115 ; 2 uses
  %i.at = sub nsw i32 0, %i.as
  %i.au = sext i32 %i.at to i64
  %.not11.i = icmp sgt i64 %indvars.iv, %i.au
  br i1 %.not11.i, label %bb.l, label %_ZN8JlsCodecI15LosslessTraitsTIhLi8EE15DecoderStrategyE19QuantizeGratientOrgEi.exit

bb.l:                                             ; preds = %bb.k
  %i.av = icmp slt i64 %indvars.iv, 0
  br i1 %i.av, label %_ZN8JlsCodecI15LosslessTraitsTIhLi8EE15DecoderStrategyE19QuantizeGratientOrgEi.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = icmp eq i64 %indvars.iv, 0
  br i1 %i.aw, label %_ZN8JlsCodecI15LosslessTraitsTIhLi8EE15DecoderStrategyE19QuantizeGratientOrgEi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = sext i32 %i.as to i64
  %i.ay = icmp slt i64 %indvars.iv, %i.ax
  br i1 %i.ay, label %_ZN8JlsCodecI15LosslessTraitsTIhLi8EE15DecoderStrategyE19QuantizeGratientOrgEi.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = sext i32 %i.ap to i64
  %i.ba = icmp slt i64 %indvars.iv, %i.az
  br i1 %i.ba, label %_ZN8JlsCodecI15LosslessTraitsTIhLi8EE15DecoderStrategyE19QuantizeGratientOrgEi.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = sext i32 %i.am to i64
  %i.bc = icmp slt i64 %indvars.iv, %i.bb
  %..i = select i1 %i.bc, i8 3, i8 4
  br label %_ZN8JlsCodecI15LosslessTraitsTIhLi8EE15DecoderStrategyE19QuantizeGratientOrgEi.exit

_ZN8JlsCodecI15LosslessTraitsTIhLi8EE15DecoderStrategyE19QuantizeGratientOrgEi.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i = phi i8 [ 2, %bb.o ], [ -4, %bb.i ], [ -3, %bb.j ], [ -2, %bb.k ], [ -1, %bb.l ], [ 0, %bb.m ], [ 1, %bb.n ], [ %..i, %bb.p ]
  %i.bd = load ptr, ptr %i.aj, align 8, !tbaa !381
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %indvars.iv
  store i8 %.0.i, ptr %i.be, align 1, !tbaa !51
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !1037

.loopexit:                                        ; preds = %_ZN8JlsCodecI15LosslessTraitsTIhLi8EE15DecoderStrategyE19QuantizeGratientOrgEi.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI15LosslessTraitsTIhLi8EE15DecoderStrategyE6DoScanEv(ptr noundef nonnull align 8 dereferenceable(4673) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__1::vector.10", align 8 ; 9 uses
  %2 = alloca %"class.std::__1::vector.92", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !114
  %i.c = add nsw i32 %i.b, 4                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !102
  %i.f = icmp eq i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8
  %i.i = select i1 %i.f, i32 %i.h, i32 1          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.j = shl nsw i32 %i.i, 1
  %i.k = mul nsw i32 %i.j, %i.c                   ; 3 uses
  %i.l = sext i32 %i.k to i64                     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.not.i = icmp eq i32 %i.k, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp slt i32 %i.k, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #24
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #25
          to label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit.i unwind label %bb.e ; 4 uses

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit.i: ; preds = %bb.d
end_hunk_2
begin_hunk_3_@_ZN8JlsCodecI15LosslessTraitsTItLi12EE15DecoderStrategyE13CreateProcessE14ByteStreamInfo:bb.a

bb.ae:                                            ; preds = %_ZlsIN6charls19ColorTransformationEERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERNS2_9enable_ifIXsr3std7is_enumIT_EE5valueES6_E4typeERKS9_.exit30, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit29, %bb.ab
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32.thread: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit31
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %.0 = phi i1 [ false, %bb.ad ], [ true, %bb.ac ] ; 2 uses
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bi = load i8, ptr %5, align 8
  %i.bj = trunc i8 %i.bi to i1
  br i1 %i.bj, label %.split41, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32

.split41:                                         ; preds = %bb.af
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !51
  %i.bm = load i64, ptr %5, align 8
  %i.bn = and i64 %i.bm, -2
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bn) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.ag, label %bb.ah

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.split41, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32
  %.pn40 = phi { ptr, i32 } [ %i.bg, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32.thread ], [ %i.bh, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32 ], [ %i.bh, %.split41 ]
  call void @__cxa_free_exception(ptr %i.be) #23
  br label %bb.ah

bb.ah:                                            ; preds = %.split41, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32, %bb.ag, %bb.ae
  %.pn.pn = phi { ptr, i32 } [ %.pn40, %bb.ag ], [ %i.bh, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32 ], [ %i.bf, %bb.ae ], [ %i.bh, %.split41 ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.am

bb.ai:                                            ; preds = %bb.t
  %i.bo = tail call ptr @__cxa_allocate_exception(i64 32) #23 ; 3 uses
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z22CharLSCategoryInstancev() ; 0 uses
  invoke void @_ZNSt3__112system_errorC1EiRKNS_14error_categoryE(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) @_ZZ22CharLSCategoryInstancevE8instance)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @__cxa_throw(ptr nonnull %i.bo, ptr nonnull @_ZTINSt3__112system_errorE, ptr nonnull @_ZNSt3__112system_errorD1Ev) #24
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bo) #23
  br label %bb.am

bb.al:                                            ; preds = %.sink.split, %bb.v, %bb.x, %bb.z, %bb.k, %bb.i, %bb.g, %bb.c
  %.111 = phi ptr [ %i.au, %bb.v ], [ %i.t, %bb.c ], [ %i.y, %bb.g ], [ %i.aa, %bb.i ], [ %i.ac, %bb.k ], [ %i.ay, %bb.z ], [ %i.aw, %bb.x ], [ %i.i, %.sink.split ]
  ret ptr %.111

bb.am:                                            ; preds = %bb.w, %bb.y, %bb.aa, %bb.ah, %bb.ak, %bb.s, %bb.l, %bb.j, %bb.h, %bb.d
  %.pn26 = phi { ptr, i32 } [ %i.u, %bb.d ], [ %.pn23.pn, %bb.s ], [ %i.z, %bb.h ], [ %i.ab, %bb.j ], [ %i.ad, %bb.l ], [ %i.bq, %bb.ak ], [ %.pn.pn, %bb.ah ], [ %i.av, %bb.w ], [ %i.ax, %bb.y ], [ %i.az, %bb.aa ]
  resume { ptr, i32 } %.pn26

bb.an:                                            ; preds = %bb.ad, %bb.o
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI15LosslessTraitsTItLi12EE15DecoderStrategyE10SetPresetsERK19JlsCustomParameters(ptr noundef nonnull align 8 dereferenceable(4673) %0, ptr noundef nonnull align 4 dereferenceable(20) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %struct.JlsCustomParameters, align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_Z14ComputeDefaultii(ptr dead_on_unwind nonnull writable sret(%struct.JlsCustomParameters) align 4 %2, i32 noundef 4095, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !39   ; 2 uses
  %.not13 = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4
  %i.g = select i1 %.not13, i32 %i.f, i32 %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !53   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.m = load <2 x i32>, ptr %i.a, align 4, !tbaa !62 ; 2 uses
  %i.n = icmp eq <2 x i32> %i.m, zeroinitializer
  %i.o = load <2 x i32>, ptr %i.b, align 4
  %i.p = select <2 x i1> %i.n, <2 x i32> %i.o, <2 x i32> %i.m
  store <2 x i32> %i.p, ptr %i.l, align 8, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %i.g, ptr %i.q, align 8, !tbaa !125
  call void @_ZN8JlsCodecI15LosslessTraitsTItLi12EE15DecoderStrategyE19InitQuantizationLUTEv(ptr noundef nonnull align 8 dereferenceable(4673) %0)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %indvars.iv.i ; 4 uses
  store i32 64, ptr %i.s, align 4, !tbaa !62
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 0, ptr %.sroa.417.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i16 0, ptr %.sroa.518.0..sroa_idx.i, align 4, !tbaa !245
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  store i16 1, ptr %.sroa.619.0..sroa_idx.i, align 2, !tbaa !245
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 364
  br i1 %exitcond.not.i, label %_ZN8JlsCodecI15LosslessTraitsTItLi12EE15DecoderStrategyE10InitParamsEiiii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %indvars.iv.i ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 64, ptr %i.u, align 8, !tbaa !62
  %.sroa.417.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i32 0, ptr %.sroa.417.0..sroa_idx.i.1, align 4, !tbaa !62
  %.sroa.518.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store i16 0, ptr %.sroa.518.0..sroa_idx.i.1, align 8, !tbaa !245
  %.sroa.619.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.t, i64 22
  store i16 1, ptr %.sroa.619.0..sroa_idx.i.1, align 2, !tbaa !245
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  br label %bb.b

_ZN8JlsCodecI15LosslessTraitsTItLi12EE15DecoderStrategyE10InitParamsEiiii.exit: ; preds = %bb.b
  %.not14 = icmp eq i32 %i.i, 0
  %i.v = select i1 %.not14, i32 %i.k, i32 %i.i
  %i.w = trunc i32 %i.v to i8                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4592
  store i32 64, ptr %i.x, align 8, !tbaa !62
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4596
  store i32 0, ptr %.sroa.411.0..sroa_idx.i, align 4, !tbaa !62
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4600
  store i8 %i.w, ptr %.sroa.512.0..sroa_idx.i, align 8, !tbaa !51
  %.sroa.613.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4601
  store i8 1, ptr %.sroa.613.0..sroa_idx.i, align 1, !tbaa !51
  %.sroa.714.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4602
  store i8 0, ptr %.sroa.714.0..sroa_idx.i, align 2, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4604
  store i32 64, ptr %i.y, align 4, !tbaa !62
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4608
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4612
  store i8 %i.w, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !51
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4613
  store i8 1, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !51
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4614
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 2, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4616
  store i32 0, ptr %i.z, align 8, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI15LosslessTraitsTItLi12EE15DecoderStrategyE10DecodeScanENSt3__110unique_ptrI11ProcessLineNS4_14default_deleteIS6_EEEERK7JlsRectR14ByteStreamInfob(ptr noundef nonnull align 8 dereferenceable(4673) %0, ptr nofree noundef align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = zext i1 %4 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !238
  store ptr null, ptr %1, align 8, !tbaa !238
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !238  ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !238
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit, label %_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i

_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i: ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #23, !inline_history !3
  br label %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit

_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit: ; preds = %bb.a, %_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !240
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4672
  store i8 %i.a, ptr %i.j, align 8, !tbaa !1050
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 180
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !246
  tail call void @_ZN15DecoderStrategy4InitER14ByteStreamInfo(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN8JlsCodecI15LosslessTraitsTItLi12EE15DecoderStrategyE6DoScanEv(ptr noundef nonnull align 8 dereferenceable(4673) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !248
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit
  %.010.i = phi i32 [ %i.m, %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit ], [ %i.t, %bb.b ] ; 2 uses
  %.09.i = phi ptr [ %i.o, %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit ], [ %i.p, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.09.i, i64 -1 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !51
  %i.r = icmp eq i8 %i.q, -1
  %i.s = select i1 %i.r, i32 7, i32 8             ; 2 uses
  %.not.i = icmp slt i32 %.010.i, %i.s
  %i.t = sub nuw nsw i32 %.010.i, %i.s
  br i1 %.not.i, label %_ZNK15DecoderStrategy13GetCurBytePosEv.exit, label %bb.b, !llvm.loop !4

_ZNK15DecoderStrategy13GetCurBytePosEv.exit:      ; preds = %bb.b
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !240  ; 2 uses
  %.not.i6 = icmp eq ptr %i.u, null
  br i1 %.not.i6, label %_Z9SkipBytesR14ByteStreamInfom.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK15DecoderStrategy13GetCurBytePosEv.exit
  %i.v = ptrtoint ptr %.09.i to i64
  %i.w = ptrtoint ptr %i.i to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  store ptr %i.y, ptr %i.h, align 8, !tbaa !240
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !249
  %i.ab = sub i64 %i.aa, %i.x
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !249
  br label %_Z9SkipBytesR14ByteStreamInfom.exit

_Z9SkipBytesR14ByteStreamInfom.exit:              ; preds = %_ZNK15DecoderStrategy13GetCurBytePosEv.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN18ProcessTransformedI13TransformNoneItEEC2E14ByteStreamInfoRK13JlsParametersS1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef byval(%struct.ByteStreamInfo) align 8 %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18ProcessTransformedI13TransformNoneItEE, i64 16), ptr %0, align 8, !tbaa !68
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !251
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = load i32, ptr %2, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !103
  %i.f = mul nsw i32 %i.e, %i.c                   ; 3 uses
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %_ZNSt3__16vectorItNS_9allocatorItEEEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp slt i32 %i.f, 0
  br i1 %i.j, label %bb.c, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorItEEEEDaRT_m.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNKSt3__16vectorItNS_9allocatorItEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #24
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorItEEEEDaRT_m.exit.i.i: ; preds = %bb.b
  %i.k = shl nuw nsw i64 %i.g, 1                  ; 3 uses
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #25
          to label %_ZNSt3__16vectorItNS_9allocatorItEEE18__construct_at_endEm.exit.i unwind label %bb.d ; 4 uses

_ZNSt3__16vectorItNS_9allocatorItEEE18__construct_at_endEm.exit.i: ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorItEEEEDaRT_m.exit.i.i
  store ptr %i.l, ptr %i.b, align 8, !tbaa !275
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.g
  store ptr %i.m, ptr %i.i, align 8, !tbaa !276
  %i.n = getelementptr i8, ptr %i.l, i64 %i.k
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.l, i8 0, i64 %i.k, i1 false), !tbaa !245
  store ptr %i.n, ptr %i.h, align 8, !tbaa !277
  br label %_ZNSt3__16vectorItNS_9allocatorItEEEC2Em.exit

bb.d:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorItEEEEDaRT_m.exit.i.i, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !275  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %.body, label %.body.sink.split

_ZNSt3__16vectorItNS_9allocatorItEEEC2Em.exit:    ; preds = %_ZNSt3__16vectorItNS_9allocatorItEEE18__construct_at_endEm.exit.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.r = load i32, ptr %2, align 8, !tbaa !77
  %i.s = load i32, ptr %i.d, align 8, !tbaa !103
  %i.t = mul nsw i32 %i.s, %i.r                   ; 3 uses
  %i.u = sext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 1                  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not.i9 = icmp eq i32 %i.t, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  br i1 %.not.i9, label %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__16vectorItNS_9allocatorItEEEC2Em.exit
  %i.y = icmp slt i32 %i.t, 0
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.q) #24
          to label %.noexc.i11 unwind label %bb.h

.noexc.i11:                                       ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #25
          to label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit.i unwind label %bb.h ; 3 uses

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit.i: ; preds = %bb.g
  store ptr %i.z, ptr %i.q, align 8, !tbaa !235
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.v    ; 2 uses
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !50
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.z, i8 0, i64 %i.v, i1 false), !tbaa !51
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !236
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !235 ; 4 uses
  %.not.i.i.i10 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i10, label %.body12, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.ac, ptr %i.w, align 8, !tbaa !236
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !50
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ag) #26
  br label %.body12

_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit:    ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit.i, %_ZNSt3__16vectorItNS_9allocatorItEEEC2Em.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !254
  ret void

.body12:                                          ; preds = %bb.h, %bb.i
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !275 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body12, %bb.d
  %.sink23 = phi ptr [ %i.p, %bb.d ], [ %i.ai, %.body12 ] ; 3 uses
  %.pn.ph = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.ab, %.body12 ]
  store ptr %.sink23, ptr %i.h, align 8, !tbaa !277
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !276
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %.sink23 to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink23, i64 noundef %i.am) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body12, %bb.d
  %.pn = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.ab, %.body12 ], [ %.pn.ph, %.body.sink.split ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN18ProcessTransformedI12TransformHp1ItEEC2E14ByteStreamInfoRK13JlsParametersS1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef byval(%struct.ByteStreamInfo) align 8 %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18ProcessTransformedI12TransformHp1ItEE, i64 16), ptr %0, align 8, !tbaa !68
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !251
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = load i32, ptr %2, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !103
  %i.f = mul nsw i32 %i.e, %i.c                   ; 3 uses
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %_ZNSt3__16vectorItNS_9allocatorItEEEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp slt i32 %i.f, 0
  br i1 %i.j, label %bb.c, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorItEEEEDaRT_m.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNKSt3__16vectorItNS_9allocatorItEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #24
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorItEEEEDaRT_m.exit.i.i: ; preds = %bb.b
  %i.k = shl nuw nsw i64 %i.g, 1                  ; 3 uses
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #25
          to label %_ZNSt3__16vectorItNS_9allocatorItEEE18__construct_at_endEm.exit.i unwind label %bb.d ; 4 uses

_ZNSt3__16vectorItNS_9allocatorItEEE18__construct_at_endEm.exit.i: ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorItEEEEDaRT_m.exit.i.i
  store ptr %i.l, ptr %i.b, align 8, !tbaa !275
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.g
  store ptr %i.m, ptr %i.i, align 8, !tbaa !276
  %i.n = getelementptr i8, ptr %i.l, i64 %i.k
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.l, i8 0, i64 %i.k, i1 false), !tbaa !245
  store ptr %i.n, ptr %i.h, align 8, !tbaa !277
  br label %_ZNSt3__16vectorItNS_9allocatorItEEEC2Em.exit

bb.d:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorItEEEEDaRT_m.exit.i.i, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !275  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %.body, label %.body.sink.split
end_hunk_3
begin_hunk_4_@_ZN8JlsCodecI15LosslessTraitsTItLi16EE15DecoderStrategyE13CreateProcessE14ByteStreamInfo:bb.a

bb.ae:                                            ; preds = %_ZlsIN6charls19ColorTransformationEERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERNS2_9enable_ifIXsr3std7is_enumIT_EE5valueES6_E4typeERKS9_.exit30, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit29, %bb.ab
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32.thread: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit31
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %.0 = phi i1 [ false, %bb.ad ], [ true, %bb.ac ] ; 2 uses
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bi = load i8, ptr %5, align 8
  %i.bj = trunc i8 %i.bi to i1
  br i1 %i.bj, label %.split41, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32

.split41:                                         ; preds = %bb.af
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !51
  %i.bm = load i64, ptr %5, align 8
  %i.bn = and i64 %i.bm, -2
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bn) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.ag, label %bb.ah

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.split41, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32
  %.pn40 = phi { ptr, i32 } [ %i.bg, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32.thread ], [ %i.bh, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32 ], [ %i.bh, %.split41 ]
  call void @__cxa_free_exception(ptr %i.be) #23
  br label %bb.ah

bb.ah:                                            ; preds = %.split41, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32, %bb.ag, %bb.ae
  %.pn.pn = phi { ptr, i32 } [ %.pn40, %bb.ag ], [ %i.bh, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32 ], [ %i.bf, %bb.ae ], [ %i.bh, %.split41 ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.am

bb.ai:                                            ; preds = %bb.t
  %i.bo = tail call ptr @__cxa_allocate_exception(i64 32) #23 ; 3 uses
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z22CharLSCategoryInstancev() ; 0 uses
  invoke void @_ZNSt3__112system_errorC1EiRKNS_14error_categoryE(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) @_ZZ22CharLSCategoryInstancevE8instance)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @__cxa_throw(ptr nonnull %i.bo, ptr nonnull @_ZTINSt3__112system_errorE, ptr nonnull @_ZNSt3__112system_errorD1Ev) #24
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bo) #23
  br label %bb.am

bb.al:                                            ; preds = %.sink.split, %bb.v, %bb.x, %bb.z, %bb.k, %bb.i, %bb.g, %bb.c
  %.111 = phi ptr [ %i.au, %bb.v ], [ %i.t, %bb.c ], [ %i.y, %bb.g ], [ %i.aa, %bb.i ], [ %i.ac, %bb.k ], [ %i.ay, %bb.z ], [ %i.aw, %bb.x ], [ %i.i, %.sink.split ]
  ret ptr %.111

bb.am:                                            ; preds = %bb.w, %bb.y, %bb.aa, %bb.ah, %bb.ak, %bb.s, %bb.l, %bb.j, %bb.h, %bb.d
  %.pn26 = phi { ptr, i32 } [ %i.u, %bb.d ], [ %.pn23.pn, %bb.s ], [ %i.z, %bb.h ], [ %i.ab, %bb.j ], [ %i.ad, %bb.l ], [ %i.bq, %bb.ak ], [ %.pn.pn, %bb.ah ], [ %i.av, %bb.w ], [ %i.ax, %bb.y ], [ %i.az, %bb.aa ]
  resume { ptr, i32 } %.pn26

bb.an:                                            ; preds = %bb.ad, %bb.o
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI15LosslessTraitsTItLi16EE15DecoderStrategyE10SetPresetsERK19JlsCustomParameters(ptr noundef nonnull align 8 dereferenceable(4673) %0, ptr noundef nonnull align 4 dereferenceable(20) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %struct.JlsCustomParameters, align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_Z14ComputeDefaultii(ptr dead_on_unwind nonnull writable sret(%struct.JlsCustomParameters) align 4 %2, i32 noundef 65535, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !39   ; 2 uses
  %.not13 = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4
  %i.g = select i1 %.not13, i32 %i.f, i32 %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !53   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.m = load <2 x i32>, ptr %i.a, align 4, !tbaa !62 ; 2 uses
  %i.n = icmp eq <2 x i32> %i.m, zeroinitializer
  %i.o = load <2 x i32>, ptr %i.b, align 4
  %i.p = select <2 x i1> %i.n, <2 x i32> %i.o, <2 x i32> %i.m
  store <2 x i32> %i.p, ptr %i.l, align 8, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %i.g, ptr %i.q, align 8, !tbaa !132
  call void @_ZN8JlsCodecI15LosslessTraitsTItLi16EE15DecoderStrategyE19InitQuantizationLUTEv(ptr noundef nonnull align 8 dereferenceable(4673) %0)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %indvars.iv.i ; 4 uses
  store i32 1024, ptr %i.s, align 4, !tbaa !62
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 0, ptr %.sroa.417.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i16 0, ptr %.sroa.518.0..sroa_idx.i, align 4, !tbaa !245
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  store i16 1, ptr %.sroa.619.0..sroa_idx.i, align 2, !tbaa !245
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 364
  br i1 %exitcond.not.i, label %_ZN8JlsCodecI15LosslessTraitsTItLi16EE15DecoderStrategyE10InitParamsEiiii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %indvars.iv.i ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 1024, ptr %i.u, align 8, !tbaa !62
  %.sroa.417.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i32 0, ptr %.sroa.417.0..sroa_idx.i.1, align 4, !tbaa !62
  %.sroa.518.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store i16 0, ptr %.sroa.518.0..sroa_idx.i.1, align 8, !tbaa !245
  %.sroa.619.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.t, i64 22
  store i16 1, ptr %.sroa.619.0..sroa_idx.i.1, align 2, !tbaa !245
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  br label %bb.b

_ZN8JlsCodecI15LosslessTraitsTItLi16EE15DecoderStrategyE10InitParamsEiiii.exit: ; preds = %bb.b
  %.not14 = icmp eq i32 %i.i, 0
  %i.v = select i1 %.not14, i32 %i.k, i32 %i.i
  %i.w = trunc i32 %i.v to i8                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4592
  store i32 1024, ptr %i.x, align 8, !tbaa !62
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4596
  store i32 0, ptr %.sroa.411.0..sroa_idx.i, align 4, !tbaa !62
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4600
  store i8 %i.w, ptr %.sroa.512.0..sroa_idx.i, align 8, !tbaa !51
  %.sroa.613.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4601
  store i8 1, ptr %.sroa.613.0..sroa_idx.i, align 1, !tbaa !51
  %.sroa.714.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4602
  store i8 0, ptr %.sroa.714.0..sroa_idx.i, align 2, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4604
  store i32 1024, ptr %i.y, align 4, !tbaa !62
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4608
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4612
  store i8 %i.w, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !51
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4613
  store i8 1, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !51
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4614
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 2, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4616
  store i32 0, ptr %i.z, align 8, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI15LosslessTraitsTItLi16EE15DecoderStrategyE10DecodeScanENSt3__110unique_ptrI11ProcessLineNS4_14default_deleteIS6_EEEERK7JlsRectR14ByteStreamInfob(ptr noundef nonnull align 8 dereferenceable(4673) %0, ptr nofree noundef align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = zext i1 %4 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !238
  store ptr null, ptr %1, align 8, !tbaa !238
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !238  ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !238
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit, label %_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i

_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i: ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #23, !inline_history !3
  br label %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit

_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit: ; preds = %bb.a, %_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !240
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4672
  store i8 %i.a, ptr %i.j, align 8, !tbaa !1306
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 180
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !246
  tail call void @_ZN15DecoderStrategy4InitER14ByteStreamInfo(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN8JlsCodecI15LosslessTraitsTItLi16EE15DecoderStrategyE6DoScanEv(ptr noundef nonnull align 8 dereferenceable(4673) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !248
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit
  %.010.i = phi i32 [ %i.m, %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit ], [ %i.t, %bb.b ] ; 2 uses
  %.09.i = phi ptr [ %i.o, %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit ], [ %i.p, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.09.i, i64 -1 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !51
  %i.r = icmp eq i8 %i.q, -1
  %i.s = select i1 %i.r, i32 7, i32 8             ; 2 uses
  %.not.i = icmp slt i32 %.010.i, %i.s
  %i.t = sub nuw nsw i32 %.010.i, %i.s
  br i1 %.not.i, label %_ZNK15DecoderStrategy13GetCurBytePosEv.exit, label %bb.b, !llvm.loop !4

_ZNK15DecoderStrategy13GetCurBytePosEv.exit:      ; preds = %bb.b
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !240  ; 2 uses
  %.not.i6 = icmp eq ptr %i.u, null
  br i1 %.not.i6, label %_Z9SkipBytesR14ByteStreamInfom.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK15DecoderStrategy13GetCurBytePosEv.exit
  %i.v = ptrtoint ptr %.09.i to i64
  %i.w = ptrtoint ptr %i.i to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  store ptr %i.y, ptr %i.h, align 8, !tbaa !240
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !249
  %i.ab = sub i64 %i.aa, %i.x
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !249
  br label %_Z9SkipBytesR14ByteStreamInfom.exit

_Z9SkipBytesR14ByteStreamInfom.exit:              ; preds = %_ZNK15DecoderStrategy13GetCurBytePosEv.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI15LosslessTraitsTItLi16EE15DecoderStrategyE19InitQuantizationLUTEv(ptr noundef nonnull align 8 dereferenceable(4673) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.JlsCustomParameters, align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @_Z14ComputeDefaultii(ptr dead_on_unwind nonnull writable sret(%struct.JlsCustomParameters) align 4 %1, i32 noundef 65535, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !130
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.i = load i32, ptr %i.h, align 4, !tbaa !131
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load i32, ptr %i.m, align 8, !tbaa !132
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rgquant16Ll, i64 8), align 8, !tbaa !49
  %i.q = load ptr, ptr @rgquant16Ll, align 8, !tbaa !48 ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr i64 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4640
  store ptr %i.v, ptr %i.w, align 8, !tbaa !401
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %.loopexit

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4648 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4656 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !49
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !48  ; 4 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 131072
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = sub nuw nsw i64 131072, %i.ad
  call void @_ZNSt3__16vectorIaNS_9allocatorIaEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %i.af)
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !48
  br label %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit

bb.g:                                             ; preds = %bb.e
  %.not = icmp eq i64 %i.ad, 131072
  br i1 %.not, label %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 131072
  store ptr %i.ag, ptr %i.y, align 8, !tbaa !49
  br label %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit

_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.ah = phi ptr [ %.pre, %bb.f ], [ %i.aa, %bb.g ], [ %i.aa, %bb.h ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 65536
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4640 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !401
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 204
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit, %_ZN8JlsCodecI15LosslessTraitsTItLi16EE15DecoderStrategyE19QuantizeGratientOrgEi.exit
  %indvars.iv = phi i64 [ -65536, %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit ], [ %indvars.iv.next, %_ZN8JlsCodecI15LosslessTraitsTItLi16EE15DecoderStrategyE19QuantizeGratientOrgEi.exit ] ; 10 uses
  %i.am = load i32, ptr %i.ak, align 8, !tbaa !132 ; 2 uses
  %i.an = sub nsw i32 0, %i.am
  %i.ao = sext i32 %i.an to i64
  %.not.i = icmp sgt i64 %indvars.iv, %i.ao
  br i1 %.not.i, label %bb.j, label %_ZN8JlsCodecI15LosslessTraitsTItLi16EE15DecoderStrategyE19QuantizeGratientOrgEi.exit

bb.j:                                             ; preds = %bb.i
  %i.ap = load i32, ptr %i.al, align 4, !tbaa !131 ; 2 uses
  %i.aq = sub nsw i32 0, %i.ap
  %i.ar = sext i32 %i.aq to i64
  %.not10.i = icmp sgt i64 %indvars.iv, %i.ar
  br i1 %.not10.i, label %bb.k, label %_ZN8JlsCodecI15LosslessTraitsTItLi16EE15DecoderStrategyE19QuantizeGratientOrgEi.exit

bb.k:                                             ; preds = %bb.j
  %i.as = load i32, ptr %i.c, align 8, !tbaa !130 ; 2 uses
  %i.at = sub nsw i32 0, %i.as
  %i.au = sext i32 %i.at to i64
  %.not11.i = icmp sgt i64 %indvars.iv, %i.au
  br i1 %.not11.i, label %bb.l, label %_ZN8JlsCodecI15LosslessTraitsTItLi16EE15DecoderStrategyE19QuantizeGratientOrgEi.exit

bb.l:                                             ; preds = %bb.k
  %i.av = icmp slt i64 %indvars.iv, 0
  br i1 %i.av, label %_ZN8JlsCodecI15LosslessTraitsTItLi16EE15DecoderStrategyE19QuantizeGratientOrgEi.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = icmp eq i64 %indvars.iv, 0
  br i1 %i.aw, label %_ZN8JlsCodecI15LosslessTraitsTItLi16EE15DecoderStrategyE19QuantizeGratientOrgEi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = sext i32 %i.as to i64
  %i.ay = icmp slt i64 %indvars.iv, %i.ax
  br i1 %i.ay, label %_ZN8JlsCodecI15LosslessTraitsTItLi16EE15DecoderStrategyE19QuantizeGratientOrgEi.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = sext i32 %i.ap to i64
  %i.ba = icmp slt i64 %indvars.iv, %i.az
  br i1 %i.ba, label %_ZN8JlsCodecI15LosslessTraitsTItLi16EE15DecoderStrategyE19QuantizeGratientOrgEi.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = sext i32 %i.am to i64
  %i.bc = icmp slt i64 %indvars.iv, %i.bb
  %..i = select i1 %i.bc, i8 3, i8 4
  br label %_ZN8JlsCodecI15LosslessTraitsTItLi16EE15DecoderStrategyE19QuantizeGratientOrgEi.exit

_ZN8JlsCodecI15LosslessTraitsTItLi16EE15DecoderStrategyE19QuantizeGratientOrgEi.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i = phi i8 [ 2, %bb.o ], [ -4, %bb.i ], [ -3, %bb.j ], [ -2, %bb.k ], [ -1, %bb.l ], [ 0, %bb.m ], [ 1, %bb.n ], [ %..i, %bb.p ]
  %i.bd = load ptr, ptr %i.aj, align 8, !tbaa !401
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %indvars.iv
  store i8 %.0.i, ptr %i.be, align 1, !tbaa !51
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 65536
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !1307

.loopexit:                                        ; preds = %_ZN8JlsCodecI15LosslessTraitsTItLi16EE15DecoderStrategyE19QuantizeGratientOrgEi.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI15LosslessTraitsTItLi16EE15DecoderStrategyE6DoScanEv(ptr noundef nonnull align 8 dereferenceable(4673) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__1::vector.45", align 8 ; 9 uses
  %2 = alloca %"class.std::__1::vector.92", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !129
  %i.c = add nsw i32 %i.b, 4                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !102
  %i.f = icmp eq i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8
  %i.i = select i1 %i.f, i32 %i.h, i32 1          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.j = shl nsw i32 %i.i, 1
  %i.k = mul nsw i32 %i.j, %i.c                   ; 3 uses
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.not.i = icmp eq i32 %i.k, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %_ZNSt3__16vectorItNS_9allocatorItEEEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp slt i32 %i.k, 0
  br i1 %i.o, label %bb.c, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorItEEEEDaRT_m.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNKSt3__16vectorItNS_9allocatorItEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #24
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorItEEEEDaRT_m.exit.i.i: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %i.l, 1                  ; 3 uses
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #25
          to label %_ZNSt3__16vectorItNS_9allocatorItEEE18__construct_at_endEm.exit.i unwind label %bb.d ; 5 uses

end_hunk_4
begin_hunk_5_@_ZN8JlsCodecI14DefaultTraitsTIh7TripletIhEE15DecoderStrategyE13CreateProcessE14ByteStreamInfo:bb.a
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %.0 = phi i1 [ false, %bb.ad ], [ true, %bb.ac ] ; 2 uses
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bi = load i8, ptr %5, align 8
  %i.bj = trunc i8 %i.bi to i1
  br i1 %i.bj, label %.split41, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32

.split41:                                         ; preds = %bb.af
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !51
  %i.bm = load i64, ptr %5, align 8
  %i.bn = and i64 %i.bm, -2
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bn) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.ag, label %bb.ah

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.split41, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32
  %.pn40 = phi { ptr, i32 } [ %i.bg, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32.thread ], [ %i.bh, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32 ], [ %i.bh, %.split41 ]
  call void @__cxa_free_exception(ptr %i.be) #23
  br label %bb.ah

bb.ah:                                            ; preds = %.split41, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32, %bb.ag, %bb.ae
  %.pn.pn = phi { ptr, i32 } [ %.pn40, %bb.ag ], [ %i.bh, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32 ], [ %i.bf, %bb.ae ], [ %i.bh, %.split41 ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.am

bb.ai:                                            ; preds = %bb.t
  %i.bo = tail call ptr @__cxa_allocate_exception(i64 32) #23 ; 3 uses
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z22CharLSCategoryInstancev() ; 0 uses
  invoke void @_ZNSt3__112system_errorC1EiRKNS_14error_categoryE(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) @_ZZ22CharLSCategoryInstancevE8instance)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @__cxa_throw(ptr nonnull %i.bo, ptr nonnull @_ZTINSt3__112system_errorE, ptr nonnull @_ZNSt3__112system_errorD1Ev) #24
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bo) #23
  br label %bb.am

bb.al:                                            ; preds = %.sink.split, %bb.v, %bb.x, %bb.z, %bb.k, %bb.i, %bb.g, %bb.c
  %.111 = phi ptr [ %i.au, %bb.v ], [ %i.t, %bb.c ], [ %i.y, %bb.g ], [ %i.aa, %bb.i ], [ %i.ac, %bb.k ], [ %i.ay, %bb.z ], [ %i.aw, %bb.x ], [ %i.i, %.sink.split ]
  ret ptr %.111

bb.am:                                            ; preds = %bb.w, %bb.y, %bb.aa, %bb.ah, %bb.ak, %bb.s, %bb.l, %bb.j, %bb.h, %bb.d
  %.pn26 = phi { ptr, i32 } [ %i.u, %bb.d ], [ %.pn23.pn, %bb.s ], [ %i.z, %bb.h ], [ %i.ab, %bb.j ], [ %i.ad, %bb.l ], [ %i.bq, %bb.ak ], [ %.pn.pn, %bb.ah ], [ %i.av, %bb.w ], [ %i.ax, %bb.y ], [ %i.az, %bb.aa ]
  resume { ptr, i32 } %.pn26

bb.an:                                            ; preds = %bb.ad, %bb.o
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI14DefaultTraitsTIh7TripletIhEE15DecoderStrategyE10SetPresetsERK19JlsCustomParameters(ptr noundef nonnull align 8 dereferenceable(4697) %0, ptr noundef nonnull align 4 dereferenceable(20) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %struct.JlsCustomParameters, align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !402
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load i32, ptr %i.c, align 8, !tbaa !403
  call void @_Z14ComputeDefaultii(ptr dead_on_unwind nonnull writable sret(%struct.JlsCustomParameters) align 4 %2, i32 noundef %i.b, i32 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !39   ; 2 uses
  %.not13 = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = select i1 %.not13, i32 %i.j, i32 %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !53   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.q = load <2 x i32>, ptr %i.e, align 4, !tbaa !62 ; 2 uses
  %i.r = icmp eq <2 x i32> %i.q, zeroinitializer
  %i.s = load <2 x i32>, ptr %i.f, align 4
  %i.t = select <2 x i1> %i.r, <2 x i32> %i.s, <2 x i32> %i.q
  store <2 x i32> %i.t, ptr %i.p, align 8, !tbaa !62
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %i.k, ptr %i.u, align 8, !tbaa !146
  call void @_ZN8JlsCodecI14DefaultTraitsTIh7TripletIhEE15DecoderStrategyE19InitQuantizationLUTEv(ptr noundef nonnull align 8 dereferenceable(4697) %0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.w = load i32, ptr %i.v, align 4, !tbaa !1323 ; 2 uses
  %i.x = icmp slt i32 %i.w, 96
  %i.y = add nuw nsw i32 %i.w, 32
  %i.z = lshr i32 %i.y, 6
  %i.aa = select i1 %i.x, i32 2, i32 %i.z         ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %indvars.iv.i ; 4 uses
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !62
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 0, ptr %.sroa.420.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i16 0, ptr %.sroa.521.0..sroa_idx.i, align 4, !tbaa !245
  %.sroa.622.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 10
  store i16 1, ptr %.sroa.622.0..sroa_idx.i, align 2, !tbaa !245
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 364
  br i1 %exitcond.not.i, label %_ZN8JlsCodecI14DefaultTraitsTIh7TripletIhEE15DecoderStrategyE10InitParamsEiiii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %indvars.iv.i ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 %i.aa, ptr %i.ae, align 8, !tbaa !62
  %.sroa.420.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i32 0, ptr %.sroa.420.0..sroa_idx.i.1, align 4, !tbaa !62
  %.sroa.521.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  store i16 0, ptr %.sroa.521.0..sroa_idx.i.1, align 8, !tbaa !245
  %.sroa.622.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.ad, i64 22
  store i16 1, ptr %.sroa.622.0..sroa_idx.i.1, align 2, !tbaa !245
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  br label %bb.b

_ZN8JlsCodecI14DefaultTraitsTIh7TripletIhEE15DecoderStrategyE10InitParamsEiiii.exit: ; preds = %bb.b
  %.not14 = icmp eq i32 %i.m, 0
  %i.af = select i1 %.not14, i32 %i.o, i32 %i.m
  %.sink.i = trunc i32 %i.af to i8                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4616
  store i32 %i.aa, ptr %i.ag, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4620
  store i32 0, ptr %i.ah, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4624
  store i8 %.sink.i, ptr %i.ai, align 8, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4625
  store i8 1, ptr %i.aj, align 1, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4626
  store i8 0, ptr %i.ak, align 2, !tbaa !51
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4628
  store i32 %i.aa, ptr %i.al, align 4, !tbaa !62
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4632
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4636
  store i8 %.sink.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !51
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4637
  store i8 1, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !51
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4638
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 2, !tbaa !51
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4640
  store i32 0, ptr %i.am, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI14DefaultTraitsTIh7TripletIhEE15DecoderStrategyE10DecodeScanENSt3__110unique_ptrI11ProcessLineNS6_14default_deleteIS8_EEEERK7JlsRectR14ByteStreamInfob(ptr noundef nonnull align 8 dereferenceable(4697) %0, ptr nofree noundef align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = zext i1 %4 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !238
  store ptr null, ptr %1, align 8, !tbaa !238
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !238  ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !238
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit, label %_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i

_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i: ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #23, !inline_history !3
  br label %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit

_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit: ; preds = %bb.a, %_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !240
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4696
  store i8 %i.a, ptr %i.j, align 8, !tbaa !1324
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 204
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !246
  tail call void @_ZN15DecoderStrategy4InitER14ByteStreamInfo(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN8JlsCodecI14DefaultTraitsTIh7TripletIhEE15DecoderStrategyE6DoScanEv(ptr noundef nonnull align 8 dereferenceable(4697) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !248
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit
  %.010.i = phi i32 [ %i.m, %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit ], [ %i.t, %bb.b ] ; 2 uses
  %.09.i = phi ptr [ %i.o, %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit ], [ %i.p, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.09.i, i64 -1 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !51
  %i.r = icmp eq i8 %i.q, -1
  %i.s = select i1 %i.r, i32 7, i32 8             ; 2 uses
  %.not.i = icmp slt i32 %.010.i, %i.s
  %i.t = sub nuw nsw i32 %.010.i, %i.s
  br i1 %.not.i, label %_ZNK15DecoderStrategy13GetCurBytePosEv.exit, label %bb.b, !llvm.loop !4

_ZNK15DecoderStrategy13GetCurBytePosEv.exit:      ; preds = %bb.b
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !240  ; 2 uses
  %.not.i6 = icmp eq ptr %i.u, null
  br i1 %.not.i6, label %_Z9SkipBytesR14ByteStreamInfom.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK15DecoderStrategy13GetCurBytePosEv.exit
  %i.v = ptrtoint ptr %.09.i to i64
  %i.w = ptrtoint ptr %i.i to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  store ptr %i.y, ptr %i.h, align 8, !tbaa !240
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !249
  %i.ab = sub i64 %i.aa, %i.x
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !249
  br label %_Z9SkipBytesR14ByteStreamInfom.exit

_Z9SkipBytesR14ByteStreamInfom.exit:              ; preds = %_ZNK15DecoderStrategy13GetCurBytePosEv.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI14DefaultTraitsTIh7TripletIhEE15DecoderStrategyE19InitQuantizationLUTEv(ptr noundef nonnull align 8 dereferenceable(4697) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.JlsCustomParameters, align 4 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !403
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = load i32, ptr %i.d, align 8, !tbaa !402  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1326
  %notmask = shl nsw i32 -1, %i.g
  %i.h = xor i32 %notmask, %i.e
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @_Z14ComputeDefaultii(ptr dead_on_unwind nonnull writable sret(%struct.JlsCustomParameters) align 4 %1, i32 noundef %i.e, i32 noundef 0)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.m = load i32, ptr %i.l, align 8, !tbaa !144
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.r = load i32, ptr %i.q, align 4, !tbaa !145
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.w = load i32, ptr %i.v, align 8, !tbaa !146
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.f, align 8, !tbaa !1326
  %switch.tableidx = add i32 %i.y, -8             ; 4 uses
  %i.z = icmp ult i32 %switch.tableidx, 9
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 277, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.z, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.g

switch.lookup:                                    ; preds = %bb.f
  %i.aa = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8JlsCodecI14DefaultTraitsTIttE15EncoderStrategyE19InitQuantizationLUTEv, i64 %i.aa
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.ab = zext nneg i32 %switch.tableidx to i64
  %switch.gep22 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8JlsCodecI14DefaultTraitsTIttE15EncoderStrategyE19InitQuantizationLUTEv.8, i64 %i.ab
  %switch.load23 = load ptr, ptr %switch.gep22, align 8
  %.sink21 = load ptr, ptr %switch.load23, align 8, !tbaa !49
  %i.ac = load ptr, ptr %switch.load, align 8, !tbaa !48 ; 2 uses
  %i.ad = ptrtoint ptr %.sink21 to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = lshr i64 %i.af, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4664
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !404
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %.loopexit

bb.g:                                             ; preds = %.thread, %bb.b, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1326 ; 3 uses
  %i.al = shl nuw i32 1, %i.ak                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4672 ; 3 uses
  %i.an = shl i32 2, %i.ak
  %i.ao = sext i32 %i.an to i64                   ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4680 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !49
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !48 ; 4 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at                    ; 3 uses
  %i.av = icmp ult i64 %i.au, %i.ao
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = sub nuw i64 %i.ao, %i.au
  call void @_ZNSt3__16vectorIaNS_9allocatorIaEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %i.aw)
  %.pre = load ptr, ptr %i.am, align 8, !tbaa !48
  br label %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit

bb.i:                                             ; preds = %bb.g
  %i.ax = icmp ugt i64 %i.au, %i.ao
  br i1 %i.ax, label %bb.j, label %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao
  store ptr %i.ay, ptr %i.ap, align 8, !tbaa !49
  br label %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit

_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.az = phi ptr [ %.pre, %bb.h ], [ %i.ar, %bb.i ], [ %i.ar, %bb.j ]
  %i.ba = sext i32 %i.al to i64                   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4664 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !404
  %.not = icmp eq i32 %i.ak, 31
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit
  %i.bd = sub i32 0, %i.al
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bh = sext i32 %i.bd to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %_ZN8JlsCodecI14DefaultTraitsTIh7TripletIhEE15DecoderStrategyE19QuantizeGratientOrgEi.exit
  %indvars.iv = phi i64 [ %i.bh, %.lr.ph ], [ %indvars.iv.next, %_ZN8JlsCodecI14DefaultTraitsTIh7TripletIhEE15DecoderStrategyE19QuantizeGratientOrgEi.exit ] ; 10 uses
  %i.bi = load i32, ptr %i.be, align 8, !tbaa !146 ; 2 uses
  %i.bj = sub nsw i32 0, %i.bi
  %i.bk = sext i32 %i.bj to i64
  %.not.i = icmp sgt i64 %indvars.iv, %i.bk
  br i1 %.not.i, label %bb.l, label %_ZN8JlsCodecI14DefaultTraitsTIh7TripletIhEE15DecoderStrategyE19QuantizeGratientOrgEi.exit

bb.l:                                             ; preds = %bb.k
  %i.bl = load i32, ptr %i.bf, align 4, !tbaa !145 ; 2 uses
  %i.bm = sub nsw i32 0, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %.not10.i = icmp sgt i64 %indvars.iv, %i.bn
  br i1 %.not10.i, label %bb.m, label %_ZN8JlsCodecI14DefaultTraitsTIh7TripletIhEE15DecoderStrategyE19QuantizeGratientOrgEi.exit

bb.m:                                             ; preds = %bb.l
  %i.bo = load i32, ptr %i.bg, align 8, !tbaa !144 ; 2 uses
  %i.bp = sub nsw i32 0, %i.bo
  %i.bq = sext i32 %i.bp to i64
  %.not11.i = icmp sgt i64 %indvars.iv, %i.bq
  br i1 %.not11.i, label %bb.n, label %_ZN8JlsCodecI14DefaultTraitsTIh7TripletIhEE15DecoderStrategyE19QuantizeGratientOrgEi.exit

bb.n:                                             ; preds = %bb.m
  %i.br = load i32, ptr %i.a, align 8, !tbaa !403 ; 2 uses
  %i.bs = sub nsw i32 0, %i.br
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp slt i64 %indvars.iv, %i.bt
  br i1 %i.bu, label %_ZN8JlsCodecI14DefaultTraitsTIh7TripletIhEE15DecoderStrategyE19QuantizeGratientOrgEi.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = sext i32 %i.br to i64
  %.not12.i = icmp sgt i64 %indvars.iv, %i.bv
  br i1 %.not12.i, label %bb.p, label %_ZN8JlsCodecI14DefaultTraitsTIh7TripletIhEE15DecoderStrategyE19QuantizeGratientOrgEi.exit

bb.p:                                             ; preds = %bb.o
  %i.bw = sext i32 %i.bo to i64
  %i.bx = icmp slt i64 %indvars.iv, %i.bw
  br i1 %i.bx, label %_ZN8JlsCodecI14DefaultTraitsTIh7TripletIhEE15DecoderStrategyE19QuantizeGratientOrgEi.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = sext i32 %i.bl to i64
  %i.bz = icmp slt i64 %indvars.iv, %i.by
  br i1 %i.bz, label %_ZN8JlsCodecI14DefaultTraitsTIh7TripletIhEE15DecoderStrategyE19QuantizeGratientOrgEi.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = sext i32 %i.bi to i64
  %i.cb = icmp slt i64 %indvars.iv, %i.ca
  %..i = select i1 %i.cb, i8 3, i8 4
  br label %_ZN8JlsCodecI14DefaultTraitsTIh7TripletIhEE15DecoderStrategyE19QuantizeGratientOrgEi.exit

_ZN8JlsCodecI14DefaultTraitsTIh7TripletIhEE15DecoderStrategyE19QuantizeGratientOrgEi.exit: ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
end_hunk_5
begin_hunk_6_@_ZN8JlsCodecI14DefaultTraitsTIt7TripletItEE15DecoderStrategyE13CreateProcessE14ByteStreamInfo:bb.a
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %.0 = phi i1 [ false, %bb.ad ], [ true, %bb.ac ] ; 2 uses
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bi = load i8, ptr %5, align 8
  %i.bj = trunc i8 %i.bi to i1
  br i1 %i.bj, label %.split41, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32

.split41:                                         ; preds = %bb.af
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !51
  %i.bm = load i64, ptr %5, align 8
  %i.bn = and i64 %i.bm, -2
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bn) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.ag, label %bb.ah

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.split41, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32
  %.pn40 = phi { ptr, i32 } [ %i.bg, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32.thread ], [ %i.bh, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32 ], [ %i.bh, %.split41 ]
  call void @__cxa_free_exception(ptr %i.be) #23
  br label %bb.ah

bb.ah:                                            ; preds = %.split41, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32, %bb.ag, %bb.ae
  %.pn.pn = phi { ptr, i32 } [ %.pn40, %bb.ag ], [ %i.bh, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32 ], [ %i.bf, %bb.ae ], [ %i.bh, %.split41 ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.am

bb.ai:                                            ; preds = %bb.t
  %i.bo = tail call ptr @__cxa_allocate_exception(i64 32) #23 ; 3 uses
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z22CharLSCategoryInstancev() ; 0 uses
  invoke void @_ZNSt3__112system_errorC1EiRKNS_14error_categoryE(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) @_ZZ22CharLSCategoryInstancevE8instance)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @__cxa_throw(ptr nonnull %i.bo, ptr nonnull @_ZTINSt3__112system_errorE, ptr nonnull @_ZNSt3__112system_errorD1Ev) #24
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bo) #23
  br label %bb.am

bb.al:                                            ; preds = %.sink.split, %bb.v, %bb.x, %bb.z, %bb.k, %bb.i, %bb.g, %bb.c
  %.111 = phi ptr [ %i.au, %bb.v ], [ %i.t, %bb.c ], [ %i.y, %bb.g ], [ %i.aa, %bb.i ], [ %i.ac, %bb.k ], [ %i.ay, %bb.z ], [ %i.aw, %bb.x ], [ %i.i, %.sink.split ]
  ret ptr %.111

bb.am:                                            ; preds = %bb.w, %bb.y, %bb.aa, %bb.ah, %bb.ak, %bb.s, %bb.l, %bb.j, %bb.h, %bb.d
  %.pn26 = phi { ptr, i32 } [ %i.u, %bb.d ], [ %.pn23.pn, %bb.s ], [ %i.z, %bb.h ], [ %i.ab, %bb.j ], [ %i.ad, %bb.l ], [ %i.bq, %bb.ak ], [ %.pn.pn, %bb.ah ], [ %i.av, %bb.w ], [ %i.ax, %bb.y ], [ %i.az, %bb.aa ]
  resume { ptr, i32 } %.pn26

bb.an:                                            ; preds = %bb.ad, %bb.o
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI14DefaultTraitsTIt7TripletItEE15DecoderStrategyE10SetPresetsERK19JlsCustomParameters(ptr noundef nonnull align 8 dereferenceable(4697) %0, ptr noundef nonnull align 4 dereferenceable(20) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %struct.JlsCustomParameters, align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !409
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load i32, ptr %i.c, align 8, !tbaa !410
  call void @_Z14ComputeDefaultii(ptr dead_on_unwind nonnull writable sret(%struct.JlsCustomParameters) align 4 %2, i32 noundef %i.b, i32 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !39   ; 2 uses
  %.not13 = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = select i1 %.not13, i32 %i.j, i32 %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !53   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.q = load <2 x i32>, ptr %i.e, align 4, !tbaa !62 ; 2 uses
  %i.r = icmp eq <2 x i32> %i.q, zeroinitializer
  %i.s = load <2 x i32>, ptr %i.f, align 4
  %i.t = select <2 x i1> %i.r, <2 x i32> %i.s, <2 x i32> %i.q
  store <2 x i32> %i.t, ptr %i.p, align 8, !tbaa !62
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %i.k, ptr %i.u, align 8, !tbaa !161
  call void @_ZN8JlsCodecI14DefaultTraitsTIt7TripletItEE15DecoderStrategyE19InitQuantizationLUTEv(ptr noundef nonnull align 8 dereferenceable(4697) %0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.w = load i32, ptr %i.v, align 4, !tbaa !1340 ; 2 uses
  %i.x = icmp slt i32 %i.w, 96
  %i.y = add nuw nsw i32 %i.w, 32
  %i.z = lshr i32 %i.y, 6
  %i.aa = select i1 %i.x, i32 2, i32 %i.z         ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %indvars.iv.i ; 4 uses
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !62
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 0, ptr %.sroa.420.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i16 0, ptr %.sroa.521.0..sroa_idx.i, align 4, !tbaa !245
  %.sroa.622.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 10
  store i16 1, ptr %.sroa.622.0..sroa_idx.i, align 2, !tbaa !245
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 364
  br i1 %exitcond.not.i, label %_ZN8JlsCodecI14DefaultTraitsTIt7TripletItEE15DecoderStrategyE10InitParamsEiiii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %indvars.iv.i ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 %i.aa, ptr %i.ae, align 8, !tbaa !62
  %.sroa.420.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i32 0, ptr %.sroa.420.0..sroa_idx.i.1, align 4, !tbaa !62
  %.sroa.521.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  store i16 0, ptr %.sroa.521.0..sroa_idx.i.1, align 8, !tbaa !245
  %.sroa.622.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.ad, i64 22
  store i16 1, ptr %.sroa.622.0..sroa_idx.i.1, align 2, !tbaa !245
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  br label %bb.b

_ZN8JlsCodecI14DefaultTraitsTIt7TripletItEE15DecoderStrategyE10InitParamsEiiii.exit: ; preds = %bb.b
  %.not14 = icmp eq i32 %i.m, 0
  %i.af = select i1 %.not14, i32 %i.o, i32 %i.m
  %.sink.i = trunc i32 %i.af to i8                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4616
  store i32 %i.aa, ptr %i.ag, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4620
  store i32 0, ptr %i.ah, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4624
  store i8 %.sink.i, ptr %i.ai, align 8, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4625
  store i8 1, ptr %i.aj, align 1, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4626
  store i8 0, ptr %i.ak, align 2, !tbaa !51
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4628
  store i32 %i.aa, ptr %i.al, align 4, !tbaa !62
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4632
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4636
  store i8 %.sink.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !51
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4637
  store i8 1, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !51
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4638
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 2, !tbaa !51
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4640
  store i32 0, ptr %i.am, align 8, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI14DefaultTraitsTIt7TripletItEE15DecoderStrategyE10DecodeScanENSt3__110unique_ptrI11ProcessLineNS6_14default_deleteIS8_EEEERK7JlsRectR14ByteStreamInfob(ptr noundef nonnull align 8 dereferenceable(4697) %0, ptr nofree noundef align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = zext i1 %4 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !238
  store ptr null, ptr %1, align 8, !tbaa !238
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !238  ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !238
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit, label %_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i

_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i: ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #23, !inline_history !3
  br label %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit

_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit: ; preds = %bb.a, %_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !240
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4696
  store i8 %i.a, ptr %i.j, align 8, !tbaa !1341
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 204
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !246
  tail call void @_ZN15DecoderStrategy4InitER14ByteStreamInfo(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN8JlsCodecI14DefaultTraitsTIt7TripletItEE15DecoderStrategyE6DoScanEv(ptr noundef nonnull align 8 dereferenceable(4697) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !248
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit
  %.010.i = phi i32 [ %i.m, %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit ], [ %i.t, %bb.b ] ; 2 uses
  %.09.i = phi ptr [ %i.o, %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit ], [ %i.p, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.09.i, i64 -1 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !51
  %i.r = icmp eq i8 %i.q, -1
  %i.s = select i1 %i.r, i32 7, i32 8             ; 2 uses
  %.not.i = icmp slt i32 %.010.i, %i.s
  %i.t = sub nuw nsw i32 %.010.i, %i.s
  br i1 %.not.i, label %_ZNK15DecoderStrategy13GetCurBytePosEv.exit, label %bb.b, !llvm.loop !4

_ZNK15DecoderStrategy13GetCurBytePosEv.exit:      ; preds = %bb.b
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !240  ; 2 uses
  %.not.i6 = icmp eq ptr %i.u, null
  br i1 %.not.i6, label %_Z9SkipBytesR14ByteStreamInfom.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK15DecoderStrategy13GetCurBytePosEv.exit
  %i.v = ptrtoint ptr %.09.i to i64
  %i.w = ptrtoint ptr %i.i to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  store ptr %i.y, ptr %i.h, align 8, !tbaa !240
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !249
  %i.ab = sub i64 %i.aa, %i.x
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !249
  br label %_Z9SkipBytesR14ByteStreamInfom.exit

_Z9SkipBytesR14ByteStreamInfom.exit:              ; preds = %_ZNK15DecoderStrategy13GetCurBytePosEv.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI14DefaultTraitsTIt7TripletItEE15DecoderStrategyE19InitQuantizationLUTEv(ptr noundef nonnull align 8 dereferenceable(4697) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.JlsCustomParameters, align 4 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !410
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = load i32, ptr %i.d, align 8, !tbaa !409  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1343
  %notmask = shl nsw i32 -1, %i.g
  %i.h = xor i32 %notmask, %i.e
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @_Z14ComputeDefaultii(ptr dead_on_unwind nonnull writable sret(%struct.JlsCustomParameters) align 4 %1, i32 noundef %i.e, i32 noundef 0)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.m = load i32, ptr %i.l, align 8, !tbaa !159
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.r = load i32, ptr %i.q, align 4, !tbaa !160
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.w = load i32, ptr %i.v, align 8, !tbaa !161
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.f, align 8, !tbaa !1343
  %switch.tableidx = add i32 %i.y, -8             ; 4 uses
  %i.z = icmp ult i32 %switch.tableidx, 9
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 277, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.z, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.g

switch.lookup:                                    ; preds = %bb.f
  %i.aa = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8JlsCodecI14DefaultTraitsTIttE15EncoderStrategyE19InitQuantizationLUTEv, i64 %i.aa
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.ab = zext nneg i32 %switch.tableidx to i64
  %switch.gep22 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8JlsCodecI14DefaultTraitsTIttE15EncoderStrategyE19InitQuantizationLUTEv.8, i64 %i.ab
  %switch.load23 = load ptr, ptr %switch.gep22, align 8
  %.sink21 = load ptr, ptr %switch.load23, align 8, !tbaa !49
  %i.ac = load ptr, ptr %switch.load, align 8, !tbaa !48 ; 2 uses
  %i.ad = ptrtoint ptr %.sink21 to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = lshr i64 %i.af, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4664
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !411
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %.loopexit

bb.g:                                             ; preds = %.thread, %bb.b, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1343 ; 3 uses
  %i.al = shl nuw i32 1, %i.ak                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4672 ; 3 uses
  %i.an = shl i32 2, %i.ak
  %i.ao = sext i32 %i.an to i64                   ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4680 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !49
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !48 ; 4 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at                    ; 3 uses
  %i.av = icmp ult i64 %i.au, %i.ao
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = sub nuw i64 %i.ao, %i.au
  call void @_ZNSt3__16vectorIaNS_9allocatorIaEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %i.aw)
  %.pre = load ptr, ptr %i.am, align 8, !tbaa !48
  br label %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit

bb.i:                                             ; preds = %bb.g
  %i.ax = icmp ugt i64 %i.au, %i.ao
  br i1 %i.ax, label %bb.j, label %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao
  store ptr %i.ay, ptr %i.ap, align 8, !tbaa !49
  br label %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit

_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.az = phi ptr [ %.pre, %bb.h ], [ %i.ar, %bb.i ], [ %i.ar, %bb.j ]
  %i.ba = sext i32 %i.al to i64                   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4664 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !411
  %.not = icmp eq i32 %i.ak, 31
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit
  %i.bd = sub i32 0, %i.al
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bh = sext i32 %i.bd to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %_ZN8JlsCodecI14DefaultTraitsTIt7TripletItEE15DecoderStrategyE19QuantizeGratientOrgEi.exit
  %indvars.iv = phi i64 [ %i.bh, %.lr.ph ], [ %indvars.iv.next, %_ZN8JlsCodecI14DefaultTraitsTIt7TripletItEE15DecoderStrategyE19QuantizeGratientOrgEi.exit ] ; 10 uses
  %i.bi = load i32, ptr %i.be, align 8, !tbaa !161 ; 2 uses
  %i.bj = sub nsw i32 0, %i.bi
  %i.bk = sext i32 %i.bj to i64
  %.not.i = icmp sgt i64 %indvars.iv, %i.bk
  br i1 %.not.i, label %bb.l, label %_ZN8JlsCodecI14DefaultTraitsTIt7TripletItEE15DecoderStrategyE19QuantizeGratientOrgEi.exit

bb.l:                                             ; preds = %bb.k
  %i.bl = load i32, ptr %i.bf, align 4, !tbaa !160 ; 2 uses
  %i.bm = sub nsw i32 0, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %.not10.i = icmp sgt i64 %indvars.iv, %i.bn
  br i1 %.not10.i, label %bb.m, label %_ZN8JlsCodecI14DefaultTraitsTIt7TripletItEE15DecoderStrategyE19QuantizeGratientOrgEi.exit

bb.m:                                             ; preds = %bb.l
  %i.bo = load i32, ptr %i.bg, align 8, !tbaa !159 ; 2 uses
  %i.bp = sub nsw i32 0, %i.bo
  %i.bq = sext i32 %i.bp to i64
  %.not11.i = icmp sgt i64 %indvars.iv, %i.bq
  br i1 %.not11.i, label %bb.n, label %_ZN8JlsCodecI14DefaultTraitsTIt7TripletItEE15DecoderStrategyE19QuantizeGratientOrgEi.exit

bb.n:                                             ; preds = %bb.m
  %i.br = load i32, ptr %i.a, align 8, !tbaa !410 ; 2 uses
  %i.bs = sub nsw i32 0, %i.br
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp slt i64 %indvars.iv, %i.bt
  br i1 %i.bu, label %_ZN8JlsCodecI14DefaultTraitsTIt7TripletItEE15DecoderStrategyE19QuantizeGratientOrgEi.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = sext i32 %i.br to i64
  %.not12.i = icmp sgt i64 %indvars.iv, %i.bv
  br i1 %.not12.i, label %bb.p, label %_ZN8JlsCodecI14DefaultTraitsTIt7TripletItEE15DecoderStrategyE19QuantizeGratientOrgEi.exit

bb.p:                                             ; preds = %bb.o
  %i.bw = sext i32 %i.bo to i64
  %i.bx = icmp slt i64 %indvars.iv, %i.bw
  br i1 %i.bx, label %_ZN8JlsCodecI14DefaultTraitsTIt7TripletItEE15DecoderStrategyE19QuantizeGratientOrgEi.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = sext i32 %i.bl to i64
  %i.bz = icmp slt i64 %indvars.iv, %i.by
  br i1 %i.bz, label %_ZN8JlsCodecI14DefaultTraitsTIt7TripletItEE15DecoderStrategyE19QuantizeGratientOrgEi.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = sext i32 %i.bi to i64
  %i.cb = icmp slt i64 %indvars.iv, %i.ca
  %..i = select i1 %i.cb, i8 3, i8 4
  br label %_ZN8JlsCodecI14DefaultTraitsTIt7TripletItEE15DecoderStrategyE19QuantizeGratientOrgEi.exit

_ZN8JlsCodecI14DefaultTraitsTIt7TripletItEE15DecoderStrategyE19QuantizeGratientOrgEi.exit: ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
end_hunk_6
begin_hunk_7_@_ZN8JlsCodecI14DefaultTraitsTIttE15DecoderStrategyE13CreateProcessE14ByteStreamInfo:bb.a
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %.0 = phi i1 [ false, %bb.ad ], [ true, %bb.ac ] ; 2 uses
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bi = load i8, ptr %5, align 8
  %i.bj = trunc i8 %i.bi to i1
  br i1 %i.bj, label %.split41, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32

.split41:                                         ; preds = %bb.af
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !51
  %i.bm = load i64, ptr %5, align 8
  %i.bn = and i64 %i.bm, -2
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bn) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.ag, label %bb.ah

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.split41, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32
  %.pn40 = phi { ptr, i32 } [ %i.bg, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32.thread ], [ %i.bh, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32 ], [ %i.bh, %.split41 ]
  call void @__cxa_free_exception(ptr %i.be) #23
  br label %bb.ah

bb.ah:                                            ; preds = %.split41, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32, %bb.ag, %bb.ae
  %.pn.pn = phi { ptr, i32 } [ %.pn40, %bb.ag ], [ %i.bh, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32 ], [ %i.bf, %bb.ae ], [ %i.bh, %.split41 ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.am

bb.ai:                                            ; preds = %bb.t
  %i.bo = tail call ptr @__cxa_allocate_exception(i64 32) #23 ; 3 uses
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z22CharLSCategoryInstancev() ; 0 uses
  invoke void @_ZNSt3__112system_errorC1EiRKNS_14error_categoryE(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) @_ZZ22CharLSCategoryInstancevE8instance)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @__cxa_throw(ptr nonnull %i.bo, ptr nonnull @_ZTINSt3__112system_errorE, ptr nonnull @_ZNSt3__112system_errorD1Ev) #24
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bo) #23
  br label %bb.am

bb.al:                                            ; preds = %.sink.split, %bb.v, %bb.x, %bb.z, %bb.k, %bb.i, %bb.g, %bb.c
  %.111 = phi ptr [ %i.au, %bb.v ], [ %i.t, %bb.c ], [ %i.y, %bb.g ], [ %i.aa, %bb.i ], [ %i.ac, %bb.k ], [ %i.ay, %bb.z ], [ %i.aw, %bb.x ], [ %i.i, %.sink.split ]
  ret ptr %.111

bb.am:                                            ; preds = %bb.w, %bb.y, %bb.aa, %bb.ah, %bb.ak, %bb.s, %bb.l, %bb.j, %bb.h, %bb.d
  %.pn26 = phi { ptr, i32 } [ %i.u, %bb.d ], [ %.pn23.pn, %bb.s ], [ %i.z, %bb.h ], [ %i.ab, %bb.j ], [ %i.ad, %bb.l ], [ %i.bq, %bb.ak ], [ %.pn.pn, %bb.ah ], [ %i.av, %bb.w ], [ %i.ax, %bb.y ], [ %i.az, %bb.aa ]
  resume { ptr, i32 } %.pn26

bb.an:                                            ; preds = %bb.ad, %bb.o
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI14DefaultTraitsTIttE15DecoderStrategyE10SetPresetsERK19JlsCustomParameters(ptr noundef nonnull align 8 dereferenceable(4697) %0, ptr noundef nonnull align 4 dereferenceable(20) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %struct.JlsCustomParameters, align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !423
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load i32, ptr %i.c, align 8, !tbaa !424
  call void @_Z14ComputeDefaultii(ptr dead_on_unwind nonnull writable sret(%struct.JlsCustomParameters) align 4 %2, i32 noundef %i.b, i32 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !39   ; 2 uses
  %.not13 = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = select i1 %.not13, i32 %i.j, i32 %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !53   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.q = load <2 x i32>, ptr %i.e, align 4, !tbaa !62 ; 2 uses
  %i.r = icmp eq <2 x i32> %i.q, zeroinitializer
  %i.s = load <2 x i32>, ptr %i.f, align 4
  %i.t = select <2 x i1> %i.r, <2 x i32> %i.s, <2 x i32> %i.q
  store <2 x i32> %i.t, ptr %i.p, align 8, !tbaa !62
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %i.k, ptr %i.u, align 8, !tbaa !175
  call void @_ZN8JlsCodecI14DefaultTraitsTIttE15DecoderStrategyE19InitQuantizationLUTEv(ptr noundef nonnull align 8 dereferenceable(4697) %0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.w = load i32, ptr %i.v, align 4, !tbaa !1357 ; 2 uses
  %i.x = icmp slt i32 %i.w, 96
  %i.y = add nuw nsw i32 %i.w, 32
  %i.z = lshr i32 %i.y, 6
  %i.aa = select i1 %i.x, i32 2, i32 %i.z         ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %indvars.iv.i ; 4 uses
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !62
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 0, ptr %.sroa.420.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i16 0, ptr %.sroa.521.0..sroa_idx.i, align 4, !tbaa !245
  %.sroa.622.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 10
  store i16 1, ptr %.sroa.622.0..sroa_idx.i, align 2, !tbaa !245
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 364
  br i1 %exitcond.not.i, label %_ZN8JlsCodecI14DefaultTraitsTIttE15DecoderStrategyE10InitParamsEiiii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %indvars.iv.i ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 %i.aa, ptr %i.ae, align 8, !tbaa !62
  %.sroa.420.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i32 0, ptr %.sroa.420.0..sroa_idx.i.1, align 4, !tbaa !62
  %.sroa.521.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  store i16 0, ptr %.sroa.521.0..sroa_idx.i.1, align 8, !tbaa !245
  %.sroa.622.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.ad, i64 22
  store i16 1, ptr %.sroa.622.0..sroa_idx.i.1, align 2, !tbaa !245
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  br label %bb.b

_ZN8JlsCodecI14DefaultTraitsTIttE15DecoderStrategyE10InitParamsEiiii.exit: ; preds = %bb.b
  %.not14 = icmp eq i32 %i.m, 0
  %i.af = select i1 %.not14, i32 %i.o, i32 %i.m
  %.sink.i = trunc i32 %i.af to i8                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4616
  store i32 %i.aa, ptr %i.ag, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4620
  store i32 0, ptr %i.ah, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4624
  store i8 %.sink.i, ptr %i.ai, align 8, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4625
  store i8 1, ptr %i.aj, align 1, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4626
  store i8 0, ptr %i.ak, align 2, !tbaa !51
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4628
  store i32 %i.aa, ptr %i.al, align 4, !tbaa !62
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4632
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4636
  store i8 %.sink.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !51
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4637
  store i8 1, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !51
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4638
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 2, !tbaa !51
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4640
  store i32 0, ptr %i.am, align 8, !tbaa !176
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI14DefaultTraitsTIttE15DecoderStrategyE10DecodeScanENSt3__110unique_ptrI11ProcessLineNS4_14default_deleteIS6_EEEERK7JlsRectR14ByteStreamInfob(ptr noundef nonnull align 8 dereferenceable(4697) %0, ptr nofree noundef align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = zext i1 %4 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !238
  store ptr null, ptr %1, align 8, !tbaa !238
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !238  ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !238
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit, label %_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i

_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i: ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #23, !inline_history !3
  br label %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit

_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit: ; preds = %bb.a, %_ZNKSt3__114default_deleteI11ProcessLineEclB8ne180100EPS1_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !240
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4696
  store i8 %i.a, ptr %i.j, align 8, !tbaa !1358
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 204
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !246
  tail call void @_ZN15DecoderStrategy4InitER14ByteStreamInfo(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN8JlsCodecI14DefaultTraitsTIttE15DecoderStrategyE6DoScanEv(ptr noundef nonnull align 8 dereferenceable(4697) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !248
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit
  %.010.i = phi i32 [ %i.m, %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit ], [ %i.t, %bb.b ] ; 2 uses
  %.09.i = phi ptr [ %i.o, %_ZNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEaSB8ne180100EOS4_.exit ], [ %i.p, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.09.i, i64 -1 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !51
  %i.r = icmp eq i8 %i.q, -1
  %i.s = select i1 %i.r, i32 7, i32 8             ; 2 uses
  %.not.i = icmp slt i32 %.010.i, %i.s
  %i.t = sub nuw nsw i32 %.010.i, %i.s
  br i1 %.not.i, label %_ZNK15DecoderStrategy13GetCurBytePosEv.exit, label %bb.b, !llvm.loop !4

_ZNK15DecoderStrategy13GetCurBytePosEv.exit:      ; preds = %bb.b
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !240  ; 2 uses
  %.not.i6 = icmp eq ptr %i.u, null
  br i1 %.not.i6, label %_Z9SkipBytesR14ByteStreamInfom.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK15DecoderStrategy13GetCurBytePosEv.exit
  %i.v = ptrtoint ptr %.09.i to i64
  %i.w = ptrtoint ptr %i.i to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  store ptr %i.y, ptr %i.h, align 8, !tbaa !240
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !249
  %i.ab = sub i64 %i.aa, %i.x
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !249
  br label %_Z9SkipBytesR14ByteStreamInfom.exit

_Z9SkipBytesR14ByteStreamInfom.exit:              ; preds = %_ZNK15DecoderStrategy13GetCurBytePosEv.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8JlsCodecI14DefaultTraitsTIttE15DecoderStrategyE19InitQuantizationLUTEv(ptr noundef nonnull align 8 dereferenceable(4697) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.JlsCustomParameters, align 4 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !424
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = load i32, ptr %i.d, align 8, !tbaa !423  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1360
  %notmask = shl nsw i32 -1, %i.g
  %i.h = xor i32 %notmask, %i.e
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @_Z14ComputeDefaultii(ptr dead_on_unwind nonnull writable sret(%struct.JlsCustomParameters) align 4 %1, i32 noundef %i.e, i32 noundef 0)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.m = load i32, ptr %i.l, align 8, !tbaa !173
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.r = load i32, ptr %i.q, align 4, !tbaa !174
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.w = load i32, ptr %i.v, align 8, !tbaa !175
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.f, align 8, !tbaa !1360
  %switch.tableidx = add i32 %i.y, -8             ; 4 uses
  %i.z = icmp ult i32 %switch.tableidx, 9
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 277, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.z, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.g

switch.lookup:                                    ; preds = %bb.f
  %i.aa = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8JlsCodecI14DefaultTraitsTIttE15EncoderStrategyE19InitQuantizationLUTEv, i64 %i.aa
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.ab = zext nneg i32 %switch.tableidx to i64
  %switch.gep22 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8JlsCodecI14DefaultTraitsTIttE15EncoderStrategyE19InitQuantizationLUTEv.8, i64 %i.ab
  %switch.load23 = load ptr, ptr %switch.gep22, align 8
  %.sink21 = load ptr, ptr %switch.load23, align 8, !tbaa !49
  %i.ac = load ptr, ptr %switch.load, align 8, !tbaa !48 ; 2 uses
  %i.ad = ptrtoint ptr %.sink21 to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = lshr i64 %i.af, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4664
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !425
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %.loopexit

bb.g:                                             ; preds = %.thread, %bb.b, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1360 ; 3 uses
  %i.al = shl nuw i32 1, %i.ak                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4672 ; 3 uses
  %i.an = shl i32 2, %i.ak
  %i.ao = sext i32 %i.an to i64                   ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4680 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !49
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !48 ; 4 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at                    ; 3 uses
  %i.av = icmp ult i64 %i.au, %i.ao
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = sub nuw i64 %i.ao, %i.au
  call void @_ZNSt3__16vectorIaNS_9allocatorIaEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %i.aw)
  %.pre = load ptr, ptr %i.am, align 8, !tbaa !48
  br label %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit

bb.i:                                             ; preds = %bb.g
  %i.ax = icmp ugt i64 %i.au, %i.ao
  br i1 %i.ax, label %bb.j, label %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao
  store ptr %i.ay, ptr %i.ap, align 8, !tbaa !49
  br label %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit

_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.az = phi ptr [ %.pre, %bb.h ], [ %i.ar, %bb.i ], [ %i.ar, %bb.j ]
  %i.ba = sext i32 %i.al to i64                   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4664 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !425
  %.not = icmp eq i32 %i.ak, 31
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt3__16vectorIaNS_9allocatorIaEEE6resizeEm.exit
  %i.bd = sub i32 0, %i.al
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bh = sext i32 %i.bd to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %_ZN8JlsCodecI14DefaultTraitsTIttE15DecoderStrategyE19QuantizeGratientOrgEi.exit
  %indvars.iv = phi i64 [ %i.bh, %.lr.ph ], [ %indvars.iv.next, %_ZN8JlsCodecI14DefaultTraitsTIttE15DecoderStrategyE19QuantizeGratientOrgEi.exit ] ; 10 uses
  %i.bi = load i32, ptr %i.be, align 8, !tbaa !175 ; 2 uses
  %i.bj = sub nsw i32 0, %i.bi
  %i.bk = sext i32 %i.bj to i64
  %.not.i = icmp sgt i64 %indvars.iv, %i.bk
  br i1 %.not.i, label %bb.l, label %_ZN8JlsCodecI14DefaultTraitsTIttE15DecoderStrategyE19QuantizeGratientOrgEi.exit

bb.l:                                             ; preds = %bb.k
  %i.bl = load i32, ptr %i.bf, align 4, !tbaa !174 ; 2 uses
  %i.bm = sub nsw i32 0, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %.not10.i = icmp sgt i64 %indvars.iv, %i.bn
  br i1 %.not10.i, label %bb.m, label %_ZN8JlsCodecI14DefaultTraitsTIttE15DecoderStrategyE19QuantizeGratientOrgEi.exit

bb.m:                                             ; preds = %bb.l
  %i.bo = load i32, ptr %i.bg, align 8, !tbaa !173 ; 2 uses
  %i.bp = sub nsw i32 0, %i.bo
  %i.bq = sext i32 %i.bp to i64
  %.not11.i = icmp sgt i64 %indvars.iv, %i.bq
  br i1 %.not11.i, label %bb.n, label %_ZN8JlsCodecI14DefaultTraitsTIttE15DecoderStrategyE19QuantizeGratientOrgEi.exit

bb.n:                                             ; preds = %bb.m
  %i.br = load i32, ptr %i.a, align 8, !tbaa !424 ; 2 uses
  %i.bs = sub nsw i32 0, %i.br
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp slt i64 %indvars.iv, %i.bt
  br i1 %i.bu, label %_ZN8JlsCodecI14DefaultTraitsTIttE15DecoderStrategyE19QuantizeGratientOrgEi.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = sext i32 %i.br to i64
  %.not12.i = icmp sgt i64 %indvars.iv, %i.bv
  br i1 %.not12.i, label %bb.p, label %_ZN8JlsCodecI14DefaultTraitsTIttE15DecoderStrategyE19QuantizeGratientOrgEi.exit

bb.p:                                             ; preds = %bb.o
  %i.bw = sext i32 %i.bo to i64
  %i.bx = icmp slt i64 %indvars.iv, %i.bw
  br i1 %i.bx, label %_ZN8JlsCodecI14DefaultTraitsTIttE15DecoderStrategyE19QuantizeGratientOrgEi.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = sext i32 %i.bl to i64
  %i.bz = icmp slt i64 %indvars.iv, %i.by
  br i1 %i.bz, label %_ZN8JlsCodecI14DefaultTraitsTIttE15DecoderStrategyE19QuantizeGratientOrgEi.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = sext i32 %i.bi to i64
  %i.cb = icmp slt i64 %indvars.iv, %i.ca
  %..i = select i1 %i.cb, i8 3, i8 4
  br label %_ZN8JlsCodecI14DefaultTraitsTIttE15DecoderStrategyE19QuantizeGratientOrgEi.exit

_ZN8JlsCodecI14DefaultTraitsTIttE15DecoderStrategyE19QuantizeGratientOrgEi.exit: ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
end_hunk_7
