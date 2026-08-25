Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SYCL?download=true
inline.NumInlined: 565
inline.NumDeleted: 269
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4llvm3opt7ArgList10getLastArgIJNS0_12OptSpecifierEEEEPNS0_3ArgEDpT_:bb.a
  %.sroa.0.1 = phi ptr [ %i.af, %.thread25.i.i ], [ %i.ac, %.lr.ph.split ] ; 3 uses
  %i.ad = load ptr, ptr %.sroa.0.1, align 8, !tbaa !186 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.ad, null
  br i1 %.not14.i.i, label %.thread25.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ae = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i32 %.fr.i) #14
  br i1 %i.ae, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit, label %.thread25.i.i

.thread25.i.i:                                    ; preds = %bb.c, %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 8 ; 3 uses
  %.not.i.i7 = icmp eq ptr %i.af, %i.g
  br i1 %.not.i.i7, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit, label %.lr.ph.i.i, !llvm.loop !187

_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit: ; preds = %bb.c, %.thread25.i.i, %.lr.ph.split
  %.sroa.0.2 = phi ptr [ %i.ac, %.lr.ph.split ], [ %.sroa.0.1, %bb.c ], [ %i.af, %.thread25.i.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.2, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph.split
}

declare void @_ZNK4llvm3opt3Arg11getAsStringB5cxx11ERKNS0_7ArgListE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !205, !range !211, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5clang17DiagnosticBuilder4EmitEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !212
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !213, !range !211, !noundef !46
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = tail call noundef zeroext i1 @_ZN5clang17DiagnosticsEngine14EmitDiagnosticERKNS_17DiagnosticBuilderEb(ptr noundef nonnull align 8 dereferenceable(15256) %i.e, ptr noundef nonnull align 8 dereferenceable(66) %0, i1 noundef zeroext %i.h) #14 ; 0 uses
  store ptr null, ptr %i.d, align 8, !tbaa !212
  store i8 0, ptr %i.a, align 8, !tbaa !205
  store i8 0, ptr %i.f, align 1, !tbaa !213
  br label %_ZN5clang17DiagnosticBuilder4EmitEv.exit

_ZN5clang17DiagnosticBuilder4EmitEv.exit:         ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5clang17DiagnosticBuilder4EmitEv.exit
  %i.n = load i64, ptr %i.l, align 8, !tbaa !32
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5clang17DiagnosticBuilder4EmitEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.p = load ptr, ptr %0, align 8, !tbaa !214    ; 6 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZN5clang19StreamingDiagnosticD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !215  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZN5clang19StreamingDiagnosticD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = icmp uge ptr %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 14848 ; 2 uses
  %i.u = icmp ule ptr %i.p, %i.t
  %or.cond.i.i.i.i = select i1 %i.s, i1 %i.u, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 14976 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !216  ; 2 uses
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !216
  %i.y = zext i32 %i.w to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.y
  store ptr %i.p, ptr %i.z, align 8, !tbaa !218
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.p) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 928) #15
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit

_ZN5clang19StreamingDiagnosticD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK5clang6driver10toolchains13SYCLToolChain21addClangTargetOptionsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEENS_9BoundArchENS0_6Action11OffloadKindE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2608) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr nofree noundef readonly byval(%"struct.clang::BoundArch") align 8 captures(none) %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219, !nonnull !46, !align !47 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 600
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(2568) %i.b, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull byval(%"struct.clang::BoundArch") align 8 %3, i32 noundef %4) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZNK5clang6driver10toolchains13SYCLToolChain13TranslateArgsERKN4llvm3opt14DerivedArgListENS_9BoundArchENS0_6Action11OffloadKindE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2608) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr nofree noundef readonly byval(%"struct.clang::BoundArch") align 8 captures(none) %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.llvm::opt::Option", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !219, !nonnull !46, !align !47 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(2568) %i.c, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull byval(%"struct.clang::BoundArch") align 8 %2, i32 noundef %3) #14 ; 2 uses
  %.not = icmp ne ptr %i.g, null                  ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noalias noundef nonnull dereferenceable(328) ptr @_Znwm(i64 noundef 328) #16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !221, !nonnull !46, !align !47
  tail call void @_ZN4llvm3opt14DerivedArgListC1ERKNS0_12InputArgListE(ptr noundef nonnull align 8 dereferenceable(328) %i.h, ptr noundef nonnull align 8 dereferenceable(352) %i.j) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.g, %bb.a ], [ %i.h, %bb.b ]  ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52, !noalias !237 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !48, !noalias !237 ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.o, 3
  %i.p = getelementptr i8, ptr %i.l, i64 %.idx.i  ; 6 uses
  %.not2.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not2.i.i.i, label %_ZNK4llvm3opt7ArgList5beginEv.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.c
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !186, !noalias !237
  %.not1.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not1.i.i1.i, label %.lr.ph.i.preheader, label %_ZNK4llvm3opt7ArgList5beginEv.exit

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.i.preheader.i
  %.not.i.i.i96 = icmp eq i32 %i.n, 1
  br i1 %.not.i.i.i96, label %._ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj0EEC2ES5_S5_RA1_KNS0_12OptSpecifierE.exit.loopexit_crit_edge.i, label %.lr.ph.i.i.i.lr.ph, !llvm.loop !240

.lr.ph.i.i.i.lr.ph:                               ; preds = %.lr.ph.i.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %.lr.ph.i.i.i, !llvm.loop !240

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.lr.ph, %.lr.ph.i
  %i.s = phi ptr [ %i.r, %.lr.ph.i.i.i.lr.ph ], [ %i.u, %.lr.ph.i ] ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !186, !noalias !237
  %.not1.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not1.i.i.i, label %.lr.ph.i, label %_ZNK4llvm3opt7ArgList5beginEv.exit, !llvm.loop !240

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.p
  br i1 %.not.i.i.i, label %.lr.ph.i.._ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj0EEC2ES5_S5_RA1_KNS0_12OptSpecifierE.exit.loopexit_crit_edge.i_crit_edge, label %.lr.ph.i.i.i, !llvm.loop !240

.lr.ph.i.._ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj0EEC2ES5_S5_RA1_KNS0_12OptSpecifierE.exit.loopexit_crit_edge.i_crit_edge: ; preds = %.lr.ph.i
  br label %._ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj0EEC2ES5_S5_RA1_KNS0_12OptSpecifierE.exit.loopexit_crit_edge.i, !llvm.loop !240

._ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj0EEC2ES5_S5_RA1_KNS0_12OptSpecifierE.exit.loopexit_crit_edge.i: ; preds = %.lr.ph.i.._ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj0EEC2ES5_S5_RA1_KNS0_12OptSpecifierE.exit.loopexit_crit_edge.i_crit_edge, %.lr.ph.i.preheader
  br label %_ZNK4llvm3opt7ArgList5beginEv.exit, !llvm.loop !240

_ZNK4llvm3opt7ArgList5beginEv.exit:               ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i, %._ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj0EEC2ES5_S5_RA1_KNS0_12OptSpecifierE.exit.loopexit_crit_edge.i, %bb.c
  %.sroa.059.1 = phi ptr [ %i.l, %bb.c ], [ %i.p, %._ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj0EEC2ES5_S5_RA1_KNS0_12OptSpecifierE.exit.loopexit_crit_edge.i ], [ %i.l, %.lr.ph.i.i.preheader.i ], [ %i.s, %.lr.ph.i.i.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.o ; 2 uses
  %.not7480 = icmp eq ptr %.sroa.059.1, %i.v
  br i1 %.not7480, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm3opt7ArgList5beginEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj0EEppEv.exit, %_ZNK4llvm3opt7ArgList5beginEv.exit
  %i.y = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #14
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !241
  %.not75 = icmp eq i32 %i.aa, 0
  br i1 %.not75, label %bb.x, label %bb.w

bb.d:                                             ; preds = %.lr.ph, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj0EEppEv.exit
  %.sroa.059.081 = phi ptr [ %.sroa.059.1, %.lr.ph ], [ %.sroa.059.3, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj0EEppEv.exit ] ; 2 uses
  %i.ab = load ptr, ptr %.sroa.059.081, align 8, !tbaa !186 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !244
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  br label %bb.f

bb.e:                                             ; preds = %bb.s
  %brmerge42 = or i1 %.not, %.2
  br i1 %brmerge42, label %bb.u, label %bb.t

bb.f:                                             ; preds = %bb.d, %bb.s
  %.037.idx79 = phi i64 [ 0, %bb.d ], [ %.039.add, %bb.s ] ; 2 uses
  %.03878 = phi i1 [ false, %bb.d ], [ %.2, %bb.s ] ; 2 uses
  %.039.ptr = getelementptr inbounds nuw i8, ptr @_ZZL18getUnsupportedOptsvE15UnsupportedOpts, i64 %.037.idx79
  %i.ae = load i32, ptr %.039.ptr, align 4, !tbaa !130
  %i.af = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 %i.ae) #14
  br i1 %i.af, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %4, align 8, !tbaa !247
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !248
  %i.aj = icmp eq i32 %i.ai, 1940
  br i1 %i.aj, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.ak = load i32, ptr %i.ac, align 8, !tbaa !48
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !52
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !253 ; 4 uses
  store ptr %i.w, ptr %5, align 8, !tbaa !181
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.8) #17
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ap = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !182
  %i.aq = icmp ugt i64 %i.ap, 15
  br i1 %i.aq, label %bb.l, label %._crit_edge.i.i

bb.l:                                             ; preds = %bb.k
  %i.ar = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #14 ; 2 uses
  store ptr %i.ar, ptr %5, align 8, !tbaa !14
  %i.as = load i64, ptr %i.a, align 8, !tbaa !182
  store i64 %i.as, ptr %i.w, align 8, !tbaa !32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.l, %bb.k
  %i.at = phi ptr [ %i.ar, %bb.l ], [ %i.w, %bb.k ] ; 2 uses
  switch i64 %i.ap, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.au = load i8, ptr %i.an, align 1, !tbaa !32
  store i8 %i.au, ptr %i.at, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %i.an, i64 %i.ap, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.m, %bb.n
  %i.av = load i64, ptr %i.a, align 8, !tbaa !182 ; 2 uses
  store i64 %i.av, ptr %i.x, align 8, !tbaa !18
  %i.aw = load ptr, ptr %5, align 8, !tbaa !14
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 0, ptr %i.ax, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ay = load i64, ptr %i.x, align 8, !tbaa !18  ; 2 uses
  %i.az = icmp eq i64 %i.ay, 7
  %.pre = load ptr, ptr %5, align 8, !tbaa !14    ; 5 uses
  br i1 %i.az, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.ba = load i32, ptr %.pre, align 1
  %i.bb = xor i32 %i.ba, 1919181921
  %i.bc = getelementptr i8, ptr %.pre, i64 3
  %i.bd = load i32, ptr %i.bc, align 1
  %i.be = xor i32 %i.bd, 1936942450
  %i.bf = or i32 %i.bb, %i.be
  %i.bg = icmp ne i32 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @_ZN4llvm3opt7ArgList6appendEPNS0_3ArgE(ptr noundef nonnull align 8 dereferenceable(176) %.0, ptr noundef nonnull %i.ab) #14
  %.pre83 = load ptr, ptr %5, align 8, !tbaa !14
  br label %bb.p

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.o
  %i.bj = phi ptr [ %.pre, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.pre83, %bb.o ] ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.w
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.bl = load i64, ptr %i.w, align 8, !tbaa !32
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.s

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bn = icmp eq ptr %.pre, %i.w
  br i1 %i.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i45: ; preds = %.critedge
  %i.bo = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.bo)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %.critedge
  %i.bp = load i64, ptr %i.w, align 8, !tbaa !32
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bq) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %bb.h, %bb.g
  br i1 %.not, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.br = load ptr, ptr %4, align 8, !tbaa !247
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !248
  call void @_ZN4llvm3opt7ArgList8eraseArgENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(176) %.0, i32 %i.bt) #14
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %bb.r, %bb.q
  %.2 = phi i1 [ %.03878, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.03878, %bb.f ], [ true, %bb.r ], [ true, %bb.q ] ; 2 uses
  %.039.add = add nuw nsw i64 %.037.idx79, 4      ; 2 uses
  %.not41 = icmp eq i64 %.039.add, 80
  br i1 %.not41, label %bb.e, label %bb.f

bb.t:                                             ; preds = %bb.e
  call void @_ZN4llvm3opt7ArgList6appendEPNS0_3ArgE(ptr noundef nonnull align 8 dereferenceable(176) %.0, ptr noundef nonnull %i.ab) #14
  br label %bb.u

bb.u:                                             ; preds = %bb.e, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.059.081, i64 8 ; 2 uses
  %.not2.i.i = icmp eq ptr %i.bu, %i.p
  br i1 %.not2.i.i, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj0EEppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %bb.v
  %.sroa.059.2 = phi ptr [ %i.bw, %bb.v ], [ %i.bu, %bb.u ] ; 3 uses
  %i.bv = load ptr, ptr %.sroa.059.2, align 8, !tbaa !186
  %.not1.i.i = icmp eq ptr %i.bv, null
  br i1 %.not1.i.i, label %bb.v, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj0EEppEv.exit

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.059.2, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bw, %i.p
  br i1 %.not.i.i, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj0EEppEv.exit, label %.lr.ph.i.i, !llvm.loop !240

_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj0EEppEv.exit: ; preds = %.lr.ph.i.i, %bb.v, %bb.u
  %.sroa.059.3 = phi ptr [ %i.p, %bb.u ], [ %.sroa.059.2, %.lr.ph.i.i ], [ %i.p, %bb.v ] ; 2 uses
  %.not74 = icmp eq ptr %.sroa.059.3, %i.v
  br i1 %.not74, label %._crit_edge, label %bb.d

bb.w:                                             ; preds = %._crit_edge
  call void @_ZN4llvm3opt7ArgList8eraseArgENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(176) %.0, i32 2440) #14
  %i.bx = call { ptr, ptr } @_ZNK4llvm3opt8OptTable9getOptionENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(216) %i.y, i32 2440) #14 ; 2 uses
  %i.by = extractvalue { ptr, ptr } %i.bx, 0
  %i.bz = extractvalue { ptr, ptr } %i.bx, 1
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !253
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !182
  %i.ca = call noundef ptr @_ZNK4llvm3opt14DerivedArgList13MakeJoinedArgEPKNS0_3ArgENS0_6OptionENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(328) %.0, ptr noundef null, ptr %i.by, ptr %i.bz, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) #14
  call void @_ZN4llvm3opt7ArgList6appendEPNS0_3ArgE(ptr noundef nonnull align 8 dereferenceable(328) %.0, ptr noundef %i.ca) #14
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge
  ret ptr %.0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare void @_ZN4llvm3opt14DerivedArgListC1ERKNS0_12InputArgListE(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(352)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16), i32) local_unnamed_addr #2

declare void @_ZN4llvm3opt7ArgList6appendEPNS0_3ArgE(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef) local_unnamed_addr #2

declare void @_ZN4llvm3opt7ArgList8eraseArgENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(176), i32) local_unnamed_addr #2

declare { ptr, ptr } @_ZNK4llvm3opt8OptTable9getOptionENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(216), i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK5clang6driver10toolchains13SYCLToolChain22addClangWarningOptionsERN4llvm11SmallVectorIPKcLj16EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2608) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219, !nonnull !46, !align !47 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(2568) %i.b, ptr noundef nonnull align 8 dereferenceable(144) %1) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK5clang6driver10toolchains13SYCLToolChain16GetCXXStdlibTypeERKN4llvm3opt7ArgListE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2608) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219, !nonnull !46, !align !47 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 632
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(2568) %i.b, ptr noundef nonnull align 8 dereferenceable(176) %1) #14
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK5clang6driver10toolchains13SYCLToolChain18addSYCLIncludeArgsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2608) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(144) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2576
  tail call void @_ZNK5clang6driver24SYCLInstallationDetector18addSYCLIncludeArgsERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(144) %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK5clang6driver10toolchains13SYCLToolChain25AddClangSystemIncludeArgsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2608) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(144) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219, !nonnull !46, !align !47 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(2568) %i.b, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(144) %2) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK5clang6driver10toolchains13SYCLToolChain28AddClangCXXStdlibIncludeArgsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2608) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(144) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219, !nonnull !46, !align !47 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 664
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(2568) %i.b, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(144) %2) #14
  ret void
}

declare noundef ptr @_ZNK5clang6driver9ToolChain14buildAssemblerEv(ptr noundef nonnull align 8 dereferenceable(2568)) unnamed_addr #2

declare noundef ptr @_ZNK5clang6driver9ToolChain11buildLinkerEv(ptr noundef nonnull align 8 dereferenceable(2568)) unnamed_addr #2

declare noundef ptr @_ZNK5clang6driver9ToolChain18buildStaticLibToolEv(ptr noundef nonnull align 8 dereferenceable(2568)) unnamed_addr #2

declare noundef ptr @_ZNK5clang6driver9ToolChain7getToolENS0_6Action11ActionClassE(ptr noundef nonnull align 8 dereferenceable(2568), i32 noundef) unnamed_addr #2

declare void @_ZNK5clang6driver9ToolChain23buildCompilerRTBasenameB5cxx11ERKN4llvm3opt7ArgListENS2_9StringRefENS1_8FileTypeEbb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(2568), ptr noundef nonnull align 8 dereferenceable(176), ptr, i64, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang6driver10toolchains13SYCLToolChainD2Ev(ptr noundef nonnull align 8 dead_on_return(2608) dereferenceable(2608) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 808) (i8, ptr @_ZTVN5clang6driver10toolchains13SYCLToolChainE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2584
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN5clang6driver24SYCLInstallationDetectorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #14
  br label %_ZN5clang6driver24SYCLInstallationDetectorD2Ev.exit

_ZN5clang6driver24SYCLInstallationDetectorD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN5clang6driver9ToolChainD2Ev(ptr noundef nonnull align 8 dead_on_return(2568) dereferenceable(2568) %0) #14
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang6driver10toolchains13SYCLToolChainD0Ev(ptr noundef nonnull align 8 dereferenceable(2608) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 808) (i8, ptr @_ZTVN5clang6driver10toolchains13SYCLToolChainE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2584
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN5clang6driver10toolchains13SYCLToolChainD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #14, !inline_history !254
  br label %_ZN5clang6driver10toolchains13SYCLToolChainD2Ev.exit

_ZN5clang6driver10toolchains13SYCLToolChainD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN5clang6driver9ToolChainD2Ev(ptr noundef nonnull align 8 dead_on_return(2568) dereferenceable(2608) %0) #14, !inline_history !254
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 2608) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang6driver10toolchains13SYCLToolChain12getAuxTripleEv(ptr noundef nonnull align 8 dereferenceable(2608) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219, !nonnull !46, !align !47
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  ret ptr %i.c
}

declare void @_ZNK5clang6driver9ToolChain16getInputFilenameB5cxx11ERKNS0_9InputInfoE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(2568), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK5clang6driver9ToolChain23getSanitizerRequirementENS_13SanitizerMaskENS_9BoundArchE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i64 %1, i64 %2, ptr noundef byval(%"struct.clang::BoundArch") align 8 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { ptr, i64 } zeroinitializer
}

declare noundef ptr @_ZNK5clang6driver9ToolChain25TranslateOpenMPTargetArgsERKN4llvm3opt14DerivedArgListEbRNS2_15SmallVectorImplIPNS3_3ArgEEE(ptr noundef nonnull align 8 dereferenceable(2568), ptr noundef nonnull align 8 dereferenceable(328), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @_ZNK5clang6driver9ToolChain18TranslateXarchArgsERKN4llvm3opt14DerivedArgListERPNS3_3ArgEPS4_PNS2_15SmallVectorImplIS8_EE(ptr noundef nonnull align 8 dereferenceable(2568), ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK5clang6driver9ToolChain18TranslateXarchArgsERKN4llvm3opt14DerivedArgListENS_9BoundArchENS0_6Action11OffloadKindEPNS2_15SmallVectorImplIPNS3_3ArgEEE(ptr noundef nonnull align 8 dereferenceable(2568), ptr noundef nonnull align 8 dereferenceable(328), ptr noundef byval(%"struct.clang::BoundArch") align 8, i32 noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK5clang6driver9ToolChain10SelectToolERKNS0_9JobActionE(ptr noundef nonnull align 8 dereferenceable(2568), ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5clang6driver9ToolChain16printVerboseInfoERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(2568) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

declare noundef zeroext i1 @_ZNK5clang6driver9ToolChain16isCrossCompilingEv(ptr noundef nonnull align 8 dereferenceable(2568)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK5clang6driver9ToolChain20HasNativeLLVMSupportEv(ptr noundef nonnull align 8 dereferenceable(2568)) unnamed_addr #2

declare noundef i32 @_ZNK5clang6driver9ToolChain17getDefaultLTOModeEv(ptr noundef nonnull align 8 dereferenceable(2568)) unnamed_addr #2

end_hunk_0
