Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Thread?download=true
inline.NumInlined: 5213
inline.NumDeleted: 2496
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN12lldb_private16ThreadPropertiesC2Eb:bb.a
  br i1 %i.bd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bb, align 8, !tbaa !74
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !75
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !72
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #32, !inline_history !648
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !72
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #32, !inline_history !648
  br label %_ZNSt10shared_ptrIN12lldb_private21OptionValuePropertiesEEaSEOS2_.exit

bb.u:                                             ; preds = %bb.s
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !82
  %.not.i.i.i.i.i2 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i.i2, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = add nsw i32 %i.be, -1
  store i32 %i.bn, ptr %i.bb, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3

bb.w:                                             ; preds = %bb.u
  %i.bo = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i4 = phi i32 [ %i.be, %bb.v ], [ %i.bo, %bb.w ]
  %i.bp = icmp eq i32 %.0.i.i.i.i.i.i4, 1
  br i1 %i.bp, label %bb.x, label %_ZNSt10shared_ptrIN12lldb_private21OptionValuePropertiesEEaSEOS2_.exit, !prof !86

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #32
  br label %_ZNSt10shared_ptrIN12lldb_private21OptionValuePropertiesEEaSEOS2_.exit

_ZNSt10shared_ptrIN12lldb_private21OptionValuePropertiesEEaSEOS2_.exit: ; preds = %_ZN12lldb_private6Thread19GetGlobalPropertiesEv.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3, %bb.x
  %i.bq = load ptr, ptr %i.ax, align 8, !tbaa !85 ; 8 uses
  %.not.i.i5 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIN12lldb_private21OptionValuePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private21OptionValuePropertiesEEaSEOS2_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.br, align 8, !tbaa !74
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !75
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !72
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #32, !inline_history !0
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !72
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #32, !inline_history !0
  br label %_ZNSt12__shared_ptrIN12lldb_private21OptionValuePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !82
  %.not.i.i.i6 = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i6, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

bb.ac:                                            ; preds = %bb.aa
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i8 = phi i32 [ %i.bu, %bb.ab ], [ %i.ce, %bb.ac ]
  %i.cf = icmp eq i32 %.0.i.i.i.i8, 1
  br i1 %i.cf, label %bb.ad, label %_ZNSt12__shared_ptrIN12lldb_private21OptionValuePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !86

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #32
  br label %_ZNSt12__shared_ptrIN12lldb_private21OptionValuePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private21OptionValuePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN12lldb_private21OptionValuePropertiesEEaSEOS2_.exit, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt12__shared_ptrIN12lldb_private21OptionValuePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrI27ThreadOptionValuePropertiesLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

declare void @_ZN12lldb_private10PropertiesC2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @_ZN12lldb_private21OptionValueProperties10InitializeERKNS_28PropertyCollectionDefinitionE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN12lldb_private21OptionValueProperties15CreateLocalCopyERKNS_10PropertiesE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN12lldb_private10PropertiesD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private16ThreadPropertiesD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN12lldb_private10PropertiesD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private16ThreadPropertiesD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN12lldb_private16ThreadPropertiesD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #34
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN12lldb_private16ThreadProperties23GetSymbolsToAvoidRegexpEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(232) %i.b, i64 noundef 4, ptr noundef null) #32, !inline_history !652 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNK12lldb_private10Properties20GetPropertyAtIndexAsIPKNS_17RegularExpressionES3_TnNSt9enable_ifIXsr3stdE12is_pointer_vIT_EEbE4typeELb1EEEPKT0_jPKNS_16ExecutionContextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92   ; 2 uses
  %.not13.i.i = icmp eq ptr %i.h, null
  br i1 %.not13.i.i, label %_ZNK12lldb_private10Properties20GetPropertyAtIndexAsIPKNS_17RegularExpressionES3_TnNSt9enable_ifIXsr3stdE12is_pointer_vIT_EEbE4typeELb1EEEPKT0_jPKNS_16ExecutionContextE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef ptr @_ZNK12lldb_private11OptionValue13GetRegexValueEv(ptr noundef nonnull align 8 dereferenceable(104) %i.h) #32
  br label %_ZNK12lldb_private10Properties20GetPropertyAtIndexAsIPKNS_17RegularExpressionES3_TnNSt9enable_ifIXsr3stdE12is_pointer_vIT_EEbE4typeELb1EEEPKT0_jPKNS_16ExecutionContextE.exit

_ZNK12lldb_private10Properties20GetPropertyAtIndexAsIPKNS_17RegularExpressionES3_TnNSt9enable_ifIXsr3stdE12is_pointer_vIT_EEbE4typeELb1EEEPKT0_jPKNS_16ExecutionContextE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi ptr [ %i.i, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK12lldb_private16ThreadProperties19GetLibrariesToAvoidEv(ptr dead_on_unwind noalias writable sret(%"class.lldb_private::FileSpecList") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.lldb_private::FileSpecList", align 8 ; 3 uses
  call void @_ZN12lldb_private12FileSpecListC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #32
  call void @_ZNK12lldb_private10Properties20GetPropertyAtIndexAsINS_12FileSpecListEEET_jS3_PKNS_16ExecutionContextE(ptr dead_on_unwind writable sret(%"class.lldb_private::FileSpecList") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 3, ptr nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef null)
  call void @_ZN12lldb_private12FileSpecListD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK12lldb_private10Properties20GetPropertyAtIndexAsINS_12FileSpecListEEET_jS3_PKNS_16ExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.lldb_private::FileSpecList") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr nofree noundef align 8 dereferenceable(24) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.std::optional.950", align 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = zext i32 %2 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !72, !noalias !659
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !noalias !659
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(232) %i.b, i64 noundef %i.c, ptr noundef %4) #32, !noalias !659, !inline_history !655 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK12lldb_private21OptionValueProperties20GetPropertyAtIndexAsINS_12FileSpecListEEEDamPKNS_16ExecutionContextE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92, !noalias !659 ; 2 uses
  %.not10.i = icmp eq ptr %i.i, null
  br i1 %.not10.i, label %_ZNK12lldb_private21OptionValueProperties20GetPropertyAtIndexAsINS_12FileSpecListEEEDamPKNS_16ExecutionContextE.exit.thread, label %_ZNK12lldb_private21OptionValueProperties20GetPropertyAtIndexAsINS_12FileSpecListEEEDamPKNS_16ExecutionContextE.exit

_ZNK12lldb_private21OptionValueProperties20GetPropertyAtIndexAsINS_12FileSpecListEEEDamPKNS_16ExecutionContextE.exit.thread: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.j, align 8, !tbaa !661, !alias.scope !659
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %bb.c

_ZNK12lldb_private21OptionValueProperties20GetPropertyAtIndexAsINS_12FileSpecListEEEDamPKNS_16ExecutionContextE.exit: ; preds = %bb.b
  call void @_ZNK12lldb_private11OptionValue20GetFileSpecListValueEv(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.950") align 8 %5, ptr noundef nonnull align 8 dereferenceable(104) %i.i) #32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !661, !range !94, !noalias !662
  %i.l = trunc nuw i8 %.pre to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !662)
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %i.l, label %_ZNOSt8optionalIN12lldb_private12FileSpecListEE8value_orIRS1_EES1_OT_.exit.thread, label %bb.c

_ZNOSt8optionalIN12lldb_private12FileSpecListEE8value_orIRS1_EES1_OT_.exit.thread: ; preds = %_ZNK12lldb_private21OptionValueProperties20GetPropertyAtIndexAsINS_12FileSpecListEEEDamPKNS_16ExecutionContextE.exit
  %i.n = load <2 x ptr>, ptr %5, align 16, !tbaa !664, !noalias !662
  store <2 x ptr> %i.n, ptr %0, align 8, !tbaa !664, !alias.scope !662
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !666, !noalias !662
  store ptr %i.q, ptr %i.o, align 8, !tbaa !666, !alias.scope !662
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 24, i1 false), !noalias !662
  br label %bb.f

bb.c:                                             ; preds = %_ZNK12lldb_private21OptionValueProperties20GetPropertyAtIndexAsINS_12FileSpecListEEEDamPKNS_16ExecutionContextE.exit.thread, %_ZNK12lldb_private21OptionValueProperties20GetPropertyAtIndexAsINS_12FileSpecListEEEDamPKNS_16ExecutionContextE.exit
  %i.r = phi ptr [ %i.k, %_ZNK12lldb_private21OptionValueProperties20GetPropertyAtIndexAsINS_12FileSpecListEEEDamPKNS_16ExecutionContextE.exit.thread ], [ %i.m, %_ZNK12lldb_private21OptionValueProperties20GetPropertyAtIndexAsINS_12FileSpecListEEEDamPKNS_16ExecutionContextE.exit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !667, !noalias !662 ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !668, !noalias !662 ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN12lldb_private8FileSpecESaIS1_EEC2EmRKS2_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = sdiv exact i64 %i.x, 24
  %i.z = icmp ugt i64 %i.y, 384307168202282325
  br i1 %i.z, label %bb.e, label %_ZNSt15__new_allocatorIN12lldb_private8FileSpecEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !86

bb.e:                                             ; preds = %bb.d
  call void @_ZSt28__throw_bad_array_new_lengthv() #35, !noalias !662
  unreachable

_ZNSt15__new_allocatorIN12lldb_private8FileSpecEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.aa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #33, !noalias !662
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !664, !noalias !662
  %.pre2.i = load ptr, ptr %i.s, align 8, !tbaa !664, !noalias !662
  br label %_ZNSt12_Vector_baseIN12lldb_private8FileSpecESaIS1_EEC2EmRKS2_.exit.i.i.i

_ZNSt12_Vector_baseIN12lldb_private8FileSpecESaIS1_EEC2EmRKS2_.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorIN12lldb_private8FileSpecEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.c
  %i.ab = phi ptr [ %.pre2.i, %_ZNSt15__new_allocatorIN12lldb_private8FileSpecEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.t, %bb.c ] ; 2 uses
  %i.ac = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIN12lldb_private8FileSpecEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.u, %bb.c ] ; 2 uses
  %i.ad = phi ptr [ %i.aa, %_ZNSt15__new_allocatorIN12lldb_private8FileSpecEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ null, %bb.c ] ; 4 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !668, !alias.scope !662
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.x
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !666, !alias.scope !662
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.ab
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZNOSt8optionalIN12lldb_private12FileSpecListEE8value_orIRS1_EES1_OT_.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt12_Vector_baseIN12lldb_private8FileSpecESaIS1_EEC2EmRKS2_.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ad, %_ZNSt12_Vector_baseIN12lldb_private8FileSpecESaIS1_EEC2EmRKS2_.exit.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ac, %_ZNSt12_Vector_baseIN12lldb_private8FileSpecESaIS1_EEC2EmRKS2_.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !671, !noalias !662
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.ab
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNOSt8optionalIN12lldb_private12FileSpecListEE8value_orIRS1_EES1_OT_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !658

_ZNOSt8optionalIN12lldb_private12FileSpecListEE8value_orIRS1_EES1_OT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN12lldb_private8FileSpecESaIS1_EEC2EmRKS2_.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ad, %_ZNSt12_Vector_baseIN12lldb_private8FileSpecESaIS1_EEC2EmRKS2_.exit.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !667, !alias.scope !662
  %.pre2 = load i8, ptr %i.r, align 8, !tbaa !661, !range !94
  %i.aj = trunc nuw i8 %.pre2 to i1
  br i1 %i.aj, label %bb.f, label %_ZNSt14_Optional_baseIN12lldb_private12FileSpecListELb0ELb0EED2Ev.exit

bb.f:                                             ; preds = %_ZNOSt8optionalIN12lldb_private12FileSpecListEE8value_orIRS1_EES1_OT_.exit.thread, %_ZNOSt8optionalIN12lldb_private12FileSpecListEE8value_orIRS1_EES1_OT_.exit
  %6 = phi ptr [ %i.m, %_ZNOSt8optionalIN12lldb_private12FileSpecListEE8value_orIRS1_EES1_OT_.exit.thread ], [ %i.r, %_ZNOSt8optionalIN12lldb_private12FileSpecListEE8value_orIRS1_EES1_OT_.exit ]
  store i8 0, ptr %6, align 8, !tbaa !661
  call void @_ZN12lldb_private12FileSpecListD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(32) %5) #32
  br label %_ZNSt14_Optional_baseIN12lldb_private12FileSpecListELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN12lldb_private12FileSpecListELb0ELb0EED2Ev.exit: ; preds = %_ZNOSt8optionalIN12lldb_private12FileSpecListEE8value_orIRS1_EES1_OT_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void
}

declare void @_ZN12lldb_private12FileSpecListC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN12lldb_private12FileSpecListD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK12lldb_private16ThreadProperties20GetTraceEnabledStateEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(232) %i.b, i64 noundef 0, ptr noundef null) #32, !inline_history !1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNK12lldb_private10Properties20GetPropertyAtIndexAsIbEET_jS2_PKNS_16ExecutionContextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.h, null
  br i1 %.not10.i.i, label %_ZNK12lldb_private10Properties20GetPropertyAtIndexAsIbEET_jS2_PKNS_16ExecutionContextE.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.b
  %i.i = tail call i16 @_ZNK12lldb_private11OptionValue15GetBooleanValueEv(ptr noundef nonnull align 8 dereferenceable(104) %i.h) #32
  %i.j = and i16 %i.i, 257
  %i.k = icmp eq i16 %i.j, 257
  br label %_ZNK12lldb_private10Properties20GetPropertyAtIndexAsIbEET_jS2_PKNS_16ExecutionContextE.exit

_ZNK12lldb_private10Properties20GetPropertyAtIndexAsIbEET_jS2_PKNS_16ExecutionContextE.exit: ; preds = %bb.a, %bb.b, %.critedge.i.i
  %.sroa.2.1.i.i = phi i1 [ %i.k, %.critedge.i.i ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.2.1.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK12lldb_private16ThreadProperties22GetStepInAvoidsNoDebugEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(232) %i.b, i64 noundef 5, ptr noundef null) #32, !inline_history !1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNK12lldb_private10Properties20GetPropertyAtIndexAsIbEET_jS2_PKNS_16ExecutionContextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.h, null
  br i1 %.not10.i.i, label %_ZNK12lldb_private10Properties20GetPropertyAtIndexAsIbEET_jS2_PKNS_16ExecutionContextE.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.b
  %i.i = tail call i16 @_ZNK12lldb_private11OptionValue15GetBooleanValueEv(ptr noundef nonnull align 8 dereferenceable(104) %i.h) #32
  %i.j = and i16 %i.i, 257
  %i.k = icmp ne i16 %i.j, 256
  br label %_ZNK12lldb_private10Properties20GetPropertyAtIndexAsIbEET_jS2_PKNS_16ExecutionContextE.exit

_ZNK12lldb_private10Properties20GetPropertyAtIndexAsIbEET_jS2_PKNS_16ExecutionContextE.exit: ; preds = %bb.a, %bb.b, %.critedge.i.i
  %.sroa.2.1.i.i = phi i1 [ %i.k, %.critedge.i.i ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.2.1.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK12lldb_private16ThreadProperties23GetStepOutAvoidsNoDebugEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(232) %i.b, i64 noundef 6, ptr noundef null) #32, !inline_history !1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNK12lldb_private10Properties20GetPropertyAtIndexAsIbEET_jS2_PKNS_16ExecutionContextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.h, null
  br i1 %.not10.i.i, label %_ZNK12lldb_private10Properties20GetPropertyAtIndexAsIbEET_jS2_PKNS_16ExecutionContextE.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.b
  %i.i = tail call i16 @_ZNK12lldb_private11OptionValue15GetBooleanValueEv(ptr noundef nonnull align 8 dereferenceable(104) %i.h) #32
  %i.j = and i16 %i.i, 257
  %i.k = icmp eq i16 %i.j, 257
  br label %_ZNK12lldb_private10Properties20GetPropertyAtIndexAsIbEET_jS2_PKNS_16ExecutionContextE.exit

_ZNK12lldb_private10Properties20GetPropertyAtIndexAsIbEET_jS2_PKNS_16ExecutionContextE.exit: ; preds = %bb.a, %bb.b, %.critedge.i.i
  %.sroa.2.1.i.i = phi i1 [ %i.k, %.critedge.i.i ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.2.1.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK12lldb_private16ThreadProperties20GetMaxBacktraceDepthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(232) %i.b, i64 noundef 1, ptr noundef null) #32, !inline_history !2 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNK12lldb_private10Properties20GetPropertyAtIndexAsImEET_jS2_PKNS_16ExecutionContextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.h, null
  br i1 %.not10.i.i, label %_ZNK12lldb_private10Properties20GetPropertyAtIndexAsImEET_jS2_PKNS_16ExecutionContextE.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.b
  %i.i = tail call { i64, i8 } @_ZNK12lldb_private11OptionValue14GetUInt64ValueEv(ptr noundef nonnull align 8 dereferenceable(104) %i.h) #32 ; 2 uses
  %i.j = extractvalue { i64, i8 } %i.i, 0
  %i.k = extractvalue { i64, i8 } %i.i, 1
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = select i1 %i.l, i64 %i.j, i64 600000
  br label %_ZNK12lldb_private10Properties20GetPropertyAtIndexAsImEET_jS2_PKNS_16ExecutionContextE.exit

_ZNK12lldb_private10Properties20GetPropertyAtIndexAsImEET_jS2_PKNS_16ExecutionContextE.exit: ; preds = %bb.a, %bb.b, %.critedge.i.i
  %.sroa.2.1.i.i = phi i64 [ %i.m, %.critedge.i.i ], [ 600000, %bb.b ], [ 600000, %bb.a ]
  ret i64 %.sroa.2.1.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK12lldb_private16ThreadProperties26GetSingleThreadPlanTimeoutEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(232) %i.b, i64 noundef 2, ptr noundef null) #32, !inline_history !2 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNK12lldb_private10Properties20GetPropertyAtIndexAsImEET_jS2_PKNS_16ExecutionContextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.h, null
  br i1 %.not10.i.i, label %_ZNK12lldb_private10Properties20GetPropertyAtIndexAsImEET_jS2_PKNS_16ExecutionContextE.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.b
  %i.i = tail call { i64, i8 } @_ZNK12lldb_private11OptionValue14GetUInt64ValueEv(ptr noundef nonnull align 8 dereferenceable(104) %i.h) #32 ; 2 uses
  %i.j = extractvalue { i64, i8 } %i.i, 0
  %i.k = extractvalue { i64, i8 } %i.i, 1
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = select i1 %i.l, i64 %i.j, i64 1000
  br label %_ZNK12lldb_private10Properties20GetPropertyAtIndexAsImEET_jS2_PKNS_16ExecutionContextE.exit

_ZNK12lldb_private10Properties20GetPropertyAtIndexAsImEET_jS2_PKNS_16ExecutionContextE.exit: ; preds = %bb.a, %bb.b, %.critedge.i.i
  %.sroa.2.1.i.i = phi i64 [ %i.m, %.critedge.i.i ], [ 1000, %bb.b ], [ 1000, %bb.a ]
  ret i64 %.sroa.2.1.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef { ptr, i64 } @_ZN12lldb_private6Thread15ThreadEventData15GetFlavorStringEv() local_unnamed_addr #7 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.1, i64 23 }
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private6Thread15ThreadEventDataC2ESt10shared_ptrIS0_E(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN12lldb_private9EventDataC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #32
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN12lldb_private6Thread15ThreadEventDataE, i64 16), ptr %0, align 8, !tbaa !72
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !89
  store <2 x ptr> %i.d, ptr %i.a, align 8, !tbaa !89
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN12lldb_private6ThreadEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !82
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !83
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !83
  br label %_ZNSt10shared_ptrIN12lldb_private6ThreadEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private6ThreadEEC2ERKS2_.exit

_ZNSt10shared_ptrIN12lldb_private6ThreadEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_0
