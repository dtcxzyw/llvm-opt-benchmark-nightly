Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/disassembler?download=true
inline.NumInlined: 896
inline.NumDeleted: 542
begin_hunk_0_@_ZN2v88internal15V8NameConverterD0Ev:bb.a
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN2v88internal15V8NameConverterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.l = load i64, ptr %i.f, align 8
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #16, !inline_history !8
  br label %_ZN2v88internal15V8NameConverterD2Ev.exit

_ZN2v88internal15V8NameConverterD2Ev.exit:        ; preds = %_ZNSt10_HashtableIiSt4pairIKiPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 376) #16
  ret void
}

declare noundef ptr @_ZNK6disasm13NameConverter17NameOfCPURegisterEi(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef) unnamed_addr #2

declare noundef ptr @_ZNK6disasm13NameConverter21NameOfByteCPURegisterEi(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef) unnamed_addr #2

declare noundef ptr @_ZNK6disasm13NameConverter17NameOfXMMRegisterEi(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef) unnamed_addr #2

declare noundef ptr @_ZNK6disasm13NameConverter14NameOfConstantEPh(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #5

declare void @_ZN2v88internal13RelocIteratorC1ENS0_13CodeReferenceE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef byval(%"class.v8::internal::CodeReference") align 8) unnamed_addr #2

declare noundef i64 @_ZNK2v88internal13CodeReference13code_commentsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef i32 @_ZNK2v88internal13CodeReference18code_comments_sizeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN2v88internal20CodeCommentsIteratorC1Emj(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i32 noundef) unnamed_addr #2

declare noundef i64 @_ZNK2v88internal4wasm8WasmCode15jump_table_infoEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

declare noundef i32 @_ZNK2v88internal4wasm8WasmCode20jump_table_info_sizeEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

declare noundef i32 @_ZN6disasm12Disassembler18ConstantPoolSizeAtEPh(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal21JumpTableInfoIterator10HasCurrentEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef i32 @_ZNK2v88internal21JumpTableInfoIterator11GetPCOffsetEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef i32 @_ZNK2v88internal21JumpTableInfoIterator9GetTargetEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2v88internal21JumpTableInfoIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef i32 @_ZN6disasm12Disassembler17InstructionDecodeEN2v84base6VectorIcEEPh(ptr noundef nonnull align 8 dereferenceable(9), ptr, i64, ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal17RelocIteratorBaseINS0_9RelocInfoEE4nextEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal20CodeCommentsIterator10HasCurrentEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef i32 @_ZNK2v88internal20CodeCommentsIterator11GetPCOffsetEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef ptr @_ZNK2v88internal20CodeCommentsIterator10GetCommentEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2v88internal20CodeCommentsIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internalL10DumpBufferERSoRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !36
  store i8 0, ptr %i.a, align 8, !alias.scope !36
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !36 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !36 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !36 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l) ; 0 uses
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.b, %bb.c
  %i.o = load ptr, ptr %2, align 8
  %i.p = load i64, ptr %i.b, align 8
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.o, i64 noundef %i.p) #15 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 240
  %i.w = load ptr, ptr %i.v, align 8              ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZSt16__throw_bad_castv() #17
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load i8, ptr %i.x, align 8
  %.not.i1.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 67
  %i.aa = load i8, ptr %i.z, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.w) #15
  %i.ab = load ptr, ptr %i.w, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef signext i8 %i.ad(ptr noundef nonnull align 8 dereferenceable(570) %i.w, i8 noundef signext 10) #15, !inline_history !33
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi i8 [ %i.aa, %bb.e ], [ %i.ae, %bb.f ]
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef signext %.0.i.i.i) #15
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #15 ; 0 uses
  %i.ah = load ptr, ptr %2, align 8               ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.aj = load i64, ptr %i.a, align 8
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.al, ptr %3, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.am, align 8
  store i8 0, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.ao = load ptr, ptr %3, align 8               ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.al
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.al, align 8
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

declare noundef i64 @_ZNK2v88internal13CodeReference13constant_poolEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internalL14PrintRelocInfoERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEPNS0_7IsolateEPKNS0_24ExternalReferenceEncoderERSoNS0_13CodeReferenceEPNS0_9RelocInfoEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.v8::internal::HeapStringAllocator", align 8 ; 6 uses
  %7 = alloca %"class.v8::internal::StringStream", align 8 ; 9 uses
  %8 = alloca %"class.std::unique_ptr.526", align 8 ; 5 uses
  br i1 %5, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  tail call fastcc void @_ZN2v88internalL10DumpBufferERSoRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %.lr.ph.i.us.i.preheader

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i64, i64 } @_ZNSo5tellpEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = sub nsw i32 57, %i.d
  %9 = icmp slt i32 %i.d, 57
  br i1 %9, label %.lr.ph.i.us.i.preheader, label %_ZSt10__fill_n_aISt16ostream_iteratorIccSt11char_traitsIcEEicET_S4_T0_RKT1_St19output_iterator_tag.exit

.lr.ph.i.us.i.preheader:                          ; preds = %.thread, %bb.b
  %.02.i.us.i.ph = phi i32 [ %i.e, %bb.b ], [ 57, %.thread ]
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i.us.i
  %.02.i.us.i = phi i32 [ %i.n, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i.us.i ], [ %.02.i.us.i.ph, %.lr.ph.i.us.i.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43
  store i8 32, ptr %i.a, align 1, !noalias !43
  %i.f = load ptr, ptr %0, align 8, !noalias !43
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8, !noalias !43
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !43
  %.not.i.i.i.us.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.us.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.us.i
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) #15, !noalias !43 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i.us.i

bb.d:                                             ; preds = %.lr.ph.i.us.i
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 32) #15, !noalias !43 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i.us.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i.us.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43
  %i.n = add nsw i32 %.02.i.us.i, -1
  %i.o = icmp sgt i32 %.02.i.us.i, 1
  br i1 %i.o, label %.lr.ph.i.us.i, label %_ZSt10__fill_n_aISt16ostream_iteratorIccSt11char_traitsIcEEicET_S4_T0_RKT1_St19output_iterator_tag.exit, !llvm.loop !41

_ZSt10__fill_n_aISt16ostream_iteratorIccSt11char_traitsIcEEicET_S4_T0_RKT1_St19output_iterator_tag.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i.us.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load i8, ptr %i.p, align 8               ; 6 uses
  switch i8 %i.q, label %bb.l [
    i8 17, label %bb.e
    i8 18, label %bb.f
    i8 19, label %bb.g
    i8 20, label %bb.j
    i8 21, label %bb.k
  ]

bb.e:                                             ; preds = %_ZSt10__fill_n_aISt16ostream_iteratorIccSt11char_traitsIcEEicET_S4_T0_RKT1_St19output_iterator_tag.exit
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.25, i64 noundef 45) #15 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = load i64, ptr %i.s, align 8
  %i.u = trunc i64 %i.t to i32
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.u) #15
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.26, i64 noundef 1) #15 ; 0 uses
  br label %bb.ah

bb.f:                                             ; preds = %_ZSt10__fill_n_aISt16ostream_iteratorIccSt11char_traitsIcEEicET_S4_T0_RKT1_St19output_iterator_tag.exit
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.27, i64 noundef 43) #15 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = trunc i64 %i.z to i32
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.aa) #15
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.26, i64 noundef 1) #15 ; 0 uses
  br label %bb.ah

bb.g:                                             ; preds = %_ZSt10__fill_n_aISt16ostream_iteratorIccSt11char_traitsIcEEicET_S4_T0_RKT1_St19output_iterator_tag.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = trunc i64 %i.ae to i8
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.28, i64 noundef 28) #15 ; 0 uses
  %i.ah = call noundef ptr @_ZN2v88internal24DeoptimizeReasonToStringENS0_16DeoptimizeReasonE(i8 noundef zeroext %i.af) #15 ; 3 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %0, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = or i32 %i.an, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.al, i32 noundef %i.ao) #15
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.i:                                             ; preds = %bb.g
  %i.ap = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ah) #15
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ah, i64 noundef %i.ap) #15 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.h, %bb.i
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.26, i64 noundef 1) #15 ; 0 uses
  br label %bb.ah

bb.j:                                             ; preds = %_ZSt10__fill_n_aISt16ostream_iteratorIccSt11char_traitsIcEEicET_S4_T0_RKT1_St19output_iterator_tag.exit
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.29, i64 noundef 26) #15 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = load i64, ptr %i.at, align 8
  %i.av = trunc i64 %i.au to i32
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.av) #15 ; 0 uses
  br label %bb.ah

bb.k:                                             ; preds = %_ZSt10__fill_n_aISt16ostream_iteratorIccSt11char_traitsIcEEicET_S4_T0_RKT1_St19output_iterator_tag.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.30) #17
  unreachable

bb.l:                                             ; preds = %_ZSt10__fill_n_aISt16ostream_iteratorIccSt11char_traitsIcEEicET_S4_T0_RKT1_St19output_iterator_tag.exit
  %i.ax = add i8 %i.q, -3
  %i.ay = icmp ult i8 %i.ax, 2
  br i1 %i.ay, label %_ZN2v88internal9RelocInfo13target_objectENS0_16PtrComprCageBaseE.exit, label %bb.p

_ZN2v88internal9RelocInfo13target_objectENS0_16PtrComprCageBaseE.exit: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal19HeapStringAllocatorE, i64 16), ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store ptr %6, ptr %7, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 1, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 16, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bd = load ptr, ptr getelementptr inbounds nuw inrange(-32, 16) (i8, ptr @_ZTVN2v88internal19HeapStringAllocatorE, i64 32), align 8
  %i.be = call noundef ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 16) #15, !inline_history !42 ; 2 uses
  store ptr %i.be, ptr %i.bc, align 8
  store i8 0, ptr %i.be, align 1
  %i.bf = load i64, ptr %4, align 8
  %i.bg = inttoptr i64 %i.bf to ptr
  %.0.copyload.i58 = load i64, ptr %i.bg, align 1
  call void @_ZN2v88internal10ShortPrintILNS0_23HeapObjectReferenceTypeE1EmEEvNS0_10TaggedImplIXT_ET0_EEPNS0_12StringStreamE(i64 %.0.copyload.i58, ptr noundef nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @_ZNK2v88internal12StringStream9ToCStringEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.526") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %7) #15
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.31, i64 noundef 7) #15 ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 0) #15 ; 0 uses
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.33, i64 noundef 8) #15 ; 0 uses
  %i.bk = load ptr, ptr %8, align 8               ; 3 uses
  %.not.i60 = icmp eq ptr %i.bk, null
  br i1 %.not.i60, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN2v88internal9RelocInfo13target_objectENS0_16PtrComprCageBaseE.exit
  %i.bl = load ptr, ptr %0, align 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 -24
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds i8, ptr %0, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = or i32 %i.bq, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bo, i32 noundef %i.br) #15
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61

bb.n:                                             ; preds = %_ZN2v88internal9RelocInfo13target_objectENS0_16PtrComprCageBaseE.exit
  %i.bs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bk) #15
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bk, i64 noundef %i.bs) #15 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61: ; preds = %bb.m, %bb.n
  %i.bu = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i62 = icmp eq ptr %i.bu, null
  br i1 %.not.i62, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #16
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZN2v88internal19HeapStringAllocatorD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bw) #16
  br label %_ZN2v88internal19HeapStringAllocatorD2Ev.exit

_ZN2v88internal19HeapStringAllocatorD2Ev.exit:    ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.ah

bb.p:                                             ; preds = %bb.l
  switch i8 %i.q, label %bb.aa [
    i8 9, label %bb.q
    i8 12, label %bb.w
  ]

bb.q:                                             ; preds = %bb.p
  %i.by = load i64, ptr %4, align 8
  %i.bz = inttoptr i64 %i.by to ptr
  %.0.copyload.i63 = load i64, ptr %i.bz, align 1 ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = call noundef ptr @_ZNK2v88internal24ExternalReferenceEncoder13NameOfAddressEPNS0_7IsolateEm(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %1, i64 noundef %.0.copyload.i63) #15
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cb = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cd = call noundef ptr @_ZN2v88internal22ExternalReferenceTable31NameOfIsolateIndependentAddressEmNS_10MemorySpanImEE(i64 noundef %.0.copyload.i63, ptr nonnull %i.cc, i64 1320) #15
  br label %bb.t

end_hunk_0
