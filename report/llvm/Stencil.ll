Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Stencil?download=true
inline.NumInlined: 1685
inline.NumDeleted: 830
begin_hunk_0_@_ZNK12_GLOBAL__N_118SelectBoundStencil4evalERKN5clang12ast_matchers11MatchFinder11MatchResultEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %.not44 = icmp eq ptr %i.ag, %i.d
  br i1 %.not44, label %.critedge17, label %.lr.ph.i.i.i

.critedge17:                                      ; preds = %.critedge, %.lr.ph, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33 ; 3 uses
  %.not45 = icmp eq ptr %i.ai, null
  br i1 %.not45, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge17
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %3) #19
  br label %bb.k

bb.f:                                             ; preds = %.critedge17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.am, ptr %5, align 8, !tbaa !505
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i32 0, ptr %i.an, align 8, !tbaa !506
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 2, ptr %i.ao, align 4, !tbaa !507
  %i.ap = ptrtoint ptr %i.d to i64
  %i.aq = ptrtoint ptr %i.b to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = sdiv exact i64 %i.ar, 48                ; 2 uses
  %i.at = icmp ugt i64 %i.as, 2
  br i1 %i.at, label %bb.g, label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.am, i64 noundef %i.as, i64 noundef 16) #19
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !46
  %.pre61 = load ptr, ptr %i.c, align 8, !tbaa !46
  br label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit

_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit: ; preds = %bb.f, %bb.g
  %i.au = phi ptr [ %i.d, %bb.f ], [ %.pre61, %bb.g ] ; 2 uses
  %i.av = phi ptr [ %i.b, %bb.f ], [ %.pre, %bb.g ] ; 2 uses
  %.not4650 = icmp eq ptr %i.av, %i.au
  br i1 %.not4650, label %_ZN4llvmplERKNS_5TwineES2_.exit32, label %.lr.ph52

_ZN4llvmplERKNS_5TwineES2_.exit32:                ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS1_DpOT_.exit, %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.ax = load ptr, ptr %5, align 8, !tbaa !505, !noalias !884 ; 2 uses
  %i.ay = load i32, ptr %i.an, align 8, !tbaa !506, !noalias !884
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.az
  call void @_ZN4llvm6detail9join_implIPNS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_SA_S2_St20forward_iterator_tag(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %i.ax, ptr noundef %i.ba, ptr nonnull @.str.32, i64 2)
  store ptr @.str.33, ptr %7, align 8, !tbaa !22, !alias.scope !885
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %8, ptr %i.bb, align 8, !tbaa !22, !alias.scope !885
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 3, ptr %i.bc, align 8, !tbaa !495, !alias.scope !885
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 4, ptr %i.bd, align 1, !tbaa !496, !alias.scope !885
  store ptr %7, ptr %6, align 8, !tbaa !22, !alias.scope !886
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.34, ptr %i.be, align 8, !tbaa !22, !alias.scope !886
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.bf, align 8, !tbaa !495, !alias.scope !886
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.bg, align 1, !tbaa !496, !alias.scope !886
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !887
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(34) %6) #19, !noalias !887
  call void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 34, ptr nonnull %i.aw) #19
  %i.bh = load ptr, ptr %4, align 8, !tbaa !21, !noalias !887 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZN4llvm17createStringErrorESt10error_codeRKNS_5TwineE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit32
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !22, !noalias !887
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #22
  br label %_ZN4llvm17createStringErrorESt10error_codeRKNS_5TwineE.exit

_ZN4llvm17createStringErrorESt10error_codeRKNS_5TwineE.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !887
  %i.bm = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm17createStringErrorESt10error_codeRKNS_5TwineE.exit
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !22
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm17createStringErrorESt10error_codeRKNS_5TwineE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.br = load ptr, ptr %5, align 8, !tbaa !505   ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.am
  br i1 %i.bs, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @free(ptr noundef %i.br) #19
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.k

.lr.ph52:                                         ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit, %_ZN4llvm15SmallVectorImplINS_9StringRefEE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS1_DpOT_.exit
  %.sroa.035.051 = phi ptr [ %i.ce, %_ZN4llvm15SmallVectorImplINS_9StringRefEE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS1_DpOT_.exit ], [ %i.av, %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit ] ; 4 uses
  %i.bt = load i32, ptr %i.an, align 8, !tbaa !506 ; 3 uses
  %i.bu = load i32, ptr %i.ao, align 4, !tbaa !507
  %.not.i = icmp ult i32 %i.bt, %i.bu
  br i1 %.not.i, label %bb.j, label %bb.i, !prof !508

bb.i:                                             ; preds = %.lr.ph52
  %i.bv = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE18growAndEmplaceBackIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.035.051) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_9StringRefEE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS1_DpOT_.exit

bb.j:                                             ; preds = %.lr.ph52
  %i.bw = zext i32 %i.bt to i64
  %i.bx = load ptr, ptr %5, align 8, !tbaa !505
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bw ; 2 uses
  %i.bz = load ptr, ptr %.sroa.035.051, align 8, !tbaa !21
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !889
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.035.051, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !23
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !890
  %i.cd = add nuw i32 %i.bt, 1
  store i32 %i.cd, ptr %i.an, align 8, !tbaa !506
  br label %_ZN4llvm15SmallVectorImplINS_9StringRefEE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS1_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_9StringRefEE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS1_DpOT_.exit: ; preds = %bb.i, %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.035.051, i64 48 ; 2 uses
  %.not46 = icmp eq ptr %i.ce, %i.au
  br i1 %.not46, label %_ZN4llvmplERKNS_5TwineES2_.exit32, label %.lr.ph52

bb.k:                                             ; preds = %bb.d, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_118SelectBoundStencil8toStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.llvm::raw_string_ostream", align 8 ; 22 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !23
  store i8 0, ptr %i.a, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %2, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %0, ptr %i.g, align 8, !tbaa !67
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 21 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !69   ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ult i64 %i.n, 13
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.35, i64 noundef 13) #19 ; 0 uses
  %.pre37.pre = load ptr, ptr %i.j, align 8, !tbaa !69
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.k, ptr noundef nonnull align 1 dereferenceable(13) @.str.35, i64 13, i1 false)
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 13 ; 2 uses
  store ptr %i.r, ptr %i.j, align 8, !tbaa !69
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.pre37 = phi ptr [ %.pre37.pre, %bb.b ], [ %i.r, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !46   ; 3 uses
  %.not31 = icmp eq ptr %i.t, %i.v
  br i1 %.not31, label %._crit_edge, label %_ZN4llvm11raw_ostreamlsEPKc.exit11.peel

_ZN4llvm11raw_ostreamlsEPKc.exit11.peel:          ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !68
  %.pre42 = ptrtoint ptr %.pre to i64
  %.pre43 = ptrtoint ptr %.pre37 to i64
  %.pre45 = sub i64 %.pre42, %.pre43
  %i.y = icmp ult i64 %.pre45, 2
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11.peel
  store i16 8827, ptr %.pre37, align 1
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  store ptr %i.aa, ptr %i.j, align 8, !tbaa !69
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14.peel

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11.peel
  %i.ab = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.37, i64 noundef 2) #19
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14.peel

_ZN4llvm11raw_ostreamlsEPKc.exit14.peel:          ; preds = %bb.e, %bb.d
  %.0.i.i13.peel = phi ptr [ %i.ab, %bb.e ], [ %2, %bb.d ]
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !23
  %i.af = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i13.peel, ptr noundef %i.ac, i64 noundef %i.ae) #19 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !68
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = icmp ult i64 %i.am, 3
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit14.peel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aj, ptr noundef nonnull align 1 dereferenceable(3) @.str.29, i64 3, i1 false)
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !69
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  store ptr %i.ap, ptr %i.ai, align 8, !tbaa !69
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17.peel

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit14.peel
  %i.aq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull @.str.29, i64 noundef 3) #19
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17.peel

_ZN4llvm11raw_ostreamlsEPKc.exit17.peel:          ; preds = %bb.g, %bb.f
  %.0.i.i16.peel = phi ptr [ %i.aq, %bb.g ], [ %i.af, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !33 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !28
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.as) #19
  %i.aw = load ptr, ptr %3, align 8, !tbaa !21
  %i.ax = load i64, ptr %i.w, align 8, !tbaa !23
  %i.ay = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i16.peel, ptr noundef %i.aw, i64 noundef %i.ax) #19 ; 0 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.x
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit17.peel
  %i.bb = load i64, ptr %i.x, align 8, !tbaa !22
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit17.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %.not.peel = icmp eq ptr %i.bd, %i.v
  br i1 %.not.peel, label %._crit_edge.loopexit, label %.peel.next

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %.pre36 = load ptr, ptr %i.j, align 8, !tbaa !69
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.be = phi ptr [ %.pre36, %._crit_edge.loopexit ], [ %.pre37, %_ZN4llvm11raw_ostreamlsEPKc.exit ] ; 2 uses
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = icmp ult i64 %i.bi, 2
  br i1 %i.bj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.bk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.38, i64 noundef 2) #19 ; 0 uses
  %.pre39.pre = load ptr, ptr %i.j, align 8, !tbaa !69
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit8

bb.i:                                             ; preds = %._crit_edge
  store i16 32125, ptr %i.be, align 1
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !69
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2 ; 2 uses
  store ptr %i.bm, ptr %i.j, align 8, !tbaa !69
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit8

_ZN4llvm11raw_ostreamlsEPKc.exit8:                ; preds = %bb.h, %bb.i
  %.pre39 = phi ptr [ %.pre39.pre, %bb.h ], [ %i.bm, %bb.i ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !33
  %.not30 = icmp eq ptr %i.bo, null
  br i1 %.not30, label %bb.s, label %bb.p

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.027.032 = phi ptr [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 4 uses
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.bq = load ptr, ptr %i.j, align 8, !tbaa !69  ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = icmp ult i64 %i.bt, 3
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.peel.next
  %i.bv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.36, i64 noundef 3) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit11

bb.k:                                             ; preds = %.peel.next
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bq, ptr noundef nonnull align 1 dereferenceable(3) @.str.36, i64 3, i1 false)
  %i.bw = load ptr, ptr %i.j, align 8, !tbaa !69
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 3
  store ptr %i.bx, ptr %i.j, align 8, !tbaa !69
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit11

_ZN4llvm11raw_ostreamlsEPKc.exit11:               ; preds = %bb.k, %bb.j
  %i.by = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.bz = load ptr, ptr %i.j, align 8, !tbaa !69  ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = icmp ult i64 %i.cc, 2
  br i1 %i.cd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11
  %i.ce = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.37, i64 noundef 2) #19
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11
  store i16 8827, ptr %i.bz, align 1
  %i.cf = load ptr, ptr %i.j, align 8, !tbaa !69
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  store ptr %i.cg, ptr %i.j, align 8, !tbaa !69
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

_ZN4llvm11raw_ostreamlsEPKc.exit14:               ; preds = %bb.l, %bb.m
  %.0.i.i13 = phi ptr [ %i.ce, %bb.l ], [ %2, %bb.m ]
  %i.ch = load ptr, ptr %.sroa.027.032, align 8, !tbaa !21
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.027.032, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !23
  %i.ck = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i13, ptr noundef %i.ch, i64 noundef %i.cj) #19 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !68
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 32 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !69 ; 2 uses
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = icmp ult i64 %i.cr, 3
  br i1 %i.cs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit14
  %i.ct = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ck, ptr noundef nonnull @.str.29, i64 noundef 3) #19
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.co, ptr noundef nonnull align 1 dereferenceable(3) @.str.29, i64 3, i1 false)
  %i.cu = load ptr, ptr %i.cn, align 8, !tbaa !69
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 3
  store ptr %i.cv, ptr %i.cn, align 8, !tbaa !69
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17

_ZN4llvm11raw_ostreamlsEPKc.exit17:               ; preds = %bb.n, %bb.o
  %.0.i.i16 = phi ptr [ %i.ct, %bb.n ], [ %i.ck, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.027.032, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !33 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !28
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.cx) #19
  %i.db = load ptr, ptr %3, align 8, !tbaa !21
  %i.dc = load i64, ptr %i.w, align 8, !tbaa !23
  %i.dd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i16, ptr noundef %i.db, i64 noundef %i.dc) #19 ; 0 uses
  %i.de = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.x
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit17
  %i.dg = load i64, ptr %i.x, align 8, !tbaa !22
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.027.032, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.di, %i.v
  br i1 %.not, label %._crit_edge.loopexit, label %.peel.next, !llvm.loop !891

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit8
  %i.dj = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %.pre39 to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = icmp ult i64 %i.dm, 2
  br i1 %i.dn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.do = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.32, i64 noundef 2) #19
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit20

bb.r:                                             ; preds = %bb.p
  store i16 8236, ptr %.pre39, align 1
  %i.dp = load ptr, ptr %i.j, align 8, !tbaa !69
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  store ptr %i.dq, ptr %i.j, align 8, !tbaa !69
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit20

_ZN4llvm11raw_ostreamlsEPKc.exit20:               ; preds = %bb.q, %bb.r
  %.0.i.i19 = phi ptr [ %i.do, %bb.q ], [ %2, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.dr = load ptr, ptr %i.bn, align 8, !tbaa !33 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !28
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.dr) #19
  %i.dv = load ptr, ptr %4, align 8, !tbaa !21
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !23
  %i.dy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i19, ptr noundef %i.dv, i64 noundef %i.dx) #19 ; 0 uses
  %i.dz = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit20
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !22
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.pre38 = load ptr, ptr %i.j, align 8, !tbaa !69
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZN4llvm11raw_ostreamlsEPKc.exit8
  %i.ee = phi ptr [ %.pre38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %.pre39, %_ZN4llvm11raw_ostreamlsEPKc.exit8 ] ; 2 uses
  %i.ef = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.eg = icmp eq ptr %i.ef, %i.ee
  br i1 %i.eg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.30, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit26

bb.u:                                             ; preds = %bb.s
  store i8 41, ptr %i.ee, align 1
  %i.ei = load ptr, ptr %i.j, align 8, !tbaa !69
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  store ptr %i.ej, ptr %i.j, align 8, !tbaa !69
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit26

_ZN4llvm11raw_ostreamlsEPKc.exit26:               ; preds = %bb.t, %bb.u
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
end_hunk_0
