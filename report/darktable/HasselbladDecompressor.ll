Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/HasselbladDecompressor?download=true
inline.NumInlined: 423
inline.NumDeleted: 286
begin_hunk_0_@_ZN8rawspeed8RawImageD2Ev:bb.a
bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !112

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -7, -2147483648) i32 @_ZN8rawspeed22HasselbladDecompressor10decompressEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i95 = alloca i32, align 4        ; 5 uses
  %.sroa.0.i.i.i.i = alloca i32, align 4          ; 5 uses
  %.sroa.0.i.i47 = alloca i32, align 4            ; 5 uses
  %.sroa.0.i.i = alloca i32, align 4              ; 5 uses
  %1 = alloca %"class.rawspeed::PrefixCodeLUTDecoder", align 8 ; 21 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !154, !noalias !155
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.e = load i32, ptr %i.d, align 8, !tbaa !92, !noalias !155
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.g = load i32, ptr %i.f, align 8, !tbaa !156, !noalias !155
  %i.h = mul nsw i32 %i.g, %i.e                   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.j = load i32, ptr %i.i, align 4, !tbaa !157, !noalias !155 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !158, !noalias !155
  %i.m = ashr i32 %i.l, 1                         ; 2 uses
  %i.n = icmp sge i32 %i.m, %i.h
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp sgt i32 %i.j, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ne i32 %i.h, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = and i32 %i.h, 1
  %i.r = icmp eq i32 %i.q, 0
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !163, !nonnull !97, !align !98
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !96, !nonnull !97, !align !98 ; 3 uses
  call void @_ZN8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(152) %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 136 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !164  ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !114  ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i.i, label %.noexc4.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !112

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc.i unwind label %bb.f

.noexc.i:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #21
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc4.i_crit_edge unwind label %bb.f

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc4.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !115 ; 2 uses
  %.pre347 = load ptr, ptr %i.x, align 8, !tbaa !115
  %.pre352 = ptrtoint ptr %.pre347 to i64
  %.pre353 = ptrtoint ptr %.pre to i64
  br label %.noexc4.i

.noexc4.i:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc4.i_crit_edge, %bb.a
  %.pre-phi354 = phi i64 [ %.pre353, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc4.i_crit_edge ], [ %i.ab, %bb.a ]
  %.pre-phi = phi i64 [ %.pre352, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc4.i_crit_edge ], [ %i.aa, %bb.a ]
  %i.af = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc4.i_crit_edge ], [ %i.z, %bb.a ] ; 2 uses
  %i.ag = phi ptr [ %i.ae, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc4.i_crit_edge ], [ null, %bb.a ] ; 10 uses
  store ptr %i.ag, ptr %i.v, align 8, !tbaa !114
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !164
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ac
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !116
  %i.ak = sub i64 %.pre-phi, %.pre-phi354         ; 4 uses
  %i.al = icmp sgt i64 %i.ak, 4
  br i1 %i.al, label %bb.c, label %bb.d, !prof !117

bb.c:                                             ; preds = %.noexc4.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ag, ptr align 4 %i.af, i64 %i.ak, i1 false)
  br label %_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEEC2ERKS4_.exit

bb.d:                                             ; preds = %.noexc4.i
  %i.am = icmp eq i64 %i.ak, 4
  br i1 %i.am, label %bb.e, label %_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEEC2ERKS4_.exit

bb.e:                                             ; preds = %bb.d
  %i.an = load i32, ptr %i.af, align 4, !tbaa !22
  store i32 %i.an, ptr %i.ag, align 4, !tbaa !22
  br label %_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEEC2ERKS4_.exit

common.resume:                                    ; preds = %bb.ax, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ao, %bb.f ], [ %.pn.pn.pn, %bb.ax ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(152) %1) #19
  br label %common.resume

_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEEC2ERKS4_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.ap = getelementptr inbounds i8, ptr %i.ag, i64 %i.ak
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !164
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !21 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !21 ; 2 uses
  %i.au = icmp eq ptr %i.ar, %i.at
  br i1 %i.au, label %_ZNK8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE29verifyCodeValuesAsDiffLengthsEv.exit, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 1 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.at
  br i1 %i.aw, label %_ZNK8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE29verifyCodeValuesAsDiffLengthsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEEC2ERKS4_.exit, %bb.g
  %.sroa.04.07.i = phi ptr [ %i.av, %bb.g ], [ %i.ar, %_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEEC2ERKS4_.exit ] ; 2 uses
  %i.ax = load i8, ptr %.sroa.04.07.i, align 1, !tbaa !111 ; 2 uses
  %i.ay = icmp ult i8 %i.ax, 17
  br i1 %i.ay, label %bb.g, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.az = zext i8 %i.ax to i32
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE29verifyCodeValuesAsDiffLengthsEv, i32 noundef %i.az, i32 noundef 16) #14
          to label %.noexc40 unwind label %bb.at

.noexc40:                                         ; preds = %bb.h
  unreachable

_ZNK8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE29verifyCodeValuesAsDiffLengthsEv.exit: ; preds = %bb.g, %_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEEC2ERKS4_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.ba, align 8, !tbaa !21 ; 8 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !22 ; 15 uses
  %i.bb = icmp sgt i32 %.sroa.2.0.copyload, -1
  call void @llvm.assume(i1 %i.bb)
  %i.bc = icmp samesign ult i32 %.sroa.2.0.copyload, 4
  br i1 %i.bc, label %bb.am, label %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader

_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader: ; preds = %_ZNK8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE29verifyCodeValuesAsDiffLengthsEv.exit
  %i.bd = load ptr, ptr %i.s, align 8, !tbaa !163, !nonnull !97, !align !98
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = icmp sgt i32 %i.h, 0
  %i.bg = add nuw nsw i32 %.sroa.2.0.copyload, 8  ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  br i1 %i.bf, label %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.split.us, label %.split337.us

_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.split.us: ; preds = %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bl = zext nneg i32 %i.h to i64
  %i.bm = zext i32 %i.m to i64
  %wide.trip.count = zext nneg i32 %i.j to i64
  %.pre348 = load ptr, ptr %i.bk, align 8
  %.pre349 = load ptr, ptr %i.bh, align 8
  %.pre350 = load ptr, ptr %i.bi, align 8         ; 4 uses
  %.pre351 = load ptr, ptr %i.bj, align 8         ; 2 uses
  %i.bn = ptrtoint ptr %.pre348 to i64
  %i.bo = ptrtoint ptr %.pre349 to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 2
  %i.br = add nsw i64 %i.bq, -1                   ; 5 uses
  %i.bs = icmp ugt i64 %i.br, 11                  ; 2 uses
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.split.us, %._crit_edge.us
  %indvars.iv344 = phi i64 [ 0, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.split.us ], [ %indvars.iv.next345, %._crit_edge.us ] ; 2 uses
  %.sroa.0121.0321.us = phi i64 [ 0, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.split.us ], [ %.sroa.0121.13.us, %._crit_edge.us ]
  %.sroa.28.0320.us = phi i32 [ 0, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.split.us ], [ %.sroa.28.13.us, %._crit_edge.us ]
  %.sroa.75160.0319.us = phi i32 [ 0, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.split.us ], [ %.sroa.75160.7.us, %._crit_edge.us ]
  %i.bt = load i16, ptr %i.be, align 8, !tbaa !165
  %i.bu = zext i16 %i.bt to i32                   ; 2 uses
  %i.bv = mul nuw nsw i64 %indvars.iv344, %i.bm
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.bv ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph.us, %bb.al
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.al ] ; 3 uses
  %.016315.us = phi i32 [ %i.bu, %.lr.ph.us ], [ %i.jd, %bb.al ]
  %.017314.us = phi i32 [ %i.bu, %.lr.ph.us ], [ %i.hw, %bb.al ]
  %.sroa.0121.1313.us = phi i64 [ %.sroa.0121.0321.us, %.lr.ph.us ], [ %.sroa.0121.13.us, %bb.al ] ; 2 uses
  %.sroa.28.1312.us = phi i32 [ %.sroa.28.0320.us, %.lr.ph.us ], [ %.sroa.28.13.us, %bb.al ] ; 5 uses
  %.sroa.75160.1311.us = phi i32 [ %.sroa.75160.0319.us, %.lr.ph.us ], [ %.sroa.75160.7.us, %bb.al ] ; 5 uses
  %i.bx = icmp samesign ult i32 %.sroa.28.1312.us, 65
  call void @llvm.assume(i1 %i.bx)
  %.not.i43.us = icmp samesign ult i32 %.sroa.28.1312.us, 32
  br i1 %.not.i43.us, label %bb.j, label %.noexc.us

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.by = add nuw nsw i32 %.sroa.75160.1311.us, 4 ; 2 uses
  %.not.i.i.us = icmp samesign ugt i32 %i.by, %.sroa.2.0.copyload
  br i1 %.not.i.i.us, label %bb.l, label %bb.k, !prof !112

bb.k:                                             ; preds = %bb.j
  %i.bz = zext nneg i32 %.sroa.75160.1311.us to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.bz
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.us

bb.l:                                             ; preds = %bb.j
  %i.cb = icmp samesign ugt i32 %.sroa.75160.1311.us, %i.bg
  br i1 %i.cb, label %.split.us, label %bb.m, !prof !112

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %.sroa.0.i.i, align 4
  %.sroa.speculated27.i.i.i.us = call i32 @llvm.umin.i32(i32 %.sroa.2.0.copyload, i32 %.sroa.75160.1311.us) ; 3 uses
  %i.cc = add nuw nsw i32 %.sroa.speculated27.i.i.i.us, 4
  %.sroa.speculated.i.i.i.us = call i32 @llvm.umin.i32(i32 %.sroa.2.0.copyload, i32 %i.cc)
  %i.cd = sub nsw i32 %.sroa.speculated.i.i.i.us, %.sroa.speculated27.i.i.i.us ; 2 uses
  %i.ce = icmp samesign ult i32 %i.cd, 5
  call void @llvm.assume(i1 %i.ce)
  %i.cf = zext nneg i32 %.sroa.speculated27.i.i.i.us to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.cf
  %i.ch = zext nneg i32 %i.cd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i, ptr align 1 %i.cg, i64 %i.ch, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.us

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.us: ; preds = %bb.m, %bb.k
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.us = phi ptr [ %.sroa.0.i.i, %bb.m ], [ %i.ca, %bb.k ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.us = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.us, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.ci = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.us to i64
  %i.cj = or disjoint i32 %.sroa.28.1312.us, 32
  %i.ck = sub nuw nsw i32 32, %.sroa.28.1312.us
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = shl nuw i64 %i.ci, %i.cl
  %i.cn = or i64 %i.cm, %.sroa.0121.1313.us
  br label %.noexc.us

.noexc.us:                                        ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.us, %bb.i
  %.sroa.75160.2.us = phi i32 [ %i.by, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.us ], [ %.sroa.75160.1311.us, %bb.i ] ; 6 uses
  %.sroa.28.6.us = phi i32 [ %i.cj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.us ], [ %.sroa.28.1312.us, %bb.i ]
  %.sroa.0121.6.us = phi i64 [ %i.cn, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.us ], [ %.sroa.0121.1313.us, %bb.i ] ; 2 uses
  %i.co = and i32 %.sroa.75160.2.us, 3
  %i.cp = icmp eq i32 %i.co, 0
  call void @llvm.assume(i1 %i.cp)
  %i.cq = lshr i64 %.sroa.0121.6.us, 53           ; 3 uses
  %i.cr = trunc nuw nsw i64 %i.cq to i32          ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.cq
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !22 ; 4 uses
  %i.cu = ashr i32 %i.ct, 9                       ; 2 uses
  %i.cv = and i32 %i.ct, 255                      ; 4 uses
  %i.cw = icmp samesign ult i32 %i.cv, 33
  call void @llvm.assume(i1 %i.cw)
  %i.cx = sub nuw nsw i32 %.sroa.28.6.us, %i.cv   ; 3 uses
  %i.cy = zext nneg i32 %i.cv to i64
  %i.cz = shl i64 %.sroa.0121.6.us, %i.cy         ; 3 uses
  %i.da = and i32 %i.ct, 256
  %.not.i.us = icmp eq i32 %i.da, 0
  br i1 %.not.i.us, label %bb.n, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE15decodeCodeValueINS_16BitStreamerMSB32EEEiRT_.exit26.us

bb.n:                                             ; preds = %.noexc.us
  %.not17.i.us = icmp eq i32 %i.ct, 0
  br i1 %.not17.i.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.db = trunc i32 %i.cu to i8
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.dc = icmp eq i32 %i.cv, 0
  call void @llvm.assume(i1 %i.dc)
  %i.dd = add nsw i32 %i.cx, -11                  ; 2 uses
  %i.de = shl i64 %i.cz, 11                       ; 2 uses
  %.sroa.0.018.i.us = trunc nuw nsw i64 %i.cq to i16 ; 2 uses
  br i1 %i.bs, label %.lr.ph.i45.us, label %.critedge.i.us

.lr.ph.i45.us:                                    ; preds = %bb.p, %.critedge2.i.us
  %.sroa.28.8.us = phi i32 [ %i.do, %.critedge2.i.us ], [ %i.dd, %bb.p ] ; 4 uses
  %.sroa.0121.8.us = phi i64 [ %i.dp, %.critedge2.i.us ], [ %i.de, %bb.p ] ; 3 uses
  %i.df = phi i64 [ %i.du, %.critedge2.i.us ], [ 11, %bb.p ] ; 2 uses
  %.sroa.0.021.i.us = phi i16 [ %.sroa.0.0.i.us, %.critedge2.i.us ], [ %.sroa.0.018.i.us, %bb.p ] ; 2 uses
  %.sroa.8.020.i.us = phi i8 [ %i.dt, %.critedge2.i.us ], [ 11, %bb.p ] ; 2 uses
  %.sroa.0.0.in19.i.us = phi i32 [ %i.ds, %.critedge2.i.us ], [ %i.cr, %bb.p ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %.pre350, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !118 ; 2 uses
  %i.di = icmp eq i16 %i.dh, -1
  %i.dj = icmp ult i16 %i.dh, %.sroa.0.021.i.us
  %or.cond.i.us = select i1 %i.di, i1 true, i1 %i.dj
  br i1 %or.cond.i.us, label %.critedge2.i.us, label %.critedge.i.us.loopexit

.critedge2.i.us:                                  ; preds = %.lr.ph.i45.us
  %i.dk = icmp samesign ult i32 %.sroa.28.8.us, 65
  call void @llvm.assume(i1 %i.dk)
  %i.dl = icmp ne i32 %.sroa.28.8.us, 0
  call void @llvm.assume(i1 %i.dl)
  %i.dm = lshr i64 %.sroa.0121.8.us, 63
  %i.dn = trunc nuw nsw i64 %i.dm to i32
  %i.do = add nsw i32 %.sroa.28.8.us, -1          ; 2 uses
  %i.dp = shl i64 %.sroa.0121.8.us, 1             ; 2 uses
  %i.dq = shl nsw i32 %.sroa.0.0.in19.i.us, 1
  %i.dr = and i32 %i.dq, 131070
  %i.ds = or disjoint i32 %i.dr, %i.dn            ; 3 uses
  %i.dt = add i8 %.sroa.8.020.i.us, 1             ; 3 uses
  %.sroa.0.0.i.us = trunc i32 %i.ds to i16        ; 2 uses
  %i.du = zext i8 %i.dt to i64                    ; 3 uses
  %i.dv = icmp ugt i64 %i.br, %i.du
  br i1 %i.dv, label %.lr.ph.i45.us, label %.critedge.i.us.loopexit, !llvm.loop !151

.critedge.i.us.loopexit:                          ; preds = %.critedge2.i.us, %.lr.ph.i45.us
  %.sroa.28.7.us.ph = phi i32 [ %i.do, %.critedge2.i.us ], [ %.sroa.28.8.us, %.lr.ph.i45.us ]
  %.sroa.0121.7.us.ph = phi i64 [ %i.dp, %.critedge2.i.us ], [ %.sroa.0121.8.us, %.lr.ph.i45.us ]
  %.sroa.0.0.in.lcssa.i.us.ph = phi i32 [ %i.ds, %.critedge2.i.us ], [ %.sroa.0.0.in19.i.us, %.lr.ph.i45.us ]
  %.sroa.8.0.lcssa.i.us.ph = phi i8 [ %i.dt, %.critedge2.i.us ], [ %.sroa.8.020.i.us, %.lr.ph.i45.us ]
  %.sroa.0.0.lcssa.i.us.ph = phi i16 [ %.sroa.0.0.i.us, %.critedge2.i.us ], [ %.sroa.0.021.i.us, %.lr.ph.i45.us ]
  %.lcssa17.i.us.ph = phi i64 [ %i.du, %.critedge2.i.us ], [ %i.df, %.lr.ph.i45.us ]
  %i.dw = zext i8 %.sroa.8.0.lcssa.i.us.ph to i32
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.loopexit, %bb.p
  %.sroa.28.7.us = phi i32 [ %i.dd, %bb.p ], [ %.sroa.28.7.us.ph, %.critedge.i.us.loopexit ]
  %.sroa.0121.7.us = phi i64 [ %i.de, %bb.p ], [ %.sroa.0121.7.us.ph, %.critedge.i.us.loopexit ]
  %.sroa.0.0.in.lcssa.i.us = phi i32 [ %i.cr, %bb.p ], [ %.sroa.0.0.in.lcssa.i.us.ph, %.critedge.i.us.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i.us = phi i32 [ 11, %bb.p ], [ %i.dw, %.critedge.i.us.loopexit ]
  %.sroa.0.0.lcssa.i.us = phi i16 [ %.sroa.0.018.i.us, %bb.p ], [ %.sroa.0.0.lcssa.i.us.ph, %.critedge.i.us.loopexit ]
  %.lcssa17.i.us = phi i64 [ 11, %bb.p ], [ %.lcssa17.i.us.ph, %.critedge.i.us.loopexit ] ; 3 uses
  %i.dx = icmp ult i64 %i.br, %.lcssa17.i.us
  br i1 %i.dx, label %.split324.us, label %bb.q

bb.q:                                             ; preds = %.critedge.i.us
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %.pre350, i64 %.lcssa17.i.us
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !118
  %i.ea = icmp ult i16 %i.dz, %.sroa.0.0.lcssa.i.us
  br i1 %i.ea, label %.split324.us, label %.noexc31.us

.noexc31.us:                                      ; preds = %bb.q
  %.sroa.0.0.mask.i.us = and i32 %.sroa.0.0.in.lcssa.i.us, 65535
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %.pre351, i64 %.lcssa17.i.us
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !118
  %.tr.i.us = zext i16 %i.ec to i32
  %.narrow.i.us = sub nsw i32 %.sroa.0.0.mask.i.us, %.tr.i.us
  %i.ed = zext i32 %.narrow.i.us to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !111
  br label %bb.r

bb.r:                                             ; preds = %.noexc31.us, %bb.o
  %.0278.us = phi i8 [ %i.ef, %.noexc31.us ], [ %i.db, %bb.o ]
  %.sroa.28.2.us = phi i32 [ %.sroa.28.7.us, %.noexc31.us ], [ %i.cx, %bb.o ]
  %.sroa.0121.2.us = phi i64 [ %.sroa.0121.7.us, %.noexc31.us ], [ %i.cz, %bb.o ]
  %i.eg = zext i8 %.0278.us to i32
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE15decodeCodeValueINS_16BitStreamerMSB32EEEiRT_.exit26.us

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE15decodeCodeValueINS_16BitStreamerMSB32EEEiRT_.exit26.us: ; preds = %bb.r, %.noexc.us
  %.sroa.28.3.us = phi i32 [ %.sroa.28.2.us, %bb.r ], [ %i.cx, %.noexc.us ] ; 5 uses
  %.sroa.0121.3.us = phi i64 [ %.sroa.0121.2.us, %bb.r ], [ %i.cz, %.noexc.us ] ; 2 uses
  %.0.i.us = phi i32 [ %i.eg, %bb.r ], [ %i.cu, %.noexc.us ] ; 7 uses
  %i.eh = icmp samesign ult i32 %.sroa.28.3.us, 65
  call void @llvm.assume(i1 %i.eh)
  %.not.i48.us = icmp samesign ult i32 %.sroa.28.3.us, 32
  br i1 %.not.i48.us, label %bb.s, label %.noexc37.us

bb.s:                                             ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE15decodeCodeValueINS_16BitStreamerMSB32EEEiRT_.exit26.us
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i47)
  %i.ei = add nuw nsw i32 %.sroa.75160.2.us, 4    ; 2 uses
  %.not.i.i49.us = icmp samesign ugt i32 %i.ei, %.sroa.2.0.copyload
  br i1 %.not.i.i49.us, label %bb.u, label %bb.t, !prof !112

bb.t:                                             ; preds = %bb.s
  %i.ej = zext nneg i32 %.sroa.75160.2.us to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ej
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i51.us

bb.u:                                             ; preds = %bb.s
  %i.el = icmp samesign ugt i32 %.sroa.75160.2.us, %i.bg
  br i1 %i.el, label %.split335.us.invoke, label %bb.v, !prof !112

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %.sroa.0.i.i47, align 4
  %.sroa.speculated27.i.i.i56.us = call i32 @llvm.umin.i32(i32 %.sroa.2.0.copyload, i32 %.sroa.75160.2.us) ; 3 uses
end_hunk_0
