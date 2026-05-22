inline.NumInlined: 938
inline.NumDeleted: 508
begin_hunk_0_@_ZSt8_DestroyIN8facebook5velox4exec13TypeSignatureEEvPT_:bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_(ptr noundef %0) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !82, !range !81, !noundef !74
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !82
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !32
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #21, !inline_history !84
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !85   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !88   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i12.i, label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %.noexc.i
  %.0.i.i3.i = phi ptr [ %i.n, %.noexc.i ], [ %i.k, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 2 uses
  invoke void @_ZSt8_DestroyIN8facebook5velox4exec13TypeSignatureEEvPT_(ptr noundef %.0.i.i3.i)
          to label %.noexc.i unwind label %bb.c, !inline_history !89

.noexc.i:                                         ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 104 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.n, %i.m
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !90

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #22, !inline_history !91
  unreachable

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i: ; preds = %.noexc.i
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !85
  br label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.q = phi ptr [ %.pre.i, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i ], [ %i.k, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !92
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #21, !inline_history !84
  br label %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i

_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i
  %i.w = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !32
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #21, !inline_history !84
  br label %_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit

_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit:  ; preds = %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(233) ptr @_ZN8facebook5velox4exec24FunctionSignatureBuilder11addArgumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::exec::TypeSignature", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !116, !range !81, !noundef !74
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !43

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec24FunctionSignatureBuilder11addArgumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbbE18veloxCheckFailArgs, ptr noundef nonnull @.str.14) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN8facebook5velox4exec18parseTypeSignatureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::exec::TypeSignature") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8facebook5velox4exec13TypeSignatureC2EOS2_(ptr noundef nonnull align 8 dereferenceable(97) %i.f, ptr noundef nonnull align 8 dereferenceable(97) %4)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.d
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !88
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store ptr %i.j, ptr %i.e, align 8, !tbaa !88
  br label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(97) %4)
          to label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit unwind label %bb.r

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.e, %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !82, !range !81, !noundef !74
  %i.m = trunc nuw i8 %i.l to i1
  store i8 0, ptr %i.k, align 8, !tbaa !82
  br i1 %i.m, label %bb.f, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.f:                                             ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.r = load i64, ptr %i.p, align 8, !tbaa !32
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #21, !inline_history !84
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !85   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !88   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i.i12.i, label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %.noexc.i
  %.0.i.i3.i = phi ptr [ %i.x, %.noexc.i ], [ %i.u, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 2 uses
  invoke void @_ZSt8_DestroyIN8facebook5velox4exec13TypeSignatureEEvPT_(ptr noundef %.0.i.i3.i)
          to label %.noexc.i unwind label %bb.g, !inline_history !89

.noexc.i:                                         ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 104 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.x, %i.w
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !90

bb.g:                                             ; preds = %.lr.ph.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #22, !inline_history !91
  unreachable

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i: ; preds = %.noexc.i
  %.pre.i7 = load ptr, ptr %i.t, align 8, !tbaa !85
  br label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.aa = phi ptr [ %.pre.i7, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i ], [ %i.u, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !92
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #21, !inline_history !84
  br label %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i

_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i
  %i.ag = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !32
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #21, !inline_history !84
  br label %_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit

_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit:  ; preds = %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !94 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !22
  %.not.i8 = icmp eq ptr %i.am, %i.ao
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i8, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit
  %i.ap = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.ap, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !126
  %i.aq = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.aq, label %bb.j, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !126
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ar, ptr %i.al, align 8, !tbaa !94
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.j, %bb.i
  %i.as = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.at = shl nuw i64 1, %i.as                    ; 2 uses
  br i1 %2, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.au = load i64, ptr %i.am, align 8, !tbaa !127
  %i.av = or i64 %i.au, %i.at
  br label %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i

bb.l:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.aw = xor i64 %i.at, -1
  %i.ax = load i64, ptr %i.am, align 8, !tbaa !127
  %i.ay = and i64 %i.ax, %i.aw
  br label %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i

bb.m:                                             ; preds = %_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr %i.am, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %2)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt14_Bit_referenceaSEb.exit.sink.split.i:      ; preds = %bb.l, %bb.k
  %.sink.i = phi i64 [ %i.ay, %bb.l ], [ %i.av, %bb.k ]
  store i64 %.sink.i, ptr %i.am, align 8, !tbaa !127
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.m, %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i
  br i1 %3, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.ba = load i8, ptr %i.a, align 8, !tbaa !116, !range !81, !noundef !74
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.o, label %bb.p, !prof !43

bb.o:                                             ; preds = %bb.n
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec24FunctionSignatureBuilder13variableArityEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.18) #23
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !107
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !107
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %bb.q, label %_ZN8facebook5velox4exec24FunctionSignatureBuilder13variableArityEv.exit, !prof !43

bb.q:                                             ; preds = %bb.p
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec24FunctionSignatureBuilder13variableArityEvE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.20) #23
  unreachable

_ZN8facebook5velox4exec24FunctionSignatureBuilder13variableArityEv.exit: ; preds = %bb.p
  store i8 1, ptr %i.a, align 8, !tbaa !116
  br label %bb.s

bb.r:                                             ; preds = %bb.e, %bb.d
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox4exec13TypeSignatureD2Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.bf

bb.s:                                             ; preds = %_ZN8facebook5velox4exec24FunctionSignatureBuilder13variableArityEv.exit, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  ret ptr %0
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(97) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !85     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #23
  unreachable

_ZNKSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 104                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 88686269585142075)
  %i.l = select i1 %i.j, i64 88686269585142075, i64 %i.k ; 4 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.l, 104
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20
  br label %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_M_check_lenEmPKc.exit ] ; 12 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 2 uses
  invoke void @_ZN8facebook5velox4exec13TypeSignatureC2EOS2_(ptr noundef nonnull align 8 dereferenceable(97) %i.r, ptr noundef nonnull align 8 dereferenceable(97) %2)
          to label %_ZNSt16allocator_traitsISaIN8facebook5velox4exec13TypeSignatureEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_.exit unwind label %bb.m

_ZNSt16allocator_traitsISaIN8facebook5velox4exec13TypeSignatureEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_.exit: ; preds = %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE11_M_allocateEm.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN8facebook5velox4exec13TypeSignatureEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_.exit, %_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.t, %_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.q, %_ZNSt16allocator_traitsISaIN8facebook5velox4exec13TypeSignatureEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_.exit ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.s, %_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN8facebook5velox4exec13TypeSignatureEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_.exit ] ; 2 uses
  invoke void @_ZN8facebook5velox4exec13TypeSignatureC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(97) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(97) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.d, !inline_history !128

_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 104 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !129

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #19 ; 0 uses
  %.not.i2.i.i.i.i.i.i = icmp eq ptr %i.q, %.016.i.i.i.i.i
  br i1 %.not.i2.i.i.i.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.noexc.i.i.i.i.i
  %.0.i3.i.i.i.i.i.i = phi ptr [ %i.x, %.noexc.i.i.i.i.i ], [ %i.q, %bb.d ] ; 2 uses
  invoke void @_ZSt8_DestroyIN8facebook5velox4exec13TypeSignatureEEvPT_(ptr noundef %.0.i3.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !inline_history !112

.noexc.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !90

_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i, %bb.d
  invoke void @__cxa_rethrow() #23
          to label %bb.g unwind label %.loopexit.split-lp.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.e

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %lpad.phi.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ]
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.thread unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #22
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN8facebook5velox4exec13TypeSignatureEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.q, %_ZNSt16allocator_traitsISaIN8facebook5velox4exec13TypeSignatureEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_.exit ], [ %i.t, %_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 104 ; 3 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit49, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i43
  %.016.i.i.i.i.i30.idx = phi i64 [ %.016.i.i.i.i.i30.add, %_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i43 ], [ 104, %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.aa, %_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i43 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 2 uses
  %.016.i.i.i.i.i30.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.idx ; 2 uses
  invoke void @_ZN8facebook5velox4exec13TypeSignatureC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(97) %.016.i.i.i.i.i30.ptr, ptr noundef nonnull align 8 dereferenceable(97) %.01215.i.i.i.i.i31)
          to label %_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i43 unwind label %bb.h, !inline_history !128

_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i43: ; preds = %.lr.ph.i.i.i.i.i29
  %i.aa = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 104 ; 2 uses
  %.016.i.i.i.i.i30.add = add nuw nsw i64 %.016.i.i.i.i.i30.idx, 104 ; 2 uses
  %.not.i.i.i.i.i44 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i.i.i44, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit49.loopexit, label %.lr.ph.i.i.i.i.i29, !llvm.loop !129

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #19 ; 0 uses
  %.not.i2.i.i.i.i.i.i32 = icmp eq i64 %.016.i.i.i.i.i30.idx, 104
  br i1 %.not.i2.i.i.i.i.i.i32, label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i.i.i.i.i40, label %.lr.ph.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i33:                             ; preds = %bb.h, %.noexc.i.i.i.i.i38
  %.0.i3.i.i.i.i.i.i34 = phi ptr [ %i.ae, %.noexc.i.i.i.i.i38 ], [ %.ptr, %bb.h ] ; 2 uses
  invoke void @_ZSt8_DestroyIN8facebook5velox4exec13TypeSignatureEEvPT_(ptr noundef nonnull %.0.i3.i.i.i.i.i.i34)
          to label %.noexc.i.i.i.i.i38 unwind label %.loopexit.i.i.i.i.i35, !inline_history !112

.noexc.i.i.i.i.i38:                               ; preds = %.lr.ph.i.i.i.i.i.i33
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i.i.i.i34, i64 104 ; 2 uses
  %.not.i.i.i.i.i.i.i39 = icmp eq ptr %i.ae, %.016.i.i.i.i.i30.ptr
  br i1 %.not.i.i.i.i.i.i.i39, label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i.i.i.i.i40, label %.lr.ph.i.i.i.i.i.i33, !llvm.loop !90

_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i.i.i.i.i40: ; preds = %.noexc.i.i.i.i.i38, %bb.h
  invoke void @__cxa_rethrow() #23
          to label %bb.k unwind label %.loopexit.split-lp.i.i.i.i.i41

.loopexit.i.i.i.i.i35:                            ; preds = %.lr.ph.i.i.i.i.i.i33
  %lpad.loopexit.i.i.i.i.i36 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.loopexit.split-lp.i.i.i.i.i41:                   ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i.i.i.i.i40
  %lpad.loopexit.split-lp.i.i.i.i.i42 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i41, %.loopexit.i.i.i.i.i35
  %lpad.phi.i.i.i.i.i37 = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i36, %.loopexit.i.i.i.i.i35 ], [ %lpad.loopexit.split-lp.i.i.i.i.i42, %.loopexit.split-lp.i.i.i.i.i41 ]
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
