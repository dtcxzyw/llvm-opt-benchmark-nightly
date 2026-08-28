Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SourceCoverageViewHTML?download=true
inline.NumInlined: 2388
inline.NumDeleted: 858
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm6detail9join_implIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_T_S9_NS_9StringRefESt20forward_iterator_tag:bb.a
  br i1 %.not, label %bb.c, label %bb.e, !llvm.loop !539

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit22
  %i.x = phi ptr [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit22 ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ] ; 3 uses
  %.028 = phi ptr [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit22 ], [ %1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ]
  %i.y = load i64, ptr %i.b, align 8, !tbaa !17
  %i.z = sub i64 4611686018427387903, %i.y
  %i.aa = icmp ult i64 %i.z, %4
  br i1 %i.aa, label %bb.f, label %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit

bb.f:                                             ; preds = %.lr.ph
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.89) #23
  unreachable

_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit: ; preds = %.lr.ph
  %i.ab = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %3, i64 noundef %4) #21 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.028, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !17 ; 2 uses
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !17
  %i.af = sub i64 4611686018427387903, %i.ae
  %i.ag = icmp ult i64 %i.af, %i.ad
  br i1 %i.ag, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit22

bb.g:                                             ; preds = %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.89) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit22: ; preds = %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !24
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ah, i64 noundef %i.ad) #21 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %.not21 = icmp eq ptr %i.aj, %2
  br i1 %.not21, label %.loopexit, label %.lr.ph, !llvm.loop !540

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %bb.a
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN12_GLOBAL__N_112emitTableRowERN4llvm11raw_ostreamERKNS0_19CoverageViewOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19FileCoverageSummaryEbENK3$_0clEjjf"(ptr %.0.val, ptr nofree readonly captures(none) %.8.val, i32 noundef %0, i32 noundef %1, float noundef %2) unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %class.anon.166, align 8            ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.llvm::raw_string_ostream", align 8 ; 21 uses
  %6 = alloca %"class.llvm::format_object.160", align 8 ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !17
  store i8 0, ptr %i.a, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %5, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %4, ptr %i.g, align 8, !tbaa !70
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef null, i64 noundef 0, i32 noundef 0) #21
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr @.str.121, ptr %6, align 8, !tbaa !541, !alias.scope !548
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %2, ptr %i.h, align 8, !tbaa !551, !alias.scope !548
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 7, ptr %i.i, align 4, !tbaa !552, !alias.scope !548
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %6, ptr %3, align 8, !tbaa !553
  %i.j = ptrtoint ptr %3 to i64
  %i.k = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJifEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.j) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33   ; 2 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ult i64 %i.r, 2
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.122, i64 noundef 2) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  store i16 8229, ptr %i.o, align 1
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store ptr %i.v, ptr %i.n, align 8, !tbaa !33
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !33   ; 2 uses
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp ult i64 %i.ac, 2
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.123, i64 noundef 2) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.e
  store i16 8237, ptr %i.z, align 1
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store ptr %i.ag, ptr %i.y, align 8, !tbaa !33
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !28
  %.not.i = icmp ult ptr %i.ai, %i.ak
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.al = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 noundef zeroext 40) #21
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !33
  store i8 40, ptr %i.ai, align 1, !tbaa !23
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.h, %bb.i
  %.0.i = phi ptr [ %i.al, %bb.h ], [ %5, %bb.i ]
  %i.an = zext i32 %0 to i64
  %i.ao = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, i64 noundef %i.an) #21 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !33 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !28
  %.not.i12 = icmp ult ptr %i.aq, %i.as
  br i1 %.not.i12, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.at = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, i8 noundef zeroext 47) #21
  br label %_ZN4llvm11raw_ostreamlsEc.exit14

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store ptr %i.au, ptr %i.ap, align 8, !tbaa !33
  store i8 47, ptr %i.aq, align 1, !tbaa !23
  br label %_ZN4llvm11raw_ostreamlsEc.exit14

_ZN4llvm11raw_ostreamlsEc.exit14:                 ; preds = %bb.j, %bb.k
  %.0.i13 = phi ptr [ %i.at, %bb.j ], [ %i.ao, %bb.k ]
  %i.av = zext i32 %1 to i64
  %i.aw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i13, i64 noundef %i.av) #21 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !33 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !28
  %.not.i15 = icmp ult ptr %i.ay, %i.ba
  br i1 %.not.i15, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit14
  %i.bb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, i8 noundef zeroext 41) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit17

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit14
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !33
  store i8 41, ptr %i.ay, align 1, !tbaa !23
  br label %_ZN4llvm11raw_ostreamlsEc.exit17

_ZN4llvm11raw_ostreamlsEc.exit17:                 ; preds = %bb.l, %bb.m
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %.not, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit17
  %i.bd = getelementptr inbounds nuw i8, ptr %.8.val, i64 200
  %i.be = load float, ptr %i.bd, align 8, !tbaa !555
  %i.bf = fcmp ult float %2, %i.be
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %.8.val, i64 204
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !556
  %i.bi = fcmp olt float %2, %i.bh
  %spec.select = select i1 %i.bi, ptr @.str.127, ptr @.str.124
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %_ZN4llvm11raw_ostreamlsEc.exit17
  %.0 = phi ptr [ @.str.125, %_ZN4llvm11raw_ostreamlsEc.exit17 ], [ @.str.126, %bb.n ], [ %spec.select, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.bj = load ptr, ptr %4, align 8, !tbaa !24
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !17
  call fastcc void @_ZN12_GLOBAL__N_13tagB5cxx11EN4llvm9StringRefES1_S1_(ptr dead_on_unwind noalias writable align 8 %8, ptr nonnull @.str.18, i64 3, ptr %i.bj, i64 %i.bk, ptr nonnull @.str.1, i64 0)
  %i.bl = load ptr, ptr %8, align 8, !tbaa !24
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !17
  %i.bo = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0) #21
  call fastcc void @_ZN12_GLOBAL__N_13tagB5cxx11EN4llvm9StringRefES1_S1_(ptr dead_on_unwind noalias writable align 8 %7, ptr nonnull @.str.17, i64 2, ptr %i.bl, i64 %i.bn, ptr nonnull %.0, i64 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !99 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0.val, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !100
  %.not.i19 = icmp ult i32 %i.bq, %i.bs
  br i1 %.not.i19, label %bb.q, label %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12emplace_backIJS6_EEERS6_DpOT_.exit, !prof !101

bb.q:                                             ; preds = %bb.p
  %i.bt = zext i32 %i.bq to i64
  %i.bu = load ptr, ptr %.0.val, align 8, !tbaa !97
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.bu, i64 %i.bt ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 3 uses
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !22
  %i.bx = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !17 ; 2 uses
  %i.cc = icmp ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.cc)
  %i.cd = add nuw nsw i64 %i.cb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bw, ptr noundef nonnull align 8 dereferenceable(1) %i.by, i64 %i.cd, i1 false)
  br label %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12emplace_backIJS6_EEERS6_DpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !24
  %i.ce = load i64, ptr %i.by, align 8, !tbaa !23
  store i64 %i.ce, ptr %i.bw, align 8, !tbaa !23
  br label %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12emplace_backIJS6_EEERS6_DpOT_.exit.thread

_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12emplace_backIJS6_EEERS6_DpOT_.exit.thread: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !17
  store ptr %i.by, ptr %7, align 8, !tbaa !24
  store i64 0, ptr %i.cf, align 8, !tbaa !17
  store i8 0, ptr %i.by, align 8, !tbaa !23
  %i.ci = load i32, ptr %i.bp, align 8, !tbaa !99
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.bp, align 8, !tbaa !99
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12emplace_backIJS6_EEERS6_DpOT_.exit: ; preds = %bb.p
  %i.ck = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18growAndEmplaceBackIJS6_EEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %.0.val, ptr noundef nonnull align 8 dereferenceable(32) %7) ; 0 uses
  %.pre = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %.pre, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12emplace_backIJS6_EEERS6_DpOT_.exit
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !23
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.co) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12emplace_backIJS6_EEERS6_DpOT_.exit, %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12emplace_backIJS6_EEERS6_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  %i.cp = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !23
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.cu = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.a
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.cw = load i64, ptr %i.a, align 8, !tbaa !23
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJifEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m(i64 noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !557, !nonnull !15, !align !16 ; 3 uses
  %i.c = and i64 %2, 4294967295
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !541
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !209
  %i.h = load float, ptr %i.e, align 8, !tbaa !559
  %i.i = fpext float %i.h to double
  %i.j = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.c, ptr noundef %i.d, i32 noundef %i.g, double noundef %i.i) #21
  ret i32 %i.j
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm28CoveragePrinterHTMLDirectory8ReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm23DirectoryCoverageReportE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm23DirectoryCoverageReportD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #21, !inline_history !159
  br label %_ZN4llvm23DirectoryCoverageReportD2Ev.exit

_ZN4llvm23DirectoryCoverageReportD2Ev.exit:       ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm28CoveragePrinterHTMLDirectory8Reporter26generateSubDirectoryReportEOSt3mapINS_9StringRefENS_19FileCoverageSummaryESt4lessIS3_ESaISt4pairIKS3_S4_EEEOS2_IS3_S7_IS4_NS_11SmallVectorIS3_Lj0EEEES6_SaIS7_IS8_SF_EEEOS4_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(112) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.llvm::SmallString", align 8 ; 11 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %10 = alloca %"class.llvm::Expected", align 8   ; 10 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %.sroa.040.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !62
  %.sroa.241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %.sroa.241.0.copyload = load i64, ptr %.sroa.241.0..sroa_idx, align 8, !tbaa !34 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 0, ptr %i.d, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 128, ptr %i.e, align 8, !tbaa !66
  %i.f = icmp ugt i64 %.sroa.241.0.copyload, 128
  br i1 %i.f, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i: ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(152) %5, ptr noundef nonnull %i.c, i64 noundef %.sroa.241.0.copyload, i64 noundef 1) #21
  %.pre8.pre.i.i.i = load i64, ptr %i.d, align 8, !tbaa !65
  %.pre = load ptr, ptr %5, align 8, !tbaa !63
  br label %bb.b

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp samesign eq i64 %.sroa.241.0.copyload, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i
  %i.g = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i ], [ %i.c, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ]
  %.pre8.i.i4.i = phi i64 [ %.pre8.pre.i.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.pre8.i.i4.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %.sroa.040.0.copyload, i64 %.sroa.241.0.copyload, i1 false)
end_hunk_0
