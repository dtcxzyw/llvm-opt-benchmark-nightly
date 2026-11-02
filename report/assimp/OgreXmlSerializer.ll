Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/OgreXmlSerializer?download=true
inline.NumInlined: 1996
inline.NumDeleted: 775
begin_hunk_0_@_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE5parseEPNS_8IOStreamE:bb.a
  tail call void @_ZN4pugi12xml_documentD1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.b) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 208) #30
  store ptr null, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE5clearEv.exit, %bb.a
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef nonnull @.str.135)
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i64 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.o = add i64 %i.m, 1                          ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.n, align 8              ; 5 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp ugt i64 %i.o, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = sub nuw i64 %i.o, %i.u
  tail call void @_ZNSt6vectorIcSaIcEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.w)
  %.pre = load ptr, ptr %i.n, align 8
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.g:                                             ; preds = %bb.e
  %i.x = icmp ult i64 %i.o, %i.u
  br i1 %i.x, label %bb.h, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.y
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.h
  store ptr %i.y, ptr %i.p, align 8
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

_ZNSt6vectorIcSaIcEE6resizeEm.exit:               ; preds = %bb.f, %bb.g, %bb.h, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i
  %i.z = phi ptr [ %.pre, %bb.f ], [ %i.r, %bb.g ], [ %i.r, %bb.h ], [ %i.r, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.z, i8 0, i64 %i.o, i1 false)
  %i.aa = load ptr, ptr %i.n, align 8
  %i.ab = load ptr, ptr %1, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.aa, i64 noundef 1, i64 noundef %i.m) ; 0 uses
  %i.af = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #32 ; 4 uses
  invoke void @_ZN4pugi12xml_documentC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.af)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  store ptr %i.af, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.ag = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.ah = load ptr, ptr %i.p, align 8
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZN4pugi12xml_document11load_bufferEPKvmjNS_12xml_encodingE(ptr dead_on_unwind nonnull writable sret(%"struct.pugi::xml_parse_result") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %i.af, ptr noundef nonnull %i.ag, i64 noundef %i.ak, i32 noundef 887, i32 noundef 0)
  %i.al = load i32, ptr %2, align 8
  %i.am = icmp eq i32 %i.al, 0                    ; 2 uses
  br i1 %i.am, label %bb.t, label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 208) #30
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.ao = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.ap = call noundef ptr @_ZNK4pugi16xml_parse_result11descriptionEv(ptr noundef nonnull align 8 dereferenceable(20) %2) ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.aq, ptr %3, align 8
  %i.ar = icmp eq ptr %i.ap, null
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.130) #29
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.as = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ap) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.as, ptr %i.a, align 8
  %i.at = icmp ugt i64 %i.as, 15
  br i1 %i.at, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.m
  %i.au = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc16 unwind label %bb.r   ; 2 uses

.noexc16:                                         ; preds = %.noexc.i
  store ptr %i.au, ptr %3, align 8
  %i.av = load i64, ptr %i.a, align 8
  store i64 %i.av, ptr %i.aq, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc16, %bb.m
  %i.aw = phi ptr [ %i.au, %.noexc16 ], [ %i.aq, %bb.m ] ; 2 uses
  switch i64 %i.as, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.ax = load i8, ptr %i.ap, align 1
  store i8 %i.ax, ptr %i.aw, align 1
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr nonnull align 1 %i.ap, i64 %i.as, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i
  %i.ay = load i64, ptr %i.a, align 8             ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ay, ptr %i.az, align 8
  %i.ba = load ptr, ptr %3, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  store i8 0, ptr %i.bb, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZN6Assimp6Logger5debugIJRA23_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA4_S2_RlEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ao, ptr noundef nonnull align 1 dereferenceable(23) @.str.136, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(4) @.str.137, ptr noundef nonnull align 8 dereferenceable(8) %i.bc)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bd = load ptr, ptr %3, align 8               ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.aq
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.bf = load i64, ptr %i.aq, align 8
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.t

bb.r:                                             ; preds = %.noexc.i, %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.s:                                             ; preds = %bb.p
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %3, align 8               ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.aq
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.s
  %i.bl = load i64, ptr %i.aq, align 8
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.r ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.bi, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.u

bb.t:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.v

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.an, %bb.j ]
  resume { ptr, i32 } %.pn.pn

bb.v:                                             ; preds = %bb.t, %bb.d
  %.112 = phi i1 [ false, %bb.d ], [ %i.am, %bb.t ]
  ret i1 %.112
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4Ogre17OgreXmlSerializer9ReadBonesERN4pugi8xml_nodeEPNS0_8SkeletonE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.pugi::xml_attribute", align 8 ; 4 uses
  %4 = alloca %"class.pugi::xml_attribute", align 8 ; 4 uses
  %5 = alloca %"class.pugi::xml_attribute", align 8 ; 4 uses
  %6 = alloca %"class.pugi::xml_attribute", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %8 = alloca %"class.pugi::xml_node_iterator", align 16 ; 8 uses
  %9 = alloca %"class.pugi::xml_node_iterator", align 16 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %13 = alloca %"class.pugi::xml_node_iterator", align 16 ; 7 uses
  %14 = alloca %"class.pugi::xml_node_iterator", align 16 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %16 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %17 = alloca %"class.pugi::xml_node_iterator", align 16 ; 7 uses
  %18 = alloca %"class.pugi::xml_node_iterator", align 16 ; 5 uses
  %19 = alloca %"class.pugi::xml_node", align 8   ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.e, ptr noundef nonnull @.str.86)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.f = load <2 x ptr>, ptr %7, align 16
  store <2 x ptr> %i.f, ptr %8, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.h = load <2 x ptr>, ptr %i.g, align 16
  store <2 x ptr> %i.h, ptr %9, align 16
  %i.i = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9)
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.v = load ptr, ptr %2, align 8                ; 17 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 7 uses
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEEPFbS5_S5_EEvT_SD_T0_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.ad = shl nuw nsw i64 %i.ac, 1
  %i.ae = xor i64 %i.ad, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_T0_T1_(ptr %i.v, ptr %i.x, i64 noundef %i.ae, ptr nonnull @_ZN6Assimp4OgreL11BoneCompareEPNS0_4BoneES2_)
  %i.af = icmp sgt i64 %i.aa, 128
  %scevgep.i = getelementptr i8, ptr %i.v, i64 8  ; 3 uses
  br i1 %i.af, label %.lr.ph.i.i, label %bb.g

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i
  %.sroa.0.021.i.idx.i = phi i64 [ %.sroa.0.021.i.add.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i ], [ 8, %bb.b ] ; 4 uses
  %.pn20.i.i = phi ptr [ %.sroa.0.021.i.ptr.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i ], [ %i.v, %bb.b ] ; 3 uses
  %.sroa.0.021.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.021.i.idx.i ; 4 uses
  %i.ag = load ptr, ptr %.sroa.0.021.i.ptr.i, align 8 ; 3 uses
  %i.ah = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.ai = load i16, ptr %i.ag, align 8            ; 2 uses
  %i.aj = load i16, ptr %i.ah, align 8
  %i.ak = icmp ult i16 %i.ai, %i.aj
  br i1 %i.ak, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.al = icmp samesign ugt i64 %.sroa.0.021.i.idx.i, 8
  br i1 %i.al, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %.sroa.0.021.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %.pn20.i.i, i64 8
  store ptr %i.ah, ptr %i.am, align 8
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.an = load ptr, ptr %.pn20.i.i, align 8       ; 2 uses
  %i.ao = load i16, ptr %i.an, align 8
  %i.ap = icmp ult i16 %i.ai, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %i.aq = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %i.an, %bb.f ]
  %.sroa.0.010.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.pn20.i.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i.i = phi ptr [ %.sroa.0.010.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.021.i.ptr.i, %bb.f ]
  store ptr %i.aq, ptr %.sroa.05.09.i.i.i, align 8
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i, i64 -8 ; 2 uses
  %i.ar = load ptr, ptr %.sroa.0.0.i.i.i, align 8 ; 2 uses
  %i.as = load i16, ptr %i.ag, align 8
  %i.at = load i16, ptr %i.ar, align 8
  %i.au = icmp ult i16 %i.as, %i.at
  br i1 %i.au, label %.lr.ph.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i, !llvm.loop !89

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i.i = phi ptr [ %i.v, %bb.e ], [ %i.v, %bb.d ], [ %.sroa.0.021.i.ptr.i, %bb.f ], [ %.sroa.0.010.i.i.i, %.lr.ph.i.i.i ]
  store ptr %i.ag, ptr %.sink.i.i, align 8
  %.sroa.0.021.i.add.i = add nuw nsw i64 %.sroa.0.021.i.idx.i, 8 ; 2 uses
  %.not.i.i157 = icmp eq i64 %.sroa.0.021.i.add.i, 128
  br i1 %.not.i.i157, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !90

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_T0_.exit.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 128 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.av, %i.x
  br i1 %.not7.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEEPFbS5_S5_EEvT_SD_T0_.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_T0_.exit.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbS5_S5_EEEEvT_T0_.exit.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.bg, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbS5_S5_EEEEvT_T0_.exit.i.i ], [ %i.av, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_T0_.exit.i ] ; 5 uses
  %i.aw = load ptr, ptr %.sroa.0.08.i.i, align 8  ; 3 uses
  %.sroa.0.08.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i, i64 -8 ; 2 uses
  %i.ax = load ptr, ptr %.sroa.0.08.i.i.i, align 8 ; 2 uses
  %i.ay = load i16, ptr %i.aw, align 8
  %i.az = load i16, ptr %i.ax, align 8
  %i.ba = icmp ult i16 %i.ay, %i.az
  br i1 %i.ba, label %.lr.ph.i.i12.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbS5_S5_EEEEvT_T0_.exit.i.i

.lr.ph.i.i12.i:                                   ; preds = %.lr.ph.i10.i, %.lr.ph.i.i12.i
  %i.bb = phi ptr [ %i.bc, %.lr.ph.i.i12.i ], [ %i.ax, %.lr.ph.i10.i ]
  %.sroa.0.010.i.i13.i = phi ptr [ %.sroa.0.0.i.i15.i, %.lr.ph.i.i12.i ], [ %.sroa.0.08.i.i.i, %.lr.ph.i10.i ] ; 3 uses
  %.sroa.05.09.i.i14.i = phi ptr [ %.sroa.0.010.i.i13.i, %.lr.ph.i.i12.i ], [ %.sroa.0.08.i.i, %.lr.ph.i10.i ]
  store ptr %i.bb, ptr %.sroa.05.09.i.i14.i, align 8
  %.sroa.0.0.i.i15.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i13.i, i64 -8 ; 2 uses
  %i.bc = load ptr, ptr %.sroa.0.0.i.i15.i, align 8 ; 2 uses
  %i.bd = load i16, ptr %i.aw, align 8
  %i.be = load i16, ptr %i.bc, align 8
  %i.bf = icmp ult i16 %i.bd, %i.be
  br i1 %i.bf, label %.lr.ph.i.i12.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbS5_S5_EEEEvT_T0_.exit.i.i, !llvm.loop !89

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbS5_S5_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i12.i, %.lr.ph.i10.i
  %.sroa.05.0.lcssa.i.i.i = phi ptr [ %.sroa.0.08.i.i, %.lr.ph.i10.i ], [ %.sroa.0.010.i.i13.i, %.lr.ph.i.i12.i ]
  store ptr %i.aw, ptr %.sroa.05.0.lcssa.i.i.i, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 8 ; 2 uses
  %.not.i11.i = icmp eq ptr %i.bg, %i.x
  br i1 %.not.i11.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEEPFbS5_S5_EEvT_SD_T0_.exit, label %.lr.ph.i10.i, !llvm.loop !91

bb.g:                                             ; preds = %bb.b
  %.not19.i18.i = icmp eq ptr %scevgep.i, %i.x
  br i1 %.not19.i18.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEEPFbS5_S5_EEvT_SD_T0_.exit, label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %bb.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i22.i
  %.sroa.0.021.i20.i = phi ptr [ %.sroa.0.0.i24.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i22.i ], [ %scevgep.i, %bb.g ] ; 6 uses
  %.pn20.i21.i = phi ptr [ %.sroa.0.021.i20.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i22.i ], [ %i.v, %bb.g ] ; 4 uses
  %i.bh = load ptr, ptr %.sroa.0.021.i20.i, align 8 ; 3 uses
  %i.bi = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.bj = load i16, ptr %i.bh, align 8            ; 2 uses
  %i.bk = load i16, ptr %i.bi, align 8
  %i.bl = icmp ult i16 %i.bj, %i.bk
  br i1 %i.bl, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i19.i
  %i.bm = ptrtoint ptr %.sroa.0.021.i20.i to i64
  %i.bn = sub i64 %i.bm, %i.z                     ; 3 uses
  %i.bo = ashr exact i64 %i.bn, 3                 ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, 1
  br i1 %i.bp, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn20.i21.i, i64 16
  %i.br = sub nsw i64 0, %i.bo
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.br
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bs, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.bn, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i22.i

bb.j:                                             ; preds = %bb.h
  %i.bt = icmp eq i64 %i.bn, 8
  br i1 %i.bt, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i22.i

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn20.i21.i, i64 8
  store ptr %i.bi, ptr %i.bu, align 8
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i22.i

bb.l:                                             ; preds = %.lr.ph.i19.i
  %i.bv = load ptr, ptr %.pn20.i21.i, align 8     ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 8
  %i.bx = icmp ult i16 %i.bj, %i.bw
  br i1 %i.bx, label %.lr.ph.i.i26.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i22.i

.lr.ph.i.i26.i:                                   ; preds = %bb.l, %.lr.ph.i.i26.i
  %i.by = phi ptr [ %i.bz, %.lr.ph.i.i26.i ], [ %i.bv, %bb.l ]
  %.sroa.0.010.i.i27.i = phi ptr [ %.sroa.0.0.i.i29.i, %.lr.ph.i.i26.i ], [ %.pn20.i21.i, %bb.l ] ; 3 uses
  %.sroa.05.09.i.i28.i = phi ptr [ %.sroa.0.010.i.i27.i, %.lr.ph.i.i26.i ], [ %.sroa.0.021.i20.i, %bb.l ]
end_hunk_0
begin_hunk_1_@_ZN6Assimp4Ogre17OgreXmlSerializer9ReadBonesERN4pugi8xml_nodeEPNS0_8SkeletonE:bb.a
  %i.et = icmp eq i64 %i.es, 9223372036854775800
  br i1 %i.et, label %bb.ah, label %_ZNKSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #29
          to label %.noexc98 unwind label %.loopexit.split-lp201.loopexit.split-lp.loopexit.split-lp

.noexc98:                                         ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ag
  %i.eu = ashr exact i64 %i.es, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.eu, i64 1)
  %i.ev = add nsw i64 %.sroa.speculated.i.i.i, %i.eu ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %i.eu
  %i.ex = call i64 @llvm.umin.i64(i64 %i.ev, i64 1152921504606846975)
  %i.ey = select i1 %i.ew, i64 1152921504606846975, i64 %i.ex ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ey, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ez = shl nuw nsw i64 %i.ey, 3
  %i.fa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #32
          to label %.noexc99 unwind label %.loopexit.split-lp201.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc99:                                         ; preds = %_ZNKSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 %i.es ; 2 uses
  store ptr %i.dc, ptr %i.fb, align 8
  %i.fc = icmp sgt i64 %i.es, 0
  br i1 %i.fc, label %bb.ai, label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.ai:                                            ; preds = %.noexc99
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fa, ptr align 8 %i.ep, i64 %i.es, i1 false)
  br label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.ai, %.noexc99
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.fe = load ptr, ptr %i.u, align 8
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = sub i64 %i.ff, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.fg) #30
  br label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.aj, %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.fa, ptr %2, align 8
  store ptr %i.fd, ptr %i.t, align 8
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ey
  store ptr %i.fh, ptr %i.u, align 8
  br label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE9push_backERKS3_.exit

.loopexit.split-lp196.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i, %bb.n
  %lpad.loopexit.split-lp358 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

bb.ak:                                            ; preds = %bb.s
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef 248) #30
  br label %bb.cn

bb.al:                                            ; preds = %bb.u
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.cn

.loopexit.split-lp201.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ah
  %lpad.loopexit.split-lp361 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.am:                                            ; preds = %bb.ad
  %i.fk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.an unwind label %bb.ax     ; 14 uses

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.fl = invoke noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %bb.ao unwind label %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.ao:                                            ; preds = %bb.an
  store ptr %i.o, ptr %15, align 8
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.130) #29
          to label %.noexc102 unwind label %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp

.noexc102:                                        ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.fn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fl) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.fn, ptr %i.b, align 8
  %i.fo = icmp ugt i64 %i.fn, 15
  br i1 %i.fo, label %.noexc.i101, label %._crit_edge.i.i100

.noexc.i101:                                      ; preds = %bb.aq
  %i.fp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc103 unwind label %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc103:                                        ; preds = %.noexc.i101
  store ptr %i.fp, ptr %15, align 8
  %i.fq = load i64, ptr %i.b, align 8
  store i64 %i.fq, ptr %i.o, align 8
  br label %._crit_edge.i.i100

._crit_edge.i.i100:                               ; preds = %.noexc103, %bb.aq
  %i.fr = phi ptr [ %i.fp, %.noexc103 ], [ %i.o, %bb.aq ] ; 2 uses
  switch i64 %i.fn, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %bb.at
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i100
  %i.fs = load i8, ptr %i.fl, align 1
  store i8 %i.fs, ptr %i.fr, align 1
  br label %bb.at

bb.as:                                            ; preds = %._crit_edge.i.i100
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fr, ptr nonnull align 1 %i.fl, i64 %i.fn, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %._crit_edge.i.i100
  %i.ft = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.ft, ptr %i.p, align 8
  %i.fu = load ptr, ptr %15, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ft
  store i8 0, ptr %i.fv, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.fw = load i64, ptr %i.p, align 8             ; 2 uses
  switch i64 %i.fw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183 [
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106: ; preds = %bb.at
  %i.fx = load ptr, ptr %15, align 8              ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 1
  %i.fz = icmp ne i64 %i.fy, 7957695015293251440
  %i.ga = zext i1 %i.fz to i32
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106
  %i.gc = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.103)
          to label %bb.au unwind label %bb.bd

bb.au:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106.thread
  store float %i.gc, ptr %i.eh, align 8
  %i.gd = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.104)
          to label %bb.av unwind label %bb.bd

bb.av:                                            ; preds = %bb.au
  store float %i.gd, ptr %i.ei, align 4
  %i.ge = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.105)
          to label %bb.aw unwind label %bb.bd

bb.aw:                                            ; preds = %bb.av
  store float %i.ge, ptr %i.ej, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183

bb.ax:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %bb.am
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.an, %.noexc.i101, %bb.ap
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106
  %i.gg = load i64, ptr %i.fx, align 1
  %i.gh = icmp ne i64 %i.gg, 7957695015159099250
  %i.gi = zext i1 %i.gh to i32
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108
  %i.gk = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.80)
          to label %bb.ay unwind label %bb.bd

bb.ay:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  invoke void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.gl = load <2 x ptr>, ptr %16, align 16
  store <2 x ptr> %i.gl, ptr %17, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.gm = load <2 x ptr>, ptr %i.q, align 16
  store <2 x ptr> %i.gm, ptr %18, align 16
  %i.gn = fmul float %i.gk, 5.000000e-01          ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %bb.az
  %i.go = invoke noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.go, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183

bb.bd:                                            ; preds = %.noexc142, %bb.ch, %.noexc139, %bb.cd, %.noexc136, %bb.bz, %.noexc134, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106.thread, %bb.au, %bb.av, %bb.cb, %bb.cf, %bb.cj, %bb.bx, %bb.ay
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %bb.ba
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bf:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.gr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.bf
  %i.gs = load i64, ptr %i.gr, align 8
  store i64 %i.gs, ptr %19, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  %i.gt = invoke noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.bh:                                            ; preds = %bb.bg
  store ptr %i.r, ptr %20, align 8
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.130) #29
          to label %.noexc121 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc121:                                        ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.gv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gt) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.gv, ptr %i.a, align 8
  %i.gw = icmp ugt i64 %i.gv, 15
  br i1 %i.gw, label %.noexc.i120, label %._crit_edge.i.i119

.noexc.i120:                                      ; preds = %bb.bj
  %i.gx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc122:                                        ; preds = %.noexc.i120
  store ptr %i.gx, ptr %20, align 8
  %i.gy = load i64, ptr %i.a, align 8
  store i64 %i.gy, ptr %i.r, align 8
  br label %._crit_edge.i.i119

._crit_edge.i.i119:                               ; preds = %.noexc122, %bb.bj
  %i.gz = phi ptr [ %i.gx, %.noexc122 ], [ %i.r, %bb.bj ] ; 2 uses
  switch i64 %i.gv, label %bb.bl [
    i64 1, label %bb.bk
    i64 0, label %bb.bm
  ]

bb.bk:                                            ; preds = %._crit_edge.i.i119
  %i.ha = load i8, ptr %i.gt, align 1
  store i8 %i.ha, ptr %i.gz, align 1
  br label %bb.bm

bb.bl:                                            ; preds = %._crit_edge.i.i119
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gz, ptr nonnull align 1 %i.gt, i64 %i.gv, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %._crit_edge.i.i119
  %i.hb = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.hb, ptr %i.s, align 8
  %i.hc = load ptr, ptr %20, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hb
  store i8 0, ptr %i.hd, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.he = load i64, ptr %i.s, align 8
  %i.hf = icmp eq i64 %i.he, 4
  br i1 %i.hf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread182

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125: ; preds = %bb.bm
  %i.hg = load ptr, ptr %20, align 8
  %i.hh = load i32, ptr %i.hg, align 1
  %i.hi = icmp ne i32 %i.hh, 1936291937
  %i.hj = zext i1 %i.hi to i32
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread182

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125
  %i.hl = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.103)
          to label %bb.bn unwind label %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.bn:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread
  %i.hm = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.104)
          to label %bb.bo unwind label %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.bo:                                            ; preds = %bb.bn
  %i.hn = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.105)
          to label %bb.bp unwind label %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.bp:                                            ; preds = %bb.bo
  %i.ho = fmul float %i.hm, %i.hm
  %i.hp = call float @llvm.fmuladd.f32(float %i.hl, float %i.hl, float %i.ho)
  %i.hq = call noundef float @llvm.fmuladd.f32(float %i.hn, float %i.hn, float %i.hp) ; 2 uses
  %i.hr = fcmp oeq float %i.hq, 0.000000e+00
  br i1 %i.hr, label %bb.bq, label %_ZN10aiVector3tIfEdVEf.exit.i.i

_ZN10aiVector3tIfEdVEf.exit.i.i:                  ; preds = %bb.bp
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.hq)
  %i.hs = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 3 uses
  %i.ht = fmul float %i.hl, %i.hs
  %i.hu = fmul float %i.hm, %i.hs
  %i.hv = fmul float %i.hn, %i.hs
  br label %bb.bq

bb.bq:                                            ; preds = %_ZN10aiVector3tIfEdVEf.exit.i.i, %bb.bp
  %.sroa.0.4.vec.extract.pre-phi.i = phi float [ %i.hm, %bb.bp ], [ %i.hu, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %.sroa.0.0.vec.extract.pre-phi.i = phi float [ %i.hl, %bb.bp ], [ %i.ht, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %.sroa.7.0.i = phi float [ %i.hn, %bb.bp ], [ %i.hv, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %21 = call noundef float @sinf(float noundef %i.gn) #28
  %22 = call noundef float @cosf(float noundef %i.gn) #28
  %i.hw = insertelement <4 x float> poison, float %22, i64 0
  %i.hx = insertelement <4 x float> %i.hw, float %.sroa.0.0.vec.extract.pre-phi.i, i64 1
  %i.hy = insertelement <4 x float> %i.hx, float %.sroa.0.4.vec.extract.pre-phi.i, i64 2
  %i.hz = insertelement <4 x float> %i.hy, float %.sroa.7.0.i, i64 3
  %i.ia = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %21, i64 1
  %23 = shufflevector <4 x float> %i.ia, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %24 = fmul <4 x float> %i.hz, %23
  store <4 x float> %24, ptr %i.eg, align 4
  %i.ib = load ptr, ptr %20, align 8              ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.r
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.bq
  %i.id = load i64, ptr %i.r, align 8
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %i.if = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.ba unwind label %bb.be     ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bg, %bb.bf, %.noexc.i120, %bb.bi
  %lpad.loopexit.split-lp351 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bo, %bb.bn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread, %bb.br
  %lpad.loopexit.split-lp353 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread182: ; preds = %bb.bm, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125
  %i.ig = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA45_KcRtEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ig, ptr noundef nonnull align 1 dereferenceable(45) @.str.88, ptr noundef nonnull align 2 dereferenceable(2) %i.dc)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread182
  invoke void @__cxa_throw(ptr nonnull %i.ig, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ct unwind label %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp

bb.bs:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread182
  %i.ih = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ig) #28
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp, %bb.bs
  %.pn.pn = phi { ptr, i32 } [ %i.ih, %bb.bs ], [ %lpad.loopexit.split-lp353, %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp ]
  %i.ii = load ptr, ptr %20, align 8              ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.r
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.bt
  %i.ik = load i64, ptr %i.r, align 8
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ], [ %lpad.loopexit.split-lp351, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.be
  %.pn66 = phi { ptr, i32 } [ %i.gq, %bb.be ], [ %.pn.pn.pn.pn, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.cl

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133: ; preds = %bb.at
  %.pre = load ptr, ptr %15, align 8
  %bcmp.i132 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.127, i64 %i.fw)
  %i.im = icmp eq i32 %bcmp.i132, 0
  br i1 %i.im, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.in = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.89)
          to label %.noexc134 unwind label %bb.bd

.noexc134:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread
  store ptr %i.in, ptr %6, align 8
  %i.io = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bw unwind label %bb.bd

bb.bw:                                            ; preds = %.noexc134
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %i.io, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ip = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.89)
          to label %bb.by unwind label %bb.bd     ; 3 uses

bb.by:                                            ; preds = %bb.bx
  store float %i.ip, ptr %i.ed, align 4
  store float %i.ip, ptr %i.ee, align 8
  store float %i.ip, ptr %i.ef, align 4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183

bb.bz:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.iq = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.103)
          to label %.noexc136 unwind label %bb.bd

.noexc136:                                        ; preds = %bb.bz
  store ptr %i.iq, ptr %5, align 8
  %i.ir = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ca unwind label %bb.bd

bb.ca:                                            ; preds = %.noexc136
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.ir, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.is = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.103)
          to label %bb.cc unwind label %bb.bd

bb.cc:                                            ; preds = %bb.cb
  store float %i.is, ptr %i.ed, align 4
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.it = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.104)
          to label %.noexc139 unwind label %bb.bd

.noexc139:                                        ; preds = %bb.cd
  store ptr %i.it, ptr %4, align 8
  %i.iu = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ce unwind label %bb.bd

bb.ce:                                            ; preds = %.noexc139
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %i.iu, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.iv = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.104)
          to label %bb.cg unwind label %bb.bd

bb.cg:                                            ; preds = %bb.cf
  store float %i.iv, ptr %i.ee, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.iw = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.105)
          to label %.noexc142 unwind label %bb.bd

.noexc142:                                        ; preds = %bb.ch
  store ptr %i.iw, ptr %3, align 8
  %i.ix = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ci unwind label %bb.bd

bb.ci:                                            ; preds = %.noexc142
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %i.ix, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.iy = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.105)
          to label %bb.ck unwind label %bb.bd

bb.ck:                                            ; preds = %bb.cj
  store float %i.iy, ptr %i.ef, align 4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108, %bb.at, %bb.bc, %bb.by, %bb.ck, %bb.ci, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133, %bb.aw
  %i.iz = load ptr, ptr %15, align 8              ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.o
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183
  %i.jb = load i64, ptr %i.o, align 8
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.jd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.ac unwind label %bb.ax     ; 0 uses

bb.cl:                                            ; preds = %bb.bv, %bb.bd
  %.pn70 = phi { ptr, i32 } [ %i.gp, %bb.bd ], [ %.pn66, %bb.bv ] ; 2 uses
  %i.je = load ptr, ptr %15, align 8              ; 2 uses
  %i.jf = icmp eq ptr %i.je, %i.o
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %bb.cl
  %i.jg = load i64, ptr %i.o, align 8
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.jh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %bb.cl, %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  %.pn70.pn = phi { ptr, i32 } [ %.pn70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp ], [ %.pn70, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  %.pn74 = phi { ptr, i32 } [ %i.gf, %bb.ax ], [ %.pn70.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150 ]
end_hunk_1
begin_hunk_2_@_ZN6Assimp4Ogre17OgreXmlSerializer19ReadAnimationTracksERN4pugi8xml_nodeEPNS0_9AnimationE:bb.a
  %i.cd = load ptr, ptr %12, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cc
  store i8 0, ptr %i.ce, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.cf = load i64, ptr %i.p, align 8
  %i.cg = icmp eq i64 %i.cf, 9
  br i1 %i.cg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread74

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59: ; preds = %bb.ad
  %i.ch = load ptr, ptr %12, align 8              ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 1
  %i.cj = xor i64 %i.ci, 7308604914265580907
  %i.ck = getelementptr i8, ptr %i.ch, i64 8
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = zext i8 %i.cl to i64
  %i.cn = xor i64 %i.cm, 115
  %i.co = or i64 %i.cj, %i.cn
  %i.cp = icmp ne i64 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread74

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59
  invoke void @_ZN6Assimp4Ogre17OgreXmlSerializer22ReadAnimationKeyFramesERN4pugi8xml_nodeEPNS0_9AnimationEPNS0_20VertexAnimationTrackE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef %2, ptr noundef nonnull %7)
          to label %bb.ah unwind label %.loopexit.split-lp76.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %.noexc.i54, %bb.z
  %lpad.loopexit.split-lp124 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

.loopexit.split-lp76.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread, %bb.af
  %lpad.loopexit.split-lp126 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread74: ; preds = %bb.ad, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59
  %i.ct = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_ZN17DeadlyImportErrorC2IJRA33_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 1 dereferenceable(33) @.str.78, ptr noundef nonnull align 8 dereferenceable(32) %i.cu)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread74
  invoke void @__cxa_throw(ptr nonnull %i.ct, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.am unwind label %.loopexit.split-lp76.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread74
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ct) #28
  br label %bb.ai

bb.ah:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread
  %i.cw = load ptr, ptr %12, align 8              ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.o
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.ah
  %i.cy = load i64, ptr %i.o, align 8
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.da = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.o unwind label %bb.ae      ; 0 uses

bb.ai:                                            ; preds = %.loopexit.split-lp76.loopexit.split-lp.loopexit.split-lp, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.ag ], [ %lpad.loopexit.split-lp126, %.loopexit.split-lp76.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.db = load ptr, ptr %12, align 8              ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.o
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.ai
  %i.dd = load i64, ptr %i.o, align 8
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.ai, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ], [ %lpad.loopexit.split-lp124, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %.pn27 = phi { ptr, i32 } [ %i.cs, %bb.ae ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.ak

_ZNSt6vectorIN6Assimp4Ogre20VertexAnimationTrackESaIS2_EE9push_backERKS2_.exit: ; preds = %.noexc51, %bb.s
  call void @_ZN6Assimp4Ogre20VertexAnimationTrackD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %.pre = load ptr, ptr %6, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread73

bb.ak:                                            ; preds = %bb.v, %bb.aj, %bb.u
  %.pn27.pn.pn = phi { ptr, i32 } [ %i.br, %bb.u ], [ %i.bs, %bb.v ], [ %.pn27, %bb.aj ]
  call void @_ZN6Assimp4Ogre20VertexAnimationTrackD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %7) #28
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.t
  %.pn27.pn.pn.pn = phi { ptr, i32 } [ %.pn27.pn.pn, %bb.ak ], [ %i.bq, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.df = load ptr, ptr %6, align 8               ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.g
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread73: ; preds = %bb.f, %_ZNSt6vectorIN6Assimp4Ogre20VertexAnimationTrackESaIS2_EE9push_backERKS2_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.dh = phi ptr [ %.pre100, %bb.f ], [ %.pre, %_ZNSt6vectorIN6Assimp4Ogre20VertexAnimationTrackESaIS2_EE9push_backERKS2_.exit ], [ %.pre100, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.g
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread73
  %i.dj = load i64, ptr %i.g, align 8
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.dl = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  %i.dm = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
  br i1 %i.dm, label %bb.b, label %._crit_edge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.al
  %i.dn = load i64, ptr %i.g, align 8
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.do) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn27.pn.pn.pn

bb.am:                                            ; preds = %bb.af
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA34_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA34_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #28
  resume { ptr, i32 } %i.o
}

declare void @_ZN6Assimp4Ogre20VertexAnimationTrackC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4Ogre17OgreXmlSerializer22ReadAnimationKeyFramesERN4pugi8xml_nodeEPNS0_9AnimationEPNS0_20VertexAnimationTrackE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %5 = alloca %"class.pugi::xml_node_iterator", align 16 ; 8 uses
  %6 = alloca %"class.pugi::xml_node_iterator", align 16 ; 6 uses
  %7 = alloca %"struct.Assimp::Ogre::TransformKeyFrame", align 4 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %10 = alloca %"class.pugi::xml_node_iterator", align 16 ; 7 uses
  %11 = alloca %"class.pugi::xml_node_iterator", align 16 ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %13 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %14 = alloca %"class.pugi::xml_node_iterator", align 16 ; 7 uses
  %15 = alloca %"class.pugi::xml_node_iterator", align 16 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.d = load <2 x ptr>, ptr %4, align 16
  store <2 x ptr> %i.d, ptr %5, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load <2 x ptr>, ptr %i.e, align 16
  store <2 x ptr> %i.f, ptr %6, align 16
  %i.g = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %5) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZN6Assimp4Ogre17TransformKeyFrameC1Ev(ptr noundef nonnull align 4 dereferenceable(44) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.ab = call noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) ; 4 uses
  store ptr %i.h, ptr %8, align 8
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.130) #29
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.ad = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 %i.ad, ptr %i.c, align 8
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.af = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.af, ptr %8, align 8
  %i.ag = load i64, ptr %i.c, align 8
  store i64 %i.ag, ptr %i.h, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.ah = phi ptr [ %i.af, %.noexc.i ], [ %i.h, %bb.c ] ; 2 uses
  switch i64 %i.ad, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ai = load i8, ptr %i.ab, align 1
  store i8 %i.ai, ptr %i.ah, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %i.ab, i64 %i.ad, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.aj = load i64, ptr %i.c, align 8             ; 2 uses
  store i64 %i.aj, ptr %i.i, align 8
  %i.ak = load ptr, ptr %8, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj
  store i8 0, ptr %i.al, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.am = load i64, ptr %i.i, align 8
  %i.an = icmp eq i64 %i.am, 8
  br i1 %i.an, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.f
  %i.ao = load ptr, ptr %8, align 8
  %i.ap = load i64, ptr %i.ao, align 1
  %i.aq = icmp ne i64 %i.ap, 7308604914265580907
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.at = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.79)
          to label %bb.g unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store float %i.at, ptr %7, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.h unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.au = load <2 x ptr>, ptr %9, align 16
  store <2 x ptr> %i.au, ptr %10, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.av = load <2 x ptr>, ptr %i.j, align 16
  store <2 x ptr> %i.av, ptr %11, align 16
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %bb.h
  %i.aw = invoke noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.j unwind label %bb.w

bb.j:                                             ; preds = %bb.i
  br i1 %i.aw, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139

.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.g, %bb.bc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.l:                                             ; preds = %bb.j
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.m unwind label %bb.w       ; 9 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ay = invoke noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.n unwind label %.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.n:                                             ; preds = %bb.m
  store ptr %i.k, ptr %12, align 8
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.130) #29
          to label %.noexc80 unwind label %.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp

.noexc80:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ba = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ay) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.ba, ptr %i.b, align 8
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %.noexc.i79, label %._crit_edge.i.i78

.noexc.i79:                                       ; preds = %bb.p
  %i.bc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc81 unwind label %.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc81:                                         ; preds = %.noexc.i79
  store ptr %i.bc, ptr %12, align 8
  %i.bd = load i64, ptr %i.b, align 8
  store i64 %i.bd, ptr %i.k, align 8
  br label %._crit_edge.i.i78

._crit_edge.i.i78:                                ; preds = %.noexc81, %bb.p
  %i.be = phi ptr [ %i.bc, %.noexc81 ], [ %i.k, %bb.p ] ; 2 uses
  switch i64 %i.ba, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i78
  %i.bf = load i8, ptr %i.ay, align 1
  store i8 %i.bf, ptr %i.be, align 1
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i78
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 1 %i.ay, i64 %i.ba, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i78
  %i.bg = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.bg, ptr %i.l, align 8
  %i.bh = load ptr, ptr %12, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  store i8 0, ptr %i.bi, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.bj = load i64, ptr %i.l, align 8             ; 3 uses
  switch i64 %i.bj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143 [
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84: ; preds = %bb.s
  %i.bk = load ptr, ptr %12, align 8              ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 1
  %i.bm = xor i64 %i.bl, 8386103224169493108
  %i.bn = getelementptr i8, ptr %i.bk, i64 8
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i64
  %i.bq = xor i64 %i.bp, 101
  %i.br = or i64 %i.bm, %i.bq
  %i.bs = icmp ne i64 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84
  %i.bv = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.103)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread
  store float %i.bv, ptr %i.u, align 4
  %i.bw = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.104)
          to label %bb.u unwind label %bb.ac

bb.u:                                             ; preds = %bb.t
  store float %i.bw, ptr %i.v, align 4
  %i.bx = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.105)
          to label %bb.v unwind label %bb.ac

bb.v:                                             ; preds = %bb.u
  store float %i.bx, ptr %i.w, align 4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143

bb.w:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %bb.l
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %.noexc.i79, %bb.o
  %lpad.loopexit.split-lp222 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86: ; preds = %bb.s
  %.pre = load ptr, ptr %12, align 8
  %bcmp.i85 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.125, i64 %i.bj)
  %i.bz = icmp eq i32 %bcmp.i85, 0
  br i1 %i.bz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86
  %i.ca = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.80)
          to label %bb.x unwind label %bb.ac      ; 2 uses

bb.x:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  invoke void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.cb = load <2 x ptr>, ptr %13, align 16
  store <2 x ptr> %i.cb, ptr %14, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.cc = load <2 x ptr>, ptr %i.p, align 16
  store <2 x ptr> %i.cc, ptr %15, align 16
  %i.cd = fcmp une float %i.ca, 0.000000e+00
  %i.ce = fmul float %i.ca, 5.000000e-01          ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y
  %i.cf = invoke noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.aa unwind label %bb.ar

bb.aa:                                            ; preds = %bb.z
  br i1 %i.cf, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143

bb.ac:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread, %bb.aw, %bb.av, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread, %bb.u, %bb.t, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread, %bb.x
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ad:                                            ; preds = %bb.aa
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.ae unwind label %bb.ar     ; 4 uses

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.ci = invoke noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ch)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.af:                                            ; preds = %bb.ae
  store ptr %i.q, ptr %16, align 8
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.130) #29
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc99:                                         ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.ck = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ci) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.ck, ptr %i.a, align 8
  %i.cl = icmp ugt i64 %i.ck, 15
  br i1 %i.cl, label %.noexc.i98, label %._crit_edge.i.i97

.noexc.i98:                                       ; preds = %bb.ah
  %i.cm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc100:                                        ; preds = %.noexc.i98
  store ptr %i.cm, ptr %16, align 8
  %i.cn = load i64, ptr %i.a, align 8
  store i64 %i.cn, ptr %i.q, align 8
  br label %._crit_edge.i.i97

._crit_edge.i.i97:                                ; preds = %.noexc100, %bb.ah
  %i.co = phi ptr [ %i.cm, %.noexc100 ], [ %i.q, %bb.ah ] ; 2 uses
  switch i64 %i.ck, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %bb.ak
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i97
  %i.cp = load i8, ptr %i.ci, align 1
  store i8 %i.cp, ptr %i.co, align 1
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i97
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr nonnull align 1 %i.ci, i64 %i.ck, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i.i97
  %i.cq = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.cq, ptr %i.r, align 8
  %i.cr = load ptr, ptr %16, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cq
  store i8 0, ptr %i.cs, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ct = load i64, ptr %i.r, align 8
  %i.cu = icmp eq i64 %i.ct, 4
  %.pre194 = load ptr, ptr %16, align 8           ; 3 uses
  br i1 %i.cu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread142

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103: ; preds = %bb.ak
  %i.cv = load i32, ptr %.pre194, align 1
  %i.cw = icmp ne i32 %i.cv, 1936291937
  %i.cx = zext i1 %i.cw to i32
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread142

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103
  %i.cz = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.103)
          to label %bb.al unwind label %bb.as     ; 2 uses

bb.al:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread
  %i.da = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.104)
          to label %bb.am unwind label %bb.as     ; 2 uses

bb.am:                                            ; preds = %bb.al
  %.sroa.0123.0.vec.insert = insertelement <2 x float> poison, float %i.cz, i64 0
  %.sroa.0123.4.vec.insert = insertelement <2 x float> %.sroa.0123.0.vec.insert, float %i.da, i64 1 ; 2 uses
  %i.db = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.105)
          to label %bb.an unwind label %bb.as     ; 5 uses

bb.an:                                            ; preds = %bb.am
  %i.dc = call noundef float @llvm.fabs.f32(float %i.cz)
  %i.dd = fcmp ole float %i.dc, f0x358637BD
  %i.de = call float @llvm.fabs.f32(float %i.da)
  %i.df = fcmp ole float %i.de, f0x358637BD
  %or.cond.not148 = and i1 %i.dd, %i.df
  %i.dg = call float @llvm.fabs.f32(float %i.db)
  %i.dh = fcmp ole float %i.dg, f0x358637BD
  %or.cond146 = and i1 %or.cond.not148, %i.dh
  br i1 %or.cond146, label %bb.ao, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread

bb.ao:                                            ; preds = %bb.an
  %.sroa.0123.0.vec.insert126 = insertelement <2 x float> %.sroa.0123.4.vec.insert, float 1.000000e+00, i64 0 ; 2 uses
  br i1 %i.cd, label %bb.ap, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.di = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN6Assimp6Logger4warnIJRA67_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.di, ptr noundef nonnull align 1 dereferenceable(67) @.str.81, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread unwind label %bb.as

bb.ar:                                            ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ad
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ae, %.noexc.i98, %bb.ag
  %lpad.loopexit.split-lp220 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

bb.as:                                            ; preds = %bb.aq, %bb.ap, %bb.am, %bb.al, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dl = load ptr, ptr %16, align 8              ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.q
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread:     ; preds = %bb.an, %bb.ao, %bb.aq
  %.sroa.0123.0 = phi <2 x float> [ %.sroa.0123.0.vec.insert126, %bb.aq ], [ %.sroa.0123.0.vec.insert126, %bb.ao ], [ %.sroa.0123.4.vec.insert, %bb.an ] ; 5 uses
  %.sroa.0.0.vec.extract8.i = extractelement <2 x float> %.sroa.0123.0, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0123.0, %.sroa.0123.0
  %i.dn = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.do = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract8.i, float %.sroa.0.0.vec.extract8.i, float %i.dn)
  %i.dp = call noundef float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.do) ; 2 uses
  %i.dq = fcmp oeq float %i.dp, 0.000000e+00
  br i1 %i.dq, label %bb.at, label %_ZN10aiVector3tIfEdVEf.exit.i.i

_ZN10aiVector3tIfEdVEf.exit.i.i:                  ; preds = %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.dp)
  %i.dr = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.ds = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = fmul <2 x float> %.sroa.0123.0, %i.dt
  %i.dv = fmul float %i.db, %i.dr
  br label %bb.at

bb.at:                                            ; preds = %_ZN10aiVector3tIfEdVEf.exit.i.i, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread
  %.sroa.7.0.i = phi float [ %i.db, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread ], [ %i.dv, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.dw = phi <2 x float> [ %.sroa.0123.0, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread ], [ %i.du, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %17 = call noundef float @sinf(float noundef %i.ce) #28
  %18 = call noundef float @cosf(float noundef %i.ce) #28
  %i.dx = insertelement <4 x float> poison, float %18, i64 0
  %19 = shufflevector <2 x float> %i.dw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %20 = shufflevector <4 x float> %i.dx, <4 x float> %19, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %21 = insertelement <4 x float> %20, float %.sroa.7.0.i, i64 3
  %i.dy = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %17, i64 1
  %22 = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %23 = fmul <4 x float> %21, %22
  store <4 x float> %23, ptr %i.t, align 4
  %.pre193 = load ptr, ptr %16, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread142

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread142: ; preds = %bb.ak, %bb.at, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103
  %i.dz = phi ptr [ %.pre194, %bb.ak ], [ %.pre193, %bb.at ], [ %.pre194, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103 ] ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.q
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread142
  %i.eb = load i64, ptr %i.q, align 8
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.ed = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.z unwind label %bb.ar      ; 0 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.as
  %i.ee = load i64, ptr %i.q, align 8
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.ef) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.as, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %lpad.loopexit.split-lp220, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.dk, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.au

bb.au:                                            ; preds = %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %.pn49 = phi { ptr, i32 } [ %i.dj, %bb.ar ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.ay

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108: ; preds = %bb.s
  %.pre192 = load ptr, ptr %12, align 8
  %bcmp.i107 = call i32 @bcmp(ptr %.pre192, ptr nonnull @.str.127, i64 %i.bj)
  %i.eg = icmp eq i32 %bcmp.i107, 0
  br i1 %i.eg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108
  %i.eh = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.103)
          to label %bb.av unwind label %bb.ac

bb.av:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread
  store float %i.eh, ptr %i.m, align 4
  %i.ei = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.104)
          to label %bb.aw unwind label %bb.ac

bb.aw:                                            ; preds = %bb.av
  store float %i.ei, ptr %i.n, align 4
  %i.ej = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.105)
          to label %bb.ax unwind label %bb.ac

bb.ax:                                            ; preds = %bb.aw
  store float %i.ej, ptr %i.o, align 4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84, %bb.s, %bb.ab, %bb.ax, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108, %bb.v
  %i.ek = load ptr, ptr %12, align 8              ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.k
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143
  %i.em = load i64, ptr %i.k, align 8
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.eo = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.i unwind label %bb.w       ; 0 uses

bb.ay:                                            ; preds = %bb.au, %bb.ac
  %.pn53 = phi { ptr, i32 } [ %i.cg, %bb.ac ], [ %.pn49, %bb.au ] ; 2 uses
  %i.ep = load ptr, ptr %12, align 8              ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.k
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.ay
  %i.er = load i64, ptr %i.k, align 8
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.ay, %.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ], [ %lpad.loopexit.split-lp222, %.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp ], [ %.pn53, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.az

bb.az:                                            ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %.pn57 = phi { ptr, i32 } [ %i.by, %bb.w ], [ %.pn53.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.be

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139: ; preds = %bb.f, %bb.k, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.et = load ptr, ptr %i.y, align 8             ; 5 uses
  %i.eu = load ptr, ptr %i.z, align 8
  %.not.i = icmp eq ptr %i.et, %i.eu
  br i1 %.not.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.et, ptr noundef nonnull align 4 dereferenceable(44) %7, i64 44, i1 false)
  %i.ev = load ptr, ptr %i.y, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 44
  store ptr %i.ew, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE9push_backERKS2_.exit

bb.bb:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139
  %i.ex = load ptr, ptr %i.x, align 8             ; 5 uses
  %i.ey = ptrtoint ptr %i.et to i64
  %i.ez = ptrtoint ptr %i.ex to i64               ; 2 uses
  %i.fa = sub i64 %i.ey, %i.ez                    ; 3 uses
  %i.fb = icmp eq i64 %i.fa, 9223372036854775800
  br i1 %i.fb, label %bb.bc, label %_ZNKSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #29
          to label %.noexc115 unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp

.noexc115:                                        ; preds = %bb.bc
  unreachable

_ZNKSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bb
  %i.fc = sdiv exact i64 %i.fa, 44                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fc, i64 1)
  %i.fd = add nsw i64 %.sroa.speculated.i.i.i, %i.fc ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %i.fc
  %i.ff = call i64 @llvm.umin.i64(i64 %i.fd, i64 209622091746699450)
  %i.fg = select i1 %i.fe, i64 209622091746699450, i64 %i.ff ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fg, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fh = mul nuw nsw i64 %i.fg, 44
  %i.fi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fh) #32
          to label %.noexc116 unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc116:                                        ; preds = %_ZNKSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.fj, ptr noundef nonnull align 4 dereferenceable(44) %7, i64 44, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.ex, %i.et
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc116, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i ], [ %i.fi, %.noexc116 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.fk, %.lr.ph.i.i.i.i.i ], [ %i.ex, %.noexc116 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(44) %.0911.i.i.i.i.i, i64 44, i1 false), !alias.scope !98
  %i.fk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 44 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 44 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fk, %i.et
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !97

_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc116
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fi, %.noexc116 ], [ %i.fl, %.lr.ph.i.i.i.i.i ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 44
  %.not.i23.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.fn = load ptr, ptr %i.z, align 8
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = sub i64 %i.fo, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fp) #30
  br label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.bd, %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.fi, ptr %i.x, align 8
  store ptr %i.fm, ptr %i.y, align 8
  %i.fq = getelementptr inbounds nuw [44 x i8], ptr %i.fi, i64 %i.fg
  store ptr %i.fq, ptr %i.z, align 8
  br label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.ba
  %i.fr = load ptr, ptr %8, align 8               ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.h
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE9push_backERKS2_.exit
  %i.ft = load i64, ptr %i.h, align 8
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE9push_backERKS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.fv = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %5) ; 0 uses
  %i.fw = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br i1 %i.fw, label %bb.b, label %._crit_edge

bb.be:                                            ; preds = %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp, %bb.az
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57, %bb.az ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp ]
  %i.fx = load ptr, ptr %8, align 8               ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.h
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
end_hunk_2
begin_hunk_3_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6Assimp4Ogre12PoseKeyFrameESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_:bb.a

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.017 = phi ptr [ %i.z, %bb.f ], [ %2, %bb.a ]  ; 6 uses
  %.sroa.09.016 = phi ptr [ %i.y, %bb.f ], [ %0, %bb.a ] ; 4 uses
  %i.a = load float, ptr %.sroa.09.016, align 8
  store float %i.a, ptr %.017, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.017, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %i.j, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN6Assimp4Ogre7PoseRefEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !12

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN6Assimp4Ogre7PoseRefEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #32
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIN6Assimp4Ogre7PoseRefEE8allocateEmPKv.exit.i.i.i.i.i.i, %.lr.ph
  %i.l = phi ptr [ null, %.lr.ph ], [ %i.k, %_ZNSt15__new_allocatorIN6Assimp4Ogre7PoseRefEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 6 uses
  store ptr %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.017, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.017, i64 24
  store ptr %i.n, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.q = load ptr, ptr %i.d, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 8
  br i1 %i.u, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.l, ptr align 4 %i.p, i64 %i.t, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc8
  %i.v = icmp eq i64 %i.t, 8
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.p, align 4
  store i64 %i.w, ptr %i.l, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.x = getelementptr inbounds i8, ptr %i.l, i64 %i.t
  store ptr %i.x, ptr %i.m, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.017, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.y, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !267

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNSt15__new_allocatorIN6Assimp4Ogre7PoseRefEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %lpad.loopexit.split-lp31, 0
  %i.ab = tail call ptr @__cxa_begin_catch(ptr %i.aa) #28 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6Assimp4Ogre12PoseKeyFrameEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.017)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp
  invoke void @__cxa_rethrow() #29
          to label %bb.k unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.z, %bb.f ]
  ret ptr %.0.lcssa

bb.h:                                             ; preds = %bb.g, %.loopexit.split-lp.loopexit.split-lp
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ac

bb.j:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #33
  unreachable

bb.k:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = load ptr, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !alias.scope !280
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !alias.scope !280
  store i8 0, ptr %i.e, align 8, !alias.scope !280
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !280 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !280 ; 2 uses
  %i.k = icmp ugt ptr %i.h, %i.j
  %.08.i.i.i.i.i = select i1 %i.k, ptr %i.h, ptr %i.j ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !noalias !280 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %0, align 8, !alias.scope !280 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.e
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.e, align 8, !alias.scope !280
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #30
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %4, align 8
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %4, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.ah = load i64, ptr %i.af, align 8
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #28
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ak) #28
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_KcS8_ERA43_S9_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(43) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(43) %2) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(43) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %6, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA13_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_EEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %6, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %6, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #28
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %6) #28
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA13_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_EEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(13) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA13_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(13) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %5, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %5, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #28
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #28
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA13_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(13) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(13) %2) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(13) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #28
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRtERA45_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(45) %2, ptr noundef nonnull align 2 dereferenceable(2) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(45) %2) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(45) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERtEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 2 dereferenceable(2) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #28
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERtEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load i16, ptr %2, align 2
  %i.b = zext i16 %i.a to i64
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %1, i64 noundef %i.b) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c
end_hunk_3
begin_hunk_4_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_T0_T1_:bb.a
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_SG_SG_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_SG_SG_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_SG_SG_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_SG_SG_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_SG_SG_T0_.exit.i.preheader, %bb.r
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.r ], [ %storemerge1929, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_SG_SG_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.ca, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_SG_SG_T0_.exit.i.preheader ]
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_SG_SG_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_SG_SG_T0_.exit.i ], [ %i.ca, %bb.p ] ; 9 uses
  %i.bx = load ptr, ptr %.sroa.012.1.i.i, align 8
  %i.by = load ptr, ptr %0, align 8
  %i.bz = tail call noundef zeroext i1 %3(ptr noundef %i.bx, ptr noundef %i.by), !inline_history !286
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.bz, label %bb.p, label %.preheader.i.i, !llvm.loop !287

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.p ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -8 ; 6 uses
  %i.cb = load ptr, ptr %0, align 8
  %i.cc = load ptr, ptr %.sroa.09.1.i.i, align 8
  %i.cd = tail call noundef zeroext i1 %3(ptr noundef %i.cb, ptr noundef %i.cc), !inline_history !286
  br i1 %i.cd, label %.preheader.i.i, label %bb.q, !llvm.loop !288

bb.q:                                             ; preds = %.preheader.i.i
  %i.ce = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.ce, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEET_SG_SG_T0_.exit

bb.r:                                             ; preds = %bb.q
  %i.cf = load ptr, ptr %.sroa.012.1.i.i, align 8
  %i.cg = load ptr, ptr %.sroa.09.1.i.i, align 8
  store ptr %i.cg, ptr %.sroa.012.1.i.i, align 8
  store ptr %i.cf, ptr %.sroa.09.1.i.i, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_SG_SG_T0_.exit.i, !llvm.loop !289

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEET_SG_SG_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1929, i64 noundef %i.av, ptr %3)
  %i.ch = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ci = sub i64 %i.ch, %i.a
  %i.cj = ashr exact i64 %i.ci, 3                 ; 2 uses
  %i.ck = icmp sgt i64 %i.cj, 16
  br i1 %i.ck, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_SG_T0_.exit, !llvm.loop !281

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_SG_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEET_SG_SG_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_SG_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_T0_SH_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.am, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_T0_SH_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.us
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.sroa.0.0.copyload.us = load ptr, ptr %2, align 8 ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_T0_SH_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.09.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.v
  %i.x = load ptr, ptr %i.u, align 8
  %i.y = load ptr, ptr %i.w, align 8
  %i.z = tail call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef %i.x, ptr noundef %i.y), !inline_history !290
  %spec.select.i.us = select i1 %i.z, i64 %i.v, i64 %i.t ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.us
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !5

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_T0_SH_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.us ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef %i.ag, ptr noundef %i.q), !inline_history !291
  br i1 %i.ah, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_T0_SH_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ai = load ptr, ptr %i.af, align 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.us
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.ak, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_T0_SH_T1_T2_.exit.us, !llvm.loop !6

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_T0_SH_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.09.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store ptr %i.q, ptr %i.al, align 8
  %.not.us = icmp eq i64 %.09.us, 0
  %i.am = add nsw i64 %.09.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !292

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_T0_SH_T1_T2_.exit
  %.09 = phi i64 [ %i.bm, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_T0_SH_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %.09
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %i.ap = icmp slt i64 %.09, %i.i
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.036.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.09, %.split ] ; 2 uses
  %i.aq = shl i64 %.036.i, 1                      ; 2 uses
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ar
  %i.at = or disjoint i64 %i.aq, 1                ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %i.at
  %i.av = load ptr, ptr %i.as, align 8
  %i.aw = load ptr, ptr %i.au, align 8
  %i.ax = tail call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef %i.av, ptr noundef %i.aw), !inline_history !290
  %spec.select.i = select i1 %i.ax, i64 %i.at, i64 %i.ar ; 4 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i
  store ptr %i.az, ptr %i.ba, align 8
  %i.bb = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.09, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bc = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bd = load ptr, ptr %i.n, align 8
  store ptr %i.bd, ptr %i.o, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.be = icmp sgt i64 %.1.i, %.09
  br i1 %i.be, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_T0_SH_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef %i.bg, ptr noundef %i.ao), !inline_history !291
  br i1 %i.bh, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_T0_SH_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bi = load ptr, ptr %i.bf, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i
  store ptr %i.bi, ptr %i.bj, align 8
  %i.bk = icmp sgt i64 %.0920.i.i, %.09
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_T0_SH_T1_T2_.exit, !llvm.loop !6

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_T0_SH_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  store ptr %i.ao, ptr %i.bl, align 8
  %.not = icmp eq i64 %.09, 0
  %i.bm = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !292

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_T0_SH_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_T0_SH_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #24

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRA2_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERtEESA_NS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 2 dereferenceable(2) %3, ptr noundef nonnull align 1 dereferenceable(2) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load i16, ptr %3, align 2
  %i.b = zext i16 %i.a to i64
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %2, i64 noundef %i.b) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %6, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA2_KcEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %6, ptr noundef nonnull align 1 dereferenceable(2) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.d, ptr %6, align 8
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.f = getelementptr i8, ptr %i.d, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %6, i64 %i.g
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #28
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.q) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %6) #28
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA2_KcEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %3) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(2) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #28
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #28
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRmERA61_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(61) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(61) %2) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(61) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERmEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #28
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERmEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load i64, ptr %2, align 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %1, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #28
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #28
  resume { ptr, i32 } %i.q
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

attributes #0 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind }
attributes #29 = { noreturn }
attributes #30 = { builtin nounwind }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { noreturn nounwind }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}

!0 = distinct !{!0, !10}
!1 = distinct !{!1, !10}
!2 = distinct !{ptr @_ZNSt12__shared_ptrIN6Assimp10TXmlParserIN4pugi8xml_nodeEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3 = distinct !{!3, !10}
!4 = distinct !{!4, !10}
!5 = distinct !{!5, !10}
!6 = distinct !{!6, !10}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"branch_weights", i32 1, i32 1048575}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = distinct !{!14, i1 true, !"_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6rbeginEv"}
!15 = distinct !{!15, !14, !"_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6rbeginEv: argument 0"}
!16 = distinct !{!16, i1 true, !"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEZ13ai_trim_rightRS9_EUlhE_ET_SE_SE_T0_"}
!17 = distinct !{!17, !16, !"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEZ13ai_trim_rightRS9_EUlhE_ET_SE_SE_T0_: argument 0"}
!18 = distinct !{!18, i1 true, !"_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIZ13ai_trim_rightRS9_EUlhE_EEET_SH_SH_T0_"}
!19 = distinct !{!19, !18, !"_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIZ13ai_trim_rightRS9_EUlhE_EEET_SH_SH_T0_: argument 0"}
!20 = distinct !{!20, !10, !26, !27}
!21 = distinct !{!21, !10, !26, !27}
!22 = distinct !{!22, !10, !27, !26}
!23 = !{!15}
!24 = !{!17}
!25 = !{!19, !17}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"branch_weights", i32 8, i32 24}
!29 = distinct !{!29, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!30 = distinct !{!30, !29, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!31 = !{!30}
!32 = !{i8 0, i8 2}
!33 = !{}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!37 = distinct !{!37, !36, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!38 = distinct !{!38, !36, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!39 = distinct !{!39, !10}
!40 = distinct !{!40, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!41 = distinct !{!41, !40, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!42 = distinct !{!42, !40, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!43 = distinct !{!43, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!44 = distinct !{!44, !43, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!45 = distinct !{!45, !43, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!48 = distinct !{!48, !47, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!49 = distinct !{!49, !47, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!50 = distinct !{!50, !10}
!51 = distinct !{!51, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!52 = distinct !{!52, !51, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!53 = distinct !{!53, !51, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!54 = distinct !{!54, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!55 = distinct !{!55, !54, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!56 = distinct !{!56, !54, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!57 = distinct !{!57, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!58 = distinct !{!58, !57, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!59 = distinct !{!59, !57, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!60 = distinct !{!60, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!61 = distinct !{!61, !60, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!62 = distinct !{!62, !60, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!63 = distinct !{!63, !10}
!64 = !{!38, !37}
!65 = !{!42, !41}
!66 = !{!45, !44}
!67 = !{!49, !48}
!68 = !{!53, !52}
!69 = !{!56, !55}
!70 = !{!59, !58}
!71 = !{!62, !61}
!72 = distinct !{!72, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!73 = distinct !{!73, !72, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!74 = distinct !{!74, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!75 = distinct !{!75, !74, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!76 = !{!73}
!77 = !{!75, !73}
!78 = distinct !{!78, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!79 = distinct !{!79, !78, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!80 = !{ptr @_ZN6Assimp4OgreL8EndsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_b}
!81 = !{!79}
!82 = distinct !{null}
!83 = distinct !{null}
!84 = distinct !{!84, i1 true, !"_ZSt11make_sharedIN6Assimp10TXmlParserIN4pugi8xml_nodeEEEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_"}
!85 = distinct !{!85, !84, !"_ZSt11make_sharedIN6Assimp10TXmlParserIN4pugi8xml_nodeEEEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_: argument 0"}
!86 = distinct !{null, null}
!87 = !{!85}
!88 = distinct !{null, null}
!89 = distinct !{!89, !10}
!90 = distinct !{!90, !10}
!91 = distinct !{!91, !10}
!92 = distinct !{!92, !10}
!93 = distinct !{!93, !10}
!94 = distinct !{!94, i1 true, !"_ZSt19__relocate_object_aIN6Assimp4Ogre17TransformKeyFrameES2_SaIS2_EEvPT_PT0_RT1_"}
!95 = distinct !{!95, !94, !"_ZSt19__relocate_object_aIN6Assimp4Ogre17TransformKeyFrameES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!96 = distinct !{!96, !94, !"_ZSt19__relocate_object_aIN6Assimp4Ogre17TransformKeyFrameES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!97 = distinct !{!97, !10}
!98 = !{!96, !95}
!99 = distinct !{ptr @_ZNSt6vectorIN6Assimp4Ogre13MorphKeyFrameESaIS2_EED2Ev, null, null, null, null, null, null, null}
!100 = distinct !{!100, !10}
!101 = distinct !{!101, !10}
!102 = distinct !{!102, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!103 = distinct !{!103, !102, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!104 = distinct !{!104, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!105 = distinct !{!105, !104, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!106 = distinct !{!106, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!107 = distinct !{!107, !106, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!108 = !{!103}
!109 = !{!105}
!110 = !{!107}
!111 = !{!107, !105, !103}
!112 = distinct !{!112, !10}
!113 = distinct !{null}
!114 = distinct !{null, null, null, null, null, null, null}
!115 = distinct !{!115, i1 true, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!116 = distinct !{!116, !115, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!117 = distinct !{!117, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!118 = distinct !{!118, !117, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!119 = distinct !{!119, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!120 = distinct !{!120, !119, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!121 = distinct !{!121, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!122 = distinct !{!122, !121, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!123 = !{!116}
!124 = !{!118}
!125 = !{!120}
!126 = !{!122}
!127 = !{!122, !120, !118, !116}
!128 = distinct !{!128, i1 true, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!129 = distinct !{!129, !128, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!130 = distinct !{!130, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!131 = distinct !{!131, !130, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!132 = distinct !{!132, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!133 = distinct !{!133, !132, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!134 = distinct !{!134, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!135 = distinct !{!135, !134, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!136 = !{!129}
!137 = !{!131}
!138 = !{!133}
!139 = !{!135}
!140 = !{!135, !133, !131, !129}
!141 = distinct !{!141, i1 true, !"_ZSt19__relocate_object_aISt6vectorI10aiVector3tIfESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_"}
!142 = distinct !{!142, !141, !"_ZSt19__relocate_object_aISt6vectorI10aiVector3tIfESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!143 = distinct !{!143, !141, !"_ZSt19__relocate_object_aISt6vectorI10aiVector3tIfESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!144 = distinct !{!144, !10}
!145 = !{!142}
!146 = !{!143}
!147 = distinct !{!147, i1 true, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!148 = distinct !{!148, !147, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!149 = distinct !{!149, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!150 = distinct !{!150, !149, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!151 = distinct !{!151, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!152 = distinct !{!152, !151, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!153 = distinct !{!153, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!154 = distinct !{!154, !153, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!155 = !{!148}
!156 = !{!150}
!157 = !{!152}
!158 = !{!154}
!159 = !{!154, !152, !150, !148}
!160 = distinct !{!160, i1 true, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!161 = distinct !{!161, !160, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!162 = distinct !{!162, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!163 = distinct !{!163, !162, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!164 = distinct !{!164, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!165 = distinct !{!165, !164, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!166 = distinct !{!166, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!167 = distinct !{!167, !166, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!168 = !{!161}
!169 = !{!163}
!170 = !{!165}
!171 = !{!167}
!172 = !{!167, !165, !163, !161}
!173 = distinct !{!173, i1 true, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!174 = distinct !{!174, !173, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!175 = distinct !{!175, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!176 = distinct !{!176, !175, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!177 = distinct !{!177, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!178 = distinct !{!178, !177, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!179 = distinct !{!179, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!180 = distinct !{!180, !179, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!181 = !{!174}
!182 = !{!176}
!183 = !{!178}
!184 = !{!180}
!185 = !{!180, !178, !176, !174}
!186 = distinct !{!186, !10}
!187 = distinct !{!187, i1 true, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!188 = distinct !{!188, !187, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!189 = distinct !{!189, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
end_hunk_4
