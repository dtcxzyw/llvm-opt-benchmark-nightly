Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/JxlImageLoader?download=true
inline.NumInlined: 13387
inline.NumDeleted: 3680
loop-unroll.NumCompletelyUnrolled: 117
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 151
begin_hunk_0_@_ZN3tev9ImageDataaSEOS0_:bb.a
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !365  ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not6.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.f, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -24 ; 4 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.i = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.k = load i64, ptr %i.f, align 8
  %i.l = and i64 %i.k, -2
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.l) #42
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !364
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i, %bb.b
  %i.m = phi ptr [ %.pre.i.i.i, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !365
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !350
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.r) #42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit: ; preds = %bb.a, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i
  %i.s = load <2 x ptr>, ptr %i.b, align 8, !tbaa !350
  store <2 x ptr> %i.s, ptr %i.a, align 8, !tbaa !350
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !350
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.u, ptr %i.v, align 8, !tbaa !350
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.w, ptr noundef nonnull align 8 dereferenceable(44) %i.x, i64 44, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !352 ; 5 uses
  %.not.i.i.i7 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i7, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !338 ; 2 uses
  %.not.i1.i.i.i.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i1.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.0.i2.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.ac, %bb.d ]
  %i.ad = getelementptr inbounds i8, ptr %.0.i2.i.i.i.i.i, i64 -96 ; 3 uses
  tail call void @_ZN3tev13AttributeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.ad) #38, !inline_history !61
  %.not.i.i.i.i.i.i8 = icmp eq ptr %i.aa, %i.ad
  br i1 %.not.i.i.i.i.i.i8, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i9 = load ptr, ptr %i.y, align 8, !tbaa !352
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i, %bb.d
  %i.ae = phi ptr [ %.pre.i.i.i9, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i ], [ %i.aa, %bb.d ] ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !338
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !339
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.aj) #42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i
  %i.ak = load <2 x ptr>, ptr %i.z, align 8, !tbaa !339
  store <2 x ptr> %i.ak, ptr %i.y, align 8, !tbaa !339
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !339
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.am, ptr %i.an, align 8, !tbaa !339
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ao, ptr noundef nonnull align 8 dereferenceable(136) %i.ap, i64 136, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 8
  %i.as = trunc i8 %i.ar to i1
  br i1 %i.as, label %bb.e, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit

bb.e:                                             ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !103
  %i.av = load i64, ptr %i.aq, align 8
  %i.aw = and i64 %i.av, -2
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.aw) #42
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit: ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit, %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !tbaa.struct !186
  store i8 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 257
  store i8 0, ptr %i.ay, align 1, !tbaa !103
  ret ptr %0
}

declare void @_ZNSt11logic_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE18__insert_with_sizeB8ne180100INS_11__wrap_iterIPS2_EES9_EES9_NS7_IPKS2_EET_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3, i64 noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::__1::__overload", align 1 ; 3 uses
  %6 = alloca %"struct.std::__1::__split_buffer.559", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !352    ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 8 uses
  %i.f = icmp sgt i64 %4, 0
  br i1 %i.f, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !339
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !338  ; 9 uses
  %i.k = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 6 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 96
  %.not = icmp sgt i64 %4, %i.n
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [96 x i8], ptr %2, i64 %4
  %i.p = sub i64 %i.l, %i.b                       ; 3 uses
  %i.q = sdiv exact i64 %i.p, 96
  %i.r = icmp sgt i64 %4, %i.q
  br i1 %i.r, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.p ; 3 uses
  %.not27.i.i.i = icmp eq ptr %i.s, %3
  br i1 %.not27.i.i.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRS3_EvvEEvRS4_PT_DpOT0_.exit.i.i.i
  %.029.i.i.i = phi ptr [ %i.t, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRS3_EvvEEvRS4_PT_DpOT0_.exit.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %.02528.i.i.i = phi ptr [ %i.u, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRS3_EvvEEvRS4_PT_DpOT0_.exit.i.i.i ], [ %i.j, %bb.d ] ; 4 uses
  invoke void @_ZN3tev13AttributeNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %.02528.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.029.i.i.i)
          to label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRS3_EvvEEvRS4_PT_DpOT0_.exit.i.i.i unwind label %bb.e, !inline_history !1918

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRS3_EvvEEvRS4_PT_DpOT0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 96 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.02528.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %3
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !59

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  %.not5.i.i.i.i.i.i = icmp eq ptr %.02528.i.i.i, %i.j
  br i1 %.not5.i.i.i.i.i.i, label %.body.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %.sroa.12.06.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %.02528.i.i.i, %bb.e ]
  %i.w = getelementptr inbounds i8, ptr %.sroa.12.06.i.i.i.i.i.i, i64 -96 ; 3 uses
  tail call void @_ZN3tev13AttributeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.w) #38, !inline_history !1919
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, %i.j
  br i1 %.not.i.i.i.i.i.i, label %.body.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !60

common.resume:                                    ; preds = %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.v, %.body.i ], [ %i.br, %.body ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.e
  store ptr %i.j, ptr %i.i, align 8, !tbaa !338
  br label %common.resume

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit.loopexit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRS3_EvvEEvRS4_PT_DpOT0_.exit.i.i.i
  %.pre58 = ptrtoint ptr %i.u to i64
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit: ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit.loopexit, %bb.d
  %.pre-phi = phi i64 [ %.pre58, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit.loopexit ], [ %i.l, %bb.d ]
  %i.x = sub i64 %.pre-phi, %i.l
  %i.y = getelementptr inbounds i8, ptr %i.j, i64 %i.x ; 3 uses
  store ptr %i.y, ptr %i.i, align 8, !tbaa !338
  %i.z = icmp sgt i64 %i.p, 0
  br i1 %i.z, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit..critedge_crit_edge, label %bb.m

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit..critedge_crit_edge: ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit
  %.pre59 = ptrtoint ptr %i.y to i64
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit..critedge_crit_edge, %bb.c
  %.pre-phi60 = phi i64 [ %.pre59, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.l, %bb.c ]
  %i.aa = phi ptr [ %i.y, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.j, %bb.c ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.s, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.o, %bb.c ]
  %i.ab = getelementptr inbounds nuw [96 x i8], ptr %i.e, i64 %4 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %.pre-phi60, %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.e, i64 %i.ad ; 3 uses
  %i.af = icmp ult ptr %i.ae, %i.j
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.critedge
  %.sroa.6.0.lcssa.i = phi ptr [ %i.aa, %.critedge ], [ %i.au, %.lr.ph.i ]
  store ptr %.sroa.6.0.lcssa.i, ptr %i.i, align 8, !tbaa !338
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not8.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE12__move_rangeEPS2_S6_S6_.exit, label %.lr.ph.i.i.i.i.i.i38

.lr.ph.i.i.i.i.i.i38:                             ; preds = %._crit_edge.i, %.lr.ph.i.i.i.i.i.i38
  %.010.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i38 ], [ %i.ae, %._crit_edge.i ]
  %.079.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i38 ], [ %i.aa, %._crit_edge.i ]
  %i.ag = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -96 ; 3 uses
  %i.ah = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -96 ; 2 uses
  %i.ai = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN3tev13AttributeNodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.ah, ptr noundef nonnull align 8 dereferenceable(96) %i.ag) #38 ; 0 uses
  %.not.i.i.i.i.i.i39 = icmp eq ptr %1, %i.ag
  br i1 %.not.i.i.i.i.i.i39, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE12__move_rangeEPS2_S6_S6_.exit, label %.lr.ph.i.i.i.i.i.i38, !llvm.loop !1920

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %.01924.i = phi ptr [ %i.at, %.lr.ph.i ], [ %i.ae, %.critedge ] ; 7 uses
  %.sroa.6.023.i = phi ptr [ %i.au, %.lr.ph.i ], [ %i.aa, %.critedge ] ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.023.i, ptr noundef nonnull align 8 dereferenceable(96) %.01924.i, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.01924.i, i8 0, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %.01924.i, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %.01924.i, i64 48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01924.i, i64 72 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.aq = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !339
  store <2 x ptr> %i.aq, ptr %i.an, align 8, !tbaa !339
  %i.ar = getelementptr inbounds nuw i8, ptr %.01924.i, i64 88
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !339
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !339
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.01924.i, i64 96 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 96 ; 2 uses
  %i.av = icmp ult ptr %i.at, %i.j
  br i1 %i.av, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1921

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE12__move_rangeEPS2_S6_S6_.exit: ; preds = %.lr.ph.i.i.i.i.i.i38, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.aw = call { ptr, ptr } @_ZNKSt3__111__copy_loopINS_17_ClassicAlgPolicyEEclB8ne180100IPN3tev13AttributeNodeES6_S6_EENS_4pairIT_T1_EES8_T0_S9_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %.sroa.0.0, ptr noundef %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %bb.m

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  %i.ax = sub i64 %i.l, %i.c
  %i.ay = sdiv exact i64 %i.ax, 96
  %i.az = add i64 %i.ay, %4                       ; 2 uses
  %i.ba = icmp ugt i64 %i.az, 192153584101141162
  br i1 %i.ba, label %bb.g, label %_ZNKSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNKSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #41
  unreachable

_ZNKSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.f
  %i.bb = sub i64 %i.k, %i.c
  %i.bc = sdiv exact i64 %i.bb, 96                ; 2 uses
  %.not.i = icmp ult i64 %i.bc, 96076792050570581
  %i.bd = shl nuw nsw i64 %i.bc, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.az)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 192153584101141162 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.g, ptr %i.bf, align 8, !tbaa !571
  %i.bg = icmp eq i64 %.0.i, 0
  br i1 %i.bg, label %_ZNSt3__114__split_bufferIN3tev13AttributeNodeERNS_9allocatorIS2_EEEC2EmmS5_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNKSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit
  %i.bh = icmp ugt i64 %.0.i, 192153584101141162
  br i1 %i.bh, label %bb.i, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev13AttributeNodeEEEEEDaRT_m.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #41
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev13AttributeNodeEEEEEDaRT_m.exit.i: ; preds = %bb.h
  %i.bi = mul nuw i64 %.0.i, 96
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #40
  br label %_ZNSt3__114__split_bufferIN3tev13AttributeNodeERNS_9allocatorIS2_EEEC2EmmS5_.exit

_ZNSt3__114__split_bufferIN3tev13AttributeNodeERNS_9allocatorIS2_EEEC2EmmS5_.exit: ; preds = %_ZNKSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev13AttributeNodeEEEEEDaRT_m.exit.i
  %storemerge.i = phi ptr [ %i.bj, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev13AttributeNodeEEEEEDaRT_m.exit.i ], [ null, %_ZNKSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit ] ; 3 uses
  store ptr %storemerge.i, ptr %6, align 8, !tbaa !575
  %i.bk = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.d ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !577
  %i.bn = getelementptr inbounds nuw [96 x i8], ptr %storemerge.i, i64 %.0.i ; 2 uses
  store ptr %i.bn, ptr %i.be, align 8, !tbaa !339
  %.idx.i = mul nuw nsw i64 %4, 96
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i ; 3 uses
  br label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %_ZNSt3__114__split_bufferIN3tev13AttributeNodeERNS_9allocatorIS2_EEEC2EmmS5_.exit, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRS3_EvvEEvRS4_PT_DpOT0_.exit.i
  %.sroa.0.013.i = phi ptr [ %i.bp, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRS3_EvvEEvRS4_PT_DpOT0_.exit.i ], [ %i.bk, %_ZNSt3__114__split_bufferIN3tev13AttributeNodeERNS_9allocatorIS2_EEEC2EmmS5_.exit ] ; 3 uses
  %.sroa.08.012.i = phi ptr [ %i.bq, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRS3_EvvEEvRS4_PT_DpOT0_.exit.i ], [ %2, %_ZNSt3__114__split_bufferIN3tev13AttributeNodeERNS_9allocatorIS2_EEEC2EmmS5_.exit ] ; 2 uses
  invoke void @_ZN3tev13AttributeNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.013.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.08.012.i)
          to label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRS3_EvvEEvRS4_PT_DpOT0_.exit.i unwind label %.body, !inline_history !1922

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRS3_EvvEEvRS4_PT_DpOT0_.exit.i: ; preds = %.lr.ph.i40
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 96 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i, i64 96
  %.not.i41 = icmp eq ptr %i.bp, %i.bo
  br i1 %.not.i41, label %bb.j, label %.lr.ph.i40, !llvm.loop !1923

.body:                                            ; preds = %.lr.ph.i40
  %i.br = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.0.013.i, ptr %i.bl, align 8, !tbaa !339
  call void @_ZNSt3__114__split_bufferIN3tev13AttributeNodeERNS_9allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %common.resume

bb.j:                                             ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRS3_EvvEEvRS4_PT_DpOT0_.exit.i
  %i.bs = load ptr, ptr %0, align 8, !tbaa !352   ; 2 uses
  %.not27.i.i = icmp eq ptr %1, %i.bs
  br i1 %.not27.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIN3tev13AttributeNodeEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %.sroa.120.028.i.i = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %i.e, %bb.j ] ; 5 uses
  %i.bt = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %i.bk, %bb.j ] ; 5 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -96 ; 3 uses
  %i.bv = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -96 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bu, ptr noundef nonnull align 8 dereferenceable(96) %i.bv, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bv, i8 0, i64 24, i1 false)
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 -72
  %i.bx = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i8 0, i64 24, i1 false)
  %i.by = getelementptr inbounds i8, ptr %i.bt, i64 -48
  %i.bz = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i8 0, i64 24, i1 false)
  %i.ca = getelementptr inbounds i8, ptr %i.bt, i64 -24
  %i.cb = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -24 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.bt, i64 -8
  %i.cd = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !339
  store <2 x ptr> %i.cd, ptr %i.ca, align 8, !tbaa !339
  %i.ce = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !339
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !339
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i8 0, i64 24, i1 false)
  %.not.i.i = icmp eq ptr %i.bv, %i.bs
  br i1 %.not.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIN3tev13AttributeNodeEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i, label %.lr.ph.i.i, !llvm.loop !57

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIN3tev13AttributeNodeEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i: ; preds = %.lr.ph.i.i, %bb.j
  %.pre.i = phi ptr [ %i.bk, %bb.j ], [ %i.bu, %.lr.ph.i.i ]
  %i.cg = load ptr, ptr %i.i, align 8, !tbaa !338 ; 3 uses
  %.not24.i.i = icmp eq ptr %1, %i.cg
  br i1 %.not24.i.i, label %bb.k, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIN3tev13AttributeNodeEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i, %.lr.ph.i14.i
  %.026.i.i = phi ptr [ %i.cr, %.lr.ph.i14.i ], [ %i.e, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIN3tev13AttributeNodeEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i ] ; 7 uses
  %.02325.i.i = phi ptr [ %i.cs, %.lr.ph.i14.i ], [ %i.bo, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIN3tev13AttributeNodeEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i ] ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.02325.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.026.i.i, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.026.i.i, i8 0, i64 24, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %.02325.i.i, i64 24
  %i.ci = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i8 0, i64 24, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %.02325.i.i, i64 48
  %i.ck = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i8 0, i64 24, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %.02325.i.i, i64 72
  %i.cm = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 72 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02325.i.i, i64 88
  %i.co = load <2 x ptr>, ptr %i.cm, align 8, !tbaa !339
  store <2 x ptr> %i.co, ptr %i.cl, align 8, !tbaa !339
  %i.cp = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 88
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !339
  store ptr %i.cq, ptr %i.cn, align 8, !tbaa !339
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i8 0, i64 24, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 96 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.02325.i.i, i64 96 ; 2 uses
  %.not.i15.i = icmp eq ptr %i.cr, %i.cg
  br i1 %.not.i15.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIN3tev13AttributeNodeEEEPS3_S5_S5_EET2_RT_T0_T1_S6_.exit.loopexit.i, label %.lr.ph.i14.i, !llvm.loop !1924

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIN3tev13AttributeNodeEEEPS3_S5_S5_EET2_RT_T0_T1_S6_.exit.loopexit.i: ; preds = %.lr.ph.i14.i
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !339
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIN3tev13AttributeNodeEEEPS3_S5_S5_EET2_RT_T0_T1_S6_.exit.loopexit.i, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIN3tev13AttributeNodeEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i
  %i.ct = phi ptr [ %i.cg, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIN3tev13AttributeNodeEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i ], [ %.pre, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIN3tev13AttributeNodeEEEPS3_S5_S5_EET2_RT_T0_T1_S6_.exit.loopexit.i ] ; 2 uses
  %.023.lcssa.i.i = phi ptr [ %i.bo, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIN3tev13AttributeNodeEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i ], [ %i.cs, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIN3tev13AttributeNodeEEEPS3_S5_S5_EET2_RT_T0_T1_S6_.exit.loopexit.i ]
  %i.cu = load ptr, ptr %0, align 8, !tbaa !339   ; 5 uses
end_hunk_0
