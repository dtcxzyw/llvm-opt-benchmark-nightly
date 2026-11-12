Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DynamicTypePropagation?download=true
inline.NumInlined: 2389
inline.NumDeleted: 1387
begin_hunk_0_@_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE:bb.a
  %i.p = ptrtoint ptr %3 to i64
  %i.q = and i64 %i.p, -7
  %i.r = or disjoint i64 %i.k, %i.q
  store i64 %i.r, ptr %i.o, align 8, !alias.scope !945
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !alias.scope !945
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !tbaa.struct !210
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not19.i = icmp eq ptr %2, null
  %spec.select.i = select i1 %.not19.i, ptr %.pre.i, ptr %2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !211, !nonnull !23, !align !67
  store ptr %i.a, ptr %5, align 8, !tbaa !207
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.a) #20
  %i.v = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr nofree noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %spec.select.i, i1 noundef zeroext false) #20
  %i.w = load ptr, ptr %5, align 8, !tbaa !207    ; 2 uses
  %.not.i.i23.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i23.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i: ; preds = %bb.f
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.w) #20
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.g

_ZN5clang4ento14CheckerContext17addTransitionImplEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEbPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %.phi.trans.insert.i5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i6 = load ptr, ptr %.phi.trans.insert.i5, align 8, !tbaa !206
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

bb.g:                                             ; preds = %bb.b, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i
  %.015.i.ph = phi ptr [ %.pre.i, %bb.b ], [ %i.v, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.a) #20
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN5clang4ento14CheckerContext17addTransitionImplEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEbPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE.exit, %bb.g
  %.015.i9 = phi ptr [ %.pre.i6, %_ZN5clang4ento14CheckerContext17addTransitionImplEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEbPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE.exit ], [ %.015.i.ph, %bb.g ]
  ret ptr %.015.i9
}

declare noundef zeroext i1 @_ZN5clang10ASTContext23canAssignObjCInterfacesEPKNS_21ObjCObjectPointerTypeES3_(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #14

declare void @_ZN5clang21SimpleProgramPointTagC1EN4llvm9StringRefES2_(ptr noundef nonnull align 8 dereferenceable(48), ptr, i64, ptr, i64) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang21SimpleProgramPointTagD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5clang21SimpleProgramPointTagE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !33
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN5clang15ProgramPointTagD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #20
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5clang4ento14CheckerContext25generateNonFatalErrorNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr nofree noundef align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !207    ; 3 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !207
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.a) #20
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.0.copyload.i.i.i.i = load i64, ptr %i.b, align 8
  %i.c = and i64 %.0.copyload.i.i.i.i, -8
  %i.d = inttoptr i64 %i.c to ptr
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, %bb.c
  %i.e = phi ptr [ %i.d, %bb.c ], [ %3, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit ]
  %i.f = call noundef ptr @_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %2, ptr noundef %i.e)
  %i.g = load ptr, ptr %4, align 8, !tbaa !207    ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.g, null
  br i1 %.not.i.i4, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.g) #20
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %bb.d, %bb.e
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_122DynamicTypePropagation17reportGenericsBugEPKN5clang21ObjCObjectPointerTypeES4_PNS1_4ento12ExplodedNodeEPKNS5_7SymExprERNS5_14CheckerContextEPKNS1_4StmtE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(81) %5, ptr noundef %6) unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.std::unique_ptr.940", align 8 ; 5 uses
  %8 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %10 = alloca %"class.llvm::SmallString", align 8 ; 8 uses
  %11 = alloca %"class.llvm::raw_svector_ostream", align 8 ; 17 uses
  %12 = alloca %"struct.clang::PrintingPolicy", align 8 ; 5 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %14 = alloca %"struct.clang::PrintingPolicy", align 8 ; 5 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %16 = alloca %"class.std::unique_ptr.924", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i8, ptr %i.a, align 8, !tbaa !21, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %i.e, ptr %10, align 8, !tbaa !349
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !350
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 192, ptr %i.g, align 8, !tbaa !351
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 2, ptr %i.h, align 8, !tbaa !355
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i8 0, ptr %i.i, align 8, !tbaa !356
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 44
  store i32 1, ptr %i.j, align 4, !tbaa !357
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %11, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  store ptr %10, ptr %i.l, align 8, !tbaa !359
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef null, i64 noundef 0, i32 noundef 0) #20
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !360
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 9 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !361  ; 2 uses
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp ult i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.5, i64 noundef 31) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.p, ptr noundef nonnull align 1 dereferenceable(31) @.str.5, i64 31, i1 false)
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !361
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 31
  store ptr %i.w, ptr %i.o, align 8, !tbaa !361
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.x = load ptr, ptr %5, align 8, !tbaa !66, !nonnull !23, !align !67
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !202, !nonnull !23, !align !67 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef nonnull align 8 dereferenceable(23904) ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(272) %i.z) #20, !inline_history !946
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2600
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !735, !nonnull !23, !align !67 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8            ; 11 uses
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = and i64 %i.ah, 512
  %i.aj = lshr i64 %i.ag, 5
  %i.ak = and i64 %i.aj, 8388608
  %17 = or disjoint i64 %i.ai, %i.ak
  %i.al = or disjoint i64 %17, 4472834
  %i.am = and i64 %i.ag, 8192
  %.not.i = icmp eq i64 %i.am, 0
  %i.an = shl i64 %i.ag, 21
  %i.ao = and i64 %i.an, 16777216
  %i.ap = select i1 %.not.i, i64 %i.ao, i64 16777216
  %i.aq = shl i64 %i.ag, 13
  %i.ar = and i64 %i.aq, 33554432
  %i.as = or disjoint i64 %i.ap, %i.ar
  %i.at = shl i64 %i.ag, 26
  %i.au = and i64 %i.at, 67108864
  %i.av = or disjoint i64 %i.as, %i.au
  %i.aw = shl i64 %i.ag, 14
  %i.ax = and i64 %i.aw, 134217728
  %i.ay = or disjoint i64 %i.av, %i.ax
  %i.az = shl i64 %i.ag, 27
  %i.ba = and i64 %i.az, 268435456
  %i.bb = or disjoint i64 %i.ay, %i.ba
  %i.bc = shl i64 %i.ag, 17
  %i.bd = and i64 %i.bc, 1610612736
  %i.be = shl i64 %i.ag, 4                        ; 2 uses
  %i.bf = and i64 %i.be, 8589934592
  %i.bg = and i64 %i.ag, 128
  %.not17.i = icmp eq i64 %i.bg, 0
  %i.bh = and i64 %i.be, 17179869184
  %i.bi = xor i64 %i.bh, 112201725640704
  %i.bj = select i1 %.not17.i, i64 112184545771520, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = shl i64 %i.bl, 7
  %i.bn = and i64 %i.bm, 140737488355328
  %.masked.masked.masked = or i64 %i.bb, %i.bd
  %.masked45.masked = or i64 %.masked.masked.masked, %i.bf
  %.masked = or i64 %.masked45.masked, %i.al
  %i.bo = or i64 %.masked, %i.bj
  %i.bp = or i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, 1610612736
  store i64 %i.bq, ptr %12, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.br, align 8, !tbaa !736
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 1, ptr %i.bs, align 8, !tbaa !739
  %i.bt = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.bt, align 1, !tbaa !740
  call void @_ZN5clang8QualType5printEPKNS_4TypeENS_10QualifiersERN4llvm11raw_ostreamERKNS_14PrintingPolicyERKNS5_5TwineEj(ptr noundef %1, i64 0, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(34) %13, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.bu = load ptr, ptr %i.m, align 8, !tbaa !360
  %i.bv = load ptr, ptr %i.o, align 8, !tbaa !361 ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = icmp ult i64 %i.by, 24
  br i1 %i.bz, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ca = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.6, i64 noundef 24) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit10

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bv, ptr noundef nonnull align 1 dereferenceable(24) @.str.6, i64 24, i1 false)
  %i.cb = load ptr, ptr %i.o, align 8, !tbaa !361
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store ptr %i.cc, ptr %i.o, align 8, !tbaa !361
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit10

_ZN4llvm11raw_ostreamlsEPKc.exit10:               ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.cd = load ptr, ptr %5, align 8, !tbaa !66, !nonnull !23, !align !67
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !202, !nonnull !23, !align !67 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !28
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef nonnull align 8 dereferenceable(23904) ptr %i.ci(ptr noundef nonnull align 8 dereferenceable(272) %i.cf) #20, !inline_history !946
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2600
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !735, !nonnull !23, !align !67 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8            ; 11 uses
  %i.cn = lshr i64 %i.cm, 3
  %i.co = and i64 %i.cn, 512
  %i.cp = lshr i64 %i.cm, 5
  %i.cq = and i64 %i.cp, 8388608
  %18 = or disjoint i64 %i.co, %i.cq
  %i.cr = or disjoint i64 %18, 4472834
  %i.cs = and i64 %i.cm, 8192
  %.not.i11 = icmp eq i64 %i.cs, 0
  %i.ct = shl i64 %i.cm, 21
  %i.cu = and i64 %i.ct, 16777216
  %i.cv = select i1 %.not.i11, i64 %i.cu, i64 16777216
  %i.cw = shl i64 %i.cm, 13
  %i.cx = and i64 %i.cw, 33554432
  %i.cy = or disjoint i64 %i.cv, %i.cx
  %i.cz = shl i64 %i.cm, 26
  %i.da = and i64 %i.cz, 67108864
  %i.db = or disjoint i64 %i.cy, %i.da
  %i.dc = shl i64 %i.cm, 14
  %i.dd = and i64 %i.dc, 134217728
  %i.de = or disjoint i64 %i.db, %i.dd
  %i.df = shl i64 %i.cm, 27
  %i.dg = and i64 %i.df, 268435456
  %i.dh = or disjoint i64 %i.de, %i.dg
  %i.di = shl i64 %i.cm, 17
  %i.dj = and i64 %i.di, 1610612736
  %i.dk = shl i64 %i.cm, 4                        ; 2 uses
  %i.dl = and i64 %i.dk, 8589934592
  %i.dm = and i64 %i.cm, 128
  %.not17.i12 = icmp eq i64 %i.dm, 0
  %i.dn = and i64 %i.dk, 17179869184
  %i.do = xor i64 %i.dn, 112201725640704
  %i.dp = select i1 %.not17.i12, i64 112184545771520, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cl, i64 80
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = shl i64 %i.dr, 7
  %i.dt = and i64 %i.ds, 140737488355328
  %.masked43.masked.masked = or i64 %i.dh, %i.dj
  %.masked48.masked = or i64 %.masked43.masked.masked, %i.dl
  %.masked50 = or i64 %.masked48.masked, %i.cr
  %i.du = or i64 %.masked50, %i.dp
  %i.dv = or i64 %i.du, %i.dt
  %i.dw = xor i64 %i.dv, 1610612736
  store i64 %i.dw, ptr %14, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.dx, align 8, !tbaa !736
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 1, ptr %i.dy, align 8, !tbaa !739
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.dz, align 1, !tbaa !740
  call void @_ZN5clang8QualType5printEPKNS_4TypeENS_10QualifiersERN4llvm11raw_ostreamERKNS_14PrintingPolicyERKNS5_5TwineEj(ptr noundef %2, i64 0, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(34) %15, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.ea = load ptr, ptr %i.m, align 8, !tbaa !360
  %i.eb = load ptr, ptr %i.o, align 8, !tbaa !361 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit10
  %i.ed = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.7, i64 noundef 1) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit10
  store i8 39, ptr %i.eb, align 1
  %i.ee = load ptr, ptr %i.o, align 8, !tbaa !361
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  store ptr %i.ef, ptr %i.o, align 8, !tbaa !361
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

_ZN4llvm11raw_ostreamlsEPKc.exit15:               ; preds = %bb.g, %bb.h
  %i.eg = load ptr, ptr %i.l, align 8, !tbaa !743, !nonnull !23, !align !67 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !349
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !350
  %i.ek = call noalias noundef nonnull dereferenceable(1000) ptr @_Znwm(i64 noundef 1000) #21, !noalias !954 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20, !noalias !954
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 5, ptr %i.el, align 8, !tbaa !739, !noalias !954
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.em, align 1, !tbaa !740, !noalias !954
  store ptr %i.eh, ptr %9, align 8, !tbaa !33, !noalias !954
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.ej, ptr %i.en, align 8, !tbaa !33, !noalias !954
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !954
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, i8 0, i64 64, i1 false), !noalias !954
  store i32 1, ptr %8, align 8, !tbaa !748, !noalias !954
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.eo, i8 0, i64 28, i1 false), !noalias !954
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ep, i8 0, i64 17, i1 false), !noalias !954
  call void @_ZN5clang4ento22PathSensitiveBugReportC2ERKNS0_7BugTypeERKN4llvm5TwineES8_PKNS0_12ExplodedNodeENS0_22PathDiagnosticLocationEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(1000) %i.ek, ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr noundef %3, ptr noundef nonnull byval(%"class.clang::ento::PathDiagnosticLocation") align 8 %8, ptr noundef null) #20, !noalias !954
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !954
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !954
  call void @_ZN5clang4ento22PathSensitiveBugReport15markInterestingEPKNS0_7SymExprENS0_11bugreporter12TrackingKindE(ptr noundef nonnull align 8 dereferenceable(1000) %i.ek, ptr noundef nonnull %4, i32 noundef 0) #20
  %i.eq = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21, !noalias !955 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store ptr null, ptr %i.er, align 8, !tbaa !956, !noalias !955
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_122DynamicTypePropagation18GenericsBugVisitorE, i64 16), ptr %i.eq, align 8, !tbaa !28, !noalias !955
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store ptr %4, ptr %i.es, align 8, !tbaa !751, !noalias !955
  store ptr %i.eq, ptr %16, align 8, !tbaa !959
  call void @_ZN5clang4ento22PathSensitiveBugReport10addVisitorESt10unique_ptrINS0_18BugReporterVisitorESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(1000) %i.ek, ptr nofree noundef nonnull align 8 dereferenceable(8) %16) #20
  %i.et = load ptr, ptr %16, align 8, !tbaa !960  ; 3 uses
  %.not.i16 = icmp eq ptr %i.et, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN12_GLOBAL__N_122DynamicTypePropagation18GenericsBugVisitorESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5clang4ento18BugReporterVisitorEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5clang4ento18BugReporterVisitorEEclEPS2_.exit.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit15
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !28
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.et) #20, !inline_history !951
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_122DynamicTypePropagation18GenericsBugVisitorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN12_GLOBAL__N_122DynamicTypePropagation18GenericsBugVisitorESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5clang4ento18BugReporterVisitorEEclEPS2_.exit.i, %_ZN4llvm11raw_ostreamlsEPKc.exit15
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_122DynamicTypePropagation18GenericsBugVisitorESt14default_deleteIS2_EED2Ev.exit
  %i.ex = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #24 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ek, i64 88 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ek, i64 96 ; 3 uses
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !304 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ek, i64 100
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !305
  %.not.i.i = icmp ult i32 %i.fa, %i.fc
  br i1 %.not.i.i, label %bb.k, label %bb.j, !prof !42

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang11SourceRangeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, i64 %i.ex)
  br label %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit

bb.k:                                             ; preds = %bb.i
  %i.fd = zext i32 %i.fa to i64
  %i.fe = load ptr, ptr %i.ey, align 8, !tbaa !303
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fd
  store i64 %i.ex, ptr %i.ff, align 1
  %i.fg = load i32, ptr %i.ez, align 8, !tbaa !304
  %i.fh = add i32 %i.fg, 1
  store i32 %i.fh, ptr %i.ez, align 8, !tbaa !304
  br label %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit

_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit: ; preds = %bb.k, %bb.j, %_ZNSt10unique_ptrIN12_GLOBAL__N_122DynamicTypePropagation18GenericsBugVisitorESt14default_deleteIS2_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 1, ptr %i.fi, align 8, !tbaa !208
  %i.fj = load ptr, ptr %5, align 8, !tbaa !66, !nonnull !23, !align !67
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 672 ; 2 uses
  %i.fl = ptrtoint ptr %i.ek to i64
  store i64 %i.fl, ptr %7, align 8, !tbaa !962
  %i.fm = load ptr, ptr %i.fk, align 8, !tbaa !28
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(120) %i.fk, ptr nofree noundef nonnull align 8 dereferenceable(8) %7) #20, !inline_history !952
  %i.fp = load ptr, ptr %7, align 8, !tbaa !962   ; 3 uses
  %.not.i.i18 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i18, label %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i: ; preds = %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !28
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(488) %i.fp) #20, !inline_history !953
  br label %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit, %_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.ft = load ptr, ptr %10, align 8, !tbaa !349  ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.e
  br i1 %i.fu, label %_ZN4llvm11SmallVectorIcLj192EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit
  call void @free(ptr noundef %i.ft) #20
  br label %_ZN4llvm11SmallVectorIcLj192EED2Ev.exit

_ZN4llvm11SmallVectorIcLj192EED2Ev.exit:          ; preds = %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN4llvm11SmallVectorIcLj192EED2Ev.exit
  ret void
}

declare noundef ptr @_ZNK5clang17ObjCInterfaceType7getDeclEv(ptr noundef nonnull align 16 dereferenceable(48)) local_unnamed_addr #5

declare noundef ptr @_ZNK5clang17ObjCInterfaceDecl13getSuperClassEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK5clang14ObjCObjectType13isSpecializedEv(ptr noundef nonnull align 16 dereferenceable(40)) local_unnamed_addr #5

declare void @_ZN5clang8QualType5printEPKNS_4TypeENS_10QualifiersERN4llvm11raw_ostreamERKNS_14PrintingPolicyERKNS5_5TwineEj(ptr noundef, i64, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(34), i32 noundef) local_unnamed_addr #5

declare void @_ZN5clang4ento22PathSensitiveBugReport15markInterestingEPKNS0_7SymExprENS0_11bugreporter12TrackingKindE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN5clang4ento22PathSensitiveBugReport10addVisitorESt10unique_ptrINS0_18BugReporterVisitorESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(1000), ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #9

declare void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN5clang4ento22PathSensitiveBugReportC2ERKNS0_7BugTypeERKN4llvm5TwineES8_PKNS0_12ExplodedNodeENS0_22PathDiagnosticLocationEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(97), ptr noundef nonnull align 8 dereferenceable(34), ptr noundef nonnull align 8 dereferenceable(34), ptr noundef, ptr noundef byval(%"class.clang::ento::PathDiagnosticLocation") align 8, ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN5clang4ento18BugReporterVisitorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_122DynamicTypePropagation18GenericsBugVisitorD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN5clang4ento18BugReporterVisitorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_122DynamicTypePropagation18GenericsBugVisitor9VisitNodeEPKN5clang4ento12ExplodedNodeERNS3_18BugReporterContextERNS3_22PathSensitiveBugReportE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree nonnull readnone align 8 captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SmallString.950", align 8 ; 8 uses
  %6 = alloca %"class.llvm::raw_svector_ostream", align 8 ; 26 uses
  %7 = alloca %"struct.clang::PrintingPolicy", align 8 ; 5 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %9 = alloca %"struct.clang::PrintingPolicy", align 8 ; 5 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %11 = alloca %"struct.clang::PrintingPolicy", align 8 ; 5 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %13 = alloca %"struct.clang::PrintingPolicy", align 8 ; 5 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %15 = alloca %"struct.clang::PrintingPolicy", align 8 ; 5 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %17 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !207  ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.b) #20
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = tail call noundef ptr @_ZNK5clang4ento12ExplodedNode9NodeGroup5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #20
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !973
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !207  ; 4 uses
  %.not.i.i35 = icmp eq ptr %i.g, null
  br i1 %.not.i.i35, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit36, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.g) #20
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit36

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit36: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !751
  %i.j = tail call noundef ptr @_ZNK5clang4ento12ProgramState7FindGDMEPKv(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull @_ZZN5clang4ento17ProgramStateTraitIN12_GLOBAL__N_126MostSpecializedTypeArgsMapEE8GDMIndexEvE5Index) #20 ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.j, null
  br i1 %.not.i.i37, label %_ZNK5clang4ento12ProgramState3getIN12_GLOBAL__N_126MostSpecializedTypeArgsMapEEENS0_17ProgramStateTraitIT_E11lookup_typeENS7_8key_typeE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit36
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24, !noalias !974 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang4ento12ProgramState3getIN12_GLOBAL__N_126MostSpecializedTypeArgsMapEEENS0_17ProgramStateTraitIT_E11lookup_typeENS7_8key_typeE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  %i.m = load i32, ptr %i.l, align 4, !tbaa !302, !noalias !974
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !327  ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.01117.i.i.i.i = phi ptr [ %i.k, %bb.e ], [ %.2.i.i.i.i, %bb.g ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01117.i.i.i.i, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !307
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !327  ; 2 uses
  %i.t = icmp eq i32 %i.o, %i.s
  br i1 %i.t, label %_ZN4llvm11ImutAVLTreeINS_16ImutKeyValueInfoIPKN5clang4ento7SymExprEPKNS2_21ObjCObjectPointerTypeEEEE4findERKS6_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp ult i32 %i.o, %i.s
  %.2.in.v.i.i.i.i = select i1 %i.u, i64 8, i64 16
  %.2.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01117.i.i.i.i, i64 %.2.in.v.i.i.i.i
  %.2.i.i.i.i = load ptr, ptr %.2.in.i.i.i.i, align 8, !tbaa !306 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.2.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.loopexit.i, label %bb.f

_ZN4llvm11ImutAVLTreeINS_16ImutKeyValueInfoIPKN5clang4ento7SymExprEPKNS2_21ObjCObjectPointerTypeEEEE4findERKS6_.exit.i.i.i: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.01117.i.i.i.i, i64 56
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.g, %_ZN4llvm11ImutAVLTreeINS_16ImutKeyValueInfoIPKN5clang4ento7SymExprEPKNS2_21ObjCObjectPointerTypeEEEE4findERKS6_.exit.i.i.i
  %.1.i.i.ph.i = phi ptr [ %i.v, %_ZN4llvm11ImutAVLTreeINS_16ImutKeyValueInfoIPKN5clang4ento7SymExprEPKNS2_21ObjCObjectPointerTypeEEEE4findERKS6_.exit.i.i.i ], [ null, %bb.g ] ; 2 uses
  %i.w = icmp eq i32 %i.m, 0
  br i1 %i.w, label %bb.h, label %_ZNK5clang4ento12ProgramState3getIN12_GLOBAL__N_126MostSpecializedTypeArgsMapEEENS0_17ProgramStateTraitIT_E11lookup_typeENS7_8key_typeE.exit

bb.h:                                             ; preds = %.loopexit.i
  tail call void @_ZN4llvm11ImutAVLTreeINS_16ImutKeyValueInfoIPKN5clang4ento7SymExprEPKNS2_21ObjCObjectPointerTypeEEEE7destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %i.k), !inline_history !1
  br label %_ZNK5clang4ento12ProgramState3getIN12_GLOBAL__N_126MostSpecializedTypeArgsMapEEENS0_17ProgramStateTraitIT_E11lookup_typeENS7_8key_typeE.exit

_ZNK5clang4ento12ProgramState3getIN12_GLOBAL__N_126MostSpecializedTypeArgsMapEEENS0_17ProgramStateTraitIT_E11lookup_typeENS7_8key_typeE.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit36, %bb.d, %.loopexit.i, %bb.h
  %.1.i.i14.i = phi ptr [ %.1.i.i.ph.i, %bb.h ], [ %.1.i.i.ph.i, %.loopexit.i ], [ null, %bb.d ], [ null, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit36 ] ; 3 uses
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !751
  %i.y = tail call noundef ptr @_ZNK5clang4ento12ProgramState7FindGDMEPKv(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull @_ZZN5clang4ento17ProgramStateTraitIN12_GLOBAL__N_126MostSpecializedTypeArgsMapEE8GDMIndexEvE5Index) #20 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.y, null
  br i1 %.not.i.i38, label %_ZNK5clang4ento12ProgramState3getIN12_GLOBAL__N_126MostSpecializedTypeArgsMapEEENS0_17ProgramStateTraitIT_E11lookup_typeENS7_8key_typeE.exit49, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang4ento12ProgramState3getIN12_GLOBAL__N_126MostSpecializedTypeArgsMapEEENS0_17ProgramStateTraitIT_E11lookup_typeENS7_8key_typeE.exit
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !24, !noalias !975 ; 4 uses
  %.not.i.i.i.i.i39 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i39, label %_ZNK5clang4ento12ProgramState3getIN12_GLOBAL__N_126MostSpecializedTypeArgsMapEEENS0_17ProgramStateTraitIT_E11lookup_typeENS7_8key_typeE.exit49, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 68
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !302, !noalias !975
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !327 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.01117.i.i.i.i40 = phi ptr [ %i.z, %bb.j ], [ %.2.i.i.i.i43, %bb.l ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01117.i.i.i.i40, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !307
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !327 ; 2 uses
  %i.ai = icmp eq i32 %i.ad, %i.ah
  br i1 %i.ai, label %_ZN4llvm11ImutAVLTreeINS_16ImutKeyValueInfoIPKN5clang4ento7SymExprEPKNS2_21ObjCObjectPointerTypeEEEE4findERKS6_.exit.i.i.i48, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = icmp ult i32 %i.ad, %i.ah
  %.2.in.v.i.i.i.i41 = select i1 %i.aj, i64 8, i64 16
  %.2.in.i.i.i.i42 = getelementptr inbounds nuw i8, ptr %.01117.i.i.i.i40, i64 %.2.in.v.i.i.i.i41
  %.2.i.i.i.i43 = load ptr, ptr %.2.in.i.i.i.i42, align 8, !tbaa !306 ; 2 uses
  %.not.i.i.i.i44 = icmp eq ptr %.2.i.i.i.i43, null
  br i1 %.not.i.i.i.i44, label %.loopexit.i45, label %bb.k

_ZN4llvm11ImutAVLTreeINS_16ImutKeyValueInfoIPKN5clang4ento7SymExprEPKNS2_21ObjCObjectPointerTypeEEEE4findERKS6_.exit.i.i.i48: ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %.01117.i.i.i.i40, i64 56
  br label %.loopexit.i45

.loopexit.i45:                                    ; preds = %bb.l, %_ZN4llvm11ImutAVLTreeINS_16ImutKeyValueInfoIPKN5clang4ento7SymExprEPKNS2_21ObjCObjectPointerTypeEEEE4findERKS6_.exit.i.i.i48
  %.1.i.i.ph.i46 = phi ptr [ %i.ak, %_ZN4llvm11ImutAVLTreeINS_16ImutKeyValueInfoIPKN5clang4ento7SymExprEPKNS2_21ObjCObjectPointerTypeEEEE4findERKS6_.exit.i.i.i48 ], [ null, %bb.l ] ; 2 uses
  %i.al = icmp eq i32 %i.ab, 0
  br i1 %i.al, label %bb.m, label %_ZNK5clang4ento12ProgramState3getIN12_GLOBAL__N_126MostSpecializedTypeArgsMapEEENS0_17ProgramStateTraitIT_E11lookup_typeENS7_8key_typeE.exit49

bb.m:                                             ; preds = %.loopexit.i45
  tail call void @_ZN4llvm11ImutAVLTreeINS_16ImutKeyValueInfoIPKN5clang4ento7SymExprEPKNS2_21ObjCObjectPointerTypeEEEE7destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %i.z), !inline_history !1
  br label %_ZNK5clang4ento12ProgramState3getIN12_GLOBAL__N_126MostSpecializedTypeArgsMapEEENS0_17ProgramStateTraitIT_E11lookup_typeENS7_8key_typeE.exit49

_ZNK5clang4ento12ProgramState3getIN12_GLOBAL__N_126MostSpecializedTypeArgsMapEEENS0_17ProgramStateTraitIT_E11lookup_typeENS7_8key_typeE.exit49: ; preds = %_ZNK5clang4ento12ProgramState3getIN12_GLOBAL__N_126MostSpecializedTypeArgsMapEEENS0_17ProgramStateTraitIT_E11lookup_typeENS7_8key_typeE.exit, %bb.i, %.loopexit.i45, %bb.m
  %.1.i.i14.i47 = phi ptr [ %.1.i.i.ph.i46, %bb.m ], [ %.1.i.i.ph.i46, %.loopexit.i45 ], [ null, %bb.i ], [ null, %_ZNK5clang4ento12ProgramState3getIN12_GLOBAL__N_126MostSpecializedTypeArgsMapEEENS0_17ProgramStateTraitIT_E11lookup_typeENS7_8key_typeE.exit ] ; 2 uses
  %.not = icmp eq ptr %.1.i.i14.i, null
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK5clang4ento12ProgramState3getIN12_GLOBAL__N_126MostSpecializedTypeArgsMapEEENS0_17ProgramStateTraitIT_E11lookup_typeENS7_8key_typeE.exit49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit93

bb.o:                                             ; preds = %_ZNK5clang4ento12ProgramState3getIN12_GLOBAL__N_126MostSpecializedTypeArgsMapEEENS0_17ProgramStateTraitIT_E11lookup_typeENS7_8key_typeE.exit49
  %.not31 = icmp eq ptr %.1.i.i14.i47, null
  br i1 %.not31, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = load ptr, ptr %.1.i.i14.i47, align 8, !tbaa !347
  %i.an = load ptr, ptr %.1.i.i14.i, align 8, !tbaa !347
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit93

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.ap = tail call noundef ptr @_ZNK5clang4ento12ExplodedNode21getStmtForDiagnosticsEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #20 ; 8 uses
  %.not32 = icmp eq ptr %i.ap, null
  br i1 %.not32, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit93

bb.t:                                             ; preds = %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !978, !nonnull !23, !align !67
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !979, !nonnull !23, !align !67 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef nonnull align 8 dereferenceable(23904) ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at) #20, !inline_history !967
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2600
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !735, !nonnull !23, !align !67 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.ba, ptr %5, align 8, !tbaa !349
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.bb, align 8, !tbaa !350
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 256, ptr %i.bc, align 8, !tbaa !351
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 2, ptr %i.bd, align 8, !tbaa !355
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 0, ptr %i.be, align 8, !tbaa !356
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 1, ptr %i.bf, align 4, !tbaa !357
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %6, align 8, !tbaa !28
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store ptr %5, ptr %i.bh, align 8, !tbaa !359
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef null, i64 noundef 0, i32 noundef 0) #20
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 8 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !360
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 26 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !361 ; 2 uses
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = icmp ult i64 %i.bo, 6
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.8, i64 noundef 6) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bl, ptr noundef nonnull align 1 dereferenceable(6) @.str.8, i64 6, i1 false)
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !361
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 6
  store ptr %i.bs, ptr %i.bk, align 8, !tbaa !361
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.u, %bb.v
  %i.bt = load ptr, ptr %.1.i.i14.i, align 8, !tbaa !347
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.bu = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bv = lshr i64 %i.bu, 3
  %i.bw = and i64 %i.bv, 512
  %i.bx = lshr i64 %i.bu, 5
  %i.by = and i64 %i.bx, 8388608
  %18 = or disjoint i64 %i.bw, %i.by
  %i.bz = or disjoint i64 %18, 4472834
  %19 = load i64, ptr %i.az, align 8              ; 2 uses
  %i.ca = and i64 %19, 8192
  %.not.i = icmp eq i64 %i.ca, 0
  %i.cb = shl i64 %19, 21
  %i.cc = and i64 %i.cb, 16777216
  %i.cd = select i1 %.not.i, i64 %i.cc, i64 16777216
  %i.ce = or disjoint i64 %i.cd, %i.bz
  %i.cf = load i64, ptr %i.az, align 8            ; 4 uses
  %i.cg = shl i64 %i.cf, 13
  %i.ch = and i64 %i.cg, 33554432
  %i.ci = or disjoint i64 %i.ce, %i.ch
  %i.cj = shl i64 %i.cf, 26
  %i.ck = and i64 %i.cj, 67108864
  %20 = shl i64 %i.cf, 14
  %21 = and i64 %20, 134217728
  %22 = or disjoint i64 %i.ci, %i.ck
  %i.cl = shl i64 %i.cf, 27
  %i.cm = and i64 %i.cl, 268435456
  %23 = load i64, ptr %i.az, align 8              ; 3 uses
  %i.cn = shl i64 %23, 17
  %i.co = and i64 %i.cn, 536870912
  %i.cp = shl i64 %23, 17
  %i.cq = and i64 %i.cp, 1073741824
  %24 = shl i64 %23, 4
  %25 = and i64 %24, 8589934592
  %26 = load i64, ptr %i.az, align 8              ; 2 uses
  %i.cr = and i64 %26, 128
  %.not17.i = icmp eq i64 %i.cr, 0
  %i.cs = shl i64 %26, 4
  %i.ct = and i64 %i.cs, 17179869184
  %i.cu = xor i64 %i.ct, 112201725640704
  %i.cv = select i1 %.not17.i, i64 112184545771520, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.az, i64 80 ; 5 uses
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = shl i64 %i.cx, 7
  %i.cz = and i64 %i.cy, 140737488355328
  %.masked152.masked.masked.masked.masked = or i64 %22, %21
  %.masked154.masked.masked.masked = or i64 %.masked152.masked.masked.masked.masked, %i.cm
  %.masked156.masked.masked = or i64 %.masked154.masked.masked.masked, %i.co
  %.masked158.masked = or i64 %.masked156.masked.masked, %i.cq
  %.masked160 = or i64 %.masked158.masked, %25
  %i.da = or i64 %.masked160, %i.cv
  %i.db = or i64 %i.da, %i.cz
  %i.dc = xor i64 %i.db, 1610612736
  store i64 %i.dc, ptr %7, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.dd, align 8, !tbaa !736
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 1, ptr %i.de, align 8, !tbaa !739
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.df, align 1, !tbaa !740
  call void @_ZN5clang8QualType5printEPKNS_4TypeENS_10QualifiersERN4llvm11raw_ostreamERKNS_14PrintingPolicyERKNS5_5TwineEj(ptr noundef %i.bt, i64 0, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(34) %8, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.dg = load ptr, ptr %i.bi, align 8, !tbaa !360
  %i.dh = load ptr, ptr %i.bk, align 8, !tbaa !361 ; 2 uses
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = icmp ult i64 %i.dk, 19
  br i1 %i.dl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.dm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.9, i64 noundef 19) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit52

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.dh, ptr noundef nonnull align 1 dereferenceable(19) @.str.9, i64 19, i1 false)
  %i.dn = load ptr, ptr %i.bk, align 8, !tbaa !361
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 19
  store ptr %i.do, ptr %i.bk, align 8, !tbaa !361
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit52

_ZN4llvm11raw_ostreamlsEPKc.exit52:               ; preds = %bb.w, %bb.x
  %i.dp = load i16, ptr %i.ap, align 8
  %i.dq = and i16 %i.dp, 511                      ; 2 uses
  %i.dr = add nsw i16 %i.dq, -91
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i16 %i.dr, -9
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.af, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit52
  %i.ds = load ptr, ptr %i.bi, align 8, !tbaa !360
  %i.dt = load ptr, ptr %i.bk, align 8, !tbaa !361 ; 2 uses
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = icmp ult i64 %i.dw, 21
  br i1 %i.dx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.10, i64 noundef 21) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit55

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.dt, ptr noundef nonnull align 1 dereferenceable(21) @.str.10, i64 21, i1 false)
  %i.dz = load ptr, ptr %i.bk, align 8, !tbaa !361
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 21
  store ptr %i.ea, ptr %i.bk, align 8, !tbaa !361
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit55

_ZN4llvm11raw_ostreamlsEPKc.exit55:               ; preds = %bb.z, %bb.aa
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !346
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.ed, align 8, !tbaa !33
  %i.ee = and i64 %.sroa.0.0.copyload.i, -16
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = load ptr, ptr %i.ef, align 16, !tbaa !269
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.eh = load i64, ptr %i.az, align 8            ; 11 uses
  %i.ei = lshr i64 %i.eh, 3
  %i.ej = and i64 %i.ei, 512
  %i.ek = lshr i64 %i.eh, 5
  %i.el = and i64 %i.ek, 8388608
  %27 = or disjoint i64 %i.ej, %i.el
  %i.em = or disjoint i64 %27, 4472834
  %i.en = and i64 %i.eh, 8192
  %.not.i56 = icmp eq i64 %i.en, 0
  %i.eo = shl i64 %i.eh, 21
  %i.ep = and i64 %i.eo, 16777216
  %i.eq = select i1 %.not.i56, i64 %i.ep, i64 16777216
  %i.er = shl i64 %i.eh, 13
  %i.es = and i64 %i.er, 33554432
  %i.et = or disjoint i64 %i.eq, %i.es
  %i.eu = shl i64 %i.eh, 26
  %i.ev = and i64 %i.eu, 67108864
  %i.ew = or disjoint i64 %i.et, %i.ev
  %i.ex = shl i64 %i.eh, 14
  %i.ey = and i64 %i.ex, 134217728
  %i.ez = or disjoint i64 %i.ew, %i.ey
  %i.fa = shl i64 %i.eh, 27
  %i.fb = and i64 %i.fa, 268435456
  %i.fc = or disjoint i64 %i.ez, %i.fb
  %i.fd = shl i64 %i.eh, 17
  %i.fe = and i64 %i.fd, 1610612736
  %i.ff = shl i64 %i.eh, 4                        ; 2 uses
  %i.fg = and i64 %i.ff, 8589934592
  %i.fh = and i64 %i.eh, 128
  %.not17.i57 = icmp eq i64 %i.fh, 0
  %i.fi = and i64 %i.ff, 17179869184
  %i.fj = xor i64 %i.fi, 112201725640704
  %i.fk = select i1 %.not17.i57, i64 112184545771520, i64 %i.fj
  %i.fl = load i64, ptr %i.cw, align 8
  %i.fm = shl i64 %i.fl, 7
  %i.fn = and i64 %i.fm, 140737488355328
  %.masked.masked.masked = or i64 %i.fc, %i.fe
  %.masked162.masked = or i64 %.masked.masked.masked, %i.fg
  %.masked = or i64 %.masked162.masked, %i.em
  %i.fo = or i64 %.masked, %i.fk
  %i.fp = or i64 %i.fo, %i.fn
  %i.fq = xor i64 %i.fp, 1610612736
  store i64 %i.fq, ptr %9, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.fr, align 8, !tbaa !736
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.fs = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 1, ptr %i.fs, align 8, !tbaa !739
  %i.ft = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.ft, align 1, !tbaa !740
  call void @_ZN5clang8QualType5printEPKNS_4TypeENS_10QualifiersERN4llvm11raw_ostreamERKNS_14PrintingPolicyERKNS5_5TwineEj(ptr noundef %i.eg, i64 0, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(34) %10, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.fu = load ptr, ptr %i.bi, align 8, !tbaa !360
  %i.fv = load ptr, ptr %i.bk, align 8, !tbaa !361 ; 2 uses
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = icmp ult i64 %i.fy, 6
  br i1 %i.fz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit55
  %i.ga = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.11, i64 noundef 6) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit60

bb.ac:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.fv, ptr noundef nonnull align 1 dereferenceable(6) @.str.11, i64 6, i1 false)
  %i.gb = load ptr, ptr %i.bk, align 8, !tbaa !361
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 6
  store ptr %i.gc, ptr %i.bk, align 8, !tbaa !361
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit60

_ZN4llvm11raw_ostreamlsEPKc.exit60:               ; preds = %bb.ab, %bb.ac
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.0.0.copyload.i61 = load i64, ptr %i.gd, align 8, !tbaa !33
  %i.ge = and i64 %.sroa.0.0.copyload.i61, -16
  %i.gf = inttoptr i64 %i.ge to ptr
  %i.gg = load ptr, ptr %i.gf, align 16, !tbaa !269
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.gh = load i64, ptr %i.az, align 8            ; 11 uses
  %i.gi = lshr i64 %i.gh, 3
  %i.gj = and i64 %i.gi, 512
  %i.gk = lshr i64 %i.gh, 5
  %i.gl = and i64 %i.gk, 8388608
  %28 = or disjoint i64 %i.gj, %i.gl
  %i.gm = or disjoint i64 %28, 4472834
  %i.gn = and i64 %i.gh, 8192
  %.not.i63 = icmp eq i64 %i.gn, 0
  %i.go = shl i64 %i.gh, 21
  %i.gp = and i64 %i.go, 16777216
  %i.gq = select i1 %.not.i63, i64 %i.gp, i64 16777216
  %i.gr = shl i64 %i.gh, 13
  %i.gs = and i64 %i.gr, 33554432
  %i.gt = or disjoint i64 %i.gq, %i.gs
  %i.gu = shl i64 %i.gh, 26
  %i.gv = and i64 %i.gu, 67108864
  %i.gw = or disjoint i64 %i.gt, %i.gv
  %i.gx = shl i64 %i.gh, 14
  %i.gy = and i64 %i.gx, 134217728
  %i.gz = or disjoint i64 %i.gw, %i.gy
  %i.ha = shl i64 %i.gh, 27
  %i.hb = and i64 %i.ha, 268435456
  %i.hc = or disjoint i64 %i.gz, %i.hb
  %i.hd = shl i64 %i.gh, 17
  %i.he = and i64 %i.hd, 1610612736
  %i.hf = shl i64 %i.gh, 4                        ; 2 uses
  %i.hg = and i64 %i.hf, 8589934592
  %i.hh = and i64 %i.gh, 128
  %.not17.i64 = icmp eq i64 %i.hh, 0
  %i.hi = and i64 %i.hf, 17179869184
  %i.hj = xor i64 %i.hi, 112201725640704
  %i.hk = select i1 %.not17.i64, i64 112184545771520, i64 %i.hj
  %i.hl = load i64, ptr %i.cw, align 8
  %i.hm = shl i64 %i.hl, 7
  %i.hn = and i64 %i.hm, 140737488355328
  %.masked134.masked.masked = or i64 %i.hc, %i.he
  %.masked165.masked = or i64 %.masked134.masked.masked, %i.hg
  %.masked167 = or i64 %.masked165.masked, %i.gm
  %i.ho = or i64 %.masked167, %i.hk
  %i.hp = or i64 %i.ho, %i.hn
  %i.hq = xor i64 %i.hp, 1610612736
  store i64 %i.hq, ptr %11, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.hr, align 8, !tbaa !736
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.hs = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 1, ptr %i.hs, align 8, !tbaa !739
  %i.ht = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.ht, align 1, !tbaa !740
  call void @_ZN5clang8QualType5printEPKNS_4TypeENS_10QualifiersERN4llvm11raw_ostreamERKNS_14PrintingPolicyERKNS5_5TwineEj(ptr noundef %i.gg, i64 0, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(34) %12, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.hu = load ptr, ptr %i.bi, align 8, !tbaa !360
  %i.hv = load ptr, ptr %i.bk, align 8, !tbaa !361 ; 2 uses
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = icmp ult i64 %i.hy, 2
  br i1 %i.hz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit60
  %i.ia = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.12, i64 noundef 2) #20 ; 0 uses
  br label %bb.aq

bb.ae:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit60
  store i16 10535, ptr %i.hv, align 1
  %i.ib = load ptr, ptr %i.bk, align 8, !tbaa !361
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  store ptr %i.ic, ptr %i.bk, align 8, !tbaa !361
  br label %bb.aq

bb.af:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit52
  %.not112 = icmp eq i16 %i.dq, 81
  %i.id = load ptr, ptr %i.bi, align 8, !tbaa !360
  %i.ie = load ptr, ptr %i.bk, align 8, !tbaa !361 ; 3 uses
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = sub i64 %i.if, %i.ig                    ; 2 uses
  br i1 %.not112, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.ii = icmp ult i64 %i.ih, 21
  br i1 %i.ii, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ij = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.13, i64 noundef 21) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit71

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ie, ptr noundef nonnull align 1 dereferenceable(21) @.str.13, i64 21, i1 false)
  %i.ik = load ptr, ptr %i.bk, align 8, !tbaa !361
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 21
  store ptr %i.il, ptr %i.bk, align 8, !tbaa !361
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit71

_ZN4llvm11raw_ostreamlsEPKc.exit71:               ; preds = %bb.ah, %bb.ai
  %i.im = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !346
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %.sroa.0.0.copyload.i72 = load i64, ptr %i.io, align 8, !tbaa !33
  %i.ip = and i64 %.sroa.0.0.copyload.i72, -16
  %i.iq = inttoptr i64 %i.ip to ptr
  %i.ir = load ptr, ptr %i.iq, align 16, !tbaa !269
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.is = load i64, ptr %i.az, align 8            ; 11 uses
  %i.it = lshr i64 %i.is, 3
  %i.iu = and i64 %i.it, 512
  %i.iv = lshr i64 %i.is, 5
  %i.iw = and i64 %i.iv, 8388608
  %29 = or disjoint i64 %i.iu, %i.iw
  %i.ix = or disjoint i64 %29, 4472834
  %i.iy = and i64 %i.is, 8192
  %.not.i74 = icmp eq i64 %i.iy, 0
  %i.iz = shl i64 %i.is, 21
  %i.ja = and i64 %i.iz, 16777216
  %i.jb = select i1 %.not.i74, i64 %i.ja, i64 16777216
  %i.jc = shl i64 %i.is, 13
  %i.jd = and i64 %i.jc, 33554432
  %i.je = or disjoint i64 %i.jb, %i.jd
  %i.jf = shl i64 %i.is, 26
  %i.jg = and i64 %i.jf, 67108864
  %i.jh = or disjoint i64 %i.je, %i.jg
  %i.ji = shl i64 %i.is, 14
  %i.jj = and i64 %i.ji, 134217728
  %i.jk = or disjoint i64 %i.jh, %i.jj
  %i.jl = shl i64 %i.is, 27
  %i.jm = and i64 %i.jl, 268435456
  %i.jn = or disjoint i64 %i.jk, %i.jm
  %i.jo = shl i64 %i.is, 17
  %i.jp = and i64 %i.jo, 1610612736
  %i.jq = shl i64 %i.is, 4                        ; 2 uses
  %i.jr = and i64 %i.jq, 8589934592
  %i.js = and i64 %i.is, 128
  %.not17.i75 = icmp eq i64 %i.js, 0
  %i.jt = and i64 %i.jq, 17179869184
  %i.ju = xor i64 %i.jt, 112201725640704
  %i.jv = select i1 %.not17.i75, i64 112184545771520, i64 %i.ju
  %i.jw = load i64, ptr %i.cw, align 8
  %i.jx = shl i64 %i.jw, 7
  %i.jy = and i64 %i.jx, 140737488355328
  %.masked140.masked.masked = or i64 %i.jn, %i.jp
  %.masked169.masked = or i64 %.masked140.masked.masked, %i.jr
  %.masked171 = or i64 %.masked169.masked, %i.ix
  %i.jz = or i64 %.masked171, %i.jv
  %i.ka = or i64 %i.jz, %i.jy
  %i.kb = xor i64 %i.ka, 1610612736
  store i64 %i.kb, ptr %13, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr null, ptr %i.kc, align 8, !tbaa !736
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.kd = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 1, ptr %i.kd, align 8, !tbaa !739
  %i.ke = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.ke, align 1, !tbaa !740
  call void @_ZN5clang8QualType5printEPKNS_4TypeENS_10QualifiersERN4llvm11raw_ostreamERKNS_14PrintingPolicyERKNS5_5TwineEj(ptr noundef %i.ir, i64 0, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(34) %14, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.kf = load ptr, ptr %i.bi, align 8, !tbaa !360
  %i.kg = load ptr, ptr %i.bk, align 8, !tbaa !361 ; 2 uses
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = icmp ult i64 %i.kj, 6
  br i1 %i.kk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit71
  %i.kl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.11, i64 noundef 6) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit78

bb.ak:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.kg, ptr noundef nonnull align 1 dereferenceable(6) @.str.11, i64 6, i1 false)
  %i.km = load ptr, ptr %i.bk, align 8, !tbaa !361
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 6
  store ptr %i.kn, ptr %i.bk, align 8, !tbaa !361
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit78

_ZN4llvm11raw_ostreamlsEPKc.exit78:               ; preds = %bb.aj, %bb.ak
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.0.0.copyload.i79 = load i64, ptr %i.ko, align 8, !tbaa !33
  %i.kp = and i64 %.sroa.0.0.copyload.i79, -16
  %i.kq = inttoptr i64 %i.kp to ptr
  %i.kr = load ptr, ptr %i.kq, align 16, !tbaa !269
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.ks = load i64, ptr %i.az, align 8            ; 11 uses
  %i.kt = lshr i64 %i.ks, 3
  %i.ku = and i64 %i.kt, 512
  %i.kv = lshr i64 %i.ks, 5
  %i.kw = and i64 %i.kv, 8388608
  %30 = or disjoint i64 %i.ku, %i.kw
  %i.kx = or disjoint i64 %30, 4472834
  %i.ky = and i64 %i.ks, 8192
  %.not.i81 = icmp eq i64 %i.ky, 0
  %i.kz = shl i64 %i.ks, 21
  %i.la = and i64 %i.kz, 16777216
  %i.lb = select i1 %.not.i81, i64 %i.la, i64 16777216
  %i.lc = shl i64 %i.ks, 13
  %i.ld = and i64 %i.lc, 33554432
  %i.le = or disjoint i64 %i.lb, %i.ld
  %i.lf = shl i64 %i.ks, 26
  %i.lg = and i64 %i.lf, 67108864
  %i.lh = or disjoint i64 %i.le, %i.lg
  %i.li = shl i64 %i.ks, 14
  %i.lj = and i64 %i.li, 134217728
  %i.lk = or disjoint i64 %i.lh, %i.lj
  %i.ll = shl i64 %i.ks, 27
  %i.lm = and i64 %i.ll, 268435456
  %i.ln = or disjoint i64 %i.lk, %i.lm
  %i.lo = shl i64 %i.ks, 17
  %i.lp = and i64 %i.lo, 1610612736
  %i.lq = shl i64 %i.ks, 4                        ; 2 uses
  %i.lr = and i64 %i.lq, 8589934592
  %i.ls = and i64 %i.ks, 128
  %.not17.i82 = icmp eq i64 %i.ls, 0
  %i.lt = and i64 %i.lq, 17179869184
  %i.lu = xor i64 %i.lt, 112201725640704
  %i.lv = select i1 %.not17.i82, i64 112184545771520, i64 %i.lu
  %i.lw = load i64, ptr %i.cw, align 8
  %i.lx = shl i64 %i.lw, 7
  %i.ly = and i64 %i.lx, 140737488355328
  %.masked146.masked.masked = or i64 %i.ln, %i.lp
  %.masked173.masked = or i64 %.masked146.masked.masked, %i.lr
  %.masked175 = or i64 %.masked173.masked, %i.kx
  %i.lz = or i64 %.masked175, %i.lv
  %i.ma = or i64 %i.lz, %i.ly
  %i.mb = xor i64 %i.ma, 1610612736
  store i64 %i.mb, ptr %15, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr null, ptr %i.mc, align 8, !tbaa !736
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.md = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 1, ptr %i.md, align 8, !tbaa !739
  %i.me = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.me, align 1, !tbaa !740
  call void @_ZN5clang8QualType5printEPKNS_4TypeENS_10QualifiersERN4llvm11raw_ostreamERKNS_14PrintingPolicyERKNS5_5TwineEj(ptr noundef %i.kr, i64 0, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(34) %16, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.mf = load ptr, ptr %i.bi, align 8, !tbaa !360
  %i.mg = load ptr, ptr %i.bk, align 8, !tbaa !361 ; 2 uses
  %i.mh = ptrtoint ptr %i.mf to i64
  %i.mi = ptrtoint ptr %i.mg to i64
  %i.mj = sub i64 %i.mh, %i.mi
  %i.mk = icmp ult i64 %i.mj, 2
  br i1 %i.mk, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit78
  %i.ml = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.12, i64 noundef 2) #20 ; 0 uses
  br label %bb.aq

bb.am:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit78
  store i16 10535, ptr %i.mg, align 1
  %i.mm = load ptr, ptr %i.bk, align 8, !tbaa !361
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 2
  store ptr %i.mn, ptr %i.bk, align 8, !tbaa !361
  br label %bb.aq

bb.an:                                            ; preds = %bb.af
  %i.mo = icmp ult i64 %i.ih, 12
  br i1 %i.mo, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.mp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.14, i64 noundef 12) #20 ; 0 uses
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ie, ptr noundef nonnull align 1 dereferenceable(12) @.str.14, i64 12, i1 false)
  %i.mq = load ptr, ptr %i.bk, align 8, !tbaa !361
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 12
  store ptr %i.mr, ptr %i.bk, align 8, !tbaa !361
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ad, %bb.ae, %bb.al, %bb.am, %bb.ao, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.ms = load ptr, ptr %i.aq, align 8, !tbaa !978, !nonnull !23, !align !67
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !979, !nonnull !23, !align !67 ; 2 uses
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !28
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 32
  %i.mx = load ptr, ptr %i.mw, align 8
  %i.my = call noundef nonnull align 8 dereferenceable(776) ptr %i.mx(ptr noundef nonnull align 8 dereferenceable(8) %i.mu) #20, !inline_history !968
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !33
  %i.mz = and i64 %.sroa.3.0.copyload.i, -8       ; 2 uses
  %i.na = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #24
  %.not.i89 = icmp eq i32 %i.na, 0                ; 2 uses
  %i.nb = select i1 %.not.i89, i32 1, i32 2
  store i32 %i.nb, ptr %17, align 8, !tbaa !748
  %i.nc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.nd = select i1 %.not.i89, ptr null, ptr %i.ap
  store ptr %i.nd, ptr %i.nc, align 8, !tbaa !980
  %i.ne = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr null, ptr %i.ne, align 8, !tbaa !981
  %i.nf = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %i.my, ptr %i.nf, align 8, !tbaa !982
  %i.ng = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.nh = call { i32, ptr } @_ZNK5clang4ento22PathDiagnosticLocation11genLocationENS_14SourceLocationEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %17, i32 0, i64 %i.mz) #20 ; 2 uses
  %i.ni = extractvalue { i32, ptr } %i.nh, 0
  store i32 %i.ni, ptr %i.ng, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.nk = extractvalue { i32, ptr } %i.nh, 1
  store ptr %i.nk, ptr %i.nj, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.nm = call { i64, i8 } @_ZNK5clang4ento22PathDiagnosticLocation8genRangeEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %17, i64 %i.mz) #20 ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i8 } %i.nm, 0
  %.fca.1.extract.i = extractvalue { i64, i8 } %i.nm, 1
  store i64 %.fca.0.extract.i, ptr %i.nl, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %17, i64 56
  store i8 %.fca.1.extract.i, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.nn = load ptr, ptr %i.bh, align 8, !tbaa !743, !nonnull !23, !align !67 ; 2 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !349
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !350
  %i.nr = call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #21, !noalias !983 ; 8 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  store i32 1, ptr %i.ns, align 8, !tbaa !985, !noalias !986
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 12
  store i32 1, ptr %i.nt, align 4, !tbaa !987, !noalias !986
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento24PathDiagnosticEventPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.nr, align 8, !tbaa !28, !noalias !986
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 16 ; 5 uses
  call void @_ZN5clang4ento19PathDiagnosticPieceC2EN4llvm9StringRefENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(194) %i.nu, ptr %i.no, i64 %i.nq, i32 noundef 1, i32 noundef 1) #20, !noalias !986
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento23PathDiagnosticSpotPieceE, i64 16), ptr %i.nu, align 8, !tbaa !28, !noalias !986
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.nv, ptr noundef nonnull align 8 dereferenceable(64) %17, i64 64, i1 false), !noalias !986
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !748, !noalias !986
  switch i32 %i.nw, label %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit [
    i32 2, label %bb.ar
    i32 0, label %bb.ar
    i32 3, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq, %bb.aq, %bb.aq
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nr, i64 192
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.nx, align 8, !noalias !986
  call void @_ZN5clang4ento19PathDiagnosticPiece8addRangeENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(194) %i.nu, i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i), !noalias !986
  br label %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ar, %bb.aq
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento24PathDiagnosticEventPieceE, i64 16), ptr %i.nu, align 8, !tbaa !28, !noalias !986
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nr, i64 209
  store i8 0, ptr %i.ny, align 1, !tbaa !988, !noalias !986
  store ptr %i.nu, ptr %0, align 8, !tbaa !993
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.nr, ptr %i.nz, align 8, !tbaa !994
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.oa = load ptr, ptr %5, align 8, !tbaa !349   ; 2 uses
  %i.ob = icmp eq ptr %i.oa, %i.ba
  br i1 %i.ob, label %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @free(ptr noundef %i.oa) #20
  br label %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit

_ZN4llvm11SmallVectorIcLj256EED2Ev.exit:          ; preds = %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit93

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit93: ; preds = %bb.s, %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit, %bb.q, %bb.n
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.g) #20
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.b) #20
  ret void
}

declare void @_ZN5clang4ento18BugReporterVisitor15finalizeVisitorERNS0_18BugReporterContextEPKNS0_12ExplodedNodeERNS0_22PathSensitiveBugReportE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(1000)) unnamed_addr #5

declare void @_ZN5clang4ento18BugReporterVisitor10getEndPathERNS0_18BugReporterContextEPKNS0_12ExplodedNodeERNS0_22PathSensitiveBugReportE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(1000)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_122DynamicTypePropagation18GenericsBugVisitor7ProfileERN4llvm16FoldingSetNodeIDE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !304  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !305
  %.not.i.i.i.i = icmp ult i32 %i.b, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef ptrtoint (ptr @_ZZNK12_GLOBAL__N_122DynamicTypePropagation18GenericsBugVisitor7ProfileERN4llvm16FoldingSetNodeIDEE1X to i32))
  %.pre.i.i.i = load i32, ptr %i.a, align 8, !tbaa !304
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %i.f = load ptr, ptr %1, align 8, !tbaa !303
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e
  store i32 ptrtoint (ptr @_ZZNK12_GLOBAL__N_122DynamicTypePropagation18GenericsBugVisitor7ProfileERN4llvm16FoldingSetNodeIDEE1X to i32), ptr %i.g, align 1
  %i.h = load i32, ptr %i.a, align 8, !tbaa !304
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %i.a, align 8, !tbaa !304
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.j = phi i32 [ %.pre.i.i.i, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.k = lshr i64 ptrtoint (ptr @_ZZNK12_GLOBAL__N_122DynamicTypePropagation18GenericsBugVisitor7ProfileERN4llvm16FoldingSetNodeIDEE1X to i64), 32
  %i.l = trunc nuw i64 %i.k to i32                ; 2 uses
  %i.m = load i32, ptr %i.c, align 4, !tbaa !305
  %.not.i2.i.i.i = icmp ult i32 %i.j, %i.m
  br i1 %.not.i2.i.i.i, label %bb.e, label %bb.d, !prof !42

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %i.l)
  %.pre = load i32, ptr %i.a, align 8, !tbaa !304
  br label %_ZN4llvm16FoldingSetNodeID10AddPointerEPKv.exit

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i
  %i.n = zext i32 %i.j to i64
  %i.o = load ptr, ptr %1, align 8, !tbaa !303
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.n
  store i32 %i.l, ptr %i.p, align 1
  %i.q = load i32, ptr %i.a, align 8, !tbaa !304
  %i.r = add i32 %i.q, 1                          ; 2 uses
  store i32 %i.r, ptr %i.a, align 8, !tbaa !304
  br label %_ZN4llvm16FoldingSetNodeID10AddPointerEPKv.exit

_ZN4llvm16FoldingSetNodeID10AddPointerEPKv.exit:  ; preds = %bb.d, %bb.e
  %i.s = phi i32 [ %.pre, %bb.d ], [ %i.r, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !751
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %i.x = load i32, ptr %i.c, align 4, !tbaa !305
  %.not.i.i.i.i3 = icmp ult i32 %i.s, %i.x
  br i1 %.not.i.i.i.i3, label %bb.g, label %bb.f, !prof !42

end_hunk_0
