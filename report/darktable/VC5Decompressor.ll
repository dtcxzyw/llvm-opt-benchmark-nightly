Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/VC5Decompressor?download=true
inline.NumInlined: 1818
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZNK8rawspeed15VC5Decompressor30createWaveletBandDecodingTasksERb:.preheader
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !317
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !319 ; 2 uses
  %i.qc = load ptr, ptr %0, align 8, !tbaa !6688
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  %i.qe = load ptr, ptr %i.qb, align 8, !tbaa !324
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 24
  %i.qg = load ptr, ptr %i.qf, align 8
  tail call void %i.qg(ptr noundef nonnull align 8 dereferenceable(88) %i.qb, ptr noundef nonnull align 8 dereferenceable(32) %i.qd, ptr noundef nonnull align 1 dereferenceable(1) %1) #35, !call_target !5388
  %.val.1.3 = load i8, ptr %1, align 1, !tbaa !304, !range !305, !noundef !306
  %i.qh = trunc nuw i8 %.val.1.3 to i1
  br i1 %i.qh, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !317
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !319 ; 2 uses
  %i.ql = load ptr, ptr %0, align 8, !tbaa !6688
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qn = load ptr, ptr %i.qk, align 8, !tbaa !324
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 24
  %i.qp = load ptr, ptr %i.qo, align 8
  tail call void %i.qp(ptr noundef nonnull align 8 dereferenceable(88) %i.qk, ptr noundef nonnull align 8 dereferenceable(32) %i.qm, ptr noundef nonnull align 1 dereferenceable(1) %1) #35, !call_target !5388
  %.val.2.3 = load i8, ptr %1, align 1, !tbaa !304, !range !305, !noundef !306
  %i.qq = trunc nuw i8 %.val.2.3 to i1
  br i1 %i.qq, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !317
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !319 ; 2 uses
  %i.qu = load ptr, ptr %0, align 8, !tbaa !6688
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.qw = load ptr, ptr %i.qt, align 8, !tbaa !324
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  %i.qy = load ptr, ptr %i.qx, align 8
  tail call void %i.qy(ptr noundef nonnull align 8 dereferenceable(88) %i.qt, ptr noundef nonnull align 8 dereferenceable(32) %i.qv, ptr noundef nonnull align 1 dereferenceable(1) %1) #35, !call_target !5388
  br label %.loopexit

.loopexit:                                        ; preds = %bb.am, %bb.l, %bb.k, %bb.j, %.critedge.267, %bb.i, %bb.h, %bb.g, %.critedge.157, %bb.f, %bb.e, %bb.d, %.critedge, %.preheader, %bb.a, %bb.b, %bb.c, %bb.x, %bb.w, %bb.v, %.critedge.1.2, %bb.u, %bb.t, %bb.s, %.critedge.1.1, %bb.r, %bb.q, %bb.p, %.critedge.1, %.critedge.377, %bb.m, %bb.n, %bb.o, %bb.aj, %bb.ai, %bb.ah, %.critedge.2.2, %bb.ag, %bb.af, %bb.ae, %.critedge.2.1, %bb.ad, %bb.ac, %bb.ab, %.critedge.2, %.critedge.1.3, %bb.y, %bb.z, %bb.aa, %.critedge.2.3, %bb.ak, %bb.al
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8rawspeed15VC5Decompressor12decodeThreadERb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNK8rawspeed15VC5Decompressor30createWaveletBandDecodingTasksERb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #35
  %.val = load i8, ptr %1, align 1, !tbaa !304, !range !305, !noundef !306
  %i.a = trunc nuw i8 %.val to i1
  br i1 %i.a, label %_ZNK8rawspeed15VC5Decompressor24combineFinalLowpassBandsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i8, ptr %i.b, align 8, !tbaa !6789
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK8rawspeed15VC5Decompressor28combineFinalLowpassBandsImplILNS_10BayerPhaseE0EEEvv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #35
  br label %_ZNK8rawspeed15VC5Decompressor24combineFinalLowpassBandsEv.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZNK8rawspeed15VC5Decompressor28combineFinalLowpassBandsImplILNS_10BayerPhaseE2EEEvv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #35
  br label %_ZNK8rawspeed15VC5Decompressor24combineFinalLowpassBandsEv.exit

_ZNK8rawspeed15VC5Decompressor24combineFinalLowpassBandsEv.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8rawspeed15VC5Decompressor24combineFinalLowpassBandsEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !6789
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK8rawspeed15VC5Decompressor28combineFinalLowpassBandsImplILNS_10BayerPhaseE0EEEvv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #35
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNK8rawspeed15VC5Decompressor28combineFinalLowpassBandsImplILNS_10BayerPhaseE2EEEvv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed15VC5Decompressor6decodeEjjjj(ptr noundef nonnull align 8 dereferenceable(1000) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 64                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = or i32 %2, %1
  %or.cond.not = icmp eq i32 %i.b, 0
  br i1 %or.cond.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !6688   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i32, ptr %i.d, align 4, !tbaa !6772
  %i.f = icmp eq i32 %i.e, %3
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, %4
  %i.j = select i1 %i.f, i1 %i.i, i1 false
  br i1 %i.j, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.25, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed15VC5Decompressor6decodeEjjjj) #22
  unreachable

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN8rawspeed15VC5Decompressor21initPrefixCodeDecoderEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  tail call void @_ZN8rawspeed15VC5Decompressor15initVC5LogTableEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i8 0, ptr %i.a, align 64, !tbaa !304
  call void @_ZNK8rawspeed15VC5Decompressor30createWaveletBandDecodingTasksERb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #35
  %.val.i = load i8, ptr %i.a, align 64, !tbaa !304, !range !305, !noundef !306
  %i.k = trunc nuw i8 %.val.i to i1
  br i1 %i.k, label %_ZNK8rawspeed15VC5Decompressor12decodeThreadERb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i8, ptr %i.l, align 8, !tbaa !6789
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZNK8rawspeed15VC5Decompressor28combineFinalLowpassBandsImplILNS_10BayerPhaseE0EEEvv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #35
  br label %_ZNK8rawspeed15VC5Decompressor12decodeThreadERb.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZNK8rawspeed15VC5Decompressor28combineFinalLowpassBandsImplILNS_10BayerPhaseE2EEEvv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #35
  br label %_ZNK8rawspeed15VC5Decompressor12decodeThreadERb.exit

_ZNK8rawspeed15VC5Decompressor12decodeThreadERb.exit: ; preds = %bb.c, %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !6839
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !6840
  store i8 0, ptr %i.o, align 8, !tbaa !6690
  %i.q = load ptr, ptr %0, align 8, !tbaa !6688
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = invoke noundef zeroext i1 @_ZN8rawspeed8ErrorLog15isTooManyErrorsEjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 1, ptr noundef nonnull %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNK8rawspeed15VC5Decompressor12decodeThreadERb.exit
  %i.t = load ptr, ptr %5, align 8, !tbaa !6838   ; 3 uses
  br i1 %i.s, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed15VC5Decompressor6decodeEjjjj, ptr noundef %i.t) #22
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %_ZNK8rawspeed15VC5Decompressor12decodeThreadERb.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %5, align 8, !tbaa !6838   ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.o
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.x = load i64, ptr %i.o, align 8, !tbaa !6690
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  resume { ptr, i32 } %i.u

bb.k:                                             ; preds = %bb.g
  %i.z = icmp eq ptr %i.t, %i.o
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.k
  %i.aa = load i64, ptr %i.o, align 8, !tbaa !6690
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.ab) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret void
}

declare noundef zeroext i1 @_ZN8rawspeed8ErrorLog15isTooManyErrorsEjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8rawspeed15VC5Decompressor28combineFinalLowpassBandsImplILNS_10BayerPhaseE0EEEvv(ptr noundef nonnull align 8 dereferenceable(1000) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !6688   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !6848, !noalias !7055 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.e = load i32, ptr %i.d, align 8, !tbaa !6771, !noalias !7055
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.g = load i32, ptr %i.f, align 8, !tbaa !6849, !noalias !7055
  %i.h = mul nsw i32 %i.g, %i.e                   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.j = load i32, ptr %i.i, align 4, !tbaa !6850, !noalias !7055 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !6851, !noalias !7055
  %i.m = ashr i32 %i.l, 1                         ; 3 uses
  %i.n = icmp sgt i32 %i.h, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp sgt i32 %i.j, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ne i32 %i.m, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp sge i32 %i.m, %i.h
  tail call void @llvm.assume(i1 %i.q)
  %i.r = lshr i32 %i.h, 1                         ; 2 uses
  %i.s = lshr i32 %i.j, 1                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !317
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !319  ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.0257.0.copyload = load ptr, ptr %i.w, align 8, !tbaa !288 ; 6 uses
  %.sroa.4259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %.sroa.4259.0.copyload = load i32, ptr %.sroa.4259.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  %.sroa.5260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 68
  %.sroa.5260.0.copyload = load i32, ptr %.sroa.5260.0..sroa_idx, align 4, !tbaa !289 ; 2 uses
  %i.x = icmp ne i32 %.sroa.4259.0.copyload, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp sge i32 %.sroa.4259.0.copyload, %.sroa.5260.0.copyload
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !317
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !319 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %.sroa.0270.0.copyload = load ptr, ptr %i.ac, align 8, !tbaa !288 ; 6 uses
  %.sroa.4273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %.sroa.4273.0.copyload = load i32, ptr %.sroa.4273.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  %.sroa.5274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 68
  %.sroa.5274.0.copyload = load i32, ptr %.sroa.5274.0..sroa_idx, align 4, !tbaa !289 ; 2 uses
  %i.ad = icmp ne i32 %.sroa.4273.0.copyload, 0
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp sge i32 %.sroa.4273.0.copyload, %.sroa.5274.0.copyload
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !317
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !319 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %.sroa.0284.0.copyload = load ptr, ptr %i.ai, align 8, !tbaa !288 ; 6 uses
  %.sroa.4287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %.sroa.4287.0.copyload = load i32, ptr %.sroa.4287.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  %.sroa.5288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 68
  %.sroa.5288.0.copyload = load i32, ptr %.sroa.5288.0..sroa_idx, align 4, !tbaa !289 ; 2 uses
  %i.aj = icmp ne i32 %.sroa.4287.0.copyload, 0
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp sge i32 %.sroa.4287.0.copyload, %.sroa.5288.0.copyload
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !317
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !319 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %.sroa.0298.0.copyload = load ptr, ptr %i.ao, align 8, !tbaa !288 ; 6 uses
  %.sroa.4301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %.sroa.4301.0.copyload = load i32, ptr %.sroa.4301.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  %.sroa.5302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 68
  %.sroa.5302.0.copyload = load i32, ptr %.sroa.5302.0..sroa_idx, align 4, !tbaa !289 ; 2 uses
  %i.ap = icmp ne i32 %.sroa.4301.0.copyload, 0
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp sge i32 %.sroa.4301.0.copyload, %.sroa.5302.0.copyload
  tail call void @llvm.assume(i1 %i.aq)
  %.not316 = icmp eq i32 %i.s, 0
  %.not317 = icmp eq i32 %i.r, 0
  %or.cond = or i1 %.not316, %.not317
  br i1 %or.cond, label %._crit_edge315.split, label %.preheader309.lr.ph.split

.preheader309.lr.ph.split:                        ; preds = %bb.a
  %.sroa.6303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %.sroa.6303.0.copyload = load i32, ptr %.sroa.6303.0..sroa_idx, align 8, !tbaa !289
  %.sroa.6289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %.sroa.6289.0.copyload = load i32, ptr %.sroa.6289.0..sroa_idx, align 8, !tbaa !289
  %.sroa.6275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %.sroa.6275.0.copyload = load i32, ptr %.sroa.6275.0..sroa_idx, align 8, !tbaa !289
  %.sroa.6261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %.sroa.6261.0.copyload = load i32, ptr %.sroa.6261.0..sroa_idx, align 8, !tbaa !289
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !6793 ; 8 uses
  %i.at = zext nneg i32 %i.h to i64               ; 2 uses
  %i.au = zext nneg i32 %i.j to i64
  %i.av = zext i32 %i.m to i64                    ; 5 uses
  %i.aw = zext nneg i32 %.sroa.5260.0.copyload to i64
  %i.ax = zext nneg i32 %.sroa.5274.0.copyload to i64
  %i.ay = zext nneg i32 %.sroa.5288.0.copyload to i64
  %i.az = zext nneg i32 %.sroa.5302.0.copyload to i64
  %i.ba = zext i32 %.sroa.4301.0.copyload to i64  ; 2 uses
  %i.bb = zext nneg i32 %.sroa.6303.0.copyload to i64
  %i.bc = zext i32 %.sroa.4287.0.copyload to i64  ; 2 uses
  %i.bd = zext nneg i32 %.sroa.6289.0.copyload to i64
  %i.be = zext i32 %.sroa.4273.0.copyload to i64  ; 2 uses
  %i.bf = zext nneg i32 %.sroa.6275.0.copyload to i64
  %i.bg = zext i32 %.sroa.4259.0.copyload to i64  ; 2 uses
  %i.bh = zext nneg i32 %.sroa.6261.0.copyload to i64
  %wide.trip.count324 = zext nneg i32 %i.s to i64 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.r to i64    ; 5 uses
  %i.bi = add nsw i64 %wide.trip.count324, -1     ; 5 uses
  %i.bj = mul nsw i64 %i.bi, %i.ba
  %i.bk = shl i64 %i.bj, 1
  %i.bl = and i64 %i.at, 2147483646               ; 4 uses
  %i.bm = getelementptr i8, ptr %.sroa.0298.0.copyload, i64 %i.bk
  %scevgep = getelementptr i8, ptr %i.bm, i64 %i.bl ; 4 uses
  %i.bn = mul nsw i64 %i.bi, %i.bc
  %i.bo = shl i64 %i.bn, 1
  %i.bp = getelementptr i8, ptr %.sroa.0284.0.copyload, i64 %i.bo
  %scevgep450 = getelementptr i8, ptr %i.bp, i64 %i.bl ; 4 uses
  %i.bq = mul nsw i64 %i.bi, %i.be
  %i.br = shl i64 %i.bq, 1
  %i.bs = getelementptr i8, ptr %.sroa.0270.0.copyload, i64 %i.br
  %scevgep451 = getelementptr i8, ptr %i.bs, i64 %i.bl ; 4 uses
  %i.bt = mul nsw i64 %i.bi, %i.bg
  %i.bu = shl i64 %i.bt, 1
  %i.bv = getelementptr i8, ptr %.sroa.0257.0.copyload, i64 %i.bu
  %scevgep452 = getelementptr i8, ptr %i.bv, i64 %i.bl ; 4 uses
  %i.bw = shl nuw nsw i64 %wide.trip.count324, 2
  %i.bx = add nsw i64 %i.bw, -2
  %i.by = mul i64 %i.bx, %i.av
  %1 = shl nuw nsw i64 %wide.trip.count, 2
  %2 = add i64 %i.by, %1                          ; 2 uses
  %scevgep453 = getelementptr i8, ptr %i.c, i64 %2 ; 4 uses
  %i.bz = shl nuw nsw i64 %i.av, 1                ; 2 uses
  %3 = getelementptr i8, ptr %i.c, i64 %i.bz      ; 2 uses
  %scevgep454 = getelementptr i8, ptr %3, i64 2   ; 3 uses
  %i.ca = getelementptr i8, ptr %i.c, i64 %2
  %scevgep455 = getelementptr i8, ptr %i.ca, i64 -2 ; 4 uses
  %scevgep456 = getelementptr i8, ptr %i.c, i64 %i.bz ; 4 uses
  %i.cb = mul nsw i64 %i.bi, %i.av
  %i.cc = add i64 %i.cb, %wide.trip.count
  %i.cd = shl i64 %i.cc, 2                        ; 2 uses
  %scevgep457 = getelementptr i8, ptr %i.c, i64 %i.cd ; 4 uses
  %4 = getelementptr i8, ptr %i.c, <2 x i64> <i64 0, i64 2> ; 2 uses
  %5 = shufflevector <2 x ptr> %4, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %6 = insertelement <2 x ptr> poison, ptr %3, i64 0
  %7 = insertelement <2 x ptr> %6, ptr %i.c, i64 1
  %8 = getelementptr i8, <2 x ptr> %7, i64 2
  %9 = shufflevector <2 x ptr> %8, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 3 uses
  %scevgep458 = getelementptr i8, ptr %i.c, i64 2
  %10 = getelementptr i8, ptr %i.c, i64 %i.cd
  %scevgep459 = getelementptr i8, ptr %10, i64 -2
  %i.ce = insertelement <4 x ptr> poison, ptr %i.c, i64 0
  %11 = shufflevector <4 x ptr> %i.ce, <4 x ptr> poison, <4 x i32> zeroinitializer
  %12 = insertelement <4 x ptr> poison, ptr %scevgep457, i64 0 ; 2 uses
  %13 = insertelement <4 x ptr> %12, ptr %scevgep455, i64 1
  %14 = insertelement <4 x ptr> %13, ptr %scevgep453, i64 2
  %15 = insertelement <4 x ptr> %14, ptr %scevgep452, i64 3
  %16 = insertelement <4 x ptr> poison, ptr %scevgep459, i64 0 ; 2 uses
  %i.cf = shufflevector <4 x ptr> %16, <4 x ptr> poison, <4 x i32> zeroinitializer
  %17 = insertelement <4 x ptr> poison, ptr %scevgep451, i64 0
  %18 = insertelement <4 x ptr> %17, ptr %scevgep450, i64 1
  %19 = insertelement <4 x ptr> %18, ptr %scevgep, i64 2
  %20 = insertelement <4 x ptr> %19, ptr %scevgep455, i64 3
  %21 = insertelement <4 x ptr> poison, ptr %.sroa.0270.0.copyload, i64 0
  %22 = insertelement <4 x ptr> %21, ptr %.sroa.0284.0.copyload, i64 1
  %23 = insertelement <4 x ptr> %22, ptr %.sroa.0298.0.copyload, i64 2
  %24 = insertelement <4 x ptr> %23, ptr %scevgep456, i64 3
  %25 = insertelement <4 x ptr> %16, ptr %scevgep457, i64 1
  %26 = shufflevector <4 x ptr> %25, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %27 = shufflevector <2 x ptr> %4, <2 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %28 = insertelement <4 x ptr> %12, ptr %scevgep452, i64 1
  %29 = insertelement <4 x ptr> %28, ptr %scevgep451, i64 2
  %30 = insertelement <4 x ptr> %29, ptr %scevgep450, i64 3
  %31 = insertelement <4 x ptr> poison, ptr %.sroa.0257.0.copyload, i64 1
  %32 = insertelement <4 x ptr> %31, ptr %.sroa.0270.0.copyload, i64 2
  %33 = insertelement <4 x ptr> %32, ptr %.sroa.0284.0.copyload, i64 3
  %34 = insertelement <4 x ptr> poison, ptr %scevgep453, i64 0 ; 2 uses
  %35 = insertelement <4 x ptr> %34, ptr %scevgep457, i64 1
  %36 = shufflevector <4 x ptr> %35, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %37 = shufflevector <4 x ptr> %33, <4 x ptr> %9, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %38 = insertelement <4 x ptr> poison, ptr %scevgep454, i64 0
  %39 = insertelement <4 x ptr> %38, ptr %scevgep456, i64 1
  %40 = shufflevector <4 x ptr> %39, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.cg = insertelement <4 x ptr> poison, ptr %scevgep455, i64 0 ; 2 uses
  %i.ch = insertelement <4 x ptr> %i.cg, ptr %scevgep452, i64 1
  %i.ci = insertelement <4 x ptr> %i.ch, ptr %scevgep451, i64 2
  %i.cj = insertelement <4 x ptr> %i.ci, ptr %scevgep450, i64 3
  %i.ck = insertelement <4 x ptr> poison, ptr %scevgep456, i64 0 ; 2 uses
  %i.cl = insertelement <4 x ptr> %i.ck, ptr %.sroa.0257.0.copyload, i64 1
  %i.cm = insertelement <4 x ptr> %i.cl, ptr %.sroa.0270.0.copyload, i64 2
  %i.cn = insertelement <4 x ptr> %i.cm, ptr %.sroa.0284.0.copyload, i64 3
  %i.co = insertelement <4 x ptr> %34, ptr %scevgep455, i64 1
  %41 = shufflevector <4 x ptr> %i.co, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.cp = insertelement <4 x ptr> %i.ck, ptr %scevgep454, i64 1
  %i.cq = shufflevector <4 x ptr> %i.cp, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.cr = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.cs = insertelement <4 x ptr> %i.cr, ptr %scevgep452, i64 1
  %i.ct = insertelement <4 x ptr> %i.cs, ptr %scevgep451, i64 2
  %i.cu = insertelement <4 x ptr> %i.ct, ptr %scevgep450, i64 3
  %i.cv = insertelement <4 x ptr> poison, ptr %.sroa.0298.0.copyload, i64 0
  %i.cw = insertelement <4 x ptr> %i.cv, ptr %.sroa.0257.0.copyload, i64 1
  %i.cx = insertelement <4 x ptr> %i.cw, ptr %.sroa.0270.0.copyload, i64 2
  %i.cy = insertelement <4 x ptr> %i.cx, ptr %.sroa.0284.0.copyload, i64 3
  %i.cz = insertelement <4 x ptr> %i.cg, ptr %scevgep453, i64 1
  %i.da = shufflevector <4 x ptr> %i.cz, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %min.iters.check = icmp samesign ult i32 %i.h, 32
  %42 = icmp ult <4 x ptr> %11, %15
  %43 = insertelement <4 x ptr> %27, ptr %scevgep456, i64 1
  %44 = shufflevector <4 x ptr> %43, <4 x ptr> %9, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %45 = insertelement <4 x ptr> %44, ptr %.sroa.0257.0.copyload, i64 3
  %46 = icmp ult <4 x ptr> %45, %i.cf
  %47 = and <4 x i1> %42, %46
  %48 = icmp ult <4 x ptr> %5, %20
  %49 = icmp ult <4 x ptr> %24, %26
  %50 = and <4 x i1> %48, %49
  %51 = icmp ult <4 x ptr> %37, %36
  %52 = icmp ult <4 x ptr> %9, %30
  %53 = and <4 x i1> %52, %51
  %bound0503 = icmp ult ptr %scevgep458, %scevgep
  %bound1504 = icmp ult ptr %.sroa.0298.0.copyload, %scevgep457
  %found.conflict505 = and i1 %bound0503, %bound1504
  %i.db = icmp ult <4 x ptr> %i.cn, %41
  %i.dc = icmp ult <4 x ptr> %40, %i.cj
  %i.dd = and <4 x i1> %i.dc, %i.db
  %i.de = icmp ult <4 x ptr> %i.cq, %i.cu
  %i.df = icmp ult <4 x ptr> %i.cy, %i.da
  %i.dg = and <4 x i1> %i.de, %i.df
  %bound0539 = icmp ult ptr %scevgep454, %scevgep
  %bound1540 = icmp ult ptr %.sroa.0298.0.copyload, %scevgep453
  %found.conflict541 = and i1 %bound0539, %bound1540
  %rdx.op = or <4 x i1> %47, %50
  %rdx.op561 = or <4 x i1> %rdx.op, %53
  %rdx.op562 = or <4 x i1> %rdx.op561, %i.dd
  %rdx.op563 = or <4 x i1> %rdx.op562, %i.dg
  %i.dh = bitcast <4 x i1> %rdx.op563 to i4
  %i.di = icmp ne i4 %i.dh, 0
  %op.rdx = or i1 %i.di, %found.conflict505
  %op.rdx564 = or i1 %op.rdx, %found.conflict541
  %n.vec = and i64 %wide.trip.count, 1073741816   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader309

.preheader309:                                    ; preds = %.preheader309.lr.ph.split, %._crit_edge
  %indvars.iv321 = phi i64 [ 0, %.preheader309.lr.ph.split ], [ %indvars.iv.next322, %._crit_edge ] ; 10 uses
  %i.dj = icmp samesign ult i64 %indvars.iv321, %i.bh
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = mul nuw nsw i64 %indvars.iv321, %i.bg
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0257.0.copyload, i64 %i.dk ; 2 uses
  %i.dm = icmp samesign ult i64 %indvars.iv321, %i.bf
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = mul nuw nsw i64 %indvars.iv321, %i.be
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0270.0.copyload, i64 %i.dn ; 2 uses
  %i.dp = icmp samesign ult i64 %indvars.iv321, %i.bd
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = mul nuw nsw i64 %indvars.iv321, %i.bc
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0284.0.copyload, i64 %i.dq ; 2 uses
  %i.ds = icmp samesign ult i64 %indvars.iv321, %i.bb
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = mul nuw nsw i64 %indvars.iv321, %i.ba
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0298.0.copyload, i64 %i.dt ; 2 uses
  %i.dv = shl nuw nsw i64 %indvars.iv321, 1       ; 2 uses
  %i.dw = mul nuw nsw i64 %i.dv, %i.av
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.dw ; 3 uses
  %i.dy = or disjoint i64 %i.dv, 1                ; 2 uses
  %i.dz = icmp samesign ult i64 %i.dy, %i.au
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = mul nuw nsw i64 %i.dy, %i.av
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ea ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx564
  br i1 %brmerge, label %.preheader.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader309, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader309 ] ; 5 uses
  %i.ec = phi i64 [ %i.fk, %vector.body ], [ 0, %.preheader309 ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ed, align 2, !tbaa !290, !alias.scope !7056
  %i.ee = sext <8 x i16> %wide.load to <8 x i32>  ; 3 uses
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %index
  %wide.load551 = load <8 x i16>, ptr %i.ef, align 2, !tbaa !290, !alias.scope !7057
  %i.eg = sext <8 x i16> %wide.load551 to <8 x i32>
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %index
  %wide.load552 = load <8 x i16>, ptr %i.eh, align 2, !tbaa !290, !alias.scope !7058
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %index
  %i.ej = sext <8 x i16> %wide.load552 to <8 x i32>
  %wide.load553 = load <8 x i16>, ptr %i.ei, align 2, !tbaa !290, !alias.scope !7059
  %i.ek = sext <8 x i16> %wide.load553 to <8 x i32>
  %i.el = add nsw <8 x i32> %i.ek, splat (i32 -2048) ; 2 uses
  %i.em = shl nsw <8 x i32> %i.eg, splat (i32 1)
  %i.en = add nsw <8 x i32> %i.ee, splat (i32 -4096) ; 2 uses
  %i.eo = add nsw <8 x i32> %i.en, %i.em
  %i.ep = shl nsw <8 x i32> %i.ej, splat (i32 1)
  %i.eq = add nsw <8 x i32> %i.en, %i.ep
  %i.er = add nsw <8 x i32> %i.el, %i.ee
  %i.es = sub nsw <8 x i32> %i.ee, %i.el
  %i.et = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.eo, <8 x i32> zeroinitializer)
  %i.eu = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.et, <8 x i32> splat (i32 4095))
  %i.ev = zext nneg <8 x i32> %i.eu to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.as, <8 x i64> %i.ev
  %wide.masked.gather = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !289
  %i.ew = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.er, <8 x i32> zeroinitializer)
  %i.ex = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ew, <8 x i32> splat (i32 4095))
  %i.ey = zext nneg <8 x i32> %i.ex to <8 x i64>
  %wide.gep554 = getelementptr inbounds nuw [4 x i8], ptr %i.as, <8 x i64> %i.ey
  %wide.masked.gather555 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep554, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !289
  %i.ez = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.es, <8 x i32> zeroinitializer)
  %i.fa = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ez, <8 x i32> splat (i32 4095))
  %i.fb = zext nneg <8 x i32> %i.fa to <8 x i64>
  %wide.gep556 = getelementptr inbounds nuw [4 x i8], ptr %i.as, <8 x i64> %i.fb
  %wide.masked.gather557 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep556, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !289
  %i.fc = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.eq, <8 x i32> zeroinitializer)
  %i.fd = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.fc, <8 x i32> splat (i32 4095))
  %i.fe = zext nneg <8 x i32> %i.fd to <8 x i64>
  %wide.gep558 = getelementptr inbounds nuw [4 x i8], ptr %i.as, <8 x i64> %i.fe
  %wide.masked.gather559 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep558, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !289
  %i.ff = shl nuw nsw i64 %i.ec, 1                ; 2 uses
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %i.ff
  %i.fh = shufflevector <8 x i32> %wide.masked.gather, <8 x i32> %wide.masked.gather555, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec = trunc <16 x i32> %i.fh to <16 x i16>
  store <16 x i16> %interleaved.vec, ptr %i.fg, align 2, !tbaa !290
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.eb, i64 %i.ff
  %i.fj = shufflevector <8 x i32> %wide.masked.gather557, <8 x i32> %wide.masked.gather559, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec560 = trunc <16 x i32> %i.fj to <16 x i16>
  store <16 x i16> %interleaved.vec560, ptr %i.fi, align 2, !tbaa !290
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fk = add nuw nsw i64 %i.ec, 8
  %i.fl = icmp eq i64 %index.next, %n.vec
  br i1 %i.fl, label %middle.block, label %vector.body, !llvm.loop !7052

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader309, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader309 ]
  br label %.preheader

._crit_edge315.split:                             ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %.preheader, %middle.block
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %exitcond325.not = icmp eq i64 %indvars.iv.next322, %wide.trip.count324
  br i1 %exitcond325.not, label %._crit_edge315.split, label %.preheader309, !llvm.loop !7053

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader ] ; 10 uses
  %i.fm = icmp samesign ult i64 %indvars.iv, %i.aw
  tail call void @llvm.assume(i1 %i.fm)
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %indvars.iv
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !290
  %i.fp = sext i16 %i.fo to i32                   ; 3 uses
  %i.fq = icmp samesign ult i64 %indvars.iv, %i.ax
  tail call void @llvm.assume(i1 %i.fq)
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !290
  %i.ft = sext i16 %i.fs to i32
  %i.fu = icmp samesign ult i64 %indvars.iv, %i.ay
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %indvars.iv
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !290
  %i.fx = icmp samesign ult i64 %indvars.iv, %i.az
  tail call void @llvm.assume(i1 %i.fx)
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %indvars.iv
  %i.fz = sext i16 %i.fw to i32
  %i.ga = load i16, ptr %i.fy, align 2, !tbaa !290
  %i.gb = sext i16 %i.ga to i32
  %i.gc = add nsw i32 %i.gb, -2048                ; 2 uses
  %i.gd = shl nsw i32 %i.ft, 1
  %i.ge = add nsw i32 %i.fp, -4096                ; 2 uses
  %i.gf = add nsw i32 %i.ge, %i.gd
  %i.gg = shl nsw i32 %i.fz, 1
  %i.gh = add nsw i32 %i.ge, %i.gg
  %i.gi = add nsw i32 %i.gc, %i.fp
  %i.gj = sub nsw i32 %i.fp, %i.gc
  %.sroa.speculate.load.false.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %i.gf, i32 0)
  %i.gk = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.i, i32 4095)
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !289
  %.sroa.speculate.load.false.sroa.speculated.i.i.1 = tail call i32 @llvm.smax.i32(i32 %i.gi, i32 0)
  %i.go = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.i.1, i32 4095)
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !289
  %.sroa.speculate.load.false.sroa.speculated.i.i.2 = tail call i32 @llvm.smax.i32(i32 %i.gj, i32 0)
  %i.gs = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.i.2, i32 4095)
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !289
  %.sroa.speculate.load.false.sroa.speculated.i.i.3 = tail call i32 @llvm.smax.i32(i32 %i.gh, i32 0)
  %i.gw = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.i.3, i32 4095)
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !289
  %i.ha = shl nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %i.ha
  %i.hc = trunc i32 %i.gn to i16
  store i16 %i.hc, ptr %i.hb, align 2, !tbaa !290
  %i.hd = or disjoint i64 %i.ha, 1                ; 3 uses
  %i.he = icmp samesign ult i64 %i.hd, %i.at
  tail call void @llvm.assume(i1 %i.he)
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %i.hd
  %i.hg = trunc i32 %i.gr to i16
  store i16 %i.hg, ptr %i.hf, align 2, !tbaa !290
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.eb, i64 %i.ha
  %i.hi = trunc i32 %i.gv to i16
  store i16 %i.hi, ptr %i.hh, align 2, !tbaa !290
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.eb, i64 %i.hd
  %i.hk = trunc i32 %i.gz to i16
  store i16 %i.hk, ptr %i.hj, align 2, !tbaa !290
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !7054
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8rawspeed15VC5Decompressor28combineFinalLowpassBandsImplILNS_10BayerPhaseE2EEEvv(ptr noundef nonnull align 8 dereferenceable(1000) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::array.67", align 8    ; 7 uses
  %2 = alloca %"struct.std::array.190", align 1   ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !6688   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !6848, !noalias !7064 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.e = load i32, ptr %i.d, align 8, !tbaa !6771, !noalias !7064
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.g = load i32, ptr %i.f, align 8, !tbaa !6849, !noalias !7064
  %i.h = mul nsw i32 %i.g, %i.e                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.j = load i32, ptr %i.i, align 4, !tbaa !6850, !noalias !7064 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !6851, !noalias !7064
  %i.m = ashr i32 %i.l, 1                         ; 3 uses
  %i.n = icmp sgt i32 %i.h, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp sgt i32 %i.j, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ne i32 %i.m, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp sge i32 %i.m, %i.h
  tail call void @llvm.assume(i1 %i.q)
  %i.r = lshr i32 %i.h, 1                         ; 2 uses
  %i.s = lshr i32 %i.j, 1                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !317
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !319  ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.0257.0.copyload = load ptr, ptr %i.w, align 8, !tbaa !288
  %.sroa.4259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %.sroa.4259.0.copyload = load i32, ptr %.sroa.4259.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  %.sroa.5260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 68
  %.sroa.5260.0.copyload = load i32, ptr %.sroa.5260.0..sroa_idx, align 4, !tbaa !289 ; 2 uses
  %.sroa.6261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %.sroa.6261.0.copyload = load i32, ptr %.sroa.6261.0..sroa_idx, align 8, !tbaa !289
  %i.x = icmp ne i32 %.sroa.4259.0.copyload, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp sge i32 %.sroa.4259.0.copyload, %.sroa.5260.0.copyload
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !317
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !319 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %.sroa.0270.0.copyload = load ptr, ptr %i.ac, align 8, !tbaa !288
  %.sroa.4273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %.sroa.4273.0.copyload = load i32, ptr %.sroa.4273.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  %.sroa.5274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 68
  %.sroa.5274.0.copyload = load i32, ptr %.sroa.5274.0..sroa_idx, align 4, !tbaa !289 ; 2 uses
  %.sroa.6275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %.sroa.6275.0.copyload = load i32, ptr %.sroa.6275.0..sroa_idx, align 8, !tbaa !289
  %i.ad = icmp ne i32 %.sroa.4273.0.copyload, 0
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp sge i32 %.sroa.4273.0.copyload, %.sroa.5274.0.copyload
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !317
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !319 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %.sroa.0284.0.copyload = load ptr, ptr %i.ai, align 8, !tbaa !288
  %.sroa.4287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %.sroa.4287.0.copyload = load i32, ptr %.sroa.4287.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  %.sroa.5288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 68
  %.sroa.5288.0.copyload = load i32, ptr %.sroa.5288.0..sroa_idx, align 4, !tbaa !289 ; 2 uses
  %.sroa.6289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %.sroa.6289.0.copyload = load i32, ptr %.sroa.6289.0..sroa_idx, align 8, !tbaa !289
  %i.aj = icmp ne i32 %.sroa.4287.0.copyload, 0
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp sge i32 %.sroa.4287.0.copyload, %.sroa.5288.0.copyload
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !317
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !319 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %.sroa.0298.0.copyload = load ptr, ptr %i.ao, align 8, !tbaa !288
  %.sroa.4301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %.sroa.4301.0.copyload = load i32, ptr %.sroa.4301.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  %.sroa.5302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 68
  %.sroa.5302.0.copyload = load i32, ptr %.sroa.5302.0..sroa_idx, align 4, !tbaa !289 ; 2 uses
  %.sroa.6303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %.sroa.6303.0.copyload = load i32, ptr %.sroa.6303.0..sroa_idx, align 8, !tbaa !289
  %i.ap = icmp ne i32 %.sroa.4301.0.copyload, 0
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp sge i32 %.sroa.4301.0.copyload, %.sroa.5302.0.copyload
  tail call void @llvm.assume(i1 %i.aq)
  %.not319 = icmp eq i32 %i.s, 0
  br i1 %.not319, label %._crit_edge318.split, label %.preheader312.lr.ph

.preheader312.lr.ph:                              ; preds = %bb.a
  %.not320 = icmp eq i32 %i.r, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.at = ptrtoint ptr %2 to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = xor i64 %i.at, -1
  %i.aw = getelementptr [4 x i8], ptr %1, i64 %i.av
  %i.ax = getelementptr [4 x i8], ptr %i.aw, i64 %i.au ; 2 uses
  br i1 %.not320, label %._crit_edge318.split, label %.preheader312.lr.ph.split

.preheader312.lr.ph.split:                        ; preds = %.preheader312.lr.ph
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !6793 ; 4 uses
  %i.ba = zext nneg i32 %i.h to i64
  %i.bb = zext nneg i32 %i.j to i64
  %i.bc = zext nneg i32 %i.m to i64               ; 2 uses
  %i.bd = zext nneg i32 %.sroa.5260.0.copyload to i64
  %i.be = zext nneg i32 %.sroa.5274.0.copyload to i64
  %i.bf = zext nneg i32 %.sroa.5288.0.copyload to i64
  %i.bg = zext nneg i32 %.sroa.5302.0.copyload to i64
  %i.bh = zext nneg i32 %.sroa.4301.0.copyload to i64
  %i.bi = zext nneg i32 %.sroa.6303.0.copyload to i64
  %i.bj = zext nneg i32 %.sroa.4287.0.copyload to i64
  %i.bk = zext nneg i32 %.sroa.6289.0.copyload to i64
  %i.bl = zext nneg i32 %.sroa.4273.0.copyload to i64
  %i.bm = zext nneg i32 %.sroa.6275.0.copyload to i64
  %i.bn = zext nneg i32 %.sroa.4259.0.copyload to i64
  %i.bo = zext nneg i32 %.sroa.6261.0.copyload to i64
  %wide.trip.count327 = zext nneg i32 %i.s to i64
  %wide.trip.count = zext nneg i32 %i.r to i64
  br label %.preheader312

.preheader312:                                    ; preds = %.preheader312.lr.ph.split, %._crit_edge
  %indvars.iv324 = phi i64 [ 0, %.preheader312.lr.ph.split ], [ %indvars.iv.next325, %._crit_edge ] ; 10 uses
  %i.bp = icmp samesign ult i64 %indvars.iv324, %i.bo
  call void @llvm.assume(i1 %i.bp)
  %i.bq = mul nuw nsw i64 %indvars.iv324, %i.bn
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0257.0.copyload, i64 %i.bq
  %i.bs = icmp samesign ult i64 %indvars.iv324, %i.bm
  call void @llvm.assume(i1 %i.bs)
  %i.bt = mul nuw nsw i64 %indvars.iv324, %i.bl
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0270.0.copyload, i64 %i.bt
  %i.bv = icmp samesign ult i64 %indvars.iv324, %i.bk
  call void @llvm.assume(i1 %i.bv)
  %i.bw = mul nuw nsw i64 %indvars.iv324, %i.bj
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0284.0.copyload, i64 %i.bw
  %i.by = icmp samesign ult i64 %indvars.iv324, %i.bi
  call void @llvm.assume(i1 %i.by)
  %i.bz = mul nuw nsw i64 %indvars.iv324, %i.bh
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0298.0.copyload, i64 %i.bz
  %i.cb = shl nuw nsw i64 %indvars.iv324, 1       ; 2 uses
  %i.cc = mul nuw nsw i64 %i.cb, %i.bc
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.cc ; 2 uses
  %i.ce = or disjoint i64 %i.cb, 1                ; 2 uses
  %i.cf = icmp samesign ult i64 %i.ce, %i.bb
  call void @llvm.assume(i1 %i.cf)
  %i.cg = mul nuw nsw i64 %i.ce, %i.bc
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.cg ; 2 uses
  br label %.preheader

._crit_edge318.split:                             ; preds = %._crit_edge, %.preheader312.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %.preheader
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  br i1 %exitcond328.not, label %._crit_edge318.split, label %.preheader312, !llvm.loop !7062

.preheader:                                       ; preds = %.preheader312, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader312 ], [ %indvars.iv.next, %.preheader ] ; 10 uses
  %i.ci = icmp samesign ult i64 %indvars.iv, %i.bd
  call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %indvars.iv
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !290
  %i.cl = sext i16 %i.ck to i32                   ; 3 uses
  %i.cm = icmp samesign ult i64 %indvars.iv, %i.be
  call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %indvars.iv
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !290
  %i.cp = sext i16 %i.co to i32
  %i.cq = icmp samesign ult i64 %indvars.iv, %i.bf
  call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !290
  %i.ct = icmp samesign ult i64 %indvars.iv, %i.bg
  call void @llvm.assume(i1 %i.ct)
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %indvars.iv
  %i.cv = sext i16 %i.cs to i32
  %i.cw = load i16, ptr %i.cu, align 2, !tbaa !290
  %i.cx = sext i16 %i.cw to i32
  %i.cy = add nsw i32 %i.cx, -2048                ; 2 uses
  %i.cz = shl nsw i32 %i.cp, 1
  %i.da = add nsw i32 %i.cl, -4096                ; 2 uses
  %i.db = add nsw i32 %i.da, %i.cz
  %i.dc = shl nsw i32 %i.cv, 1
  %i.dd = add nsw i32 %i.da, %i.dc
  %i.de = add nsw i32 %i.cy, %i.cl
  %i.df = sub nsw i32 %i.cl, %i.cy
  %.sroa.speculate.load.false.sroa.speculated.i.i = call i32 @llvm.smax.i32(i32 %i.db, i32 0)
  %i.dg = call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.i, i32 4095)
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !289
  %.sroa.0.0.insert.ext330 = zext i32 %i.dj to i64
  %.sroa.speculate.load.false.sroa.speculated.i.i.1 = call i32 @llvm.smax.i32(i32 %i.de, i32 0)
  %i.dk = call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.i.1, i32 4095)
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !289
  %.sroa.0.4.insert.ext337 = zext i32 %i.dn to i64
  %.sroa.0.4.insert.shift338 = shl nuw i64 %.sroa.0.4.insert.ext337, 32
  %.sroa.0.4.insert.insert340 = or disjoint i64 %.sroa.0.4.insert.shift338, %.sroa.0.0.insert.ext330
  %.sroa.speculate.load.false.sroa.speculated.i.i.2 = call i32 @llvm.smax.i32(i32 %i.df, i32 0)
  %i.do = call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.i.2, i32 4095)
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !289 ; 2 uses
  %.sroa.12.8.insert.ext346 = zext i32 %i.dr to i64
  %.sroa.speculate.load.false.sroa.speculated.i.i.3 = call i32 @llvm.smax.i32(i32 %i.dd, i32 0)
  %i.ds = call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.i.3, i32 4095)
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !289
  %.sroa.12.12.insert.ext352 = zext i32 %i.dv to i64
  %.sroa.12.12.insert.shift353 = shl nuw i64 %.sroa.12.12.insert.ext352, 32
  %.sroa.12.12.insert.insert355 = or disjoint i64 %.sroa.12.12.insert.shift353, %.sroa.12.8.insert.ext346
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.12.12.insert.insert355, ptr %1, align 8
  store i64 %.sroa.0.4.insert.insert340, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.dw = load i32, ptr %i.ax, align 4, !tbaa !289
  store i32 %i.dw, ptr %1, align 8, !tbaa !289
  store i32 %i.dr, ptr %i.ax, align 4, !tbaa !289
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %.fca.0.load.pre.i = load i64, ptr %1, align 8  ; 2 uses
  %.fca.1.load.pre.i = load i64, ptr %i.ar, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.dx = shl nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %i.dx
  %i.dz = trunc i64 %.fca.0.load.pre.i to i16
  store i16 %i.dz, ptr %i.dy, align 2, !tbaa !290
  %.sroa.0.4.extract.shift342 = lshr i64 %.fca.0.load.pre.i, 32
  %i.ea = or disjoint i64 %i.dx, 1                ; 3 uses
  %i.eb = icmp samesign ult i64 %i.ea, %i.ba
  call void @llvm.assume(i1 %i.eb)
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %i.ea
  %i.ed = trunc i64 %.sroa.0.4.extract.shift342 to i16
  store i16 %i.ed, ptr %i.ec, align 2, !tbaa !290
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %i.dx
  %i.ef = trunc i64 %.fca.1.load.pre.i to i16
  store i16 %i.ef, ptr %i.ee, align 2, !tbaa !290
  %.sroa.12.12.extract.shift357 = lshr i64 %.fca.1.load.pre.i, 32
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %i.ea
  %i.eh = trunc i64 %.sroa.12.12.extract.shift357 to i16
  store i16 %i.eh, ptr %i.eg, align 2, !tbaa !290
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !7063
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZNK8rawspeed15VC5Decompressor7Wavelet12AbstractBand6anchorEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #13 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed15VC5Decompressor7Wavelet12AbstractBandD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #31
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBandD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !320, !range !305, !noundef !306
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN8rawspeed8OptionalINS_15VC5Decompressor8BandDataEED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !320
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !297  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN8rawspeed8OptionalINS_15VC5Decompressor8BandDataEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !296
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #34
  br label %_ZN8rawspeed8OptionalINS_15VC5Decompressor8BandDataEED2Ev.exit.i

_ZN8rawspeed8OptionalINS_15VC5Decompressor8BandDataEED2Ev.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !320, !range !305, !noundef !306
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBandUt_D2Ev.exit

bb.d:                                             ; preds = %_ZN8rawspeed8OptionalINS_15VC5Decompressor8BandDataEED2Ev.exit.i
  store i8 0, ptr %i.k, align 8, !tbaa !320
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !297  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i1.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i1.i, label %_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBandUt_D2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !296
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #34
  br label %_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBandUt_D2Ev.exit

_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBandUt_D2Ev.exit: ; preds = %_ZN8rawspeed8OptionalINS_15VC5Decompressor8BandDataEED2Ev.exit.i, %bb.d, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed15VC5Decompressor7Wavelet12AbstractBandE, i64 16), ptr %0, align 8, !tbaa !324
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !320, !range !305, !noundef !306
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.f, label %_ZN8rawspeed15VC5Decompressor7Wavelet12AbstractBandD2Ev.exit

bb.f:                                             ; preds = %_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBandUt_D2Ev.exit
  store i8 0, ptr %i.u, align 8, !tbaa !320
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !297  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i2 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i2, label %_ZN8rawspeed15VC5Decompressor7Wavelet12AbstractBandD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !296
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #34, !inline_history !6852
  br label %_ZN8rawspeed15VC5Decompressor7Wavelet12AbstractBandD2Ev.exit

_ZN8rawspeed15VC5Decompressor7Wavelet12AbstractBandD2Ev.exit: ; preds = %_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBandUt_D2Ev.exit, %bb.f, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBandD0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !320, !range !305, !noundef !306
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN8rawspeed8OptionalINS_15VC5Decompressor8BandDataEED2Ev.exit.i.i

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !320
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !297  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN8rawspeed8OptionalINS_15VC5Decompressor8BandDataEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !296
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #34
  br label %_ZN8rawspeed8OptionalINS_15VC5Decompressor8BandDataEED2Ev.exit.i.i

_ZN8rawspeed8OptionalINS_15VC5Decompressor8BandDataEED2Ev.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !320, !range !305, !noundef !306
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBandUt_D2Ev.exit.i

bb.d:                                             ; preds = %_ZN8rawspeed8OptionalINS_15VC5Decompressor8BandDataEED2Ev.exit.i.i
  store i8 0, ptr %i.k, align 8, !tbaa !320
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !297  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i1.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i1.i.i, label %_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBandUt_D2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !296
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #34
  br label %_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBandUt_D2Ev.exit.i

_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBandUt_D2Ev.exit.i: ; preds = %bb.e, %bb.d, %_ZN8rawspeed8OptionalINS_15VC5Decompressor8BandDataEED2Ev.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed15VC5Decompressor7Wavelet12AbstractBandE, i64 16), ptr %0, align 8, !tbaa !324
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !320, !range !305, !noundef !306
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.f, label %_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBandD2Ev.exit

bb.f:                                             ; preds = %_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBandUt_D2Ev.exit.i
  store i8 0, ptr %i.u, align 8, !tbaa !320
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !297  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i2.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i2.i, label %_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBandD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !296
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #34, !inline_history !6852
  br label %_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBandD2Ev.exit

_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBandD2Ev.exit: ; preds = %_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBandUt_D2Ev.exit.i, %bb.f, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 240) #34
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed15VC5Decompressor7Wavelet22AbstractDecodeableBandD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #31
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed15VC5Decompressor7Wavelet12HighPassBandD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed15VC5Decompressor7Wavelet12AbstractBandE, i64 16), ptr %0, align 8, !tbaa !324
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !320, !range !305, !noundef !306
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN8rawspeed15VC5Decompressor7Wavelet12AbstractBandD2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !320
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !297  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN8rawspeed15VC5Decompressor7Wavelet12AbstractBandD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !296
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #34, !inline_history !6852
  br label %_ZN8rawspeed15VC5Decompressor7Wavelet12AbstractBandD2Ev.exit

_ZN8rawspeed15VC5Decompressor7Wavelet12AbstractBandD2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed15VC5Decompressor7Wavelet12AbstractBandD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed15VC5Decompressor7Wavelet12AbstractBandE, i64 16), ptr %0, align 8, !tbaa !324
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !320, !range !305, !noundef !306
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN8rawspeed8OptionalINS_15VC5Decompressor8BandDataEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !320
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !297  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN8rawspeed8OptionalINS_15VC5Decompressor8BandDataEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !296
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #34
  br label %_ZN8rawspeed8OptionalINS_15VC5Decompressor8BandDataEED2Ev.exit

_ZN8rawspeed8OptionalINS_15VC5Decompressor8BandDataEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed15VC5Decompressor7Wavelet11LowPassBandD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed15VC5Decompressor7Wavelet12AbstractBandE, i64 16), ptr %0, align 8, !tbaa !324
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !320, !range !305, !noundef !306
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN8rawspeed15VC5Decompressor7Wavelet12AbstractBandD2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !320
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !297  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN8rawspeed15VC5Decompressor7Wavelet12AbstractBandD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !296
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #34, !inline_history !6852
  br label %_ZN8rawspeed15VC5Decompressor7Wavelet12AbstractBandD2Ev.exit

_ZN8rawspeed15VC5Decompressor7Wavelet12AbstractBandD2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #15

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #17

declare noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5arrayIN8rawspeed15VC5Decompressor7WaveletELm4EED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !317  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !322  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !319 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandEEclEPS3_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandEEclEPS3_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !324
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(88) %i.e) #35, !call_target !329, !inline_history !7065
  br label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandEEclEPS3_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !260

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !317
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.j = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i, label %_ZN8rawspeed15VC5Decompressor7WaveletD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !6790
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #34
  br label %_ZN8rawspeed15VC5Decompressor7WaveletD2Ev.exit

_ZN8rawspeed15VC5Decompressor7WaveletD2Ev.exit:   ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !317  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !322  ; 2 uses
  %.not4.i.i.i.i.1 = icmp eq ptr %i.q, %i.s
  br i1 %.not4.i.i.i.i.1, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.1, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %_ZN8rawspeed15VC5Decompressor7WaveletD2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.1
  %.05.i.i.i.i.1 = phi ptr [ %i.x, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.1 ], [ %i.q, %_ZN8rawspeed15VC5Decompressor7WaveletD2Ev.exit ] ; 2 uses
  %i.t = load ptr, ptr %.05.i.i.i.i.1, align 8, !tbaa !319 ; 3 uses
  %.not.i.i.i.i.i.i.i.1 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.1, label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.1, label %_ZNKSt14default_deleteIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandEEclEPS3_.exit.i.i.i.i.i.i.i.1

_ZNKSt14default_deleteIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandEEclEPS3_.exit.i.i.i.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.1
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !324
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(88) %i.t) #35, !call_target !329, !inline_history !7065
  br label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.1

_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.1: ; preds = %_ZNKSt14default_deleteIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandEEclEPS3_.exit.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.1
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.1, i64 8 ; 2 uses
  %.not.i.i.i.i.1 = icmp eq ptr %i.x, %i.s
  br i1 %.not.i.i.i.i.1, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i.1, label %.lr.ph.i.i.i.i.1, !llvm.loop !260

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i.1: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.1
  %.pr.i.i.1 = load ptr, ptr %i.p, align 8, !tbaa !317
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.1

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.1: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i.1, %_ZN8rawspeed15VC5Decompressor7WaveletD2Ev.exit
  %i.y = phi ptr [ %.pr.i.i.1, %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i.1 ], [ %i.q, %_ZN8rawspeed15VC5Decompressor7WaveletD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i.1 = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i.i.1, label %_ZN8rawspeed15VC5Decompressor7WaveletD2Ev.exit.1, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !6790
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #34
  br label %_ZN8rawspeed15VC5Decompressor7WaveletD2Ev.exit.1

_ZN8rawspeed15VC5Decompressor7WaveletD2Ev.exit.1: ; preds = %bb.c, %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !317 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !322 ; 2 uses
  %.not4.i.i.i.i.2 = icmp eq ptr %i.af, %i.ah
  br i1 %.not4.i.i.i.i.2, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.2, label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %_ZN8rawspeed15VC5Decompressor7WaveletD2Ev.exit.1, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.2
  %.05.i.i.i.i.2 = phi ptr [ %i.am, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.2 ], [ %i.af, %_ZN8rawspeed15VC5Decompressor7WaveletD2Ev.exit.1 ] ; 2 uses
  %i.ai = load ptr, ptr %.05.i.i.i.i.2, align 8, !tbaa !319 ; 3 uses
  %.not.i.i.i.i.i.i.i.2 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i.2, label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.2, label %_ZNKSt14default_deleteIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandEEclEPS3_.exit.i.i.i.i.i.i.i.2

_ZNKSt14default_deleteIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandEEclEPS3_.exit.i.i.i.i.i.i.i.2: ; preds = %.lr.ph.i.i.i.i.2
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !324
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(88) %i.ai) #35, !call_target !329, !inline_history !7065
  br label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.2

_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.2: ; preds = %_ZNKSt14default_deleteIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandEEclEPS3_.exit.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.2
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.2, i64 8 ; 2 uses
  %.not.i.i.i.i.2 = icmp eq ptr %i.am, %i.ah
  br i1 %.not.i.i.i.i.2, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i.2, label %.lr.ph.i.i.i.i.2, !llvm.loop !260

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i.2: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.2
  %.pr.i.i.2 = load ptr, ptr %i.ae, align 8, !tbaa !317
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.2

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.2: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i.2, %_ZN8rawspeed15VC5Decompressor7WaveletD2Ev.exit.1
  %i.an = phi ptr [ %.pr.i.i.2, %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i.2 ], [ %i.af, %_ZN8rawspeed15VC5Decompressor7WaveletD2Ev.exit.1 ] ; 3 uses
  %.not.i.i1.i.i.2 = icmp eq ptr %i.an, null
  br i1 %.not.i.i1.i.i.2, label %_ZN8rawspeed15VC5Decompressor7WaveletD2Ev.exit.2, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.2
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !6790
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #34
  br label %_ZN8rawspeed15VC5Decompressor7WaveletD2Ev.exit.2

_ZN8rawspeed15VC5Decompressor7WaveletD2Ev.exit.2: ; preds = %bb.d, %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.2
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !317 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !322 ; 2 uses
  %.not4.i.i.i.i.3 = icmp eq ptr %i.au, %i.aw
  br i1 %.not4.i.i.i.i.3, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.3, label %.lr.ph.i.i.i.i.3

.lr.ph.i.i.i.i.3:                                 ; preds = %_ZN8rawspeed15VC5Decompressor7WaveletD2Ev.exit.2, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.3
  %.05.i.i.i.i.3 = phi ptr [ %i.bb, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.3 ], [ %i.au, %_ZN8rawspeed15VC5Decompressor7WaveletD2Ev.exit.2 ] ; 2 uses
  %i.ax = load ptr, ptr %.05.i.i.i.i.3, align 8, !tbaa !319 ; 3 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.3, label %_ZNKSt14default_deleteIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandEEclEPS3_.exit.i.i.i.i.i.i.i.3

_ZNKSt14default_deleteIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandEEclEPS3_.exit.i.i.i.i.i.i.i.3: ; preds = %.lr.ph.i.i.i.i.3
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !324
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(88) %i.ax) #35, !call_target !329, !inline_history !7065
  br label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.3

_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.3: ; preds = %_ZNKSt14default_deleteIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandEEclEPS3_.exit.i.i.i.i.i.i.i.3, %.lr.ph.i.i.i.i.3
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.3, i64 8 ; 2 uses
  %.not.i.i.i.i.3 = icmp eq ptr %i.bb, %i.aw
  br i1 %.not.i.i.i.i.3, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i.3, label %.lr.ph.i.i.i.i.3, !llvm.loop !260

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i.3: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.3
  %.pr.i.i.3 = load ptr, ptr %i.at, align 8, !tbaa !317
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.3

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.3: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i.3, %_ZN8rawspeed15VC5Decompressor7WaveletD2Ev.exit.2
  %i.bc = phi ptr [ %.pr.i.i.3, %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i.3 ], [ %i.au, %_ZN8rawspeed15VC5Decompressor7WaveletD2Ev.exit.2 ] ; 3 uses
  %.not.i.i1.i.i.3 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i1.i.i.3, label %_ZN8rawspeed15VC5Decompressor7WaveletD2Ev.exit.3, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.3
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !6790
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #34
  br label %_ZN8rawspeed15VC5Decompressor7WaveletD2Ev.exit.3

_ZN8rawspeed15VC5Decompressor7WaveletD2Ev.exit.3: ; preds = %bb.e, %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.3
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt22_Optional_payload_baseIN8rawspeed20PrefixCodeLUTDecoderINS0_10VC5CodeTagENS0_23PrefixCodeVectorDecoderIS2_EEEEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(129) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.a, align 8, !tbaa !6792
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !6826 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !6853
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !6793 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !6794
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #34
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i:                ; preds = %bb.c, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !6810 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_10VC5CodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !6812
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #34
  br label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_10VC5CodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_10VC5CodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i.i: ; preds = %bb.d, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !6793 ; 3 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_10VC5CodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !6794
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #34
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i:            ; preds = %bb.e, %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_10VC5CodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i.i
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !6793 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !6794
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #34
  br label %_ZN8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEED2Ev.exit

_ZN8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !324
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #35, !call_target !6802, !inline_history !7066
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !6690
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !289  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !289
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !324
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #35, !call_target !6803, !inline_history !7066
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #35 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.32, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  invoke void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed11IOExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #20

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #20

declare void @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #12

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #36
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed11IOExceptionE, i64 16), ptr %0, align 8, !tbaa !324
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #22

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !324
  invoke void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %1) #36
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #35
  resume { ptr, i32 } %i.a
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #12

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %0) local_unnamed_addr #23 comdat align 2 {
bb.a:
  tail call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.32, ptr noundef %0)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #24

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden i64 @_ZN8rawspeed15VC5Decompressor6getRLVERKNS_20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS2_EEEERNS_14BitStreamerMSBE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca i32, align 4              ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !6843 ; 5 uses
  %i.c = icmp samesign ult i32 %i.b, 65
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !7069 ; 5 uses
  %i.f = icmp sgt i32 %i.e, 3
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !6847 ; 5 uses
  %i.i = icmp sgt i32 %i.h, -1
  tail call void @llvm.assume(i1 %i.i)
  %.not.i5 = icmp samesign ult i32 %i.b, 32
  br i1 %.not.i5, label %bb.b, label %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge

._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge: ; preds = %bb.a
  %.pre = load i64, ptr %1, align 8, !tbaa !6842
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.k = add nuw nsw i32 %i.h, 4                  ; 2 uses
  %.not.i.i = icmp samesign ugt i32 %i.k, %i.e
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !6804

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !6844, !noalias !7070
  %i.l = zext nneg i32 %i.h to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.l
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = add nuw nsw i32 %i.e, 8
  %i.o = icmp samesign ugt i32 %i.h, %i.n
  br i1 %i.o, label %bb.e, label %bb.f, !prof !6804

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.40, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv) #22
  unreachable

bb.f:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.j, align 8, !tbaa !6844
  store i32 0, ptr %.sroa.0.i.i, align 4
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.h) ; 3 uses
  %i.p = add nuw nsw i32 %.sroa.speculated27.i.i.i, 4
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.p)
  %i.q = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.r = icmp samesign ult i32 %i.q, 5
  tail call void @llvm.assume(i1 %i.r)
  %i.s = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.s
  %i.u = zext nneg i32 %i.q to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i, ptr align 1 %i.t, i64 %i.u, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i: ; preds = %bb.f, %bb.c
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.f ], [ %i.m, %bb.c ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.v = tail call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i)
  %i.w = zext i32 %i.v to i64
  %i.x = or disjoint i32 %i.b, 32                 ; 2 uses
  %i.y = sub nuw nsw i32 32, %i.b
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw i64 %i.w, %i.z
  %i.ab = load i64, ptr %1, align 8, !tbaa !6842
  %i.ac = or i64 %i.aa, %i.ab
  store i32 %i.x, ptr %i.a, align 8, !tbaa !6843
  store i32 %i.k, ptr %i.g, align 8, !tbaa !6847
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit: ; preds = %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i
  %i.ad = phi i64 [ %.pre, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge ], [ %i.ac, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i ] ; 2 uses
  %i.ae = phi i32 [ %i.b, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge ], [ %i.x, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i ]
  %i.af = lshr i64 %i.ad, 53                      ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !6826
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.af
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !289 ; 3 uses
  %i.ak = ashr i32 %i.aj, 9
  %i.al = and i32 %i.aj, 255                      ; 4 uses
  %i.am = icmp samesign ult i32 %i.al, 33
  tail call void @llvm.assume(i1 %i.am)
  %i.an = sub nuw nsw i32 %i.ae, %i.al            ; 3 uses
  store i32 %i.an, ptr %i.a, align 8, !tbaa !6843
  %i.ao = zext nneg i32 %i.al to i64
  %i.ap = shl i64 %i.ad, %i.ao                    ; 3 uses
  store i64 %i.ap, ptr %1, align 8, !tbaa !6842
  %.not18.i = icmp eq i32 %i.aj, 0
  br i1 %.not18.i, label %bb.g, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb0EEEiRT_.exit

bb.g:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %i.aq = icmp eq i32 %i.al, 0
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = add nsw i32 %i.an, -11                  ; 2 uses
  store i32 %i.ar, ptr %i.a, align 8, !tbaa !6843
  %i.as = shl i64 %i.ap, 11                       ; 2 uses
  store i64 %i.as, ptr %1, align 8, !tbaa !6842
  %.sroa.0.0.extract.trunc.i = trunc nuw nsw i64 %i.af to i32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !6813
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !6793
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 2
  %i.bb = add nsw i64 %i.ba, -1                   ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, 11
  br i1 %i.bc, label %.lr.ph.i, label %bb.j

.lr.ph.i:                                         ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !6793
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8
  br label %bb.h

.loopexit.i:                                      ; preds = %bb.i, %bb.h
  %i.bh = icmp ugt i64 %i.bb, %i.bs
  br i1 %i.bh, label %bb.h, label %._crit_edge.i

bb.h:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %i.bi = phi i32 [ %i.ar, %.lr.ph.i ], [ %i.bm, %.loopexit.i ] ; 3 uses
  %.sroa.0.031.i = phi i32 [ %.sroa.0.0.extract.trunc.i, %.lr.ph.i ], [ %i.bq, %.loopexit.i ]
  %.sroa.5.030.i = phi i8 [ 11, %.lr.ph.i ], [ %i.br, %.loopexit.i ]
  %i.bj = phi i64 [ %i.as, %.lr.ph.i ], [ %i.bn, %.loopexit.i ] ; 2 uses
  %i.bk = icmp samesign ult i32 %i.bi, 65
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = icmp ne i32 %i.bi, 0
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = add nsw i32 %i.bi, -1                   ; 3 uses
  store i32 %i.bm, ptr %i.a, align 8, !tbaa !6843
  %i.bn = shl i64 %i.bj, 1                        ; 4 uses
  %i.bo = shl i32 %.sroa.0.031.i, 1
  %.lobit.i = lshr i64 %i.bj, 63
  %i.bp = trunc nuw nsw i64 %.lobit.i to i32
  %i.bq = or disjoint i32 %i.bo, %i.bp            ; 3 uses
  %i.br = add i8 %.sroa.5.030.i, 1                ; 4 uses
  %i.bs = zext i8 %i.br to i64                    ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !289 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !289 ; 2 uses
  %.not28.i = icmp ult i32 %i.bu, %i.bw
  br i1 %.not28.i, label %.critedge.preheader.i, label %.loopexit.i

.critedge.preheader.i:                            ; preds = %bb.h
  %i.bx = zext i32 %i.bu to i64
  %wide.trip.count.i = zext i32 %i.bw to i64
  br label %.critedge.i

bb.i:                                             ; preds = %.critedge.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.critedge.i, !llvm.loop !261

.critedge.i:                                      ; preds = %bb.i, %.critedge.preheader.i
  %indvars.iv.i = phi i64 [ %i.bx, %.critedge.preheader.i ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !6807
  %i.cb = icmp eq i8 %i.br, %i.ca
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i32, ptr %i.by, align 4, !tbaa !6806
  %i.cd = icmp eq i32 %i.cc, %i.bq
  br i1 %i.cd, label %_ZNK8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit, label %bb.i

._crit_edge.i:                                    ; preds = %.loopexit.i
  store i64 %i.bn, ptr %1, align 8, !tbaa !6842
  %i.ce = zext i8 %i.br to i32
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i, %bb.g
  %.sroa.5.0.lcssa.i = phi i32 [ %i.ce, %._crit_edge.i ], [ 11, %bb.g ]
  %.sroa.0.0.lcssa.i = phi i32 [ %i.bq, %._crit_edge.i ], [ %.sroa.0.0.extract.trunc.i, %bb.g ]
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.41, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %.sroa.0.0.lcssa.i, i32 noundef %.sroa.5.0.lcssa.i) #22
  unreachable

_ZNK8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit: ; preds = %.critedge.i
  store i64 %i.bn, ptr %1, align 8, !tbaa !6842
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !6793
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.i
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !289
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb0EEEiRT_.exit

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb0EEEiRT_.exit: ; preds = %_ZNK8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %i.cj = phi i64 [ %i.ap, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.bn, %_ZNK8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ] ; 2 uses
  %i.ck = phi i32 [ %i.an, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.bm, %_ZNK8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ] ; 2 uses
  %.0.i = phi i32 [ %i.ak, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.ci, %_ZNK8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ] ; 2 uses
  %i.cl = lshr i32 %.0.i, 9
  %i.cm = trunc i32 %i.cl to i16                  ; 3 uses
  %.not = icmp eq i16 %i.cm, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb0EEEiRT_.exit
  %i.cn = icmp ne i32 %i.ck, 0
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = add nsw i32 %i.ck, -1
  store i32 %i.co, ptr %i.a, align 8, !tbaa !6843
  %i.cp = shl i64 %i.cj, 1
  store i64 %i.cp, ptr %1, align 8, !tbaa !6842
  %i.cq = sub i16 0, %i.cm
  %.not467 = icmp slt i64 %i.cj, 0
  %spec.select = select i1 %.not467, i16 %i.cq, i16 %i.cm
  %i.cr = zext i16 %spec.select to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb0EEEiRT_.exit
  %.0 = phi i64 [ 0, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb0EEEiRT_.exit ], [ %i.cr, %bb.k ]
  %i.cs = and i32 %.0.i, 511
  %.sroa.28.0.insert.ext = zext nneg i32 %i.cs to i64
  %.sroa.28.0.insert.shift = shl nuw nsw i64 %.sroa.28.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.28.0.insert.shift, %.0
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i16, i1 } @llvm.smul.with.overflow.i16(i16, i16) #24

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #26

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #36
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19RawDecoderExceptionE, i64 16), ptr %0, align 8, !tbaa !324
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #27

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10PrefixCodeINS_10VC5CodeTagEE17verifyCodeSymbolsEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !6813
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !6793 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !6814 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !6814 ; 3 uses
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %._crit_edge30, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge, %bb.b
  %.sroa.09.0.i.i = phi ptr [ %i.o, %bb.b ], [ %i.k, %._crit_edge ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.m
  br i1 %i.p, label %.preheader.preheader, label %bb.b

bb.b:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 12
  %i.s = load i8, ptr %i.q, align 1, !tbaa !6690
  %i.t = load i8, ptr %i.r, align 1, !tbaa !6690
  %.not.i.i.i.i = icmp ugt i8 %i.s, %i.t
  br i1 %.not.i.i.i.i, label %_ZSt13adjacent_findIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed18AbstractPrefixCodeINS2_10VC5CodeTagEE10CodeSymbolESt6vectorIS6_SaIS6_EEEEZNS2_10PrefixCodeIS4_E17verifyCodeSymbolsEvEUlRS7_SF_E_ET_SH_SH_T0_.exit, label %.preheader.i.i, !llvm.loop !7071

.preheader.preheader:                             ; preds = %.preheader.i.i
  %i.u = ptrtoint ptr %i.m to i64
  %i.v = ptrtoint ptr %i.k to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  br label %.preheader

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.01825 = phi i32 [ %i.ac, %bb.d ], [ 2, %bb.a ] ; 2 uses
  %.01924 = phi i64 [ %i.ad, %bb.d ], [ 1, %bb.a ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.01924
  %i.z = load i32, ptr %i.y, align 4, !tbaa !289  ; 2 uses
  %i.aa = icmp ugt i32 %i.z, %.01825
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.48, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10PrefixCodeINS_10VC5CodeTagEE17verifyCodeSymbolsEv, i64 noundef %.01924) #22
  unreachable

bb.d:                                             ; preds = %.lr.ph
  %i.ab = sub nuw i32 %.01825, %i.z
  %i.ac = shl i32 %i.ab, 1
  %i.ad = add nuw i64 %.01924, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7072

_ZSt13adjacent_findIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed18AbstractPrefixCodeINS2_10VC5CodeTagEE10CodeSymbolESt6vectorIS6_SaIS6_EEEEZNS2_10PrefixCodeIS4_E17verifyCodeSymbolsEvEUlRS7_SF_E_ET_SH_SH_T0_.exit: ; preds = %bb.b
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.49, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10PrefixCodeINS_10VC5CodeTagEE17verifyCodeSymbolsEv) #22
  unreachable

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge28
  %.01729 = phi i64 [ %i.al, %._crit_edge28 ], [ 0, %.preheader.preheader ] ; 4 uses
  %.not31 = icmp eq i64 %.01729, 0
  br i1 %.not31, label %._crit_edge28, label %.lr.ph27

.lr.ph27:                                         ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01729 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !6806
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !6807 ; 3 uses
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = icmp ult i8 %i.ah, 33
  tail call void @llvm.assume(i1 %i.aj)
  br label %bb.f

._crit_edge30:                                    ; preds = %._crit_edge28, %._crit_edge
  ret void

bb.e:                                             ; preds = %bb.f
  %i.ak = add nuw i64 %.026, 1                    ; 2 uses
  %exitcond33.not = icmp eq i64 %i.ak, %.01729
  br i1 %exitcond33.not, label %._crit_edge28, label %bb.f, !llvm.loop !7073

._crit_edge28:                                    ; preds = %bb.e, %.preheader
  %i.al = add nuw i64 %.01729, 1                  ; 2 uses
  %exitcond34.not = icmp eq i64 %i.al, %i.x
  br i1 %exitcond34.not, label %._crit_edge30, label %.preheader, !llvm.loop !7074

bb.f:                                             ; preds = %.lr.ph27, %bb.e
  %.026 = phi i64 [ 0, %.lr.ph27 ], [ %i.ak, %bb.e ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.026 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !6807 ; 2 uses
  %i.ap = zext i8 %i.ao to i32
  %i.aq = icmp ule i8 %i.ao, %i.ah
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = sub nuw nsw i32 %i.ai, %i.ap            ; 2 uses
  %i.as = icmp samesign ult i32 %i.ar, 32
  tail call void @llvm.assume(i1 %i.as)
  %i.at = lshr i32 %i.af, %i.ar
  %i.au = load i32, ptr %i.am, align 4, !tbaa !6806
  %i.av = icmp eq i32 %i.at, %i.au
  br i1 %i.av, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.50, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10PrefixCodeINS_10VC5CodeTagEE17verifyCodeSymbolsEv) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !6813 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !6793   ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !6794
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !289
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !289
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !6813
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #32
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #33 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !289
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !289
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !6794
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #34
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36: ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !6793
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !6813
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !6794
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE5setupEbb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %2 to i8
  store i8 0, ptr %0, align 8, !tbaa !6821
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.a, ptr %i.b, align 1, !tbaa !6822
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6813
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !6793
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 2
  %i.l = add nsw i64 %i.k, 1                      ; 4 uses
  %i.m = icmp ugt i64 %i.l, 2305843009213693951
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6794
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !6793 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = icmp ult i64 %i.t, %i.l
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !6813 ; 2 uses
  br i1 %i.u, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.r
  %i.z = shl nuw nsw i64 %i.l, 2
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #33 ; 6 uses
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !6793 ; 4 uses
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !6813
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %bb.d, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %i.ab, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.d, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ab, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !6794
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.aj) #34
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.e, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.aa, ptr %i.c, align 8, !tbaa !6793
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y ; 2 uses
  store ptr %i.ak, ptr %i.v, align 8, !tbaa !6813
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.l
  store ptr %i.al, ptr %i.n, align 8, !tbaa !6794
  %.pre12 = ptrtoint ptr %i.aa to i64
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %bb.c, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i
  %.pre-phi = phi i64 [ %.pre12, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ %i.r, %bb.c ]
  %i.am = phi ptr [ %i.aa, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ %i.p, %bb.c ]
  %i.an = phi ptr [ %i.ak, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ %i.w, %bb.c ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ap, %.pre-phi                ; 2 uses
  %i.ar = ashr exact i64 %i.aq, 2                 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 2
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.at = sub nuw nsw i64 2, %i.ar
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.at)
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %.not = icmp eq i64 %i.aq, 8
  br i1 %.not, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, %i.au
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.h
  store ptr %i.au, ptr %i.ao, align 8, !tbaa !6813
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %bb.f, %bb.g, %bb.h, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !6813 ; 2 uses
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !6793 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ugt i64 %i.az, 4
  br i1 %i.ba, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %.pre8 = load ptr, ptr %i.ao, align 8, !tbaa !6823
  %.pre9 = load ptr, ptr %i.n, align 8, !tbaa !6794
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit, %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit
  %i.bb = phi ptr [ %i.ce, %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit ], [ %i.aw, %.lr.ph.preheader ] ; 2 uses
  %i.bc = phi ptr [ %i.cf, %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit ], [ %i.av, %.lr.ph.preheader ]
  %i.bd = phi ptr [ %i.cg, %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit ], [ %.pre9, %.lr.ph.preheader ] ; 3 uses
  %i.be = phi ptr [ %i.ch, %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit ], [ %.pre8, %.lr.ph.preheader ] ; 4 uses
  %.07 = phi i64 [ %i.ci, %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !289
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.07
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !289
  %i.bj = add i32 %i.bi, %i.bg                    ; 2 uses
  %.not.i = icmp eq ptr %i.be, %i.bd
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  store i32 %i.bj, ptr %i.be, align 4, !tbaa !289
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  store ptr %i.bk, ptr %i.ao, align 8, !tbaa !6813
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit

bb.j:                                             ; preds = %.lr.ph
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !6793 ; 4 uses
  %i.bm = ptrtoint ptr %i.bd to i64
  %i.bn = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 5 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775804
  br i1 %i.bp, label %bb.k, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #32
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bq = ashr exact i64 %i.bo, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 2305843009213693951)
  %i.bu = select i1 %i.bs, i64 2305843009213693951, i64 %i.bt ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bv = shl nuw nsw i64 %i.bu, 2
  %i.bw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #33 ; 4 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bo ; 2 uses
  store i32 %i.bj, ptr %i.bx, align 4, !tbaa !289
  %i.by = icmp sgt i64 %i.bo, 0
  br i1 %i.by, label %bb.l, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bw, ptr align 4 %i.bl, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.l, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.ca = load ptr, ptr %i.n, align 8, !tbaa !6794
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.cc) #34
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.bw, ptr %i.c, align 8, !tbaa !6793
  store ptr %i.bz, ptr %i.ao, align 8, !tbaa !6813
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bu ; 2 uses
  store ptr %i.cd, ptr %i.n, align 8, !tbaa !6794
  %.pre10 = load ptr, ptr %i.e, align 8, !tbaa !6813
  %.pre11 = load ptr, ptr %i.d, align 8, !tbaa !6793
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit

_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.ce = phi ptr [ %i.bb, %bb.i ], [ %.pre11, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ] ; 2 uses
  %i.cf = phi ptr [ %i.bc, %bb.i ], [ %.pre10, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ] ; 2 uses
  %i.cg = phi ptr [ %i.bd, %bb.i ], [ %i.cd, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ]
  %i.ch = phi ptr [ %i.bk, %bb.i ], [ %i.bz, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ]
  %i.ci = add nuw i64 %.07, 1                     ; 2 uses
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = ptrtoint ptr %i.ce to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 2
  %i.cn = icmp ult i64 %i.ci, %i.cm
  br i1 %i.cn, label %.lr.ph, label %._crit_edge, !llvm.loop !7075
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !6825 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !6826   ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !6853
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !289
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !289
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !6825
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #32
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #33 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !289
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !289
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !6853
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #34
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !6826
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !6825
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !6853
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v21i8.p0(<21 x i8>, ptr captures(none), <21 x i1>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #30

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nounwind memory(none) }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nocallback nofree nosync nounwind willreturn }
attributes #21 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { cold noreturn }
attributes #23 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #27 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #28 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #31 = { noreturn nounwind }
attributes #32 = { noreturn }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { builtin nounwind }
attributes #35 = { nounwind }
attributes #36 = { cold }

!llvm.module.flags = !{!262, !263, !264, !265, !266}
!llvm.ident = !{!267}
!llvm.errno.tbaa = !{!272}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "CroppedArray1DRef<const std::byte>", scope: !330, file: !476, line: 30, size: 192, flags: DIFlagTypePassByValue, elements: !512, templateParams: !514, identifier: "_ZTSN8rawspeed17CroppedArray1DRefIKSt4byteEE")
!1 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "byte", scope: !516, file: !515, line: 69, baseType: !517, size: 8, flags: DIFlagEnumClass, elements: !306, identifier: "_ZTSSt4byte")
!2 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Array1DRef<const std::byte>", scope: !330, file: !440, line: 32, size: 128, flags: DIFlagTypePassByValue, elements: !475, templateParams: !514, identifier: "_ZTSN8rawspeed10Array1DRefIKSt4byteEE")
end_hunk_0
begin_hunk_1_@llvm.masked.gather.v8i32.v8p0
!6852 = !{ptr @_ZN8rawspeed15VC5Decompressor7Wavelet12AbstractBandD2Ev}
!6853 = !{!6824, !6731, i64 16}
!6854 = distinct !{!6854, !291, !292, !293}
!6855 = distinct !{!6855, !291, !292, !293}
!6856 = distinct !{!6856, !291, !292}
!6857 = distinct !{!6857, i1 false, !"LVerDomain"}
!6858 = distinct !{!6858, !6857}
!6859 = distinct !{!6859, !6857}
!6860 = distinct !{!6860, !6857}
!6861 = distinct !{!6861, !6857}
!6862 = distinct !{!6862, !6857}
!6863 = distinct !{!6863, !6857}
!6864 = distinct !{!6864, !291, !292, !293}
!6865 = distinct !{!6865, !291, !292, !293}
!6866 = distinct !{!6866, i1 false, !"LVerDomain"}
!6867 = distinct !{!6867, !6866}
!6868 = distinct !{!6868, !6866}
!6869 = distinct !{!6869, !6866}
!6870 = distinct !{!6870, !6866}
!6871 = distinct !{!6871, !6866}
!6872 = distinct !{!6872, !6866}
!6873 = distinct !{!6873, !291, !292, !293}
!6874 = distinct !{!6874, !291, !292, !293}
!6875 = distinct !{!6875, !291, !292}
!6876 = distinct !{!6876, !291, !292}
!6877 = distinct !{!6877, !291}
!6878 = !{!283, !270, i64 8}
!6879 = !{!6858}
!6880 = !{!6859}
!6881 = !{!6860}
!6882 = !{!6861}
!6883 = !{!6862}
!6884 = !{!6863, !6858, !6861, !6860, !6859}
!6885 = !{!6863}
!6886 = !{!6858, !6861, !6860, !6859}
!6887 = !{!6867}
!6888 = !{!6868}
!6889 = !{!6869}
!6890 = !{!6870}
!6891 = !{!6871}
!6892 = !{!6872, !6867, !6870, !6869, !6868}
!6893 = !{!6872}
!6894 = !{!6867, !6870, !6869, !6868}
!6895 = distinct !{!6895, i1 true, !"_ZN8rawspeed10Array2DRefIsE6createINS_27DefaultInitAllocatorAdaptorIsSaIsEEEEES1_RSt6vectorIsT_Eii"}
!6896 = distinct !{!6896, !6895, !"_ZN8rawspeed10Array2DRefIsE6createINS_27DefaultInitAllocatorAdaptorIsSaIsEEEEES1_RSt6vectorIsT_Eii: argument 0"}
!6897 = !{!6896}
!6898 = !{!295, !282, i64 8}
!6899 = distinct !{!6899, i1 false, !"LVerDomain"}
!6900 = distinct !{!6900, !6899}
!6901 = distinct !{!6901, !6899}
!6902 = distinct !{!6902, !6899}
!6903 = distinct !{!6903, !292, !293}
!6904 = distinct !{!6904, !292, !293}
!6905 = distinct !{!6905, i1 false, !"LVerDomain"}
!6906 = distinct !{!6906, !6905}
!6907 = distinct !{!6907, !6905}
!6908 = distinct !{!6908, !6905}
!6909 = distinct !{!6909, !292, !293}
!6910 = distinct !{!6910, !292, !293}
!6911 = distinct !{!6911, !292}
!6912 = distinct !{!6912, !292}
!6913 = distinct !{!6913, !291}
!6914 = !{!6900}
!6915 = !{!6901}
!6916 = !{!6902}
!6917 = !{!6900, !6901}
!6918 = !{!6906}
!6919 = !{!6907}
!6920 = !{!6908}
!6921 = !{!6906, !6907}
!6922 = distinct !{null, null, null, null, null, null, null, null}
!6923 = distinct !{!6923, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_"}
!6924 = distinct !{!6924, !6923, !"_ZSt19__relocate_object_aISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!6925 = distinct !{!6925, !6923, !"_ZSt19__relocate_object_aISt10unique_ptrIN8rawspeed15VC5Decompressor7Wavelet12AbstractBandESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!6926 = distinct !{!6926, i1 false, !"LVerDomain"}
!6927 = distinct !{!6927, !6926}
!6928 = distinct !{!6928, !6926}
!6929 = distinct !{!6929, !291, !292, !293}
!6930 = distinct !{!6930, !291, !292, !293}
!6931 = distinct !{!6931, !291, !292}
!6932 = distinct !{null, null, null, null, null, null, null, null}
!6933 = distinct !{!6933, !291}
!6934 = !{!6701, !273, i64 0}
!6935 = !{!6770, !6756, i64 553}
!6936 = !{!6770, !270, i64 596}
!6937 = !{!"_ZTSSt10_Head_baseILm0EPN8rawspeed15VC5Decompressor7Wavelet12AbstractBandELb0EE", !318, i64 0}
!6938 = !{!6937, !318, i64 0}
!6939 = !{!6924}
!6940 = !{!6925}
!6941 = !{!6925, !6927}
!6942 = !{!6924, !6928}
!6943 = !{!6927}
!6944 = distinct !{!6944, i1 true, !"_ZN8rawspeed10ByteStream9getStreamEjj"}
!6945 = distinct !{!6945, !6944, !"_ZN8rawspeed10ByteStream9getStreamEjj: argument 0"}
!6946 = distinct !{!6946, i1 true, !"_ZN8rawspeed10ByteStream9getStreamEj"}
!6947 = distinct !{!6947, !6946, !"_ZN8rawspeed10ByteStream9getStreamEj: argument 0"}
!6948 = distinct !{!6948, i1 true, !"_ZNK8rawspeed10ByteStream10peekStreamEj"}
!6949 = distinct !{!6949, !6948, !"_ZNK8rawspeed10ByteStream10peekStreamEj: argument 0"}
!6950 = distinct !{!6950, i1 true, !"_ZNK8rawspeed10ByteStream12getSubStreamEjj"}
!6951 = distinct !{!6951, !6950, !"_ZNK8rawspeed10ByteStream12getSubStreamEjj: argument 0"}
!6952 = distinct !{!6952, !291}
!6953 = distinct !{!6953, !291}
!6954 = !{!6776, !6776, i64 0}
!6955 = !{!6777, !6776, i64 12}
!6956 = !{!6770, !270, i64 40}
!6957 = !{!6770, !270, i64 44}
!6958 = !{!6788, !273, i64 222}
!6959 = !{!6788, !273, i64 224}
!6960 = !{!6788, !273, i64 226}
!6961 = !{!6788, !273, i64 228}
!6962 = !{!6945}
!6963 = !{!6947}
!6964 = !{!6949}
!6965 = !{!6951}
!6966 = !{!6951, !6949, !6947, !6945}
!6967 = !{!6947, !6945}
!6968 = distinct !{null, null, null}
!6969 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !270, i64 8, !270, i64 12}
!6970 = !{!6969, !270, i64 8}
!6971 = !{!6969, !270, i64 12}
!6972 = !{!"_ZTSN12_GLOBAL__N_13RLVE", !269, i64 0, !270, i64 4, !273, i64 8, !273, i64 10}
!6973 = !{!6972, !273, i64 10}
!6974 = !{!6972, !273, i64 8}
!6975 = distinct !{!6975, !291}
!6976 = distinct !{!6976, !291, !292, !293}
!6977 = distinct !{!6977, !291, !292}
!6978 = distinct !{!6978, !291, !292, !293}
!6979 = distinct !{!6979, !291, !292, !293}
!6980 = distinct !{!6980, !291, !292}
!6981 = distinct !{!6981, !291, !292}
!6982 = distinct !{!6982, !291}
!6983 = distinct !{!6983, !291}
!6984 = distinct !{!6984, !291}
!6985 = distinct !{!6985, i1 true, !"_ZSt11make_uniqueIN8rawspeed15VC5Decompressor7Wavelet11LowPassBandEJRS2_RNS0_10ByteStreamERtEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!6986 = distinct !{!6986, !6985, !"_ZSt11make_uniqueIN8rawspeed15VC5Decompressor7Wavelet11LowPassBandEJRS2_RNS0_10ByteStreamERtEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!6987 = distinct !{null, null, null, null}
!6988 = distinct !{!6988, i1 true, !"_ZSt11make_uniqueIN8rawspeed15VC5Decompressor7Wavelet12HighPassBandEJRS2_NS0_10Array1DRefIKhEERNS0_8OptionalINS0_20PrefixCodeLUTDecoderINS0_10VC5CodeTagENS0_23PrefixCodeVectorDecoderISA_EEEEEERsEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!6989 = distinct !{!6989, !6988, !"_ZSt11make_uniqueIN8rawspeed15VC5Decompressor7Wavelet12HighPassBandEJRS2_NS0_10Array1DRefIKhEERNS0_8OptionalINS0_20PrefixCodeLUTDecoderINS0_10VC5CodeTagENS0_23PrefixCodeVectorDecoderISA_EEEEEERsEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!6990 = distinct !{null, null, null, null}
!6991 = distinct !{!6991, i1 true, !"_ZSt11make_uniqueIN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBandEJRS2_RbS5_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!6992 = distinct !{!6992, !6991, !"_ZSt11make_uniqueIN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBandEJRS2_RbS5_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!6993 = distinct !{null, null, null, null}
!6994 = !{!6691, !303, i64 2}
!6995 = !{!6986}
!6996 = !{!6696, !303, i64 2}
!6997 = !{!6989}
!6998 = !{!6835, !6835, i64 0}
!6999 = !{!6992}
!7000 = !{!6682, !303, i64 89}
!7001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AbstractDecodeableBand", scope: !216, file: !325, line: 174, size: 832, flags: DIFlagPublic | DIFlagTypePassByReference | DIFlagNonTrivial, elements: !7017, vtableHolder: !259)
!7002 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "runtime_error", scope: !516, file: !7018, line: 219, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt13runtime_error")
!7003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7001)
!7004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7003, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!7005 = !{!215, !7004}
!7006 = !DISubroutineType(types: !7005)
!7007 = !DISubprogram(name: "decode", linkageName: "_ZNK8rawspeed15VC5Decompressor7Wavelet22AbstractDecodeableBand6decodeEv", scope: !7001, file: !325, line: 179, type: !7006, scopeLine: 179, containingType: !7001, virtualIndex: 4, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!7008 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !7001, baseType: !259, extraData: i32 0)
!7009 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !7001, file: !325, line: 175, baseType: !157, size: 128, offset: 704)
!7010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7001, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!7011 = !{null, !7010, !5374, !157}
!7012 = !DISubroutineType(types: !7011)
!7013 = !DISubprogram(name: "AbstractDecodeableBand", linkageName: "_ZN8rawspeed15VC5Decompressor7Wavelet22AbstractDecodeableBandC4ERS1_NS_10Array1DRefIKhEE", scope: !7001, file: !325, line: 176, type: !7012, scopeLine: 176, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7014 = !{null, !7010, !5385, !371}
!7015 = !DISubroutineType(types: !7014)
!7016 = !DISubprogram(name: "createDecodingTasks", linkageName: "_ZN8rawspeed15VC5Decompressor7Wavelet22AbstractDecodeableBand19createDecodingTasksERNS_8ErrorLogERb", scope: !7001, file: !325, line: 180, type: !7015, scopeLine: 180, containingType: !7001, virtualIndex: 3, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!7017 = !{!7008, !7009, !7013, !7007, !7016}
!7018 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/stdexcept", directory: "")
!7019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7002)
!7020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7019, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!7021 = !{!1006, !7020}
!7022 = !DISubroutineType(types: !7021)
!7023 = !DISubprogram(name: "what", linkageName: "_ZNKSt13runtime_error4whatEv", scope: !7002, file: !7018, line: 249, type: !7022, scopeLine: 249, containingType: !7002, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!7024 = distinct !{!7024, i1 true, !"_ZN8rawspeed10ByteStream9getStreamEj"}
!7025 = distinct !{!7025, !7024, !"_ZN8rawspeed10ByteStream9getStreamEj: argument 0"}
!7026 = distinct !{!7026, i1 true, !"_ZNK8rawspeed10ByteStream10peekStreamEj"}
!7027 = distinct !{!7027, !7026, !"_ZNK8rawspeed10ByteStream10peekStreamEj: argument 0"}
!7028 = !{!7027, !7025}
!7029 = distinct !{!7029, !291}
!7030 = distinct !{!7030, !291}
!7031 = distinct !{!7031, !291, !7044}
!7032 = distinct !{!7032, !291}
!7033 = !{!6836, !6835, i64 104}
!7034 = !{!"p1 _ZTSN8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEEE", !274, i64 0}
!7035 = !{!7034, !7034, i64 0}
!7036 = !{!"_ZTSN8rawspeed28BitStreamCacheRightInLeftOutE", !6841, i64 0}
!7037 = !{!"_ZTSN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEEE", !6846, i64 0}
!7038 = !{!"_ZTSN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEEE", !7036, i64 0, !7037, i64 16}
!7039 = !{!"_ZTSN8rawspeed14BitStreamerMSBE", !7038, i64 0}
!7040 = !{!"_ZTSZNK8rawspeed15VC5Decompressor7Wavelet12HighPassBand6decodeEvE7DeRLVer", !7034, i64 0, !7039, i64 8, !273, i64 48, !273, i64 50, !270, i64 52}
!7041 = !{!7040, !273, i64 48}
!7042 = !{!7040, !273, i64 50}
!7043 = !{!7040, !270, i64 52}
!7044 = !{!"llvm.loop.unswitch.partial.disable"}
!7045 = distinct !{!7045, i1 true, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv"}
!7046 = distinct !{!7046, !7045, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv: argument 0"}
!7047 = distinct !{!7047, i1 false, !"LVerDomain"}
!7048 = distinct !{!7048, !7047}
!7049 = distinct !{!7049, !7047}
!7050 = distinct !{!7050, !7047}
!7051 = distinct !{!7051, !7047}
!7052 = distinct !{!7052, !291, !292, !293}
!7053 = distinct !{!7053, !291}
!7054 = distinct !{!7054, !291, !292}
!7055 = !{!7046}
!7056 = !{!7048}
!7057 = !{!7049}
!7058 = !{!7050}
!7059 = !{!7051}
!7060 = distinct !{!7060, i1 true, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv"}
!7061 = distinct !{!7061, !7060, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv: argument 0"}
!7062 = distinct !{!7062, !291}
!7063 = distinct !{!7063, !291}
!7064 = !{!7061}
!7065 = distinct !{null, null, null, null, null, null, null, null}
!7066 = distinct !{null}
!7067 = distinct !{!7067, i1 true, !"_ZNK8rawspeed10Array1DRefIKSt4byteE7getCropEii"}
!7068 = distinct !{!7068, !7067, !"_ZNK8rawspeed10Array1DRefIKSt4byteE7getCropEii: argument 0"}
!7069 = !{!6845, !270, i64 8}
!7070 = !{!7068}
!7071 = distinct !{!7071, !291}
!7072 = distinct !{!7072, !291}
!7073 = distinct !{!7073, !291}
!7074 = distinct !{!7074, !291}
!7075 = distinct !{!7075, !291}
end_hunk_1
