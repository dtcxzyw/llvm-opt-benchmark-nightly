inline.NumInlined: 2971
inline.NumDeleted: 886
begin_hunk_0_@_ZNK4LIEF3ELF7Segment6acceptERNS_7VisitorE:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(136) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4LIEF3ELF7Segment6streamEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.106") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZNK4LIEF3ELF7Segment7contentEv(ptr noundef nonnull align 8 dereferenceable(136) %1) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.d = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27, !noalias !12 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.e, align 8, !noalias !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 0, ptr %i.f, align 8, !noalias !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 3, ptr %i.g, align 4, !noalias !12
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %i.d, align 8, !noalias !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.b, ptr %i.h, align 8, !noalias !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.c, ptr %i.i, align 8, !noalias !12
  store ptr %i.d, ptr %0, align 8, !alias.scope !12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZN4LIEF3ELF7Segment16writable_contentEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZNK4LIEF3ELF7Segment7contentEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  ret { ptr, i64 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF3ELFlsERSoRKNS0_7SegmentE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1) local_unnamed_addr #1 {
._crit_edge.i.i:
  %2 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %3 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.fmt::v11::basic_memory_buffer.525", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.fmt::v11::basic_memory_buffer.525", align 8 ; 10 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.1153", align 16 ; 13 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.1152", align 16 ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.d, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.d, ptr noundef nonnull align 1 dereferenceable(3) @.str.17, i64 3, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 3, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 19
  store i8 0, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = and i32 %i.h, 4
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i
  store i8 114, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge.i.i
  %i.j = and i32 %i.h, 2
  %.not52 = icmp eq i32 %i.j, 0
  br i1 %.not52, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 119, ptr %i.k, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = and i32 %i.h, 1
  %.not53 = icmp eq i32 %i.l, 0
  br i1 %.not53, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 18
  store i8 120, ptr %i.m, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.o, 9007200865353736
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.o, 9007200865353746
  %.add12.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 584, i64 520
  br label %_ZNK6frozen3mapIN4LIEF3ELF7Segment4TYPEEPKcLm39ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %.not.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.o, 19058917378 ; 2 uses
  %.add13.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i64 264, i64 8
  %.add13.i.i.sroa.sel.sroa.sel.v.i = select i1 %.not.i.i.i.i.i.i.i.i, i64 376, i64 120
  %.add13.i.i.sroa.sel.sroa.sel.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.enums2str, i64 %.add13.i.i.sroa.sel.sroa.sel.v.i
  %i.p = load i64, ptr %.add13.i.i.sroa.sel.sroa.sel.i, align 8
  %.not.i.i6.i.i.i.i.i.i.i = icmp ult i64 %i.p, %i.o
  %.idx.i.i7.i.i.i.i.i.i.i = select i1 %.not.i.i6.i.i.i.i.i.i.i, i64 128, i64 0
  %.add14.i.i.i = or disjoint i64 %.idx.i.i7.i.i.i.i.i.i.i, %.add13.i.i.i ; 2 uses
  %.ptr20.i.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.enums2str, i64 %.add14.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.ptr20.i.i.i, i64 48
  %i.r = load i64, ptr %i.q, align 8
  %.not.i.i.i8.i.i.i.i.i.i.i = icmp ult i64 %i.r, %i.o
  %.idx.i.i.i9.i.i.i.i.i.i.i = select i1 %.not.i.i.i8.i.i.i.i.i.i.i, i64 64, i64 0
  %.add15.i.i.i = or disjoint i64 %.add14.i.i.i, %.idx.i.i.i9.i.i.i.i.i.i.i
  br label %_ZNK6frozen3mapIN4LIEF3ELF7Segment4TYPEEPKcLm39ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i.i

_ZNK6frozen3mapIN4LIEF3ELF7Segment4TYPEEPKcLm39ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.sink.i.i.i.i.idx.i.i.i = phi i64 [ %.add15.i.i.i, %bb.h ], [ %.add12.i.i.i, %bb.g ] ; 2 uses
  %.sink.i.i.i.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.enums2str, i64 %.sink.i.i.i.i.idx.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.ptr.i.i.i, i64 16
  %i.t = load i64, ptr %i.s, align 8
  %.not.i.i.i.i10.i.i.i.i.i.i.i = icmp ult i64 %i.t, %i.o
  %.idx.i.i.i.i11.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i10.i.i.i.i.i.i.i, i64 32, i64 0
  %.sink.i.i.i.i.add.i.i.i = add nuw nsw i64 %.idx.i.i.i.i11.i.i.i.i.i.i.i, %.sink.i.i.i.i.idx.i.i.i ; 2 uses
  %.ptr.i.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.enums2str, i64 %.sink.i.i.i.i.add.i.i.i
  %i.u = load i64, ptr %.ptr.i.i.i, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.u, %i.o
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i64 0
  %.add.i.i.i = add nuw nsw i64 %.sink.i.i.i.i.add.i.i.i, %.idx.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq i64 %.add.i.i.i, 632
  br i1 %.not.i.i.i, label %_ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK6frozen3mapIN4LIEF3ELF7Segment4TYPEEPKcLm39ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i.i
  %.ptr16.i.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.enums2str, i64 %.add.i.i.i ; 2 uses
  %i.v = load i64, ptr %.ptr16.i.i.i, align 8
  %.not24.i.i.i = icmp ult i64 %i.o, %i.v
  br i1 %.not24.i.i.i, label %_ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.exit.thread, label %_ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.exit

_ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.exit.thread: ; preds = %bb.i, %_ZNK6frozen3mapIN4LIEF3ELF7Segment4TYPEEPKcLm39ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.w, ptr %9, align 8
  br label %bb.k

_ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.exit:   ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %.ptr16.i.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.z, ptr %9, align 8
  %i.aa = icmp eq ptr %i.y, null
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.67) #26
  unreachable

bb.k:                                             ; preds = %_ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.exit.thread, %_ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.exit
  %i.ab = phi ptr [ %i.w, %_ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.exit.thread ], [ %i.z, %_ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.exit ] ; 8 uses
  %i.ac = phi ptr [ @.str.18, %_ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.exit.thread ], [ %i.y, %_ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.exit ] ; 3 uses
  %i.ad = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ac) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 %i.ad, ptr %i.c, align 8
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %bb.l, label %._crit_edge.i.i13

bb.l:                                             ; preds = %bb.k
  %i.af = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #25 ; 2 uses
  store ptr %i.af, ptr %9, align 8
  %i.ag = load i64, ptr %i.c, align 8
  store i64 %i.ag, ptr %i.ab, align 8
  br label %._crit_edge.i.i13

._crit_edge.i.i13:                                ; preds = %bb.l, %bb.k
  %i.ah = phi ptr [ %i.af, %bb.l ], [ %i.ab, %bb.k ] ; 2 uses
  switch i64 %i.ad, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit14
  ]

bb.m:                                             ; preds = %._crit_edge.i.i13
  %i.ai = load i8, ptr %i.ac, align 1
  store i8 %i.ai, ptr %i.ah, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit14

bb.n:                                             ; preds = %._crit_edge.i.i13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %i.ac, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit14: ; preds = %._crit_edge.i.i13, %bb.m, %bb.n
  %i.aj = load i64, ptr %i.c, align 8             ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  store i64 %i.aj, ptr %i.ak, align 8
  %i.al = load ptr, ptr %9, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.an = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.ao = icmp eq i64 %i.an, 7
  %.pre54 = load ptr, ptr %9, align 8             ; 4 uses
  br i1 %i.ao, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit35

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit14
  %i.ap = load i32, ptr %.pre54, align 1
  %i.aq = xor i32 %i.ap, 1313558101
  %i.ar = getelementptr i8, ptr %.pre54, i64 3
  %i.as = load i32, ptr %i.ar, align 1
  %i.at = xor i32 %i.as, 1314344782
  %i.au = or i32 %i.aq, %i.at
  %i.av = icmp ne i32 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit, label %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit35

_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.ay = load i64, ptr %i.n, align 8
  %i.az = trunc i64 %i.ay to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !15
  store i32 %i.az, ptr %7, align 16, !noalias !15
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !18
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.bc, align 8, !noalias !18
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.bb, align 8, !noalias !18
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.bd, ptr %5, align 8, !noalias !18
  store i64 500, ptr %i.ba, align 8, !noalias !18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !18
  store ptr @.str.19, ptr %3, align 8, !noalias !18
  %.sroa.2.0..sroa_idx.i14.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 17, ptr %.sroa.2.0..sroa_idx.i14.i, align 8, !noalias !18
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.be, align 8, !noalias !18
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %5, ptr %i.bf, align 8, !noalias !18
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 2, ptr %i.bg, align 8, !noalias !18
  %.sroa.2.0..sroa_idx.i15.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %7, ptr %.sroa.2.0..sroa_idx.i15.i, align 8, !noalias !18
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr null, ptr %i.bh, align 8, !noalias !18
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.19, i64 17, ptr noundef nonnull align 8 dereferenceable(56) %3), !noalias !18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !18
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.bi = load i64, ptr %i.bc, align 8, !noalias !24 ; 6 uses
  %i.bj = icmp ult i64 %i.bi, 4611686018427387903
  call void @llvm.assume(i1 %i.bj)
  %i.bk = load ptr, ptr %5, align 8, !noalias !24 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 11 uses
  store ptr %i.bl, ptr %10, align 8, !alias.scope !24
  %i.bm = icmp eq ptr %i.bk, null
  %i.bn = icmp ne i64 %i.bi, 0
  %or.cond.i.i.i = and i1 %i.bn, %i.bm
  br i1 %or.cond.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.67) #26
  unreachable

bb.p:                                             ; preds = %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !24
  store i64 %i.bi, ptr %i.b, align 8, !noalias !24
  %i.bo = icmp samesign ugt i64 %i.bi, 15
  br i1 %i.bo, label %bb.q, label %._crit_edge.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.bp = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #25 ; 2 uses
  store ptr %i.bp, ptr %10, align 8, !alias.scope !24
  %i.bq = load i64, ptr %i.b, align 8, !noalias !24
  store i64 %i.bq, ptr %i.bl, align 8, !alias.scope !24
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.q, %bb.p
  %i.br = phi ptr [ %i.bp, %bb.q ], [ %i.bl, %bb.p ] ; 2 uses
  switch i64 %i.bi, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bs = load i8, ptr %i.bk, align 1
  store i8 %i.bs, ptr %i.br, align 1
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

bb.s:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %i.bk, i64 %i.bi, i1 false)
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i: ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i.i
  %i.bt = load i64, ptr %i.b, align 8, !noalias !24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  store i64 %i.bt, ptr %i.bu, align 8, !alias.scope !24
  %i.bv = load ptr, ptr %10, align 8, !alias.scope !24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bt
  store i8 0, ptr %i.bw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !24
  %i.bx = load ptr, ptr %5, align 8, !noalias !18 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.bx, %i.bd
  br i1 %.not.i.i.i15, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.t

bb.t:                                             ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  call void @free(ptr noundef %i.bx) #25
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !15
  %i.by = load ptr, ptr %9, align 8               ; 6 uses
  %i.bz = icmp eq ptr %i.by, %i.ab
  %i.ca = load ptr, ptr %10, align 8              ; 5 uses
  %i.cb = icmp eq ptr %i.ca, %i.bl                ; 2 uses
  br i1 %i.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  br i1 %i.cb, label %bb.u, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  br i1 %i.cb, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cc = load i64, ptr %i.bu, align 8            ; 3 uses
  %i.cd = icmp ult i64 %i.cc, 16
  call void @llvm.assume(i1 %i.cd)
  switch i64 %i.cc, label %bb.w [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.ce = load i8, ptr %i.ca, align 1
  store i8 %i.ce, ptr %i.by, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.ca, i64 %i.cc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.w, %bb.v, %bb.u
  %i.cf = load i64, ptr %i.bu, align 8            ; 2 uses
  store i64 %i.cf, ptr %i.ak, align 8
  %i.cg = load ptr, ptr %9, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store i8 0, ptr %i.ch, align 1
  %.pre.i = load ptr, ptr %10, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ca, ptr %9, align 8
  %i.ci = load i64, ptr %i.bu, align 8
  store i64 %i.ci, ptr %i.ak, align 8
  %i.cj = load i64, ptr %i.bl, align 8
  store i64 %i.cj, ptr %i.ab, align 8
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ck = load i64, ptr %i.ab, align 8
  store ptr %i.ca, ptr %9, align 8
  %i.cl = load i64, ptr %i.bu, align 8
  store i64 %i.cl, ptr %i.ak, align 8
  %i.cm = load i64, ptr %i.bl, align 8
  store i64 %i.cm, ptr %i.ab, align 8
  %.not.i = icmp eq ptr %i.by, null
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.by, ptr %10, align 8
  store i64 %i.ck, ptr %i.bl, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bl, ptr %10, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.x, %bb.y
  %i.cn = phi ptr [ %i.by, %bb.x ], [ %i.bl, %bb.y ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.bu, align 8
  store i8 0, ptr %i.cn, align 1
  %i.co = load ptr, ptr %10, align 8              ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.bl
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cq = load i64, ptr %i.bl, align 8
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %.pre = load ptr, ptr %9, align 8, !noalias !25
  %.pre55 = load i64, ptr %i.ak, align 8, !noalias !25
  br label %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit35

_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cs = phi i64 [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit14 ], [ %.pre55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 7, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.ct = phi ptr [ %.pre54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit14 ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pre54, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.df = load i64, ptr %i.de, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !25
  store ptr %i.ct, ptr %6, align 16, !noalias !25
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cs, ptr %i.dg, align 8, !noalias !25
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.cv, ptr %i.dh, align 16, !noalias !25
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.cx, ptr %i.di, align 16, !noalias !25
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 %i.cz, ptr %i.dj, align 16, !noalias !25
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 %i.db, ptr %i.dk, align 16, !noalias !25
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 80
  store i64 %i.dd, ptr %i.dl, align 16, !noalias !25
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i64 %i.df, ptr %i.dm, align 16, !noalias !25
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.do = load ptr, ptr %8, align 8, !noalias !25
  %i.dp = load i64, ptr %i.e, align 8, !noalias !25
  store ptr %i.do, ptr %i.dn, align 16, !noalias !25
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i64 %i.dp, ptr %i.dq, align 8, !noalias !25
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !28
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.dt, align 8, !noalias !28
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ds, align 8, !noalias !28
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.du, ptr %4, align 8, !noalias !28
  store i64 500, ptr %i.dr, align 8, !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !28
  store ptr @.str.20, ptr %2, align 8, !noalias !28
  %.sroa.2.0..sroa_idx.i14.i30 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 53, ptr %.sroa.2.0..sroa_idx.i14.i30, align 8, !noalias !28
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.dv, align 8, !noalias !28
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %4, ptr %i.dw, align 8, !noalias !28
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 3561243725, ptr %i.dx, align 8, !noalias !28
  %.sroa.2.0..sroa_idx.i15.i31 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %6, ptr %.sroa.2.0..sroa_idx.i15.i31, align 8, !noalias !28
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr null, ptr %i.dy, align 8, !noalias !28
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.20, i64 53, ptr noundef nonnull align 8 dereferenceable(56) %2), !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !28
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.dz = load i64, ptr %i.dt, align 8, !noalias !34 ; 6 uses
  %i.ea = icmp ult i64 %i.dz, 4611686018427387903
  call void @llvm.assume(i1 %i.ea)
  %i.eb = load ptr, ptr %4, align 8, !noalias !34 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.ec, ptr %11, align 8, !alias.scope !34
  %i.ed = icmp eq ptr %i.eb, null
  %i.ee = icmp ne i64 %i.dz, 0
  %or.cond.i.i.i16 = and i1 %i.ee, %i.ed
  br i1 %or.cond.i.i.i16, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit35
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.67) #26
  unreachable

bb.aa:                                            ; preds = %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !34
  store i64 %i.dz, ptr %i.a, align 8, !noalias !34
  %i.ef = icmp samesign ugt i64 %i.dz, 15
  br i1 %i.ef, label %bb.ab, label %._crit_edge.i.i.i.i17

bb.ab:                                            ; preds = %bb.aa
  %i.eg = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #25 ; 2 uses
  store ptr %i.eg, ptr %11, align 8, !alias.scope !34
  %i.eh = load i64, ptr %i.a, align 8, !noalias !34
  store i64 %i.eh, ptr %i.ec, align 8, !alias.scope !34
  br label %._crit_edge.i.i.i.i17

._crit_edge.i.i.i.i17:                            ; preds = %bb.ab, %bb.aa
  %i.ei = phi ptr [ %i.eg, %bb.ab ], [ %i.ec, %bb.aa ] ; 2 uses
  switch i64 %i.dz, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i18
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i17
  %i.ej = load i8, ptr %i.eb, align 1
  store i8 %i.ej, ptr %i.ei, align 1
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i18

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr align 1 %i.eb, i64 %i.dz, i1 false)
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i18

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i18: ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i.i.i17
  %i.ek = load i64, ptr %i.a, align 8, !noalias !34 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 %i.ek, ptr %i.el, align 8, !alias.scope !34
  %i.em = load ptr, ptr %11, align 8, !alias.scope !34
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ek
  store i8 0, ptr %i.en, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !34
  %i.eo = load ptr, ptr %4, align 8, !noalias !28 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.eo, %i.du
  br i1 %.not.i.i.i19, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit20, label %bb.ae

bb.ae:                                            ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i18
  call void @free(ptr noundef %i.eo) #25
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit20

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit20: ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i18, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !25
  %i.ep = load ptr, ptr %11, align 8
  %i.eq = load i64, ptr %i.el, align 8
  %i.er = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ep, i64 noundef %i.eq) #25 ; 0 uses
  %i.es = load ptr, ptr %11, align 8              ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.ec
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit20
  %i.eu = load i64, ptr %i.ec, align 8
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.ew = load ptr, ptr %9, align 8               ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.ab
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.ey = load i64, ptr %i.ab, align 8
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.fa = load ptr, ptr %8, align 8               ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.d
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.fc = load i64, ptr %i.d, align 8
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN4LIEF3ELF9to_stringENS0_7Segment5FLAGSE(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i32 %0, 5
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4LIEF3ELF9to_stringENS0_7Segment5FLAGSE, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.18, %bb.a ]
  ret ptr %.0
}

declare noundef zeroext i1 @_ZNK4LIEF6ObjecteqERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4LIEF6ObjectneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #25
  %i.d = xor i1 %i.c, true
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF3ELF7SegmentD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF7SegmentE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28, !inline_history !6
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN4LIEF3ELF7SegmentD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #28, !inline_history !6
  br label %_ZN4LIEF3ELF7SegmentD2Ev.exit

_ZN4LIEF3ELF7SegmentD2Ev.exit:                    ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %bb.c
  tail call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(136) %0) #25, !inline_history !6
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #7 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail11assert_failEPKciS3_(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.71, ptr noundef %0, i32 noundef %1, ptr noundef %2) #29 ; 0 uses
  tail call void @abort() #26
  unreachable
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #16

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %"class.fmt::v11::parse_context", align 8 ; 4 uses
  %4 = alloca %"class.fmt::v11::context", align 8 ; 5 uses
  %5 = alloca %class.anon.575, align 8            ; 5 uses
  %6 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %7 = alloca %"struct.fmt::v11::format_specs", align 8 ; 5 uses
  %8 = alloca %class.anon.550, align 8            ; 5 uses
  %9 = alloca %"struct.fmt::v11::format_specs", align 4 ; 4 uses
  %10 = alloca %"struct.fmt::v11::detail::dragonbox::decimal_fp.556", align 8 ; 5 uses
  %11 = alloca %"struct.fmt::v11::format_specs", align 8 ; 5 uses
  %12 = alloca %class.anon.550, align 8           ; 5 uses
  %13 = alloca %"struct.fmt::v11::format_specs", align 4 ; 4 uses
  %14 = alloca %"struct.fmt::v11::detail::dragonbox::decimal_fp", align 8 ; 4 uses
  %15 = alloca %class.anon.549, align 8           ; 5 uses
  %16 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %17 = alloca %"class.fmt::v11::parse_context", align 8 ; 4 uses
  %18 = alloca %"class.fmt::v11::context", align 8 ; 5 uses
  %19 = alloca %class.anon.575, align 8           ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN4LIEF12BinaryStream1pEv:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(24) %0) #25
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4LIEF12BinaryStream3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(24) %0) #25
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4LIEF10SpanStream5startEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4LIEF10SpanStream3endEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(40) %0) #25
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNK4LIEF10SpanStream7read_atEmmm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0) #25 ; 2 uses
  %i.e = icmp ule i64 %1, %i.d
  %i.f = add i64 %2, %1
  %i.g = icmp ule i64 %i.f, %i.d
  %or.cond.not = and i1 %i.e, %i.g                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %1
  %.sroa.08.0 = select i1 %or.cond.not, ptr %i.j, ptr inttoptr (i64 1 to ptr)
  %.sroa.3.0 = zext i1 %or.cond.not to i8
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.08.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4LIEF12BinaryStream7peek_inEPvmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { ptr, i8 } %i.c(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2, i64 noundef %3, i64 noundef %4) #25 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i8 } %i.d, 0 ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.d, 1
  %i.e = trunc nuw i8 %.fca.1.extract to i1
  %.not = xor i1 %i.e, true
  %i.f = icmp eq ptr %1, null
  %or.cond = or i1 %i.f, %.not
  %i.g = icmp eq ptr %.fca.0.extract, null
  %or.cond17 = select i1 %or.cond, i1 true, i1 %i.g
  br i1 %or.cond17, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %.fca.0.extract, i64 %3, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.a
  %.sroa.415.1 = phi i64 [ 1, %bb.a ], [ 4294967297, %bb.b ]
  ret i64 %.sroa.415.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { builtin nounwind allocsize(0) }
attributes #28 = { builtin nounwind }
attributes #29 = { cold nounwind }
attributes #30 = { noreturn }
attributes #31 = { nounwind allocsize(0) }
attributes #32 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{ptr @_ZN4LIEF3ELF7SegmentD2Ev}
!7 = distinct !{null, null, null, null, null}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{null, null, null, null, null}
!11 = distinct !{!11, !9}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZSt11make_uniqueIN4LIEF10SpanStreamEJN3tcb4spanIKhLm18446744073709551615EEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!14 = distinct !{!14, !"_ZSt11make_uniqueIN4LIEF10SpanStreamEJN3tcb4spanIKhLm18446744073709551615EEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN3fmt3v116formatIJjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!17 = distinct !{!17, !"_ZN3fmt3v116formatIJjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!20 = distinct !{!20, !"_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!23 = distinct !{!23, !"_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!24 = !{!22, !19}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN3fmt3v116formatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmmmmmmS8_EEES7_NS0_7fstringIJDpT_EE1tEDpOSA_: argument 0"}
!27 = distinct !{!27, !"_ZN3fmt3v116formatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmmmmmmS8_EEES7_NS0_7fstringIJDpT_EE1tEDpOSA_"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!30 = distinct !{!30, !"_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!33 = distinct !{!33, !"_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!34 = !{!32, !29}
!35 = !{!36, !38}
!36 = distinct !{!36, !37, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi: argument 0"}
!37 = distinct !{!37, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi"}
!38 = distinct !{!38, !39, !"_ZNK3fmt3v117context3argEi: argument 0"}
!39 = distinct !{!39, !"_ZNK3fmt3v117context3argEi"}
!40 = distinct !{null, null, null, null}
!41 = distinct !{!41, !9}
!42 = distinct !{null, null, null, null}
!43 = distinct !{!43, !9}
!44 = distinct !{null, null, null, null}
!45 = distinct !{null, null, null, null, null}
!46 = distinct !{!46, !9}
!47 = distinct !{null, null}
!48 = !{!49, !51}
!49 = distinct !{!49, !50, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi: argument 0"}
!50 = distinct !{!50, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi"}
!51 = distinct !{!51, !52, !"_ZNK3fmt3v117context3argEi: argument 0"}
!52 = distinct !{!52, !"_ZNK3fmt3v117context3argEi"}
!53 = distinct !{null, null}
!54 = distinct !{null, null, null}
!55 = distinct !{null, null, null}
!56 = distinct !{!56, !9, !57, !58}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = !{!"llvm.loop.unroll.runtime.disable"}
!59 = !{!"branch_weights", i32 4, i32 28}
!60 = distinct !{!60, !9, !57, !58}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = distinct !{!63, !9}
!64 = distinct !{!64, !9, !57}
!65 = distinct !{!65, !9}
!66 = distinct !{!66, !9}
!67 = !{ptr @_ZN3fmt3v1112format_facetISt6localeED2Ev}
!68 = distinct !{!68, !9}
!69 = distinct !{null, null}
!70 = distinct !{null, null, null}
!71 = distinct !{!71, !9, !57, !58}
!72 = distinct !{!72, !9, !57, !58}
!73 = distinct !{!73, !62}
!74 = distinct !{!74, !9, !57}
!75 = distinct !{!75, !9}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZNKSt7__cxx118numpunctIcE8groupingEv: argument 0"}
!78 = distinct !{!78, !"_ZNKSt7__cxx118numpunctIcE8groupingEv"}
!79 = distinct !{null}
!80 = distinct !{null}
!81 = !{}
!82 = !{i64 4}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZN3fmt3v116detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!85 = distinct !{!85, !"_ZN3fmt3v116detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZN3fmt3v116detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!88 = distinct !{!88, !"_ZN3fmt3v116detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!89 = distinct !{!89, !9}
!90 = distinct !{!90, !9}
!91 = distinct !{!91, !9}
!92 = distinct !{null, null, null, null}
!93 = distinct !{!93, !9}
!94 = !{i64 8}
!95 = !{i8 0, i8 2}
!96 = distinct !{null, null, null, null}
!97 = distinct !{null, null, null, null}
!98 = distinct !{!98, !9}
!99 = distinct !{!99, !9, !57, !58}
!100 = distinct !{!100, !9, !57, !58}
!101 = distinct !{!101, !62}
!102 = distinct !{!102, !9, !57}
!103 = distinct !{!103, !9}
!104 = distinct !{!104, !9}
!105 = distinct !{!105, !9}
!106 = distinct !{!106, !9}
!107 = distinct !{null, null}
!108 = distinct !{!108, !9, !57, !58}
!109 = distinct !{!109, !9, !57, !58}
!110 = distinct !{!110, !62}
!111 = distinct !{!111, !9, !57}
!112 = distinct !{!112, !9}
!113 = distinct !{!113, !9}
!114 = distinct !{!114, !9}
!115 = distinct !{!115, !9}
!116 = distinct !{!116, !9}
!117 = distinct !{null, null, null, null}
!118 = distinct !{!118, !9}
!119 = distinct !{null, null, null, null, null}
!120 = distinct !{!120, !9}
!121 = distinct !{null, null, null, null}
!122 = distinct !{!122, !9, !57, !58}
!123 = distinct !{!123, !9, !57, !58}
!124 = distinct !{!124, !62}
!125 = distinct !{!125, !9, !57}
!126 = distinct !{null, null, null, null}
!127 = distinct !{!127, !9}
!128 = distinct !{null, null, null, null}
!129 = distinct !{!129, !9, !57, !58}
!130 = distinct !{!130, !9, !57, !58}
!131 = distinct !{!131, !62}
!132 = distinct !{!132, !9, !57}
!133 = distinct !{null, null, null, null}
!134 = distinct !{null, null, null, null}
!135 = distinct !{!135, !9, !57, !58}
!136 = distinct !{!136, !9, !57, !58}
!137 = distinct !{!137, !62}
!138 = distinct !{!138, !9, !57}
!139 = distinct !{null, null, null}
!140 = distinct !{null, null, null, null}
!141 = distinct !{null, null, null, null}
!142 = distinct !{null, null, null, null}
!143 = distinct !{!143, !9}
!144 = distinct !{null, null, null, null}
!145 = distinct !{!145, !9}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZN3fmt3v116detail18thousands_sep_implIcEENS1_20thousands_sep_resultIT_EENS1_10locale_refE: argument 0"}
!148 = distinct !{!148, !"_ZN3fmt3v116detail18thousands_sep_implIcEENS1_20thousands_sep_resultIT_EENS1_10locale_refE"}
!149 = !{!150, !147}
!150 = distinct !{!150, !151, !"_ZNKSt7__cxx118numpunctIcE8groupingEv: argument 0"}
!151 = distinct !{!151, !"_ZNKSt7__cxx118numpunctIcE8groupingEv"}
!152 = distinct !{null, null}
!153 = distinct !{null, null}
!154 = distinct !{null, null, null, null}
!155 = distinct !{null, null, null, null, null}
!156 = distinct !{null, null, null, null}
!157 = distinct !{null, null, null, null}
!158 = distinct !{null, null, null, null}
!159 = distinct !{!159, !9}
!160 = distinct !{null, null, null, null}
!161 = distinct !{null, null, null, null, null}
!162 = distinct !{!162, !9}
!163 = distinct !{null, null}
!164 = distinct !{null, null}
!165 = distinct !{!165, !9, !57, !58}
!166 = distinct !{!166, !9, !57, !58}
!167 = distinct !{!167, !62}
!168 = distinct !{!168, !9, !57}
!169 = distinct !{!169, !9}
!170 = distinct !{null, null}
!171 = distinct !{!171, !9}
!172 = distinct !{null, null, null, null}
!173 = distinct !{!173, !9, !57, !58}
!174 = distinct !{!174, !9, !57, !58}
!175 = distinct !{!175, !62}
!176 = distinct !{!176, !9, !57}
!177 = distinct !{!177, !9}
!178 = distinct !{null, null, null, null, null}
!179 = distinct !{!179, !9}
!180 = distinct !{null, null, null}
!181 = distinct !{null, null, null, null, null}
!182 = distinct !{null, null, null, null}
!183 = distinct !{!183, !9, !57, !58}
!184 = distinct !{!184, !9, !57}
!185 = distinct !{!185, !9, !57, !58}
!186 = distinct !{!186, !9, !57}
!187 = distinct !{!187, !9}
!188 = distinct !{null, null, null, null}
!189 = distinct !{!189, !9}
!190 = distinct !{null, null, null, null, null}
!191 = distinct !{!191, !9}
!192 = distinct !{!192, !9}
!193 = distinct !{null, null, null, null}
!194 = distinct !{!194, !9}
!195 = distinct !{!195, !9}
!196 = distinct !{!196, !9}
!197 = distinct !{!197, !9}
!198 = distinct !{!198, !9}
!199 = distinct !{null, null, null, null}
!200 = distinct !{!200, !62}
!201 = distinct !{!201, !9}
!202 = distinct !{!202, !9}
!203 = distinct !{!203, !9}
!204 = distinct !{null, null, null, null, null}
!205 = distinct !{!205, !9}
!206 = distinct !{null, null, null}
!207 = distinct !{!207, !9}
!208 = distinct !{!208, !9}
!209 = distinct !{null, null, null, null}
!210 = distinct !{!210, !9}
!211 = distinct !{!211, !9}
!212 = distinct !{null, null, null, null}
!213 = distinct !{null, null, null, null}
!214 = distinct !{null, null, null, null}
!215 = distinct !{null, null, null, null}
!216 = distinct !{!216, !9, !57, !58}
!217 = distinct !{!217, !9, !57, !58}
!218 = distinct !{!218, !62}
!219 = distinct !{!219, !9, !57}
!220 = distinct !{null, null, null, null}
!221 = distinct !{!221, !9, !57, !58}
!222 = distinct !{!222, !9, !57, !58}
!223 = distinct !{!223, !62}
!224 = distinct !{!224, !9, !57}
!225 = distinct !{!225, !9, !57, !58}
!226 = distinct !{!226, !9, !57, !58}
!227 = distinct !{!227, !62}
end_hunk_1
