Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ExrImageLoader?download=true
inline.NumInlined: 7920
inline.NumDeleted: 3043
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZNK7Imf_3_47KeyCode13perfsPerFrameEv

declare noundef i32 @_ZNK7Imf_3_47KeyCode13perfsPerCountEv(ptr noundef nonnull align 4 dereferenceable(28)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.m = load <2 x ptr>, ptr %i.k, align 8, !tbaa !103
  store <2 x ptr> %i.m, ptr %i.j, align 8, !tbaa !103
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !103
  store ptr %i.o, ptr %i.l, align 8, !tbaa !103
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = tail call noundef ptr @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJS2_EEEPS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.p, %bb.b ], [ %i.q, %bb.c ]  ; 2 uses
  store ptr %.0, ptr %i.a, align 8, !tbaa !102
  %i.r = getelementptr inbounds i8, ptr %.0, i64 -96
  ret ptr %i.r
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7Imf_3_411ChannelListC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !143
  %i.b = load ptr, ptr %1, align 8, !tbaa !143
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt3__13mapIN7Imf_3_44NameENS1_7ChannelENS_4lessIS2_EENS_9allocatorINS_4pairIKS2_S3_EEEEE6insertB8ne180100INS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeIS2_S3_EEPNS_11__tree_nodeISG_PvEElEEEEEEvT_SN_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr nonnull %i.c)
          to label %_ZNSt3__13mapIN7Imf_3_44NameENS1_7ChannelENS_4lessIS2_EENS_9allocatorINS_4pairIKS2_S3_EEEEEC2B8ne180100ERKSB_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !122
  tail call void @_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_7ChannelEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE7destroyEPNS_11__tree_nodeIS5_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.e) #32
  resume { ptr, i32 } %i.d

_ZNSt3__13mapIN7Imf_3_44NameENS1_7ChannelENS_4lessIS2_EENS_9allocatorINS_4pairIKS2_S3_EEEEEC2B8ne180100ERKSB_.exit: ; preds = %bb.a
  ret void
}

declare ptr @_ZNK7Imf_3_411ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3tev13AttributeNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRS2_EEEvDpOT_.exit unwind label %bb.c, !inline_history !4

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr %i.b, ptr %i.a, align 8, !tbaa !102
  resume { ptr, i32 } %i.f

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRS2_EEEvDpOT_.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !102
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef ptr @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRS2_EEEPS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRS2_EEEvDpOT_.exit
  %.0 = phi ptr [ %i.g, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRS2_EEEvDpOT_.exit ], [ %i.h, %bb.d ] ; 2 uses
  store ptr %.0, ptr %i.a, align 8, !tbaa !102
  %i.i = getelementptr inbounds i8, ptr %.0, i64 -96
  ret ptr %i.i
}

declare void @_ZNSt3__19to_stringEm(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string") align 8, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev4joinINSt3__16vectorINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS6_IS8_EEEEEES8_RKT_NS1_17basic_string_viewIcS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__1::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2, i64 %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__1::basic_ostringstream", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.a, align 8, !tbaa !106
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8), align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !106
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8, !tbaa !106
  %i.h = load ptr, ptr %4, align 8, !tbaa !106
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %4, i64 %i.j ; 3 uses
  invoke void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(148) %i.k, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  store ptr null, ptr %i.l, align 8, !tbaa !136
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  store i32 -1, ptr %i.m, align 8, !tbaa !137
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 24), ptr %4, align 8, !tbaa !106
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.a, align 8, !tbaa !106
  invoke void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(100) %i.b)
          to label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #32
  br label %bb.e

common.resume:                                    ; preds = %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.e ], [ %.pn, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.n, %bb.c ]
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.a) #32
  br label %common.resume

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev.exit: ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.b, align 8, !tbaa !106
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  store i32 16, ptr %i.q, align 8, !tbaa !142
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !148
  %i.t = load ptr, ptr %1, align 8, !tbaa !149    ; 5 uses
  %.not14 = icmp eq ptr %i.s, %i.t
  br i1 %.not14, label %._crit_edge, label %.split.peel

.split.peel:                                      ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev.exit
  %.phi.trans.insert17 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.pre18 = load i64, ptr %.phi.trans.insert17, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.pre16 = load ptr, ptr %.phi.trans.insert, align 8
  %.pre = load i8, ptr %i.t, align 8              ; 2 uses
  %i.u = trunc i8 %.pre to i1                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.w = select i1 %i.u, ptr %.pre16, ptr %i.v
  %i.x = lshr i8 %.pre, 1
  %i.y = zext nneg i8 %i.x to i64
  %i.z = select i1 %i.u, i64 %.pre18, i64 %i.y
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.w, i64 noundef %i.z)
          to label %_ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE.exit.peel unwind label %.loopexit.split-lp ; 0 uses

_ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE.exit.peel: ; preds = %.split.peel
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !148
  %i.ac = load ptr, ptr %1, align 8, !tbaa !149
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp ugt i64 %i.af, 24
  br i1 %i.ag, label %.lr.ph.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE.exit, %_ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE.exit.peel, %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev.exit
  invoke void @_ZNOSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(100) %i.b)
          to label %_ZNOSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev.exit unwind label %bb.g

.lr.ph.peel.next:                                 ; preds = %_ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE.exit.peel, %_ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE.exit
  %.01013 = phi i64 [ %i.aw, %_ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE.exit ], [ 1, %_ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE.exit.peel ] ; 2 uses
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %2, i64 noundef %3)
          to label %.split unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %.lr.ph.peel.next, %.split
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %.split.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.split:                                           ; preds = %.lr.ph.peel.next
  %i.ai = load ptr, ptr %1, align 8, !tbaa !149
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %.01013 ; 4 uses
  %i.ak = load i8, ptr %i.aj, align 8             ; 2 uses
  %i.al = trunc i8 %i.ak to i1                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.ap = select i1 %i.al, ptr %i.an, ptr %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = lshr i8 %i.ak, 1
  %i.at = zext nneg i8 %i.as to i64
  %i.au = select i1 %i.al, i64 %i.ar, i64 %i.at
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.ap, i64 noundef %i.au)
          to label %_ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE.exit unwind label %.loopexit ; 0 uses

_ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE.exit: ; preds = %.split
  %i.aw = add nuw i64 %.01013, 1                  ; 2 uses
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !148
  %i.ay = load ptr, ptr %1, align 8, !tbaa !149
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 24
  %i.bd = icmp ult i64 %i.aw, %i.bc
  br i1 %i.bd, label %.lr.ph.peel.next, label %._crit_edge, !llvm.loop !711

_ZNOSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev.exit: ; preds = %._crit_edge
  %i.be = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 8 ; 2 uses
  store ptr %i.be, ptr %4, align 8, !tbaa !106
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 24), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %4, i64 %i.bh
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !106
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.b, align 8, !tbaa !106
  %i.bj = load i8, ptr %i.p, align 8
  %i.bk = trunc i8 %i.bj to i1
  br i1 %i.bk, label %bb.f, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

bb.f:                                             ; preds = %_ZNOSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !77
  %i.bn = load i64, ptr %i.p, align 8
  %i.bo = and i64 %i.bn, -2
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bo) #34
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %_ZNOSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev.exit, %bb.f
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.b) #32
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #32
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.g:                                             ; preds = %._crit_edge
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev4joinINSt3__16vectorIfNS1_9allocatorIfEEEEEENS1_12basic_stringIcNS1_11char_traitsIcEENS3_IcEEEERKT_NS1_17basic_string_viewIcS8_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__1::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2, i64 %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__1::basic_ostringstream", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.a, align 8, !tbaa !106
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8), align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !106
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8, !tbaa !106
  %i.h = load ptr, ptr %4, align 8, !tbaa !106
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %4, i64 %i.j ; 3 uses
  invoke void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(148) %i.k, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  store ptr null, ptr %i.l, align 8, !tbaa !136
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  store i32 -1, ptr %i.m, align 8, !tbaa !137
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 24), ptr %4, align 8, !tbaa !106
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.a, align 8, !tbaa !106
  invoke void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(100) %i.b)
          to label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #32
  br label %bb.e

common.resume:                                    ; preds = %bb.j, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.e ], [ %.pn, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.n, %bb.c ]
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.a) #32
  br label %common.resume

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev.exit: ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.b, align 8, !tbaa !106
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  store i32 16, ptr %i.q, align 8, !tbaa !142
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !716
  %i.t = load ptr, ptr %1, align 8, !tbaa !717    ; 2 uses
  %.not14 = icmp eq ptr %i.s, %i.t
  br i1 %.not14, label %._crit_edge, label %.split.peel

.split.peel:                                      ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev.exit
  %.pre = load float, ptr %i.t, align 4, !tbaa !76
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEf(ptr noundef nonnull align 8 dereferenceable(8) %4, float noundef %.pre)
          to label %bb.f unwind label %.loopexit.split-lp ; 0 uses

bb.f:                                             ; preds = %.split.peel
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !716
  %i.w = load ptr, ptr %1, align 8, !tbaa !717
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp ugt i64 %i.z, 4
  br i1 %i.aa, label %.lr.ph.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %bb.f, %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev.exit
  invoke void @_ZNOSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(100) %i.b)
          to label %_ZNOSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev.exit unwind label %bb.i

.lr.ph.peel.next:                                 ; preds = %bb.f, %bb.g
  %.01013 = phi i64 [ %i.ag, %bb.g ], [ 1, %bb.f ] ; 2 uses
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %2, i64 noundef %3)
          to label %.split unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %.split, %.lr.ph.peel.next
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %.split.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.split:                                           ; preds = %.lr.ph.peel.next
  %i.ac = load ptr, ptr %1, align 8, !tbaa !717
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.01013
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !76
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEf(ptr noundef nonnull align 8 dereferenceable(8) %4, float noundef %i.ae)
          to label %bb.g unwind label %.loopexit  ; 0 uses

bb.g:                                             ; preds = %.split
  %i.ag = add nuw i64 %.01013, 1                  ; 2 uses
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !716
  %i.ai = load ptr, ptr %1, align 8, !tbaa !717
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
end_hunk_0
begin_hunk_1_@_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEPS2_OT_:bb.a
  unreachable

_ZNKSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = sdiv exact i64 %i.m, 96                  ; 2 uses
  %.not.i = icmp ult i64 %i.n, 96076792050570581
  %i.o = shl nuw nsw i64 %i.n, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %i.i)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 192153584101141162 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.a, ptr %i.q, align 8, !tbaa !328
  %i.r = icmp eq i64 %.0.i, 0
  br i1 %i.r, label %_ZNSt3__114__split_bufferIN3tev13AttributeNodeERNS_9allocatorIS2_EEEC2EmmS5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit
  %i.s = icmp ugt i64 %.0.i, 192153584101141162
  br i1 %i.s, label %bb.d, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev13AttributeNodeEEEEEDaRT_m.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #35
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev13AttributeNodeEEEEEDaRT_m.exit.i: ; preds = %bb.c
  %i.t = mul nuw i64 %.0.i, 96
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #33
  br label %_ZNSt3__114__split_bufferIN3tev13AttributeNodeERNS_9allocatorIS2_EEEC2EmmS5_.exit

_ZNSt3__114__split_bufferIN3tev13AttributeNodeERNS_9allocatorIS2_EEEC2EmmS5_.exit: ; preds = %_ZNKSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev13AttributeNodeEEEEEDaRT_m.exit.i
  %storemerge.i = phi ptr [ %i.u, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev13AttributeNodeEEEEEDaRT_m.exit.i ], [ null, %_ZNKSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit ] ; 3 uses
  store ptr %storemerge.i, ptr %2, align 8, !tbaa !327
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.g ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !326
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.v, ptr %i.x, align 8, !tbaa !325
  %i.y = getelementptr inbounds nuw [96 x i8], ptr %storemerge.i, i64 %.0.i ; 2 uses
  store ptr %i.y, ptr %i.p, align 8, !tbaa !103
  invoke void @_ZN3tev13AttributeNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.v, ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRKS3_EvvEEvRS4_PT_DpOT0_.exit unwind label %bb.f

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRKS3_EvvEEvRS4_PT_DpOT0_.exit: ; preds = %_ZNSt3__114__split_bufferIN3tev13AttributeNodeERNS_9allocatorIS2_EEEC2EmmS5_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 96 ; 2 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !102 ; 3 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !101   ; 3 uses
  %.not27.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not27.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRKS3_EvvEEvRS4_PT_DpOT0_.exit, %.lr.ph.i.i
  %.sroa.120.028.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.aa, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRKS3_EvvEEvRS4_PT_DpOT0_.exit ] ; 5 uses
  %i.ac = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %i.v, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRKS3_EvvEEvRS4_PT_DpOT0_.exit ] ; 5 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -96 ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -96 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ad, ptr noundef nonnull align 8 dereferenceable(96) %i.ae, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ae, i8 0, i64 24, i1 false)
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 -72
  %i.ag = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %i.ah = getelementptr inbounds i8, ptr %i.ac, i64 -48
  %i.ai = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  %i.aj = getelementptr inbounds i8, ptr %i.ac, i64 -24 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -24 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ac, i64 -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %i.am = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !103
  store <2 x ptr> %i.am, ptr %i.aj, align 8, !tbaa !103
  %i.an = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !103
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !103
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %.not.i.i = icmp eq ptr %i.ae, %i.ab
  br i1 %.not.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !18

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !103
  %.pre8 = load ptr, ptr %i.b, align 8, !tbaa !103
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRKS3_EvvEEvRS4_PT_DpOT0_.exit
  %i.ap = phi ptr [ %i.aa, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRKS3_EvvEEvRS4_PT_DpOT0_.exit ], [ %.pre8, %.loopexit.loopexit ] ; 2 uses
  %.pr = phi ptr [ %i.ab, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRKS3_EvvEEvRS4_PT_DpOT0_.exit ], [ %.pre, %.loopexit.loopexit ] ; 5 uses
  %.lcssa.i.i = phi ptr [ %i.v, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRKS3_EvvEEvRS4_PT_DpOT0_.exit ], [ %i.ad, %.loopexit.loopexit ]
  store ptr %.lcssa.i.i, ptr %0, align 8, !tbaa !103
  store ptr %i.z, ptr %i.b, align 8, !tbaa !103
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !103
  store ptr %i.y, ptr %i.a, align 8, !tbaa !103
  %.not2.i.i.i.i = icmp eq ptr %.pr, %i.ap
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferIN3tev13AttributeNodeERNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %.lr.ph.i.i.i.i
  %i.ar = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %i.ap, %.loopexit ]
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -96 ; 3 uses
  tail call void @_ZNSt3__112__destroy_atB8ne180100IN3tev13AttributeNodeETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEEvPS4_(ptr noundef nonnull %i.as), !inline_history !19
  %.not.i.i.i.i = icmp eq ptr %.pr, %i.as
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferIN3tev13AttributeNodeERNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

_ZNSt3__114__split_bufferIN3tev13AttributeNodeERNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i: ; preds = %.lr.ph.i.i.i.i, %.loopexit
  %.not.i5 = icmp eq ptr %.pr, null
  br i1 %.not.i5, label %_ZNSt3__114__split_bufferIN3tev13AttributeNodeERNS_9allocatorIS2_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__114__split_bufferIN3tev13AttributeNodeERNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %.pr to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.av) #34
  br label %_ZNSt3__114__split_bufferIN3tev13AttributeNodeERNS_9allocatorIS2_EEED2Ev.exit

_ZNSt3__114__split_bufferIN3tev13AttributeNodeERNS_9allocatorIS2_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferIN3tev13AttributeNodeERNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret ptr %i.z

bb.f:                                             ; preds = %_ZNSt3__114__split_bufferIN3tev13AttributeNodeERNS_9allocatorIS2_EEEC2EmmS5_.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__114__split_bufferIN3tev13AttributeNodeERNS_9allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.aw
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev13AttributeNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__1::__exception_guard_exceptions.262", align 8 ; 6 uses
  %i.a = load i8, ptr %1, align 8
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !96
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !77
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.d, i64 noundef %i.f)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit: ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !96
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit10

bb.e:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !77
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef %i.l, i64 noundef %i.n)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit10 unwind label %bb.m

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit10: ; preds = %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8
  %i.r = trunc i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !96
  br label %.noexc13

bb.g:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit10
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !77
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load i64, ptr %i.u, align 8, !tbaa !77
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef %i.t, i64 noundef %i.v)
          to label %.noexc13 unwind label %bb.n

.noexc13:                                         ; preds = %bb.g, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !101  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !102 ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %i.w, ptr %2, align 8, !tbaa !822, !alias.scope !823
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.ae, align 8, !tbaa !332, !alias.scope !823
  %.not.i = icmp eq ptr %i.aa, %i.y
  br i1 %.not.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEC2ERKS5_.exit, label %bb.h

bb.h:                                             ; preds = %.noexc13
  %3 = icmp slt i64 %i.ad, 0
  br i1 %3, label %bb.i, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev13AttributeNodeEEEEEDaRT_m.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNKSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.w) #35
          to label %.noexc.i unwind label %bb.l, !inline_history !819

.noexc.i:                                         ; preds = %bb.i
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev13AttributeNodeEEEEEDaRT_m.exit.i.i: ; preds = %bb.h
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #33
          to label %bb.j unwind label %bb.l, !inline_history !819 ; 9 uses

bb.j:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev13AttributeNodeEEEEEDaRT_m.exit.i.i
  store ptr %i.af, ptr %i.w, align 8, !tbaa !101
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !102
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !103
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRS3_EvvEEvRS4_PT_DpOT0_.exit.i
  %.029.i = phi ptr [ %i.aj, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRS3_EvvEEvRS4_PT_DpOT0_.exit.i ], [ %i.y, %bb.j ] ; 2 uses
  %.02528.i = phi ptr [ %i.ak, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRS3_EvvEEvRS4_PT_DpOT0_.exit.i ], [ %i.af, %bb.j ] ; 4 uses
  invoke void @_ZN3tev13AttributeNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %.02528.i, ptr noundef nonnull align 8 dereferenceable(96) %.029.i)
          to label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRS3_EvvEEvRS4_PT_DpOT0_.exit.i unwind label %bb.k, !inline_history !820

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRS3_EvvEEvRS4_PT_DpOT0_.exit.i: ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.029.i, i64 96 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.02528.i, i64 96 ; 2 uses
  %.not.i17 = icmp eq ptr %i.aj, %i.aa
  br i1 %.not.i17, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit.i, label %.lr.ph.i, !llvm.loop !20

bb.k:                                             ; preds = %.lr.ph.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  %.not5.i.i.i.i = icmp eq ptr %.02528.i, %i.af
  br i1 %.not5.i.i.i.i, label %.body18, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %.lr.ph.i.i.i.i
  %.sroa.12.06.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.02528.i, %bb.k ]
  %i.am = getelementptr inbounds i8, ptr %.sroa.12.06.i.i.i.i, i64 -96 ; 3 uses
  tail call void @_ZNSt3__112__destroy_atB8ne180100IN3tev13AttributeNodeETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEEvPS4_(ptr noundef nonnull %i.am), !inline_history !821
  %.not.i.i.i.i = icmp eq ptr %i.am, %i.af
  br i1 %.not.i.i.i.i, label %.body18, label %.lr.ph.i.i.i.i, !llvm.loop !21

.body18:                                          ; preds = %.lr.ph.i.i.i.i, %bb.k
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !102
  br label %.body.i

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13AttributeNodeEEEE9constructB8ne180100IS3_JRS3_EvvEEvRS4_PT_DpOT0_.exit.i
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.af to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.af, i64 %i.ap
  store ptr %i.aq, ptr %i.ag, align 8, !tbaa !102
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEC2ERKS5_.exit

bb.l:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev13AttributeNodeEEEEEDaRT_m.exit.i.i, %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.l, %.body18
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ar, %bb.l ], [ %i.al, %.body18 ] ; 2 uses
  call void @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIN3tev13AttributeNodeENS_9allocatorIS3_EEE16__destroy_vectorEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %2) #32, !inline_history !819
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.as = load i8, ptr %i.o, align 8
  %i.at = trunc i8 %i.as to i1
  br i1 %i.at, label %bb.o, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEC2ERKS5_.exit: ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit.i, %.noexc13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.m:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit15

bb.n:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.o:                                             ; preds = %.body.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !77
  %i.ay = load i64, ptr %i.o, align 8
  %i.az = and i64 %i.ay, -2
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.az) #34
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.o, %.body.i, %bb.n
  %.pn = phi { ptr, i32 } [ %i.av, %bb.n ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.o ] ; 2 uses
  %i.ba = load i8, ptr %i.g, align 8
  %i.bb = trunc i8 %i.ba to i1
  br i1 %i.bb, label %bb.p, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit15

bb.p:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !77
  %i.be = load i64, ptr %i.g, align 8
  %i.bf = and i64 %i.be, -2
  tail call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bf) #34
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit15

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit15: ; preds = %bb.p, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.au, %bb.m ], [ %.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %.pn, %bb.p ]
  %i.bg = load i8, ptr %0, align 8
  %i.bh = trunc i8 %i.bg to i1
  br i1 %i.bh, label %bb.q, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit16

bb.q:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit15
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !77
  %i.bk = load i64, ptr %0, align 8
  %i.bl = and i64 %i.bk, -2
  tail call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bl) #34
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit16

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit16: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit15, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %2, 23
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = trunc nuw nsw i64 %2 to i8
  %i.d = shl nuw nsw i8 %i.c, 1
  store i8 %i.d, ptr %0, align 8
  br label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %2, -9
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #35
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = or i64 %2, 7                             ; 2 uses
  %i.g = icmp eq i64 %i.f, 23
  %i.h = add nuw i64 %i.f, 1
  %i.i = select i1 %i.g, i64 25, i64 %i.h         ; 2 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #33 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !77
  %i.l = or i64 %i.i, 1
  store i64 %i.l, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8, !tbaa !77
  br label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit

_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit: ; preds = %bb.e, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.j, %bb.e ]
  %i.n = add nuw i64 %2, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.n, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIN3tev13AttributeNodeENS_9allocatorIS3_EEE16__destroy_vectorEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !332, !range !115, !noundef !116
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE16__destroy_vectorclB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !824, !nonnull !116, !align !333 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101  ; 5 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE16__destroy_vectorclB8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !102  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i1.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__base_destruct_at_endB8ne180100EPS2_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.0.i2.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.g, %bb.c ]
  %i.h = getelementptr inbounds i8, ptr %.0.i2.i, i64 -96 ; 3 uses
  tail call void @_ZNSt3__112__destroy_atB8ne180100IN3tev13AttributeNodeETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEEvPS4_(ptr noundef nonnull %i.h), !inline_history !16
  %.not.i.i = icmp eq ptr %i.e, %i.h
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__base_destruct_at_endB8ne180100EPS2_.exit.loopexit.i, label %.lr.ph.i

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__base_destruct_at_endB8ne180100EPS2_.exit.loopexit.i: ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !824 ; 2 uses
  %.pre3.i = load ptr, ptr %.pre.i, align 8, !tbaa !101
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__base_destruct_at_endB8ne180100EPS2_.exit.i

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__base_destruct_at_endB8ne180100EPS2_.exit.i: ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__base_destruct_at_endB8ne180100EPS2_.exit.loopexit.i, %bb.c
end_hunk_1
