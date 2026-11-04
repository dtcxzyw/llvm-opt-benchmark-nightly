Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstCombineCalls?download=true
inline.NumInlined: 9985
inline.NumDeleted: 4395
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNSt6vectorIN4llvm17OperandBundleDefTIPNS0_5ValueEEESaIS4_EE9push_backEOS4_:bb.a
  %i.j = load i64, ptr %i.i, align 8, !tbaa !247  ; 2 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZN4llvm17OperandBundleDefTIPNS_5ValueEEC2EOS3_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  store ptr %i.f, ptr %i.b, align 8, !tbaa !246
  %i.m = load i64, ptr %i.g, align 8, !tbaa !142
  store i64 %i.m, ptr %i.e, align 8, !tbaa !142
  br label %_ZN4llvm17OperandBundleDefTIPNS_5ValueEEC2EOS3_.exit.i

_ZN4llvm17OperandBundleDefTIPNS_5ValueEEC2EOS3_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !247
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !247
  store ptr %i.g, ptr %1, align 8, !tbaa !246
  store i64 0, ptr %i.n, align 8, !tbaa !247
  store i8 0, ptr %i.g, align 8, !tbaa !142
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.s = load <2 x ptr>, ptr %i.r, align 8, !tbaa !228
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !228
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !248
  store ptr %i.v, ptr %i.t, align 8, !tbaa !248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !251
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store ptr %i.x, ptr %i.a, align 8, !tbaa !251
  br label %_ZNSt6vectorIN4llvm17OperandBundleDefTIPNS0_5ValueEEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN4llvm17OperandBundleDefTIPNS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br label %_ZNSt6vectorIN4llvm17OperandBundleDefTIPNS0_5ValueEEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

_ZNSt6vectorIN4llvm17OperandBundleDefTIPNS0_5ValueEEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %_ZN4llvm17OperandBundleDefTIPNS_5ValueEEC2EOS3_.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !244
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.14) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.d, ptr %i.a, align 8, !tbaa !117
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #29 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !246
  %i.g = load i64, ptr %i.a, align 8, !tbaa !117
  store i64 %i.g, ptr %i.b, align 8, !tbaa !142
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.f, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !142
  store i8 %i.i, ptr %i.h, align 1, !tbaa !142
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.exit

bb.f:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.exit: ; preds = %._crit_edge.i, %bb.e, %bb.f
  %i.j = load i64, ptr %i.a, align 8, !tbaa !117  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !247
  %i.l = load ptr, ptr %0, align 8, !tbaa !246
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17OperandBundleDefTIPNS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !209  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !248
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #31
  br label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit:     ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !246    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !142
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4llvm17OperandBundleDefTIPNS0_5ValueEEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !250    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !251  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4llvm17OperandBundleDefTIPNS0_5ValueEEEEvT_S6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4llvm17OperandBundleDefTIPNS0_5ValueEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.p, %_ZSt8_DestroyIN4llvm17OperandBundleDefTIPNS0_5ValueEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !209  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !248
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #31
  br label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = load ptr, ptr %.05.i.i, align 8, !tbaa !246 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyIN4llvm17OperandBundleDefTIPNS0_5ValueEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !142
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #31
  br label %_ZSt8_DestroyIN4llvm17OperandBundleDefTIPNS0_5ValueEEEEvPT_.exit.i.i

_ZSt8_DestroyIN4llvm17OperandBundleDefTIPNS0_5ValueEEEEvPT_.exit.i.i: ; preds = %_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4llvm17OperandBundleDefTIPNS0_5ValueEEEEvT_S6_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !964

_ZSt8_DestroyIPN4llvm17OperandBundleDefTIPNS0_5ValueEEEEvT_S6_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4llvm17OperandBundleDefTIPNS0_5ValueEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !250
  br label %_ZSt8_DestroyIPN4llvm17OperandBundleDefTIPNS0_5ValueEEEEvT_S6_.exit

_ZSt8_DestroyIPN4llvm17OperandBundleDefTIPNS0_5ValueEEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIPN4llvm17OperandBundleDefTIPNS0_5ValueEEEEvT_S6_.exitthread-pre-split, %bb.a
  %i.q = phi ptr [ %.pr, %_ZSt8_DestroyIPN4llvm17OperandBundleDefTIPNS0_5ValueEEEEvT_S6_.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4llvm17OperandBundleDefTIPNS0_5ValueEEESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4llvm17OperandBundleDefTIPNS0_5ValueEEEEvT_S6_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !310
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #31
  br label %_ZNSt12_Vector_baseIN4llvm17OperandBundleDefTIPNS0_5ValueEEESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseIN4llvm17OperandBundleDefTIPNS0_5ValueEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4llvm17OperandBundleDefTIPNS0_5ValueEEEEvT_S6_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL15simplifyNeonTblRN4llvm13IntrinsicInstERNS_12InstCombinerEb(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(1240) %1, i1 noundef zeroext %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %4 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %5 = alloca %"class.llvm::SmallDenseMap.591", align 8 ; 12 uses
  %6 = alloca [2 x ptr], align 16                 ; 6 uses
  %i.a = alloca [16 x i32], align 16              ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.d = tail call noundef ptr @_ZN4llvm8CallBase7arg_endEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 268435455
  %i.h = zext nneg i32 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [32 x i8], ptr %0, i64 %i.i ; 3 uses
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 5
  %i.o = add nuw nsw i64 %i.n, 4294967295
  %i.p = and i64 %i.o, 4294967295
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44   ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !121
  %i.t = icmp ugt i8 %i.s, 22
  br i1 %i.t, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !104  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !185  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !184
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp eq i32 %i.ab, 2060
  br i1 %i.ac, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  switch i32 %i.x, label %bb.x [
    i32 16, label %bb.d
    i32 8, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.ad = zext i1 %2 to i32                       ; 2 uses
  %i.ae = zext i1 %2 to i64
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !104 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !185 ; 4 uses
  %i.al = icmp ugt i32 %i.x, %i.ak
  br i1 %i.al, label %bb.x, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.am = tail call noundef ptr @_ZN4llvm8CallBase7arg_endEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.an = load i32, ptr %i.e, align 4
  %i.ao = and i32 %i.an, 268435455
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = sub nsw i64 0, %i.ap
  %i.ar = getelementptr inbounds [32 x i8], ptr %0, i64 %i.aq
  %i.as = ptrtoint ptr %i.am to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = lshr exact i64 %i.au, 5
  %i.aw = trunc i64 %i.av to i32
  %i.ax = xor i32 %i.ad, -1
  %i.ay = add i32 %i.aw, %i.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i32 1, ptr %5, align 8
  store i32 0, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.ba = tail call noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef nonnull %i.ai) #29
  store ptr %i.ba, ptr %6, align 16, !tbaa !166
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bb = tail call noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef nonnull %i.ai) #29
  store ptr %i.bb, ptr %8, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.bc = zext i32 %i.ak to i64                   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 24
  %wide.trip.count = zext nneg i32 %i.x to i64    ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 4 uses
  %i.bg = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.bh = call noundef ptr @_ZNK4llvm8Constant19getAggregateElementEj(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i32 noundef %i.bg) #29 ; 4 uses
  %.not64 = icmp eq ptr %i.bh, null
  br i1 %.not64, label %.thread76, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !121 ; 2 uses
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i8 %i.bi, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %.thread78, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = icmp eq i8 %i.bi, 5
  br i1 %i.bj, label %bb.h, label %.thread76

.thread78:                                        ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 -1, ptr %i.bk, align 4, !tbaa !111
  br label %bb.t

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !141
  %i.bo = icmp ult i32 %i.bn, 65
  %i.bp = load ptr, ptr %i.bl, align 8
  %spec.select.i.i69 = select i1 %i.bo, ptr %i.bl, ptr %i.bp
  %.0.i.i = load i64, ptr %spec.select.i.i69, align 8, !tbaa !142 ; 2 uses
  %i.bq = udiv i64 %.0.i.i, %i.bc
  %i.br = urem i64 %.0.i.i, %i.bc
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %.not65 = icmp ugt i32 %i.ay, %i.bs
  br i1 %.not65, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %2, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bt = load i32, ptr %i.e, align 4
  %i.bu = and i32 %i.bt, 268435455
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = getelementptr inbounds [32 x i8], ptr %0, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !44
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.bz = call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef nonnull %i.ai) #29
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.ca = trunc nuw i64 %i.br to i32
  %i.cb = add i32 %i.bs, %i.ad
  %i.cc = load i32, ptr %i.e, align 4
  %i.cd = and i32 %i.cc, 268435455
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = sub nsw i64 0, %i.ce
  %i.cg = getelementptr inbounds [32 x i8], ptr %0, i64 %i.cf
  %i.ch = zext i32 %i.cb to i64
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !44
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sink = phi ptr [ %i.by, %bb.j ], [ %i.bz, %bb.k ], [ %i.cj, %bb.l ] ; 4 uses
  %.054 = phi i32 [ %i.bg, %bb.j ], [ 0, %bb.k ], [ %i.ca, %bb.l ]
  store ptr %.sink, ptr %i.b, align 8, !tbaa !166
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !104
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !185
  %.not66 = icmp eq i32 %i.cn, %i.ak
  br i1 %.not66, label %bb.n, label %.thread80

.thread80:                                        ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %.thread76

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  %i.co = load i32, ptr %5, align 8               ; 2 uses
  %i.cp = lshr i32 %i.co, 1                       ; 2 uses
  store i32 %i.cp, ptr %i.c, align 4, !tbaa !111
  %i.cq = icmp eq i32 %i.cp, 2
  br i1 %i.cq, label %bb.o, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8containsEPKS2_.exit

bb.o:                                             ; preds = %bb.n
  %i.cr = and i32 %i.co, 1
  %.not.i.i.i.i = icmp eq i32 %i.cr, 0            ; 3 uses
  %i.cs = load ptr, ptr %i.bd, align 8, !noalias !974
  %i.ct = load ptr, ptr %i.be, align 8, !noalias !974
  %i.cu = load i32, ptr %i.bf, align 8, !noalias !974
  %.sink2.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.cs, ptr %i.bd
  %.sink1.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.ct, ptr %i.az ; 2 uses
  %.sink.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.cu, i32 2 ; 2 uses
  %i.cv = icmp eq i32 %.sink.i.i.i.i, 0
  br i1 %i.cv, label %.thread82, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cw = add i32 %.sink.i.i.i.i, -1              ; 2 uses
  %i.cx = ptrtoint ptr %.sink to i64
  %i.cy = mul i64 %i.cx, -4658895280553007687     ; 2 uses
  %i.cz = lshr i64 %i.cy, 31
  %i.da = xor i64 %i.cz, %i.cy
  %i.db = trunc i64 %i.da to i32
  %i.dc = and i32 %i.cw, %i.db                    ; 3 uses
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %i.de = lshr i64 %i.dd, 5
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !111
  %i.dh = and i32 %i.dc, 31
  %i.di = lshr i32 %i.dg, %i.dh
  %i.dj = trunc i32 %i.di to i1
  br i1 %i.dj, label %.lr.ph.i.i, label %.thread82, !prof !174

.lr.ph.i.i:                                       ; preds = %bb.p, %bb.q
  %i.dk = phi i64 [ %i.dq, %bb.q ], [ %i.dd, %bb.p ]
  %.017.i.i = phi i32 [ %i.dp, %bb.q ], [ %i.dc, %bb.p ]
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !166
  %i.dn = icmp eq ptr %.sink, %i.dm
  br i1 %i.dn, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8containsEPKS2_.exit, label %bb.q, !prof !175

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.do = add nuw i32 %.017.i.i, 1
  %i.dp = and i32 %i.do, %i.cw                    ; 3 uses
  %i.dq = zext i32 %i.dp to i64                   ; 2 uses
  %i.dr = lshr i64 %i.dq, 5
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !111
  %i.du = and i32 %i.dp, 31
  %i.dv = lshr i32 %i.dt, %i.du
  %i.dw = trunc i32 %i.dv to i1
  br i1 %i.dw, label %.lr.ph.i.i, label %.thread82, !prof !176

.thread82:                                        ; preds = %bb.p, %bb.o, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %.thread76

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8containsEPKS2_.exit: ; preds = %.lr.ph.i.i, %bb.n
  %i.dx = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JRjEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c), !noalias !975 ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.dx, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.dx, 1
  %i.dy = trunc nuw i8 %.fca.1.extract.i.i to i1
  br i1 %i.dy, label %bb.r, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8containsEPKS2_.exit._crit_edge

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8containsEPKS2_.exit._crit_edge: ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8containsEPKS2_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !111
  br label %bb.s

bb.r:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8containsEPKS2_.exit
  %i.dz = load ptr, ptr %i.b, align 8, !tbaa !166
  %i.ea = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !111 ; 2 uses
  %9 = zext i32 %i.eb to i64
  %10 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %9
  store ptr %i.dz, ptr %10, align 8, !tbaa !166
  br label %bb.s

bb.s:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8containsEPKS2_.exit._crit_edge, %bb.r
  %i.ec = phi i32 [ %.pre, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEjLj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8containsEPKS2_.exit._crit_edge ], [ %i.eb, %bb.r ]
  %i.ed = mul i32 %i.ec, %i.ak
  %i.ee = add i32 %i.ed, %.054
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread78
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.e, !llvm.loop !973

.critedge:                                        ; preds = %bb.t
  %.pre90 = load ptr, ptr %6, align 16, !tbaa !166 ; 2 uses
  %.pre91 = load ptr, ptr %8, align 8, !tbaa !166 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i16 257, ptr %i.eg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !188, !nonnull !35, !align !98 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !26
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 112
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = call noundef ptr %i.el(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef %.pre90, ptr noundef %.pre91, ptr nonnull %i.a, i64 %wide.trip.count) #29, !inline_history !311 ; 2 uses
  %.not.not.i = icmp eq ptr %i.em, null
  br i1 %.not.not.i, label %bb.u, label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

bb.u:                                             ; preds = %.critedge
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eo = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 112, i32 2) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i16 257, ptr %i.ep, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @_ZN4llvm17ShuffleVectorInstC1EPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(112) %i.eo, ptr noundef %.pre90, ptr noundef %.pre91, ptr nonnull %i.a, i64 %wide.trip.count, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %4) #29
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !190, !nonnull !35, !align !98 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.es, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.et = load ptr, ptr %i.er, align 8, !tbaa !26
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %i.er, ptr noundef nonnull %i.eo, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #29, !inline_history !9
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.en, ptr noundef nonnull %i.eo) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit: ; preds = %.critedge, %bb.u
  %.1.i = phi ptr [ %i.eo, %bb.u ], [ %i.em, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.ew = call noundef ptr @_ZN4llvm12InstCombiner19replaceInstUsesWithERNS_11InstructionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %1, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %.1.i)
  br label %.thread76

.thread76:                                        ; preds = %bb.e, %bb.g, %.thread80, %.thread82, %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit
  %.5 = phi ptr [ %i.ew, %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit ], [ null, %.thread82 ], [ null, %.thread80 ], [ null, %bb.g ], [ null, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.ex = load i32, ptr %5, align 8
  %i.ey = and i32 %i.ex, 1
  %.not.i.i = icmp eq i32 %i.ey, 0
  br i1 %.not.i.i, label %bb.v, label %_ZN4llvm13SmallDenseMapIPNS_5ValueEjLj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

bb.v:                                             ; preds = %.thread76
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !142 ; 2 uses
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %_ZN4llvm13SmallDenseMapIPNS_5ValueEjLj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !142
  %i.fe = zext i32 %i.fa to i64                   ; 2 uses
  %i.ff = shl nuw nsw i64 %i.fe, 4
  %i.fg = add nuw nsw i64 %i.fe, 31
  %i.fh = lshr i64 %i.fg, 3
  %i.fi = and i64 %i.fh, 1073741820
  %i.fj = add nuw nsw i64 %i.fi, %i.ff
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.fd, i64 noundef %i.fj, i64 noundef 8) #29
  br label %_ZN4llvm13SmallDenseMapIPNS_5ValueEjLj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

_ZN4llvm13SmallDenseMapIPNS_5ValueEjLj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit: ; preds = %.thread76, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.x

bb.x:                                             ; preds = %bb.c, %bb.b, %bb.d, %_ZN4llvm13SmallDenseMapIPNS_5ValueEjLj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, %bb.a
  %.8 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ %.5, %_ZN4llvm13SmallDenseMapIPNS_5ValueEjLj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit ], [ null, %bb.d ]
  ret ptr %.8
}

declare noundef ptr @_ZN4llvm21ConstantAggregateZero3getEPNS_4TypeE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm13IRBuilderBase13CreateIntCastEPNS_5ValueEPNS_4TypeEbRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(34) %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.c = tail call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #30
  %i.d = tail call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #30
  %i.e = icmp ugt i32 %i.c, %i.d
  %i.f = select i1 %3, i32 41, i32 40
  %i.g = select i1 %i.e, i32 39, i32 %i.f
  %i.h = tail call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %i.g, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef null, i64 0)
  ret ptr %i.h
}

declare noundef ptr @_ZNK4llvm8Constant13getSplatValueEb(ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm8CastInst17CreateIntegerCastEPNS_5ValueEPNS_4TypeEbRKNS_5TwineENS_14InsertPositionE(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(34), ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL13foldNeonShiftPN4llvm13IntrinsicInstERNS_16InstCombinerImplE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(1240) %1) unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %6 = alloca %class.anon.599, align 8            ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 268435455
  %i.g = zext nneg i32 %i.f to i64
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds [32 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44   ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44   ; 9 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !121   ; 2 uses
  %i.n = icmp ugt i8 %i.m, 22
  br i1 %i.n, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !104  ; 3 uses
  %i.q = tail call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p) #30 ; 3 uses
  store i32 %i.q, ptr %i.a, align 4, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i8 1, ptr %i.b, align 1, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i8 1, ptr %i.c, align 1, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store ptr %i.c, ptr %6, align 8, !tbaa !982
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.b, ptr %i.r, align 8, !tbaa !982
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.a, ptr %i.s, align 8, !tbaa !313
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load i32, ptr %i.t, align 8
  %i.v = and i32 %i.u, 255
  %.not = icmp eq i32 %i.v, 18
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !185  ; 2 uses
  %.not4356.not = icmp eq i32 %i.x, 0
  br i1 %.not4356.not, label %.critedge.thread, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.057, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.y, %i.x
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !976

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.057 = phi i32 [ %i.y, %bb.d ], [ 0, %bb.c ]   ; 2 uses
  %i.z = call noundef ptr @_ZNK4llvm8Constant19getAggregateElementEj(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i32 noundef %.057) #29
  %i.aa = call fastcc noundef zeroext i1 @"_ZZL13foldNeonShiftPN4llvm13IntrinsicInstERNS_16InstCombinerImplEENK3$_0clEPNS_8ConstantE"(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %i.z)
  br i1 %i.aa, label %bb.d, label %"_ZZL13foldNeonShiftPN4llvm13IntrinsicInstERNS_16InstCombinerImplEENK3$_0clEPNS_8ConstantE.exit.thread"

bb.e:                                             ; preds = %bb.b
  %i.ab = icmp eq i8 %i.m, 5
  br i1 %i.ab, label %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_8ConstantEEEDaPT0_.exit.i, label %"_ZZL13foldNeonShiftPN4llvm13IntrinsicInstERNS_16InstCombinerImplEENK3$_0clEPNS_8ConstantE.exit.thread"

_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_8ConstantEEEDaPT0_.exit.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !141 ; 6 uses
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  %i.ag = and i32 %i.af, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw i64 1, %i.ah                    ; 2 uses
  %i.aj = icmp ult i32 %i.ae, 65                  ; 3 uses
  %i.ak = load ptr, ptr %i.ac, align 8            ; 4 uses
  %i.al = lshr i32 %i.af, 6
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.am ; 2 uses
  %.in.i.i.i.i.i = select i1 %i.aj, ptr %i.ac, ptr %i.an
  %i.ao = load i64, ptr %.in.i.i.i.i.i, align 8, !tbaa !142
  %i.ap = and i64 %i.ai, %i.ao
  %.not.i.i = icmp eq i64 %i.ap, 0
  %i.aq = ptrtoint ptr %i.ak to i64               ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_8ConstantEEEDaPT0_.exit.i
  store i8 0, ptr %i.c, align 1, !tbaa !161
  %i.ar = sext i32 %i.q to i64
  br i1 %i.aj, label %.split, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.f
  %i.as = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.ac) #30
  %i.at = sub i32 %i.ae, %i.as
  %i.au = icmp ult i32 %i.at, 65
  br i1 %i.au, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i..split_crit_edge, label %"_ZZL13foldNeonShiftPN4llvm13IntrinsicInstERNS_16InstCombinerImplEENK3$_0clEPNS_8ConstantE.exit.thread"

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i..split_crit_edge: ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i10.i.pre = load i64, ptr %i.ak, align 8, !tbaa !142
  br label %.split

.split:                                           ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i..split_crit_edge, %bb.f
  %.0.i.i10.i = phi i64 [ %.0.i.i10.i.pre, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i..split_crit_edge ], [ %i.aq, %bb.f ]
  %i.av = icmp ult i64 %.0.i.i10.i, %i.ar
  br i1 %i.av, label %.critedge.thread, label %"_ZZL13foldNeonShiftPN4llvm13IntrinsicInstERNS_16InstCombinerImplEENK3$_0clEPNS_8ConstantE.exit.thread"

bb.g:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_8ConstantEEEDaPT0_.exit.i
  store i8 0, ptr %i.b, align 1, !tbaa !161
  %i.aw = sub nsw i32 0, %i.q
  %i.ax = sext i32 %i.aw to i64
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = load i64, ptr %i.an, align 8, !tbaa !142
  %i.az = and i64 %i.ay, %i.ai
  %.not.i.i.i.i = icmp eq i64 %i.az, 0
  %i.ba = add i32 %i.ae, 1                        ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNK4llvm5APInt18getSignificantBitsEv.exit.i.i, label %_ZNK4llvm5APInt18getSignificantBitsEv.exit.i.i.thread

_ZNK4llvm5APInt18getSignificantBitsEv.exit.i.i:   ; preds = %bb.h
  %i.bb = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.ac) #30
  %i.bc = sub i32 %i.ba, %i.bb
  %i.bd = icmp ugt i32 %i.bc, 64
  br i1 %i.bd, label %.critedge.thread68, label %bb.j

_ZNK4llvm5APInt18getSignificantBitsEv.exit.i.i.thread: ; preds = %bb.h
  %i.be = call noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.ac) #30
  %i.bf = sub i32 %i.ba, %i.be
  %i.bg = icmp ugt i32 %i.bf, 64
  br i1 %i.bg, label %"_ZZL13foldNeonShiftPN4llvm13IntrinsicInstERNS_16InstCombinerImplEENK3$_0clEPNS_8ConstantE.exit.thread", label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bh = icmp eq i32 %i.ae, 0
  %i.bi = sub nuw nsw i32 64, %i.ae
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = shl i64 %i.aq, %i.bj
  %i.bl = ashr exact i64 %i.bk, %i.bj
  %.0.i.i.i.i = select i1 %i.bh, i64 0, i64 %i.bl
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit.i.i

bb.j:                                             ; preds = %_ZNK4llvm5APInt18getSignificantBitsEv.exit.i.i.thread, %_ZNK4llvm5APInt18getSignificantBitsEv.exit.i.i
  %i.bm = load i64, ptr %i.ak, align 8, !tbaa !117
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit.i.i
end_hunk_0
