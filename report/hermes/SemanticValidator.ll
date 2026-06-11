inline.NumInlined: 5065
inline.NumDeleted: 2157
begin_hunk_0_@_ZN6hermes3sem17SemanticValidator5visitEPNS_6ESTree14IdentifierNodeE:bb.a
  %i.p = phi ptr [ %.pre, %bb.c ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !211
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.t = load i8, ptr %i.s, align 1, !tbaa !245, !range !160, !noundef !91
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !98, !nonnull !91, !align !92
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i7 = load ptr, ptr %i.x, align 8, !tbaa !214
  %.sroa.2.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0.copyload.i9 = load ptr, ptr %.sroa.2.0..sroa_idx.i8, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.z, align 1, !tbaa !221
  store ptr @.str.23, ptr %3, align 8, !tbaa !222
  store i8 3, ptr %i.y, align 8, !tbaa !215
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.w, i32 noundef 0, ptr %.sroa.0.0.copyload.i7, ptr %.sroa.2.0.copyload.i9, ptr noundef nonnull align 8 dereferenceable(18) %3, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !127
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !150
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 304
  store i8 1, ptr %i.ae, align 8, !tbaa !246
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3sem17SemanticValidator5visitEPNS_6ESTree23FunctionDeclarationNodeE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !262
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.f = load i8, ptr %i.e, align 8, !tbaa !152, !range !160, !noundef !91
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZNK6hermes3sem15FunctionContext23functionHoistingEnabledEv.exit.thread.i, label %_ZNK6hermes3sem15FunctionContext23functionHoistingEnabledEv.exit.i

_ZNK6hermes3sem15FunctionContext23functionHoistingEnabledEv.exit.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !105
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !158, !nonnull !91, !align !92
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 249
  %i.k = load i8, ptr %i.j, align 1, !tbaa !202, !range !160, !noundef !91
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZNK6hermes3sem15FunctionContext23functionHoistingEnabledEv.exit.thread.i

bb.b:                                             ; preds = %_ZNK6hermes3sem15FunctionContext23functionHoistingEnabledEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.o = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvh9MapVectorIPKN6hermes12UniqueStringENS_11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEENS_8DenseMapIS4_jNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEESt6vectorISt4pairIS4_S9_ESaISJ_EEEixERKS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.n) ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !138  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !139
  %.not.i.i = icmp ult i32 %i.q, %i.s
  br i1 %.not.i.i, label %_ZN4llvh15SmallVectorImplIPN6hermes6ESTree23FunctionDeclarationNodeEE12emplace_backIJRS4_EEEvDpOT_.exit.i, label %bb.c, !prof !203

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull %i.t, i64 noundef 0, i64 noundef 8) #20
  %.pre.i.i = load i32, ptr %i.p, align 8, !tbaa !138
  br label %_ZN4llvh15SmallVectorImplIPN6hermes6ESTree23FunctionDeclarationNodeEE12emplace_backIJRS4_EEEvDpOT_.exit.i

_ZN4llvh15SmallVectorImplIPN6hermes6ESTree23FunctionDeclarationNodeEE12emplace_backIJRS4_EEEvDpOT_.exit.i: ; preds = %bb.c, %bb.b
  %i.u = phi i32 [ %.pre.i.i, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !136
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  store ptr %1, ptr %i.x, align 8, !tbaa !265
  %i.y = add i32 %i.u, 1
  store i32 %i.y, ptr %i.p, align 8, !tbaa !138
  br label %_ZNK6hermes3sem15FunctionContext23functionHoistingEnabledEv.exit.thread.i

_ZNK6hermes3sem15FunctionContext23functionHoistingEnabledEv.exit.thread.i: ; preds = %_ZN4llvh15SmallVectorImplIPN6hermes6ESTree23FunctionDeclarationNodeEE12emplace_backIJRS4_EEEvDpOT_.exit.i, %_ZNK6hermes3sem15FunctionContext23functionHoistingEnabledEv.exit.i, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !156 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !138 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !139
  %.not.i2.i = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i2.i, label %_ZN6hermes3sem15FunctionContext20addHoistingCandidateEPNS_6ESTree23FunctionDeclarationNodeE.exit, label %bb.d, !prof !203

bb.d:                                             ; preds = %_ZNK6hermes3sem15FunctionContext23functionHoistingEnabledEv.exit.thread.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull %i.af, i64 noundef 0, i64 noundef 8) #20
  %.pre.i3.i = load i32, ptr %i.ab, align 8, !tbaa !138
  br label %_ZN6hermes3sem15FunctionContext20addHoistingCandidateEPNS_6ESTree23FunctionDeclarationNodeE.exit

_ZN6hermes3sem15FunctionContext20addHoistingCandidateEPNS_6ESTree23FunctionDeclarationNodeE.exit: ; preds = %_ZNK6hermes3sem15FunctionContext23functionHoistingEnabledEv.exit.thread.i, %bb.d
  %i.ag = phi i32 [ %.pre.i3.i, %bb.d ], [ %i.ac, %_ZNK6hermes3sem15FunctionContext23functionHoistingEnabledEv.exit.thread.i ] ; 2 uses
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !136
  %i.ai = zext i32 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ai
  store ptr %1, ptr %i.aj, align 8, !tbaa !265
  %i.ak = add i32 %i.ag, 1
  store i32 %i.ak, ptr %i.ab, align 8, !tbaa !138
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !262
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !267
  tail call void @_ZN6hermes3sem17SemanticValidator13visitFunctionEPNS_6ESTree16FunctionLikeNodeEPNS2_4NodeERN4llvh12simple_ilistIS5_JEEES6_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %1, ptr noundef %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef %i.ao)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3sem15FunctionContext20addHoistingCandidateEPNS_6ESTree23FunctionDeclarationNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !262
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i8, ptr %i.c, align 8, !tbaa !152, !range !160, !noundef !91
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZNK6hermes3sem15FunctionContext23functionHoistingEnabledEv.exit.thread, label %_ZNK6hermes3sem15FunctionContext23functionHoistingEnabledEv.exit

_ZNK6hermes3sem15FunctionContext23functionHoistingEnabledEv.exit: ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !105
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !158, !nonnull !91, !align !92
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 249
  %i.i = load i8, ptr %i.h, align 1, !tbaa !202, !range !160, !noundef !91
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %_ZNK6hermes3sem15FunctionContext23functionHoistingEnabledEv.exit.thread

bb.b:                                             ; preds = %_ZNK6hermes3sem15FunctionContext23functionHoistingEnabledEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvh9MapVectorIPKN6hermes12UniqueStringENS_11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEENS_8DenseMapIS4_jNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEESt6vectorISt4pairIS4_S9_ESaISJ_EEEixERKS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !138  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !139
  %.not.i = icmp ult i32 %i.o, %i.q
  br i1 %.not.i, label %_ZN4llvh15SmallVectorImplIPN6hermes6ESTree23FunctionDeclarationNodeEE12emplace_backIJRS4_EEEvDpOT_.exit, label %bb.c, !prof !203

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.r, i64 noundef 0, i64 noundef 8) #20
  %.pre.i = load i32, ptr %i.n, align 8, !tbaa !138
  br label %_ZN4llvh15SmallVectorImplIPN6hermes6ESTree23FunctionDeclarationNodeEE12emplace_backIJRS4_EEEvDpOT_.exit

_ZN4llvh15SmallVectorImplIPN6hermes6ESTree23FunctionDeclarationNodeEE12emplace_backIJRS4_EEEvDpOT_.exit: ; preds = %bb.b, %bb.c
  %i.s = phi i32 [ %.pre.i, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !136
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  store ptr %1, ptr %i.v, align 8, !tbaa !265
  %i.w = add i32 %i.s, 1
  store i32 %i.w, ptr %i.n, align 8, !tbaa !138
  br label %_ZNK6hermes3sem15FunctionContext23functionHoistingEnabledEv.exit.thread

_ZNK6hermes3sem15FunctionContext23functionHoistingEnabledEv.exit.thread: ; preds = %bb.a, %_ZN4llvh15SmallVectorImplIPN6hermes6ESTree23FunctionDeclarationNodeEE12emplace_backIJRS4_EEEvDpOT_.exit, %_ZNK6hermes3sem15FunctionContext23functionHoistingEnabledEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !156  ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !138 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !139
  %.not.i2 = icmp ult i32 %i.aa, %i.ac
  br i1 %.not.i2, label %_ZN4llvh15SmallVectorImplIPN6hermes6ESTree23FunctionDeclarationNodeEE12emplace_backIJRS4_EEEvDpOT_.exit4, label %bb.d, !prof !203

bb.d:                                             ; preds = %_ZNK6hermes3sem15FunctionContext23functionHoistingEnabledEv.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull %i.ad, i64 noundef 0, i64 noundef 8) #20
  %.pre.i3 = load i32, ptr %i.z, align 8, !tbaa !138
  br label %_ZN4llvh15SmallVectorImplIPN6hermes6ESTree23FunctionDeclarationNodeEE12emplace_backIJRS4_EEEvDpOT_.exit4

_ZN4llvh15SmallVectorImplIPN6hermes6ESTree23FunctionDeclarationNodeEE12emplace_backIJRS4_EEEvDpOT_.exit4: ; preds = %_ZNK6hermes3sem15FunctionContext23functionHoistingEnabledEv.exit.thread, %bb.d
  %i.ae = phi i32 [ %.pre.i3, %bb.d ], [ %i.aa, %_ZNK6hermes3sem15FunctionContext23functionHoistingEnabledEv.exit.thread ] ; 2 uses
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !136
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag
  store ptr %1, ptr %i.ah, align 8, !tbaa !265
  %i.ai = add i32 %i.ae, 1
  store i32 %i.ai, ptr %i.z, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3sem17SemanticValidator13visitFunctionEPNS_6ESTree16FunctionLikeNodeEPNS2_4NodeERN4llvh12simple_ilistIS5_JEEES6_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"class.hermes::sem::FunctionContext", align 8 ; 21 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvh::SmallSet", align 8    ; 10 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !127  ; 4 uses
  %.not119 = icmp eq ptr %i.c, null
  br i1 %.not119, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load i8, ptr %i.d, align 8, !tbaa !152, !range !160, !noundef !91
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !179
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i8 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.i = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  store ptr %0, ptr %5, align 8, !tbaa !105
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.c, ptr %i.j, align 8, !tbaa !128
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %1, ptr %i.k, align 8, !tbaa !161
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.l, align 8, !tbaa !162
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !129, !nonnull !91, !align !92 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !130  ; 13 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !135
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -320
  %.not.i.i.i = icmp eq ptr %i.q, %i.t
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.u, i8 0, i64 304, i1 false)
  store ptr %i.u, ptr %i.q, align 8, !tbaa !136
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !138
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 4, ptr %i.w, align 4, !tbaa !139
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  store ptr %i.y, ptr %i.x, align 8, !tbaa !136
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 124
  store i32 4, ptr %i.z, align 4, !tbaa !139
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aa, i8 0, i64 20, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ab, i8 0, i64 20, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 272
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !136
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 284
  store i32 2, ptr %i.ae, align 4, !tbaa !139
  %i.af = load ptr, ptr %i.p, align 8, !tbaa !130
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 320 ; 2 uses
  store ptr %i.ag, ptr %i.p, align 8, !tbaa !130
  br label %_ZNSt5dequeIN6hermes3sem12FunctionInfoESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i.i

bb.e:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN6hermes3sem12FunctionInfoESaIS2_EE16_M_push_back_auxIJEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.o)
  %.pre.i.i = load ptr, ptr %i.p, align 8, !tbaa !140, !noalias !268
  br label %_ZNSt5dequeIN6hermes3sem12FunctionInfoESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i.i

_ZNSt5dequeIN6hermes3sem12FunctionInfoESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ah = phi ptr [ %.pre.i.i, %bb.e ], [ %i.ag, %bb.d ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !144, !noalias !271
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.f, label %_ZN6hermes3sem10SemContext14createFunctionEv.exit.i

bb.f:                                             ; preds = %_ZNSt5dequeIN6hermes3sem12FunctionInfoESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !148, !noalias !268
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !149
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 320
  br label %_ZN6hermes3sem10SemContext14createFunctionEv.exit.i

_ZN6hermes3sem10SemContext14createFunctionEv.exit.i: ; preds = %bb.f, %_ZNSt5dequeIN6hermes3sem12FunctionInfoESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i.i
  %i.aq = phi ptr [ %i.ap, %bb.f ], [ %i.ah, %_ZNSt5dequeIN6hermes3sem12FunctionInfoESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i.i ] ; 4 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -320
  store ptr %i.ar, ptr %i.m, align 8, !tbaa !150
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 -208
  store ptr %i.at, ptr %i.as, align 8, !tbaa !151
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 0, i64 32, i1 false)
  store i8 %i.h, ptr %i.av, align 8, !tbaa !152
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 84
  store i32 %i.i, ptr %i.aw, align 4, !tbaa !179
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ax, i8 0, i64 20, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %4, ptr %i.a, align 8, !tbaa !169
  store ptr %0, ptr %i.ay, align 8, !tbaa !153
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 3 uses
  store ptr %5, ptr %i.az, align 8, !tbaa !154
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.bc = getelementptr inbounds i8, ptr %i.aq, i64 -200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !138
  %i.be = zext i32 %i.bd to i64
  store i64 %i.be, ptr %i.bb, align 8, !tbaa !155
  %.not.i90 = icmp eq ptr %4, null                ; 2 uses
  br i1 %.not.i90, label %_ZN6hermes3sem12BlockContextC2EPNS0_17SemanticValidatorEPNS0_15FunctionContextEPNS_6ESTree4NodeE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3sem10SemContext14createFunctionEv.exit.i
  %i.bf = getelementptr inbounds i8, ptr %i.aq, i64 -96
  %i.bg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes6ESTree4NodeESt10unique_ptrINS_11SmallVectorINS2_3sem12FunctionInfo7VarDeclELj4EEESt14default_deleteISB_EENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E16FindAndConstructERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !170 ; 2 uses
  %.not.i.i91 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i91, label %_ZNSt10unique_ptrIN4llvh11SmallVectorIN6hermes3sem12FunctionInfo7VarDeclELj4EEESt14default_deleteIS6_EE5resetEPS6_.exit.i.i, label %_ZN6hermes3sem16initializeIfNullIN4llvh11SmallVectorINS0_12FunctionInfo7VarDeclELj4EEEEERSt10unique_ptrIT_St14default_deleteIS8_EESC_.exit.i

_ZNSt10unique_ptrIN4llvh11SmallVectorIN6hermes3sem12FunctionInfo7VarDeclELj4EEESt14default_deleteIS6_EE5resetEPS6_.exit.i.i: ; preds = %bb.g
  %i.bj = call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #21 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !136
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 0, ptr %i.bl, align 8, !tbaa !138
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 4, ptr %i.bm, align 4, !tbaa !139
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !170
  br label %_ZN6hermes3sem16initializeIfNullIN4llvh11SmallVectorINS0_12FunctionInfo7VarDeclELj4EEEEERSt10unique_ptrIT_St14default_deleteIS8_EESC_.exit.i

_ZN6hermes3sem16initializeIfNullIN4llvh11SmallVectorINS0_12FunctionInfo7VarDeclELj4EEEEERSt10unique_ptrIT_St14default_deleteIS8_EESC_.exit.i: ; preds = %_ZNSt10unique_ptrIN4llvh11SmallVectorIN6hermes3sem12FunctionInfo7VarDeclELj4EEESt14default_deleteIS6_EE5resetEPS6_.exit.i.i, %bb.g
  %i.bn = phi ptr [ %i.bi, %bb.g ], [ %i.bj, %_ZNSt10unique_ptrIN4llvh11SmallVectorIN6hermes3sem12FunctionInfo7VarDeclELj4EEESt14default_deleteIS6_EE5resetEPS6_.exit.i.i ]
  %i.bo = load ptr, ptr %i.az, align 8, !tbaa !154 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !157
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !150
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 248
  %i.bt = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes6ESTree4NodeESt10unique_ptrINS_11SmallVectorIPNS3_23FunctionDeclarationNodeELj2EEESt14default_deleteISA_EENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SD_EEEES5_SD_SF_SI_E16FindAndConstructERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %i.bs, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !171 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.bv, null
  br i1 %.not.i5.i, label %_ZNSt10unique_ptrIN4llvh11SmallVectorIPN6hermes6ESTree23FunctionDeclarationNodeELj2EEESt14default_deleteIS6_EE5resetEPS6_.exit.i.i, label %_ZN6hermes3sem16initializeIfNullIN4llvh11SmallVectorIPNS_6ESTree23FunctionDeclarationNodeELj2EEEEERSt10unique_ptrIT_St14default_deleteIS9_EESD_.exit.i

_ZNSt10unique_ptrIN4llvh11SmallVectorIPN6hermes6ESTree23FunctionDeclarationNodeELj2EEESt14default_deleteIS6_EE5resetEPS6_.exit.i.i: ; preds = %_ZN6hermes3sem16initializeIfNullIN4llvh11SmallVectorINS0_12FunctionInfo7VarDeclELj4EEEEERSt10unique_ptrIT_St14default_deleteIS8_EESC_.exit.i
  %i.bw = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !136
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 0, ptr %i.by, align 8, !tbaa !138
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 2, ptr %i.bz, align 4, !tbaa !139
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !171
  br label %_ZN6hermes3sem16initializeIfNullIN4llvh11SmallVectorIPNS_6ESTree23FunctionDeclarationNodeELj2EEEEERSt10unique_ptrIT_St14default_deleteIS9_EESD_.exit.i

_ZN6hermes3sem16initializeIfNullIN4llvh11SmallVectorIPNS_6ESTree23FunctionDeclarationNodeELj2EEEEERSt10unique_ptrIT_St14default_deleteIS9_EESD_.exit.i: ; preds = %_ZNSt10unique_ptrIN4llvh11SmallVectorIPN6hermes6ESTree23FunctionDeclarationNodeELj2EEESt14default_deleteIS6_EE5resetEPS6_.exit.i.i, %_ZN6hermes3sem16initializeIfNullIN4llvh11SmallVectorINS0_12FunctionInfo7VarDeclELj4EEEEERSt10unique_ptrIT_St14default_deleteIS8_EESC_.exit.i
  %i.ca = phi ptr [ %i.bv, %_ZN6hermes3sem16initializeIfNullIN4llvh11SmallVectorINS0_12FunctionInfo7VarDeclELj4EEEEERSt10unique_ptrIT_St14default_deleteIS8_EESC_.exit.i ], [ %i.bw, %_ZNSt10unique_ptrIN4llvh11SmallVectorIPN6hermes6ESTree23FunctionDeclarationNodeELj2EEESt14default_deleteIS6_EE5resetEPS6_.exit.i.i ]
  %i.cb = load ptr, ptr %i.az, align 8, !tbaa !154
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  store ptr %i.ca, ptr %i.cc, align 8, !tbaa !156
  br label %_ZN6hermes3sem12BlockContextC2EPNS0_17SemanticValidatorEPNS0_15FunctionContextEPNS_6ESTree4NodeE.exit

_ZN6hermes3sem12BlockContextC2EPNS0_17SemanticValidatorEPNS0_15FunctionContextEPNS_6ESTree4NodeE.exit: ; preds = %_ZN6hermes3sem10SemContext14createFunctionEv.exit.i, %_ZN6hermes3sem16initializeIfNullIN4llvh11SmallVectorIPNS_6ESTree23FunctionDeclarationNodeELj2EEEEERSt10unique_ptrIT_St14default_deleteIS9_EESD_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, i8 0, i64 20, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i8 0, i64 24, i1 false)
  store ptr %5, ptr %i.b, align 8, !tbaa !127
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN6hermes3sem15FunctionContextC2EPNS0_17SemanticValidatorEbPNS_6ESTree16FunctionLikeNodeEPNS4_4NodeENS_16SourceVisibilityE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes3sem12BlockContextC2EPNS0_17SemanticValidatorEPNS0_15FunctionContextEPNS_6ESTree4NodeE.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cg = load ptr, ptr %i.m, align 8, !tbaa !150
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !172
  br label %_ZN6hermes3sem15FunctionContextC2EPNS0_17SemanticValidatorEbPNS_6ESTree16FunctionLikeNodeEPNS4_4NodeENS_16SourceVisibilityE.exit

_ZN6hermes3sem15FunctionContextC2EPNS0_17SemanticValidatorEbPNS_6ESTree16FunctionLikeNodeEPNS4_4NodeENS_16SourceVisibilityE.exit: ; preds = %_ZN6hermes3sem12BlockContextC2EPNS0_17SemanticValidatorEPNS0_15FunctionContextEPNS_6ESTree4NodeE.exit, %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 163 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !102, !range !160, !noundef !91
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZN6hermes3sem15FunctionContextC2EPNS0_17SemanticValidatorEbPNS_6ESTree16FunctionLikeNodeEPNS4_4NodeENS_16SourceVisibilityE.exit
  %i.ck = call noundef zeroext i1 @_ZN6hermes6ESTree7isAsyncEPNS0_16FunctionLikeNodeE(ptr noundef %1) #20
  br i1 %i.ck, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cl = call noundef zeroext i1 @_ZN6hermes6ESTree11isGeneratorEPNS0_16FunctionLikeNodeE(ptr noundef %1) #20
  br i1 %i.cl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !98, !nonnull !91, !align !92
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.co, align 8, !tbaa !214
end_hunk_0
begin_hunk_1_@_ZN6hermes3sem17SemanticValidator13visitFunctionEPNS_6ESTree16FunctionLikeNodeEPNS2_4NodeERN4llvh12simple_ilistIS5_JEEES6_:bb.a
bb.ag:                                            ; preds = %bb.af
  %i.es = load i32, ptr %i.eg, align 4, !tbaa !179
  %i.et = icmp slt i32 %i.es, 1
  br i1 %i.et, label %bb.ah, label %_ZN6hermes3sem17SemanticValidator27tryOverrideSourceVisibilityENS_16SourceVisibilityE.exit.i63

bb.ah:                                            ; preds = %bb.ag
  store i32 1, ptr %i.eg, align 4, !tbaa !179
  br label %_ZN6hermes3sem17SemanticValidator27tryOverrideSourceVisibilityENS_16SourceVisibilityE.exit.i63

_ZN6hermes3sem17SemanticValidator27tryOverrideSourceVisibilityENS_16SourceVisibilityE.exit.i63: ; preds = %bb.ah, %bb.ag, %bb.af
  %i.eu = icmp eq ptr %i.ep, %i.ei
  br i1 %i.eu, label %bb.ai, label %_ZN6hermes3sem17SemanticValidator27tryOverrideSourceVisibilityENS_16SourceVisibilityE.exit22.i64

bb.ai:                                            ; preds = %_ZN6hermes3sem17SemanticValidator27tryOverrideSourceVisibilityENS_16SourceVisibilityE.exit.i63
  %i.ev = load i32, ptr %i.eg, align 4, !tbaa !179
  %i.ew = icmp slt i32 %i.ev, 2
  br i1 %i.ew, label %bb.aj, label %_ZN6hermes3sem17SemanticValidator27tryOverrideSourceVisibilityENS_16SourceVisibilityE.exit22.i64

bb.aj:                                            ; preds = %bb.ai
  store i32 2, ptr %i.eg, align 4, !tbaa !179
  br label %_ZN6hermes3sem17SemanticValidator27tryOverrideSourceVisibilityENS_16SourceVisibilityE.exit22.i64

_ZN6hermes3sem17SemanticValidator27tryOverrideSourceVisibilityENS_16SourceVisibilityE.exit22.i64: ; preds = %bb.aj, %bb.ai, %_ZN6hermes3sem17SemanticValidator27tryOverrideSourceVisibilityENS_16SourceVisibilityE.exit.i63
  %i.ex = icmp eq ptr %i.ep, %i.ek
  br i1 %i.ex, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %_ZN6hermes3sem17SemanticValidator27tryOverrideSourceVisibilityENS_16SourceVisibilityE.exit22.i64
  %i.ey = load i32, ptr %i.eg, align 4, !tbaa !179
  %i.ez = icmp slt i32 %i.ey, 3
  br i1 %i.ez, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 3, ptr %i.eg, align 4, !tbaa !179
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %_ZN6hermes3sem17SemanticValidator27tryOverrideSourceVisibilityENS_16SourceVisibilityE.exit22.i64
  %.sroa.024.0.in.i65 = getelementptr inbounds nuw i8, ptr %.sroa.024.036.i57, i64 8
  %.sroa.024.0.i66 = load ptr, ptr %.sroa.024.0.in.i65, align 8, !tbaa !175 ; 2 uses
  %.not30.i67 = icmp eq ptr %.sroa.024.0.i66, %i.cz
  br i1 %.not30.i67, label %_ZN6hermes3sem17SemanticValidator21scanDirectivePrologueERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit, label %bb.ab

_ZN6hermes3sem17SemanticValidator21scanDirectivePrologueERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit: ; preds = %bb.am, %bb.ac, %bb.ab, %bb.z, %bb.p, %bb.o, %bb.aa, %bb.n
  %.0 = phi ptr [ null, %bb.z ], [ null, %bb.n ], [ null, %bb.aa ], [ null, %bb.o ], [ null, %bb.p ], [ %.1.i62, %bb.am ], [ %.035.i58, %bb.ab ], [ %.035.i58, %bb.ac ]
  %i.fa = load ptr, ptr %i.b, align 8, !tbaa !127 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 80
  %i.fc = load i8, ptr %i.fb, align 8, !tbaa !152, !range !160, !noundef !91
  %i.fd = trunc nuw i8 %i.fc to i1
  %i.fe = select i1 %i.fd, i32 2, i32 1
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.fe, ptr %i.ff, align 8, !tbaa !178
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 84
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !179
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !180
  br label %bb.an

bb.an:                                            ; preds = %_ZN6hermes3sem17SemanticValidator21scanDirectivePrologueERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit, %bb.l
  %.1 = phi ptr [ %.0, %_ZN6hermes3sem17SemanticValidator21scanDirectivePrologueERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit ], [ null, %bb.l ] ; 3 uses
  %.not48 = icmp eq ptr %2, null
  br i1 %.not48, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZN6hermes3sem17SemanticValidator24validateDeclarationNamesENS_18JavaScriptDeclKindEPNS_6ESTree4NodeEPN4llvh11SmallVectorINS0_12FunctionInfo7VarDeclELj4EEESB_(ptr noundef nonnull align 8 dereferenceable(168) %0, i8 noundef zeroext 2, ptr noundef nonnull %2, ptr noundef null, ptr noundef null)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.fj = load ptr, ptr %0, align 8, !tbaa !158, !nonnull !91, !align !92
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 188
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !276
  %i.fm = icmp eq i32 %i.fl, 0
  %i.fn = load ptr, ptr %3, align 8
  %i.fo = icmp eq ptr %3, %i.fn
  %or.cond = select i1 %i.fm, i1 true, i1 %i.fo
  br i1 %or.cond, label %bb.aw, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !175 ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !181
  %i.ft = icmp ne i32 %i.fs, 66
  %.not49121 = icmp eq ptr %i.fq, null
  %.not49 = or i1 %.not49121, %i.ft
  br i1 %.not49, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !209
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !277
  %i.fy = icmp eq ptr %i.fv, %i.fx
  br i1 %i.fy, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !181
  %i.gb = icmp eq i32 %i.ga, 5
  br i1 %i.gb, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !98, !nonnull !91, !align !92
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %.sroa.0.0.copyload.i73 = load ptr, ptr %i.ge, align 8, !tbaa !214
  %.sroa.2.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  %.sroa.2.0.copyload.i75 = load ptr, ptr %.sroa.2.0..sroa_idx.i74, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 1, ptr %i.gg, align 1, !tbaa !221
  store ptr @.str.58, ptr %7, align 8, !tbaa !222
  store i8 3, ptr %i.gf, align 8, !tbaa !215
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.gd, i32 noundef 0, ptr %.sroa.0.0.copyload.i73, ptr %.sroa.2.0.copyload.i75, ptr noundef nonnull align 8 dereferenceable(18) %7, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.gh = load i8, ptr %i.ch, align 1, !tbaa !102, !range !160, !noundef !91
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gj = load ptr, ptr %i.fp, align 8, !tbaa !175 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !175 ; 2 uses
  %i.gm = load ptr, ptr %i.gj, align 8, !tbaa !278 ; 2 uses
  store ptr %i.gm, ptr %i.gl, align 8, !tbaa !278
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store ptr %i.gl, ptr %i.gn, align 8, !tbaa !175
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gj, i8 0, i64 16, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aq, %bb.au, %bb.av, %bb.ar, %bb.ap
  %.sroa.0100.0.in125 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0100.0126 = load ptr, ptr %.sroa.0100.0.in125, align 8, !tbaa !175 ; 2 uses
  %.not122127 = icmp eq ptr %.sroa.0100.0126, %3
  br i1 %.not122127, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ay, %bb.aw
  %i.go = call noundef zeroext i1 @_ZN6hermes6ESTree15hasSimpleParamsEPNS0_16FunctionLikeNodeE(ptr noundef %1) #20 ; 2 uses
  %i.gp = icmp eq ptr %.1, null
  %or.cond.not = or i1 %i.gp, %i.go
  br i1 %or.cond.not, label %bb.ba, label %bb.az

.lr.ph:                                           ; preds = %bb.aw, %bb.ay
  %.sroa.0100.0128 = phi ptr [ %.sroa.0100.0, %bb.ay ], [ %.sroa.0100.0126, %bb.aw ] ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0100.0128, i64 16
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !181
  %i.gs = icmp eq i32 %i.gr, 221
  br i1 %i.gs, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0100.0128, i64 56
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !279
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph, %bb.ax
  %.sroa.0100.0128.sink = phi ptr [ %i.gu, %bb.ax ], [ %.sroa.0100.0128, %.lr.ph ]
  %i.gv = load ptr, ptr %i.m, align 8, !tbaa !150
  call void @_ZN6hermes3sem17SemanticValidator24validateDeclarationNamesENS_18JavaScriptDeclKindEPNS_6ESTree4NodeEPN4llvh11SmallVectorINS0_12FunctionInfo7VarDeclELj4EEESB_(ptr noundef nonnull align 8 dereferenceable(168) %0, i8 noundef zeroext 2, ptr noundef %.sroa.0100.0128.sink, ptr noundef %i.gv, ptr noundef null)
  %.sroa.0100.0.in = getelementptr inbounds nuw i8, ptr %.sroa.0100.0128, i64 8
  %.sroa.0100.0 = load ptr, ptr %.sroa.0100.0.in, align 8, !tbaa !175 ; 2 uses
  %.not122 = icmp eq ptr %.sroa.0100.0, %3
  br i1 %.not122, label %._crit_edge, label %.lr.ph

bb.az:                                            ; preds = %._crit_edge
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !98, !nonnull !91, !align !92
  %i.gy = getelementptr inbounds nuw i8, ptr %.1, i64 24
  %.sroa.0.0.copyload.i79 = load ptr, ptr %i.gy, align 8, !tbaa !214
  %.sroa.2.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %.1, i64 32
  %.sroa.2.0.copyload.i81 = load ptr, ptr %.sroa.2.0..sroa_idx.i80, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.gz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 1, ptr %i.ha, align 1, !tbaa !221
  store ptr @.str.59, ptr %8, align 8, !tbaa !222
  store i8 3, ptr %i.gz, align 8, !tbaa !215
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.gx, i32 noundef 0, ptr %.sroa.0.0.copyload.i79, ptr %.sroa.2.0.copyload.i81, ptr noundef nonnull align 8 dereferenceable(18) %8, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %._crit_edge
  br i1 %i.go, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.hb = load ptr, ptr %i.b, align 8, !tbaa !127
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 80
  %i.hd = load i8, ptr %i.hc, align 8, !tbaa !152, !range !160, !noundef !91
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !181
  %i.hh = icmp eq i32 %i.hg, 5
  br i1 %i.hh, label %bb.bd, label %bb.bk

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.hi = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  store ptr %i.hi, ptr %9, align 8, !tbaa !282
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store ptr %i.hi, ptr %i.hj, align 8, !tbaa !284
  %i.hk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i32 8, ptr %i.hk, align 8, !tbaa !285
  %i.hl = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 3 uses
  store i32 0, ptr %i.hl, align 4, !tbaa !286
  %i.hm = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store i32 0, ptr %i.hm, align 8, !tbaa !287
  %i.hn = load ptr, ptr %i.m, align 8, !tbaa !150 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !136 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !138 ; 2 uses
  %i.hr = zext i32 %i.hq to i64
  %.idx = mul nuw nsw i64 %i.hr, 24
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.idx
  %.not129 = icmp eq i32 %i.hq, 0
  br i1 %.not129, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit, label %.lr.ph132

.lr.ph132:                                        ; preds = %bb.bd
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.hv = getelementptr inbounds nuw i8, ptr %11, i64 17
  %i.hw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.hz = getelementptr inbounds nuw i8, ptr %10, i64 17
  br label %bb.bf

._crit_edge133:                                   ; preds = %.critedge
  %.pre = load ptr, ptr %i.hj, align 8, !tbaa !284 ; 2 uses
  %i.ia = icmp eq ptr %.pre, %13
  br i1 %i.ia, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %._crit_edge133
  call void @free(ptr noundef %.pre) #20
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %bb.bd, %._crit_edge133, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.bk

bb.bf:                                            ; preds = %.lr.ph132, %.critedge
  %12 = phi ptr [ %i.hi, %.lr.ph132 ], [ %13, %.critedge ] ; 3 uses
  %.043130 = phi ptr [ %i.ho, %.lr.ph132 ], [ %i.ja, %.critedge ] ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.043130, i64 8 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !288
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 48
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !209 ; 4 uses
  %i.if = load ptr, ptr %i.hj, align 8, !tbaa !284, !noalias !290
  %i.ig = icmp eq ptr %i.if, %12
  br i1 %i.ig, label %bb.bg, label %_ZN4llvh15SmallPtrSetImplIPN6hermes12UniqueStringEE6insertES3_.exit

bb.bg:                                            ; preds = %bb.bf
  %i.ih = load i32, ptr %i.hl, align 4, !tbaa !286, !noalias !290 ; 4 uses
  %i.ii = zext i32 %i.ih to i64
  %.idx.i.i = shl nuw nsw i64 %i.ii, 3
  %i.ij = getelementptr inbounds nuw i8, ptr %12, i64 %.idx.i.i ; 2 uses
  %.not63.i.i = icmp eq i32 %i.ih, 0
  br i1 %.not63.i.i, label %.critedge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bg, %bb.bh
  %.065.i.i = phi ptr [ %spec.select.i.i, %bb.bh ], [ null, %bb.bg ]
  %.04964.i.i = phi ptr [ %i.im, %bb.bh ], [ %12, %bb.bg ] ; 3 uses
  %i.ik = load ptr, ptr %.04964.i.i, align 8, !tbaa !293, !noalias !290 ; 2 uses
  %.not27.i.i = icmp eq ptr %i.ik, %i.ie
  br i1 %.not27.i.i, label %_ZN4llvhplERKNS_5TwineES2_.exit, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i
  %i.il = icmp eq ptr %i.ik, inttoptr (i64 -2 to ptr)
  %spec.select.i.i = select i1 %i.il, ptr %.04964.i.i, ptr %.065.i.i ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.04964.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.im, %i.ij
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !294

.critedge.i.i:                                    ; preds = %bb.bh
  %.not28.i.i = icmp eq ptr %spec.select.i.i, null
  br i1 %.not28.i.i, label %.critedge.thread.i.i, label %bb.bi

bb.bi:                                            ; preds = %.critedge.i.i
  store ptr %i.ie, ptr %spec.select.i.i, align 8, !tbaa !293, !noalias !290
  %i.in = load i32, ptr %i.hm, align 8, !tbaa !287, !noalias !290
  %i.io = add i32 %i.in, -1
  store i32 %i.io, ptr %i.hm, align 8, !tbaa !287, !noalias !290
  br label %.critedge

.critedge.thread.i.i:                             ; preds = %.critedge.i.i, %bb.bg
  %i.ip = load i32, ptr %i.hk, align 8, !tbaa !285, !noalias !290
  %i.iq = icmp ult i32 %i.ih, %i.ip
  br i1 %i.iq, label %bb.bj, label %_ZN4llvh15SmallPtrSetImplIPN6hermes12UniqueStringEE6insertES3_.exit

bb.bj:                                            ; preds = %.critedge.thread.i.i
  %i.ir = add nuw i32 %i.ih, 1
  store i32 %i.ir, ptr %i.hl, align 4, !tbaa !286, !noalias !290
  store ptr %i.ie, ptr %i.ij, align 8, !tbaa !293, !noalias !290
  br label %.critedge

_ZN4llvh15SmallPtrSetImplIPN6hermes12UniqueStringEE6insertES3_.exit: ; preds = %.critedge.thread.i.i, %bb.bf
  %i.is = call { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28) %9, ptr noundef %i.ie) #20, !noalias !290
  %i.it = extractvalue { ptr, i8 } %i.is, 1
  %i.iu = icmp eq i8 %i.it, 0
  br i1 %i.iu, label %_ZN4llvhplERKNS_5TwineES2_.exit, label %.critedge

_ZN4llvhplERKNS_5TwineES2_.exit:                  ; preds = %.lr.ph.i.i, %_ZN4llvh15SmallPtrSetImplIPN6hermes12UniqueStringEE6insertES3_.exit
  %i.iv = load ptr, ptr %i.ht, align 8, !tbaa !98, !nonnull !91, !align !92
  %i.iw = load ptr, ptr %i.ib, align 8, !tbaa !288 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %.sroa.0.0.copyload.i84 = load ptr, ptr %i.ix, align 8, !tbaa !214
  %.sroa.2.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.iw, i64 32
  %.sroa.2.0.copyload.i86 = load ptr, ptr %.sroa.2.0..sroa_idx.i85, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 48
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !209
  store i8 3, ptr %i.hu, align 8, !tbaa !215, !alias.scope !296
  store i8 5, ptr %i.hv, align 1, !tbaa !221, !alias.scope !296
  store ptr @.str.60, ptr %11, align 8, !tbaa !222, !alias.scope !296
  store ptr %i.iz, ptr %i.hw, align 8, !tbaa !222, !alias.scope !296
  store ptr %11, ptr %10, align 8, !tbaa !222, !alias.scope !299
  store ptr @.str.61, ptr %i.hx, align 8, !tbaa !222, !alias.scope !299
  store i8 2, ptr %i.hy, align 8, !tbaa !215, !alias.scope !299
  store i8 3, ptr %i.hz, align 1, !tbaa !221, !alias.scope !299
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.iv, i32 noundef 0, ptr %.sroa.0.0.copyload.i84, ptr %.sroa.2.0.copyload.i86, ptr noundef nonnull align 8 dereferenceable(18) %10, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %.critedge

.critedge:                                        ; preds = %bb.bj, %bb.bi, %_ZN4llvhplERKNS_5TwineES2_.exit, %_ZN4llvh15SmallPtrSetImplIPN6hermes12UniqueStringEE6insertES3_.exit
  %13 = load ptr, ptr %9, align 8, !tbaa !282, !noalias !290 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.043130, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ja, %i.hs
  br i1 %.not, label %._crit_edge133, label %bb.bf

bb.bk:                                            ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit, %bb.bc
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.jc = call noundef zeroext i1 @_ZN6hermes6ESTree7isAsyncEPNS0_16FunctionLikeNodeE(ptr noundef %1) #20
  %i.jd = xor i1 %i.jc, true
  %i.je = zext i1 %i.jd to i8
  %i.jf = load i8, ptr %i.jb, align 8, !tbaa !208, !range !160, !noundef !91
  store i8 %i.je, ptr %i.jb, align 8, !tbaa !208
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 161 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !181
  %i.jj = icmp eq i32 %i.ji, 5
  %i.jk = load i8, ptr %i.jg, align 1, !range !160 ; 2 uses
  %spec.select = select i1 %i.jj, i8 %i.jk, i8 0
  store i8 %spec.select, ptr %i.jg, align 1, !tbaa !208
  call void @_ZN6hermes3sem17SemanticValidator18visitParamsAndBodyEPNS_6ESTree16FunctionLikeNodeE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1)
  store i8 %i.jk, ptr %i.jg, align 1, !tbaa !208
  store i8 %i.jf, ptr %i.jb, align 8, !tbaa !208
  store i8 %i.cs, ptr %i.cr, align 2, !tbaa !208
  call void @_ZN6hermes3sem15FunctionContextD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3sem17SemanticValidator5visitEPNS_6ESTree22FunctionExpressionNodeE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !304
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !306
  tail call void @_ZN6hermes3sem17SemanticValidator13visitFunctionEPNS_6ESTree16FunctionLikeNodeEPNS2_4NodeERN4llvh12simple_ilistIS5_JEEES6_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef %i.e)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3sem17SemanticValidator5visitEPNS_6ESTree27ArrowFunctionExpressionNodeE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::simple_ilist", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 163
  %i.b = load i8, ptr %i.a, align 1, !tbaa !102, !range !160, !noundef !91
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !307, !range !160, !noundef !91
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !158, !nonnull !91, !align !92 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !309  ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !310
  %i.k = zext i32 %i.j to i64
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !316
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !317
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !319  ; 2 uses
  %i.r = add i64 %i.o, 7
  %i.s = add i64 %i.r, %i.q
  %i.t = and i64 %i.s, 7
  %.neg25 = add i64 %i.q, 7
  %i.u = sub i64 %.neg25, %i.t                    ; 3 uses
  store i64 %i.u, ptr %i.p, align 8, !tbaa !319
  %i.v = add i64 %i.u, 56                         ; 2 uses
  %i.w = icmp ugt i64 %i.v, 262144
  br i1 %i.w, label %.critedge.i.i.i, label %bb.d, !prof !320

.critedge.i.i.i:                                  ; preds = %bb.c
  %i.x = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.g, i64 noundef 56, i64 noundef 8) #20
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.d:                                             ; preds = %bb.c
  %i.y = add i64 %i.u, %i.o
  %i.z = inttoptr i64 %i.y to ptr
  store i64 %i.v, ptr %i.p, align 8, !tbaa !319
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.d
  %.0.i.i.i = phi ptr [ %i.x, %.critedge.i.i.i ], [ %i.z, %bb.d ] ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !321
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 26, ptr %i.ac, align 8, !tbaa !181
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ad, i8 0, i64 28, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !322
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !321 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.ai = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !214
  store <2 x ptr> %i.ai, ptr %i.ah, align 8, !tbaa !214
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %.sroa.0.0.copyload.i5.i = load ptr, ptr %i.aj, align 8, !tbaa !214
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i5.i, ptr %i.ak, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store ptr %2, ptr %i.am, align 8, !tbaa !175
  store ptr %2, ptr %.0.i.i.i, align 8, !tbaa !278
  store ptr %.0.i.i.i, ptr %i.al, align 8, !tbaa !175
  store ptr %.0.i.i.i, ptr %2, align 8, !tbaa !278
  %i.an = load ptr, ptr %0, align 8, !tbaa !158, !nonnull !91, !align !92 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !309 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !310
  %i.ar = zext i32 %i.aq to i64
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !316
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !317
  %i.av = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !319 ; 2 uses
  %i.ay = add i64 %i.av, 7
  %i.az = add i64 %i.ay, %i.ax
  %i.ba = and i64 %i.az, 7
  %.neg28 = add i64 %i.ax, 7
  %i.bb = sub i64 %.neg28, %i.ba                  ; 3 uses
  store i64 %i.bb, ptr %i.aw, align 8, !tbaa !319
  %i.bc = add i64 %i.bb, 72                       ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, 262144
  br i1 %i.bd, label %.critedge.i.i.i17, label %bb.e, !prof !320

.critedge.i.i.i17:                                ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.be = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.an, i64 noundef 72, i64 noundef 8) #20
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit18

bb.e:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.bf = add i64 %i.bb, %i.av
  %i.bg = inttoptr i64 %i.bf to ptr
  store i64 %i.bc, ptr %i.aw, align 8, !tbaa !319
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit18

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit18:  ; preds = %.critedge.i.i.i17, %bb.e
  %.0.i.i.i16 = phi ptr [ %i.be, %.critedge.i.i.i17 ], [ %i.bg, %bb.e ] ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0.i.i.i16, i8 0, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i.i16, i64 16
  store i32 21, ptr %i.bh, align 8, !tbaa !181
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i.i16, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bi, i8 0, i64 28, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i.i16, i64 52
  store i8 0, ptr %i.bj, align 4, !tbaa !274
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i.i16, i64 53
  store i8 0, ptr %i.bk, align 1, !tbaa !324
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i.i16, i64 54
  store i8 0, ptr %i.bl, align 2, !tbaa !325
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i.i16, i64 56 ; 7 uses
  store ptr %i.bm, ptr %i.bm, align 8, !tbaa !278
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i.i16, i64 64 ; 2 uses
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !175
  %i.bo = load ptr, ptr %i.al, align 8, !tbaa !175 ; 4 uses
  %i.bp = icmp eq ptr %i.bm, %2
  %i.bq = icmp eq ptr %i.bo, %2
  %or.cond.i.i.i.i.i.i = or i1 %i.bp, %i.bq
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN6hermes6ESTree18BlockStatementNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit18
  %i.br = load ptr, ptr %2, align 8, !tbaa !278   ; 2 uses
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !278
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %2, ptr %i.bt, align 8, !tbaa !175
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bm, ptr %i.bu, align 8, !tbaa !175
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !278
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !175
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !278
  br label %_ZN6hermes6ESTree18BlockStatementNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit

_ZN6hermes6ESTree18BlockStatementNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit18, %bb.f
  %i.bv = load ptr, ptr %i.aa, align 8, !tbaa !321 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i16, i64 24
  %i.by = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !214
  store <2 x ptr> %i.by, ptr %i.bx, align 8, !tbaa !214
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %.sroa.0.0.copyload.i5.i23 = load ptr, ptr %i.bz, align 8, !tbaa !214
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i.i16, i64 40
  store ptr %.sroa.0.0.copyload.i5.i23, ptr %i.ca, align 8, !tbaa !214
  store ptr %.0.i.i.i16, ptr %i.aa, align 8, !tbaa !321
  store i8 0, ptr %i.d, align 8, !tbaa !307
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.g

bb.g:                                             ; preds = %_ZN6hermes6ESTree18BlockStatementNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, %bb.b, %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !321
  call void @_ZN6hermes3sem17SemanticValidator13visitFunctionEPNS_6ESTree16FunctionLikeNodeEPNS2_4NodeERN4llvh12simple_ilistIS5_JEEES6_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 152
end_hunk_1
