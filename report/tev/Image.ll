Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Image?download=true
inline.NumInlined: 33261
inline.NumDeleted: 8209
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 133
begin_hunk_0_@_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJS2_EEEPS2_DpOT_:bb.a
  %.sroa.18.013.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %i.ad, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev7ChannelEEEEEDaRT_m.exit.i ] ; 4 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -72 ; 3 uses
  %i.ah = getelementptr inbounds i8, ptr %.sroa.18.013.i.i, i64 -72 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ag, ptr noundef nonnull align 8 dereferenceable(72) %i.ah, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, i8 0, i64 24, i1 false)
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 -48
  %i.aj = getelementptr inbounds i8, ptr %.sroa.18.013.i.i, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ai, ptr noundef nonnull align 8 dereferenceable(12) %i.aj, i64 12, i1 false)
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 -32
  %i.al = getelementptr inbounds i8, ptr %.sroa.18.013.i.i, i64 -32 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !201
  store <2 x ptr> %i.am, ptr %i.ak, align 8, !tbaa !201
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds i8, ptr %i.af, i64 -16
  %i.ao = getelementptr inbounds i8, ptr %.sroa.18.013.i.i, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  %.not.i.i = icmp eq ptr %i.ah, %i.ae
  br i1 %.not.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !57

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !413
  %.pre9 = load ptr, ptr %i.b, align 8, !tbaa !413
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev7ChannelEEEEEDaRT_m.exit.i
  %i.ap = phi ptr [ %i.ad, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev7ChannelEEEEEDaRT_m.exit.i ], [ %.pre9, %.loopexit.loopexit ] ; 2 uses
  %i.aq = phi ptr [ %i.ae, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev7ChannelEEEEEDaRT_m.exit.i ], [ %.pre, %.loopexit.loopexit ] ; 5 uses
  %.sroa.2.0.copyload.i.i = phi ptr [ %i.t, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev7ChannelEEEEEDaRT_m.exit.i ], [ %i.ag, %.loopexit.loopexit ]
  store ptr %.sroa.2.0.copyload.i.i, ptr %0, align 8, !tbaa !413
  store ptr %i.ac, ptr %i.b, align 8, !tbaa !413
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !413
  store ptr %i.u, ptr %i.a, align 8, !tbaa !413
  %.not2.i.i.i.i = icmp eq ptr %i.aq, %i.ap
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferIN3tev7ChannelERNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i
  %i.as = phi ptr [ %i.at, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i ], [ %i.ap, %.loopexit ] ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -72 ; 4 uses
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !323 ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = atomicrmw add ptr %i.aw, i64 -1 acq_rel, align 8
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.e, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !193
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #44, !inline_history !58
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #44
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %.lr.ph.i.i.i.i
  %i.bc = load i8, ptr %i.at, align 8
  %i.bd = trunc i8 %i.bc to i1
  br i1 %i.bd, label %bb.f, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i

bb.f:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i
  %i.be = getelementptr inbounds i8, ptr %i.as, i64 -56
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !126
  %i.bg = load i64, ptr %i.at, align 8
  %i.bh = and i64 %i.bg, -2
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #45
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i: ; preds = %bb.f, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.at
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferIN3tev7ChannelERNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

_ZNSt3__114__split_bufferIN3tev7ChannelERNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i, %.loopexit
  %.not.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i5, label %_ZNSt3__114__split_bufferIN3tev7ChannelERNS_9allocatorIS2_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__114__split_bufferIN3tev7ChannelERNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i
  %i.bi = ptrtoint ptr %i.ar to i64
  %i.bj = ptrtoint ptr %i.aq to i64
  %i.bk = sub i64 %i.bi, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.bk) #45
  br label %_ZNSt3__114__split_bufferIN3tev7ChannelERNS_9allocatorIS2_EEED2Ev.exit

_ZNSt3__114__split_bufferIN3tev7ChannelERNS_9allocatorIS2_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferIN3tev7ChannelERNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i, %bb.g
  ret ptr %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIN3tev7ChannelERNS_9allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !790  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !791  ; 2 uses
  %.not2.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not2.i.i.i, label %_ZNSt3__114__split_bufferIN3tev7ChannelERNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i
  %i.e = phi ptr [ %i.u, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -72 ; 3 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !791
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !323  ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = atomicrmw add ptr %i.i, i64 -1 acq_rel, align 8
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !193
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(24) %i.h) #44, !inline_history !3030
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.h) #44
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i
  %i.o = load i8, ptr %i.f, align 8
  %i.p = trunc i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i

bb.d:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i
  %i.q = getelementptr inbounds i8, ptr %i.e, i64 -56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !126
  %i.s = load i64, ptr %i.f, align 8
  %i.t = and i64 %i.s, -2
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.t) #45
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i: ; preds = %bb.d, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !791  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, %i.u
  br i1 %.not.i.i.i, label %_ZNSt3__114__split_bufferIN3tev7ChannelERNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit, label %.lr.ph.i.i.i

_ZNSt3__114__split_bufferIN3tev7ChannelERNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i, %bb.a
  %i.v = load ptr, ptr %0, align 8, !tbaa !792    ; 3 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__114__split_bufferIN3tev7ChannelERNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !413
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #45
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt3__114__split_bufferIN3tev7ChannelERNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #21 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.121) #47
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeELb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb"(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.tev::AttributeNode", align 8 ; 12 uses
  %5 = alloca %"struct.tev::AttributeNode", align 8 ; 13 uses
  %6 = alloca %"struct.tev::AttributeNode", align 8 ; 19 uses
  %7 = alloca %"struct.tev::AttributeNode", align 8 ; 13 uses
  %.sroa.7.i.i.i = alloca [22 x i8], align 2      ; 5 uses
  %.sroa.12.i.i.i = alloca [22 x i8], align 2     ; 5 uses
  %.sroa.17.i.i.i = alloca [22 x i8], align 2     ; 5 uses
  %8 = alloca %"struct.tev::AttributeNode", align 8 ; 15 uses
  %9 = alloca %"struct.tev::AttributeNode", align 8 ; 16 uses
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 25
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 49
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.outer"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.outer": ; preds = %bb.dw, %bb.a
  %.024.ph = phi ptr [ %i.aoq, %bb.dw ], [ %1, %bb.a ] ; 28 uses
  %.021.ph = phi ptr [ %.021, %bb.dw ], [ %0, %bb.a ]
  %.048.ph = phi i8 [ %.048.ph428, %bb.dw ], [ %i.a, %bb.a ]
  %.046.ph = phi i64 [ %i.add, %bb.dw ], [ %2, %bb.a ]
  %i.u = ptrtoint ptr %.024.ph to i64
  %i.v = getelementptr inbounds i8, ptr %.024.ph, i64 -96 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.024.ph, i64 -192
  %i.x = getelementptr inbounds i8, ptr %.024.ph, i64 -288
  %i.y = getelementptr inbounds i8, ptr %.024.ph, i64 -96
  %i.z = getelementptr inbounds i8, ptr %.024.ph, i64 -80
  %i.aa = getelementptr inbounds i8, ptr %.024.ph, i64 -95
  %i.ab = getelementptr inbounds i8, ptr %.024.ph, i64 -88
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.outer426"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.outer426": ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.outer426.backedge", %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.outer"
  %.021.ph427 = phi ptr [ %.021.ph, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.outer" ], [ %.021.ph427.be, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.outer426.backedge" ]
  %.048.ph428 = phi i8 [ %.048.ph, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.outer" ], [ 0, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.outer426.backedge" ] ; 3 uses
  %.046.ph429 = phi i64 [ %.046.ph, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.outer" ], [ %i.add, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.outer426.backedge" ]
  %i.ac = trunc nuw i8 %.048.ph428 to i1          ; 2 uses
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit": ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.outer426", %bb.dx
  %.021 = phi ptr [ %.119.lcssa.i, %bb.dx ], [ %.021.ph427, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.outer426" ] ; 79 uses
  %.046 = phi i64 [ %i.add, %bb.dx ], [ %.046.ph429, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.outer426" ] ; 2 uses
  %i.ad = ptrtoint ptr %.021 to i64               ; 2 uses
  %i.ae = sub i64 %i.u, %i.ad                     ; 4 uses
  %i.af = sdiv exact i64 %i.ae, 96                ; 5 uses
  switch i64 %i.af, label %bb.g [
    i64 0, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.thread"
    i64 1, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.thread"
    i64 2, label %bb.b
    i64 3, label %bb.d
    i64 4, label %bb.e
    i64 5, label %bb.f
  ]

bb.b:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit"
  %i.ag = getelementptr inbounds i8, ptr %.024.ph, i64 -96 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8             ; 2 uses
  %i.ai = trunc i8 %i.ah to i1                    ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.024.ph, i64 -80
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %.024.ph, i64 -95
  %i.am = select i1 %i.ai, ptr %i.ak, ptr %i.al
  %i.an = getelementptr inbounds i8, ptr %.024.ph, i64 -88
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = lshr i8 %i.ah, 1
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = select i1 %i.ai, i64 %i.ao, i64 %i.aq   ; 2 uses
  %i.as = load i8, ptr %.021, align 8             ; 2 uses
  %i.at = trunc i8 %i.as to i1                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.021, i64 1
  %i.ax = select i1 %i.at, ptr %i.av, ptr %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.021, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = lshr i8 %i.as, 1
  %i.bb = zext nneg i8 %i.ba to i64
  %i.bc = select i1 %i.at, i64 %i.az, i64 %i.bb   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.ar)
  %i.bd = tail call noundef i32 @memcmp(ptr noundef %i.am, ptr noundef %i.ax, i64 noundef %.sroa.speculated.i.i.i.i) #44 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.c, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit"

bb.c:                                             ; preds = %bb.b
  %i.bf = icmp ult i64 %i.ar, %i.bc
  br i1 %i.bf, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread29", label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.thread"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit": ; preds = %bb.b
  %i.bg = icmp slt i32 %i.bd, 0
  br i1 %i.bg, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread29", label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.thread"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread29": ; preds = %bb.c, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit"
  tail call void @_ZNSt3__14swapB8ne180100IN3tev13AttributeNodeEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(96) %.021, ptr noundef nonnull align 8 dereferenceable(96) %i.ag) #44
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.thread"

bb.d:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit"
  %i.bh = getelementptr inbounds nuw i8, ptr %.021, i64 96
  %i.bi = getelementptr inbounds i8, ptr %.024.ph, i64 -96
  tail call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEjT1_SC_SC_T0_"(ptr noundef %.021, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bi)
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.thread"

bb.e:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit"
  %i.bj = getelementptr inbounds nuw i8, ptr %.021, i64 96
  %i.bk = getelementptr inbounds nuw i8, ptr %.021, i64 192
  %i.bl = getelementptr inbounds i8, ptr %.024.ph, i64 -96
  tail call fastcc void @"_ZNSt3__17__sort4B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_SC_SC_T0_"(ptr noundef %.021, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl)
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.thread"

bb.f:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit"
  %i.bm = getelementptr inbounds nuw i8, ptr %.021, i64 96
  %i.bn = getelementptr inbounds nuw i8, ptr %.021, i64 192
  %i.bo = getelementptr inbounds nuw i8, ptr %.021, i64 288
  %i.bp = getelementptr inbounds i8, ptr %.024.ph, i64 -96
  tail call fastcc void @"_ZNSt3__124__sort5_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSE_SE_SE_SE_SE_SD_"(ptr noundef %.021, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bp)
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.thread"

bb.g:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit"
  %i.bq = icmp slt i64 %i.ae, 2304
  br i1 %i.bq, label %bb.h, label %bb.aj

bb.h:                                             ; preds = %bb.g
  %i.br = trunc nuw i8 %.048.ph428 to i1
  %i.bs = icmp eq ptr %.021, %.024.ph             ; 2 uses
  br i1 %i.br, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  br i1 %i.bs, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.thread", label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %storemerge18.i = getelementptr inbounds nuw i8, ptr %.021, i64 96 ; 2 uses
  %.not19.i = icmp eq ptr %storemerge18.i, %.024.ph
  br i1 %.not19.i, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.thread", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 25
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 49
  br label %bb.j

bb.j:                                             ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i", %.lr.ph.i
  %storemerge21.i = phi ptr [ %storemerge18.i, %.lr.ph.i ], [ %storemerge.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i" ] ; 6 uses
  %.pn20.i = phi ptr [ %.021, %.lr.ph.i ], [ %storemerge21.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i" ] ; 12 uses
  %i.cd = load i8, ptr %storemerge21.i, align 8   ; 2 uses
  %i.ce = trunc i8 %i.cd to i1                    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 112
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 97
  %i.ci = select i1 %i.ce, ptr %i.cg, ptr %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 104
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = lshr i8 %i.cd, 1
  %i.cm = zext nneg i8 %i.cl to i64
  %i.cn = select i1 %i.ce, i64 %i.ck, i64 %i.cm   ; 2 uses
  %i.co = load i8, ptr %.pn20.i, align 8          ; 2 uses
  %i.cp = trunc i8 %i.co to i1                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 1
  %i.ct = select i1 %i.cp, ptr %i.cr, ptr %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = lshr i8 %i.co, 1
  %i.cx = zext nneg i8 %i.cw to i64
  %i.cy = select i1 %i.cp, i64 %i.cv, i64 %i.cx   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cy, i64 %i.cn)
  %i.cz = tail call noundef i32 @memcmp(ptr noundef %i.ci, ptr noundef %i.ct, i64 noundef %.sroa.speculated.i.i.i.i.i) #44 ; 2 uses
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.k, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i"

bb.k:                                             ; preds = %bb.j
  %i.db = icmp ult i64 %i.cn, %i.cy
  br i1 %i.db, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i": ; preds = %bb.j
  %i.dc = icmp slt i32 %i.cz, 0
  br i1 %i.dc, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i", %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %9, ptr noundef nonnull align 8 dereferenceable(96) %storemerge21.i, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %storemerge21.i, i8 0, i64 24, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 120 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i8 0, i64 24, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, i8 0, i64 24, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 168 ; 2 uses
  %i.dg = load <2 x ptr>, ptr %i.df, align 8, !tbaa !129
  store <2 x ptr> %i.dg, ptr %i.bv, align 8, !tbaa !129
  %i.dh = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 184
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !129
  store ptr %i.di, ptr %i.bx, align 8, !tbaa !129
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i8 0, i64 24, i1 false)
  %i.dj = load i8, ptr %9, align 8                ; 2 uses
  %i.dk = trunc i8 %i.dj to i1                    ; 2 uses
  %i.dl = load ptr, ptr %i.by, align 8
  %i.dm = select i1 %i.dk, ptr %i.dl, ptr %i.bz
  %i.dn = load i64, ptr %i.ca, align 8
  %i.do = lshr i8 %i.dj, 1
  %i.dp = zext nneg i8 %i.do to i64
  %i.dq = select i1 %i.dk, i64 %i.dn, i64 %i.dp   ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit21.i", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i"
  %.05.i = phi ptr [ %.pn20.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i" ], [ %i.fe, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit21.i" ] ; 17 uses
  %.0.i = phi ptr [ %storemerge21.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i" ], [ %.05.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit21.i" ] ; 12 uses
  %i.dr = load i8, ptr %.0.i, align 8
  %i.ds = trunc i8 %i.dr to i1
  br i1 %i.ds, label %bb.m, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !126
  %i.dv = load i64, ptr %.0.i, align 8
  %i.dw = and i64 %i.dv, -2
  tail call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dw) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i: ; preds = %bb.m, %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.0.i, ptr noundef nonnull align 8 dereferenceable(96) %.05.i, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %.05.i, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %.05.i, i64 1
  store i8 0, ptr %i.dx, align 1, !tbaa !126
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 5 uses
  %i.ea = load i8, ptr %i.dy, align 8
  %i.eb = trunc i8 %i.ea to i1
  br i1 %i.eb, label %bb.n, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i

bb.n:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !126
  %i.ee = load i64, ptr %i.dy, align 8
  %i.ef = and i64 %i.ee, -2
  tail call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.ef) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i: ; preds = %bb.n, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %i.dz, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.05.i, i64 25
  store i8 0, ptr %i.eg, align 1, !tbaa !126
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.05.i, i64 48 ; 5 uses
  %i.ej = load i8, ptr %i.eh, align 8
  %i.ek = trunc i8 %i.ej to i1
  br i1 %i.ek, label %bb.o, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i

bb.o:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !126
  %i.en = load i64, ptr %i.eh, align 8
  %i.eo = and i64 %i.en, -2
  tail call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eo) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i: ; preds = %bb.o, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %i.ei, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.05.i, i64 49
  store i8 0, ptr %i.ep, align 1, !tbaa !126
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i, i64 72 ; 4 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !130 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i.i, label %_ZN3tev13AttributeNodeaSEOS0_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i
  tail call void @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__base_destruct_at_endB8ne180100EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.eq, ptr noundef nonnull %i.er) #44, !inline_history !59
  %i.es = load ptr, ptr %i.eq, align 8, !tbaa !130 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i, i64 88
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !129
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = sub i64 %i.ev, %i.ew
  tail call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ex) #45
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, i8 0, i64 16, i1 false)
  br label %_ZN3tev13AttributeNodeaSEOS0_.exit.i

_ZN3tev13AttributeNodeaSEOS0_.exit.i:             ; preds = %bb.p, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.05.i, i64 72 ; 7 uses
  %i.fa = load <2 x ptr>, ptr %i.ez, align 8, !tbaa !129
  store <2 x ptr> %i.fa, ptr %i.eq, align 8, !tbaa !129
  %i.fb = getelementptr inbounds nuw i8, ptr %.05.i, i64 88
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !129
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i, i64 88
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !129
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i8 0, i64 24, i1 false)
  %.not18.i = icmp eq ptr %.05.i, %.021
  br i1 %.not18.i, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %_ZN3tev13AttributeNodeaSEOS0_.exit.i
  %i.fe = getelementptr inbounds i8, ptr %.05.i, i64 -96 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 8             ; 2 uses
  %i.fg = trunc i8 %i.ff to i1                    ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %.05.i, i64 -80
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = getelementptr inbounds i8, ptr %.05.i, i64 -95
  %i.fk = select i1 %i.fg, ptr %i.fi, ptr %i.fj
  %i.fl = getelementptr inbounds i8, ptr %.05.i, i64 -88
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = lshr i8 %i.ff, 1
  %i.fo = zext nneg i8 %i.fn to i64
  %i.fp = select i1 %i.fg, i64 %i.fm, i64 %i.fo   ; 2 uses
  %.sroa.speculated.i.i.i.i19.i = tail call i64 @llvm.umin.i64(i64 %i.fp, i64 %i.dq)
  %i.fq = call noundef i32 @memcmp(ptr noundef %i.dm, ptr noundef %i.fk, i64 noundef %.sroa.speculated.i.i.i.i19.i) #44 ; 2 uses
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.r, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit21.i"

bb.r:                                             ; preds = %bb.q
  %i.fs = icmp ult i64 %i.dq, %i.fp
end_hunk_0
begin_hunk_1_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeELb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb":bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ii, i8 0, i64 24, i1 false)
  %i.im = load i8, ptr %8, align 8                ; 2 uses
  %i.in = trunc i8 %i.im to i1                    ; 2 uses
  %i.io = load ptr, ptr %i.hb, align 8
  %i.ip = select i1 %i.in, ptr %i.io, ptr %i.hc
  %i.iq = load i64, ptr %i.hd, align 8
  %i.ir = lshr i8 %i.im, 1
  %i.is = zext nneg i8 %i.ir to i64
  %i.it = select i1 %i.in, i64 %i.iq, i64 %i.is   ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.i", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i61"
  %.05.i62 = phi ptr [ %.pn22.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i61" ], [ %i.kh, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.i" ] ; 21 uses
  %.0.i63 = phi ptr [ %storemerge23.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i61" ], [ %.05.i62, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.i" ] ; 12 uses
  %i.iu = load i8, ptr %.0.i63, align 8
  %i.iv = trunc i8 %i.iu to i1
  br i1 %i.iv, label %bb.aa, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i64

bb.aa:                                            ; preds = %bb.z
  %i.iw = getelementptr inbounds nuw i8, ptr %.0.i63, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !126
  %i.iy = load i64, ptr %.0.i63, align 8
  %i.iz = and i64 %i.iy, -2
  tail call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.iz) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i64

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i64: ; preds = %bb.aa, %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.0.i63, ptr noundef nonnull align 8 dereferenceable(96) %.05.i62, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %.05.i62, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %.05.i62, i64 1
  store i8 0, ptr %i.ja, align 1, !tbaa !126
  %i.jb = getelementptr inbounds nuw i8, ptr %.0.i63, i64 24 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.05.i62, i64 24 ; 5 uses
  %i.jd = load i8, ptr %i.jb, align 8
  %i.je = trunc i8 %i.jd to i1
  br i1 %i.je, label %bb.ab, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i65

bb.ab:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i64
  %i.jf = getelementptr inbounds nuw i8, ptr %.0.i63, i64 40
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !126
  %i.jh = load i64, ptr %i.jb, align 8
  %i.ji = and i64 %i.jh, -2
  tail call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.ji) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i65

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i65: ; preds = %bb.ab, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jb, ptr noundef nonnull align 8 dereferenceable(24) %i.jc, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %i.jc, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %.05.i62, i64 25
  store i8 0, ptr %i.jj, align 1, !tbaa !126
  %i.jk = getelementptr inbounds nuw i8, ptr %.0.i63, i64 48 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.05.i62, i64 48 ; 5 uses
  %i.jm = load i8, ptr %i.jk, align 8
  %i.jn = trunc i8 %i.jm to i1
  br i1 %i.jn, label %bb.ac, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i66

bb.ac:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i65
  %i.jo = getelementptr inbounds nuw i8, ptr %.0.i63, i64 64
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !126
  %i.jq = load i64, ptr %i.jk, align 8
  %i.jr = and i64 %i.jq, -2
  tail call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.jr) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i66

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i66: ; preds = %bb.ac, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jk, ptr noundef nonnull align 8 dereferenceable(24) %i.jl, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %i.jl, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %.05.i62, i64 49
  store i8 0, ptr %i.js, align 1, !tbaa !126
  %i.jt = getelementptr inbounds nuw i8, ptr %.0.i63, i64 72 ; 4 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !130 ; 2 uses
  %.not.i.i.i.i.i67 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i.i.i67, label %_ZN3tev13AttributeNodeaSEOS0_.exit.i68, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i66
  tail call void @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__base_destruct_at_endB8ne180100EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.jt, ptr noundef nonnull %i.ju) #44, !inline_history !59
  %i.jv = load ptr, ptr %i.jt, align 8, !tbaa !130 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.0.i63, i64 88
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !129
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = sub i64 %i.jy, %i.jz
  tail call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.ka) #45
  %i.kb = getelementptr inbounds nuw i8, ptr %.0.i63, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kb, i8 0, i64 16, i1 false)
  br label %_ZN3tev13AttributeNodeaSEOS0_.exit.i68

_ZN3tev13AttributeNodeaSEOS0_.exit.i68:           ; preds = %bb.ad, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i66
  %i.kc = getelementptr inbounds nuw i8, ptr %.05.i62, i64 72 ; 7 uses
  %i.kd = load <2 x ptr>, ptr %i.kc, align 8, !tbaa !129
  store <2 x ptr> %i.kd, ptr %i.jt, align 8, !tbaa !129
  %i.ke = getelementptr inbounds nuw i8, ptr %.05.i62, i64 88
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !129
  %i.kg = getelementptr inbounds nuw i8, ptr %.0.i63, i64 88
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !129
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kc, i8 0, i64 24, i1 false)
  %i.kh = getelementptr inbounds i8, ptr %.05.i62, i64 -96 ; 2 uses
  %i.ki = load i8, ptr %i.kh, align 8             ; 2 uses
  %i.kj = trunc i8 %i.ki to i1                    ; 2 uses
  %i.kk = getelementptr inbounds i8, ptr %.05.i62, i64 -80
  %i.kl = load ptr, ptr %i.kk, align 8
  %i.km = getelementptr inbounds i8, ptr %.05.i62, i64 -95
  %i.kn = select i1 %i.kj, ptr %i.kl, ptr %i.km
  %i.ko = getelementptr inbounds i8, ptr %.05.i62, i64 -88
  %i.kp = load i64, ptr %i.ko, align 8
  %i.kq = lshr i8 %i.ki, 1
  %i.kr = zext nneg i8 %i.kq to i64
  %i.ks = select i1 %i.kj, i64 %i.kp, i64 %i.kr   ; 2 uses
  %.sroa.speculated.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 %i.ks, i64 %i.it)
  %i.kt = call noundef i32 @memcmp(ptr noundef %i.ip, ptr noundef %i.kn, i64 noundef %.sroa.speculated.i.i.i.i15.i) #44 ; 2 uses
  %i.ku = icmp eq i32 %i.kt, 0
  br i1 %i.ku, label %bb.ae, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.i"

bb.ae:                                            ; preds = %_ZN3tev13AttributeNodeaSEOS0_.exit.i68
  %i.kv = icmp ult i64 %i.it, %i.ks
  br i1 %i.kv, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.i", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.thread.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.i": ; preds = %bb.ae, %_ZN3tev13AttributeNodeaSEOS0_.exit.i68
  %.0.i.i.i.i16.i = phi i32 [ %i.kt, %_ZN3tev13AttributeNodeaSEOS0_.exit.i68 ], [ -1, %bb.ae ]
  %i.kw = icmp slt i32 %.0.i.i.i.i16.i, 0
  br i1 %i.kw, label %bb.z, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.thread.i", !llvm.loop !3033

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.thread.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.i", %bb.ae
  %i.kx = getelementptr inbounds nuw i8, ptr %.05.i62, i64 88 ; 2 uses
  %i.ky = load i8, ptr %.05.i62, align 8
  %i.kz = trunc i8 %i.ky to i1
  br i1 %i.kz, label %bb.af, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i18.i

bb.af:                                            ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.thread.i"
  %i.la = getelementptr inbounds nuw i8, ptr %.05.i62, i64 16
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !126
  %i.lc = load i64, ptr %.05.i62, align 8
  %i.ld = and i64 %i.lc, -2
  tail call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.ld) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i18.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i18.i: ; preds = %bb.af, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.thread.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.05.i62, ptr noundef nonnull align 8 dereferenceable(96) %8, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %8, align 8
  store i8 0, ptr %i.hc, align 1, !tbaa !126
  %i.le = load i8, ptr %i.jc, align 8
  %i.lf = trunc i8 %i.le to i1
  br i1 %i.lf, label %bb.ag, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i19.i

bb.ag:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i18.i
  %i.lg = getelementptr inbounds nuw i8, ptr %.05.i62, i64 40
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !126
  %i.li = load i64, ptr %i.jc, align 8
  %i.lj = and i64 %i.li, -2
  tail call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.lj) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i19.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i19.i: ; preds = %bb.ag, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i18.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jc, ptr noundef nonnull align 8 dereferenceable(24) %i.gx, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %i.gx, align 8
  store i8 0, ptr %i.he, align 1, !tbaa !126
  %i.lk = load i8, ptr %i.jl, align 8
  %i.ll = trunc i8 %i.lk to i1
  br i1 %i.ll, label %bb.ah, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i20.i

bb.ah:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i19.i
  %i.lm = getelementptr inbounds nuw i8, ptr %.05.i62, i64 64
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !126
  %i.lo = load i64, ptr %i.jl, align 8
  %i.lp = and i64 %i.lo, -2
  tail call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lp) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i20.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i20.i: ; preds = %bb.ah, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i19.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jl, ptr noundef nonnull align 8 dereferenceable(24) %i.gy, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %i.gy, align 8
  store i8 0, ptr %i.hf, align 1, !tbaa !126
  %i.lq = load ptr, ptr %i.kc, align 8, !tbaa !130 ; 2 uses
  %.not.i.i.i.i21.i = icmp eq ptr %i.lq, null
  br i1 %.not.i.i.i.i21.i, label %_ZN3tev13AttributeNodeD2Ev.exit.i69, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i20.i
  tail call void @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__base_destruct_at_endB8ne180100EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.kc, ptr noundef nonnull %i.lq) #44, !inline_history !59
  %i.lr = load ptr, ptr %i.kc, align 8, !tbaa !130 ; 2 uses
  %i.ls = load ptr, ptr %i.kx, align 8, !tbaa !129
  %i.lt = ptrtoint ptr %i.ls to i64
  %i.lu = ptrtoint ptr %i.lr to i64
  %i.lv = sub i64 %i.lt, %i.lu
  tail call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lv) #45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kc, i8 0, i64 24, i1 false)
  br label %_ZN3tev13AttributeNodeD2Ev.exit.i69

_ZN3tev13AttributeNodeD2Ev.exit.i69:              ; preds = %bb.ai, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i20.i
  %i.lw = load <2 x ptr>, ptr %i.gz, align 8, !tbaa !129
  store <2 x ptr> %i.lw, ptr %i.kc, align 8, !tbaa !129
  %i.lx = load ptr, ptr %i.ha, align 8, !tbaa !129
  store ptr %i.lx, ptr %i.kx, align 8, !tbaa !129
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  br label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i58"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i58": ; preds = %_ZN3tev13AttributeNodeD2Ev.exit.i69, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i57", %bb.y
  %storemerge.i59 = getelementptr inbounds nuw i8, ptr %storemerge23.i, i64 96 ; 2 uses
  %.not.i60 = icmp eq ptr %storemerge.i59, %.024.ph
  br i1 %.not.i60, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.thread", label %bb.x, !llvm.loop !3034

bb.aj:                                            ; preds = %bb.g
  %i.ly = icmp eq i64 %.046, 0
  br i1 %i.ly, label %bb.ak, label %bb.ce

bb.ak:                                            ; preds = %bb.aj
  %i.lz = add nsw i64 %i.af, -2
  %i.ma = lshr i64 %i.lz, 1                       ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.mg = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.mh = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.al

bb.al:                                            ; preds = %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_OT0_NS_15iterator_traitsISC_E15difference_typeESC_.exit", %bb.ak
  %.01.i.i.i = phi i64 [ %i.ma, %bb.ak ], [ %i.sg, %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_OT0_NS_15iterator_traitsISC_E15difference_typeESC_.exit" ] ; 4 uses
  %i.mi = getelementptr inbounds nuw [96 x i8], ptr %.021, i64 %.01.i.i.i ; 11 uses
  %i.mj = shl nsw i64 %.01.i.i.i, 1               ; 2 uses
  %i.mk = or disjoint i64 %i.mj, 1                ; 4 uses
  %i.ml = getelementptr inbounds [96 x i8], ptr %.021, i64 %i.mk ; 11 uses
  %i.mm = add nsw i64 %i.mj, 2                    ; 2 uses
  %i.mn = icmp slt i64 %i.mm, %i.af
  br i1 %i.mn, label %bb.am, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i111"

bb.am:                                            ; preds = %bb.al
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 96 ; 2 uses
  %i.mp = load i8, ptr %i.ml, align 8             ; 2 uses
  %i.mq = trunc i8 %i.mp to i1                    ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ml, i64 1
  %i.mu = select i1 %i.mq, ptr %i.ms, ptr %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mw = load i64, ptr %i.mv, align 8
  %i.mx = lshr i8 %i.mp, 1
  %i.my = zext nneg i8 %i.mx to i64
  %i.mz = select i1 %i.mq, i64 %i.mw, i64 %i.my   ; 2 uses
  %i.na = load i8, ptr %i.mo, align 8             ; 2 uses
  %i.nb = trunc i8 %i.na to i1                    ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ml, i64 112
  %i.nd = load ptr, ptr %i.nc, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ml, i64 97
  %i.nf = select i1 %i.nb, ptr %i.nd, ptr %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ml, i64 104
  %i.nh = load i64, ptr %i.ng, align 8
  %i.ni = lshr i8 %i.na, 1
  %i.nj = zext nneg i8 %i.ni to i64
  %i.nk = select i1 %i.nb, i64 %i.nh, i64 %i.nj   ; 2 uses
  %.sroa.speculated.i.i.i.i.i120 = tail call i64 @llvm.umin.i64(i64 %i.nk, i64 %i.mz)
  %i.nl = tail call noundef i32 @memcmp(ptr noundef %i.mu, ptr noundef %i.nf, i64 noundef %.sroa.speculated.i.i.i.i.i120) #44 ; 2 uses
  %i.nm = icmp eq i32 %i.nl, 0
  br i1 %i.nm, label %bb.an, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i121"

bb.an:                                            ; preds = %bb.am
  %i.nn = icmp ult i64 %i.mz, %i.nk
  br i1 %i.nn, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread15.i", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i111"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i121": ; preds = %bb.am
  %i.no = icmp slt i32 %i.nl, 0
  br i1 %i.no, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread15.i", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i111"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread15.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i121", %bb.an
  br label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i111"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i111": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread15.i", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i121", %bb.an, %bb.al
  %.010.i = phi ptr [ %i.mo, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread15.i" ], [ %i.ml, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i121" ], [ %i.ml, %bb.al ], [ %i.ml, %bb.an ] ; 5 uses
  %.0.i112 = phi i64 [ %i.mm, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread15.i" ], [ %i.mk, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i121" ], [ %i.mk, %bb.al ], [ %i.mk, %bb.an ]
  %i.np = load i8, ptr %.010.i, align 8           ; 2 uses
  %i.nq = trunc i8 %i.np to i1                    ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  %i.ns = load ptr, ptr %i.nr, align 8
  %i.nt = getelementptr inbounds nuw i8, ptr %.010.i, i64 1
  %i.nu = select i1 %i.nq, ptr %i.ns, ptr %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %i.nw = load i64, ptr %i.nv, align 8
  %i.nx = lshr i8 %i.np, 1
  %i.ny = zext nneg i8 %i.nx to i64
  %i.nz = select i1 %i.nq, i64 %i.nw, i64 %i.ny   ; 2 uses
  %i.oa = load i8, ptr %i.mi, align 8             ; 2 uses
  %i.ob = trunc i8 %i.oa to i1                    ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.mi, i64 1
  %i.of = select i1 %i.ob, ptr %i.od, ptr %i.oe
  %i.og = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.oh = load i64, ptr %i.og, align 8
  %i.oi = lshr i8 %i.oa, 1
  %i.oj = zext nneg i8 %i.oi to i64
  %i.ok = select i1 %i.ob, i64 %i.oh, i64 %i.oj   ; 2 uses
  %.sroa.speculated.i.i.i.i28.i = tail call i64 @llvm.umin.i64(i64 %i.ok, i64 %i.nz)
  %i.ol = tail call noundef i32 @memcmp(ptr noundef %i.nu, ptr noundef %i.of, i64 noundef %.sroa.speculated.i.i.i.i28.i) #44 ; 2 uses
  %i.om = icmp eq i32 %i.ol, 0
  br i1 %i.om, label %bb.ao, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit30.i"

bb.ao:                                            ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i111"
  %i.on = icmp ult i64 %i.nz, %i.ok
  br i1 %i.on, label %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_OT0_NS_15iterator_traitsISC_E15difference_typeESC_.exit", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit30.thread.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit30.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i111"
  %i.oo = icmp slt i32 %i.ol, 0
  br i1 %i.oo, label %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_OT0_NS_15iterator_traitsISC_E15difference_typeESC_.exit", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit30.thread.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit30.thread.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit30.i", %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(96) %i.mi, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.mi, i8 0, i64 24, i1 false)
  %i.op = getelementptr inbounds nuw i8, ptr %i.mi, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mb, ptr noundef nonnull align 8 dereferenceable(24) %i.op, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.op, i8 0, i64 24, i1 false)
  %i.oq = getelementptr inbounds nuw i8, ptr %i.mi, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mc, ptr noundef nonnull align 8 dereferenceable(24) %i.oq, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oq, i8 0, i64 24, i1 false)
  %i.or = getelementptr inbounds nuw i8, ptr %i.mi, i64 72 ; 2 uses
  %i.os = load <2 x ptr>, ptr %i.or, align 8, !tbaa !129
  store <2 x ptr> %i.os, ptr %i.md, align 8, !tbaa !129
  %i.ot = getelementptr inbounds nuw i8, ptr %i.mi, i64 88
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !129
  store ptr %i.ou, ptr %i.me, align 8, !tbaa !129
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.or, i8 0, i64 24, i1 false)
  %i.ov = load i8, ptr %4, align 8                ; 2 uses
  %i.ow = trunc i8 %i.ov to i1                    ; 2 uses
  %i.ox = load ptr, ptr %i.mf, align 8
  %i.oy = select i1 %i.ow, ptr %i.ox, ptr %i.mg
  %i.oz = load i64, ptr %i.mh, align 8
  %i.pa = lshr i8 %i.ov, 1
  %i.pb = zext nneg i8 %i.pa to i64
  %i.pc = select i1 %i.ow, i64 %i.oz, i64 %i.pb   ; 3 uses
  br label %bb.ap

bb.ap:                                            ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit36.i", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit30.thread.i"
  %.013.i = phi ptr [ %i.mi, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit30.thread.i" ], [ %.111.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit36.i" ]
  %.111.i = phi ptr [ %.010.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit30.thread.i" ], [ %.212.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit36.i" ] ; 13 uses
  %.1.i113 = phi i64 [ %.0.i112, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit30.thread.i" ], [ %.2.i114, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit36.i" ] ; 2 uses
  %i.pd = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN3tev13AttributeNodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(96) %.013.i, ptr noundef nonnull align 8 dereferenceable(96) %.111.i) #44 ; 0 uses
  %i.pe = icmp slt i64 %i.ma, %.1.i113
  br i1 %i.pe, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit36.thread.i", label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.pf = shl nsw i64 %.1.i113, 1                 ; 2 uses
  %i.pg = or disjoint i64 %i.pf, 1                ; 4 uses
  %i.ph = getelementptr inbounds [96 x i8], ptr %.021, i64 %i.pg ; 11 uses
  %i.pi = add nsw i64 %i.pf, 2                    ; 2 uses
  %i.pj = icmp slt i64 %i.pi, %i.af
  br i1 %i.pj, label %bb.ar, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread.i"

bb.ar:                                            ; preds = %bb.aq
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 96 ; 2 uses
  %i.pl = load i8, ptr %i.ph, align 8             ; 2 uses
  %i.pm = trunc i8 %i.pl to i1                    ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %i.po = load ptr, ptr %i.pn, align 8
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ph, i64 1
  %i.pq = select i1 %i.pm, ptr %i.po, ptr %i.pp
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.ps = load i64, ptr %i.pr, align 8
  %i.pt = lshr i8 %i.pl, 1
  %i.pu = zext nneg i8 %i.pt to i64
  %i.pv = select i1 %i.pm, i64 %i.ps, i64 %i.pu   ; 2 uses
  %i.pw = load i8, ptr %i.pk, align 8             ; 2 uses
  %i.px = trunc i8 %i.pw to i1                    ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.ph, i64 112
  %i.pz = load ptr, ptr %i.py, align 8
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ph, i64 97
  %i.qb = select i1 %i.px, ptr %i.pz, ptr %i.qa
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ph, i64 104
  %i.qd = load i64, ptr %i.qc, align 8
  %i.qe = lshr i8 %i.pw, 1
  %i.qf = zext nneg i8 %i.qe to i64
  %i.qg = select i1 %i.px, i64 %i.qd, i64 %i.qf   ; 2 uses
  %.sroa.speculated.i.i.i.i31.i = tail call i64 @llvm.umin.i64(i64 %i.qg, i64 %i.pv)
  %i.qh = tail call noundef i32 @memcmp(ptr noundef %i.pq, ptr noundef %i.qb, i64 noundef %.sroa.speculated.i.i.i.i31.i) #44 ; 2 uses
  %i.qi = icmp eq i32 %i.qh, 0
  br i1 %i.qi, label %bb.as, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.i"

bb.as:                                            ; preds = %bb.ar
  %i.qj = icmp ult i64 %i.pv, %i.qg
  br i1 %i.qj, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread23.i", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.i": ; preds = %bb.ar
  %i.qk = icmp slt i32 %i.qh, 0
  br i1 %i.qk, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread23.i", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread23.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.i", %bb.as
  br label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread23.i", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.i", %bb.as, %bb.aq
  %.212.i = phi ptr [ %i.pk, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread23.i" ], [ %i.ph, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.i" ], [ %i.ph, %bb.aq ], [ %i.ph, %bb.as ] ; 5 uses
  %.2.i114 = phi i64 [ %i.pi, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread23.i" ], [ %i.pg, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.i" ], [ %i.pg, %bb.aq ], [ %i.pg, %bb.as ]
  %i.ql = load i8, ptr %.212.i, align 8           ; 2 uses
  %i.qm = trunc i8 %i.ql to i1                    ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.212.i, i64 16
  %i.qo = load ptr, ptr %i.qn, align 8
  %i.qp = getelementptr inbounds nuw i8, ptr %.212.i, i64 1
  %i.qq = select i1 %i.qm, ptr %i.qo, ptr %i.qp
  %i.qr = getelementptr inbounds nuw i8, ptr %.212.i, i64 8
  %i.qs = load i64, ptr %i.qr, align 8
  %i.qt = lshr i8 %i.ql, 1
  %i.qu = zext nneg i8 %i.qt to i64
  %i.qv = select i1 %i.qm, i64 %i.qs, i64 %i.qu   ; 3 uses
  %.sroa.speculated.i.i.i.i34.i = tail call i64 @llvm.umin.i64(i64 %i.pc, i64 %i.qv)
  %i.qw = call noundef i32 @memcmp(ptr noundef %i.qq, ptr noundef %i.oy, i64 noundef %.sroa.speculated.i.i.i.i34.i) #44 ; 2 uses
end_hunk_1
begin_hunk_2_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeELb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb":bb.a
  %i.zp = trunc i8 %i.zo to i1                    ; 2 uses
  %i.zq = load ptr, ptr %i.ss, align 8
  %i.zr = select i1 %i.zp, ptr %i.zq, ptr %i.st
  %i.zs = load i64, ptr %i.su, align 8
  %i.zt = lshr i8 %i.zo, 1
  %i.zu = zext nneg i8 %i.zt to i64
  %i.zv = select i1 %i.zp, i64 %i.zs, i64 %i.zu   ; 2 uses
  br label %bb.bt

bb.bt:                                            ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.i.i.i.i.i", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread9.i.i.i.i.i"
  %.07.i.i.i.i.i = phi ptr [ %.15.i.i.i.i.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread9.i.i.i.i.i" ], [ %.06.i.i.i.i.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.i.i.i.i.i" ] ; 11 uses
  %.06.i.i.i.i.i = phi ptr [ %i.yl, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread9.i.i.i.i.i" ], [ %i.abl, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.i.i.i.i.i" ] ; 18 uses
  %.0.i21.i.i.i.i = phi i64 [ %i.yk, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread9.i.i.i.i.i" ], [ %i.abk, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.i.i.i.i.i" ] ; 2 uses
  %i.zw = load i8, ptr %.07.i.i.i.i.i, align 8
  %i.zx = trunc i8 %i.zw to i1
  br i1 %i.zx, label %bb.bu, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.zy = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 16
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !126
  %i.aaa = load i64, ptr %.07.i.i.i.i.i, align 8
  %i.aab = and i64 %i.aaa, -2
  tail call void @_ZdlPvm(ptr noundef %i.zz, i64 noundef %i.aab) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i: ; preds = %bb.bu, %bb.bt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.07.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.06.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %.06.i.i.i.i.i, align 8
  %i.aac = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 1
  store i8 0, ptr %i.aac, align 1, !tbaa !126
  %i.aad = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 24 ; 3 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24 ; 5 uses
  %i.aaf = load i8, ptr %i.aad, align 8
  %i.aag = trunc i8 %i.aaf to i1
  br i1 %i.aag, label %bb.bv, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i.i.i

bb.bv:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i
  %i.aah = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 40
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !126
  %i.aaj = load i64, ptr %i.aad, align 8
  %i.aak = and i64 %i.aaj, -2
  tail call void @_ZdlPvm(ptr noundef %i.aai, i64 noundef %i.aak) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i.i.i: ; preds = %bb.bv, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aad, ptr noundef nonnull align 8 dereferenceable(24) %i.aae, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %i.aae, align 8
  %i.aal = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 25
  store i8 0, ptr %i.aal, align 1, !tbaa !126
  %i.aam = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 48 ; 3 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 48 ; 5 uses
  %i.aao = load i8, ptr %i.aam, align 8
  %i.aap = trunc i8 %i.aao to i1
  br i1 %i.aap, label %bb.bw, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i.i.i

bb.bw:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i.i.i
  %i.aaq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 64
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !126
  %i.aas = load i64, ptr %i.aam, align 8
  %i.aat = and i64 %i.aas, -2
  tail call void @_ZdlPvm(ptr noundef %i.aar, i64 noundef %i.aat) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i.i.i: ; preds = %bb.bw, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aam, ptr noundef nonnull align 8 dereferenceable(24) %i.aan, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %i.aan, align 8
  %i.aau = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 49
  store i8 0, ptr %i.aau, align 1, !tbaa !126
  %i.aav = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 72 ; 5 uses
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !130 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aaw, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN3tev13AttributeNodeaSEOS0_.exit.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i.i.i
  tail call void @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__base_destruct_at_endB8ne180100EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.aav, ptr noundef nonnull %i.aaw) #44, !inline_history !59
  %i.aax = load ptr, ptr %i.aav, align 8, !tbaa !130 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 88
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !129
  %i.aba = ptrtoint ptr %i.aaz to i64
  %i.abb = ptrtoint ptr %i.aax to i64
  %i.abc = sub i64 %i.aba, %i.abb
  tail call void @_ZdlPvm(ptr noundef %i.aax, i64 noundef %i.abc) #45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aav, i8 0, i64 24, i1 false)
  br label %_ZN3tev13AttributeNodeaSEOS0_.exit.i.i.i

_ZN3tev13AttributeNodeaSEOS0_.exit.i.i.i:         ; preds = %bb.bx, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i.i.i
  %i.abd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 72 ; 6 uses
  %i.abe = load <2 x ptr>, ptr %i.abd, align 8, !tbaa !129
  store <2 x ptr> %i.abe, ptr %i.aav, align 8, !tbaa !129
  %i.abf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 88
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !129
  %i.abh = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 88
  store ptr %i.abg, ptr %i.abh, align 8, !tbaa !129
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.abd, i8 0, i64 24, i1 false)
  %i.abi = icmp eq i64 %.0.i21.i.i.i.i, 0
  br i1 %i.abi, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.thread.i.i.i.i.i", label %bb.by

bb.by:                                            ; preds = %_ZN3tev13AttributeNodeaSEOS0_.exit.i.i.i
  %i.abj = add nsw i64 %.0.i21.i.i.i.i, -1
  %i.abk = lshr i64 %i.abj, 1                     ; 2 uses
  %i.abl = getelementptr inbounds nuw [96 x i8], ptr %.021, i64 %i.abk ; 5 uses
  %i.abm = load i8, ptr %i.abl, align 8           ; 2 uses
  %i.abn = trunc i8 %i.abm to i1                  ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abl, i64 16
  %i.abp = load ptr, ptr %i.abo, align 8
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abl, i64 1
  %i.abr = select i1 %i.abn, ptr %i.abp, ptr %i.abq
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abl, i64 8
  %i.abt = load i64, ptr %i.abs, align 8
  %i.abu = lshr i8 %i.abm, 1
  %i.abv = zext nneg i8 %i.abu to i64
  %i.abw = select i1 %i.abn, i64 %i.abt, i64 %i.abv ; 2 uses
  %.sroa.speculated.i.i.i.i12.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.zv, i64 %i.abw)
  %i.abx = call noundef i32 @memcmp(ptr noundef %i.abr, ptr noundef %i.zr, i64 noundef %.sroa.speculated.i.i.i.i12.i.i.i.i.i) #44 ; 2 uses
  %i.aby = icmp eq i32 %i.abx, 0
  br i1 %i.aby, label %bb.bz, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.i.i.i.i.i"

bb.bz:                                            ; preds = %bb.by
  %i.abz = icmp ult i64 %i.abw, %i.zv
  br i1 %i.abz, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.i.i.i.i.i", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.thread.i.i.i.i.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.i.i.i.i.i": ; preds = %bb.bz, %bb.by
  %.0.i.i.i.i13.i.i.i.i.i = phi i32 [ %i.abx, %bb.by ], [ -1, %bb.bz ]
  %i.aca = icmp slt i32 %.0.i.i.i.i13.i.i.i.i.i, 0
  br i1 %i.aca, label %bb.bt, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.thread.i.i.i.i.i", !llvm.loop !3038

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.thread.i.i.i.i.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.i.i.i.i.i", %bb.bz, %_ZN3tev13AttributeNodeaSEOS0_.exit.i.i.i
  %i.acb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 80
  %i.acc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 88 ; 2 uses
  %i.acd = load i8, ptr %.06.i.i.i.i.i, align 8
  %i.ace = trunc i8 %i.acd to i1
  br i1 %i.ace, label %bb.ca, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i

bb.ca:                                            ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.thread.i.i.i.i.i"
  %i.acf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !126
  %i.ach = load i64, ptr %.06.i.i.i.i.i, align 8
  %i.aci = and i64 %i.ach, -2
  tail call void @_ZdlPvm(ptr noundef %i.acg, i64 noundef %i.aci) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i: ; preds = %bb.ca, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.thread.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.06.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %7, i64 24, i1 false), !tbaa.struct !431
  %i.acj = load i8, ptr %i.aae, align 8
  %i.ack = trunc i8 %i.acj to i1
  br i1 %i.ack, label %bb.cb, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i.i.i.i.i

bb.cb:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i
  %i.acl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 40
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !126
  %i.acn = load i64, ptr %i.aae, align 8
  %i.aco = and i64 %i.acn, -2
  tail call void @_ZdlPvm(ptr noundef %i.acm, i64 noundef %i.aco) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i.i.i.i.i: ; preds = %bb.cb, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aae, ptr noundef nonnull align 8 dereferenceable(24) %i.sn, i64 24, i1 false), !tbaa.struct !431
  %i.acp = load i8, ptr %i.aan, align 8
  %i.acq = trunc i8 %i.acp to i1
  br i1 %i.acq, label %bb.cc, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i.i.i.i.i

bb.cc:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i.i.i.i.i
  %i.acr = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 64
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !126
  %i.act = load i64, ptr %i.aan, align 8
  %i.acu = and i64 %i.act, -2
  tail call void @_ZdlPvm(ptr noundef %i.acs, i64 noundef %i.acu) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i.i.i.i.i: ; preds = %bb.cc, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aan, ptr noundef nonnull align 8 dereferenceable(24) %i.so, i64 24, i1 false), !tbaa.struct !431
  %i.acv = load ptr, ptr %i.abd, align 8, !tbaa !130 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.acv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN3tev13AttributeNodeD2Ev.exit.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i.i.i.i.i
  tail call void @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__base_destruct_at_endB8ne180100EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.abd, ptr noundef nonnull %i.acv) #44, !inline_history !59
  %i.acw = load ptr, ptr %i.abd, align 8, !tbaa !130 ; 2 uses
  %i.acx = load ptr, ptr %i.acc, align 8, !tbaa !129
  %i.acy = ptrtoint ptr %i.acx to i64
  %i.acz = ptrtoint ptr %i.acw to i64
  %i.ada = sub i64 %i.acy, %i.acz
  tail call void @_ZdlPvm(ptr noundef %i.acw, i64 noundef %i.ada) #45
  br label %_ZN3tev13AttributeNodeD2Ev.exit.i.i.i.i.i

_ZN3tev13AttributeNodeD2Ev.exit.i.i.i.i.i:        ; preds = %bb.cd, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i.i.i.i.i
  store ptr %i.zl, ptr %i.abd, align 8, !tbaa !130
  store ptr %i.zm, ptr %i.acb, align 8, !tbaa !125
  store ptr %i.zn, ptr %i.acc, align 8, !tbaa !129
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  br label %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SB_RT0_NS_15iterator_traitsISB_E15difference_typeE.exit.i.i.i"

"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SB_RT0_NS_15iterator_traitsISB_E15difference_typeE.exit.i.i.i": ; preds = %_ZN3tev13AttributeNodeD2Ev.exit.i.i.i.i.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i20.i.i.i.i", %bb.bs, %_ZN3tev13AttributeNodeaSEOS0_.exit17.i.i.i.i, %_ZN3tev13AttributeNodeaSEOS0_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.i.i)
  %i.adb = add nsw i64 %.042.i.i.i, -1
  %i.adc = icmp sgt i64 %.042.i.i.i, 2
  br i1 %i.adc, label %bb.az, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.thread", !llvm.loop !3039

bb.ce:                                            ; preds = %bb.aj
  %i.add = add nsw i64 %.046, -1                  ; 4 uses
  %i.ade = lshr i64 %i.af, 1
  %i.adf = icmp samesign ugt i64 %i.ae, 12288
  %i.adg = getelementptr [96 x i8], ptr %.021, i64 %i.ade ; 6 uses
  br i1 %i.adf, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  tail call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEjT1_SC_SC_T0_"(ptr noundef %.021, ptr noundef %i.adg, ptr noundef nonnull %i.v)
  %i.adh = getelementptr inbounds nuw i8, ptr %.021, i64 96
  %i.adi = getelementptr i8, ptr %i.adg, i64 -96  ; 2 uses
  tail call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEjT1_SC_SC_T0_"(ptr noundef nonnull %i.adh, ptr noundef %i.adi, ptr noundef nonnull %i.w)
  %i.adj = getelementptr inbounds nuw i8, ptr %.021, i64 192
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adg, i64 96 ; 2 uses
  tail call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEjT1_SC_SC_T0_"(ptr noundef nonnull %i.adj, ptr noundef nonnull %i.adk, ptr noundef nonnull %i.x)
  tail call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEjT1_SC_SC_T0_"(ptr noundef %i.adi, ptr noundef %i.adg, ptr noundef nonnull %i.adk)
  tail call void @_ZNSt3__14swapB8ne180100IN3tev13AttributeNodeEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(96) %.021, ptr noundef nonnull align 8 dereferenceable(96) %i.adg) #44
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  tail call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEjT1_SC_SC_T0_"(ptr noundef %i.adg, ptr noundef %.021, ptr noundef nonnull %i.v)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  br i1 %i.ac, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73.thread33", label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.adl = getelementptr inbounds i8, ptr %.021, i64 -96
  %i.adm = load i8, ptr %i.adl, align 8           ; 2 uses
  %i.adn = trunc i8 %i.adm to i1                  ; 2 uses
  %i.ado = getelementptr inbounds i8, ptr %.021, i64 -80
  %i.adp = load ptr, ptr %i.ado, align 8
  %i.adq = getelementptr inbounds i8, ptr %.021, i64 -95
  %i.adr = select i1 %i.adn, ptr %i.adp, ptr %i.adq
  %i.ads = getelementptr inbounds i8, ptr %.021, i64 -88
  %i.adt = load i64, ptr %i.ads, align 8
  %i.adu = lshr i8 %i.adm, 1
  %i.adv = zext nneg i8 %i.adu to i64
  %i.adw = select i1 %i.adn, i64 %i.adt, i64 %i.adv ; 2 uses
  %i.adx = load i8, ptr %.021, align 8            ; 2 uses
  %i.ady = trunc i8 %i.adx to i1                  ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.aea = load ptr, ptr %i.adz, align 8
  %i.aeb = getelementptr inbounds nuw i8, ptr %.021, i64 1
  %i.aec = select i1 %i.ady, ptr %i.aea, ptr %i.aeb
  %i.aed = getelementptr inbounds nuw i8, ptr %.021, i64 8
  %i.aee = load i64, ptr %i.aed, align 8
  %i.aef = lshr i8 %i.adx, 1
  %i.aeg = zext nneg i8 %i.aef to i64
  %i.aeh = select i1 %i.ady, i64 %i.aee, i64 %i.aeg ; 2 uses
  %.sroa.speculated.i.i.i.i71 = tail call i64 @llvm.umin.i64(i64 %i.aeh, i64 %i.adw)
  %i.aei = tail call noundef i32 @memcmp(ptr noundef %i.adr, ptr noundef %i.aec, i64 noundef %.sroa.speculated.i.i.i.i71) #44 ; 2 uses
  %i.aej = icmp eq i32 %i.aei, 0
  br i1 %i.aej, label %bb.cj, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73"

bb.cj:                                            ; preds = %bb.ci
  %i.aek = icmp ult i64 %i.adw, %i.aeh
  br i1 %i.aek, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73.thread33", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73.thread"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73": ; preds = %bb.ci
  %i.ael = icmp slt i32 %i.aei, 0
  br i1 %i.ael, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73.thread33", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73.thread"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73.thread": ; preds = %bb.cj, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73"
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 8 dereferenceable(96) %.021, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.021, i8 0, i64 24, i1 false)
  %i.aem = getelementptr inbounds nuw i8, ptr %.021, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.aem, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aem, i8 0, i64 24, i1 false)
  %i.aen = getelementptr inbounds nuw i8, ptr %.021, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.aen, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aen, i8 0, i64 24, i1 false)
  %i.aeo = getelementptr inbounds nuw i8, ptr %.021, i64 72 ; 2 uses
  %i.aep = load <2 x ptr>, ptr %i.aeo, align 8, !tbaa !129
  store <2 x ptr> %i.aep, ptr %i.d, align 8, !tbaa !129
  %i.aeq = getelementptr inbounds nuw i8, ptr %.021, i64 88
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !129
  store ptr %i.aer, ptr %i.e, align 8, !tbaa !129
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aeo, i8 0, i64 24, i1 false)
  %i.aes = load i8, ptr %6, align 8               ; 2 uses
  %i.aet = trunc i8 %i.aes to i1                  ; 2 uses
  %i.aeu = load ptr, ptr %i.f, align 8
  %i.aev = select i1 %i.aet, ptr %i.aeu, ptr %i.g ; 6 uses
  %i.aew = load i64, ptr %i.h, align 8
  %i.aex = lshr i8 %i.aes, 1
  %i.aey = zext nneg i8 %i.aex to i64
  %i.aez = select i1 %i.aet, i64 %i.aew, i64 %i.aey ; 15 uses
  %i.afa = load i8, ptr %i.y, align 8             ; 2 uses
  %i.afb = trunc i8 %i.afa to i1                  ; 2 uses
  %i.afc = load ptr, ptr %i.z, align 8
  %i.afd = select i1 %i.afb, ptr %i.afc, ptr %i.aa
  %i.afe = load i64, ptr %i.ab, align 8
  %i.aff = lshr i8 %i.afa, 1
  %i.afg = zext nneg i8 %i.aff to i64
  %i.afh = select i1 %i.afb, i64 %i.afe, i64 %i.afg ; 2 uses
  %.sroa.speculated.i.i.i.i.i74 = tail call i64 @llvm.umin.i64(i64 %i.afh, i64 %i.aez)
  %i.afi = call noundef i32 @memcmp(ptr noundef %i.aev, ptr noundef %i.afd, i64 noundef %.sroa.speculated.i.i.i.i.i74) #44 ; 2 uses
  %i.afj = icmp eq i32 %i.afi, 0
  br i1 %i.afj, label %bb.ck, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i75"

bb.ck:                                            ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73.thread"
  %i.afk = icmp ult i64 %i.aez, %i.afh
  br i1 %i.afk, label %.preheader34.i.preheader, label %.preheader35.i.preheader

.preheader35.i.preheader:                         ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i75", %bb.ck
  br label %.preheader35.i

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i75": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73.thread"
  %i.afl = icmp slt i32 %i.afi, 0
  br i1 %i.afl, label %.preheader34.i.preheader, label %.preheader35.i.preheader

.preheader34.i.preheader:                         ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i75", %bb.ck
  br label %.preheader34.i

.preheader34.i:                                   ; preds = %.preheader34.i.preheader, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit12.i"
  %.018.i = phi ptr [ %i.afm, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit12.i" ], [ %.021, %.preheader34.i.preheader ] ; 4 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %.018.i, i64 96 ; 4 uses
  %i.afn = load i8, ptr %i.afm, align 8           ; 2 uses
  %i.afo = trunc i8 %i.afn to i1                  ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %.018.i, i64 112
  %i.afq = load ptr, ptr %i.afp, align 8
  %i.afr = getelementptr inbounds nuw i8, ptr %.018.i, i64 97
  %i.afs = select i1 %i.afo, ptr %i.afq, ptr %i.afr
  %i.aft = getelementptr inbounds nuw i8, ptr %.018.i, i64 104
  %i.afu = load i64, ptr %i.aft, align 8
  %i.afv = lshr i8 %i.afn, 1
  %i.afw = zext nneg i8 %i.afv to i64
  %i.afx = select i1 %i.afo, i64 %i.afu, i64 %i.afw ; 3 uses
  %.sroa.speculated.i.i.i.i10.i = tail call i64 @llvm.umin.i64(i64 %i.afx, i64 %i.aez)
  %i.afy = call noundef i32 @memcmp(ptr noundef %i.aev, ptr noundef %i.afs, i64 noundef %.sroa.speculated.i.i.i.i10.i) #44 ; 2 uses
  %i.afz = icmp eq i32 %i.afy, 0
  br i1 %i.afz, label %bb.cl, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit12.i"

bb.cl:                                            ; preds = %.preheader34.i
  %i.aga = icmp eq i64 %i.aez, %i.afx
  br i1 %i.aga, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit12.i", label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.agb = icmp ult i64 %i.aez, %i.afx
  br i1 %i.agb, label %.critedge.i76, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit12.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit12.i": ; preds = %bb.cm, %bb.cl, %.preheader34.i
  %.0.i.i.i.i11.i = phi i32 [ %i.afy, %.preheader34.i ], [ 1, %bb.cm ], [ 0, %bb.cl ]
  %i.agc = icmp slt i32 %.0.i.i.i.i11.i, 0
  br i1 %i.agc, label %.critedge.i76, label %.preheader34.i, !llvm.loop !3040

.preheader35.i:                                   ; preds = %.preheader35.i.preheader, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit15.i"
  %.119.i = phi ptr [ %i.agd, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit15.i" ], [ %.021, %.preheader35.i.preheader ] ; 4 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %.119.i, i64 96 ; 6 uses
  %i.age = icmp ult ptr %i.agd, %.024.ph
  br i1 %i.age, label %bb.cn, label %.critedge.i76

bb.cn:                                            ; preds = %.preheader35.i
  %i.agf = load i8, ptr %i.agd, align 8           ; 2 uses
  %i.agg = trunc i8 %i.agf to i1                  ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %.119.i, i64 112
  %i.agi = load ptr, ptr %i.agh, align 8
  %i.agj = getelementptr inbounds nuw i8, ptr %.119.i, i64 97
  %i.agk = select i1 %i.agg, ptr %i.agi, ptr %i.agj
  %i.agl = getelementptr inbounds nuw i8, ptr %.119.i, i64 104
  %i.agm = load i64, ptr %i.agl, align 8
  %i.agn = lshr i8 %i.agf, 1
  %i.ago = zext nneg i8 %i.agn to i64
  %i.agp = select i1 %i.agg, i64 %i.agm, i64 %i.ago ; 3 uses
  %.sroa.speculated.i.i.i.i13.i = tail call i64 @llvm.umin.i64(i64 %i.agp, i64 %i.aez)
  %i.agq = call noundef i32 @memcmp(ptr noundef %i.aev, ptr noundef %i.agk, i64 noundef %.sroa.speculated.i.i.i.i13.i) #44 ; 2 uses
  %i.agr = icmp eq i32 %i.agq, 0
  br i1 %i.agr, label %bb.co, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit15.i"

bb.co:                                            ; preds = %bb.cn
  %i.ags = icmp eq i64 %i.aez, %i.agp
  br i1 %i.ags, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit15.i", label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.agt = icmp ult i64 %i.aez, %i.agp
  br i1 %i.agt, label %.critedge.i76, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit15.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit15.i": ; preds = %bb.cp, %bb.co, %bb.cn
  %.0.i.i.i.i14.i = phi i32 [ %i.agq, %bb.cn ], [ 1, %bb.cp ], [ 0, %bb.co ]
  %i.agu = icmp slt i32 %.0.i.i.i.i14.i, 0
  br i1 %i.agu, label %.critedge.i76, label %.preheader35.i, !llvm.loop !3041

.critedge.i76:                                    ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit15.i", %bb.cp, %.preheader35.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit12.i", %bb.cm
  %.220.i = phi ptr [ %i.afm, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit12.i" ], [ %i.afm, %bb.cm ], [ %i.agd, %.preheader35.i ], [ %i.agd, %bb.cp ], [ %i.agd, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit15.i" ] ; 4 uses
  %i.agv = icmp ult ptr %.220.i, %.024.ph
  br i1 %i.agv, label %.preheader33.i, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit18.thread.i"

.preheader33.i:                                   ; preds = %.critedge.i76, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit18.i"
  %.0.i88 = phi ptr [ %i.agw, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit18.i" ], [ %.024.ph, %.critedge.i76 ] ; 4 uses
  %i.agw = getelementptr inbounds i8, ptr %.0.i88, i64 -96 ; 4 uses
  %i.agx = load i8, ptr %i.agw, align 8           ; 2 uses
  %i.agy = trunc i8 %i.agx to i1                  ; 2 uses
  %i.agz = getelementptr inbounds i8, ptr %.0.i88, i64 -80
  %i.aha = load ptr, ptr %i.agz, align 8
  %i.ahb = getelementptr inbounds i8, ptr %.0.i88, i64 -95
  %i.ahc = select i1 %i.agy, ptr %i.aha, ptr %i.ahb
  %i.ahd = getelementptr inbounds i8, ptr %.0.i88, i64 -88
  %i.ahe = load i64, ptr %i.ahd, align 8
  %i.ahf = lshr i8 %i.agx, 1
  %i.ahg = zext nneg i8 %i.ahf to i64
end_hunk_2
begin_hunk_3_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeELb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb":bb.a
  %i.amx = getelementptr inbounds i8, ptr %.1.i94, i64 -88
  %i.amy = load i64, ptr %i.amx, align 8
  %i.amz = lshr i8 %i.amr, 1
  %i.ana = zext nneg i8 %i.amz to i64
  %i.anb = select i1 %i.ams, i64 %i.amy, i64 %i.ana ; 3 uses
  %.sroa.speculated.i.i.i.i15.i95 = tail call i64 @llvm.umin.i64(i64 %i.alg, i64 %i.anb)
  %i.anc = call noundef i32 @memcmp(ptr noundef %i.amw, ptr noundef %i.alc, i64 noundef %.sroa.speculated.i.i.i.i15.i95) #44 ; 2 uses
  %i.and = icmp eq i32 %i.anc, 0
  br i1 %i.and, label %bb.dj, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.i96"

bb.dj:                                            ; preds = %.preheader30.i
  %i.ane = icmp eq i64 %i.anb, %i.alg
  br i1 %i.ane, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.i96", label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.anf = icmp ult i64 %i.anb, %i.alg
  br i1 %i.anf, label %.critedge.i98, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.i96"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.i96": ; preds = %bb.dk, %bb.dj, %.preheader30.i
  %.0.i.i.i.i16.i97 = phi i32 [ %i.anc, %.preheader30.i ], [ 1, %bb.dk ], [ 0, %bb.dj ]
  %i.ang = icmp slt i32 %.0.i.i.i.i16.i97, 0
  br i1 %i.ang, label %.critedge.i98, label %.preheader30.i, !llvm.loop !3048

.critedge.i98:                                    ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.i96", %bb.dk, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.i", %bb.di, %.preheader29.i
  %.2.i = phi ptr [ %i.alz, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.i" ], [ %.0.i110, %.preheader29.i ], [ %i.alz, %bb.di ], [ %i.amq, %bb.dk ], [ %i.amq, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.i96" ] ; 2 uses
  %i.anh = icmp ult ptr %i.alh, %.2.i             ; 2 uses
  br i1 %i.anh, label %.lr.ph.i106, label %._crit_edge.i99

.lr.ph.i106:                                      ; preds = %.critedge.i98, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit23.thread.i"
  %.343.i = phi ptr [ %i.any, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit23.thread.i" ], [ %.2.i, %.critedge.i98 ] ; 2 uses
  %.11942.i = phi ptr [ %i.ani, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit23.thread.i" ], [ %i.alh, %.critedge.i98 ] ; 2 uses
  tail call void @_ZNSt3__14swapB8ne180100IN3tev13AttributeNodeEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(96) %.11942.i, ptr noundef nonnull align 8 dereferenceable(96) %.343.i) #44
  br label %bb.dl

bb.dl:                                            ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit20.i", %.lr.ph.i106
  %.220.i107 = phi ptr [ %.11942.i, %.lr.ph.i106 ], [ %i.ani, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit20.i" ] ; 4 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %.220.i107, i64 96 ; 5 uses
  %i.anj = load i8, ptr %i.ani, align 8           ; 2 uses
  %i.ank = trunc i8 %i.anj to i1                  ; 2 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %.220.i107, i64 112
  %i.anm = load ptr, ptr %i.anl, align 8
  %i.ann = getelementptr inbounds nuw i8, ptr %.220.i107, i64 97
  %i.ano = select i1 %i.ank, ptr %i.anm, ptr %i.ann
  %i.anp = getelementptr inbounds nuw i8, ptr %.220.i107, i64 104
  %i.anq = load i64, ptr %i.anp, align 8
  %i.anr = lshr i8 %i.anj, 1
  %i.ans = zext nneg i8 %i.anr to i64
  %i.ant = select i1 %i.ank, i64 %i.anq, i64 %i.ans ; 2 uses
  %.sroa.speculated.i.i.i.i18.i = tail call i64 @llvm.umin.i64(i64 %i.alg, i64 %i.ant)
  %i.anu = call noundef i32 @memcmp(ptr noundef %i.ano, ptr noundef %i.alc, i64 noundef %.sroa.speculated.i.i.i.i18.i) #44 ; 2 uses
  %i.anv = icmp eq i32 %i.anu, 0
  br i1 %i.anv, label %bb.dm, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit20.i"

bb.dm:                                            ; preds = %bb.dl
  %i.anw = icmp ult i64 %i.ant, %i.alg
  br i1 %i.anw, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit20.i", label %.preheader.i108.preheader

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit20.i": ; preds = %bb.dm, %bb.dl
  %.0.i.i.i.i19.i = phi i32 [ %i.anu, %bb.dl ], [ -1, %bb.dm ]
  %i.anx = icmp slt i32 %.0.i.i.i.i19.i, 0
  br i1 %i.anx, label %bb.dl, label %.preheader.i108.preheader, !llvm.loop !3049

.preheader.i108.preheader:                        ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit20.i", %bb.dm
  br label %.preheader.i108

.preheader.i108:                                  ; preds = %.preheader.i108.preheader, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit23.i"
  %.4.i109 = phi ptr [ %i.any, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit23.i" ], [ %.343.i, %.preheader.i108.preheader ] ; 4 uses
  %i.any = getelementptr inbounds i8, ptr %.4.i109, i64 -96 ; 4 uses
  %i.anz = load i8, ptr %i.any, align 8           ; 2 uses
  %i.aoa = trunc i8 %i.anz to i1                  ; 2 uses
  %i.aob = getelementptr inbounds i8, ptr %.4.i109, i64 -80
  %i.aoc = load ptr, ptr %i.aob, align 8
  %i.aod = getelementptr inbounds i8, ptr %.4.i109, i64 -95
  %i.aoe = select i1 %i.aoa, ptr %i.aoc, ptr %i.aod
  %i.aof = getelementptr inbounds i8, ptr %.4.i109, i64 -88
  %i.aog = load i64, ptr %i.aof, align 8
  %i.aoh = lshr i8 %i.anz, 1
  %i.aoi = zext nneg i8 %i.aoh to i64
  %i.aoj = select i1 %i.aoa, i64 %i.aog, i64 %i.aoi ; 3 uses
  %.sroa.speculated.i.i.i.i21.i = tail call i64 @llvm.umin.i64(i64 %i.alg, i64 %i.aoj)
  %i.aok = call noundef i32 @memcmp(ptr noundef %i.aoe, ptr noundef %i.alc, i64 noundef %.sroa.speculated.i.i.i.i21.i) #44 ; 2 uses
  %i.aol = icmp eq i32 %i.aok, 0
  br i1 %i.aol, label %bb.dn, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit23.i"

bb.dn:                                            ; preds = %.preheader.i108
  %i.aom = icmp eq i64 %i.aoj, %i.alg
  br i1 %i.aom, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit23.i", label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.aon = icmp ult i64 %i.aoj, %i.alg
  br i1 %i.aon, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit23.thread.i", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit23.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit23.i": ; preds = %bb.do, %bb.dn, %.preheader.i108
  %.0.i.i.i.i22.i = phi i32 [ %i.aok, %.preheader.i108 ], [ 1, %bb.do ], [ 0, %bb.dn ]
  %i.aoo = icmp slt i32 %.0.i.i.i.i22.i, 0
  br i1 %i.aoo, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit23.thread.i", label %.preheader.i108, !llvm.loop !3050

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit23.thread.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit23.i", %bb.do
  %i.aop = icmp ult ptr %i.ani, %i.any
  br i1 %i.aop, label %.lr.ph.i106, label %._crit_edge.i99, !llvm.loop !3051

._crit_edge.i99:                                  ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit23.thread.i", %.critedge.i98
  %.119.lcssa.i = phi ptr [ %i.alh, %.critedge.i98 ], [ %i.ani, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit23.thread.i" ] ; 13 uses
  %i.aoq = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -96 ; 8 uses
  %.not.i100 = icmp eq ptr %.021, %i.aoq
  br i1 %.not.i100, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %._crit_edge.i99
  %i.aor = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN3tev13AttributeNodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(96) %.021, ptr noundef nonnull align 8 dereferenceable(96) %i.aoq) #44 ; 0 uses
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %._crit_edge.i99
  %i.aos = load i8, ptr %i.aoq, align 8
  %i.aot = trunc i8 %i.aos to i1
  br i1 %i.aot, label %bb.dr, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i101

bb.dr:                                            ; preds = %bb.dq
  %i.aou = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -80
  %i.aov = load ptr, ptr %i.aou, align 8, !tbaa !126
  %i.aow = load i64, ptr %i.aoq, align 8
  %i.aox = and i64 %i.aow, -2
  tail call void @_ZdlPvm(ptr noundef %i.aov, i64 noundef %i.aox) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i101

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i101: ; preds = %bb.dr, %bb.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aoq, ptr noundef nonnull align 8 dereferenceable(96) %5, i64 24, i1 false), !tbaa.struct !431
  %i.aoy = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -72 ; 3 uses
  %i.aoz = load i8, ptr %i.aoy, align 8
  %i.apa = trunc i8 %i.aoz to i1
  br i1 %i.apa, label %bb.ds, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i102

bb.ds:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i101
  %i.apb = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -56
  %i.apc = load ptr, ptr %i.apb, align 8, !tbaa !126
  %i.apd = load i64, ptr %i.aoy, align 8
  %i.ape = and i64 %i.apd, -2
  tail call void @_ZdlPvm(ptr noundef %i.apc, i64 noundef %i.ape) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i102

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i102: ; preds = %bb.ds, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aoy, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !431
  %i.apf = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -48 ; 3 uses
  %i.apg = load i8, ptr %i.apf, align 8
  %i.aph = trunc i8 %i.apg to i1
  br i1 %i.aph, label %bb.dt, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i103

bb.dt:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i102
  %i.api = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -32
  %i.apj = load ptr, ptr %i.api, align 8, !tbaa !126
  %i.apk = load i64, ptr %i.apf, align 8
  %i.apl = and i64 %i.apk, -2
  tail call void @_ZdlPvm(ptr noundef %i.apj, i64 noundef %i.apl) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i103

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i103: ; preds = %bb.dt, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.apf, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !tbaa.struct !431
  %i.apm = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -24 ; 4 uses
  %i.apn = load ptr, ptr %i.apm, align 8, !tbaa !130 ; 2 uses
  %.not.i.i.i.i.i104 = icmp eq ptr %i.apn, null
  br i1 %.not.i.i.i.i.i104, label %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev13AttributeNodeERZNS2_9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0EENS_4pairIT0_bEESD_SD_T1_.exit", label %bb.du

bb.du:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i103
  tail call void @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__base_destruct_at_endB8ne180100EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.apm, ptr noundef nonnull %i.apn) #44, !inline_history !59
  %i.apo = load ptr, ptr %i.apm, align 8, !tbaa !130 ; 2 uses
  %i.app = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -8
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !129
  %i.apr = ptrtoint ptr %i.apq to i64
  %i.aps = ptrtoint ptr %i.apo to i64
  %i.apt = sub i64 %i.apr, %i.aps
  tail call void @_ZdlPvm(ptr noundef %i.apo, i64 noundef %i.apt) #45
  br label %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev13AttributeNodeERZNS2_9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0EENS_4pairIT0_bEESD_SD_T1_.exit"

"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev13AttributeNodeERZNS2_9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0EENS_4pairIT0_bEESD_SD_T1_.exit": ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i103, %bb.du
  store ptr %i.aku, ptr %i.apm, align 8, !tbaa !130
  %i.apu = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -16
  store ptr %i.akw, ptr %i.apu, align 8, !tbaa !125
  %i.apv = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -8
  store ptr %i.aky, ptr %i.apv, align 8, !tbaa !129
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br i1 %i.anh, label %bb.dy, label %bb.dv

bb.dv:                                            ; preds = %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev13AttributeNodeERZNS2_9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0EENS_4pairIT0_bEESD_SD_T1_.exit"
  %i.apw = tail call fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEbT1_SC_T0_"(ptr noundef %.021, ptr noundef nonnull %i.aoq) ; 2 uses
  %i.apx = tail call fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEbT1_SC_T0_"(ptr noundef nonnull %.119.lcssa.i, ptr noundef %.024.ph)
  br i1 %i.apx, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  br i1 %i.apw, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.thread", label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.outer", !llvm.loop !3052

bb.dx:                                            ; preds = %bb.dv
  br i1 %i.apw, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit", label %bb.dy, !llvm.loop !3052

bb.dy:                                            ; preds = %bb.dx, %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev13AttributeNodeERZNS2_9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0EENS_4pairIT0_bEESD_SD_T1_.exit"
  tail call fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeELb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb"(ptr noundef %.021, ptr noundef nonnull %i.aoq, i64 noundef %i.add, i1 noundef zeroext %i.ac)
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.outer426.backedge"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.outer426.backedge": ; preds = %bb.dy, %"_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPN3tev13AttributeNodeERZNS2_9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0EET0_SC_SC_T1_.exit"
  %.021.ph427.be = phi ptr [ %.321.lcssa.i, %"_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPN3tev13AttributeNodeERZNS2_9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0EET0_SC_SC_T1_.exit" ], [ %.119.lcssa.i, %bb.dy ]
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.outer426", !llvm.loop !3052

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.thread": ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit", %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit", %bb.dw, %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SB_RT0_NS_15iterator_traitsISB_E15difference_typeE.exit.i.i.i", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i58", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i", %bb.c, %.preheader.i54, %bb.w, %.preheader.i, %bb.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread29", %bb.e, %bb.d, %bb.f, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit"
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZNSt3__124__sort5_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSE_SE_SE_SE_SE_SD_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call fastcc void @"_ZNSt3__17__sort4B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_SC_SC_T0_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.a = load i8, ptr %4, align 8                 ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.f = select i1 %i.b, ptr %i.d, ptr %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = lshr i8 %i.a, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j       ; 2 uses
  %i.l = load i8, ptr %3, align 8                 ; 2 uses
  %i.m = trunc i8 %i.l to i1                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %i.q = select i1 %i.m, ptr %i.o, ptr %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = lshr i8 %i.l, 1
  %i.u = zext nneg i8 %i.t to i64
  %i.v = select i1 %i.m, i64 %i.s, i64 %i.u       ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.k)
  %i.w = tail call noundef i32 @memcmp(ptr noundef %i.f, ptr noundef %i.q, i64 noundef %.sroa.speculated.i.i.i.i.i) #44 ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.b, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i"

bb.b:                                             ; preds = %bb.a
  %i.y = icmp ult i64 %i.k, %i.v
  br i1 %i.y, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread17.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_SC_SC_SC_T0_.exit"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i": ; preds = %bb.a
  %i.z = icmp slt i32 %i.w, 0
  br i1 %i.z, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread17.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_SC_SC_SC_T0_.exit"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread17.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i", %bb.b
  tail call void @_ZNSt3__14swapB8ne180100IN3tev13AttributeNodeEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(96) %4) #44
  %i.aa = load i8, ptr %3, align 8                ; 2 uses
  %i.ab = trunc i8 %i.aa to i1                    ; 2 uses
  %i.ac = load ptr, ptr %i.n, align 8
  %i.ad = select i1 %i.ab, ptr %i.ac, ptr %i.p
  %i.ae = load i64, ptr %i.r, align 8
  %i.af = lshr i8 %i.aa, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = select i1 %i.ab, i64 %i.ae, i64 %i.ag   ; 2 uses
  %i.ai = load i8, ptr %2, align 8                ; 2 uses
  %i.aj = trunc i8 %i.ai to i1                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.an = select i1 %i.aj, ptr %i.al, ptr %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = lshr i8 %i.ai, 1
  %i.ar = zext nneg i8 %i.aq to i64
  %i.as = select i1 %i.aj, i64 %i.ap, i64 %i.ar   ; 2 uses
  %.sroa.speculated.i.i.i.i5.i = tail call i64 @llvm.umin.i64(i64 %i.as, i64 %i.ah)
  %i.at = tail call noundef i32 @memcmp(ptr noundef %i.ad, ptr noundef %i.an, i64 noundef %.sroa.speculated.i.i.i.i5.i) #44 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.c, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit7.i"

bb.c:                                             ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread17.i"
  %i.av = icmp ult i64 %i.ah, %i.as
  br i1 %i.av, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit7.thread21.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_SC_SC_SC_T0_.exit"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit7.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread17.i"
  %i.aw = icmp slt i32 %i.at, 0
  br i1 %i.aw, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit7.thread21.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_SC_SC_SC_T0_.exit"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit7.thread21.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit7.i", %bb.c
  tail call void @_ZNSt3__14swapB8ne180100IN3tev13AttributeNodeEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) %3) #44
  %i.ax = load i8, ptr %2, align 8                ; 2 uses
  %i.ay = trunc i8 %i.ax to i1                    ; 2 uses
  %i.az = load ptr, ptr %i.ak, align 8
  %i.ba = select i1 %i.ay, ptr %i.az, ptr %i.am
  %i.bb = load i64, ptr %i.ao, align 8
  %i.bc = lshr i8 %i.ax, 1
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = select i1 %i.ay, i64 %i.bb, i64 %i.bd   ; 2 uses
  %i.bf = load i8, ptr %1, align 8                ; 2 uses
  %i.bg = trunc i8 %i.bf to i1                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.bk = select i1 %i.bg, ptr %i.bi, ptr %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = lshr i8 %i.bf, 1
  %i.bo = zext nneg i8 %i.bn to i64
  %i.bp = select i1 %i.bg, i64 %i.bm, i64 %i.bo   ; 2 uses
  %.sroa.speculated.i.i.i.i8.i = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 %i.be)
  %i.bq = tail call noundef i32 @memcmp(ptr noundef %i.ba, ptr noundef %i.bk, i64 noundef %.sroa.speculated.i.i.i.i8.i) #44 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.d, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit10.i"

bb.d:                                             ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit7.thread21.i"
  %i.bs = icmp ult i64 %i.be, %i.bp
  br i1 %i.bs, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit10.thread25.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_SC_SC_SC_T0_.exit"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit10.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit7.thread21.i"
  %i.bt = icmp slt i32 %i.bq, 0
  br i1 %i.bt, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit10.thread25.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_SC_SC_SC_T0_.exit"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit10.thread25.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit10.i", %bb.d
  tail call void @_ZNSt3__14swapB8ne180100IN3tev13AttributeNodeEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %2) #44
  %i.bu = load i8, ptr %1, align 8                ; 2 uses
  %i.bv = trunc i8 %i.bu to i1                    ; 2 uses
  %i.bw = load ptr, ptr %i.bh, align 8
  %i.bx = select i1 %i.bv, ptr %i.bw, ptr %i.bj
  %i.by = load i64, ptr %i.bl, align 8
  %i.bz = lshr i8 %i.bu, 1
  %i.ca = zext nneg i8 %i.bz to i64
  %i.cb = select i1 %i.bv, i64 %i.by, i64 %i.ca   ; 2 uses
  %i.cc = load i8, ptr %0, align 8                ; 2 uses
  %i.cd = trunc i8 %i.cc to i1                    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ch = select i1 %i.cd, ptr %i.cf, ptr %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = lshr i8 %i.cc, 1
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = select i1 %i.cd, i64 %i.cj, i64 %i.cl   ; 2 uses
  %.sroa.speculated.i.i.i.i11.i = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 %i.cb)
  %i.cn = tail call noundef i32 @memcmp(ptr noundef %i.bx, ptr noundef %i.ch, i64 noundef %.sroa.speculated.i.i.i.i11.i) #44 ; 2 uses
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.e, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit13.i"

bb.e:                                             ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit10.thread25.i"
  %i.cp = icmp ult i64 %i.cb, %i.cm
  br i1 %i.cp, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit13.thread29.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_SC_SC_SC_T0_.exit"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit13.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit10.thread25.i"
  %i.cq = icmp slt i32 %i.cn, 0
  br i1 %i.cq, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit13.thread29.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_SC_SC_SC_T0_.exit"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit13.thread29.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit13.i", %bb.e
  tail call void @_ZNSt3__14swapB8ne180100IN3tev13AttributeNodeEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) #44
  br label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_SC_SC_SC_T0_.exit"

"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_SC_SC_SC_T0_.exit": ; preds = %bb.b, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i", %bb.c, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit7.i", %bb.d, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit10.i", %bb.e, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit13.i", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit13.thread29.i"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEjT1_SC_SC_T0_"(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8                 ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.f = select i1 %i.b, ptr %i.d, ptr %i.e       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = lshr i8 %i.a, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j       ; 6 uses
  %i.l = load i8, ptr %0, align 8                 ; 2 uses
  %i.m = trunc i8 %i.l to i1                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.q = select i1 %i.m, ptr %i.o, ptr %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = lshr i8 %i.l, 1
  %i.u = zext nneg i8 %i.t to i64
  %i.v = select i1 %i.m, i64 %i.s, i64 %i.u       ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.k)
  %i.w = tail call noundef i32 @memcmp(ptr noundef %i.f, ptr noundef %i.q, i64 noundef %.sroa.speculated.i.i.i.i) #44 ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.b, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit"

bb.b:                                             ; preds = %bb.a
  %i.y = icmp ult i64 %i.k, %i.v
  br i1 %i.y, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread19", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit": ; preds = %bb.a
  %i.z = icmp slt i32 %i.w, 0
  br i1 %i.z, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread19", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread": ; preds = %bb.b, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit"
  %i.aa = load i8, ptr %2, align 8                ; 2 uses
  %i.ab = trunc i8 %i.aa to i1                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.af = select i1 %i.ab, ptr %i.ad, ptr %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = lshr i8 %i.aa, 1
end_hunk_3
