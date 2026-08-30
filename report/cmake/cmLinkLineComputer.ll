Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmLinkLineComputer?download=true
inline.NumInlined: 567
inline.NumDeleted: 230
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN18cmLinkLineComputer17SetUseWatcomQuoteEb:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN18cmLinkLineComputer16SetUseNinjaMultiEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(60) initializes((58, 59)) %0, i1 noundef zeroext %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 %i.a, ptr %i.b, align 2, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN18cmLinkLineComputer14SetForResponseEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(60) initializes((56, 57)) %0, i1 noundef zeroext %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.a, ptr %i.b, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN18cmLinkLineComputer9SetRelinkEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(60) initializes((59, 60)) %0, i1 noundef zeroext %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 %i.a, ptr %i.b, align 1, !tbaa !32
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK18cmLinkLineComputer22ConvertToLinkReferenceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  tail call void @_ZNK17cmOutputConverter24MaybeRelativeToCurBinDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

declare void @_ZNK17cmOutputConverter24MaybeRelativeToCurBinDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(108), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18cmLinkLineComputer15ComputeLinkLibsB5cxx11ER24cmComputeLinkInformation(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(60) %1, ptr noundef nonnull align 8 dereferenceable(2808) %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !36
  store i8 0, ptr %i.a, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN18cmLinkLineComputer15ComputeLinkLibsER24cmComputeLinkInformationRSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(60) %1, ptr noundef nonnull align 8 dereferenceable(2808) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN24cmComputeLinkInformation12AppendValuesERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorI2BTIS5_ESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(2808) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.d = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.f = load i64, ptr %i.a, align 8, !tbaa !38
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18cmLinkLineComputer15ComputeLinkLibsER24cmComputeLinkInformationRSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(2808) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.BT, align 8                  ; 18 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %class.cmListFileBacktrace, align 16 ; 5 uses
  %6 = alloca %class.BT, align 8                  ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK24cmComputeLinkInformation8GetItemsEv(ptr noundef nonnull align 8 dereferenceable(2808) %1) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %.not5771 = icmp eq ptr %i.b, %i.d
  br i1 %.not5771, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.ax, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.ax
  %.sroa.054.072 = phi ptr [ %i.b, %.lr.ph ], [ %i.fr, %bb.ax ] ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.054.072, i64 56 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !42   ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = call noundef i32 @_ZNK17cmGeneratorTarget7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(3187) %i.x)
  %i.z = icmp eq i32 %i.y, 7
  br i1 %i.z, label %bb.ax, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !42
  %i.ab = call noundef i32 @_ZNK17cmGeneratorTarget7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(3187) %i.aa)
  %i.ac = icmp eq i32 %i.ab, 4
  br i1 %i.ac, label %bb.ax, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.e, ptr %4, align 8, !tbaa !33
  store i64 0, ptr %i.f, align 8, !tbaa !36
  store i8 0, ptr %i.e, align 8, !tbaa !38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN19cmListFileBacktraceC2Ev.exit unwind label %bb.aa

_ZN19cmListFileBacktraceC2Ev.exit:                ; preds = %bb.e
  store ptr %i.g, ptr %3, align 8, !tbaa !33
  %i.ad = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.e
  br i1 %i.ae, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %_ZN19cmListFileBacktraceC2Ev.exit
  %i.af = load i64, ptr %i.f, align 8, !tbaa !36  ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN19cmListFileBacktraceC2Ev.exit
  store ptr %i.ad, ptr %3, align 8, !tbaa !39
  %i.ai = load i64, ptr %i.e, align 8, !tbaa !38
  store i64 %i.ai, ptr %i.g, align 8, !tbaa !38
  %.pre = load i64, ptr %i.f, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %i.aj = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.af, %bb.f ]
  store i64 %i.aj, ptr %i.h, align 8, !tbaa !36
  store ptr %i.e, ptr %4, align 8, !tbaa !39
  store i64 0, ptr %i.f, align 8, !tbaa !36
  store i8 0, ptr %i.e, align 8, !tbaa !38
  %i.ak = load <2 x ptr>, ptr %5, align 16, !tbaa !56
  store ptr null, ptr %i.k, align 8, !tbaa !57
  store <2 x ptr> %i.ak, ptr %i.i, align 8, !tbaa !56
  store ptr null, ptr %5, align 16, !tbaa !58
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.054.072, i64 48
  %.pre73 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !59
  %i.al = icmp eq i32 %.pre73, 1
  br i1 %i.al, label %bb.g, label %bb.ae

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.am = load ptr, ptr %0, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.054.072)
          to label %bb.h unwind label %bb.ab

bb.h:                                             ; preds = %bb.g
  %i.ap = load i8, ptr %i.l, align 8, !tbaa !31, !range !60, !noalias !61, !noundef !64
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = load i8, ptr %i.m, align 2, !range !60, !noalias !61
  %spec.select.i = zext nneg i8 %i.ar to i32
  %.0.i = select i1 %i.aq, i32 2, i32 %spec.select.i
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !21, !noalias !61
  %i.at = load ptr, ptr %8, align 8, !tbaa !39, !noalias !61
  %i.au = load i64, ptr %i.o, align 8, !tbaa !36, !noalias !61
  %i.av = load i8, ptr %i.p, align 1, !tbaa !29, !range !60, !noalias !61, !noundef !64
  %i.aw = trunc nuw i8 %i.av to i1
  invoke void @_ZNK17cmOutputConverter21ConvertToOutputFormatB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS_12OutputFormatEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(108) %i.as, i64 %i.au, ptr %i.at, i32 noundef %.0.i, i1 noundef zeroext %i.aw)
          to label %_ZN18cmLinkLineComputer21ConvertToOutputFormatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.ac

_ZN18cmLinkLineComputer21ConvertToOutputFormatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.h
  invoke void @_ZNK24cmComputeLinkInformation4Item16GetFormattedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%class.BT) align 8 %6, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.054.072, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.i unwind label %bb.ad

bb.i:                                             ; preds = %_ZN18cmLinkLineComputer21ConvertToOutputFormatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ax = load ptr, ptr %3, align 8, !tbaa !39    ; 6 uses
  %i.ay = icmp eq ptr %i.ax, %i.g
  %i.az = load ptr, ptr %6, align 8, !tbaa !39    ; 5 uses
  %i.ba = icmp eq ptr %i.az, %i.q                 ; 2 uses
  br i1 %i.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.i
  br i1 %i.ba, label %bb.j, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i25: ; preds = %bb.i
  br i1 %i.ba, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %i.bb = load i64, ptr %i.r, align 8, !tbaa !36  ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  switch i64 %i.bb, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !38
  store i8 %i.bd, ptr %i.ax, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.az, i64 %i.bb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.be = load i64, ptr %i.r, align 8, !tbaa !36  ; 2 uses
  store i64 %i.be, ptr %i.h, align 8, !tbaa !36
  %i.bf = load ptr, ptr %3, align 8, !tbaa !39
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  store i8 0, ptr %i.bg, align 1, !tbaa !38
  %.pre.i.i = load ptr, ptr %6, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  store ptr %i.az, ptr %3, align 8, !tbaa !39
  %i.bh = load <2 x i64>, ptr %i.r, align 8, !tbaa !38
  store <2 x i64> %i.bh, ptr %i.h, align 8, !tbaa !38
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i25
  %i.bi = load i64, ptr %i.g, align 8, !tbaa !38
  store ptr %i.az, ptr %3, align 8, !tbaa !39
  %i.bj = load <2 x i64>, ptr %i.r, align 8, !tbaa !38
  store <2 x i64> %i.bj, ptr %i.h, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.ax, ptr %6, align 8, !tbaa !39
  store i64 %i.bi, ptr %i.q, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.q, ptr %6, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.n, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.bk = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.ax, %bb.m ], [ %i.q, %bb.n ]
  store i64 0, ptr %i.r, align 8, !tbaa !36
  store i8 0, ptr %i.bk, align 1, !tbaa !38
  %i.bl = load <2 x ptr>, ptr %i.s, align 8, !tbaa !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.bm = load ptr, ptr %i.j, align 8, !tbaa !57  ; 8 uses
  store <2 x ptr> %i.bl, ptr %i.i, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bn, align 8, !tbaa !65
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !67
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !9
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #22, !inline_history !68
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !9
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #22, !inline_history !68
  br label %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit

bb.q:                                             ; preds = %bb.o
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.r ], [ %i.ca, %bb.s ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cb, label %bb.t, label %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit, !prof !70

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #22
  br label %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit

_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.t
  %.pr = load ptr, ptr %i.t, align 8, !tbaa !57   ; 8 uses
  %.not.i.i.i.i27 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i27, label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.cd = load atomic i64, ptr %i.cc acquire, align 8 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 4294967297
  %i.cf = trunc i64 %i.cd to i32                  ; 2 uses
  br i1 %i.ce, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.cc, align 8, !tbaa !65
  %i.cg = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.cg, align 4, !tbaa !67
  %i.ch = load ptr, ptr %.pr, align 8, !tbaa !9
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #22, !inline_history !71
  %i.ck = load ptr, ptr %.pr, align 8, !tbaa !9
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #22, !inline_history !71
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i

bb.w:                                             ; preds = %bb.u
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.co = add nsw i32 %i.cf, -1
  store i32 %i.co, ptr %i.cc, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cp = atomicrmw volatile add ptr %i.cc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i = phi i32 [ %i.cf, %bb.x ], [ %i.cp, %bb.y ]
  %i.cq = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cq, label %bb.z, label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i, !prof !70

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #22
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i

_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v, %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit
  %i.cr = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.q
  br i1 %i.cs, label %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i
  %i.ct = load i64, ptr %i.q, align 8, !tbaa !38
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #21
  br label %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cv = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.u
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.cx = load i64, ptr %i.u, align 8, !tbaa !38
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
end_hunk_0
begin_hunk_1_@_ZNSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !77
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i.i.i.i, !prof !70

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i.i.i.i

_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = load ptr, ptr %.05.i.i, align 8, !tbaa !39 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZSt8_DestroyI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i.i.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !38
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #21
  br label %_ZSt8_DestroyI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i

_ZSt8_DestroyI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i: ; preds = %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !78

_ZSt8_DestroyIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !73
  br label %_ZSt8_DestroyIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.aa = phi ptr [ %.pr, %_ZSt8_DestroyIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !80
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #21
  br label %_ZNSt12_Vector_baseI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit, %bb.h
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK24cmComputeLinkInformation8GetItemsEv(ptr noundef nonnull align 8 dereferenceable(2808)) local_unnamed_addr #0

declare noundef i32 @_ZNK17cmGeneratorTarget7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(3187)) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK24cmComputeLinkInformation4Item16GetFormattedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%class.BT) align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81   ; 2 uses
  %.not.not = icmp eq ptr %i.c, null
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !59
  call void @_ZNK24cmComputeLinkInformation17FeatureDescriptor16GetDecoratedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10ItemIsPathE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.e)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !33
  %i.g = load ptr, ptr %2, align 8, !tbaa !39     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !36   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.i, ptr %i.a, align 8, !tbaa !15
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !39
  %i.l = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.l, ptr %i.f, align 8, !tbaa !38
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %bb.c ] ; 2 uses
  switch i64 %i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !38
  store i8 %i.n, ptr %i.m, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.o = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !36
  %i.q = load ptr, ptr %3, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !57   ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.s, align 8, !tbaa !56
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZN19cmListFileBacktraceC2ERKS_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %i.w, align 4, !tbaa !69
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !69
  br label %_ZN19cmListFileBacktraceC2ERKS_.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN19cmListFileBacktraceC2ERKS_.exit

_ZN19cmListFileBacktraceC2ERKS_.exit:             ; preds = %bb.f, %bb.h, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !33
  %i.ac = load ptr, ptr %3, align 8, !tbaa !39    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.j:                                             ; preds = %_ZN19cmListFileBacktraceC2ERKS_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !36 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.ai, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN19cmListFileBacktraceC2ERKS_.exit
  store ptr %i.ac, ptr %0, align 8, !tbaa !39
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !38
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !38
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %i.ak = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ag, %bb.j ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x ptr> %i.v, ptr %i.am, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18cmLinkLineComputer21ConvertToOutputFormatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i8, ptr %i.a, align 8, !tbaa !31, !range !60, !noundef !64
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.e = load i8, ptr %i.d, align 2, !range !60
  %spec.select = zext nneg i8 %i.e to i32
  %.0 = select i1 %i.c, i32 2, i32 %spec.select
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = load ptr, ptr %2, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.l = load i8, ptr %i.k, align 1, !tbaa !29, !range !60, !noundef !64
  %i.m = trunc nuw i8 %i.l to i1
  tail call void @_ZNK17cmOutputConverter21ConvertToOutputFormatB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS_12OutputFormatEb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %i.g, i64 %i.j, ptr %i.h, i32 noundef %.0, i1 noundef zeroext %i.m)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !82
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !82
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit, !prof !70

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit

_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !38
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRS7_EEESB_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76   ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !33
  %i.g = load ptr, ptr %1, align 8, !tbaa !39     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !36   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.i, ptr %i.a, align 8, !tbaa !15
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !39
  %i.l = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.l, ptr %i.f, align 8, !tbaa !38
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc.i.i ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !38
  store i8 %i.n, ptr %i.m, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !36
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !57   ; 2 uses
  %i.w = load <2 x ptr>, ptr %i.t, align 8, !tbaa !56
  store <2 x ptr> %i.w, ptr %i.s, align 8, !tbaa !56
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %i.x, align 4, !tbaa !69
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !69
  br label %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = atomicrmw volatile add ptr %i.x, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.f, %bb.g
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 2 uses
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !76
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_M_realloc_insertIJRS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !83
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit
  %i.ae = phi ptr [ %.pre, %bb.h ], [ %i.ad, %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit ]
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -48
  ret ptr %i.af
}

declare void @_ZNK17cmOutputConverter21ConvertToOutputFormatB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS_12OutputFormatEb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(108), i64, ptr, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18cmLinkLineComputer26ConvertToOutputForExistingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i8, ptr %i.a, align 8, !tbaa !31, !range !60, !noundef !64
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.e = load i8, ptr %i.d, align 2, !range !60
  %spec.select = zext nneg i8 %i.e to i32
  %.0 = select i1 %i.c, i32 2, i32 %spec.select
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = load ptr, ptr %2, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.l = load i8, ptr %i.k, align 1, !tbaa !29, !range !60, !noundef !64
  %i.m = trunc nuw i8 %i.l to i1
  tail call void @_ZNK17cmOutputConverter26ConvertToOutputForExistingB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS_12OutputFormatEb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %i.g, i64 %i.j, ptr %i.h, i32 noundef %.0, i1 noundef zeroext %i.m)
  ret void
}

declare void @_ZNK17cmOutputConverter26ConvertToOutputForExistingB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS_12OutputFormatEb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(108), i64, ptr, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18cmLinkLineComputer15ComputeLinkPathER24cmComputeLinkInformationRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %1, ptr noundef nonnull align 8 dereferenceable(2808) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector", align 8       ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !36
  store i8 0, ptr %i.a, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN18cmLinkLineComputer15ComputeLinkPathER24cmComputeLinkInformationRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_RSt6vectorI2BTIS7_ESaISC_EE(ptr noundef nonnull align 8 dereferenceable(60) %1, ptr noundef nonnull align 8 dereferenceable(2808) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN24cmComputeLinkInformation12AppendValuesERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorI2BTIS5_ESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(2808) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.d = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.f = load i64, ptr %i.a, align 8, !tbaa !38
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18cmLinkLineComputer15ComputeLinkPathER24cmComputeLinkInformationRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_RSt6vectorI2BTIS7_ESaISC_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(2808) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca [5 x %"struct.std::pair"], align 8  ; 18 uses
  %7 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %8 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %9 = alloca [5 x %"struct.std::pair"], align 8  ; 18 uses
  %10 = alloca %class.cmAlphaNum, align 8         ; 6 uses
  %11 = alloca %class.cmAlphaNum, align 8         ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %12 = alloca [5 x %"struct.std::pair"], align 8 ; 18 uses
  %13 = alloca %class.cmAlphaNum, align 8         ; 6 uses
  %14 = alloca %class.cmAlphaNum, align 8         ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %22 = alloca %"class.std::vector", align 8      ; 8 uses
  %23 = alloca %class.BT, align 8                 ; 19 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %class.cmList, align 8             ; 12 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.f = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr %i.f, ptr %15, align 8, !tbaa !33, !alias.scope !84
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !39, !noalias !84 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.i = load i64, ptr %i.h, align 8, !tbaa !36, !noalias !84 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22, !noalias !84
  store i64 %i.i, ptr %i.d, align 8, !tbaa !15, !noalias !84
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %15, align 8, !tbaa !39, !alias.scope !84
  %i.l = load i64, ptr %i.d, align 8, !tbaa !15, !noalias !84
  store i64 %i.l, ptr %i.f, align 8, !tbaa !38, !alias.scope !84
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNK24cmComputeLinkInformation15GetLinkLanguageB5cxx11Ev.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !38
  store i8 %i.n, ptr %i.m, align 1, !tbaa !38
  br label %_ZNK24cmComputeLinkInformation15GetLinkLanguageB5cxx11Ev.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNK24cmComputeLinkInformation15GetLinkLanguageB5cxx11Ev.exit

_ZNK24cmComputeLinkInformation15GetLinkLanguageB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.o = load i64, ptr %i.d, align 8, !tbaa !15, !noalias !84 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 %i.o, ptr %i.p, align 8, !tbaa !36, !alias.scope !84
  %i.q = load ptr, ptr %15, align 8, !tbaa !39, !alias.scope !84
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22, !noalias !84
  %i.s = load i64, ptr %i.p, align 8, !tbaa !36   ; 2 uses
  %i.t = icmp eq i64 %i.s, 5
  %.pre = load ptr, ptr %15, align 8, !tbaa !39   ; 4 uses
  br i1 %i.t, label %bb.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.d:                                             ; preds = %_ZNK24cmComputeLinkInformation15GetLinkLanguageB5cxx11Ev.exit
  %i.u = load i32, ptr %.pre, align 1
  %i.v = xor i32 %i.u, 1718187859
  %i.w = getelementptr i8, ptr %.pre, i64 4
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i32
  %i.z = xor i32 %i.y, 116
  %i.aa = or i32 %i.v, %i.z
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.d, %_ZNK24cmComputeLinkInformation15GetLinkLanguageB5cxx11Ev.exit
  %i.ae = phi i1 [ false, %_ZNK24cmComputeLinkInformation15GetLinkLanguageB5cxx11Ev.exit ], [ %i.ad, %bb.d ]
  %i.af = icmp eq ptr %.pre, %i.f
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ag = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.ag)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !38
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ai) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br i1 %i.ae, label %bb.e, label %bb.ak

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.aj, ptr %16, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !36
  store i8 0, ptr %i.aj, align 8, !tbaa !38
  %i.al = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK24cmComputeLinkInformation8GetItemsEv(ptr noundef nonnull align 8 dereferenceable(2808) %1)
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !40 ; 2 uses
  %.not191232 = icmp eq ptr %i.am, %i.ao
  br i1 %.not191232, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %13, i64 16
end_hunk_1
begin_hunk_2_@_ZN18cmLinkLineComputer15ComputeLinkPathER24cmComputeLinkInformationRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_RSt6vectorI2BTIS7_ESaISC_EE:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 48
  %.sroa.gep43.i = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.sroa.4.0..sroa_idx.i21.i = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0..sroa_idx.i29.i = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i30.i = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.sroa.4.0..sroa_idx.i38.i = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.bp = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  br label %bb.h

._crit_edge:                                      ; preds = %bb.af, %bb.f
  %i.bt = load i64, ptr %i.ak, align 8, !tbaa !36
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.ai, label %bb.ag

bb.g:                                             ; preds = %bb.e
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.h:                                             ; preds = %.lr.ph, %bb.af
  %.sroa.0188.0233 = phi ptr [ %i.am, %.lr.ph ], [ %i.fl, %bb.af ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0188.0233, i64 56 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !42 ; 4 uses
  %.not = icmp eq ptr %i.bx, null
  br i1 %.not, label %bb.af, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.by = invoke noundef i32 @_ZNK17cmGeneratorTarget7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(3187) %i.bx)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = invoke noundef i32 @_ZNK17cmGeneratorTarget7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(3187) %i.bx)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.cb = icmp eq i32 %i.ca, 2
  br i1 %i.cb, label %bb.m, label %bb.af

bb.m:                                             ; preds = %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  store ptr %i.aq, ptr %17, align 8, !tbaa !33, !alias.scope !87
  %i.cc = load ptr, ptr %i.ap, align 8, !tbaa !39, !noalias !87 ; 2 uses
  %i.cd = load i64, ptr %i.ar, align 8, !tbaa !36, !noalias !87 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22, !noalias !87
  store i64 %i.cd, ptr %i.c, align 8, !tbaa !15, !noalias !87
  %i.ce = icmp ugt i64 %i.cd, 15
  br i1 %i.ce, label %.noexc.i.i73, label %._crit_edge.i.i.i72

.noexc.i.i73:                                     ; preds = %bb.m
  %i.cf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.u     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i73
  store ptr %i.cf, ptr %17, align 8, !tbaa !39, !alias.scope !87
  %i.cg = load i64, ptr %i.c, align 8, !tbaa !15, !noalias !87
  store i64 %i.cg, ptr %i.aq, align 8, !tbaa !38, !alias.scope !87
  br label %._crit_edge.i.i.i72

._crit_edge.i.i.i72:                              ; preds = %.noexc, %bb.m
  %i.ch = phi ptr [ %i.cf, %.noexc ], [ %i.aq, %bb.m ] ; 2 uses
  switch i64 %i.cd, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i72
  %i.ci = load i8, ptr %i.cc, align 1, !tbaa !38
  store i8 %i.ci, ptr %i.ch, align 1, !tbaa !38
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i.i72
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ch, ptr align 1 %i.cc, i64 %i.cd, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i72
  %i.cj = load i64, ptr %i.c, align 8, !tbaa !15, !noalias !87 ; 2 uses
  store i64 %i.cj, ptr %i.as, align 8, !tbaa !36, !alias.scope !87
  %i.ck = load ptr, ptr %17, align 8, !tbaa !39, !alias.scope !87
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  store i8 0, ptr %i.cl, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22, !noalias !87
  %i.cm = invoke noundef zeroext i1 @_ZNK17cmGeneratorTarget16HasImportLibraryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3187) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.cn = load ptr, ptr %17, align 8, !tbaa !39   ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.aq
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.q
  %i.cp = load i64, ptr %i.aq, align 8, !tbaa !38
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %spec.select = zext i1 %i.cm to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.cr = load ptr, ptr %i.bw, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  store ptr %i.at, ptr %21, align 8, !tbaa !33, !alias.scope !90
  %i.cs = load ptr, ptr %i.ap, align 8, !tbaa !39, !noalias !90 ; 2 uses
  %i.ct = load i64, ptr %i.ar, align 8, !tbaa !36, !noalias !90 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22, !noalias !90
  store i64 %i.ct, ptr %i.b, align 8, !tbaa !15, !noalias !90
  %i.cu = icmp ugt i64 %i.ct, 15
  br i1 %i.cu, label %.noexc.i.i78, label %._crit_edge.i.i.i77

.noexc.i.i78:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.cv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc79 unwind label %bb.aa  ; 2 uses

.noexc79:                                         ; preds = %.noexc.i.i78
  store ptr %i.cv, ptr %21, align 8, !tbaa !39, !alias.scope !90
  %i.cw = load i64, ptr %i.b, align 8, !tbaa !15, !noalias !90
  store i64 %i.cw, ptr %i.at, align 8, !tbaa !38, !alias.scope !90
  br label %._crit_edge.i.i.i77

._crit_edge.i.i.i77:                              ; preds = %.noexc79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.cx = phi ptr [ %i.cv, %.noexc79 ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ] ; 2 uses
  switch i64 %i.ct, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %bb.w
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i77
  %i.cy = load i8, ptr %i.cs, align 1, !tbaa !38
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !38
  br label %bb.w

bb.s:                                             ; preds = %._crit_edge.i.i.i77
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.cs, i64 %i.ct, i1 false)
  br label %bb.w

bb.t:                                             ; preds = %bb.k, %bb.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.u:                                             ; preds = %.noexc.i.i73
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

bb.v:                                             ; preds = %bb.p
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = load ptr, ptr %17, align 8, !tbaa !39   ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.aq
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.v
  %i.de = load i64, ptr %i.aq, align 8, !tbaa !38
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %bb.u
  %.pn57 = phi { ptr, i32 } [ %i.da, %bb.u ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %i.db, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.aj

bb.w:                                             ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i77
  %i.dg = load i64, ptr %i.b, align 8, !tbaa !15, !noalias !90 ; 2 uses
  store i64 %i.dg, ptr %i.au, align 8, !tbaa !36, !alias.scope !90
  %i.dh = load ptr, ptr %21, align 8, !tbaa !39, !alias.scope !90
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg
  store i8 0, ptr %i.di, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !90
  invoke void @_ZNK17cmGeneratorTarget12GetDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12cmStateEnums12ArtifactTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(3187) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %21, i32 noundef %spec.select)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.dj = load i8, ptr %i.av, align 8, !tbaa !31, !range !60, !noalias !93, !noundef !64
  %i.dk = trunc nuw i8 %i.dj to i1
  %i.dl = load i8, ptr %i.aw, align 2, !range !60, !noalias !93
  %spec.select.i = zext nneg i8 %i.dl to i32
  %.0.i = select i1 %i.dk, i32 2, i32 %spec.select.i
  %i.dm = load ptr, ptr %i.ax, align 8, !tbaa !21, !noalias !93
  %i.dn = load ptr, ptr %20, align 8, !tbaa !39, !noalias !93
  %i.do = load i64, ptr %i.ay, align 8, !tbaa !36, !noalias !93
  %i.dp = load i8, ptr %i.az, align 1, !tbaa !29, !range !60, !noalias !93, !noundef !64
  %i.dq = trunc nuw i8 %i.dp to i1
  invoke void @_ZNK17cmOutputConverter26ConvertToOutputForExistingB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS_12OutputFormatEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(108) %i.dm, i64 %i.do, ptr %i.dn, i32 noundef %.0.i, i1 noundef zeroext %i.dq)
          to label %_ZN18cmLinkLineComputer26ConvertToOutputForExistingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.ac

_ZN18cmLinkLineComputer26ConvertToOutputForExistingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22, !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22, !noalias !96
  store i64 0, ptr %13, align 8, !noalias !96
  store i8 32, ptr %i.bb, align 8, !tbaa !38, !noalias !96
  store i64 1, ptr %i.ba, align 8, !tbaa !15, !noalias !96
  store ptr %i.bb, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !99, !noalias !96
  store i64 1, ptr %12, align 8, !tbaa !15, !alias.scope !100, !noalias !96
  store ptr %i.bb, ptr %.sroa.4.0..sroa_idx.i5.i, align 8, !tbaa !99, !alias.scope !100, !noalias !96
  store ptr null, ptr %i.bc, align 8, !tbaa !103, !alias.scope !100, !noalias !96
  %i.dr = load ptr, ptr %2, align 8, !tbaa !39, !noalias !96
  %i.ds = load i64, ptr %i.be, align 8, !tbaa !36, !noalias !96
  store i64 %i.ds, ptr %i.bd, align 8, !tbaa !15, !alias.scope !107, !noalias !96
  store ptr %i.dr, ptr %.sroa.4.0..sroa_idx.i13.i, align 8, !tbaa !99, !alias.scope !107, !noalias !96
  store ptr null, ptr %i.bf, align 8, !tbaa !103, !alias.scope !107, !noalias !96
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %.pn.i.i18.else.val.i = load ptr, ptr %19, align 8, !tbaa !99, !noalias !113
  %.pn2.i.i20.else.val.i = load i64, ptr %.sroa.gep43.i, align 8, !tbaa !15, !noalias !113
  store i64 %.pn2.i.i20.else.val.i, ptr %i.bg, align 8, !tbaa !15, !alias.scope !110, !noalias !96
  store ptr %.pn.i.i18.else.val.i, ptr %.sroa.4.0..sroa_idx.i21.i, align 8, !tbaa !99, !alias.scope !110, !noalias !96
  store ptr %19, ptr %i.bh, align 8, !tbaa !103, !alias.scope !110, !noalias !96
  %i.dt = load ptr, ptr %3, align 8, !tbaa !39, !noalias !96
  %i.du = load i64, ptr %i.bj, align 8, !tbaa !36, !noalias !96
  store i64 %i.du, ptr %i.bi, align 8, !tbaa !15, !alias.scope !114, !noalias !96
  store ptr %i.dt, ptr %.sroa.4.0..sroa_idx.i29.i, align 8, !tbaa !99, !alias.scope !114, !noalias !96
  store ptr null, ptr %i.bk, align 8, !tbaa !103, !alias.scope !114, !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22, !noalias !96
  store i64 0, ptr %14, align 8, !noalias !96
  store i8 32, ptr %i.bn, align 8, !tbaa !38, !noalias !96
  store i64 1, ptr %i.bm, align 8, !tbaa !15, !noalias !96
  store ptr %i.bn, ptr %.sroa.4.0..sroa_idx.i30.i, align 8, !tbaa !99, !noalias !96
  store i64 1, ptr %i.bl, align 8, !tbaa !15, !alias.scope !117, !noalias !96
  store ptr %i.bn, ptr %.sroa.4.0..sroa_idx.i38.i, align 8, !tbaa !99, !alias.scope !117, !noalias !96
  store ptr null, ptr %i.bo, align 8, !tbaa !103, !alias.scope !117, !noalias !96
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull %12, i64 5)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %_ZN18cmLinkLineComputer26ConvertToOutputForExistingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22, !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22, !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22, !noalias !96
  %i.dv = load i64, ptr %i.bp, align 8, !tbaa !36 ; 2 uses
  %i.dw = load i64, ptr %i.ak, align 8, !tbaa !36
  %i.dx = sub i64 4611686018427387903, %i.dw
  %i.dy = icmp ult i64 %i.dx, %i.dv
  br i1 %i.dy, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
          to label %.noexc86 unwind label %.loopexit.split-lp

.noexc86:                                         ; preds = %bb.z
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.y
  %i.dz = load ptr, ptr %18, align 8, !tbaa !39
  %i.ea = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %i.dz, i64 noundef %i.dv)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.eb = load ptr, ptr %18, align 8, !tbaa !39   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.bq
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ed = load i64, ptr %i.bq, align 8, !tbaa !38
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  %i.ef = load ptr, ptr %19, align 8, !tbaa !39   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.br
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.eh = load i64, ptr %i.br, align 8, !tbaa !38
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  %i.ej = load ptr, ptr %20, align 8, !tbaa !39   ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.bs
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.el = load i64, ptr %i.bs, align 8, !tbaa !38
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  %i.en = load ptr, ptr %21, align 8, !tbaa !39   ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.at
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.ep = load i64, ptr %i.at, align 8, !tbaa !38
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.af

bb.aa:                                            ; preds = %.noexc.i.i78
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

bb.ab:                                            ; preds = %bb.w
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

bb.ac:                                            ; preds = %bb.x
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

bb.ad:                                            ; preds = %_ZN18cmLinkLineComputer26ConvertToOutputForExistingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp:                               ; preds = %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ev = load ptr, ptr %18, align 8, !tbaa !39   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.bq
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.ae
  %i.ex = load i64, ptr %i.bq, align 8, !tbaa !38
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.ad
  %.pn59 = phi { ptr, i32 } [ %i.eu, %bb.ad ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %lpad.phi, %bb.ae ] ; 2 uses
  %i.ez = load ptr, ptr %19, align 8, !tbaa !39   ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.br
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %i.fb = load i64, ptr %i.br, align 8, !tbaa !38
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %bb.ac
  %.pn59.pn = phi { ptr, i32 } [ %i.et, %bb.ac ], [ %.pn59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %.pn59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ] ; 2 uses
  %i.fd = load ptr, ptr %20, align 8, !tbaa !39   ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.bs
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %i.ff = load i64, ptr %i.bs, align 8, !tbaa !38
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106, %bb.ab
  %.pn59.pn.pn = phi { ptr, i32 } [ %i.es, %bb.ab ], [ %.pn59.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ %.pn59.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ] ; 2 uses
  %i.fh = load ptr, ptr %21, align 8, !tbaa !39   ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.at
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.fj = load i64, ptr %i.at, align 8, !tbaa !38
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109, %bb.aa
  %.pn59.pn.pn.pn = phi { ptr, i32 } [ %i.er, %bb.aa ], [ %.pn59.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109 ], [ %.pn59.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
end_hunk_2
begin_hunk_3_@_ZN18cmLinkLineComputer15ComputeLinkPathER24cmComputeLinkInformationRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_RSt6vectorI2BTIS7_ESaISC_EE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.ak

bb.aj:                                            ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %bb.g, %bb.ah
  %.pn59.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fn, %bb.ah ], [ %i.bv, %bb.g ], [ %i.cz, %bb.t ], [ %.pn59.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ], [ %.pn57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ]
  %i.fs = load ptr, ptr %16, align 8, !tbaa !39   ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.aj
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.aj
  %i.fu = load i64, ptr %i.aj, align 8, !tbaa !38
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %common.resume

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @_ZN24cmComputeLinkInformation28GetDirectoriesWithBacktracesB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %22, ptr noundef nonnull align 8 dereferenceable(2808) %1)
  %i.fw = load ptr, ptr %22, align 8, !tbaa !83   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !83 ; 2 uses
  %.not192234 = icmp eq ptr %i.fw, %i.fy
  br i1 %.not192234, label %._crit_edge238, label %.lr.ph237

.lr.ph237:                                        ; preds = %bb.ak
  %i.fz = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.gc = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.gh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i125 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.4.0..sroa_idx.i5.i126 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.gk = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0..sroa_idx.i13.i127 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.gm = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.gn = getelementptr inbounds nuw i8, ptr %9, i64 48
  %.sroa.gep43.i129 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.sroa.4.0..sroa_idx.i21.i131 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.go = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.gp = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0..sroa_idx.i29.i132 = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.gr = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.gs = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.gt = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i30.i133 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.4.0..sroa_idx.i38.i134 = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.gv = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.gw = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  br label %bb.am

._crit_edge238:                                   ; preds = %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %bb.ak
  call void @_ZNSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  %i.gz = invoke ptr @_ZN6cmList6InsertERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EERSC_NS_14ExpandElementsENS_13EmptyElementsE(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1, i32 noundef 0)
          to label %_ZN6cmListC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14ExpandElementsENS_13EmptyElementsE.exit unwind label %bb.al ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %bb.al
  %common.resume.op = phi { ptr, i32 } [ %i.ha, %bb.al ], [ %.pn59.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ %.pn54.pn, %bb.bk ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ]
  resume { ptr, i32 } %common.resume.op

bb.al:                                            ; preds = %._crit_edge238
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %26) #22
  br label %common.resume

_ZN6cmListC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14ExpandElementsENS_13EmptyElementsE.exit: ; preds = %._crit_edge238
  %i.hb = load ptr, ptr %26, align 8, !tbaa !120  ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !120 ; 2 uses
  %.not193239 = icmp eq ptr %i.hb, %i.hd
  br i1 %.not193239, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph241

.lr.ph241:                                        ; preds = %_ZN6cmListC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14ExpandElementsENS_13EmptyElementsE.exit
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.hi = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i151 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.4.0..sroa_idx.i5.i152 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0..sroa_idx.i13.i153 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.hn = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ho = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.gep43.i155 = getelementptr inbounds nuw i8, ptr %28, i64 8
  %.sroa.4.0..sroa_idx.i21.i157 = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.hp = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.hq = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0..sroa_idx.i29.i158 = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.hs = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.ht = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.hu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i30.i159 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.4.0..sroa_idx.i38.i160 = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.hw = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.hx = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  br label %bb.bm

bb.am:                                            ; preds = %.lr.ph237, %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %.sroa.0182.0235 = phi ptr [ %i.fw, %.lr.ph237 ], [ %i.kw, %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  store ptr %i.fz, ptr %23, align 8, !tbaa !33
  %i.hz = load ptr, ptr %.sroa.0182.0235, align 8, !tbaa !39 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0182.0235, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.ib, ptr %i.a, align 8, !tbaa !15
  %i.ic = icmp ugt i64 %i.ib, 15
  br i1 %i.ic, label %.noexc.i.i119, label %._crit_edge.i.i.i118

.noexc.i.i119:                                    ; preds = %bb.am
  %i.id = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc120 unwind label %bb.bf ; 2 uses

.noexc120:                                        ; preds = %.noexc.i.i119
  store ptr %i.id, ptr %23, align 8, !tbaa !39
  %i.ie = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.ie, ptr %i.fz, align 8, !tbaa !38
  br label %._crit_edge.i.i.i118

._crit_edge.i.i.i118:                             ; preds = %.noexc120, %bb.am
  %i.if = phi ptr [ %i.id, %.noexc120 ], [ %i.fz, %bb.am ] ; 2 uses
  switch i64 %i.ib, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.an:                                            ; preds = %._crit_edge.i.i.i118
  %i.ig = load i8, ptr %i.hz, align 1, !tbaa !38
  store i8 %i.ig, ptr %i.if, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.ao:                                            ; preds = %._crit_edge.i.i.i118
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.if, ptr align 1 %i.hz, i64 %i.ib, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.ao, %bb.an, %._crit_edge.i.i.i118
  %i.ih = load i64, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  store i64 %i.ih, ptr %i.ga, align 8, !tbaa !36
  %i.ii = load ptr, ptr %23, align 8, !tbaa !39
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ih
  store i8 0, ptr %i.ij, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0182.0235, i64 32
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0182.0235, i64 40
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !57 ; 2 uses
  %i.in = load <2 x ptr>, ptr %i.ik, align 8, !tbaa !56
  store <2 x ptr> %i.in, ptr %i.gb, align 8, !tbaa !56
  %.not.i.i.i.i.i.i = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 3 uses
  %i.ip = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ip, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.iq = load i32, ptr %i.io, align 4, !tbaa !69
  %i.ir = add nsw i32 %i.iq, 1
  store i32 %i.ir, ptr %i.io, align 4, !tbaa !69
  br label %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

bb.ar:                                            ; preds = %bb.ap
  %i.is = atomicrmw volatile add ptr %i.io, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit: ; preds = %bb.ar, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.it = load i8, ptr %i.gd, align 8, !tbaa !31, !range !60, !noalias !121, !noundef !64
  %i.iu = trunc nuw i8 %i.it to i1
  %i.iv = load i8, ptr %i.ge, align 2, !range !60, !noalias !121
  %spec.select.i121 = zext nneg i8 %i.iv to i32
  %.0.i122 = select i1 %i.iu, i32 2, i32 %spec.select.i121
  %i.iw = load ptr, ptr %i.gf, align 8, !tbaa !21, !noalias !121
  %i.ix = load ptr, ptr %23, align 8, !tbaa !39, !noalias !121
  %i.iy = load i64, ptr %i.ga, align 8, !tbaa !36, !noalias !121
  %i.iz = load i8, ptr %i.gg, align 1, !tbaa !29, !range !60, !noalias !121, !noundef !64
  %i.ja = trunc nuw i8 %i.iz to i1
  invoke void @_ZNK17cmOutputConverter26ConvertToOutputForExistingB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS_12OutputFormatEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(108) %i.iw, i64 %i.iy, ptr %i.ix, i32 noundef %.0.i122, i1 noundef zeroext %i.ja)
          to label %_ZN18cmLinkLineComputer26ConvertToOutputForExistingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit124 unwind label %bb.bg

_ZN18cmLinkLineComputer26ConvertToOutputForExistingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit124: ; preds = %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22, !noalias !124
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22, !noalias !124
  store i64 0, ptr %10, align 8, !noalias !124
  store i8 32, ptr %i.gi, align 8, !tbaa !38, !noalias !124
  store i64 1, ptr %i.gh, align 8, !tbaa !15, !noalias !124
  store ptr %i.gi, ptr %.sroa.4.0..sroa_idx.i.i125, align 8, !tbaa !99, !noalias !124
  store i64 1, ptr %9, align 8, !tbaa !15, !alias.scope !127, !noalias !124
  store ptr %i.gi, ptr %.sroa.4.0..sroa_idx.i5.i126, align 8, !tbaa !99, !alias.scope !127, !noalias !124
  store ptr null, ptr %i.gj, align 8, !tbaa !103, !alias.scope !127, !noalias !124
  %i.jb = load ptr, ptr %2, align 8, !tbaa !39, !noalias !124
  %i.jc = load i64, ptr %i.gl, align 8, !tbaa !36, !noalias !124
  store i64 %i.jc, ptr %i.gk, align 8, !tbaa !15, !alias.scope !130, !noalias !124
  store ptr %i.jb, ptr %.sroa.4.0..sroa_idx.i13.i127, align 8, !tbaa !99, !alias.scope !130, !noalias !124
  store ptr null, ptr %i.gm, align 8, !tbaa !103, !alias.scope !130, !noalias !124
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %.pn.i.i18.else.val.i128 = load ptr, ptr %25, align 8, !tbaa !99, !noalias !136
  %.pn2.i.i20.else.val.i130 = load i64, ptr %.sroa.gep43.i129, align 8, !tbaa !15, !noalias !136
  store i64 %.pn2.i.i20.else.val.i130, ptr %i.gn, align 8, !tbaa !15, !alias.scope !133, !noalias !124
  store ptr %.pn.i.i18.else.val.i128, ptr %.sroa.4.0..sroa_idx.i21.i131, align 8, !tbaa !99, !alias.scope !133, !noalias !124
  store ptr %25, ptr %i.go, align 8, !tbaa !103, !alias.scope !133, !noalias !124
  %i.jd = load ptr, ptr %3, align 8, !tbaa !39, !noalias !124
  %i.je = load i64, ptr %i.gq, align 8, !tbaa !36, !noalias !124
  store i64 %i.je, ptr %i.gp, align 8, !tbaa !15, !alias.scope !137, !noalias !124
  store ptr %i.jd, ptr %.sroa.4.0..sroa_idx.i29.i132, align 8, !tbaa !99, !alias.scope !137, !noalias !124
  store ptr null, ptr %i.gr, align 8, !tbaa !103, !alias.scope !137, !noalias !124
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22, !noalias !124
  store i64 0, ptr %11, align 8, !noalias !124
  store i8 32, ptr %i.gu, align 8, !tbaa !38, !noalias !124
  store i64 1, ptr %i.gt, align 8, !tbaa !15, !noalias !124
  store ptr %i.gu, ptr %.sroa.4.0..sroa_idx.i30.i133, align 8, !tbaa !99, !noalias !124
  store i64 1, ptr %i.gs, align 8, !tbaa !15, !alias.scope !140, !noalias !124
  store ptr %i.gu, ptr %.sroa.4.0..sroa_idx.i38.i134, align 8, !tbaa !99, !alias.scope !140, !noalias !124
  store ptr null, ptr %i.gv, align 8, !tbaa !103, !alias.scope !140, !noalias !124
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr nonnull %9, i64 5)
          to label %bb.as unwind label %bb.bh

bb.as:                                            ; preds = %_ZN18cmLinkLineComputer26ConvertToOutputForExistingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit124
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22, !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22, !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !124
  %i.jf = load ptr, ptr %23, align 8, !tbaa !39   ; 6 uses
  %i.jg = icmp eq ptr %i.jf, %i.fz
  %i.jh = load ptr, ptr %24, align 8, !tbaa !39   ; 5 uses
  %i.ji = icmp eq ptr %i.jh, %i.gw                ; 2 uses
  br i1 %i.jg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.as
  br i1 %i.ji, label %bb.at, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.as
  br i1 %i.ji, label %bb.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.jj = load i64, ptr %i.gx, align 8, !tbaa !36 ; 3 uses
  %i.jk = icmp ult i64 %i.jj, 16
  call void @llvm.assume(i1 %i.jk)
  switch i64 %i.jj, label %bb.av [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at
  %i.jl = load i8, ptr %i.jh, align 1, !tbaa !38
  store i8 %i.jl, ptr %i.jf, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.av:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jf, ptr align 1 %i.jh, i64 %i.jj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.av, %bb.au, %bb.at
  %i.jm = load i64, ptr %i.gx, align 8, !tbaa !36 ; 2 uses
  store i64 %i.jm, ptr %i.ga, align 8, !tbaa !36
  %i.jn = load ptr, ptr %23, align 8, !tbaa !39
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jm
  store i8 0, ptr %i.jo, align 1, !tbaa !38
  %.pre.i = load ptr, ptr %24, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.jh, ptr %23, align 8, !tbaa !39
  %i.jp = load <2 x i64>, ptr %i.gx, align 8, !tbaa !38
  store <2 x i64> %i.jp, ptr %i.ga, align 8, !tbaa !38
  br label %bb.ax

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.jq = load i64, ptr %i.fz, align 8, !tbaa !38
  store ptr %i.jh, ptr %23, align 8, !tbaa !39
  %i.jr = load <2 x i64>, ptr %i.gx, align 8, !tbaa !38
  store <2 x i64> %i.jr, ptr %i.ga, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.jf, null
  br i1 %.not.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.jf, ptr %24, align 8, !tbaa !39
  store i64 %i.jq, ptr %i.gw, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.gw, ptr %24, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.aw, %bb.ax
  %i.js = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.jf, %bb.aw ], [ %i.gw, %bb.ax ]
  store i64 0, ptr %i.gx, align 8, !tbaa !36
  store i8 0, ptr %i.js, align 1, !tbaa !38
  %i.jt = load ptr, ptr %24, align 8, !tbaa !39   ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.gw
  br i1 %i.ju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.jv = load i64, ptr %i.gw, align 8, !tbaa !38
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  %i.jx = load ptr, ptr %25, align 8, !tbaa !39   ; 2 uses
  %i.jy = icmp eq ptr %i.jx, %i.gy
  br i1 %i.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.jz = load i64, ptr %i.gy, align 8, !tbaa !38
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.ka) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  %i.kb = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRS7_EEESB_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(48) %23)
          to label %bb.ay unwind label %bb.bi     ; 0 uses

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  %i.kc = load ptr, ptr %i.gc, align 8, !tbaa !57 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.kc, null
  br i1 %.not.i.i.i.i, label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 4 uses
  %i.ke = load atomic i64, ptr %i.kd acquire, align 8 ; 2 uses
  %i.kf = icmp eq i64 %i.ke, 4294967297
  %i.kg = trunc i64 %i.ke to i32                  ; 2 uses
  br i1 %i.kf, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.kd, align 8, !tbaa !65
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kc, i64 12
  store i32 0, ptr %i.kh, align 4, !tbaa !67
  %i.ki = load ptr, ptr %i.kc, align 8, !tbaa !9
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(16) %i.kc) #22, !inline_history !71
  %i.kl = load ptr, ptr %i.kc, align 8, !tbaa !9
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(16) %i.kc) #22, !inline_history !71
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i

bb.bb:                                            ; preds = %bb.az
  %i.ko = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i = icmp eq i8 %i.ko, 0
  br i1 %.not.i.i.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kp = add nsw i32 %i.kg, -1
  store i32 %i.kp, ptr %i.kd, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.kq = atomicrmw volatile add ptr %i.kd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i.i = phi i32 [ %i.kg, %bb.bc ], [ %i.kq, %bb.bd ]
  %i.kr = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.kr, label %bb.be, label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i, !prof !70

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kc) #22
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i

_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i: ; preds = %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ba, %bb.ay
  %i.ks = load ptr, ptr %23, align 8, !tbaa !39   ; 2 uses
  %i.kt = icmp eq ptr %i.ks, %i.fz
  br i1 %i.kt, label %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i
  %i.ku = load i64, ptr %i.fz, align 8, !tbaa !38
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.kv) #21
  br label %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0182.0235, i64 48 ; 2 uses
  %.not192 = icmp eq ptr %i.kw, %i.fy
  br i1 %.not192, label %._crit_edge238, label %bb.am

bb.bf:                                            ; preds = %.noexc.i.i119
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bg:                                            ; preds = %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

bb.bh:                                            ; preds = %_ZN18cmLinkLineComputer26ConvertToOutputForExistingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit124
  %i.kz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.la = load ptr, ptr %25, align 8, !tbaa !39   ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.gy
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %bb.bh
  %i.lc = load i64, ptr %i.gy, align 8, !tbaa !38
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143, %bb.bg
  %.pn52 = phi { ptr, i32 } [ %i.ky, %bb.bg ], [ %i.kz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143 ], [ %i.kz, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %bb.bj

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %.pn54 = phi { ptr, i32 } [ %i.le, %bb.bi ], [ %.pn52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ]
  call void @_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %23) #22
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bf
  %.pn54.pn = phi { ptr, i32 } [ %.pn54, %bb.bj ], [ %i.kx, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @_ZNSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %common.resume

._crit_edge242:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  %.pre243 = load ptr, ptr %26, align 8, !tbaa !143 ; 3 uses
  %.pre244 = load ptr, ptr %i.hc, align 8, !tbaa !145 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %.pre243, %.pre244
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge242, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.lk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %.pre243, %._crit_edge242 ] ; 3 uses
  %i.lf = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !39 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !38
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.lj) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i146 = icmp eq ptr %i.lk, %.pre244
  br i1 %.not.i.i.i.i146, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !146

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %26, align 8, !tbaa !143
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZN6cmListC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14ExpandElementsENS_13EmptyElementsE.exit, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %._crit_edge242
  %i.ll = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %.pre243, %._crit_edge242 ], [ %i.hb, %_ZN6cmListC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14ExpandElementsENS_13EmptyElementsE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ll, null
  br i1 %.not.i.i1.i.i, label %_ZN6cmListD2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.lm = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !147
  %i.lo = ptrtoint ptr %i.ln to i64
  %i.lp = ptrtoint ptr %i.ll to i64
  %i.lq = sub i64 %i.lo, %i.lp
  call void @_ZdlPvm(ptr noundef nonnull %i.ll, i64 noundef %i.lq) #21
  br label %_ZN6cmListD2Ev.exit

_ZN6cmListD2Ev.exit:                              ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  ret void

bb.bm:                                            ; preds = %.lr.ph241, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  %.sroa.0176.0240 = phi ptr [ %i.hb, %.lr.ph241 ], [ %i.mn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  %i.lr = load i8, ptr %i.he, align 8, !tbaa !31, !range !60, !noalias !148, !noundef !64
  %i.ls = trunc nuw i8 %i.lr to i1
  %i.lt = load i8, ptr %i.hf, align 2, !range !60, !noalias !148
  %spec.select.i147 = zext nneg i8 %i.lt to i32
  %.0.i148 = select i1 %i.ls, i32 2, i32 %spec.select.i147
  %i.lu = load ptr, ptr %i.hg, align 8, !tbaa !21, !noalias !148
  %i.lv = load ptr, ptr %.sroa.0176.0240, align 8, !tbaa !39, !noalias !148
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.0176.0240, i64 8
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !36, !noalias !148
  %i.ly = load i8, ptr %i.hh, align 1, !tbaa !29, !range !60, !noalias !148, !noundef !64
  %i.lz = trunc nuw i8 %i.ly to i1
  invoke void @_ZNK17cmOutputConverter26ConvertToOutputForExistingB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS_12OutputFormatEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(108) %i.lu, i64 %i.lx, ptr %i.lv, i32 noundef %.0.i148, i1 noundef zeroext %i.lz)
          to label %_ZN18cmLinkLineComputer26ConvertToOutputForExistingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit150 unwind label %bb.bp

_ZN18cmLinkLineComputer26ConvertToOutputForExistingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit150: ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !151
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !151
  store i64 0, ptr %7, align 8, !noalias !151
  store i8 32, ptr %i.hj, align 8, !tbaa !38, !noalias !151
  store i64 1, ptr %i.hi, align 8, !tbaa !15, !noalias !151
  store ptr %i.hj, ptr %.sroa.4.0..sroa_idx.i.i151, align 8, !tbaa !99, !noalias !151
  store i64 1, ptr %6, align 8, !tbaa !15, !alias.scope !154, !noalias !151
  store ptr %i.hj, ptr %.sroa.4.0..sroa_idx.i5.i152, align 8, !tbaa !99, !alias.scope !154, !noalias !151
  store ptr null, ptr %i.hk, align 8, !tbaa !103, !alias.scope !154, !noalias !151
  %i.ma = load ptr, ptr %2, align 8, !tbaa !39, !noalias !151
  %i.mb = load i64, ptr %i.hm, align 8, !tbaa !36, !noalias !151
  store i64 %i.mb, ptr %i.hl, align 8, !tbaa !15, !alias.scope !157, !noalias !151
  store ptr %i.ma, ptr %.sroa.4.0..sroa_idx.i13.i153, align 8, !tbaa !99, !alias.scope !157, !noalias !151
  store ptr null, ptr %i.hn, align 8, !tbaa !103, !alias.scope !157, !noalias !151
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %.pn.i.i18.else.val.i154 = load ptr, ptr %28, align 8, !tbaa !99, !noalias !163
  %.pn2.i.i20.else.val.i156 = load i64, ptr %.sroa.gep43.i155, align 8, !tbaa !15, !noalias !163
  store i64 %.pn2.i.i20.else.val.i156, ptr %i.ho, align 8, !tbaa !15, !alias.scope !160, !noalias !151
  store ptr %.pn.i.i18.else.val.i154, ptr %.sroa.4.0..sroa_idx.i21.i157, align 8, !tbaa !99, !alias.scope !160, !noalias !151
  store ptr %28, ptr %i.hp, align 8, !tbaa !103, !alias.scope !160, !noalias !151
  %i.mc = load ptr, ptr %3, align 8, !tbaa !39, !noalias !151
  %i.md = load i64, ptr %i.hr, align 8, !tbaa !36, !noalias !151
  store i64 %i.md, ptr %i.hq, align 8, !tbaa !15, !alias.scope !164, !noalias !151
  store ptr %i.mc, ptr %.sroa.4.0..sroa_idx.i29.i158, align 8, !tbaa !99, !alias.scope !164, !noalias !151
  store ptr null, ptr %i.hs, align 8, !tbaa !103, !alias.scope !164, !noalias !151
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !151
  store i64 0, ptr %8, align 8, !noalias !151
  store i8 32, ptr %i.hv, align 8, !tbaa !38, !noalias !151
  store i64 1, ptr %i.hu, align 8, !tbaa !15, !noalias !151
  store ptr %i.hv, ptr %.sroa.4.0..sroa_idx.i30.i159, align 8, !tbaa !99, !noalias !151
  store i64 1, ptr %i.ht, align 8, !tbaa !15, !alias.scope !167, !noalias !151
  store ptr %i.hv, ptr %.sroa.4.0..sroa_idx.i38.i160, align 8, !tbaa !99, !alias.scope !167, !noalias !151
  store ptr null, ptr %i.hw, align 8, !tbaa !103, !alias.scope !167, !noalias !151
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr nonnull %6, i64 5)
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %_ZN18cmLinkLineComputer26ConvertToOutputForExistingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit150
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !151
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !151
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !151
  %i.me = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJS6_EEERS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %bb.bo unwind label %bb.br     ; 0 uses

bb.bo:                                            ; preds = %bb.bn
  %i.mf = load ptr, ptr %27, align 8, !tbaa !39   ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.hx
  br i1 %i.mg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %bb.bo
  %i.mh = load i64, ptr %i.hx, align 8, !tbaa !38
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mi) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  %i.mj = load ptr, ptr %28, align 8, !tbaa !39   ; 2 uses
  %i.mk = icmp eq ptr %i.mj, %i.hy
  br i1 %i.mk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  %i.ml = load i64, ptr %i.hy, align 8, !tbaa !38
  %i.mm = add i64 %i.ml, 1
  call void @_ZdlPvm(ptr noundef %i.mj, i64 noundef %i.mm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.0176.0240, i64 32 ; 2 uses
  %.not193 = icmp eq ptr %i.mn, %i.hd
  br i1 %.not193, label %._crit_edge242, label %bb.bm

bb.bp:                                            ; preds = %bb.bm
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

bb.bq:                                            ; preds = %_ZN18cmLinkLineComputer26ConvertToOutputForExistingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit150
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

bb.br:                                            ; preds = %bb.bn
  %i.mq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mr = load ptr, ptr %27, align 8, !tbaa !39   ; 2 uses
  %i.ms = icmp eq ptr %i.mr, %i.hx
  br i1 %i.ms, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %bb.br
  %i.mt = load i64, ptr %i.hx, align 8, !tbaa !38
  %i.mu = add i64 %i.mt, 1
  call void @_ZdlPvm(ptr noundef %i.mr, i64 noundef %i.mu) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169, %bb.bq
  %.pn = phi { ptr, i32 } [ %i.mp, %bb.bq ], [ %i.mq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169 ], [ %i.mq, %bb.br ] ; 2 uses
  %i.mv = load ptr, ptr %28, align 8, !tbaa !39   ; 2 uses
  %i.mw = icmp eq ptr %i.mv, %i.hy
  br i1 %i.mw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171
  %i.mx = load i64, ptr %i.hy, align 8, !tbaa !38
  %i.my = add i64 %i.mx, 1
  call void @_ZdlPvm(ptr noundef %i.mv, i64 noundef %i.my) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172, %bb.bp
  %.pn.pn = phi { ptr, i32 } [ %i.mo, %bb.bp ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @_ZN6cmListD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br label %common.resume
}

declare noundef zeroext i1 @_ZNK17cmGeneratorTarget16HasImportLibraryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3187), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare void @_ZNK17cmGeneratorTarget12GetDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12cmStateEnums12ArtifactTypeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(3187), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJS6_EEERS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %class.cmListFileBacktrace, align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !33
  %i.f = load ptr, ptr %1, align 8, !tbaa !39     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !36   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  store ptr %i.f, ptr %2, align 8, !tbaa !39
  %i.m = load i64, ptr %i.g, align 8, !tbaa !38
  store i64 %i.m, ptr %i.e, align 8, !tbaa !38
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.n = phi i64 [ %i.j, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %i.n, ptr %i.p, align 8, !tbaa !36
  store ptr %i.g, ptr %1, align 8, !tbaa !39
  store i64 0, ptr %i.o, align 8, !tbaa !36
  store i8 0, ptr %i.g, align 8, !tbaa !38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  invoke void @_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNSt15__new_allocatorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS6_EEEvPT_DpOT0_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %2, align 8, !tbaa !39     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.e
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.e, align 8, !tbaa !38
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.q

_ZNSt15__new_allocatorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS6_EEEvPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.v, ptr %i.b, align 8, !tbaa !33
end_hunk_3
begin_hunk_4_@_ZNSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJS6_EEERS7_DpOT_:bb.a
  store i64 %i.ab, ptr %i.v, align 8, !tbaa !38
  %.pre7 = load i64, ptr %i.p, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3, %bb.e
  %i.ac = phi i64 [ %.pre7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3 ], [ %i.y, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.af = load <2 x ptr>, ptr %3, align 16, !tbaa !56
  store <2 x ptr> %i.af, ptr %i.ae, align 8, !tbaa !56
  %.pre8 = load ptr, ptr %i.a, align 8, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre8, i64 48 ; 2 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !76
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %.pre9 = load ptr, ptr %i.a, align 8, !tbaa !83
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.ah = phi ptr [ %.pre9, %bb.f ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -48
  ret ptr %i.ai
}

declare void @_ZN24cmComputeLinkInformation28GetDirectoriesWithBacktracesB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 8 dereferenceable(2808)) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6cmListD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !143    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !145  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !39 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !38
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !146

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !143
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !147
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18cmLinkLineComputer12ComputeRPathB5cxx11ER24cmComputeLinkInformation(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %1, ptr noundef nonnull align 8 dereferenceable(2808) %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.8", align 8     ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 0, ptr %i.b, align 8, !tbaa !36
  store i8 0, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.d = load i64, ptr %i.c, align 8, !tbaa !36
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 59
  %i.g = load i8, ptr %i.f, align 1, !tbaa !32, !range !60, !noundef !64
  %i.h = trunc nuw i8 %i.g to i1
  invoke void @_ZNK24cmComputeLinkInformation8GetRPathERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEb(ptr noundef nonnull align 8 dereferenceable(2808) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %i.h)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %3, align 8, !tbaa !120    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !120  ; 2 uses
  %.not76 = icmp eq ptr %i.i, %i.k
  br i1 %.not76, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 480
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 472
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %.pre = load ptr, ptr %3, align 8, !tbaa !143   ; 3 uses
  %.pre78 = load ptr, ptr %i.j, align 8, !tbaa !145 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre78
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i, align 8, !tbaa !39 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !38
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %.pre78
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !146

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !143
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.z = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %._crit_edge ], [ %i.i, %bb.c ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !147
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.u

bb.e:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %.sroa.066.077 = phi ptr [ %i.i, %.lr.ph ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ] ; 3 uses
  %i.ag = load i64, ptr %i.l, align 8, !tbaa !36  ; 2 uses
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !36
  %i.ai = sub i64 4611686018427387903, %i.ah
  %i.aj = icmp ult i64 %i.ai, %i.ag
  br i1 %i.aj, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.f
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.al = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ak, i64 noundef %i.ag)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.am = load i8, ptr %i.n, align 8, !tbaa !31, !range !60, !noalias !170, !noundef !64
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = load i8, ptr %i.o, align 2, !range !60, !noalias !170
  %spec.select.i = zext nneg i8 %i.ao to i32
  %.0.i = select i1 %i.an, i32 2, i32 %spec.select.i
  %i.ap = load ptr, ptr %i.p, align 8, !tbaa !21, !noalias !170
  %i.aq = load ptr, ptr %.sroa.066.077, align 8, !tbaa !39, !noalias !170
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.066.077, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !36, !noalias !170
  %i.at = load i8, ptr %i.q, align 1, !tbaa !29, !range !60, !noalias !170, !noundef !64
  %i.au = trunc nuw i8 %i.at to i1
  invoke void @_ZNK17cmOutputConverter21ConvertToOutputFormatB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS_12OutputFormatEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(108) %i.ap, i64 %i.as, ptr %i.aq, i32 noundef %.0.i, i1 noundef zeroext %i.au)
          to label %_ZN18cmLinkLineComputer21ConvertToOutputFormatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.h

_ZN18cmLinkLineComputer21ConvertToOutputFormatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.av = load i64, ptr %i.r, align 8, !tbaa !36  ; 2 uses
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !36
  %i.ax = sub i64 4611686018427387903, %i.aw
  %i.ay = icmp ult i64 %i.ax, %i.av
  br i1 %i.ay, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i30

bb.g:                                             ; preds = %_ZN18cmLinkLineComputer21ConvertToOutputFormatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
          to label %.noexc31 unwind label %.loopexit.split-lp70

.noexc31:                                         ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i30: ; preds = %_ZN18cmLinkLineComputer21ConvertToOutputFormatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.az = load ptr, ptr %4, align 8, !tbaa !39
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.az, i64 noundef %i.av)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit33 unwind label %.loopexit69 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i30
  %i.bb = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.s
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit33
  %i.bd = load i64, ptr %i.s, align 8, !tbaa !38
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !36
  %i.bg = icmp eq i64 %i.bf, 4611686018427387903
  br i1 %i.bg, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.066.077, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bi, %i.k
  br i1 %.not, label %._crit_edge, label %bb.f

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

.loopexit69:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i30
  %lpad.loopexit71 = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp70:                             ; preds = %bb.g
  %lpad.loopexit.split-lp72 = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp70, %.loopexit69
  %lpad.phi73 = phi { ptr, i32 } [ %lpad.loopexit71, %.loopexit69 ], [ %lpad.loopexit.split-lp72, %.loopexit.split-lp70 ] ; 2 uses
  %i.bk = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.s
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.i
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !38
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.h
  %.pn22 = phi { ptr, i32 } [ %i.bj, %bb.h ], [ %lpad.phi73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %lpad.phi73, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %bb.e
  %.pn24.pn = phi { ptr, i32 } [ %i.af, %bb.e ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.v

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 59
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !32, !range !60, !noundef !64
  %i.bq = trunc nuw i8 %i.bp to i1
  invoke void @_ZNK24cmComputeLinkInformation14GetRPathStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(2808) %2, i1 noundef zeroext %i.bq)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !36
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit53, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 480
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !36 ; 2 uses
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !36
  %i.bx = sub i64 4611686018427387903, %i.bw
  %i.by = icmp ult i64 %i.bx, %i.bv
  br i1 %i.by, label %.invoke107, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i39: ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 472
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !39
  %i.cb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ca, i64 noundef %i.bv)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit42 unwind label %bb.q ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i39
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !21
  %i.ce = load ptr, ptr %5, align 8, !tbaa !39
  %i.cf = load i64, ptr %i.br, align 8, !tbaa !36
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !31, !range !60, !noundef !64
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = xor i1 %i.ci, true
  invoke void @_ZNK17cmOutputConverter14EscapeForShellB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEbbbbb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(108) %i.cd, i64 %i.cf, ptr %i.ce, i1 noundef zeroext %i.cj, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit42
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !36 ; 2 uses
  %i.cm = load i64, ptr %i.b, align 8, !tbaa !36
  %i.cn = sub i64 4611686018427387903, %i.cm
  %i.co = icmp ult i64 %i.cn, %i.cl
  br i1 %i.co, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i43

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
          to label %.noexc44 unwind label %bb.s

.noexc44:                                         ; preds = %bb.o
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i43: ; preds = %bb.n
  %i.cp = load ptr, ptr %6, align 8, !tbaa !39
  %i.cq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cp, i64 noundef %i.cl)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit46 unwind label %bb.s ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i43
  %i.cr = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit46
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !38
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.cw = load i64, ptr %i.b, align 8, !tbaa !36
  %i.cx = icmp eq i64 %i.cw, 4611686018427387903
  br i1 %i.cx, label %.invoke107, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i50

.invoke107:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
          to label %.cont108 unwind label %bb.q

.cont108:                                         ; preds = %.invoke107
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.cy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit53 unwind label %bb.q ; 0 uses

bb.p:                                             ; preds = %bb.k
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.q:                                             ; preds = %.invoke107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i39
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit42
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i43, %bb.o
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.s
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !38
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.r
  %.pn = phi { ptr, i32 } [ %i.db, %bb.r ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %i.dc, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i50, %bb.l
  %i.di = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit53
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !38
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.u

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %bb.q
  %.pn19 = phi { ptr, i32 } [ %i.da, %bb.q ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ] ; 2 uses
  %i.dn = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.t
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !38
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.p
  %.pn19.pn = phi { ptr, i32 } [ %i.cz, %bb.p ], [ %.pn19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %.pn19, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  ret void

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %bb.j
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn24.pn, %bb.j ], [ %.pn19.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ]
  %i.ds = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.a
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.v
  %i.du = load i64, ptr %i.a, align 8, !tbaa !38
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  resume { ptr, i32 } %.pn24.pn.pn
}

declare void @_ZNK24cmComputeLinkInformation8GetRPathERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEb(ptr noundef nonnull align 8 dereferenceable(2808), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !143    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !145  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !39 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !38
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !146

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !143
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !147
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #21
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

declare void @_ZNK24cmComputeLinkInformation14GetRPathStringB5cxx11Eb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(2808), i1 noundef zeroext) local_unnamed_addr #0

declare void @_ZNK17cmOutputConverter14EscapeForShellB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEbbbbb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(108), i64, ptr, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18cmLinkLineComputer20ComputeFrameworkPathB5cxx11ER24cmComputeLinkInformation7cmValue(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %1, ptr noundef nonnull align 8 dereferenceable(2808) %2, ptr nofree readonly captures(address_is_null) %3) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [3 x %"struct.std::pair"], align 8  ; 12 uses
  %5 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.not = icmp eq ptr %3, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !36
  store i8 0, ptr %i.a, align 8, !tbaa !38
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK24cmComputeLinkInformation17GetFrameworkPathsB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(2808) %2)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120  ; 2 uses
  %.not3037 = icmp eq ptr %i.d, %i.f
  br i1 %.not3037, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.gep24.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.4.0..sroa_idx.i12.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.4.0..sroa_idx.i21.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.e:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %.sroa.026.038 = phi ptr [ %i.d, %.lr.ph ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.w = load i8, ptr %i.g, align 8, !tbaa !31, !range !60, !noalias !173, !noundef !64
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = load i8, ptr %i.h, align 2, !range !60, !noalias !173
  %spec.select.i = zext nneg i8 %i.y to i32
  %.0.i = select i1 %i.x, i32 2, i32 %spec.select.i
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !21, !noalias !173
  %i.aa = load ptr, ptr %.sroa.026.038, align 8, !tbaa !39, !noalias !173
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.026.038, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !36, !noalias !173
  %i.ad = load i8, ptr %i.j, align 1, !tbaa !29, !range !60, !noalias !173, !noundef !64
  %i.ae = trunc nuw i8 %i.ad to i1
  invoke void @_ZNK17cmOutputConverter21ConvertToOutputFormatB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS_12OutputFormatEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(108) %i.z, i64 %i.ac, ptr %i.aa, i32 noundef %.0.i, i1 noundef zeroext %i.ae)
          to label %_ZN18cmLinkLineComputer21ConvertToOutputFormatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.h

_ZN18cmLinkLineComputer21ConvertToOutputFormatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !176
  %i.af = load ptr, ptr %3, align 8, !tbaa !39, !noalias !176
  %i.ag = load i64, ptr %i.k, align 8, !tbaa !36, !noalias !176
  store i64 %i.ag, ptr %4, align 8, !tbaa !15, !alias.scope !179, !noalias !176
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !99, !alias.scope !179, !noalias !176
  store ptr null, ptr %i.l, align 8, !tbaa !103, !alias.scope !179, !noalias !176
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %.pn.i.i9.else.val.i = load ptr, ptr %7, align 8, !tbaa !99, !noalias !185
  %.pn2.i.i11.else.val.i = load i64, ptr %.sroa.gep24.i, align 8, !tbaa !15, !noalias !185
  store i64 %.pn2.i.i11.else.val.i, ptr %i.m, align 8, !tbaa !15, !alias.scope !182, !noalias !176
  store ptr %.pn.i.i9.else.val.i, ptr %.sroa.4.0..sroa_idx.i12.i, align 8, !tbaa !99, !alias.scope !182, !noalias !176
  store ptr %7, ptr %i.n, align 8, !tbaa !103, !alias.scope !182, !noalias !176
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !176
  store i64 0, ptr %5, align 8, !noalias !176
  store i8 32, ptr %i.q, align 8, !tbaa !38, !noalias !176
  store i64 1, ptr %i.p, align 8, !tbaa !15, !noalias !176
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i13.i, align 8, !tbaa !99, !noalias !176
  store i64 1, ptr %i.o, align 8, !tbaa !15, !alias.scope !186, !noalias !176
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i21.i, align 8, !tbaa !99, !alias.scope !186, !noalias !176
  store ptr null, ptr %i.r, align 8, !tbaa !103, !alias.scope !186, !noalias !176
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull %4, i64 3)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZN18cmLinkLineComputer21ConvertToOutputFormatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !176
  %i.ah = load i64, ptr %i.s, align 8, !tbaa !36  ; 2 uses
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !36
  %i.aj = sub i64 4611686018427387903, %i.ai
  %i.ak = icmp ult i64 %i.aj, %i.ah
  br i1 %i.ak, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.f
  %i.al = load ptr, ptr %6, align 8, !tbaa !39
  %i.am = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.al, i64 noundef %i.ah)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit31 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.an = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.t
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ap = load i64, ptr %i.t, align 8, !tbaa !38
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ar = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.u
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load i64, ptr %i.u, align 8, !tbaa !38
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.026.038, i64 32 ; 2 uses
  %.not30 = icmp eq ptr %i.av, %i.f
  br i1 %.not30, label %.loopexit, label %bb.e

bb.h:                                             ; preds = %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.i:                                             ; preds = %_ZN18cmLinkLineComputer21ConvertToOutputFormatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

.loopexit31:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit31
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit31 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ay = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.t
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.j
  %i.ba = load i64, ptr %i.t, align 8, !tbaa !38
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.i ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %lpad.phi, %bb.j ] ; 2 uses
  %i.bc = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.u
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.be = load i64, ptr %i.u, align 8, !tbaa !38
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.h ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %i.v, %bb.d ]
  %i.bg = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.a
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.k
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !38
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  resume { ptr, i32 } %.pn.pn.pn

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %bb.a, %bb.c
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK24cmComputeLinkInformation17GetFrameworkPathsB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(2808)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18cmLinkLineComputer20ComputeLinkLibrariesER24cmComputeLinkInformationRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(60) %1, ptr noundef nonnull align 8 dereferenceable(2808) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !36
  store i8 0, ptr %i.a, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %1, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(60) %1, ptr noundef nonnull align 8 dereferenceable(2808) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN24cmComputeLinkInformation12AppendValuesERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorI2BTIS5_ESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(2808) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.g = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.a
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.a, align 8, !tbaa !38
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
end_hunk_4
