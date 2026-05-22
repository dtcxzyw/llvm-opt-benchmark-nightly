inline.NumInlined: 495
inline.NumDeleted: 240
begin_hunk_0_@_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_:bb.a
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 4 uses
  %i.x = ashr exact i64 %i.w, 4                   ; 3 uses
  %i.y = icmp ugt i64 %i.x, 32766
  br i1 %i.y, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i16 32767, ptr %i.b, align 2, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !67
  call void @_ZN5arrow8internal12JoinToStringIJRA38_KcRsRA13_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(38) @.str.14, ptr noundef nonnull align 2 dereferenceable(2) %i.b, ptr noundef nonnull align 1 dereferenceable(13) @.str.15), !noalias !67
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 6, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %5, align 8, !tbaa !36, !noalias !67 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN5arrow6Status13CapacityErrorIJRA38_KcRsRA13_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !45, !noalias !67
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #16
  br label %_ZN5arrow6Status13CapacityErrorIJRA38_KcRsRA13_S2_EEES0_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %5, align 8, !tbaa !36, !noalias !67 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.f
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !45, !noalias !67
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !67
  resume { ptr, i32 } %i.ae

_ZN5arrow6Status13CapacityErrorIJRA38_KcRsRA13_S2_EEES0_DpOT_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.l

bb.g:                                             ; preds = %bb.c
  %i.ak = load i16, ptr %i.c, align 2, !tbaa !27
  %i.al = sext i16 %i.ak to i32
  %i.am = shl nsw i32 %i.al, 8
  %i.an = zext i8 %3 to i32
  %i.ao = or disjoint i32 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !61
  %.not.i.i = icmp eq ptr %i.s, %i.aq
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.s, ptr noundef nonnull align 2 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !72
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  store ptr %i.as, ptr %i.r, align 8, !tbaa !7
  %.pre = load ptr, ptr %1, align 8, !tbaa !11
  br label %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE9push_backEOS3_.exit

bb.i:                                             ; preds = %bb.g
  %i.at = icmp eq i64 %i.w, 9223372036854775792
  br i1 %i.at, label %bb.j, label %_ZNKSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #18
  unreachable

_ZNKSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.au = add nuw nsw i64 %.sroa.speculated.i.i.i.i, %i.x ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 4
  %i.aw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #17 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ax, ptr noundef nonnull align 2 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !72
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i ], [ %i.aw, %_ZNKSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %_ZNKSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !72, !alias.scope !73
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.s
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !77

_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.aw, %_ZNKSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.az, %.lr.ph.i.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.w) #16
  br label %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.aw, ptr %1, align 8, !tbaa !11
  store ptr %i.ba, ptr %i.r, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.bb, ptr %i.ap, align 8, !tbaa !61
  br label %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.h, %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.bc = phi ptr [ %.pre, %bb.h ], [ %i.aw, %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  %i.bd = phi ptr [ %i.as, %bb.h ], [ %i.ba, %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = lshr exact i64 %i.bg, 4
  %i.bi = trunc i64 %i.bh to i16
  %i.bj = add i16 %i.bi, -1
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bl = sext i32 %i.ao to i64
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !46
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bl
  store i16 %i.bj, ptr %i.bn, align 2, !tbaa !28
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !78
  br label %bb.l

bb.l:                                             ; preds = %_ZN5arrow6Status13CapacityErrorIJRA38_KcRsRA13_S2_EEES0_DpOT_.exit, %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE9push_backEOS3_.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11TrieBuilder17ExtendLookupTableEPs(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1                   ; 2 uses
  %i.j = icmp ugt i64 %i.i, 8388607
  br i1 %i.j, label %bb.b, label %_ZNSt6vectorIsSaIsEE6resizeEmRKs.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA47_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 6, ptr noundef nonnull align 1 dereferenceable(47) @.str.16)
  br label %bb.c

_ZNSt6vectorIsSaIsEE6resizeEmRKs.exit:            ; preds = %bb.a
  %i.k = lshr i64 %i.i, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i16 -1, ptr %i.a, align 2, !tbaa !28
  call void @_ZNSt6vectorIsSaIsEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPsS1_EEmRKs(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, i64 noundef 256, ptr noundef nonnull align 2 dereferenceable(2) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.l = trunc nuw nsw i64 %i.k to i16
  store i16 %i.l, ptr %2, align 2, !tbaa !28
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !81
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIsSaIsEE6resizeEmRKs.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11TrieBuilder15CreateChildNodeEPNS0_4Trie4NodeEhSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef captures(none) %2, i8 noundef zeroext %3, i64 %4, ptr readonly captures(none) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.arrow::internal::Trie::Node", align 2 ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %8 = alloca %"struct.arrow::internal::Trie::Node", align 2 ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = icmp ugt i64 %4, 11
  br i1 %i.a, label %_ZN5arrow6StatusD2Ev.exit.lr.ph, label %_ZN5arrow6StatusD2Ev.exit35

_ZN5arrow6StatusD2Ev.exit.lr.ph:                  ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6StatusD2Ev.exit.lr.ph, %.critedge
  %.01358 = phi ptr [ %2, %_ZN5arrow6StatusD2Ev.exit.lr.ph ], [ %i.i, %.critedge ]
  %.01457 = phi i8 [ %3, %_ZN5arrow6StatusD2Ev.exit.lr.ph ], [ %i.k, %.critedge ]
  %.sroa.6.056 = phi ptr [ %5, %_ZN5arrow6StatusD2Ev.exit.lr.ph ], [ %i.m, %.critedge ] ; 3 uses
  %.sroa.040.055 = phi i64 [ %4, %_ZN5arrow6StatusD2Ev.exit.lr.ph ], [ %i.l, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store i16 -1, ptr %6, align 2, !tbaa !24
  store i16 -1, ptr %i.b, align 2, !tbaa !27
  store i8 11, ptr %i.c, align 2, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.d, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6.056, i64 11, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %.01358, i8 noundef zeroext %.01457, ptr noundef nonnull align 2 dereferenceable(16) %6)
  %i.f = load ptr, ptr %7, align 8, !tbaa !29     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.critedge, label %.critedge23

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.6.056, i64 11
  %i.k = load i8, ptr %i.j, align 1, !tbaa !45    ; 2 uses
  %i.l = add i64 %.sroa.040.055, -12              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.6.056, i64 12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.n = icmp ugt i64 %i.l, 11
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit35, !llvm.loop !85

_ZN5arrow6StatusD2Ev.exit35:                      ; preds = %.critedge, %bb.a
  %.sroa.040.0.lcssa = phi i64 [ %4, %bb.a ], [ %i.l, %.critedge ] ; 2 uses
  %.sroa.6.0.lcssa = phi ptr [ %5, %bb.a ], [ %i.m, %.critedge ]
  %.014.lcssa = phi i8 [ %3, %bb.a ], [ %i.k, %.critedge ]
  %.013.lcssa = phi ptr [ %2, %bb.a ], [ %i.i, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.p = load i16, ptr %i.o, align 8, !tbaa !86
  store i16 %i.p, ptr %8, align 2, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 2
  store i16 -1, ptr %i.q, align 2, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.s = trunc nuw nsw i64 %.sroa.040.0.lcssa to i8
  store i8 %i.s, ptr %i.r, align 2, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %.sroa.6.0.lcssa, i64 %.sroa.040.0.lcssa, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %.013.lcssa, i8 noundef zeroext %.014.lcssa, ptr noundef nonnull align 2 dereferenceable(16) %8)
  %i.u = load ptr, ptr %9, align 8, !tbaa !29     ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN5arrow6StatusD2Ev.exit39, label %.critedge24

_ZN5arrow6StatusD2Ev.exit39:                      ; preds = %_ZN5arrow6StatusD2Ev.exit35
  %i.w = load i16, ptr %i.o, align 8, !tbaa !86
  %i.x = add i16 %i.w, 1
  store i16 %i.x, ptr %i.o, align 8, !tbaa !86
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !88
  br label %.critedge24

.critedge24:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit35, %_ZN5arrow6StatusD2Ev.exit39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.b

.critedge23:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  store ptr %i.f, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.b

bb.b:                                             ; preds = %.critedge23, %.critedge24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11TrieBuilder15CreateChildNodeEPNS0_4Trie4NodeEcSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef captures(none) %2, i8 noundef signext %3, i64 %4, ptr readonly captures(none) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.arrow::internal::Trie::Node", align 2 ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %8 = alloca %"struct.arrow::internal::Trie::Node", align 2 ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.a = icmp ugt i64 %4, 11
  br i1 %i.a, label %_ZN5arrow6StatusD2Ev.exit.lr.ph.i, label %_ZN5arrow6StatusD2Ev.exit35.i

_ZN5arrow6StatusD2Ev.exit.lr.ph.i:                ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %.critedge.i, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i
  %.01358.i = phi ptr [ %2, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i ], [ %i.i, %.critedge.i ]
  %.01457.i = phi i8 [ %3, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i ], [ %i.k, %.critedge.i ]
  %.sroa.6.056.i = phi ptr [ %5, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i ], [ %i.m, %.critedge.i ] ; 3 uses
  %.sroa.040.055.i = phi i64 [ %4, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i ], [ %i.l, %.critedge.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15, !noalias !91
  store i16 -1, ptr %6, align 2, !tbaa !24, !noalias !91
  store i16 -1, ptr %i.b, align 2, !tbaa !27, !noalias !91
  store i8 11, ptr %i.c, align 2, !tbaa !35, !noalias !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.d, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6.056.i, i64 11, i1 false), !noalias !91
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !91
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %.01358.i, i8 noundef zeroext %.01457.i, ptr noundef nonnull align 2 dereferenceable(16) %6), !noalias !91
  %i.f = load ptr, ptr %7, align 8, !tbaa !29, !noalias !91 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !91
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.critedge.i, label %.critedge23.i

.critedge.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !84, !noalias !91
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.6.056.i, i64 11
  %i.k = load i8, ptr %i.j, align 1, !tbaa !45, !noalias !91 ; 2 uses
  %i.l = add i64 %.sroa.040.055.i, -12            ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.6.056.i, i64 12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !91
  %i.n = icmp ugt i64 %i.l, 11
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit.i, label %_ZN5arrow6StatusD2Ev.exit35.i, !llvm.loop !85

_ZN5arrow6StatusD2Ev.exit35.i:                    ; preds = %.critedge.i, %bb.a
  %.sroa.040.0.lcssa.i = phi i64 [ %4, %bb.a ], [ %i.l, %.critedge.i ] ; 2 uses
  %.sroa.6.0.lcssa.i = phi ptr [ %5, %bb.a ], [ %i.m, %.critedge.i ]
  %.014.lcssa.i = phi i8 [ %3, %bb.a ], [ %i.k, %.critedge.i ]
  %.013.lcssa.i = phi ptr [ %2, %bb.a ], [ %i.i, %.critedge.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15, !noalias !91
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.p = load i16, ptr %i.o, align 8, !tbaa !86, !noalias !91
  store i16 %i.p, ptr %8, align 2, !tbaa !24, !noalias !91
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 2
  store i16 -1, ptr %i.q, align 2, !tbaa !27, !noalias !91
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.s = trunc nuw nsw i64 %.sroa.040.0.lcssa.i to i8
  store i8 %i.s, ptr %i.r, align 2, !tbaa !35, !noalias !91
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %.sroa.6.0.lcssa.i, i64 %.sroa.040.0.lcssa.i, i1 false), !noalias !91
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15, !noalias !91
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %.013.lcssa.i, i8 noundef zeroext %.014.lcssa.i, ptr noundef nonnull align 2 dereferenceable(16) %8), !noalias !91
  %i.u = load ptr, ptr %9, align 8, !tbaa !29, !noalias !91 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !29, !alias.scope !91
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15, !noalias !91
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN5arrow6StatusD2Ev.exit39.i, label %.critedge24.i

_ZN5arrow6StatusD2Ev.exit39.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit35.i
  %i.w = load i16, ptr %i.o, align 8, !tbaa !86, !noalias !91
  %i.x = add i16 %i.w, 1
  store i16 %i.x, ptr %i.o, align 8, !tbaa !86, !noalias !91
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !94
  br label %.critedge24.i

.critedge24.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit39.i, %_ZN5arrow6StatusD2Ev.exit35.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15, !noalias !91
  br label %_ZN5arrow8internal11TrieBuilder15CreateChildNodeEPNS0_4Trie4NodeEhSt17basic_string_viewIcSt11char_traitsIcEE.exit

.critedge23.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr %i.f, ptr %0, align 8, !alias.scope !91
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !91
  br label %_ZN5arrow8internal11TrieBuilder15CreateChildNodeEPNS0_4Trie4NodeEhSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN5arrow8internal11TrieBuilder15CreateChildNodeEPNS0_4Trie4NodeEhSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.critedge24.i, %.critedge23.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11TrieBuilder9SplitNodeEll(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.443 = alloca [11 x i8], align 8          ; 5 uses
  %.sroa.4 = alloca [11 x i8], align 8            ; 5 uses
  %4 = alloca %"struct.arrow::internal::Trie::Node", align 4 ; 7 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %2 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.c = load <2 x i16>, ptr %i.b, align 2, !tbaa !28
  store <2 x i16> %i.c, ptr %4, align 4, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.e = add nsw i64 %3, 1                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.f = load i8, ptr %i.d, align 2, !tbaa !35
  %i.g = zext i8 %i.f to i64                      ; 4 uses
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %_ZN5arrow6StatusD2Ev.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i64 noundef %i.e, i64 noundef %i.g) #18
  unreachable

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 3 uses
  %i.l = sub nuw nsw i64 %i.g, %i.e               ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  %i.n = trunc nuw i64 %i.l to i8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4, ptr nonnull align 1 %i.m, i64 %i.l, i1 false)
  %.sroa.4.0..sroa.4.0..sroa.4.1..0..0..0..sroa.0.0.copyload.i37 = load i56, ptr %.sroa.4, align 8
  %.sroa.4.7..8..8..8..sroa_idx46 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  %.sroa.4.7..sroa.4.7..sroa.4.8..8..8..8..sroa.2.0.copyload.i = load i32, ptr %.sroa.4.7..8..8..8..sroa_idx46, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  store i8 %i.n, ptr %i.j, align 4
  %.sroa_idx38 = getelementptr inbounds nuw i8, ptr %4, i64 5
  store i56 %.sroa.4.0..sroa.4.0..sroa.4.1..0..0..0..sroa.0.0.copyload.i37, ptr %.sroa_idx38, align 1
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.sroa.4.7..sroa.4.7..sroa.4.8..8..8..8..sroa.2.0.copyload.i, ptr %.sroa.28.0..sroa_idx, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !45
  store i16 -1, ptr %i.i, align 2, !tbaa !27
  store i16 -1, ptr %i.b, align 2, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.443)
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %3) ; 2 uses
  %i.q = trunc nuw i64 %.sroa.speculated.i.i to i8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.443, ptr nonnull align 1 %i.k, i64 %.sroa.speculated.i.i, i1 false)
  %.sroa.443.0..sroa.443.0..sroa.443.1..0..0..0..sroa.0.0.copyload.i2540 = load i56, ptr %.sroa.443, align 8
  %.sroa.443.7..8..8..8..sroa_idx47 = getelementptr inbounds nuw i8, ptr %.sroa.443, i64 7
  %.sroa.443.7..sroa.443.7..sroa.443.8..8..8..8..sroa.2.0.copyload.i27 = load i32, ptr %.sroa.443.7..8..8..8..sroa_idx47, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443)
  store i8 %i.q, ptr %i.d, align 2
  %.sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i56 %.sroa.443.0..sroa.443.0..sroa.443.1..0..0..0..sroa.0.0.copyload.i2540, ptr %.sroa_idx41, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %.sroa.443.7..sroa.443.7..sroa.443.8..8..8..8..sroa.2.0.copyload.i27, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.b, i8 noundef zeroext %i.p, ptr noundef nonnull align 2 dereferenceable(16) %4)
  %i.r = load ptr, ptr %5, align 8, !tbaa !29     ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN5arrow6StatusD2Ev.exit33, label %.critedge

_ZN5arrow6StatusD2Ev.exit33:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !97
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11TrieBuilder6AppendESt17basic_string_viewIcSt11char_traitsIcEEb(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, ptr readonly captures(none) %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::internal::Trie::Node", align 2 ; 8 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"struct.arrow::internal::Trie::Node", align 2 ; 7 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = alloca i16, align 2                      ; 4 uses
  %9 = alloca %"struct.arrow::internal::Trie::Node", align 2 ; 8 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %11 = alloca %"struct.arrow::internal::Trie::Node", align 2 ; 7 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %.sroa.443.i83 = alloca [11 x i8], align 8      ; 5 uses
  %.sroa.4.i84 = alloca [11 x i8], align 8        ; 5 uses
  %13 = alloca %"struct.arrow::internal::Trie::Node", align 4 ; 7 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %.sroa.443.i = alloca [11 x i8], align 8        ; 5 uses
  %.sroa.4.i = alloca [11 x i8], align 8          ; 5 uses
  %15 = alloca %"struct.arrow::internal::Trie::Node", align 4 ; 7 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %17 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 2
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 5
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 10 uses
  %23 = getelementptr inbounds nuw i8, ptr %7, i64 2
  %24 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %25 = getelementptr inbounds nuw i8, ptr %7, i64 5
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit110, %bb.a
  %.055 = phi i64 [ %2, %bb.a ], [ %26, %_ZN5arrow6StatusD2Ev.exit110 ] ; 8 uses
  %.053 = phi i64 [ 0, %bb.a ], [ %i.cr, %_ZN5arrow6StatusD2Ev.exit110 ] ; 3 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %i.dd, %_ZN5arrow6StatusD2Ev.exit110 ] ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.0 ; 19 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i8, ptr %i.f, align 1, !tbaa !35    ; 2 uses
  %i.h = zext i8 %i.g to i64                      ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 5 ; 8 uses
  %.not72174.not = icmp eq i8 %i.g, 0
  br i1 %.not72174.not, label %.critedge.thread122, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.j = add i64 %.053, %i.h
  %i.k = sub i64 %.055, %i.h
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.154177 = phi i64 [ %i.bw, %bb.i ], [ %.053, %.lr.ph.preheader ] ; 4 uses
  %.156176 = phi i64 [ %i.bx, %bb.i ], [ %.055, %.lr.ph.preheader ] ; 2 uses
  %.060175 = phi i64 [ %i.by, %bb.i ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %i.l = icmp eq i64 %.156176, 0
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15, !noalias !100
  %i.m = load <2 x i16>, ptr %i.e, align 2, !tbaa !28, !noalias !100
  store <2 x i16> %i.m, ptr %15, align 4, !tbaa !28, !noalias !100
  %i.n = add nuw nsw i64 %.055, 1                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %.not131 = icmp samesign ult i64 %.055, %i.h
  br i1 %.not131, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i64 noundef %i.n, i64 noundef %i.h) #18, !noalias !100
  unreachable

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.r = sub nuw nsw i64 %i.h, %i.n               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n
  %i.t = trunc nuw i64 %i.r to i8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.i, ptr nonnull align 1 %i.s, i64 %i.r, i1 false), !noalias !100
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.1..0..0..0..sroa.0.0.copyload.i37.i = load i56, ptr %.sroa.4.i, align 8, !noalias !100
  %.sroa.4.i.7.i.7.i.7..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 7
  %.sroa.4.i.7..sroa.4.i.7..sroa.4.i.7..sroa.4.7..sroa.4.8..8..8..8..sroa.2.0.copyload.i.i = load i32, ptr %.sroa.4.i.7.i.7.i.7..8..8..8..sroa_idx, align 1, !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  store i8 %i.t, ptr %i.q, align 4, !noalias !100
  %.sroa_idx38.i = getelementptr inbounds nuw i8, ptr %15, i64 5
  store i56 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.1..0..0..0..sroa.0.0.copyload.i37.i, ptr %.sroa_idx38.i, align 1, !noalias !100
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 %.sroa.4.i.7..sroa.4.i.7..sroa.4.i.7..sroa.4.7..sroa.4.8..8..8..8..sroa.2.0.copyload.i.i, ptr %.sroa.28.0..sroa_idx.i, align 4, !noalias !100
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %.055
  %i.v = load i8, ptr %i.u, align 1, !tbaa !45, !noalias !100
  store i16 -1, ptr %i.o, align 2, !tbaa !27, !noalias !100
  store i16 -1, ptr %i.e, align 2, !tbaa !24, !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.443.i)
  %i.w = trunc nuw i64 %.055 to i8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.443.i, ptr nonnull align 1 %i.i, i64 %.055, i1 false), !noalias !100
  %.sroa.443.i.0..sroa.443.i.0..sroa.443.i.0..sroa.443.0..sroa.443.1..0..0..0..sroa.0.0.copyload.i2540.i = load i56, ptr %.sroa.443.i, align 8, !noalias !100
  %.sroa.443.i.7.i.7.i.7..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.443.i, i64 7
  %.sroa.443.i.7..sroa.443.i.7..sroa.443.i.7..sroa.443.7..sroa.443.8..8..8..8..sroa.2.0.copyload.i27.i = load i32, ptr %.sroa.443.i.7.i.7.i.7..8..8..8..sroa_idx, align 1, !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443.i)
  store i8 %i.w, ptr %i.p, align 2, !noalias !100
  store i56 %.sroa.443.i.0..sroa.443.i.0..sroa.443.i.0..sroa.443.0..sroa.443.1..0..0..0..sroa.0.0.copyload.i2540.i, ptr %i.i, align 1, !noalias !100
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %.sroa.443.i.7..sroa.443.i.7..sroa.443.i.7..sroa.443.7..sroa.443.8..8..8..8..sroa.2.0.copyload.i27.i, ptr %.sroa.4.0..sroa_idx.i, align 2, !tbaa !45, !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15, !noalias !100
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %16, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.e, i8 noundef zeroext %i.v, ptr noundef nonnull align 2 dereferenceable(16) %15), !noalias !100
  %i.x = load ptr, ptr %16, align 8, !tbaa !29, !noalias !100 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15, !noalias !100
  %i.y = icmp eq ptr %i.x, null
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15, !noalias !100
  br i1 %i.y, label %_ZN5arrow6StatusD2Ev.exit82, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr %i.x, ptr %0, align 8, !tbaa !29
  br label %.critedge.thread

_ZN5arrow6StatusD2Ev.exit82:                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.z = load ptr, ptr %1, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0
  %i.ab = load i16, ptr %22, align 8, !tbaa !86   ; 2 uses
  %i.ac = add i16 %i.ab, 1
  store i16 %i.ac, ptr %22, align 8, !tbaa !86
  store i16 %i.ab, ptr %i.aa, align 2, !tbaa !24
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !103
  br label %.critedge.thread

bb.e:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %.154177
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !45
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %.060175
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !45  ; 2 uses
  %.not = icmp eq i8 %i.ae, %i.ag
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 %.154177
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15, !noalias !106
  %i.ai = load <2 x i16>, ptr %i.e, align 2, !tbaa !28, !noalias !106
  store <2 x i16> %i.ai, ptr %13, align 4, !tbaa !28, !noalias !106
  %i.aj = add nuw nsw i64 %.060175, 1             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i84)
  %.not129 = icmp samesign ult i64 %.060175, %i.h
  br i1 %.not129, label %_ZN5arrow6StatusD2Ev.exit.i85, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i64 noundef %i.aj, i64 noundef %i.h) #18, !noalias !106
  unreachable

_ZN5arrow6StatusD2Ev.exit.i85:                    ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.an = sub nuw nsw i64 %i.h, %i.aj             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.aj
  %i.ap = trunc nuw i64 %i.an to i8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.i84, ptr nonnull align 1 %i.ao, i64 %i.an, i1 false), !noalias !106
  %.sroa.4.i84.0..sroa.4.i84.0..sroa.4.i84.0..sroa.4.0..sroa.4.1..0..0..0..sroa.0.0.copyload.i37.i86 = load i56, ptr %.sroa.4.i84, align 8, !noalias !106
  %.sroa.4.i84.7.i84.7.i84.7..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i84, i64 7
  %.sroa.4.i84.7..sroa.4.i84.7..sroa.4.i84.7..sroa.4.7..sroa.4.8..8..8..8..sroa.2.0.copyload.i.i88 = load i32, ptr %.sroa.4.i84.7.i84.7.i84.7..8..8..8..sroa_idx, align 1, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i84)
  store i8 %i.ap, ptr %i.am, align 4, !noalias !106
  %.sroa_idx38.i89 = getelementptr inbounds nuw i8, ptr %13, i64 5
  store i56 %.sroa.4.i84.0..sroa.4.i84.0..sroa.4.i84.0..sroa.4.0..sroa.4.1..0..0..0..sroa.0.0.copyload.i37.i86, ptr %.sroa_idx38.i89, align 1, !noalias !106
  %.sroa.28.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 %.sroa.4.i84.7..sroa.4.i84.7..sroa.4.i84.7..sroa.4.7..sroa.4.8..8..8..8..sroa.2.0.copyload.i.i88, ptr %.sroa.28.0..sroa_idx.i90, align 4, !noalias !106
  store i16 -1, ptr %i.ak, align 2, !tbaa !27, !noalias !106
  store i16 -1, ptr %i.e, align 2, !tbaa !24, !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.443.i83)
  %i.aq = trunc nuw i64 %.060175 to i8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.443.i83, ptr nonnull align 1 %i.i, i64 %.060175, i1 false), !noalias !106
  %.sroa.443.i83.0..sroa.443.i83.0..sroa.443.i83.0..sroa.443.0..sroa.443.1..0..0..0..sroa.0.0.copyload.i2540.i92 = load i56, ptr %.sroa.443.i83, align 8, !noalias !106
  %.sroa.443.i83.7.i83.7.i83.7..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.443.i83, i64 7
  %.sroa.443.i83.7..sroa.443.i83.7..sroa.443.i83.7..sroa.443.7..sroa.443.8..8..8..8..sroa.2.0.copyload.i27.i94 = load i32, ptr %.sroa.443.i83.7.i83.7.i83.7..8..8..8..sroa_idx, align 1, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443.i83)
  store i8 %i.aq, ptr %i.al, align 2, !noalias !106
  store i56 %.sroa.443.i83.0..sroa.443.i83.0..sroa.443.i83.0..sroa.443.0..sroa.443.1..0..0..0..sroa.0.0.copyload.i2540.i92, ptr %i.i, align 1, !noalias !106
  %.sroa.4.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %.sroa.443.i83.7..sroa.443.i83.7..sroa.443.i83.7..sroa.443.7..sroa.443.8..8..8..8..sroa.2.0.copyload.i27.i94, ptr %.sroa.4.0..sroa_idx.i96, align 2, !tbaa !45, !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15, !noalias !106
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.e, i8 noundef zeroext %i.ag, ptr noundef nonnull align 2 dereferenceable(16) %13), !noalias !106
  %i.ar = load ptr, ptr %14, align 8, !tbaa !29, !noalias !106 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15, !noalias !106
  %i.as = icmp eq ptr %i.ar, null
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !106
  br i1 %i.as, label %_ZN5arrow6StatusD2Ev.exit104, label %_ZN5arrow6StatusD2Ev.exit100

_ZN5arrow6StatusD2Ev.exit100:                     ; preds = %_ZN5arrow6StatusD2Ev.exit.i85
  store ptr %i.ar, ptr %0, align 8, !tbaa !29
  br label %.critedge.thread

_ZN5arrow6StatusD2Ev.exit104:                     ; preds = %_ZN5arrow6StatusD2Ev.exit.i85
  %i.at = load ptr, ptr %1, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.0 ; 2 uses
  %i.av = load i8, ptr %i.ah, align 1, !tbaa !45  ; 2 uses
  %i.aw = add nsw i64 %.154177, 1                 ; 4 uses
  %i.ax = icmp ugt i64 %i.aw, %2
  br i1 %i.ax, label %bb.h, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit104
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i64 noundef %i.aw, i64 noundef %2) #18
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit104
  %i.ay = sub nuw i64 %2, %i.aw                   ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 %i.aw ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.ba = icmp ugt i64 %i.ay, 11
  br i1 %i.ba, label %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i, label %_ZN5arrow6StatusD2Ev.exit35.i.i

_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i:              ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 5
  br label %_ZN5arrow6StatusD2Ev.exit.i.i

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %.critedge.i.i, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i
  %.01358.i.i = phi ptr [ %i.au, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i ], [ %i.bh, %.critedge.i.i ]
  %.01457.i.i = phi i8 [ %i.av, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i ], [ %i.bj, %.critedge.i.i ]
  %.sroa.6.056.i.i = phi ptr [ %i.az, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i ], [ %i.bl, %.critedge.i.i ] ; 3 uses
  %.sroa.040.055.i.i = phi i64 [ %i.ay, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i ], [ %i.bk, %.critedge.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15, !noalias !115
  store i16 -1, ptr %9, align 2, !tbaa !24, !noalias !115
  store i16 -1, ptr %i.bb, align 2, !tbaa !27, !noalias !115
  store i8 11, ptr %i.bc, align 2, !tbaa !35, !noalias !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.bd, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6.056.i.i, i64 11, i1 false), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15, !noalias !115
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %.01358.i.i, i8 noundef zeroext %.01457.i.i, ptr noundef nonnull align 2 dereferenceable(16) %9), !noalias !115
  %i.be = load ptr, ptr %10, align 8, !tbaa !29, !noalias !115 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15, !noalias !115
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.critedge.i.i, label %.critedge23.i.i

.critedge.i.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.bg = load ptr, ptr %21, align 8, !tbaa !84, !noalias !115
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.6.056.i.i, i64 11
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !45, !noalias !115 ; 2 uses
  %i.bk = add i64 %.sroa.040.055.i.i, -12         ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.6.056.i.i, i64 12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15, !noalias !115
  %i.bm = icmp ugt i64 %i.bk, 11
  br i1 %i.bm, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %_ZN5arrow6StatusD2Ev.exit35.i.i, !llvm.loop !85

_ZN5arrow6StatusD2Ev.exit35.i.i:                  ; preds = %.critedge.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %.sroa.040.0.lcssa.i.i = phi i64 [ %i.ay, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.bk, %.critedge.i.i ] ; 2 uses
  %.sroa.6.0.lcssa.i.i = phi ptr [ %i.az, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.bl, %.critedge.i.i ]
  %.014.lcssa.i.i = phi i8 [ %i.av, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.bj, %.critedge.i.i ]
  %.013.lcssa.i.i = phi ptr [ %i.au, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.bh, %.critedge.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15, !noalias !115
  %i.bn = load i16, ptr %22, align 8, !tbaa !86, !noalias !115
  store i16 %i.bn, ptr %11, align 2, !tbaa !24, !noalias !115
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i16 -1, ptr %i.bo, align 2, !tbaa !27, !noalias !115
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.bq = trunc nuw nsw i64 %.sroa.040.0.lcssa.i.i to i8
  store i8 %i.bq, ptr %i.bp, align 2, !tbaa !35, !noalias !115
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr align 1 %.sroa.6.0.lcssa.i.i, i64 %.sroa.040.0.lcssa.i.i, i1 false), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15, !noalias !115
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %.013.lcssa.i.i, i8 noundef zeroext %.014.lcssa.i.i, ptr noundef nonnull align 2 dereferenceable(16) %11), !noalias !115
  %i.bs = load ptr, ptr %12, align 8, !tbaa !29, !noalias !115 ; 2 uses
  store ptr %i.bs, ptr %0, align 8, !tbaa !29, !alias.scope !115
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !115
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_ZN5arrow6StatusD2Ev.exit39.i.i, label %.critedge24.i.i

_ZN5arrow6StatusD2Ev.exit39.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit35.i.i
  %i.bu = load i16, ptr %22, align 8, !tbaa !86, !noalias !115
  %i.bv = add i16 %i.bu, 1
  store i16 %i.bv, ptr %22, align 8, !tbaa !86, !noalias !115
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !116
  br label %.critedge24.i.i

.critedge24.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit39.i.i, %_ZN5arrow6StatusD2Ev.exit35.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15, !noalias !115
  br label %.critedge.thread

.critedge23.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  store ptr %i.be, ptr %0, align 8, !alias.scope !115
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15, !noalias !115
  br label %.critedge.thread

bb.i:                                             ; preds = %bb.e
  %i.bw = add nsw i64 %.154177, 1
  %i.bx = add nsw i64 %.156176, -1
  %i.by = add nuw nsw i64 %.060175, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %i.h
  br i1 %exitcond.not, label %.critedge.thread122, label %.lr.ph, !llvm.loop !119

.critedge.thread122:                              ; preds = %bb.i, %bb.b
  %.156.lcssa = phi i64 [ %.055, %bb.b ], [ %i.k, %bb.i ] ; 2 uses
  %.154.lcssa = phi i64 [ %.053, %bb.b ], [ %i.j, %bb.i ] ; 2 uses
  %i.bz = icmp eq i64 %.156.lcssa, 0
  br i1 %i.bz, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.critedge.thread122
  %i.ca = load i16, ptr %i.e, align 2, !tbaa !24
  %i.cb = icmp sgt i16 %i.ca, -1
  br i1 %i.cb, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  br i1 %4, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !120
  br label %.critedge.thread

bb.m:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status8FromArgsIJRA24_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(24) @.str.17)
  br label %.critedge.thread

bb.n:                                             ; preds = %bb.j
  %i.cc = load i16, ptr %22, align 8, !tbaa !86   ; 2 uses
  %i.cd = add i16 %i.cc, 1
  store i16 %i.cd, ptr %22, align 8, !tbaa !86
  store i16 %i.cc, ptr %i.e, align 2, !tbaa !24
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !123
  br label %.critedge.thread

bb.o:                                             ; preds = %.critedge.thread122
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 3 uses
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !27
  %i.cg = icmp eq i16 %i.cf, -1
  br i1 %i.cg, label %bb.p, label %_ZN5arrow6StatusD2Ev.exit110

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  %i.ch = load ptr, ptr %i.c, align 8, !tbaa !63, !noalias !126 ; 2 uses
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !46, !noalias !126
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 1                 ; 2 uses
  %i.cn = icmp ugt i64 %i.cm, 8388607
  br i1 %i.cn, label %_ZN5arrow6StatusD2Ev.exit106, label %_ZN5arrow6StatusD2Ev.exit106.thread

_ZN5arrow6StatusD2Ev.exit106.thread:              ; preds = %bb.p
  %i.co = lshr i64 %i.cm, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15, !noalias !126
  store i16 -1, ptr %i.a, align 2, !tbaa !28, !noalias !126
  call void @_ZNSt6vectorIsSaIsEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPsS1_EEmRKs(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.ch, i64 noundef 256, ptr noundef nonnull align 2 dereferenceable(2) %i.a), !noalias !126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !126
  %i.cp = trunc nuw nsw i64 %i.co to i16
  store i16 %i.cp, ptr %i.ce, align 2, !tbaa !28, !noalias !126
  store ptr null, ptr %0, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br label %_ZN5arrow6StatusD2Ev.exit110

_ZN5arrow6StatusD2Ev.exit106:                     ; preds = %bb.p
  call void @_ZN5arrow6Status8FromArgsIJRA47_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %17, i8 noundef signext 6, ptr noundef nonnull align 1 dereferenceable(47) @.str.16)
  %.pr = load ptr, ptr %17, align 8, !tbaa !29    ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  %i.cq = icmp eq ptr %.pr, null
  br i1 %i.cq, label %_ZN5arrow6StatusD2Ev.exit110, label %.critedge.thread

_ZN5arrow6StatusD2Ev.exit110:                     ; preds = %_ZN5arrow6StatusD2Ev.exit106.thread, %_ZN5arrow6StatusD2Ev.exit106, %bb.o
  %i.cr = add nsw i64 %.154.lcssa, 1              ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 %.154.lcssa
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !45  ; 3 uses
  %26 = add nsw i64 %.156.lcssa, -1
  %i.cu = load i16, ptr %i.ce, align 2, !tbaa !27
  %i.cv = sext i16 %i.cu to i32
  %i.cw = shl nsw i32 %i.cv, 8
  %i.cx = zext i8 %i.ct to i32
  %i.cy = or disjoint i32 %i.cw, %i.cx
  %i.cz = sext i32 %i.cy to i64
  %i.da = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.cz
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !28 ; 2 uses
  %i.dd = sext i16 %i.dc to i64
  %.not127 = icmp eq i16 %i.dc, -1
  br i1 %.not127, label %bb.q, label %bb.b, !llvm.loop !129

bb.q:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit110
  %i.de = icmp ugt i64 %i.cr, %2
  br i1 %i.de, label %bb.r, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit113

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i64 noundef %i.cr, i64 noundef %2) #18
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit113: ; preds = %bb.q
  %i.df = sub nuw i64 %2, %i.cr                   ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 %i.cr ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.dh = icmp ugt i64 %i.df, 11
  br i1 %i.dh, label %_ZN5arrow6StatusD2Ev.exit.i114, label %_ZN5arrow6StatusD2Ev.exit35.i

_ZN5arrow6StatusD2Ev.exit.i114:                   ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit113, %.critedge.i
  %.01358.i = phi ptr [ %i.dl, %.critedge.i ], [ %i.e, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit113 ]
  %.01457.i = phi i8 [ %i.dn, %.critedge.i ], [ %i.ct, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit113 ]
  %.sroa.6.056.i = phi ptr [ %i.dp, %.critedge.i ], [ %i.dg, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit113 ] ; 3 uses
  %.sroa.040.055.i = phi i64 [ %i.do, %.critedge.i ], [ %i.df, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit113 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !130
  store i16 -1, ptr %5, align 2, !tbaa !24, !noalias !130
  store i16 -1, ptr %18, align 2, !tbaa !27, !noalias !130
  store i8 11, ptr %19, align 2, !tbaa !35, !noalias !130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %20, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6.056.i, i64 11, i1 false), !noalias !130
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15, !noalias !130
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %.01358.i, i8 noundef zeroext %.01457.i, ptr noundef nonnull align 2 dereferenceable(16) %5), !noalias !130
  %i.di = load ptr, ptr %6, align 8, !tbaa !29, !noalias !130 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !130
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %.critedge.i, label %.critedge23.i

.critedge.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i114
  %i.dk = load ptr, ptr %21, align 8, !tbaa !84, !noalias !130
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -16 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.6.056.i, i64 11
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !45, !noalias !130 ; 2 uses
  %i.do = add i64 %.sroa.040.055.i, -12           ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.6.056.i, i64 12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !130
  %i.dq = icmp ugt i64 %i.do, 11
  br i1 %i.dq, label %_ZN5arrow6StatusD2Ev.exit.i114, label %_ZN5arrow6StatusD2Ev.exit35.i, !llvm.loop !85

_ZN5arrow6StatusD2Ev.exit35.i:                    ; preds = %.critedge.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit113
  %.sroa.040.0.lcssa.i = phi i64 [ %i.df, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit113 ], [ %i.do, %.critedge.i ] ; 2 uses
  %.sroa.6.0.lcssa.i = phi ptr [ %i.dg, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit113 ], [ %i.dp, %.critedge.i ]
  %.014.lcssa.i = phi i8 [ %i.ct, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit113 ], [ %i.dn, %.critedge.i ]
  %.013.lcssa.i = phi ptr [ %i.e, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit113 ], [ %i.dl, %.critedge.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !130
  %i.dr = load i16, ptr %22, align 8, !tbaa !86, !noalias !130
  store i16 %i.dr, ptr %7, align 2, !tbaa !24, !noalias !130
  store i16 -1, ptr %23, align 2, !tbaa !27, !noalias !130
  %i.ds = trunc nuw nsw i64 %.sroa.040.0.lcssa.i to i8
  store i8 %i.ds, ptr %24, align 2, !tbaa !35, !noalias !130
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %25, ptr align 1 %.sroa.6.0.lcssa.i, i64 %.sroa.040.0.lcssa.i, i1 false), !noalias !130
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15, !noalias !130
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %.013.lcssa.i, i8 noundef zeroext %.014.lcssa.i, ptr noundef nonnull align 2 dereferenceable(16) %7), !noalias !130
  %i.dt = load ptr, ptr %8, align 8, !tbaa !29, !noalias !130 ; 2 uses
  store ptr %i.dt, ptr %0, align 8, !tbaa !29, !alias.scope !130
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15, !noalias !130
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %_ZN5arrow6StatusD2Ev.exit39.i, label %.critedge24.i

_ZN5arrow6StatusD2Ev.exit39.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit35.i
  %i.dv = load i16, ptr %22, align 8, !tbaa !86, !noalias !130
  %i.dw = add i16 %i.dv, 1
  store i16 %i.dw, ptr %22, align 8, !tbaa !86, !noalias !130
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !133
  br label %.critedge24.i

.critedge24.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit39.i, %_ZN5arrow6StatusD2Ev.exit35.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !130
  br label %.critedge.thread

.critedge23.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i114
  store ptr %i.di, ptr %0, align 8, !alias.scope !130
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !130
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZN5arrow6StatusD2Ev.exit106, %.critedge23.i, %.critedge24.i, %.critedge24.i.i, %.critedge23.i.i, %_ZN5arrow6StatusD2Ev.exit82, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit100, %bb.l, %bb.m, %bb.n
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal11TrieBuilder6FinishEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::internal::Trie") align 8 captures(none) initializes((0, 50)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !84
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61
  store ptr %i.d, ptr %i.b, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %1, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !23
  store <2 x ptr> %i.g, ptr %i.e, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62
  store ptr %i.j, ptr %i.h, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load i16, ptr %i.l, align 8, !tbaa !12
  store i16 %i.m, ptr %i.k, align 8, !tbaa !12
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !44
  store i8 0, ptr %i.a, align 8, !tbaa !45
  %i.c = add i64 %4, %2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !44   ; 5 uses
  %i.e = sub i64 9223372036854775807, %i.d
  %i.f = icmp ult i64 %i.e, %2
  br i1 %i.f, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.b
  %i.g = add i64 %i.d, %2                         ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.a                   ; 2 uses
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.j = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.k = load i64, ptr %i.a, align 8
  %i.l = select i1 %i.i, i64 15, i64 %i.k
  %.not.i.i = icmp ugt i64 %i.g, %i.l
  br i1 %.not.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %2, 0
  br i1 %.not8.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d ; 2 uses
  %cond.i.i = icmp eq i64 %2, 1
  br i1 %cond.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load i8, ptr %1, align 1, !tbaa !45
  store i8 %i.n, ptr %i.m, align 1, !tbaa !45
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d, i64 noundef 0, ptr noundef %1, i64 noundef %2)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.h
  store i64 %i.g, ptr %i.b, align 8, !tbaa !44
  %i.o = load ptr, ptr %0, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.g
  store i8 0, ptr %i.p, align 1, !tbaa !45
  %i.q = load i64, ptr %i.b, align 8, !tbaa !44   ; 5 uses
  %i.r = sub i64 9223372036854775807, %i.q
  %i.s = icmp ult i64 %i.r, %4
  br i1 %i.s, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10

.invoke:                                          ; preds = %bb.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #18
          to label %.cont unwind label %bb.p

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10: ; preds = %bb.i
  %i.t = add i64 %i.q, %4                         ; 3 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a                   ; 2 uses
  br i1 %i.v, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10
  %i.w = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.w)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10
  %i.x = load i64, ptr %i.a, align 8
  %i.y = select i1 %i.v, i64 15, i64 %i.x
  %.not.i.i12 = icmp ugt i64 %i.t, %i.y
  br i1 %.not.i.i12, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11
  %.not8.i.i13 = icmp eq i64 %4, 0
  br i1 %.not8.i.i13, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.q ; 2 uses
  %cond.i.i14 = icmp eq i64 %4, 1
  br i1 %cond.i.i14, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = load i8, ptr %3, align 1, !tbaa !45
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !45
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %3, i64 %4, i1 false)
  br label %bb.q

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.q, i64 noundef 0, ptr noundef %3, i64 noundef %4)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %.invoke, %bb.o, %bb.h, %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.a
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !45
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ab

bb.q:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.o
  store i64 %i.t, ptr %i.b, align 8, !tbaa !44
  %i.ag = load ptr, ptr %0, align 8, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.t
  store i8 0, ptr %i.ah, align 1, !tbaa !45
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b                   ; 2 uses
  %i.d = load i64, ptr %i.b, align 8              ; 2 uses
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !136

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #17 ; 3 uses
end_hunk_0
