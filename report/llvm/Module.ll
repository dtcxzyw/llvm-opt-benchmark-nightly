Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Module?download=true
inline.NumInlined: 3637
inline.NumDeleted: 1922
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK12lldb_private6Module10LookupInfo5PruneERNS_17SymbolContextListEm:bb.a
  br label %bb.aq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i61: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i60
  %i.fa = load i64, ptr %i.ab, align 8, !tbaa !50
  store ptr %i.er, ptr %6, align 8, !tbaa !46
  %i.fb = load <2 x i64>, ptr %i.ae, align 8, !tbaa !50
  store <2 x i64> %i.fb, ptr %i.ac, align 8, !tbaa !50
  %.not.i62 = icmp eq ptr %i.ep, null
  br i1 %.not.i62, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i61
  store ptr %i.ep, ptr %8, align 8, !tbaa !46
  store i64 %i.fa, ptr %i.ad, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit67

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i61, %.thread.i66
  store ptr %i.ad, ptr %8, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i63, %bb.ap, %bb.aq
  %i.fc = phi ptr [ %i.ep, %bb.ap ], [ %i.ad, %bb.aq ], [ %.pre.i64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i63 ]
  store i64 0, ptr %i.ae, align 8, !tbaa !216
  store i8 0, ptr %i.fc, align 1, !tbaa !50
  %i.fd = load ptr, ptr %8, align 8, !tbaa !46    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.ad
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit67
  %i.ff = load i64, ptr %i.ad, align 8, !tbaa !50
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fh = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.fi = load i64, ptr %i.ac, align 8, !tbaa !216 ; 3 uses
  %i.fj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fh) #27
  %i.fk = icmp eq i64 %i.fi, %i.fj
  br i1 %i.fk, label %bb.as, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.fl = icmp eq i64 %i.fi, 0
  %.pre107 = load ptr, ptr %6, align 8, !tbaa !46 ; 3 uses
  br i1 %i.fl, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread88, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.as
  %bcmp.i.i = call i32 @bcmp(ptr %.pre107, ptr nonnull %i.fh, i64 %i.fi)
  %.not92 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not92, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread88, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.ar, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.fm = call noundef zeroext i1 @_ZN12lldb_private17SymbolContextList20RemoveContextAtIndexEm(ptr noundef nonnull align 8 dereferenceable(192) %1, i64 noundef %.03295) #27 ; 0 uses
  %.pre106 = load ptr, ptr %6, align 8, !tbaa !46
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread88, !llvm.loop !473

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread88: ; preds = %bb.as, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.fn = phi ptr [ %.pre106, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.pre107, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.pre107, %bb.as ] ; 2 uses
  %i.fo = phi i1 [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ true, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ true, %bb.as ]
  %i.fp = icmp eq ptr %i.fn, %i.ab
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread88
  %i.fq = load i64, ptr %i.ab, align 8, !tbaa !50
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %_ZNK4llvm9StringRef7compareES0_.exit

_ZNK4llvm9StringRef7compareES0_.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZN12lldb_private8Language10MethodName7IsValidEv.exit, %.thread.i, %bb.n, %bb.o, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i, %bb.t
  %.135 = phi i1 [ false, %bb.t ], [ %i.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ true, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %.thread.i ], [ true, %_ZN12lldb_private8Language10MethodName7IsValidEv.exit ]
  %i.fs = load ptr, ptr %5, align 8, !tbaa !464   ; 3 uses
  %.not.i74 = icmp eq ptr %i.fs, null
  br i1 %.not.i74, label %_ZNSt10unique_ptrIN12lldb_private8Language10MethodNameESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN12lldb_private8Language10MethodNameEEclEPS2_.exit.i

_ZNKSt14default_deleteIN12lldb_private8Language10MethodNameEEclEPS2_.exit.i: ; preds = %_ZNK4llvm9StringRef7compareES0_.exit
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !25
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(130) %i.fs) #27, !inline_history !481
  br label %_ZNSt10unique_ptrIN12lldb_private8Language10MethodNameESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN12lldb_private8Language10MethodNameESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNK4llvm9StringRef7compareES0_.exit, %_ZNKSt14default_deleteIN12lldb_private8Language10MethodNameEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %.135, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZNSt10unique_ptrIN12lldb_private8Language10MethodNameESt14default_deleteIS2_EED2Ev.exit, %bb.k
  %i.fw = add nuw nsw i64 %.03295, 1
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt10unique_ptrIN12lldb_private8Language10MethodNameESt14default_deleteIS2_EED2Ev.exit, %bb.at
  %.133 = phi i64 [ %i.fw, %bb.at ], [ %.03295, %_ZNSt10unique_ptrIN12lldb_private8Language10MethodNameESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.fx = call noundef i32 @_ZNK12lldb_private17SymbolContextList7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(192) %1) #27
  %i.fy = zext i32 %i.fx to i64
  %i.fz = icmp samesign ult i64 %.133, %i.fy
  br i1 %i.fz, label %bb.j, label %._crit_edge101

._crit_edge101:                                   ; preds = %bb.au, %bb.j, %bb.i
  call void @_ZN12lldb_private13SymbolContextD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge101, %bb.h, %_ZNK12lldb_private11ConstStringcvbEv.exit.thread
  ret void
}

declare noundef zeroext i1 @_ZNK12lldb_private17SymbolContextList17GetContextAtIndexEmRNS_13SymbolContextE(ptr noundef nonnull align 8 dereferenceable(192), i64 noundef, ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #3

declare ptr @_ZNK12lldb_private13SymbolContext15GetFunctionNameENS_7Mangled14NamePreferenceE(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK12lldb_private13SymbolContext11GetLanguageEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN12lldb_private17SymbolContextList20RemoveContextAtIndexEm(ptr noundef nonnull align 8 dereferenceable(192), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private6Module13FindFunctionsEN4llvm8ArrayRefINS0_10LookupInfoEEERKNS_19CompilerDeclContextERKNS_27ModuleFunctionSearchOptionsERNS_17SymbolContextListE(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(2) %4, ptr noundef nonnull align 8 dereferenceable(192) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %.idx = shl nuw nsw i64 %2, 5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not26 = icmp eq i64 %2, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.02027 = phi ptr [ %1, %.lr.ph ], [ %i.u, %bb.f ] ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(952) %0, i1 noundef zeroext true, ptr noundef null) #27 ; 5 uses
  %.not23 = icmp eq ptr %i.f, null
  br i1 %.not23, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %i.b, align 1, !tbaa !482, !range !220, !noundef !221
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 328
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(25) %.02027, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %i.h, ptr noundef nonnull align 8 dereferenceable(192) %5) #27
  %i.l = load i8, ptr %4, align 1, !tbaa !484, !range !220, !noundef !221
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i1 noundef zeroext true) #27 ; 2 uses
  %.not24 = icmp eq ptr %i.q, null
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.02027, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.r, align 8, !tbaa !49
  %i.s = getelementptr inbounds nuw i8, ptr %.02027, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !433
  tail call void @_ZN12lldb_private6Symtab19FindFunctionSymbolsENS_11ConstStringEjRNS_17SymbolContextListE(ptr noundef nonnull align 8 dereferenceable(148) %i.q, ptr %.sroa.0.0.copyload.i, i32 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(192) %5) #27
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.02027, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare void @_ZN12lldb_private6Symtab19FindFunctionSymbolsENS_11ConstStringEjRNS_17SymbolContextListE(ptr noundef nonnull align 8 dereferenceable(148), ptr, i32 noundef, ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private6Module13FindFunctionsENS_11ConstStringERKNS_19CompilerDeclContextEN4lldb16FunctionNameTypeERKNS_27ModuleFunctionSearchOptionsERNS_17SymbolContextListE(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(2) %4, ptr noundef nonnull align 8 dereferenceable(192) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.std::vector.612", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @_ZN12lldb_private6Module10LookupInfo15MakeLookupInfosENS_11ConstStringEN4lldb16FunctionNameTypeENS3_12LanguageTypeES2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.612") align 8 %6, ptr %1, i32 noundef %3, i32 noundef 0, ptr null)
  %i.a = load ptr, ptr %6, align 8, !tbaa !485    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !485  ; 3 uses
  %.not2122 = icmp eq ptr %i.a, %i.c
  br i1 %.not2122, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %i.e = and i32 %3, 2
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN12lldb_private6Module13FindFunctionsEN4llvm8ArrayRefINS0_10LookupInfoEEERKNS_19CompilerDeclContextERKNS_27ModuleFunctionSearchOptionsERNS_17SymbolContextListE.exit.us
  %.sroa.017.023.us = phi ptr [ %7, %_ZN12lldb_private6Module13FindFunctionsEN4llvm8ArrayRefINS0_10LookupInfoEEERKNS_19CompilerDeclContextERKNS_27ModuleFunctionSearchOptionsERNS_17SymbolContextListE.exit.us ], [ %i.a, %.lr.ph ] ; 4 uses
  %i.f = tail call noundef i32 @_ZNK12lldb_private17SymbolContextList7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(192) %5) #27 ; 0 uses
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.017.023.us, i64 32 ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(952) %0, i1 noundef zeroext true, ptr noundef null) #27, !inline_history !486 ; 5 uses
  %.not23.i.us = icmp eq ptr %i.j, null
  br i1 %.not23.i.us, label %_ZN12lldb_private6Module13FindFunctionsEN4llvm8ArrayRefINS0_10LookupInfoEEERKNS_19CompilerDeclContextERKNS_27ModuleFunctionSearchOptionsERNS_17SymbolContextListE.exit.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.k = load i8, ptr %i.d, align 1, !tbaa !482, !range !220, !noundef !221
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 328
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.017.023.us, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %i.l, ptr noundef nonnull align 8 dereferenceable(192) %5) #27, !inline_history !486
  %i.p = load i8, ptr %4, align 1, !tbaa !484, !range !220, !noundef !221
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %_ZN12lldb_private6Module13FindFunctionsEN4llvm8ArrayRefINS0_10LookupInfoEEERKNS_19CompilerDeclContextERKNS_27ModuleFunctionSearchOptionsERNS_17SymbolContextListE.exit.us

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i1 noundef zeroext true) #27, !inline_history !486 ; 2 uses
  %.not24.i.us = icmp eq ptr %i.u, null
  br i1 %.not24.i.us, label %_ZN12lldb_private6Module13FindFunctionsEN4llvm8ArrayRefINS0_10LookupInfoEEERKNS_19CompilerDeclContextERKNS_27ModuleFunctionSearchOptionsERNS_17SymbolContextListE.exit.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.017.023.us, i64 8
  %.sroa.0.0.copyload.i.i.us = load ptr, ptr %i.v, align 8, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.017.023.us, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !433
  tail call void @_ZN12lldb_private6Symtab19FindFunctionSymbolsENS_11ConstStringEjRNS_17SymbolContextListE(ptr noundef nonnull align 8 dereferenceable(148) %i.u, ptr %.sroa.0.0.copyload.i.i.us, i32 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(192) %5) #27
  br label %_ZN12lldb_private6Module13FindFunctionsEN4llvm8ArrayRefINS0_10LookupInfoEEERKNS_19CompilerDeclContextERKNS_27ModuleFunctionSearchOptionsERNS_17SymbolContextListE.exit.us

_ZN12lldb_private6Module13FindFunctionsEN4llvm8ArrayRefINS0_10LookupInfoEEERKNS_19CompilerDeclContextERKNS_27ModuleFunctionSearchOptionsERNS_17SymbolContextListE.exit.us: ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph.split.us
  %.not21.us = icmp eq ptr %7, %i.c
  br i1 %.not21.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %bb.j, %_ZN12lldb_private6Module13FindFunctionsEN4llvm8ArrayRefINS0_10LookupInfoEEERKNS_19CompilerDeclContextERKNS_27ModuleFunctionSearchOptionsERNS_17SymbolContextListE.exit.us, %bb.a
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN12lldb_private6Module10LookupInfoESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !453
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.a to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.ac) #29
  br label %_ZNSt6vectorIN12lldb_private6Module10LookupInfoESaIS2_EED2Ev.exit

_ZNSt6vectorIN12lldb_private6Module10LookupInfoESaIS2_EED2Ev.exit: ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %.sroa.017.023 = phi ptr [ %9, %bb.j ], [ %i.a, %.lr.ph ] ; 5 uses
  %i.ad = tail call noundef i32 @_ZNK12lldb_private17SymbolContextList7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(192) %5) #27 ; 2 uses
  %8 = zext i32 %i.ad to i64
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.017.023, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(952) %0, i1 noundef zeroext true, ptr noundef null) #27, !inline_history !486 ; 5 uses
  %.not23.i = icmp eq ptr %i.ah, null
  br i1 %.not23.i, label %_ZN12lldb_private6Module13FindFunctionsEN4llvm8ArrayRefINS0_10LookupInfoEEERKNS_19CompilerDeclContextERKNS_27ModuleFunctionSearchOptionsERNS_17SymbolContextListE.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split
  %i.ai = load i8, ptr %i.d, align 1, !tbaa !482, !range !220, !noundef !221
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 328
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.017.023, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %i.aj, ptr noundef nonnull align 8 dereferenceable(192) %5) #27, !inline_history !486
  %i.an = load i8, ptr %4, align 1, !tbaa !484, !range !220, !noundef !221
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.g, label %_ZN12lldb_private6Module13FindFunctionsEN4llvm8ArrayRefINS0_10LookupInfoEEERKNS_19CompilerDeclContextERKNS_27ModuleFunctionSearchOptionsERNS_17SymbolContextListE.exit

bb.g:                                             ; preds = %bb.f
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 104
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef ptr %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i1 noundef zeroext true) #27, !inline_history !486 ; 2 uses
  %.not24.i = icmp eq ptr %i.as, null
  br i1 %.not24.i, label %_ZN12lldb_private6Module13FindFunctionsEN4llvm8ArrayRefINS0_10LookupInfoEEERKNS_19CompilerDeclContextERKNS_27ModuleFunctionSearchOptionsERNS_17SymbolContextListE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.017.023, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.at, align 8, !tbaa !49
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.017.023, i64 20
  %i.av = load i32, ptr %i.au, align 4, !tbaa !433
  tail call void @_ZN12lldb_private6Symtab19FindFunctionSymbolsENS_11ConstStringEjRNS_17SymbolContextListE(ptr noundef nonnull align 8 dereferenceable(148) %i.as, ptr %.sroa.0.0.copyload.i.i, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(192) %5) #27
  br label %_ZN12lldb_private6Module13FindFunctionsEN4llvm8ArrayRefINS0_10LookupInfoEEERKNS_19CompilerDeclContextERKNS_27ModuleFunctionSearchOptionsERNS_17SymbolContextListE.exit

_ZN12lldb_private6Module13FindFunctionsEN4llvm8ArrayRefINS0_10LookupInfoEEERKNS_19CompilerDeclContextERKNS_27ModuleFunctionSearchOptionsERNS_17SymbolContextListE.exit: ; preds = %bb.h, %bb.g, %bb.f, %.lr.ph.split
  %i.aw = tail call noundef i32 @_ZNK12lldb_private17SymbolContextList7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(192) %5) #27
  %i.ax = icmp ult i32 %i.ad, %i.aw
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN12lldb_private6Module13FindFunctionsEN4llvm8ArrayRefINS0_10LookupInfoEEERKNS_19CompilerDeclContextERKNS_27ModuleFunctionSearchOptionsERNS_17SymbolContextListE.exit
  tail call void @_ZNK12lldb_private6Module10LookupInfo5PruneERNS_17SymbolContextListEm(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.017.023, ptr noundef nonnull align 8 dereferenceable(192) %5, i64 noundef %8)
  br label %bb.j

bb.j:                                             ; preds = %_ZN12lldb_private6Module13FindFunctionsEN4llvm8ArrayRefINS0_10LookupInfoEEERKNS_19CompilerDeclContextERKNS_27ModuleFunctionSearchOptionsERNS_17SymbolContextListE.exit, %bb.i
  %.not21 = icmp eq ptr %9, %i.c
  br i1 %.not21, label %._crit_edge, label %.lr.ph.split
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private6Module13FindFunctionsEN4llvm8ArrayRefINS_15CompilerContextEEEN4lldb16FunctionNameTypeERKNS_27ModuleFunctionSearchOptionsERNS_17SymbolContextListE(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr nofree readonly captures(address) %1, i64 %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(2) %4, ptr noundef nonnull align 8 dereferenceable(192) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.lldb_private::SymbolContextList", align 8 ; 7 uses
  %7 = alloca %"class.lldb_private::CompilerDeclContext", align 8 ; 4 uses
  %8 = alloca %"class.std::vector.635", align 8   ; 6 uses
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr [16 x i8], ptr %1, i64 %2  ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -16
  %i.d = load i16, ptr %i.c, align 8, !tbaa !487
  %.not = icmp eq i16 %i.d, 64
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.b, i64 -8
  %.sroa.011.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @_ZN12lldb_private17SymbolContextListC1Ev(ptr noundef nonnull align 8 dereferenceable(192) %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @_ZN12lldb_private6Module13FindFunctionsENS_11ConstStringERKNS_19CompilerDeclContextEN4lldb16FunctionNameTypeERKNS_27ModuleFunctionSearchOptionsERNS_17SymbolContextListE(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr %.sroa.011.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(2) %4, ptr noundef nonnull align 8 dereferenceable(192) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !490  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !491  ; 2 uses
  %i.j = zext i32 %i.i to i64
  %.idx = mul nuw nsw i64 %i.j, 152
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %.not1728 = icmp eq i32 %i.i, 0
  br i1 %.not1728, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.d

._crit_edge:                                      ; preds = %.critedge.thread, %bb.c
  call void @_ZN12lldb_private17SymbolContextListD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %.critedge.thread
  %.01629 = phi ptr [ %i.g, %.lr.ph ], [ %i.ak, %.critedge.thread ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01629, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !492  ; 2 uses
  %.not18.not = icmp eq ptr %i.o, null
  br i1 %.not18.not, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZN12lldb_private8Function18GetCompilerContextEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.635") align 8 %8, ptr noundef nonnull align 8 dereferenceable(336) %i.o) #27
  %i.p = load ptr, ptr %8, align 8, !tbaa !493    ; 5 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !496  ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = ashr exact i64 %i.t, 4
  %.not.i = icmp eq i64 %2, %i.u
  br i1 %.not.i, label %bb.f, label %_ZNK4llvm8ArrayRefIN12lldb_private15CompilerContextEE6equalsES3_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.t
  %.not9.i.i.i.i.i = icmp eq ptr %i.q, %i.p
  br i1 %.not9.i.i.i.i.i, label %_ZNK4llvm8ArrayRefIN12lldb_private15CompilerContextEE6equalsES3_.exit.thread, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.f ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %1, %bb.f ] ; 3 uses
  %i.w = load i16, ptr %.0810.i.i.i.i.i, align 8, !tbaa !487
  %i.x = load i16, ptr %.011.i.i.i.i.i, align 8, !tbaa !487
  %i.y = icmp eq i16 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8
  %i.ab = load ptr, ptr %i.z, align 8
  %i.ac = icmp eq ptr %i.ab, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.ad = select i1 %i.y, i1 %i.ac, i1 false      ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp ne ptr %i.ae, %i.v
  %or.cond.not = select i1 %i.ad, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i, label %_ZNK4llvm8ArrayRefIN12lldb_private15CompilerContextEE6equalsES3_.exit.thread, !llvm.loop !497

_ZNK4llvm8ArrayRefIN12lldb_private15CompilerContextEE6equalsES3_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i, %bb.e, %bb.f
  %i.ag = phi i1 [ false, %bb.e ], [ true, %bb.f ], [ %i.ad, %.lr.ph.i.i.i.i.i ]
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN12lldb_private15CompilerContextESaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm8ArrayRefIN12lldb_private15CompilerContextEE6equalsES3_.exit.thread
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !498
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.aj) #29
  br label %_ZNSt6vectorIN12lldb_private15CompilerContextESaIS1_EED2Ev.exit

_ZNSt6vectorIN12lldb_private15CompilerContextESaIS1_EED2Ev.exit: ; preds = %_ZNK4llvm8ArrayRefIN12lldb_private15CompilerContextEE6equalsES3_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br i1 %i.ag, label %bb.h, label %.critedge.thread

bb.h:                                             ; preds = %_ZNSt6vectorIN12lldb_private15CompilerContextESaIS1_EED2Ev.exit
  call void @_ZN12lldb_private17SymbolContextList6AppendERKNS_13SymbolContextE(ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull align 8 dereferenceable(152) %.01629) #27
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.d, %_ZNSt6vectorIN12lldb_private15CompilerContextESaIS1_EED2Ev.exit, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.01629, i64 152 ; 2 uses
  %.not17 = icmp eq ptr %i.ak, %i.k
  br i1 %.not17, label %._crit_edge, label %bb.d

bb.i:                                             ; preds = %bb.a, %bb.b, %._crit_edge
  ret void
}

declare void @_ZN12lldb_private17SymbolContextListC1Ev(ptr noundef nonnull align 8 dereferenceable(192)) unnamed_addr #3

declare void @_ZN12lldb_private8Function18GetCompilerContextEv(ptr dead_on_unwind writable sret(%"class.std::vector.635") align 8, ptr noundef nonnull align 8 dereferenceable(336)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN12lldb_private17SymbolContextListD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private6Module13FindFunctionsERKNS_17RegularExpressionERKNS_27ModuleFunctionSearchOptionsERNS_17SymbolContextListE(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(192) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::vector.665", align 8   ; 10 uses
  %5 = alloca %"class.lldb_private::SymbolContext", align 8 ; 8 uses
  %6 = alloca %"class.std::map.133", align 8      ; 9 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call noundef i32 @_ZNK12lldb_private17SymbolContextList7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(192) %3) #27 ; 3 uses
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(952) %0, i1 noundef zeroext true, ptr noundef null) #27 ; 5 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !482, !range !220, !noundef !221
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 344
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext %i.j, ptr noundef nonnull align 8 dereferenceable(192) %3) #27
  %i.n = load i8, ptr %2, align 1, !tbaa !484, !range !220, !noundef !221
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i1 noundef zeroext true) #27 ; 4 uses
  %.not52 = icmp eq ptr %i.s, null
  br i1 %.not52, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.t = call noundef i32 @_ZN12lldb_private6Symtab39AppendSymbolIndexesMatchingRegExAndTypeERKNS_17RegularExpressionEN4lldb10SymbolTypeENS0_5DebugENS0_10VisibilityERSt6vectorIjSaIjEENS_7Mangled14NamePreferenceE(ptr noundef nonnull align 8 dereferenceable(148) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 1) #27 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !499  ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !501    ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2                  ; 3 uses
  %.not53 = icmp eq ptr %i.v, %i.w
  br i1 %.not53, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZN12lldb_private13SymbolContextC1EPNS_18SymbolContextScopeE(ptr noundef nonnull align 8 dereferenceable(152) %5, ptr noundef nonnull %0) #27
  %i.ab = call noundef i32 @_ZNK12lldb_private17SymbolContextList7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(192) %3) #27 ; 3 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, %i.b
  br i1 %i.ad, label %.lr.ph71, label %bb.i

.lr.ph71:                                         ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 136
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph71, %bb.h
  %.04770 = phi i64 [ 0, %.lr.ph71 ], [ %i.an, %bb.h ] ; 2 uses
  %i.af = load ptr, ptr %4, align 8, !tbaa !501
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.04770
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !60
  %i.ai = zext i32 %i.ah to i64
  %i.aj = call noundef ptr @_ZN12lldb_private6Symtab13SymbolAtIndexEm(ptr noundef nonnull align 8 dereferenceable(148) %i.s, i64 noundef %i.ai) #27 ; 3 uses
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !370
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 14
end_hunk_0
