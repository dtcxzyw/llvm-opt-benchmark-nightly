Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/DecimalFunctions?download=true
inline.NumInlined: 45067
inline.NumDeleted: 11733
loop-unroll.NumCompletelyUnrolled: 676
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 694
begin_hunk_0_@_ZSt8_DestroyIN8facebook5velox4exec13TypeSignatureEEvPT_:bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_(ptr noundef %0) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !57, !range !63, !noundef !64
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !57
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !47
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #37, !inline_history !176
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !179  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !180  ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i12.i, label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %.noexc.i
  %.0.i.i3.i = phi ptr [ %i.n, %.noexc.i ], [ %i.k, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 2 uses
  invoke void @_ZSt8_DestroyIN8facebook5velox4exec13TypeSignatureEEvPT_(ptr noundef %.0.i.i3.i)
          to label %.noexc.i unwind label %bb.c, !inline_history !14

.noexc.i:                                         ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 104 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.n, %i.m
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !15

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #36, !inline_history !181
  unreachable

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i: ; preds = %.noexc.i
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !179
  br label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.q = phi ptr [ %.pre.i, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i ], [ %i.k, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !182
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #37, !inline_history !176
  br label %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i

_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i
  %i.w = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !47
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #37, !inline_history !176
  br label %_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit

_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit:  ; preds = %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(233) ptr @_ZN8facebook5velox4exec24FunctionSignatureBuilder11addArgumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::exec::TypeSignature", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !2524, !range !63, !noundef !64
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !65

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec24FunctionSignatureBuilder11addArgumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbbE18veloxCheckFailArgs, ptr noundef nonnull @.str.44) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @_ZN8facebook5velox4exec18parseTypeSignatureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::exec::TypeSignature") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !180  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !182
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8facebook5velox4exec13TypeSignatureC2EOS2_(ptr noundef nonnull align 8 dereferenceable(97) %i.f, ptr noundef nonnull align 8 dereferenceable(97) %4)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.d
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !180
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store ptr %i.j, ptr %i.e, align 8, !tbaa !180
  br label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(97) %4)
          to label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit unwind label %bb.r

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.e, %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !57, !range !63, !noundef !64
  %i.m = trunc nuw i8 %i.l to i1
  store i8 0, ptr %i.k, align 8, !tbaa !57
  br i1 %i.m, label %bb.f, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.f:                                             ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.r = load i64, ptr %i.p, align 8, !tbaa !47
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #37, !inline_history !176
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !179  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !180  ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i.i12.i, label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %.noexc.i
  %.0.i.i3.i = phi ptr [ %i.x, %.noexc.i ], [ %i.u, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 2 uses
  invoke void @_ZSt8_DestroyIN8facebook5velox4exec13TypeSignatureEEvPT_(ptr noundef %.0.i.i3.i)
          to label %.noexc.i unwind label %bb.g, !inline_history !14

.noexc.i:                                         ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 104 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.x, %i.w
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !15

bb.g:                                             ; preds = %.lr.ph.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #36, !inline_history !181
  unreachable

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i: ; preds = %.noexc.i
  %.pre.i7 = load ptr, ptr %i.t, align 8, !tbaa !179
  br label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.aa = phi ptr [ %.pre.i7, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i ], [ %i.u, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !182
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #37, !inline_history !176
  br label %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i

_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i
  %i.ag = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !47
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #37, !inline_history !176
  br label %_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit

_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit:  ; preds = %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !185 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !188
  %.not.i8 = icmp eq ptr %i.am, %i.ao
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i8, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit
  %i.ap = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.ap, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !200
  %i.aq = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.aq, label %bb.j, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !200
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ar, ptr %i.al, align 8, !tbaa !185
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.j, %bb.i
  %i.as = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.at = shl nuw i64 1, %i.as                    ; 2 uses
  br i1 %2, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.au = load i64, ptr %i.am, align 8, !tbaa !125
  %i.av = or i64 %i.au, %i.at
  store i64 %i.av, ptr %i.am, align 8, !tbaa !125
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.l:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.aw = xor i64 %i.at, -1
  %i.ax = load i64, ptr %i.am, align 8, !tbaa !125
  %i.ay = and i64 %i.ax, %i.aw
  store i64 %i.ay, ptr %i.am, align 8, !tbaa !125
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.m:                                             ; preds = %_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr %i.am, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %2)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.k, %bb.l, %bb.m
  br i1 %3, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.ba = load i8, ptr %i.a, align 8, !tbaa !2524, !range !63, !noundef !64
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.o, label %bb.p, !prof !65

bb.o:                                             ; preds = %bb.n
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec24FunctionSignatureBuilder13variableArityEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.47) #35
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !199
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !199
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %bb.q, label %_ZN8facebook5velox4exec24FunctionSignatureBuilder13variableArityEv.exit, !prof !65

bb.q:                                             ; preds = %bb.p
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec24FunctionSignatureBuilder13variableArityEvE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.49) #35
  unreachable

_ZN8facebook5velox4exec24FunctionSignatureBuilder13variableArityEv.exit: ; preds = %bb.p
  store i8 1, ptr %i.a, align 8, !tbaa !2524
  br label %bb.s

bb.r:                                             ; preds = %bb.e, %bb.d
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox4exec13TypeSignatureD2Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !180  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !179    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #35
  unreachable

_ZNKSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 104                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 88686269585142075)
  %i.l = select i1 %i.j, i64 88686269585142075, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 104                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #34 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  invoke void @_ZN8facebook5velox4exec13TypeSignatureC2EOS2_(ptr noundef nonnull align 8 dereferenceable(97) %i.q, ptr noundef nonnull align 8 dereferenceable(97) %2)
          to label %_ZNSt16allocator_traitsISaIN8facebook5velox4exec13TypeSignatureEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_.exit unwind label %.thread

_ZNSt16allocator_traitsISaIN8facebook5velox4exec13TypeSignatureEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN8facebook5velox4exec13TypeSignatureEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_.exit, %_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.s, %_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN8facebook5velox4exec13TypeSignatureEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_.exit ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN8facebook5velox4exec13TypeSignatureEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_.exit ] ; 2 uses
  invoke void @_ZN8facebook5velox4exec13TypeSignatureC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(97) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(97) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c, !inline_history !2525

_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 104 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2526

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #33 ; 0 uses
  %.not.i2.i.i.i.i.i.i = icmp eq ptr %i.p, %.016.i.i.i.i.i
  br i1 %.not.i2.i.i.i.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.noexc.i.i.i.i.i
  %.0.i3.i.i.i.i.i.i = phi ptr [ %i.w, %.noexc.i.i.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  invoke void @_ZSt8_DestroyIN8facebook5velox4exec13TypeSignatureEEvPT_(ptr noundef nonnull %.0.i3.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !16

.noexc.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !15

_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #35
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i.i.i.i.i
  %lpad.loopexit.split-lp115 = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #36
  unreachable

bb.e:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN8facebook5velox4exec13TypeSignatureEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN8facebook5velox4exec13TypeSignatureEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_.exit ], [ %i.s, %_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 4 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 104 ; 3 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit46, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i40
  %.016.i.i.i.i.i30.idx = phi i64 [ %.016.i.i.i.i.i30.add, %_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i40 ], [ 104, %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.z, %_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i40 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 2 uses
  %.016.i.i.i.i.i30.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.idx ; 2 uses
  invoke void @_ZN8facebook5velox4exec13TypeSignatureC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(97) %.016.i.i.i.i.i30.ptr, ptr noundef nonnull align 8 dereferenceable(97) %.01215.i.i.i.i.i31)
          to label %_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i40 unwind label %bb.f, !inline_history !2525

_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i40: ; preds = %.lr.ph.i.i.i.i.i29
  %i.z = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 104 ; 2 uses
  %.016.i.i.i.i.i30.add = add nuw nsw i64 %.016.i.i.i.i.i30.idx, 104 ; 2 uses
  %.not.i.i.i.i.i41 = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i.i.i41, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit46.loopexit, label %.lr.ph.i.i.i.i.i29, !llvm.loop !2526

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.ab) #33 ; 0 uses
  %.not.i2.i.i.i.i.i.i32 = icmp eq i64 %.016.i.i.i.i.i30.idx, 104
  br i1 %.not.i2.i.i.i.i.i.i32, label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i.i.i.i.i39, label %.lr.ph.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i33:                             ; preds = %bb.f, %.noexc.i.i.i.i.i37
  %.0.i3.i.i.i.i.i.i34 = phi ptr [ %i.ad, %.noexc.i.i.i.i.i37 ], [ %.ptr, %bb.f ] ; 2 uses
  invoke void @_ZSt8_DestroyIN8facebook5velox4exec13TypeSignatureEEvPT_(ptr noundef nonnull %.0.i3.i.i.i.i.i.i34)
          to label %.noexc.i.i.i.i.i37 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i35.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !16

.noexc.i.i.i.i.i37:                               ; preds = %.lr.ph.i.i.i.i.i.i33
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i.i.i.i34, i64 104 ; 2 uses
  %.not.i.i.i.i.i.i.i38 = icmp eq ptr %i.ad, %.016.i.i.i.i.i30.ptr
  br i1 %.not.i.i.i.i.i.i.i38, label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i.i.i.i.i39, label %.lr.ph.i.i.i.i.i.i33, !llvm.loop !15

_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i.i.i.i.i39: ; preds = %.noexc.i.i.i.i.i37, %bb.f
  invoke void @__cxa_rethrow() #35
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i35.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i35.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i.i33, %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i.i.i.i.i39
  %lpad.loopexit.split-lp110 = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i35.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #36
  unreachable

bb.h:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i.i.i.i.i39
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit46.loopexit: ; preds = %_ZSt10_ConstructIN8facebook5velox4exec13TypeSignatureEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i40
  %.ptr62.le = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.add
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit46

_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit46: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit46.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.0.lcssa.i.i.i.i.i42 = phi ptr [ %.ptr, %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %.ptr62.le, %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit46.loopexit ]
  %.not.i2.i = icmp eq ptr %i.c, %i.b
  br i1 %.not.i2.i, label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit46, %.lr.ph.i
  %.0.i3.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit46 ] ; 2 uses
  tail call void @_ZSt8_DestroyIN8facebook5velox4exec13TypeSignatureEEvPT_(ptr noundef %.0.i3.i), !inline_history !2527
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 104 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit, label %.lr.ph.i, !llvm.loop !15

_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit: ; preds = %.lr.ph.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox4exec13TypeSignatureES4_SaIS3_EET0_T_S7_S6_RT1_.exit46
end_hunk_0
