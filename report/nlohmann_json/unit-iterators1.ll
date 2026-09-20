Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-iterators1?download=true
inline.NumInlined: 4964
inline.NumDeleted: 1032
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN7doctest6detail19stringifyBinaryExprIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEDnEENS_6StringERKT_PKcRKT0_:bb.a
bb.l:                                             ; preds = %bb.k, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.k ], [ %i.c, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN7doctest6detail6ResultC1EbRKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

declare void @_ZN7doctestplERKNS_6StringES2_(ptr dead_on_unwind writable sret(%"class.doctest::String") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare void @_ZN7doctest8toStringEDn(ptr dead_on_unwind writable sret(%"class.doctest::String") align 8, ptr) local_unnamed_addr #0

declare noundef ptr @_ZN7doctest6detail8tlssPushEv() local_unnamed_addr #0

declare void @_ZN7doctest6detail7tlssPopEv(ptr dead_on_unwind writable sret(%"class.doctest::String") align 8) local_unnamed_addr #0

declare void @_ZN7doctest6detail8filldataIPKvE4fillEPSoS3_(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7doctest6detail19stringifyBinaryExprIPKN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEDnEENS_6StringERKT_PKcRKT0_(ptr dead_on_unwind noalias writable sret(%"class.doctest::String") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.doctest::String", align 8   ; 7 uses
  %5 = alloca %"class.doctest::String", align 8   ; 7 uses
  %6 = alloca %"class.doctest::String", align 8   ; 7 uses
  %7 = alloca %"class.doctest::String", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = tail call noundef ptr @_ZN7doctest6detail8tlssPushEv(), !noalias !2843
  %i.b = load ptr, ptr %1, align 8, !tbaa !40, !noalias !2843
  tail call void @_ZN7doctest6detail8filldataIPKvE4fillEPSoS3_(ptr noundef %i.a, ptr noundef %i.b), !noalias !2843
  call void @_ZN7doctest6detail7tlssPopEv(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7doctestplERKNS_6StringES2_(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN7doctest8toStringEDn(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %7, ptr null)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7doctestplERKNS_6StringES2_(ptr dead_on_unwind writable sret(%"class.doctest::String") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #26
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.f:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.f, %bb.i ], [ %i.e, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %i.d, %bb.g ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.k ], [ %i.c, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 22 uses
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 8 uses
  %i.a = icmp eq i8 %1, 1
  %i.b = load ptr, ptr %0, align 8                ; 6 uses
  %i.c = icmp eq ptr %i.b, null                   ; 2 uses
  %or.cond31 = select i1 %i.a, i1 %i.c, i1 false
  br i1 %or.cond31, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %1, 2
  %i.e = and i8 %1, -2
  %i.f = icmp eq i8 %i.e, 2
  %i.g = icmp eq i8 %1, 8
  %i.h = or i1 %i.g, %i.f
  %or.cond65 = select i1 %i.h, i1 %i.c, i1 false
  br i1 %or.cond65, label %bb.aq, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i8 %1, -1
  %or.cond = icmp ult i8 %i.i, 2
  br i1 %or.cond, label %bb.d, label %bb.aj

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %i.d, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !111  ; 3 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !109  ; 4 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp ugt i64 %i.o, 9223372036854775792
  br i1 %i.p, label %.invoke, label %bb.f

.invoke:                                          ; preds = %bb.i, %bb.e, %bb.k
  %i.q = phi ptr [ @.str.142, %bb.k ], [ @.str.142, %bb.e ], [ @.str.143, %bb.i ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.q) #31
          to label %.cont unwind label %.loopexit.split-lp236, !inline_history !2844

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not300 = icmp eq ptr %i.k, %i.l
  br i1 %.not300, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29
          to label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i unwind label %.loopexit.split-lp236, !inline_history !2844 ; 4 uses

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.s, ptr %2, align 8, !tbaa !109
  store ptr %i.s, ptr %i.t, align 8, !tbaa !111
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.o ; 2 uses
  store ptr %i.u, ptr %i.r, align 8, !tbaa !113
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i, %bb.f
  %i.v = phi ptr [ %i.u, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i ], [ null, %bb.f ]
  %i.w = phi ptr [ %i.s, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i ], [ null, %bb.f ] ; 3 uses
  %.not301 = icmp eq ptr %i.k, %i.l
  br i1 %.not301, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit
  %i.x = lshr exact i64 %i.o, 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i, %.lr.ph.i127
  %i.z = phi ptr [ %i.w, %.lr.ph.i127 ], [ %i.au, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 6 uses
  %i.aa = phi ptr [ %i.v, %.lr.ph.i127 ], [ %i.av, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 5 uses
  %i.ab = phi ptr [ %i.w, %.lr.ph.i127 ], [ %i.aw, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 3 uses
  %.0.i12.i128 = phi i64 [ %i.x, %.lr.ph.i127 ], [ %i.ay, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 2 uses
  %.05.i11.i = phi ptr [ %i.l, %.lr.ph.i127 ], [ %i.ax, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %.05.i11.i, i64 16, i1 false), !tbaa.struct !107
  store i8 0, ptr %.05.i11.i, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 8
  store ptr null, ptr %i.ac, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !111
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.z to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775792
  br i1 %i.ah, label %.invoke, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.ai = ashr exact i64 %i.ag, 4                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i.i, %i.ai   ; 2 uses
  %i.aj = icmp ult i64 %4, %i.ai
  %i.ak = tail call i64 @llvm.umin.i64(i64 %4, i64 576460752303423487)
  %i.al = select i1 %i.aj, i64 576460752303423487, i64 %i.ak ; 3 uses
  %.not.i.i152 = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i152)
  %i.am = shl nuw nsw i64 %i.al, 4
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #29
          to label %.noexc156 unwind label %.loopexit235, !inline_history !2845 ; 6 uses

.noexc156:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %.05.i11.i, i64 16, i1 false), !tbaa.struct !107
  store i8 0, ptr %.05.i11.i, align 8, !tbaa !25
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 8
  store ptr null, ptr %i.ap, align 8, !tbaa !26
  %.not.i1728.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i1728.i, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i153

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i153: ; preds = %.noexc156, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i153
  %.0.i30.i = phi ptr [ %i.as, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i153 ], [ %i.an, %.noexc156 ] ; 2 uses
  %.09.i29.i = phi ptr [ %i.ar, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i153 ], [ %i.z, %.noexc156 ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i30.i, ptr noundef nonnull align 8 dereferenceable(16) %.09.i29.i, i64 16, i1 false), !tbaa.struct !107
  store i8 0, ptr %.09.i29.i, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i29.i, i64 8
  store ptr null, ptr %i.aq, align 8, !tbaa !26
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i29.i, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i30.i, i64 16 ; 2 uses
  %.not.i17.i = icmp eq ptr %i.ar, %i.aa
  br i1 %.not.i17.i, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i153, !llvm.loop !1

_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i153, %.noexc156
  %.0.i.lcssa.i = phi ptr [ %i.an, %.noexc156 ], [ %i.as, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i153 ]
  %.0.i1931.i = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i, i64 16 ; 2 uses
  %.not.i16.i = icmp eq ptr %i.z, null
  br i1 %.not.i16.i, label %.noexc129, label %bb.j

bb.j:                                             ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.z) #30, !inline_history !2845
  br label %.noexc129

.noexc129:                                        ; preds = %bb.j, %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i
  store ptr %i.an, ptr %2, align 8, !tbaa !109
  store ptr %.0.i1931.i, ptr %i.y, align 8, !tbaa !111
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.al ; 2 uses
  store ptr %i.at, ptr %i.r, align 8, !tbaa !113
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i: ; preds = %.noexc129, %bb.h
  %i.au = phi ptr [ %i.an, %.noexc129 ], [ %i.z, %bb.h ] ; 2 uses
  %i.av = phi ptr [ %i.at, %.noexc129 ], [ %i.aa, %bb.h ]
  %i.aw = phi ptr [ %.0.i1931.i, %.noexc129 ], [ %i.ad, %bb.h ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 16
  %i.ay = add nsw i64 %.0.i12.i128, -1
  %i.az = icmp sgt i64 %.0.i12.i128, 1
  br i1 %i.az, label %bb.g, label %.loopexit, !llvm.loop !2846

.loopexit235:                                     ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit237 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp236:                            ; preds = %.invoke, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i131
  %lpad.loopexit.split-lp238 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.k:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !67 ; 4 uses
  %i.bc = icmp ugt i64 %i.bb, 576460752303423487
  br i1 %i.bc, label %.invoke, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not299 = icmp eq i64 %i.bb, 0
  br i1 %.not299, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit145, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i131

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i131: ; preds = %bb.l
  %i.be = shl nuw nsw i64 %i.bb, 4
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #29
          to label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i142 unwind label %.loopexit.split-lp236, !inline_history !2844 ; 4 uses

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i142: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i131
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bf, ptr %2, align 8, !tbaa !109
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !111
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bb ; 2 uses
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !113
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit145

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit145: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i142, %bb.l
  %i.bi = phi ptr [ %i.bh, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i142 ], [ null, %bb.l ]
  %i.bj = phi ptr [ %i.bf, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i142 ], [ null, %bb.l ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !38 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.not81 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not81, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit145
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit
  %i.bo = phi ptr [ %i.bj, %.lr.ph ], [ %i.ck, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit ] ; 6 uses
  %i.bp = phi ptr [ %i.bi, %.lr.ph ], [ %i.cl, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  %i.bq = phi ptr [ %i.bj, %.lr.ph ], [ %i.cm, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit ] ; 3 uses
  %.sroa.059.082 = phi ptr [ %i.bl, %.lr.ph ], [ %i.cn, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.059.082, i64 64 ; 4 uses
  %.not.i = icmp eq ptr %i.bq, %i.bp
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !107
  store i8 0, ptr %i.br, align 8, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.059.082, i64 72
  store ptr null, ptr %i.bs, align 8, !tbaa !26
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  store ptr %i.bt, ptr %i.bn, align 8, !tbaa !111
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit

bb.o:                                             ; preds = %bb.m
  %i.bu = ptrtoint ptr %i.bp to i64
  %i.bv = ptrtoint ptr %i.bo to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 3 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775792
  br i1 %i.bx, label %bb.p, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i157

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #31
          to label %.noexc178 unwind label %.loopexit.split-lp241, !inline_history !2847

.noexc178:                                        ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i157: ; preds = %bb.o
  %i.by = ashr exact i64 %i.bw, 4                 ; 3 uses
  %.sroa.speculated.i.i158 = tail call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %5 = add nsw i64 %.sroa.speculated.i.i158, %i.by ; 2 uses
  %i.bz = icmp ult i64 %5, %i.by
  %i.ca = tail call i64 @llvm.umin.i64(i64 %5, i64 576460752303423487)
  %i.cb = select i1 %i.bz, i64 576460752303423487, i64 %i.ca ; 3 uses
  %.not.i.i159 = icmp ne i64 %i.cb, 0
  tail call void @llvm.assume(i1 %.not.i.i159)
  %i.cc = shl nuw nsw i64 %i.cb, 4
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #29
          to label %.noexc179 unwind label %.loopexit240, !inline_history !2847 ; 6 uses

.noexc179:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i157
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !107
  store i8 0, ptr %i.br, align 8, !tbaa !25
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.059.082, i64 72
  store ptr null, ptr %i.cf, align 8, !tbaa !26
  %.not.i1728.i160 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not.i1728.i160, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i174, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i161

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i161: ; preds = %.noexc179, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i161
  %.0.i30.i162 = phi ptr [ %i.ci, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i161 ], [ %i.cd, %.noexc179 ] ; 2 uses
  %.09.i29.i163 = phi ptr [ %i.ch, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i161 ], [ %i.bo, %.noexc179 ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i30.i162, ptr noundef nonnull align 8 dereferenceable(16) %.09.i29.i163, i64 16, i1 false), !tbaa.struct !107
  store i8 0, ptr %.09.i29.i163, align 8, !tbaa !25
  %i.cg = getelementptr inbounds nuw i8, ptr %.09.i29.i163, i64 8
  store ptr null, ptr %i.cg, align 8, !tbaa !26
  %i.ch = getelementptr inbounds nuw i8, ptr %.09.i29.i163, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i30.i162, i64 16 ; 2 uses
  %.not.i17.i164 = icmp eq ptr %i.ch, %i.bp
  br i1 %.not.i17.i164, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i174, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i161, !llvm.loop !1

_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i174: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i161, %.noexc179
  %.0.i.lcssa.i166 = phi ptr [ %i.cd, %.noexc179 ], [ %i.ci, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i161 ]
  %.0.i1931.i167 = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i166, i64 16 ; 2 uses
  %.not.i16.i176 = icmp eq ptr %i.bo, null
  br i1 %.not.i16.i176, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit180, label %bb.q

bb.q:                                             ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i174
  tail call void @_ZdlPv(ptr noundef nonnull %i.bo) #30, !inline_history !2847
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit180

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit180: ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i174, %bb.q
  store ptr %i.cd, ptr %2, align 8, !tbaa !109
  store ptr %.0.i1931.i167, ptr %i.bn, align 8, !tbaa !111
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cb ; 2 uses
  store ptr %i.cj, ptr %i.bd, align 8, !tbaa !113
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit180, %bb.n
  %i.ck = phi ptr [ %i.cd, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit180 ], [ %i.bo, %bb.n ] ; 2 uses
  %i.cl = phi ptr [ %i.cj, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit180 ], [ %i.bp, %bb.n ]
  %i.cm = phi ptr [ %.0.i1931.i167, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit180 ], [ %i.bt, %bb.n ] ; 2 uses
  %i.cn = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.059.082) #27 ; 2 uses
  %.not = icmp eq ptr %i.cn, %i.bm
  br i1 %.not, label %.loopexit, label %bb.m

.loopexit240:                                     ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i157
  %lpad.loopexit242 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp241:                            ; preds = %bb.p
  %lpad.loopexit.split-lp243 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit:                                        ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i
  %i.co = phi ptr [ %i.aw, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ], [ %i.cm, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %i.cp = phi ptr [ %i.au, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ], [ %i.ck, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.cr = icmp eq ptr %i.cp, %i.co
  br i1 %i.cr, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, label %.lr.ph92

.lr.ph92:                                         ; preds = %.loopexit
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph92, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev.exit
  %i.cu = phi ptr [ %i.co, %.lr.ph92 ], [ %i.gk, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i64 16, i1 false), !tbaa.struct !107
  store i8 0, ptr %i.cv, align 8, !tbaa !25
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 -8
  store ptr null, ptr %i.cw, align 8, !tbaa !26
  %i.cx = load ptr, ptr %i.cq, align 8, !tbaa !111 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -16 ; 7 uses
  store ptr %i.cy, ptr %i.cq, align 8, !tbaa !111
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 -8
  %i.da = load i8, ptr %i.cy, align 8, !tbaa !57
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, i8 noundef zeroext %i.da)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.s, !inline_history !2848

bb.s:                                             ; preds = %bb.r
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  call void @__clang_call_terminate(ptr %i.dc) #28, !inline_history !2848
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.r
  %i.dd = load i8, ptr %3, align 8, !tbaa !25
  switch i8 %i.dd, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit [
    i8 2, label %bb.t
    i8 1, label %bb.z
  ]

bb.t:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %i.de = load ptr, ptr %i.cs, align 8, !tbaa !26 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !40 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !40 ; 2 uses
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = ashr exact i64 %i.dk, 4                 ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, 0
  br i1 %i.dm, label %.lr.ph89, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit

.lr.ph89:                                         ; preds = %bb.t, %.noexc46
  %i.dn = phi ptr [ %i.ej, %.noexc46 ], [ %i.cy, %bb.t ] ; 5 uses
  %.0.i.i4587 = phi i64 [ %i.el, %.noexc46 ], [ %i.dl, %bb.t ] ; 2 uses
  %.05.i.i86 = phi ptr [ %i.ek, %.noexc46 ], [ %i.df, %bb.t ] ; 7 uses
  %i.do = load ptr, ptr %i.ct, align 8, !tbaa !113
  %.not.i48 = icmp eq ptr %i.dn, %i.do
  br i1 %.not.i48, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i86, i64 16, i1 false), !tbaa.struct !107
  store i8 0, ptr %.05.i.i86, align 8, !tbaa !25
  %i.dp = getelementptr inbounds nuw i8, ptr %.05.i.i86, i64 8
  store ptr null, ptr %i.dp, align 8, !tbaa !26
  %i.dq = load ptr, ptr %i.cq, align 8, !tbaa !111
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  store ptr %i.dr, ptr %i.cq, align 8, !tbaa !111
  br label %.noexc46

bb.v:                                             ; preds = %.lr.ph89
  %i.ds = load ptr, ptr %2, align 8, !tbaa !109   ; 5 uses
  %i.dt = ptrtoint ptr %i.dn to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du                    ; 3 uses
  %i.dw = icmp eq i64 %i.dv, 9223372036854775792
  br i1 %i.dw, label %bb.w, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i181

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #31
          to label %.noexc202 unwind label %.loopexit.split-lp, !inline_history !2849

.noexc202:                                        ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i181: ; preds = %bb.v
  %i.dx = ashr exact i64 %i.dv, 4                 ; 3 uses
  %.sroa.speculated.i.i182 = call i64 @llvm.umax.i64(i64 %i.dx, i64 1)
  %6 = add nsw i64 %.sroa.speculated.i.i182, %i.dx ; 2 uses
  %i.dy = icmp ult i64 %6, %i.dx
  %i.dz = call i64 @llvm.umin.i64(i64 %6, i64 576460752303423487)
  %i.ea = select i1 %i.dy, i64 576460752303423487, i64 %i.dz ; 3 uses
  %.not.i.i183 = icmp ne i64 %i.ea, 0
  call void @llvm.assume(i1 %.not.i.i183)
  %i.eb = shl nuw nsw i64 %i.ea, 4
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #29
          to label %.noexc203 unwind label %.loopexit229, !inline_history !2849 ; 5 uses

.noexc203:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i181
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.dv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i86, i64 16, i1 false), !tbaa.struct !107
  store i8 0, ptr %.05.i.i86, align 8, !tbaa !25
  %i.ee = getelementptr inbounds nuw i8, ptr %.05.i.i86, i64 8
  store ptr null, ptr %i.ee, align 8, !tbaa !26
  %.not.i1728.i184 = icmp eq ptr %i.ds, %i.dn
  br i1 %.not.i1728.i184, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i198, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i185

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i185: ; preds = %.noexc203, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i185
  %.0.i30.i186 = phi ptr [ %i.eh, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i185 ], [ %i.ec, %.noexc203 ] ; 2 uses
  %.09.i29.i187 = phi ptr [ %i.eg, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i185 ], [ %i.ds, %.noexc203 ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i30.i186, ptr noundef nonnull align 8 dereferenceable(16) %.09.i29.i187, i64 16, i1 false), !tbaa.struct !107
  store i8 0, ptr %.09.i29.i187, align 8, !tbaa !25
  %i.ef = getelementptr inbounds nuw i8, ptr %.09.i29.i187, i64 8
  store ptr null, ptr %i.ef, align 8, !tbaa !26
  %i.eg = getelementptr inbounds nuw i8, ptr %.09.i29.i187, i64 16 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i30.i186, i64 16 ; 2 uses
  %.not.i17.i188 = icmp eq ptr %i.eg, %i.dn
  br i1 %.not.i17.i188, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i198, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i185, !llvm.loop !1

_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i198: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i185, %.noexc203
  %.0.i.lcssa.i190 = phi ptr [ %i.ec, %.noexc203 ], [ %i.eh, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i185 ]
  %.0.i1931.i191 = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i190, i64 16 ; 2 uses
  %.not.i16.i200 = icmp eq ptr %i.ds, null
  br i1 %.not.i16.i200, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit204, label %bb.x

bb.x:                                             ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i198
  call void @_ZdlPv(ptr noundef nonnull %i.ds) #30, !inline_history !2849
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit204

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit204: ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i198, %bb.x
  store ptr %i.ec, ptr %2, align 8, !tbaa !109
  store ptr %.0.i1931.i191, ptr %i.cq, align 8, !tbaa !111
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %i.ea
  store ptr %i.ei, ptr %i.ct, align 8, !tbaa !113
  br label %.noexc46

.noexc46:                                         ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit204, %bb.u
  %i.ej = phi ptr [ %.0.i1931.i191, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit204 ], [ %i.dr, %bb.u ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.05.i.i86, i64 16
  %i.el = add nsw i64 %.0.i.i4587, -1
  %i.em = icmp sgt i64 %.0.i.i4587, 1
  br i1 %i.em, label %.lr.ph89, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit, !llvm.loop !2846

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit: ; preds = %.noexc46
  %.pre99 = load ptr, ptr %i.cs, align 8, !tbaa !26 ; 3 uses
  %.pre100 = load ptr, ptr %.pre99, align 8, !tbaa !109
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre99, i64 8
  %.pre101 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !111
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit, %bb.t
  %i.en = phi ptr [ %i.ej, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit ], [ %i.cy, %bb.t ] ; 2 uses
  %i.eo = phi ptr [ %.pre101, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit ], [ %i.dh, %bb.t ] ; 2 uses
  %i.ep = phi ptr [ %.pre100, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit ], [ %i.df, %bb.t ] ; 3 uses
  %i.eq = phi ptr [ %.pre99, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit ], [ %i.de, %bb.t ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %.not.i40 = icmp eq ptr %i.eo, %i.ep
  br i1 %.not.i40, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit, label %.preheader67

.preheader67:                                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i
  %.0.i90 = phi ptr [ %i.ew, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i ], [ %i.ep, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0.i90, i64 8
  %i.et = load i8, ptr %.0.i90, align 8, !tbaa !57
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.es, i8 noundef zeroext %i.et)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i unwind label %bb.y, !inline_history !2850

bb.y:                                             ; preds = %.preheader67
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  %i.ev = extractvalue { ptr, i32 } %i.eu, 0
  call void @__clang_call_terminate(ptr %i.ev) #28, !inline_history !2850
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i: ; preds = %.preheader67
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.i90, i64 16 ; 2 uses
  %.not.i47 = icmp eq ptr %i.ew, %i.eo
  br i1 %.not.i47, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_.exit.i, label %.preheader67, !llvm.loop !0

_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_.exit.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i
  store ptr %i.ep, ptr %i.er, align 8, !tbaa !111
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit

.loopexit229:                                     ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i181
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.z:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %i.ex = load ptr, ptr %i.cs, align 8, !tbaa !26 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !38 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %.not6683 = icmp eq ptr %i.ez, %i.fa
  br i1 %.not6683, label %._crit_edge, label %.lr.ph85

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit38
  %.pre = load ptr, ptr %i.cs, align 8, !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.z
  %i.fb = phi ptr [ %i.gi, %._crit_edge.loopexit ], [ %i.cy, %bb.z ]
  %i.fc = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ex, %bb.z ] ; 6 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !65
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %i.fc, ptr noundef %i.fe)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE5clearEv.exit unwind label %bb.aa, !inline_history !2851

bb.aa:                                            ; preds = %._crit_edge
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  call void @__clang_call_terminate(ptr %i.fg) #28, !inline_history !2851
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE5clearEv.exit: ; preds = %._crit_edge
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 2 uses
  store ptr null, ptr %i.fd, align 8, !tbaa !65
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !38
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  store ptr %i.fh, ptr %i.fj, align 8, !tbaa !66
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  store i64 0, ptr %i.fk, align 8, !tbaa !67
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit

.lr.ph85:                                         ; preds = %bb.z, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit38
  %i.fl = phi ptr [ %i.gi, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit38 ], [ %i.cy, %bb.z ] ; 5 uses
  %.sroa.055.084 = phi ptr [ %i.gj, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit38 ], [ %i.ez, %bb.z ] ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.055.084, i64 64 ; 4 uses
  %i.fn = load ptr, ptr %i.ct, align 8, !tbaa !113
  %.not.i41 = icmp eq ptr %i.fl, %i.fn
  br i1 %.not.i41, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, ptr noundef nonnull align 8 dereferenceable(16) %i.fm, i64 16, i1 false), !tbaa.struct !107
  store i8 0, ptr %i.fm, align 8, !tbaa !25
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.055.084, i64 72
  store ptr null, ptr %i.fo, align 8, !tbaa !26
  %i.fp = load ptr, ptr %i.cq, align 8, !tbaa !111
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  store ptr %i.fq, ptr %i.cq, align 8, !tbaa !111
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit38

bb.ac:                                            ; preds = %.lr.ph85
  %i.fr = load ptr, ptr %2, align 8, !tbaa !109   ; 5 uses
  %i.fs = ptrtoint ptr %i.fl to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft                    ; 3 uses
  %i.fv = icmp eq i64 %i.fu, 9223372036854775792
  br i1 %i.fv, label %bb.ad, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i205

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #31
          to label %.noexc226 unwind label %.loopexit.split-lp231, !inline_history !2847

.noexc226:                                        ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i205: ; preds = %bb.ac
  %i.fw = ashr exact i64 %i.fu, 4                 ; 3 uses
  %.sroa.speculated.i.i206 = call i64 @llvm.umax.i64(i64 %i.fw, i64 1)
  %7 = add nsw i64 %.sroa.speculated.i.i206, %i.fw ; 2 uses
  %i.fx = icmp ult i64 %7, %i.fw
  %i.fy = call i64 @llvm.umin.i64(i64 %7, i64 576460752303423487)
  %i.fz = select i1 %i.fx, i64 576460752303423487, i64 %i.fy ; 3 uses
  %.not.i.i207 = icmp ne i64 %i.fz, 0
  call void @llvm.assume(i1 %.not.i.i207)
  %i.ga = shl nuw nsw i64 %i.fz, 4
  %i.gb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #29
          to label %.noexc227 unwind label %.loopexit230, !inline_history !2847 ; 5 uses

.noexc227:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i205
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.fu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gc, ptr noundef nonnull align 8 dereferenceable(16) %i.fm, i64 16, i1 false), !tbaa.struct !107
  store i8 0, ptr %i.fm, align 8, !tbaa !25
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.055.084, i64 72
  store ptr null, ptr %i.gd, align 8, !tbaa !26
  %.not.i1728.i208 = icmp eq ptr %i.fr, %i.fl
  br i1 %.not.i1728.i208, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i222, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i209

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i209: ; preds = %.noexc227, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i209
  %.0.i30.i210 = phi ptr [ %i.gg, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i209 ], [ %i.gb, %.noexc227 ] ; 2 uses
  %.09.i29.i211 = phi ptr [ %i.gf, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i209 ], [ %i.fr, %.noexc227 ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i30.i210, ptr noundef nonnull align 8 dereferenceable(16) %.09.i29.i211, i64 16, i1 false), !tbaa.struct !107
  store i8 0, ptr %.09.i29.i211, align 8, !tbaa !25
  %i.ge = getelementptr inbounds nuw i8, ptr %.09.i29.i211, i64 8
  store ptr null, ptr %i.ge, align 8, !tbaa !26
  %i.gf = getelementptr inbounds nuw i8, ptr %.09.i29.i211, i64 16 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.i30.i210, i64 16 ; 2 uses
  %.not.i17.i212 = icmp eq ptr %i.gf, %i.fl
  br i1 %.not.i17.i212, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i222, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i209, !llvm.loop !1

_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i222: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i209, %.noexc227
  %.0.i.lcssa.i214 = phi ptr [ %i.gb, %.noexc227 ], [ %i.gg, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i209 ]
  %.0.i1931.i215 = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i214, i64 16 ; 2 uses
  %.not.i16.i224 = icmp eq ptr %i.fr, null
  br i1 %.not.i16.i224, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit228, label %bb.ae

bb.ae:                                            ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i222
  call void @_ZdlPv(ptr noundef nonnull %i.fr) #30, !inline_history !2847
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit228

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit228: ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i222, %bb.ae
  store ptr %i.gb, ptr %2, align 8, !tbaa !109
  store ptr %.0.i1931.i215, ptr %i.cq, align 8, !tbaa !111
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %i.fz
  store ptr %i.gh, ptr %i.ct, align 8, !tbaa !113
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit38

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit38: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit228, %bb.ab
  %i.gi = phi ptr [ %.0.i1931.i215, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit228 ], [ %i.fq, %bb.ab ] ; 2 uses
  %i.gj = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.055.084) #27 ; 2 uses
  %.not66 = icmp eq ptr %i.gj, %i.fa
  br i1 %.not66, label %._crit_edge.loopexit, label %.lr.ph85

.loopexit230:                                     ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i205
  %lpad.loopexit232 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp231:                            ; preds = %bb.ad
  %lpad.loopexit.split-lp233 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_.exit.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE5clearEv.exit
  %i.gk = phi ptr [ %i.cy, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit ], [ %i.en, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_.exit.i ], [ %i.en, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit ], [ %i.fb, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE5clearEv.exit ] ; 2 uses
  %i.gl = load i8, ptr %3, align 8, !tbaa !57
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, i8 noundef zeroext %i.gl)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev.exit unwind label %bb.af, !inline_history !2855

bb.af:                                            ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #28, !inline_history !2855
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev.exit: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.go = load ptr, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.gk
  br i1 %i.gp, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, label %bb.r, !llvm.loop !2852

bb.ag:                                            ; preds = %.loopexit230, %.loopexit.split-lp231, %.loopexit229, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit229 ], [ %lpad.loopexit232, %.loopexit230 ], [ %lpad.loopexit.split-lp233, %.loopexit.split-lp231 ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26, !inline_history !2856
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.ai

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev.exit, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit145, %.loopexit
  %i.gq = phi ptr [ %i.cp, %.loopexit ], [ %i.bj, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit145 ], [ %i.w, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit ], [ %i.go, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev.exit ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.gq) #30
  br label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.aj

bb.ai:                                            ; preds = %.loopexit240, %.loopexit.split-lp241, %.loopexit235, %.loopexit.split-lp236, %bb.ag
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ag ], [ %lpad.loopexit.split-lp238, %.loopexit.split-lp236 ], [ %lpad.loopexit237, %.loopexit235 ], [ %lpad.loopexit242, %.loopexit240 ], [ %lpad.loopexit.split-lp243, %.loopexit.split-lp241 ]
  call void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn.pn

bb.aj:                                            ; preds = %bb.c, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit
  switch i8 %1, label %bb.aq [
    i8 1, label %bb.ak
    i8 2, label %bb.am
    i8 3, label %bb.ao
    i8 8, label %bb.ap
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.gr = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !65
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %i.gr, ptr noundef %i.gt)
          to label %.sink.split.sink.split unwind label %bb.al, !inline_history !2853

bb.al:                                            ; preds = %bb.ak
  %i.gu = landingpad { ptr, i32 }
          catch ptr null
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  call void @__clang_call_terminate(ptr %i.gv) #28, !inline_history !2853
  unreachable

bb.am:                                            ; preds = %bb.aj
  %i.gw = load ptr, ptr %0, align 8, !tbaa !26    ; 3 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !109 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !111 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.gx, %i.gz
  br i1 %.not.i1.i, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i, label %.lr.ph.i146

.lr.ph.i146:                                      ; preds = %bb.am, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i147
  %.0.i2.i = phi ptr [ %i.he, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i147 ], [ %i.gx, %bb.am ] ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 8
  %i.hb = load i8, ptr %.0.i2.i, align 8, !tbaa !57
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ha, i8 noundef zeroext %i.hb)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i147 unwind label %bb.an, !inline_history !2854

bb.an:                                            ; preds = %.lr.ph.i146
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #28, !inline_history !2854
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i147: ; preds = %.lr.ph.i146
  %i.he = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 16 ; 2 uses
  %.not.i.i148 = icmp eq ptr %i.he, %i.gz
  br i1 %.not.i.i148, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit.i, label %.lr.ph.i146, !llvm.loop !0

_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i147
  %.pre.i149 = load ptr, ptr %i.gw, align 8, !tbaa !109
  br label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i

_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit.i, %bb.am
  %i.hf = phi ptr [ %.pre.i149, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit.i ], [ %i.gx, %bb.am ] ; 2 uses
  %.not.i.i.i150 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i150, label %.sink.split.sink.split, label %.sink.split.sink.split.sink.split

bb.ao:                                            ; preds = %bb.aj
  %i.hg = load ptr, ptr %0, align 8, !tbaa !26    ; 3 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !76 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %.sink.split, label %.sink.split.sink.split.sink.split

bb.ap:                                            ; preds = %bb.aj
  %i.hk = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !80 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i, label %.sink.split, label %.sink.split.sink.split.sink.split

.sink.split.sink.split.sink.split:                ; preds = %bb.ap, %bb.ao, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i
  %.sink325 = phi ptr [ %i.hh, %bb.ao ], [ %i.hf, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i ], [ %i.hl, %bb.ap ]
  call void @_ZdlPv(ptr noundef %.sink325) #30
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %.sink.split.sink.split.sink.split, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i, %bb.ak
  %.pre102 = load ptr, ptr %0, align 8, !tbaa !26
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.ao, %bb.ap
  %.sink = phi ptr [ %i.hk, %bb.ap ], [ %i.hg, %bb.ao ], [ %.pre102, %.sink.split.sink.split ]
  call void @_ZdlPv(ptr noundef %.sink) #30
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split, %bb.b, %bb.a, %bb.aj
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !109    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111  ; 2 uses
  %.not.i1 = icmp eq ptr %i.a, %i.c
  br i1 %.not.i1, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit, label %.lr.ph

end_hunk_0
