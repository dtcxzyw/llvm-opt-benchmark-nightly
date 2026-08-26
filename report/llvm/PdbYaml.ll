Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PdbYaml?download=true
inline.NumInlined: 4811
inline.NumDeleted: 2663
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNSt6vectorIN4llvm3pdb4yaml18NamedStreamMappingESaIS3_EEaSERKS5_:bb.a
  store ptr %i.aa, ptr %i.g, align 8, !tbaa !40
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4llvm3pdb4yaml18NamedStreamMappingESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.f:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !209
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ae, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = icmp sgt i64 %i.f, 24
  br i1 %i.af, label %bb.h, label %bb.i, !prof !159

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4llvm3pdb4yaml18NamedStreamMappingESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.i:                                             ; preds = %bb.g
  %i.ag = icmp eq i64 %i.f, 24
  br i1 %i.ag, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4llvm3pdb4yaml18NamedStreamMappingESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.i, ptr noundef nonnull align 8 dereferenceable(20) %i.c, i64 20, i1 false), !tbaa.struct !211
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4llvm3pdb4yaml18NamedStreamMappingESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.k:                                             ; preds = %bb.f
  %i.ah = icmp sgt i64 %i.ae, 24
  br i1 %i.ah, label %bb.l, label %bb.m, !prof !159

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.ae, i1 false)
  br label %_ZSt4copyIPN4llvm3pdb4yaml18NamedStreamMappingES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.k
  %i.ai = icmp eq i64 %i.ae, 24
  br i1 %i.ai, label %bb.n, label %_ZSt4copyIPN4llvm3pdb4yaml18NamedStreamMappingES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.i, ptr noundef nonnull align 8 dereferenceable(20) %i.c, i64 20, i1 false), !tbaa.struct !211
  br label %_ZSt4copyIPN4llvm3pdb4yaml18NamedStreamMappingES4_ET0_T_S6_S5_.exit

_ZSt4copyIPN4llvm3pdb4yaml18NamedStreamMappingES4_ET0_T_S6_S5_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.aj = load ptr, ptr %1, align 8, !tbaa !37
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !209 ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !37
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ao ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !209 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4llvm3pdb4yaml18NamedStreamMappingESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN4llvm3pdb4yaml18NamedStreamMappingES4_ET0_T_S6_S5_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %i.ak, %_ZSt4copyIPN4llvm3pdb4yaml18NamedStreamMappingES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %i.ap, %_ZSt4copyIPN4llvm3pdb4yaml18NamedStreamMappingES4_ET0_T_S6_S5_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i, i64 24, i1 false), !tbaa.struct !211
  %i.ar = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.ar, %i.aq
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4llvm3pdb4yaml18NamedStreamMappingESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !213

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4llvm3pdb4yaml18NamedStreamMappingESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN4llvm3pdb4yaml18NamedStreamMappingES4_ET0_T_S6_S5_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4llvm3pdb4yaml18NamedStreamMappingESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.at = load ptr, ptr %0, align 8, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !209
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4llvm3pdb4yaml18NamedStreamMappingESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4yaml2IO22mapOptionalWithContextINS_3pdb4yaml12PdbDbiStreamENS0_12EmptyContextEEEvNS_9StringRefERSt8optionalIT_ERT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.std::optional.47", align 8  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 3 uses
  store i8 0, ptr %i.a, align 8, !tbaa !214
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultINS_3pdb4yaml12PdbDbiStreamENS0_12EmptyContextEEEvNS_9StringRefERSt8optionalIT_ERKSA_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(144) %5, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.b = load i8, ptr %i.a, align 8, !tbaa !214, !range !11, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !214
  br i1 %i.c, label %bb.b, label %_ZNSt22_Optional_payload_baseIN4llvm3pdb4yaml12PdbDbiStreamEE8_M_resetEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !127, !range !11, !noundef !12
  %i.f = trunc nuw i8 %i.e to i1
  store i8 0, ptr %i.d, align 8, !tbaa !127
  br i1 %i.f, label %bb.c, label %_ZNSt14_Optional_baseIN4llvm3pdb4yaml21PdbDbiSectionContribsELb0ELb0EED2Ev.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN4llvm3pdb4yaml21PdbDbiSectionContribsELb0ELb0EED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !130
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #20
  br label %_ZNSt14_Optional_baseIN4llvm3pdb4yaml21PdbDbiSectionContribsELb0ELb0EED2Ev.exit.i.i.i

_ZNSt14_Optional_baseIN4llvm3pdb4yaml21PdbDbiSectionContribsELb0ELb0EED2Ev.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !216  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm3pdb4yaml17CoffSectionHeaderESaIS3_EED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Optional_baseIN4llvm3pdb4yaml21PdbDbiSectionContribsELb0ELb0EED2Ev.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !217
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #20
  br label %_ZNSt6vectorIN4llvm3pdb4yaml17CoffSectionHeaderESaIS3_EED2Ev.exit.i.i.i

_ZNSt6vectorIN4llvm3pdb4yaml17CoffSectionHeaderESaIS3_EED2Ev.exit.i.i.i: ; preds = %bb.e, %_ZNSt14_Optional_baseIN4llvm3pdb4yaml21PdbDbiSectionContribsELb0ELb0EED2Ev.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !218  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !219  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4llvm3pdb4yaml16PdbDbiModuleInfoEEvT_S5_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorIN4llvm3pdb4yaml17CoffSectionHeaderESaIS3_EED2Ev.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %_ZNSt6vectorIN4llvm3pdb4yaml17CoffSectionHeaderESaIS3_EED2Ev.exit.i.i.i ] ; 2 uses
  call void @_ZN4llvm3pdb4yaml16PdbDbiModuleInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.05.i.i.i.i.i.i) #19
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 120 ; 2 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i.i1.i.i.i, label %_ZSt8_DestroyIPN4llvm3pdb4yaml16PdbDbiModuleInfoEEvT_S5_.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !220

_ZSt8_DestroyIPN4llvm3pdb4yaml16PdbDbiModuleInfoEEvT_S5_.exitthread-pre-split.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !218
  br label %_ZSt8_DestroyIPN4llvm3pdb4yaml16PdbDbiModuleInfoEEvT_S5_.exit.i.i.i.i

_ZSt8_DestroyIPN4llvm3pdb4yaml16PdbDbiModuleInfoEEvT_S5_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN4llvm3pdb4yaml16PdbDbiModuleInfoEEvT_S5_.exitthread-pre-split.i.i.i.i, %_ZNSt6vectorIN4llvm3pdb4yaml17CoffSectionHeaderESaIS3_EED2Ev.exit.i.i.i
  %i.z = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN4llvm3pdb4yaml16PdbDbiModuleInfoEEvT_S5_.exitthread-pre-split.i.i.i.i ], [ %i.v, %_ZNSt6vectorIN4llvm3pdb4yaml17CoffSectionHeaderESaIS3_EED2Ev.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN4llvm3pdb4yaml12PdbDbiStreamEE8_M_resetEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN4llvm3pdb4yaml16PdbDbiModuleInfoEEvT_S5_.exit.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !221
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #20
  br label %_ZNSt22_Optional_payload_baseIN4llvm3pdb4yaml12PdbDbiStreamEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseIN4llvm3pdb4yaml12PdbDbiStreamEE8_M_resetEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN4llvm3pdb4yaml16PdbDbiModuleInfoEEvT_S5_.exit.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm4yaml2IO21processKeyWithDefaultINS_3pdb4yaml12PdbDbiStreamENS0_12EmptyContextEEEvNS_9StringRefERSt8optionalIT_ERKSA_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(144) %4, i1 noundef zeroext %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %7 = alloca %"class.llvm::StringRef", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i8 1, ptr %i.b, align 1, !tbaa !55
  %i.c = load ptr, ptr %0, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0) #19
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.h = load i8, ptr %i.g, align 8, !tbaa !214, !range !11, !noundef !12
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = xor i1 %i.i, true
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.a ], [ %i.j, %bb.b ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(16) %0) #19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !214, !range !11
  %i.p = trunc nuw i8 %.pre to i1                 ; 2 uses
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.p, label %.thread, label %_ZN4llvm3pdb4yaml12PdbDbiStreamD2Ev.exit

_ZN4llvm3pdb4yaml12PdbDbiStreamD2Ev.exit:         ; preds = %bb.d
  store i32 19990903, ptr %3, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.6.0..sroa_idx, i8 0, i64 10, i1 false)
  store i16 1, ptr %.sroa.9.0..sroa_idx, align 2
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 332, ptr %.sroa.10.0..sroa_idx, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i8 0, ptr %i.r, align 8, !tbaa !127
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, i8 0, i64 72, i1 false)
  store i8 1, ptr %.phi.trans.insert, align 8, !tbaa !214
  br label %.thread

.thread:                                          ; preds = %_ZN4llvm3pdb4yaml12PdbDbiStreamD2Ev.exit, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 136
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  br i1 %i.p, label %bb.f, label %.thread35

bb.f:                                             ; preds = %.thread, %bb.e
  %i.u = phi ptr [ %i.s, %.thread ], [ %i.t, %bb.e ] ; 3 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, i1 noundef zeroext %5, i1 noundef zeroext %i.k, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19
  br i1 %i.y, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %0, align 8, !tbaa !44
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %0) #19
  br i1 %i.ac, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = call noundef ptr @_ZNK4llvm4yaml5Input14getCurrentNodeEv(ptr noundef nonnull align 8 dereferenceable(640) %0) #19 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !151
  %i.ag = icmp ne i32 %i.af, 1
  %.not26 = icmp eq ptr %i.ad, null
  %.not = or i1 %.not26, %i.ag
  br i1 %.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ah, align 8, !tbaa !139
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !140 ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %7, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %.sroa.2.0.copyload.i, ptr %i.ai, align 8
  %i.aj = call noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 noundef signext 32, i64 noundef -1) #19
  %i.ak = add i64 %i.aj, 1
  %i.al = call i64 @llvm.usub.sat.i64(i64 %.sroa.2.0.copyload.i, i64 %i.ak)
  %i.am = load i64, ptr %i.ai, align 8, !tbaa !61 ; 2 uses
  %i.an = sub i64 %i.am, %i.al
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.am, i64 %i.an)
  %.not.i = icmp eq i64 %.sroa.speculated.i.i.i, 6
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread24

_ZN4llvmeqENS_9StringRefES0_.exit.thread24:       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %.critedge

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.i
  %i.ao = load ptr, ptr %7, align 8, !tbaa !57    ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 1
  %i.aq = xor i32 %i.ap, 1852796476
  %i.ar = getelementptr i8, ptr %i.ao, i64 4
  %i.as = load i16, ptr %i.ar, align 1
  %i.at = zext i16 %i.as to i32
  %i.au = xor i32 %i.at, 15973
  %i.av = or i32 %i.aq, %i.au
  %i.aw = icmp ne i32 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %i.ay = icmp eq i32 %i.ax, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br i1 %i.ay, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.az = load i8, ptr %i.u, align 8, !tbaa !214, !range !11, !noundef !12
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.bc = load i8, ptr %i.bb, align 8, !range !11
  %i.bd = trunc nuw i8 %i.bc to i1                ; 2 uses
  %or.cond.i.i.i.i.i = select i1 %i.ba, i1 %i.bd, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(144) %4, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4llvm3pdb4yaml16PdbDbiModuleInfoESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bf) ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !tbaa.struct !222
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.bl = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4llvm3pdb4yaml17CoffSectionHeaderESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @_ZNSt22_Optional_payload_baseIN4llvm3pdb4yaml21PdbDbiSectionContribsEE14_M_copy_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, ptr noundef nonnull align 8 dereferenceable(40) %i.bn)
  br label %_ZNSt8optionalIN4llvm3pdb4yaml12PdbDbiStreamEEaSERKS4_.exit

bb.l:                                             ; preds = %bb.j
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm3pdb4yaml12PdbDbiStreamC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(144) %4)
  store i8 1, ptr %i.u, align 8, !tbaa !214
  br label %_ZNSt8optionalIN4llvm3pdb4yaml12PdbDbiStreamEEaSERKS4_.exit

bb.n:                                             ; preds = %bb.l
  call void @_ZNSt22_Optional_payload_baseIN4llvm3pdb4yaml12PdbDbiStreamEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(144) %3) #19
  br label %_ZNSt8optionalIN4llvm3pdb4yaml12PdbDbiStreamEEaSERKS4_.exit

.critedge:                                        ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread24, %bb.g, %bb.h, %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.bo = load ptr, ptr %0, align 8, !tbaa !44
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 104
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !223
  call void @_ZN4llvm4yaml13MappingTraitsINS_3pdb4yaml12PdbDbiStreamEE7mappingERNS0_2IOERS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(136) %3)
  %i.br = load ptr, ptr %0, align 8, !tbaa !44
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 112
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !223
  br label %_ZNSt8optionalIN4llvm3pdb4yaml12PdbDbiStreamEEaSERKS4_.exit

_ZNSt8optionalIN4llvm3pdb4yaml12PdbDbiStreamEEaSERKS4_.exit: ; preds = %bb.n, %bb.m, %bb.k, %.critedge
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.bv = load ptr, ptr %0, align 8, !tbaa !44
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 128
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.bu) #19
  br label %_ZNSt8optionalIN4llvm3pdb4yaml12PdbDbiStreamEEaSERKS4_.exit22

bb.o:                                             ; preds = %bb.f
  %.pre34 = load i8, ptr %i.b, align 1, !tbaa !55, !range !11
  %i.by = trunc nuw i8 %.pre34 to i1
  br i1 %i.by, label %.thread35, label %_ZNSt8optionalIN4llvm3pdb4yaml12PdbDbiStreamEEaSERKS4_.exit22

.thread35:                                        ; preds = %bb.e, %bb.o
  %i.bz = phi ptr [ %i.u, %bb.o ], [ %i.t, %bb.e ] ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !214, !range !11, !noundef !12
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.cd = load i8, ptr %i.cc, align 8, !range !11
  %i.ce = trunc nuw i8 %i.cd to i1                ; 2 uses
  %or.cond.i.i.i.i.i21 = select i1 %i.cb, i1 %i.ce, i1 false
  br i1 %or.cond.i.i.i.i.i21, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(144) %4, i64 24, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ch = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4llvm3pdb4yaml16PdbDbiModuleInfoESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.cg) ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false), !tbaa.struct !222
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.cm = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4llvm3pdb4yaml17CoffSectionHeaderESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.cl) ; 0 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @_ZNSt22_Optional_payload_baseIN4llvm3pdb4yaml21PdbDbiSectionContribsEE14_M_copy_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(40) %i.cn, ptr noundef nonnull align 8 dereferenceable(40) %i.co)
  br label %_ZNSt8optionalIN4llvm3pdb4yaml12PdbDbiStreamEEaSERKS4_.exit22

bb.q:                                             ; preds = %.thread35
  br i1 %i.ce, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm3pdb4yaml12PdbDbiStreamC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(144) %4)
  store i8 1, ptr %i.bz, align 8, !tbaa !214
  br label %_ZNSt8optionalIN4llvm3pdb4yaml12PdbDbiStreamEEaSERKS4_.exit22

bb.s:                                             ; preds = %bb.q
  call void @_ZNSt22_Optional_payload_baseIN4llvm3pdb4yaml12PdbDbiStreamEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(144) %3) #19
  br label %_ZNSt8optionalIN4llvm3pdb4yaml12PdbDbiStreamEEaSERKS4_.exit22

_ZNSt8optionalIN4llvm3pdb4yaml12PdbDbiStreamEEaSERKS4_.exit22: ; preds = %bb.s, %bb.r, %bb.p, %bb.o, %_ZNSt8optionalIN4llvm3pdb4yaml12PdbDbiStreamEEaSERKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3pdb4yaml16PdbDbiModuleInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !224, !range !11, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !224
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseIN4llvm3pdb4yaml13PdbModiStreamELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !226  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !229  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4llvm12CodeViewYAML12SymbolRecordEEvT_S4_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b, %_ZSt8_DestroyIN4llvm12CodeViewYAML12SymbolRecordEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyIN4llvm12CodeViewYAML12SymbolRecordEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !230  ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
end_hunk_0
