Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/input-sections.cc.X86_64?download=true
inline.NumInlined: 1857
inline.NumDeleted: 968
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN4moldL9do_actionINS_6X86_64EEEvRNS_7ContextIT_EENS_6ActionERNS_12InputSectionIS3_EERNS_6SymbolIS3_EERKNS_6ElfRelIS3_EE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.ax = atomicrmw or ptr %i.aw, i8 4 monotonic, align 1 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.az = atomicrmw or ptr %i.ay, i8 2 monotonic, align 1 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZN4mold5ErrorINS_6X86_64EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold12InputSectionINS_6X86_64EE11scan_absrelERNS_7ContextIS1_EERNS_6SymbolIS1_EERKNS_6ElfRelIS1_EE(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 1 dereferenceable(24) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2686
  %.val = load i8, ptr %i.a, align 2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2695
  %.val6 = load i8, ptr %i.b, align 1, !tbaa !442, !range !94, !noundef !38
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.d = load i16, ptr %i.c, align 1
  %i.e = and i16 %i.d, 4
  %.not.i.i.i = icmp eq i16 %i.e, 0
  %i.f = load ptr, ptr @_ZN4mold20discarded_comdat_symINS_6X86_64EEE, align 8, !tbaa !411
  %i.g = icmp eq ptr %2, %i.f                     ; 3 uses
  br i1 %.not.i.i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !392
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sext i32 %i.i to i64
  %i.l = shl nsw i64 %i.k, 2
  %i.m = add nsw i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !398
  %i.r = sext i32 %i.q to i64
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !399
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.r
  br label %_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit.i.i

_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i = phi ptr [ %i.t, %bb.c ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 6
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.u, align 1
  %i.v = icmp eq i16 %.0.copyload.i.i.i.i.i.i, 0
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 4
  %i.x = load i8, ptr %i.w, align 1
  %.mask.i.i.i.i.i = and i8 %i.x, -16
  %i.y = icmp eq i8 %.mask.i.i.i.i.i, 32
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %_ZN4moldL12get_sym_typeINS_6X86_64EEElRNS_6SymbolIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit.i.i
  %i.aa = load i64, ptr %2, align 8, !tbaa !443   ; 3 uses
  %i.ab = and i64 %i.aa, 3                        ; 3 uses
  %.not3.i.i.i.i = icmp ne i64 %i.ab, 2
  %.not210.i.i = icmp ult i64 %i.aa, 4            ; 2 uses
  %.not2.i.i = or i1 %.not210.i.i, %.not3.i.i.i.i
  br i1 %.not2.i.i, label %bb.e, label %_ZN4moldL12get_sym_typeINS_6X86_64EEElRNS_6SymbolIT_EE.exit

bb.e:                                             ; preds = %bb.d
  %.not3.i.i6.i.i = icmp ne i64 %i.ab, 0
  %.not311.i.i = icmp eq i64 %i.aa, 0
  %.not3.i.i = or i1 %.not311.i.i, %.not3.i.i6.i.i
  br i1 %.not3.i.i, label %_ZNK4mold6SymbolINS_6X86_64EE11is_absoluteEv.exit.i, label %_ZN4moldL12get_sym_typeINS_6X86_64EEElRNS_6SymbolIT_EE.exit

_ZNK4mold6SymbolINS_6X86_64EE11is_absoluteEv.exit.i: ; preds = %bb.e
  %.not3.i.i8.i.i = icmp ne i64 %i.ab, 1
  %.not4.i.i = or i1 %.not210.i.i, %.not3.i.i8.i.i
  %not..not4.i.i = xor i1 %.not4.i.i, true
  %spec.select.i = zext i1 %not..not4.i.i to i64
  br label %_ZN4moldL12get_sym_typeINS_6X86_64EEElRNS_6SymbolIT_EE.exit

bb.f:                                             ; preds = %bb.a
  br i1 %i.g, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !392
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sext i32 %i.ad to i64
  %i.ag = shl nsw i64 %i.af, 2
  %i.ah = add nsw i64 %i.ag, %i.ae
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !398
  %i.am = sext i32 %i.al to i64
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !399
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.am
  br label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i

_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i:    ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi ptr [ %i.ao, %bb.g ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.f ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = and i8 %i.aq, 15
  %i.as = icmp eq i8 %i.ar, 10
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !392
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sext i32 %i.au to i64
  %i.ax = shl nsw i64 %i.aw, 2
  %i.ay = add nsw i64 %i.ax, %i.av
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !444, !range !94, !noundef !38
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i
  br i1 %i.g, label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !392
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sext i32 %i.be to i64
  %i.bh = shl nsw i64 %i.bg, 2
  %i.bi = add nsw i64 %i.bh, %i.bf
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !398
  %i.bn = sext i32 %i.bm to i64
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !399
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.bn
  br label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.i

_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.i:  ; preds = %bb.j, %bb.i
  %.0.i1.i.i = phi ptr [ %i.bp, %bb.j ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i1.i.i, i64 4
  %i.br = load i8, ptr %i.bq, align 1
  %.fr12.i = freeze i8 %i.br
  %i.bs = and i8 %.fr12.i, 15
  %.not3.i = icmp eq i8 %i.bs, 2
  br i1 %.not3.i, label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread.i, label %_ZN4moldL12get_sym_typeINS_6X86_64EEElRNS_6SymbolIT_EE.exit

_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread.i: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.i, %bb.h
  br label %_ZN4moldL12get_sym_typeINS_6X86_64EEElRNS_6SymbolIT_EE.exit

_ZN4moldL12get_sym_typeINS_6X86_64EEElRNS_6SymbolIT_EE.exit: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit.i.i, %bb.d, %bb.e, %_ZNK4mold6SymbolINS_6X86_64EE11is_absoluteEv.exit.i, %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.i, %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread.i
  %.0.i7 = phi i64 [ %spec.select.i, %_ZNK4mold6SymbolINS_6X86_64EE11is_absoluteEv.exit.i ], [ 1, %bb.d ], [ 0, %_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit.i.i ], [ 2, %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.i ], [ 3, %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread.i ], [ 1, %bb.e ]
  %i.bt = trunc nuw i8 %.val6 to i1
  %i.bu = trunc nuw i8 %.val to i1
  %..i = select i1 %i.bu, i64 1, i64 2
  %.0.i = select i1 %i.bt, i64 0, i64 %..i
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @_ZZN4mold12InputSectionINS_6X86_64EE11scan_absrelERNS_7ContextIS1_EERNS_6SymbolIS1_EERKNS_6ElfRelIS1_EEE5table, i64 %.0.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.0.i7
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !446
  tail call fastcc void @_ZN4moldL9do_actionINS_6X86_64EEEvRNS_7ContextIT_EENS_6ActionERNS_12InputSectionIS3_EERNS_6SymbolIS3_EERKNS_6ElfRelIS3_EE(ptr noundef nonnull align 8 dereferenceable(14448) %1, i8 noundef zeroext %i.bx, ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 1 dereferenceable(24) %3)
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold12InputSectionINS_6X86_64EE12scan_tlsdescERNS_7ContextIS1_EERNS_6SymbolIS1_EE(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2697
  %i.b = load i8, ptr %i.a, align 1, !tbaa !560, !range !94, !noundef !38
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2690
  %i.e = load i8, ptr %i.d, align 2, !tbaa !561, !range !94, !noundef !38
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2695
  %i.h = load i8, ptr %i.g, align 1, !tbaa !442, !range !94, !noundef !38
  %i.i = trunc nuw i8 %i.h to i1                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.k = load i16, ptr %i.j, align 1
  %i.l = and i16 %i.k, 4
  %.not.i = icmp ne i16 %i.l, 0
  %.not = select i1 %i.i, i1 true, i1 %.not.i
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2710
  %i.n = load i8, ptr %i.m, align 2, !range !94
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = select i1 %i.i, i1 %i.o, i1 false
  br i1 %i.p, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d, %bb.b
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.sink9 = phi i8 [ 32, %bb.e ], [ 8, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.r = atomicrmw or ptr %i.q, i8 %.sink9 monotonic, align 1 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold12InputSectionINS_6X86_64EE11check_tlsleERNS_7ContextIS1_EERNS_6SymbolIS1_EERKNS_6ElfRelIS1_EE(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 1 dereferenceable(24) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.mold::Error", align 8       ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2695
  %i.b = load i8, ptr %i.a, align 1, !tbaa !442, !range !94, !noundef !38
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @_ZN4mold5ErrorINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %5, ptr noundef nonnull align 8 dereferenceable(14448) %1) #15
  %i.d = call noundef nonnull align 8 dereferenceable(401) ptr @_ZN4mold10SyncStreamlsIRNS_12InputSectionINS_6X86_64EEEEERS0_OT_(ptr noundef nonnull align 8 dereferenceable(408) %5, ptr noundef nonnull align 8 dereferenceable(77) %0) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 7 uses
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(14) @.str.11, i64 noundef 13) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.0.copyload.i.i.i.i = load i32, ptr %i.g, align 1
  call void @_ZN4mold13rel_to_stringINS_6X86_64EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %.0.copyload.i.i.i.i) #15
  %i.h = load ptr, ptr %4, align 8, !tbaa !405
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !417
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.h, i64 noundef %i.j) #15 ; 0 uses
  %i.l = load ptr, ptr %4, align 8, !tbaa !405    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN4mold5ErrorINS_6X86_64EElsIRKNS_6ElfRelIS1_EEEERS2_OT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8, !tbaa !57
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #25
  br label %_ZN4mold5ErrorINS_6X86_64EElsIRKNS_6ElfRelIS1_EEEERS2_OT_.exit

_ZN4mold5ErrorINS_6X86_64EElsIRKNS_6ElfRelIS1_EEEERS2_OT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(11) @.str.17, i64 noundef 10) #15 ; 0 uses
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4moldlsINS_6X86_64EEERSoS2_RKNS_6SymbolIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(36) %2) #15 ; 0 uses
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(47) @.str.18, i64 noundef 46) #15 ; 0 uses
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(22) @.str.19, i64 noundef 21) #15 ; 0 uses
  call void @_ZN4mold10SyncStream4emitEv(ptr noundef nonnull align 8 dereferenceable(408) %5)
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !97
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8, !tbaa !97
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !97
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ab, align 8, !tbaa !97
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !405 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4mold5ErrorINS_6X86_64EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN4mold5ErrorINS_6X86_64EElsIRKNS_6ElfRelIS1_EEEERS2_OT_.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !57
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #25
  br label %_ZN4mold5ErrorINS_6X86_64EED2Ev.exit

_ZN4mold5ErrorINS_6X86_64EED2Ev.exit:             ; preds = %_ZN4mold5ErrorINS_6X86_64EElsIRKNS_6ElfRelIS1_EEEERS2_OT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ab, align 8, !tbaa !97
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 88
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #15
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.aj, ptr %i.u, align 8, !tbaa !97
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %i.u, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !97
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.ao, align 8, !tbaa !407
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 136
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ap) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.c

bb.c:                                             ; preds = %_ZN4mold5ErrorINS_6X86_64EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define weak_odr dso_local { i64, i8 } @_ZN4mold12InputSectionINS_6X86_64EE13get_tombstoneERNS_6SymbolIS1_EEPNS_15SectionFragmentIS1_EE(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !443    ; 2 uses
  %i.b = and i64 %i.a, 3
  %.not3.i.i = icmp eq i64 %i.b, 0
  %i.c = inttoptr i64 %i.a to ptr                 ; 2 uses
  %.0.i.i = select i1 %.not3.i.i, ptr %i.c, ptr null ; 3 uses
  %i.d = load ptr, ptr @_ZN4mold20discarded_comdat_symINS_6X86_64EEE, align 8, !tbaa !411
  %i.e = icmp eq ptr %1, %i.d
  %i.f = icmp ne ptr %.0.i.i, null                ; 3 uses
  %or.cond = select i1 %i.f, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.c, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 59
  %i.h = load atomic i8, ptr %i.g monotonic, align 1, !range !94, !noundef !38
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !54
  %i.l = sext i32 %i.k to i64                     ; 3 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !93, !nonnull !38, !align !39 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp ugt i64 %i.o, %i.l
  br i1 %.not.i, label %bb.f, label %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit.thread

_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit.thread: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 480
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !90
  %i.r = sub nuw i64 %i.l, %i.o
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.0.copyload.i.i = load i64, ptr %i.t, align 1
  %i.u = and i64 %.0.copyload.i.i, 1024
  %.not4.i = icmp eq i64 %i.u, 0                  ; 2 uses
  %i.v = select i1 %.not4.i, ptr @.str.6, ptr @.str.5
  %i.w = select i1 %.not4.i, i64 7, i64 11
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !62
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.aa, i64 %i.l
  %.0.copyload.i5.i = load i32, ptr %i.ab, align 1
  %i.ac = zext i32 %.0.copyload.i5.i to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !56 ; 2 uses
  %i.ag = icmp eq i16 %i.af, -1
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 65535
  %i.ai = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ah) #28
  %i.aj = add i64 %i.ai, 65535
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ak = zext i16 %i.af to i64
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit

_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit: ; preds = %bb.g, %bb.h
  %.sroa.0.0.i = phi i64 [ %i.aj, %bb.g ], [ %i.ak, %bb.h ] ; 2 uses
  %.not.i.i = icmp ult i64 %.sroa.0.0.i, 7
  br i1 %.not.i.i, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit.thread, %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit
  %.sroa.0.0.i41 = phi i64 [ %i.w, %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit.thread ], [ %.sroa.0.0.i, %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit ] ; 2 uses
  %.sroa.4.0.i40 = phi ptr [ %i.v, %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit.thread ], [ %i.ad, %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit ] ; 8 uses
  %i.al = load i32, ptr %.sroa.4.0.i40, align 1
  %i.am = xor i32 %i.al, 1650811950
  %i.an = getelementptr i8, ptr %.sroa.4.0.i40, i64 3
  %i.ao = load i32, ptr %i.an, align 1
  %i.ap = xor i32 %i.ao, 1600615778
  %i.aq = or i32 %i.am, %i.ap
  %i.ar = icmp ne i32 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  br i1 %i.f, label %bb.i, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread

bb.i:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !59 ; 2 uses
  %.not.i14 = icmp ne ptr %i.av, null
end_hunk_0
