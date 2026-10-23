Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MsvcStl?download=true
inline.NumInlined: 323
inline.NumDeleted: 138
begin_hunk_0_@llvm.memcpy.p0.p0.i64
; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !47
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #9, !inline_history !68
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #9, !inline_history !68
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !17
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !48

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #9
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #9, !inline_history !69
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !17   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !17
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #9, !inline_history !69
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZN12lldb_private12StreamStringC1Eb(ptr noundef nonnull align 8 dereferenceable(120), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN12lldb_private12StreamStringD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL24ExtractMsvcStlStringInfoRN12lldb_private11ValueObjectEm(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((24, 25)) %0, ptr noundef nonnull align 8 dereferenceable(1034) %1, i64 noundef range(i64 1, 4) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca [2 x %"class.llvm::StringRef"], align 8 ; 4 uses
  %4 = alloca %"class.std::shared_ptr.40", align 8 ; 8 uses
  %5 = alloca %"class.std::shared_ptr.40", align 8 ; 5 uses
  %6 = alloca %"class.std::shared_ptr.40", align 8 ; 6 uses
  %7 = alloca %"class.std::shared_ptr.40", align 8 ; 7 uses
  %i.a = alloca i8, align 1                       ; 7 uses
  %8 = alloca %"class.std::shared_ptr.40", align 8 ; 6 uses
  %9 = alloca %"struct.std::pair.67", align 8     ; 7 uses
  %10 = alloca %"class.std::shared_ptr.40", align 8 ; 6 uses
  %11 = alloca %"struct.std::pair.67", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9, !noalias !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) @constinit, i64 32, i1 false), !tbaa.struct !77, !noalias !76
  call void @_ZN12lldb_private11ValueObject18GetChildAtNamePathEN4llvm8ArrayRefINS1_9StringRefEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.40") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1034) %1, ptr nonnull %3, i64 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9, !noalias !76
  %i.b = load ptr, ptr %4, align 8, !tbaa !43     ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private11ValueObject8GetErrorEv(ptr noundef nonnull align 8 dereferenceable(1034) %i.b) #9
  %i.d = call noundef zeroext i1 @_ZNK12lldb_private6Status7SuccessEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #9
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.e, align 8, !tbaa !34
  br label %bb.as

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.f = load ptr, ptr %4, align 8, !tbaa !43     ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.40") align 8 %5, ptr noundef nonnull align 8 dereferenceable(1034) %i.f, ptr nonnull @.str.15, i64 7, i1 noundef zeroext true) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.j = load ptr, ptr %4, align 8, !tbaa !43     ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.40") align 8 %6, ptr noundef nonnull align 8 dereferenceable(1034) %i.j, ptr nonnull @.str.16, i64 6, i1 noundef zeroext true) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.n = load ptr, ptr %4, align 8, !tbaa !43     ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.40") align 8 %7, ptr noundef nonnull align 8 dereferenceable(1034) %i.n, ptr nonnull @.str.17, i64 3, i1 noundef zeroext true) #9
  %i.r = load ptr, ptr %5, align 8, !tbaa !43     ; 3 uses
  %i.s = icmp ne ptr %i.r, null
  %i.t = load ptr, ptr %6, align 8
  %i.u = icmp ne ptr %i.t, null
  %or.cond = select i1 %i.s, i1 %i.u, i1 false
  %i.v = load ptr, ptr %7, align 8
  %i.w = icmp ne ptr %i.v, null
  %or.cond37 = select i1 %or.cond, i1 %i.w, i1 false
  br i1 %or.cond37, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.x, align 8, !tbaa !34
  br label %bb.z

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 0, ptr %i.a, align 1, !tbaa !49
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(1034) %i.r, i64 noundef 0, ptr noundef nonnull %i.a) #9 ; 6 uses
  %i.ac = load i8, ptr %i.a, align 1, !tbaa !49, !range !35, !noundef !36
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ae, align 8, !tbaa !34
  br label %bb.y

bb.h:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(1034) %i.af, i64 noundef 0, ptr noundef nonnull %i.a) #9
  %i.ak = load i8, ptr %i.a, align 1, !tbaa !49, !range !35, !noundef !36
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.am, align 8, !tbaa !34
  br label %bb.y

bb.j:                                             ; preds = %bb.h
  %12 = icmp eq i64 %2, 2
  %.finite = select i1 %12, i8 8, i8 5
  %13 = icmp eq i64 %2, 1
  %.finite54 = select i1 %13, i8 16, i8 %.finite
  %.zext = zext nneg i8 %.finite54 to i64
  %i.an = icmp ult i64 %i.aj, %.zext
  br i1 %i.an, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.ao = load ptr, ptr %7, align 8, !tbaa !43    ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 192
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.40") align 8 %8, ptr noundef nonnull align 8 dereferenceable(1034) %i.ao, ptr nonnull @.str.18, i64 4, i1 noundef zeroext true) #9
  %i.as = load ptr, ptr %8, align 8, !tbaa !43    ; 4 uses
  %.not39 = icmp eq ptr %i.as, null
  br i1 %.not39, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  store i64 %i.ab, ptr %9, align 8, !tbaa !42, !alias.scope !78
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !43, !alias.scope !78
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44, !noalias !78 ; 4 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !44, !alias.scope !78
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i, label %_ZSt9make_pairIRmRSt10shared_ptrIN12lldb_private11ValueObjectEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16, !noalias !78
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !17, !noalias !78
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !17, !noalias !78
  br label %_ZSt9make_pairIRmRSt10shared_ptrIN12lldb_private11ValueObjectEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit

bb.o:                                             ; preds = %bb.m
  %i.bb = atomicrmw volatile add ptr %i.ax, i32 1 acq_rel, align 4, !noalias !78 ; 0 uses
  %.pre42 = load i64, ptr %9, align 8, !tbaa !42
  %.pre43 = load ptr, ptr %i.at, align 8, !tbaa !43
  %.pre44 = load ptr, ptr %i.au, align 8, !tbaa !44
  br label %_ZSt9make_pairIRmRSt10shared_ptrIN12lldb_private11ValueObjectEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit

_ZSt9make_pairIRmRSt10shared_ptrIN12lldb_private11ValueObjectEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit: ; preds = %bb.l, %bb.n, %bb.o
  %i.bc = phi ptr [ null, %bb.l ], [ %i.aw, %bb.n ], [ %.pre44, %bb.o ]
  %i.bd = phi ptr [ %i.as, %bb.l ], [ %i.as, %bb.n ], [ %.pre43, %bb.o ]
  %i.be = phi i64 [ %i.ab, %bb.l ], [ %i.ab, %bb.n ], [ %.pre42, %bb.o ]
  store i64 %i.be, ptr %0, align 8, !tbaa !42
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !43
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.au, align 8, !tbaa !44
  store ptr %i.bc, ptr %i.bg, align 8, !tbaa !44
  store ptr null, ptr %i.at, align 8, !tbaa !43
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.bh, align 8, !tbaa !34
  call void @_ZNSt4pairImSt10shared_ptrIN12lldb_private11ValueObjectEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bi, align 8, !tbaa !34
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZSt9make_pairIRmRSt10shared_ptrIN12lldb_private11ValueObjectEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit
  call void @_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.y

bb.r:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.bj = load ptr, ptr %7, align 8, !tbaa !43    ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 192
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.40") align 8 %10, ptr noundef nonnull align 8 dereferenceable(1034) %i.bj, ptr nonnull @.str.19, i64 4, i1 noundef zeroext true) #9
  %i.bn = load ptr, ptr %10, align 8, !tbaa !43   ; 4 uses
  %.not38 = icmp eq ptr %i.bn, null
  br i1 %.not38, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  store i64 %i.ab, ptr %11, align 8, !tbaa !42, !alias.scope !79
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !43, !alias.scope !79
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !44, !noalias !79 ; 4 uses
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !44, !alias.scope !79
  %.not.i.i.i.i.i4 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i4, label %_ZSt9make_pairIRmRSt10shared_ptrIN12lldb_private11ValueObjectEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit6, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16, !noalias !79
  %.not.i.i.i.i.i.i5 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i.i.i.i5, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !17, !noalias !79
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !17, !noalias !79
  br label %_ZSt9make_pairIRmRSt10shared_ptrIN12lldb_private11ValueObjectEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit6

bb.v:                                             ; preds = %bb.t
  %i.bw = atomicrmw volatile add ptr %i.bs, i32 1 acq_rel, align 4, !noalias !79 ; 0 uses
  %.pre = load i64, ptr %11, align 8, !tbaa !42
  %.pre40 = load ptr, ptr %i.bo, align 8, !tbaa !43
  %.pre41 = load ptr, ptr %i.bp, align 8, !tbaa !44
  br label %_ZSt9make_pairIRmRSt10shared_ptrIN12lldb_private11ValueObjectEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit6

_ZSt9make_pairIRmRSt10shared_ptrIN12lldb_private11ValueObjectEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit6: ; preds = %bb.s, %bb.u, %bb.v
  %i.bx = phi ptr [ null, %bb.s ], [ %i.br, %bb.u ], [ %.pre41, %bb.v ]
  %i.by = phi ptr [ %i.bn, %bb.s ], [ %i.bn, %bb.u ], [ %.pre40, %bb.v ]
  %i.bz = phi i64 [ %i.ab, %bb.s ], [ %i.ab, %bb.u ], [ %.pre, %bb.v ]
  store i64 %i.bz, ptr %0, align 8, !tbaa !42
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !43
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.bp, align 8, !tbaa !44
  store ptr %i.bx, ptr %i.cb, align 8, !tbaa !44
  store ptr null, ptr %i.bo, align 8, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.cc, align 8, !tbaa !34
  call void @_ZNSt4pairImSt10shared_ptrIN12lldb_private11ValueObjectEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.cd, align 8, !tbaa !34
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZSt9make_pairIRmRSt10shared_ptrIN12lldb_private11ValueObjectEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit6
  call void @_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %bb.y

bb.y:                                             ; preds = %bb.i, %bb.x, %bb.q, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.e
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !44 ; 8 uses
  %.not.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 4 uses
  %i.ch = load atomic i64, ptr %i.cg acquire, align 8 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 4294967297
  %i.cj = trunc i64 %i.ch to i32                  ; 2 uses
  br i1 %i.ci, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.cg, align 8, !tbaa !46
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 0, ptr %i.ck, align 4, !tbaa !47
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !19
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #9, !inline_history !1
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !19
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #9, !inline_history !1
  br label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cs = add nsw i32 %i.cj, -1
  store i32 %i.cs, ptr %i.cg, align 8, !tbaa !17
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.ct = atomicrmw volatile add ptr %i.cg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i = phi i32 [ %i.cj, %bb.ad ], [ %i.ct, %bb.ae ]
  %i.cu = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cu, label %bb.af, label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !48

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #9
  br label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.z, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 8
end_hunk_0
