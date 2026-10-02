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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !6848, !noalias !7054 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.e = load i32, ptr %i.d, align 8, !tbaa !6771, !noalias !7054
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.g = load i32, ptr %i.f, align 8, !tbaa !6849, !noalias !7054
  %i.h = mul nsw i32 %i.g, %i.e                   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.j = load i32, ptr %i.i, align 4, !tbaa !6850, !noalias !7054 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !6851, !noalias !7054
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
  %i.bj = mul nsw i64 %i.bi, %i.av
  %i.bk = shl nuw nsw i64 %wide.trip.count, 2
  %i.bl = add i64 %i.bj, %wide.trip.count
  %i.bm = shl i64 %i.bl, 2                        ; 2 uses
  %i.bn = getelementptr i8, ptr %i.c, i64 %i.bm
  %scevgep = getelementptr i8, ptr %i.bn, i64 -2
  %scevgep357 = getelementptr i8, ptr %i.c, i64 2
  %scevgep358 = getelementptr i8, ptr %i.c, i64 %i.bm ; 4 uses
  %i.bo = shl nuw nsw i64 %i.av, 1                ; 2 uses
  %scevgep359 = getelementptr i8, ptr %i.c, i64 %i.bo ; 4 uses
  %i.bp = shl nuw nsw i64 %wide.trip.count324, 2
  %i.bq = add nsw i64 %i.bp, -2
  %i.br = mul i64 %i.bq, %i.av
  %i.bs = add i64 %i.br, %i.bk                    ; 2 uses
  %i.bt = getelementptr i8, ptr %i.c, i64 %i.bs
  %scevgep360 = getelementptr i8, ptr %i.bt, i64 -2 ; 4 uses
  %i.bu = getelementptr i8, ptr %i.c, i64 %i.bo   ; 2 uses
  %i.bv = insertelement <2 x ptr> poison, ptr %i.bu, i64 0
  %i.bw = insertelement <2 x ptr> %i.bv, ptr %i.c, i64 1
  %i.bx = getelementptr i8, <2 x ptr> %i.bw, i64 2 ; 2 uses
  %i.by = shufflevector <2 x ptr> %i.bx, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 3 uses
  %scevgep361 = getelementptr i8, ptr %i.bu, i64 2 ; 3 uses
  %scevgep362 = getelementptr i8, ptr %i.c, i64 %i.bs ; 4 uses
  %i.bz = mul nsw i64 %i.bi, %i.bg
  %i.ca = shl i64 %i.bz, 1
  %i.cb = and i64 %i.at, 2147483646               ; 4 uses
  %i.cc = getelementptr i8, ptr %.sroa.0257.0.copyload, i64 %i.ca
  %scevgep363 = getelementptr i8, ptr %i.cc, i64 %i.cb ; 4 uses
  %i.cd = mul nsw i64 %i.bi, %i.be
  %i.ce = shl i64 %i.cd, 1
  %i.cf = getelementptr i8, ptr %.sroa.0270.0.copyload, i64 %i.ce
  %scevgep364 = getelementptr i8, ptr %i.cf, i64 %i.cb ; 4 uses
  %i.cg = mul nsw i64 %i.bi, %i.bc
  %i.ch = shl i64 %i.cg, 1
  %i.ci = getelementptr i8, ptr %.sroa.0284.0.copyload, i64 %i.ch
  %scevgep365 = getelementptr i8, ptr %i.ci, i64 %i.cb ; 4 uses
  %i.cj = mul nsw i64 %i.bi, %i.ba
  %i.ck = shl i64 %i.cj, 1
  %i.cl = getelementptr i8, ptr %.sroa.0298.0.copyload, i64 %i.ck
  %scevgep366 = getelementptr i8, ptr %i.cl, i64 %i.cb ; 4 uses
  %i.cm = insertelement <4 x ptr> poison, ptr %i.c, i64 0 ; 2 uses
  %i.cn = shufflevector <4 x ptr> %i.cm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.co = insertelement <4 x ptr> poison, ptr %scevgep358, i64 0 ; 2 uses
  %i.cp = insertelement <4 x ptr> %i.co, ptr %scevgep360, i64 1
  %i.cq = insertelement <4 x ptr> %i.cp, ptr %scevgep362, i64 2
  %i.cr = insertelement <4 x ptr> %i.cq, ptr %scevgep363, i64 3
  %i.cs = insertelement <4 x ptr> poison, ptr %scevgep, i64 0 ; 2 uses
  %i.ct = shufflevector <4 x ptr> %i.cs, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cu = insertelement <4 x ptr> poison, ptr %scevgep364, i64 0
  %i.cv = insertelement <4 x ptr> %i.cu, ptr %scevgep365, i64 1
  %i.cw = insertelement <4 x ptr> %i.cv, ptr %scevgep366, i64 2
  %i.cx = insertelement <4 x ptr> %i.cw, ptr %scevgep360, i64 3
  %i.cy = insertelement <4 x ptr> poison, ptr %.sroa.0270.0.copyload, i64 0
  %i.cz = insertelement <4 x ptr> %i.cy, ptr %.sroa.0284.0.copyload, i64 1
  %i.da = insertelement <4 x ptr> %i.cz, ptr %.sroa.0298.0.copyload, i64 2
  %i.db = insertelement <4 x ptr> %i.da, ptr %scevgep359, i64 3
  %i.dc = insertelement <4 x ptr> %i.cs, ptr %scevgep358, i64 1
  %i.dd = shufflevector <4 x ptr> %i.dc, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.de = insertelement <4 x ptr> %i.co, ptr %scevgep363, i64 1
  %i.df = insertelement <4 x ptr> %i.de, ptr %scevgep364, i64 2
  %i.dg = insertelement <4 x ptr> %i.df, ptr %scevgep365, i64 3
  %i.dh = insertelement <4 x ptr> poison, ptr %.sroa.0257.0.copyload, i64 1
  %i.di = insertelement <4 x ptr> %i.dh, ptr %.sroa.0270.0.copyload, i64 2
  %i.dj = insertelement <4 x ptr> %i.di, ptr %.sroa.0284.0.copyload, i64 3
  %i.dk = insertelement <4 x ptr> poison, ptr %scevgep362, i64 0 ; 2 uses
  %i.dl = insertelement <4 x ptr> %i.dk, ptr %scevgep358, i64 1
  %i.dm = shufflevector <4 x ptr> %i.dl, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %1 = shufflevector <2 x ptr> %i.bx, <2 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.dn = shufflevector <4 x ptr> %i.dj, <4 x ptr> %i.by, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.do = insertelement <4 x ptr> poison, ptr %scevgep361, i64 0
  %i.dp = insertelement <4 x ptr> %i.do, ptr %scevgep359, i64 1
  %i.dq = shufflevector <4 x ptr> %i.dp, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dr = insertelement <4 x ptr> poison, ptr %scevgep360, i64 0 ; 2 uses
  %i.ds = insertelement <4 x ptr> %i.dr, ptr %scevgep363, i64 1
  %i.dt = insertelement <4 x ptr> %i.ds, ptr %scevgep364, i64 2
  %i.du = insertelement <4 x ptr> %i.dt, ptr %scevgep365, i64 3
  %i.dv = insertelement <4 x ptr> poison, ptr %scevgep359, i64 0 ; 2 uses
  %i.dw = insertelement <4 x ptr> %i.dv, ptr %.sroa.0257.0.copyload, i64 1
  %i.dx = insertelement <4 x ptr> %i.dw, ptr %.sroa.0270.0.copyload, i64 2
  %i.dy = insertelement <4 x ptr> %i.dx, ptr %.sroa.0284.0.copyload, i64 3
  %i.dz = insertelement <4 x ptr> %i.dk, ptr %scevgep360, i64 1
  %i.ea = shufflevector <4 x ptr> %i.dz, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.eb = insertelement <4 x ptr> %i.dv, ptr %scevgep361, i64 1
  %i.ec = shufflevector <4 x ptr> %i.eb, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ed = insertelement <4 x ptr> poison, ptr %scevgep366, i64 0
  %i.ee = insertelement <4 x ptr> %i.ed, ptr %scevgep363, i64 1
  %i.ef = insertelement <4 x ptr> %i.ee, ptr %scevgep364, i64 2
  %i.eg = insertelement <4 x ptr> %i.ef, ptr %scevgep365, i64 3
  %i.eh = insertelement <4 x ptr> poison, ptr %.sroa.0298.0.copyload, i64 0
  %i.ei = insertelement <4 x ptr> %i.eh, ptr %.sroa.0257.0.copyload, i64 1
  %i.ej = insertelement <4 x ptr> %i.ei, ptr %.sroa.0270.0.copyload, i64 2
  %i.ek = insertelement <4 x ptr> %i.ej, ptr %.sroa.0284.0.copyload, i64 3
  %i.el = insertelement <4 x ptr> %i.dr, ptr %scevgep362, i64 1
  %i.em = shufflevector <4 x ptr> %i.el, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %min.iters.check = icmp samesign ult i32 %i.h, 32
  %i.en = icmp ult <4 x ptr> %i.cn, %i.cr
  %i.eo = insertelement <4 x ptr> %1, ptr %scevgep359, i64 1
  %i.ep = insertelement <4 x ptr> %i.eo, ptr %.sroa.0257.0.copyload, i64 3
  %i.eq = icmp ult <4 x ptr> %i.ep, %i.ct
  %i.er = and <4 x i1> %i.en, %i.eq
  %2 = shufflevector <4 x ptr> %i.cm, <4 x ptr> %i.by, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.es = icmp ult <4 x ptr> %2, %i.cx
  %i.et = icmp ult <4 x ptr> %i.db, %i.dd
  %i.eu = and <4 x i1> %i.es, %i.et
  %i.ev = icmp ult <4 x ptr> %i.dn, %i.dm
  %i.ew = icmp ult <4 x ptr> %i.by, %i.dg
  %i.ex = and <4 x i1> %i.ew, %i.ev
  %bound0410 = icmp ult ptr %scevgep357, %scevgep366
  %bound1411 = icmp ult ptr %.sroa.0298.0.copyload, %scevgep358
  %found.conflict412 = and i1 %bound0410, %bound1411
  %i.ey = icmp ult <4 x ptr> %i.dy, %i.ea
  %i.ez = icmp ult <4 x ptr> %i.dq, %i.du
  %i.fa = and <4 x i1> %i.ez, %i.ey
  %i.fb = icmp ult <4 x ptr> %i.ec, %i.eg
  %i.fc = icmp ult <4 x ptr> %i.ek, %i.em
  %i.fd = and <4 x i1> %i.fb, %i.fc
  %bound0446 = icmp ult ptr %scevgep361, %scevgep366
  %bound1447 = icmp ult ptr %.sroa.0298.0.copyload, %scevgep362
  %found.conflict448 = and i1 %bound0446, %bound1447
  %rdx.op = or <4 x i1> %i.er, %i.eu
  %rdx.op468 = or <4 x i1> %rdx.op, %i.ex
  %rdx.op469 = or <4 x i1> %rdx.op468, %i.fa
  %rdx.op470 = or <4 x i1> %rdx.op469, %i.fd
  %i.fe = bitcast <4 x i1> %rdx.op470 to i4
  %i.ff = icmp ne i4 %i.fe, 0
  %op.rdx = or i1 %i.ff, %found.conflict412
  %op.rdx471 = or i1 %op.rdx, %found.conflict448
  %n.vec = and i64 %wide.trip.count, 1073741816   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader309

.preheader309:                                    ; preds = %.preheader309.lr.ph.split, %._crit_edge
  %indvars.iv321 = phi i64 [ 0, %.preheader309.lr.ph.split ], [ %indvars.iv.next322, %._crit_edge ] ; 10 uses
  %i.fg = icmp samesign ult i64 %indvars.iv321, %i.bh
  tail call void @llvm.assume(i1 %i.fg)
  %i.fh = mul nuw nsw i64 %indvars.iv321, %i.bg
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0257.0.copyload, i64 %i.fh ; 2 uses
  %i.fj = icmp samesign ult i64 %indvars.iv321, %i.bf
  tail call void @llvm.assume(i1 %i.fj)
  %i.fk = mul nuw nsw i64 %indvars.iv321, %i.be
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0270.0.copyload, i64 %i.fk ; 2 uses
  %i.fm = icmp samesign ult i64 %indvars.iv321, %i.bd
  tail call void @llvm.assume(i1 %i.fm)
  %i.fn = mul nuw nsw i64 %indvars.iv321, %i.bc
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0284.0.copyload, i64 %i.fn ; 2 uses
  %i.fp = icmp samesign ult i64 %indvars.iv321, %i.bb
  tail call void @llvm.assume(i1 %i.fp)
  %i.fq = mul nuw nsw i64 %indvars.iv321, %i.ba
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0298.0.copyload, i64 %i.fq ; 2 uses
  %i.fs = shl nuw nsw i64 %indvars.iv321, 1       ; 2 uses
  %i.ft = mul nuw nsw i64 %i.fs, %i.av
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ft ; 3 uses
  %i.fv = or disjoint i64 %i.fs, 1                ; 2 uses
  %i.fw = icmp samesign ult i64 %i.fv, %i.au
  tail call void @llvm.assume(i1 %i.fw)
  %i.fx = mul nuw nsw i64 %i.fv, %i.av
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fx ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx471
  br i1 %brmerge, label %.preheader.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader309, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader309 ] ; 5 uses
  %i.fz = phi i64 [ %i.hh, %vector.body ], [ 0, %.preheader309 ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.fi, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ga, align 2, !tbaa !290, !alias.scope !7055
  %i.gb = sext <8 x i16> %wide.load to <8 x i32>  ; 3 uses
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %index
  %wide.load458 = load <8 x i16>, ptr %i.gc, align 2, !tbaa !290, !alias.scope !7056
  %i.gd = sext <8 x i16> %wide.load458 to <8 x i32>
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %index
  %wide.load459 = load <8 x i16>, ptr %i.ge, align 2, !tbaa !290, !alias.scope !7057
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %index
  %i.gg = sext <8 x i16> %wide.load459 to <8 x i32>
  %wide.load460 = load <8 x i16>, ptr %i.gf, align 2, !tbaa !290, !alias.scope !7058
  %i.gh = sext <8 x i16> %wide.load460 to <8 x i32>
  %i.gi = add nsw <8 x i32> %i.gh, splat (i32 -2048) ; 2 uses
  %i.gj = shl nsw <8 x i32> %i.gd, splat (i32 1)
  %i.gk = add nsw <8 x i32> %i.gb, splat (i32 -4096) ; 2 uses
  %i.gl = add nsw <8 x i32> %i.gk, %i.gj
  %i.gm = shl nsw <8 x i32> %i.gg, splat (i32 1)
  %i.gn = add nsw <8 x i32> %i.gk, %i.gm
  %i.go = add nsw <8 x i32> %i.gi, %i.gb
  %i.gp = sub nsw <8 x i32> %i.gb, %i.gi
  %i.gq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gl, <8 x i32> zeroinitializer)
  %i.gr = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gq, <8 x i32> splat (i32 4095))
  %i.gs = zext nneg <8 x i32> %i.gr to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.as, <8 x i64> %i.gs
  %wide.masked.gather = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !289
  %i.gt = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.go, <8 x i32> zeroinitializer)
  %i.gu = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gt, <8 x i32> splat (i32 4095))
  %i.gv = zext nneg <8 x i32> %i.gu to <8 x i64>
  %wide.gep461 = getelementptr inbounds nuw [4 x i8], ptr %i.as, <8 x i64> %i.gv
  %wide.masked.gather462 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep461, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !289
  %i.gw = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gp, <8 x i32> zeroinitializer)
  %i.gx = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gw, <8 x i32> splat (i32 4095))
  %i.gy = zext nneg <8 x i32> %i.gx to <8 x i64>
  %wide.gep463 = getelementptr inbounds nuw [4 x i8], ptr %i.as, <8 x i64> %i.gy
  %wide.masked.gather464 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep463, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !289
  %i.gz = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gn, <8 x i32> zeroinitializer)
  %i.ha = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gz, <8 x i32> splat (i32 4095))
  %i.hb = zext nneg <8 x i32> %i.ha to <8 x i64>
  %wide.gep465 = getelementptr inbounds nuw [4 x i8], ptr %i.as, <8 x i64> %i.hb
  %wide.masked.gather466 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep465, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !289
  %i.hc = shl nuw nsw i64 %i.fz, 1                ; 2 uses
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %i.hc
  %i.he = shufflevector <8 x i32> %wide.masked.gather, <8 x i32> %wide.masked.gather462, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec = trunc <16 x i32> %i.he to <16 x i16>
  store <16 x i16> %interleaved.vec, ptr %i.hd, align 2, !tbaa !290
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.fy, i64 %i.hc
  %i.hg = shufflevector <8 x i32> %wide.masked.gather464, <8 x i32> %wide.masked.gather466, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec467 = trunc <16 x i32> %i.hg to <16 x i16>
  store <16 x i16> %interleaved.vec467, ptr %i.hf, align 2, !tbaa !290
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hh = add nuw nsw i64 %i.fz, 8
  %i.hi = icmp eq i64 %index.next, %n.vec
  br i1 %i.hi, label %middle.block, label %vector.body, !llvm.loop !7051

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
  br i1 %exitcond325.not, label %._crit_edge315.split, label %.preheader309, !llvm.loop !7052

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader ] ; 10 uses
  %i.hj = icmp samesign ult i64 %indvars.iv, %i.aw
  tail call void @llvm.assume(i1 %i.hj)
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.fi, i64 %indvars.iv
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !290
  %i.hm = sext i16 %i.hl to i32                   ; 3 uses
  %i.hn = icmp samesign ult i64 %indvars.iv, %i.ax
  tail call void @llvm.assume(i1 %i.hn)
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %indvars.iv
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !290
  %i.hq = sext i16 %i.hp to i32
  %i.hr = icmp samesign ult i64 %indvars.iv, %i.ay
  tail call void @llvm.assume(i1 %i.hr)
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %indvars.iv
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !290
  %i.hu = icmp samesign ult i64 %indvars.iv, %i.az
  tail call void @llvm.assume(i1 %i.hu)
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %indvars.iv
  %i.hw = sext i16 %i.ht to i32
  %i.hx = load i16, ptr %i.hv, align 2, !tbaa !290
  %i.hy = sext i16 %i.hx to i32
  %i.hz = add nsw i32 %i.hy, -2048                ; 2 uses
  %i.ia = shl nsw i32 %i.hq, 1
  %i.ib = add nsw i32 %i.hm, -4096                ; 2 uses
  %i.ic = add nsw i32 %i.ib, %i.ia
  %i.id = shl nsw i32 %i.hw, 1
  %i.ie = add nsw i32 %i.ib, %i.id
  %i.if = add nsw i32 %i.hz, %i.hm
  %i.ig = sub nsw i32 %i.hm, %i.hz
  %.sroa.speculate.load.false.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %i.ic, i32 0)
  %i.ih = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.i, i32 4095)
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !289
  %.sroa.speculate.load.false.sroa.speculated.i.i.1 = tail call i32 @llvm.smax.i32(i32 %i.if, i32 0)
  %i.il = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.i.1, i32 4095)
  %i.im = zext nneg i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !289
  %.sroa.speculate.load.false.sroa.speculated.i.i.2 = tail call i32 @llvm.smax.i32(i32 %i.ig, i32 0)
  %i.ip = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.i.2, i32 4095)
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !289
  %.sroa.speculate.load.false.sroa.speculated.i.i.3 = tail call i32 @llvm.smax.i32(i32 %i.ie, i32 0)
  %i.it = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.i.3, i32 4095)
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !289
  %i.ix = shl nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %i.ix
  %i.iz = trunc i32 %i.ik to i16
  store i16 %i.iz, ptr %i.iy, align 2, !tbaa !290
  %i.ja = or disjoint i64 %i.ix, 1                ; 3 uses
  %i.jb = icmp samesign ult i64 %i.ja, %i.at
  tail call void @llvm.assume(i1 %i.jb)
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %i.ja
  %i.jd = trunc i32 %i.io to i16
  store i16 %i.jd, ptr %i.jc, align 2, !tbaa !290
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.fy, i64 %i.ix
  %i.jf = trunc i32 %i.is to i16
  store i16 %i.jf, ptr %i.je, align 2, !tbaa !290
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.fy, i64 %i.ja
  %i.jh = trunc i32 %i.iw to i16
  store i16 %i.jh, ptr %i.jg, align 2, !tbaa !290
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !7053
end_hunk_0
