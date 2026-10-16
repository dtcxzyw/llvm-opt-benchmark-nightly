Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/RuntimeJSONUtils?download=true
inline.NumInlined: 1616
inline.NumDeleted: 784
begin_hunk_0_@_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser10parseValueEv:bb.a
  %i.fy = call noundef i32 @_ZN6hermes2vm9JSONLexer7advanceEv(ptr noundef nonnull align 8 dereferenceable(112) %i.r) #10, !inline_history !143
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %_ZN6hermes2vm9JSONLexer19errorUnexpectedCharEv.exit.critedge, label %bb.ac, !prof !58

_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser10parseArrayEv.exit: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit38
  %i.ga = call noundef i32 @_ZN6hermes2vm9JSONLexer19errorUnexpectedCharEv(ptr noundef nonnull align 8 dereferenceable(112) %i.r), !inline_history !143
  %i.gb = icmp eq i32 %i.ga, 0
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %7) #10, !inline_history !143
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br i1 %i.gb, label %_ZN6hermes2vm9JSONLexer19errorUnexpectedCharEv.exit, label %bb.ai, !prof !95

bb.af:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit38
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %7) #10, !inline_history !143
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser10parseArrayEv.exit.thread100

_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser10parseArrayEv.exit.thread100: ; preds = %bb.y, %bb.af
  %.sroa.0.0.copyload.i36 = load i64, ptr %i.dz, align 8, !tbaa !14
  br label %bb.ai

bb.ag:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  br label %bb.ai

bb.ah:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  br label %bb.ai

_ZN6hermes2vm9JSONLexer5errorERKNS0_11TwineChar16E.exit.i: ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  store i32 12, ptr %i.s, align 8, !tbaa !27
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !121, !nonnull !67, !align !68
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store ptr @.str.3, ptr %6, align 8, !tbaa !101, !alias.scope !156
  %i.ge = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.ge, align 8, !tbaa !102, !alias.scope !156
  %i.gf = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.4, ptr %i.gf, align 8, !tbaa !101, !alias.scope !156
  %i.gg = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 3, ptr %i.gg, align 8, !tbaa !98, !alias.scope !156
  %i.gh = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 18, ptr %i.gh, align 8, !tbaa !99, !alias.scope !156
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 23, ptr %i.gi, align 8, !tbaa !100, !alias.scope !156
  %i.gj = call noundef i32 @_ZN6hermes2vm7Runtime16raiseSyntaxErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %i.gd, ptr noundef nonnull align 8 dereferenceable(48) %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %_ZN6hermes2vm9JSONLexer19errorUnexpectedCharEv.exit

_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i:      ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gl = load i16, ptr %i.gk, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.gl, ptr %i.b, align 2, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store ptr @.str.5, ptr %5, align 8, !tbaa !101, !alias.scope !157
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 4, ptr %i.gm, align 8, !tbaa !102, !alias.scope !157
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.b, ptr %i.gn, align 8, !tbaa !101, !alias.scope !157
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 4, ptr %i.go, align 8, !tbaa !98, !alias.scope !157
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 22, ptr %i.gp, align 8, !tbaa !99, !alias.scope !157
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 1, ptr %i.gq, align 8, !tbaa !100, !alias.scope !157
  store i32 12, ptr %i.s, align 8, !tbaa !27
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !121, !nonnull !67, !align !68
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store ptr @.str.3, ptr %4, align 8, !tbaa !101, !alias.scope !158
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.gt, align 8, !tbaa !102, !alias.scope !158
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %5, ptr %i.gu, align 8, !tbaa !101, !alias.scope !158
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 2, ptr %i.gv, align 8, !tbaa !98, !alias.scope !158
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 18, ptr %i.gw, align 8, !tbaa !99, !alias.scope !158
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 23, ptr %i.gx, align 8, !tbaa !100, !alias.scope !158
  %i.gy = call noundef i32 @_ZN6hermes2vm7Runtime16raiseSyntaxErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %i.gs, ptr noundef nonnull align 8 dereferenceable(48) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN6hermes2vm9JSONLexer19errorUnexpectedCharEv.exit

bb.ai:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit, %_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser10parseArrayEv.exit.thread100, %_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser10parseArrayEv.exit, %_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser11parseObjectEv.exit.thread90, %_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser11parseObjectEv.exit, %_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser11parseObjectEv.exit.thread121, %bb.ah, %bb.ag, %bb.g, %bb.f
  %.sroa.980.1105.sink = phi i64 [ %.sroa.0.0.copyload.i22, %_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser11parseObjectEv.exit.thread121 ], [ %.sroa.0.0.copyload.i11, %bb.f ], [ -1548112371908608, %bb.ah ], [ -1407374883553280, %bb.ag ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser10parseArrayEv.exit ], [ %spec.select.i, %bb.g ], [ %.sroa.0.0.copyload.i34, %_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser11parseObjectEv.exit.thread90 ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser11parseObjectEv.exit ], [ %.sroa.0.0.copyload.i36, %_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser10parseArrayEv.exit.thread100 ], [ -1407374883553279, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit ]
  store i64 %.sroa.980.1105.sink, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !94
  %i.gz = call noundef i32 @_ZN6hermes2vm9JSONLexer7advanceEv(ptr noundef nonnull align 8 dereferenceable(112) %i.r) #10
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %_ZN6hermes2vm9JSONLexer19errorUnexpectedCharEv.exit, label %bb.aj, !prof !58

bb.aj:                                            ; preds = %bb.ai
  %.sroa.0.0.copyload.i21 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !14
  br label %_ZN6hermes2vm9JSONLexer19errorUnexpectedCharEv.exit

_ZN6hermes2vm9JSONLexer19errorUnexpectedCharEv.exit.critedge: ; preds = %bb.ac, %.critedge.i, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit42
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %7) #10, !inline_history !143
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZN6hermes2vm9JSONLexer19errorUnexpectedCharEv.exit

_ZN6hermes2vm9JSONLexer19errorUnexpectedCharEv.exit: ; preds = %_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser11parseObjectEv.exit.thread, %_ZN6hermes2vm9JSONLexer19errorUnexpectedCharEv.exit.critedge, %bb.x, %bb.w, %_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser10parseArrayEv.exit, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser11parseObjectEv.exit, %bb.aj, %_ZN6hermes2vm9JSONLexer5errorERKNS0_11TwineChar16E.exit.i, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i, %bb.ai, %bb.b
  %.sroa.7.1 = phi i64 [ undef, %bb.b ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ undef, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i ], [ %.sroa.0.0.copyload.i21, %bb.aj ], [ undef, %bb.ai ], [ undef, %_ZN6hermes2vm9JSONLexer5errorERKNS0_11TwineChar16E.exit.i ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser11parseObjectEv.exit ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser10parseArrayEv.exit ], [ undef, %bb.w ], [ undef, %bb.x ], [ undef, %_ZN6hermes2vm9JSONLexer19errorUnexpectedCharEv.exit.critedge ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser11parseObjectEv.exit.thread ]
  %.sroa.058.3 = phi i32 [ %i.h, %bb.b ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ %i.gy, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i ], [ 1, %bb.aj ], [ 0, %bb.ai ], [ %i.gj, %_ZN6hermes2vm9JSONLexer5errorERKNS0_11TwineChar16E.exit.i ], [ 0, %_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser11parseObjectEv.exit ], [ 0, %_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser10parseArrayEv.exit ], [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %_ZN6hermes2vm9JSONLexer19errorUnexpectedCharEv.exit.critedge ], [ 0, %_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser11parseObjectEv.exit.thread ]
  store i32 %i.d, ptr %i.c, align 8, !tbaa !7
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.058.3, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.7.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes2vm9JSONLexer19errorUnexpectedCharEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %i.a = alloca i16, align 2                      ; 4 uses
  %2 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !27
  %i.d = icmp eq i32 %i.c, 11
  br i1 %i.d, label %_ZN6hermes2vm9JSONLexer5errorERKNS0_11TwineChar16E.exit, label %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i

_ZN6hermes2vm9JSONLexer5errorERKNS0_11TwineChar16E.exit: ; preds = %bb.a
  store i32 12, ptr %i.b, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !121, !nonnull !67, !align !68
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr @.str.3, ptr %3, align 8, !tbaa !101, !alias.scope !165
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.g, align 8, !tbaa !102, !alias.scope !165
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.4, ptr %i.h, align 8, !tbaa !101, !alias.scope !165
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 3, ptr %i.i, align 8, !tbaa !98, !alias.scope !165
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 18, ptr %i.j, align 8, !tbaa !99, !alias.scope !165
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 23, ptr %i.k, align 8, !tbaa !100, !alias.scope !165
  %i.l = call noundef i32 @_ZN6hermes2vm7Runtime16raiseSyntaxErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.b

_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i:        ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load i16, ptr %i.m, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.n, ptr %i.a, align 2, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store ptr @.str.5, ptr %2, align 8, !tbaa !101, !alias.scope !166
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 4, ptr %i.o, align 8, !tbaa !102, !alias.scope !166
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.p, align 8, !tbaa !101, !alias.scope !166
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 4, ptr %i.q, align 8, !tbaa !98, !alias.scope !166
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 22, ptr %i.r, align 8, !tbaa !99, !alias.scope !166
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 1, ptr %i.s, align 8, !tbaa !100, !alias.scope !166
  store i32 12, ptr %i.b, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !121, !nonnull !67, !align !68
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store ptr @.str.3, ptr %1, align 8, !tbaa !101, !alias.scope !167
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 3, ptr %i.v, align 8, !tbaa !102, !alias.scope !167
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %i.w, align 8, !tbaa !101, !alias.scope !167
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 2, ptr %i.x, align 8, !tbaa !98, !alias.scope !167
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 18, ptr %i.y, align 8, !tbaa !99, !alias.scope !167
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 23, ptr %i.z, align 8, !tbaa !100, !alias.scope !167
  %i.aa = call noundef i32 @_ZN6hermes2vm7Runtime16raiseSyntaxErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i, %_ZN6hermes2vm9JSONLexer5errorERKNS0_11TwineChar16E.exit
  %.0 = phi i32 [ %i.l, %_ZN6hermes2vm9JSONLexer5errorERKNS0_11TwineChar16E.exit ], [ %i.aa, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i ]
  ret i32 %.0
}

declare noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm9JSONLexer18advanceStrAsSymbolEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes2vm9JSONLexer5errorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
.thread:
  %2 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 12, ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !121, !nonnull !67, !align !68
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !102, !noalias !173 ; 2 uses
  switch i32 %i.e, label %bb.c [
    i32 0, label %bb.a
    i32 1, label %bb.b
  ]

bb.a:                                             ; preds = %.thread
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.f, align 8, !tbaa !102, !alias.scope !174
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 1, ptr %i.g, align 8, !tbaa !98, !alias.scope !174
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !alias.scope !174
  br label %_ZNK6hermes2vm11TwineChar166concatERKS1_.exit

bb.b:                                             ; preds = %.thread
  store ptr @.str.3, ptr %2, align 8, !tbaa !101
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !175
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 1, ptr %.sroa.67.0..sroa_idx, align 8, !tbaa !175
  %.sroa.78.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 18, ptr %.sroa.78.0..sroa_idx, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !14
  br label %_ZNK6hermes2vm11TwineChar166concatERKS1_.exit

bb.c:                                             ; preds = %.thread
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !99, !noalias !176
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !100, !noalias !176
  %i.m = add i64 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8, !noalias !176
  %i.p = icmp eq i32 %i.o, 1                      ; 2 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %1, align 8, !noalias !176
  %.sroa.03.0.i = select i1 %i.p, ptr %.sroa.03.0.copyload.i, ptr %1
  %.015.i = select i1 %i.p, i32 %i.e, i32 2
  store ptr @.str.3, ptr %2, align 8, !tbaa !101, !alias.scope !176
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 3, ptr %i.q, align 8, !tbaa !102, !alias.scope !176
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.sroa.03.0.i, ptr %i.r, align 8, !tbaa !101, !alias.scope !176
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.015.i, ptr %i.s, align 8, !tbaa !98, !alias.scope !176
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 18, ptr %i.t, align 8, !tbaa !99, !alias.scope !176
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.m, ptr %i.u, align 8, !tbaa !100, !alias.scope !176
  br label %_ZNK6hermes2vm11TwineChar166concatERKS1_.exit

_ZNK6hermes2vm11TwineChar166concatERKS1_.exit:    ; preds = %bb.a, %bb.b, %bb.c
  %i.v = call noundef i32 @_ZN6hermes2vm7Runtime16raiseSyntaxErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %i.v
}

declare i32 @_ZN6hermes2vm8JSObject26defineOwnComputedPrimitiveENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr, i32) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare noundef i32 @_ZN6hermes2vm7Runtime16raiseSyntaxErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i32, i64 } @_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser13operationWalkENS0_6HandleINS0_8JSObjectEEENS3_INS0_11HermesValueEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(140) %0, ptr %1, ptr %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68 ; 4 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  store ptr %i.d, ptr %i.b, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.i, align 4, !tbaa !12
  store ptr %i.f, ptr %i.g, align 8
  store i32 1, ptr %i.h, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %i.f, ptr %i.j, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.e, ptr %i.k, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.l, align 8, !tbaa !71
  store ptr %3, ptr %i.c, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !56   ; 3 uses
  %i.o = add nsw i32 %i.n, -1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !7
  %i.p = icmp slt i32 %i.n, 2
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %i.a, i32 noundef 2) #10
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.r = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr %1, ptr noundef nonnull align 8 dereferenceable(9816) %i.a, ptr %2, ptr %1) #10 ; 2 uses
  %i.s = extractvalue { i32, i64 } %i.r, 0
  %i.t = extractvalue { i32, i64 } %i.r, 1        ; 4 uses
  %i.u = icmp eq i32 %i.s, 0
  br i1 %i.u, label %.critedge, label %bb.d, !prof !58

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 192 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 200
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !40
  %i.ac = icmp ult ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.f, !prof !41

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !39
  store i64 -1688849860263936, ptr %i.z, align 8, !tbaa !14
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.x, i64 -1688849860263936) #10
  %.pre = load ptr, ptr %0, align 8, !tbaa !66
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.e, %bb.f
  %i.af = phi ptr [ %i.v, %bb.e ], [ %.pre, %bb.f ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.z, %bb.e ], [ %i.ae, %bb.f ] ; 7 uses
  %i.ag = icmp ugt i64 %i.t, -844424930131969
  br i1 %i.ag, label %bb.g, label %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit

bb.g:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.ah = and i64 %i.t, 281474976710655
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = add i32 %i.aj, -436207616
  %i.al = icmp ult i32 %i.ak, 855638016
  %spec.select.i.i.i = select i1 %i.al, ptr %i.ai, ptr null
  br label %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit

_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit: ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit, %bb.g
  %i.am = phi ptr [ %spec.select.i.i.i, %bb.g ], [ null, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit ]
  %i.an = call i32 @_ZN6hermes2vm7isArrayERNS0_7RuntimeEPNS0_8JSObjectE(ptr noundef nonnull align 8 dereferenceable(9816) %i.af, ptr noundef %i.am) #10 ; 2 uses
  %.mask = and i32 %i.an, 255
  %i.ao = icmp eq i32 %.mask, 0
  br i1 %i.ao, label %.critedge, label %bb.h, !prof !58

bb.h:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !31 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 192 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !39 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 200
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !40
  %i.aw = icmp ult ptr %i.at, %i.av
  br i1 %i.aw, label %bb.i, label %bb.j, !prof !41

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !39
  store i64 %i.t, ptr %i.at, align 8, !tbaa !14
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.j:                                             ; preds = %bb.h
  %i.ay = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ar, i64 %i.t) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.i, %bb.j
  %.0.i.i.i.i.i.i46 = phi ptr [ %i.at, %bb.i ], [ %i.ay, %bb.j ] ; 6 uses
  %i.az = and i32 %i.an, 256
  %.not120 = icmp eq i32 %i.az, 0
  br i1 %.not120, label %bb.r, label %bb.k

bb.k:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ba = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68 ; 3 uses
  %i.bb = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i46, ptr noundef nonnull align 8 dereferenceable(9816) %i.ba, i32 85, ptr %.0.i.i.i.i.i.i46, i32 0, ptr noundef null) #10 ; 2 uses
  %i.bc = extractvalue { i32, i64 } %i.bb, 0
  %i.bd = extractvalue { i32, i64 } %i.bb, 1      ; 2 uses
  %i.be = icmp eq i32 %i.bc, 0
  br i1 %i.be, label %.critedge, label %bb.l, !prof !58

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 192 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !39 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 200
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !40
  %i.bl = icmp ult ptr %i.bi, %i.bk
  br i1 %i.bl, label %bb.m, label %bb.n, !prof !41

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bm, ptr %i.bh, align 8, !tbaa !39
  store i64 %i.bd, ptr %i.bi, align 8, !tbaa !14
  br label %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit

bb.n:                                             ; preds = %bb.l
  %i.bn = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bg, i64 %i.bd) #10
  br label %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit

_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit: ; preds = %bb.m, %bb.n
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.bi, %bb.m ], [ %i.bn, %bb.n ]
  %i.bo = call { i32, i64 } @_ZN6hermes2vm11toLengthU64ERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %i.ba, ptr %.0.i.i.i.i.i.i.i) #10 ; 2 uses
  %i.bp = extractvalue { i32, i64 } %i.bo, 0
  %i.bq = extractvalue { i32, i64 } %i.bo, 1      ; 2 uses
  %i.br = icmp eq i32 %i.bp, 0
  br i1 %i.br, label %.critedge, label %bb.o, !prof !95

bb.o:                                             ; preds = %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit
  %i.bs = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !31 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 192 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !39 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 208 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !71 ; 4 uses
  %.not38.not122.not = icmp eq i64 %i.bq, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bu, i64 144 ; 2 uses
  br i1 %.not38.not122.not, label %..critedge44_crit_edge, label %.lr.ph

..critedge44_crit_edge:                           ; preds = %bb.o
  %.pre128 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !10
  %.pre129 = zext i32 %i.by to i64
  br label %.critedge44

.lr.ph:                                           ; preds = %bb.o
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 200
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.q
  %.036123 = phi i64 [ 0, %.lr.ph ], [ %i.ci, %bb.q ] ; 2 uses
  %i.cb = uitofp i64 %.036123 to double
  store double %i.cb, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !94
  %i.cc = call fastcc noundef i32 @_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser6filterENS0_6HandleINS0_8JSObjectEEENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr %.0.i.i.i.i.i.i46, ptr nonnull %.0.i.i.i.i.i.i)
  %i.cd = icmp eq i32 %i.cc, 0
  %i.ce = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !10 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.bz
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !92
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 128
  store i32 %i.by, ptr %i.bx, align 8, !tbaa !71
  store ptr %i.ch, ptr %i.ca, align 8, !tbaa !40
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !39
  br i1 %i.cd, label %.critedge, label %bb.q, !prof !58

bb.q:                                             ; preds = %bb.p
  %i.ci = add nuw i64 %.036123, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ci, %i.bq
  br i1 %exitcond.not, label %.critedge44, label %bb.p, !llvm.loop !177

bb.r:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %.sroa.0.0.copyload.i.i50 = load i64, ptr %.0.i.i.i.i.i.i46, align 8, !tbaa !14 ; 2 uses
  %i.cj = icmp ugt i64 %.sroa.0.0.copyload.i.i50, -844424930131969
  br i1 %i.cj, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.r
  %i.ck = and i64 %.sroa.0.0.copyload.i.i50, 281474976710655
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = add i32 %i.cm, -436207616
  %i.co = icmp ult i32 %i.cn, 855638016
  %spec.select.i = select i1 %i.co, ptr %.0.i.i.i.i.i.i46, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %bb.r, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.r ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !94 ; 2 uses
  %i.cq = icmp ugt i64 %i.cp, -844424930131969
  %i.cr = and i64 %i.cp, 281474976710655
  %i.cs = icmp ne i64 %i.cr, 0
  %i.ct = and i1 %i.cq, %i.cs
  br i1 %i.ct, label %bb.s, label %.critedge42

bb.s:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.cu = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.cv = call ptr @_ZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsE(ptr nonnull %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %i.cu, i32 2) #10 ; 3 uses
  %.not121 = icmp eq ptr %i.cv, inttoptr (i64 -1 to ptr)
  br i1 %.not121, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cw = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !31 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 192 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !39 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 208 ; 3 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !71 ; 4 uses
  %.sroa.0.0.copyload.i.i52 = load i64, ptr %i.cv, align 8, !tbaa !14
  %i.dd = and i64 %.sroa.0.0.copyload.i.i52, 281474976710655
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !113 ; 2 uses
  %.not.not124.not = icmp eq i32 %i.dg, 0
  %.phi.trans.insert130 = getelementptr inbounds nuw i8, ptr %i.cy, i64 144 ; 2 uses
  br i1 %.not.not124.not, label %..critedge42.critedge_crit_edge, label %.lr.ph126

..critedge42.critedge_crit_edge:                  ; preds = %bb.t
  %.pre131 = load ptr, ptr %.phi.trans.insert130, align 8, !tbaa !10
  %.pre132 = zext i32 %i.dc to i64
  br label %.critedge42.critedge

.lr.ph126:                                        ; preds = %bb.t
  %i.dh = zext i32 %i.dc to i64                   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 200
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph126, %bb.af
  %.037125 = phi i32 [ 0, %.lr.ph126 ], [ %i.fw, %bb.af ] ; 4 uses
  %.sroa.0.0.copyload.i.i53 = load i64, ptr %i.cv, align 8, !tbaa !14
  %i.dj = and i64 %.sroa.0.0.copyload.i.i53, 281474976710655
  %i.dk = inttoptr i64 %i.dj to ptr               ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 20
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !115 ; 2 uses
  %.not.i = icmp uge i32 %.037125, %i.dm
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = icmp ult i32 %.037125, %i.do
  %or.cond.i = select i1 %.not.i, i1 %i.dp, i1 false
  br i1 %or.cond.i, label %bb.v, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.dq = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 28
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.dr, align 4, !tbaa !7
  %i.ds = ptrtoint ptr %i.dq to i64               ; 6 uses
  %i.dt = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.du = add i64 %i.dt, %i.ds
  %i.dv = inttoptr i64 %i.du to ptr               ; 2 uses
  %i.dw = sub nuw i32 %.037125, %i.dm             ; 4 uses
  %i.dx = icmp ult i32 %i.dw, 4096
  br i1 %i.dx, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dy = add i32 %i.dw, -4096
  %i.dz = lshr i32 %i.dy, 10
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 16392
  %i.eb = zext nneg i32 %i.dz to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !117
  %i.ee = zext i32 %i.ed to i64
  %i.ef = add i64 %i.ee, %i.ds
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = and i32 %i.dw, 1023
  br label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit: ; preds = %bb.v, %bb.w
  %.sink8.i.i = phi ptr [ %i.eg, %bb.w ], [ %i.dv, %bb.v ]
  %.sink7.i.i = phi i32 [ %i.eh, %bb.w ], [ %i.dw, %bb.v ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.sink8.i.i, i64 8
  %i.ej = zext nneg i32 %.sink7.i.i to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ej
  %.sroa.0.0.i.i = load i32, ptr %i.ek, align 4, !tbaa !7 ; 9 uses
  %i.el = trunc i32 %.sroa.0.0.i.i to i8
  %i.em = and i8 %i.el, 15
  switch i8 %i.em, label %default.unreachable [
    i8 0, label %bb.x
    i8 8, label %bb.x
    i8 1, label %bb.y
    i8 9, label %bb.y
    i8 2, label %bb.z
    i8 10, label %bb.z
    i8 3, label %bb.aa
    i8 11, label %bb.aa
    i8 4, label %bb.ab
    i8 12, label %bb.ab
    i8 5, label %bb.ac
    i8 13, label %bb.ac
    i8 6, label %bb.ad
    i8 14, label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit
    i8 7, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread
    i8 15, label %bb.ae
  ]

bb.x:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.i.i, 0
  %i.en = zext i32 %.sroa.0.0.i.i to i64
  %i.eo = add i64 %i.en, %i.ds
  %i.ep = or i64 %i.eo, -281474976710656
  %i.eq = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.ep
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.y:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.er = and i32 %.sroa.0.0.i.i, -8
  %i.es = zext i32 %i.er to i64
  %i.et = add i64 %i.es, %i.ds
  %i.eu = or i64 %i.et, -562949953421312
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.z:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.ev = and i32 %.sroa.0.0.i.i, -8
  %i.ew = zext i32 %i.ev to i64
  %i.ex = add i64 %i.ew, %i.ds
  %i.ey = or i64 %i.ex, -844424930131968
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.aa:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.ez = and i32 %.sroa.0.0.i.i, -8
  %i.fa = zext i32 %i.ez to i64
  %i.fb = add i64 %i.fa, %i.ds
  %i.fc = inttoptr i64 %i.fb to ptr
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !124 ; 2 uses
  %i.ff = fcmp uno double %i.fe, 0.000000e+00
  %i.fg = bitcast double %i.fe to i64
  %spec.select.i.i = select i1 %i.ff, i64 9221120237041090560, i64 %i.fg, !prof !58
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.ab:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.fh = ashr i32 %.sroa.0.0.i.i, 3
  %i.fi = sitofp i32 %i.fh to double
  %i.fj = bitcast double %i.fi to i64
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.ac:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.fk = lshr i32 %.sroa.0.0.i.i, 3
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = or disjoint i64 %i.fl, -1266637395197952
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.ad:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.fn = icmp ugt i32 %.sroa.0.0.i.i, 15
  %i.fo = zext i1 %i.fn to i64
  %i.fp = or disjoint i64 %i.fo, -1407374883553280
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread: ; preds = %bb.u, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.ae:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

default.unreachable:                              ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  unreachable

_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit: ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread, %bb.ae
  %.sroa.05.0.i = phi i64 [ %i.eq, %bb.x ], [ %i.eu, %bb.y ], [ %i.ey, %bb.z ], [ %spec.select.i.i, %bb.aa ], [ %i.fj, %bb.ab ], [ %i.fm, %bb.ac ], [ %i.fp, %bb.ad ], [ -1548112371908608, %bb.ae ], [ -1970324836974592, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread ], [ -1688849860263936, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit ]
  store i64 %.sroa.05.0.i, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !94
  %i.fq = call fastcc noundef i32 @_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser6filterENS0_6HandleINS0_8JSObjectEEENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr nonnull %.sroa.0.0.i, ptr nonnull %.0.i.i.i.i.i.i)
  %i.fr = icmp eq i32 %i.fq, 0
  %i.fs = load ptr, ptr %.phi.trans.insert130, align 8, !tbaa !10 ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.dh
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !92
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 128
  store i32 %i.dc, ptr %i.db, align 8, !tbaa !71
  store ptr %i.fv, ptr %i.di, align 8, !tbaa !40
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !39
  br i1 %i.fr, label %.critedge, label %bb.af, !prof !58

bb.af:                                            ; preds = %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit
  %i.fw = add nuw i32 %.037125, 1                 ; 2 uses
  %exitcond127.not = icmp eq i32 %i.fw, %i.dg
  br i1 %exitcond127.not, label %.critedge42.critedge, label %bb.u, !llvm.loop !178

.critedge42.critedge:                             ; preds = %bb.af, %..critedge42.critedge_crit_edge
  %.pre-phi133 = phi i64 [ %.pre132, %..critedge42.critedge_crit_edge ], [ %i.dh, %bb.af ]
  %i.fx = phi ptr [ %.pre131, %..critedge42.critedge_crit_edge ], [ %i.fs, %bb.af ]
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.pre-phi133
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !92
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 128
  store i32 %i.dc, ptr %i.db, align 8, !tbaa !71
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cy, i64 200
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !40
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !39
  br label %.critedge42

.critedge44:                                      ; preds = %bb.q, %..critedge44_crit_edge
  %.pre-phi = phi i64 [ %.pre129, %..critedge44_crit_edge ], [ %i.bz, %bb.q ]
  %i.gc = phi ptr [ %.pre128, %..critedge44_crit_edge ], [ %i.ce, %bb.q ]
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %.pre-phi
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !92
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 128
  store i32 %i.by, ptr %i.bx, align 8, !tbaa !71
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bu, i64 200
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !40
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !39
  br label %.critedge42

.critedge42:                                      ; preds = %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit, %.critedge42.critedge, %.critedge44
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !14
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !94
  %i.gh = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.gi = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %i.gh, ptr nonnull %.0.i.i.i.i.i.i) #10 ; 2 uses
  %.not = icmp eq ptr %i.gi, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %.critedge, label %bb.ag, !prof !58

bb.ag:                                            ; preds = %.critedge42
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = or i64 %i.gj, -844424930131968          ; 2 uses
  store i64 %i.gk, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !94
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.07.0.copyload = load ptr, ptr %i.gl, align 8
  %i.gm = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %.sroa.0.0.copyload.i.i.i68 = load i64, ptr %.0.i.i.i.i.i.i46, align 8, !tbaa !14
  %i.gn = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall2ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_b(ptr %.sroa.07.0.copyload, ptr noundef nonnull align 8 dereferenceable(9816) %i.gm, ptr %1, i64 %i.gk, i64 %.sroa.0.0.copyload.i.i.i68, i1 noundef zeroext false) #10 ; 2 uses
  %i.go = extractvalue { i32, i64 } %i.gn, 0
  %i.gp = extractvalue { i32, i64 } %i.gn, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.p, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit, %bb.k, %bb.c, %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit, %bb.s, %.critedge42, %bb.ag, %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit, %bb.b
  %.sroa.0114.5 = phi i32 [ %i.q, %bb.b ], [ 0, %bb.c ], [ 0, %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit ], [ 0, %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit ], [ 0, %bb.s ], [ 0, %bb.k ], [ 0, %.critedge42 ], [ 0, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit ], [ %i.go, %bb.ag ], [ 0, %bb.p ]
  %.sroa.10.4 = phi i64 [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit ], [ undef, %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit ], [ undef, %bb.s ], [ undef, %bb.k ], [ undef, %.critedge42 ], [ undef, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit ], [ %i.gp, %bb.ag ], [ undef, %bb.p ]
  store i32 %i.n, ptr %i.m, align 8, !tbaa !7
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0114.5, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.10.4, 1
  ret { i32, i64 } %.fca.1.insert
}

declare i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i32, ptr, i32) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm7isArrayERNS0_7RuntimeEPNS0_8JSObjectE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser6filterENS0_6HandleINS0_8JSObjectEEENS3_INS0_11HermesValueEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(140) %0, ptr %1, ptr %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call fastcc { i32, i64 } @_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser13operationWalkENS0_6HandleINS0_8JSObjectEEENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr %1, ptr %2) ; 2 uses
  %i.b = extractvalue { i32, i64 } %i.a, 0
  %i.c = extractvalue { i32, i64 } %i.a, 1        ; 3 uses
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %bb.h, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.d, !prof !41

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !39
  store i64 %i.c, ptr %i.i, align 8, !tbaa !14
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.d:                                             ; preds = %bb.b
  %i.n = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.g, i64 %i.c) #10 ; 2 uses
  %.pre = load i64, ptr %i.n, align 8, !tbaa !94
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.c, %bb.d
  %i.o = phi i64 [ %i.c, %bb.c ], [ %.pre, %bb.d ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.n, %bb.d ]
  %.mask.i = and i64 %i.o, -140737488355328
  %i.p = icmp eq i64 %.mask.i, -1688849860263936
  %i.q = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68 ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.r = tail call i32 @_ZN6hermes2vm8JSObject14deleteComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %1, ptr noundef nonnull align 8 dereferenceable(9816) %i.q, ptr %2, i32 0) #10
  %.mask19 = and i32 %i.r, 255
  %i.s = icmp eq i32 %.mask19, 0
  br i1 %i.s, label %bb.h, label %bb.g, !prof !58

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.t = tail call i32 @_ZN6hermes2vm8JSObject17defineOwnComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr %1, ptr noundef nonnull align 8 dereferenceable(9816) %i.q, ptr %2, i32 319, ptr nonnull %.0.i.i.i.i.i.i, i32 0) #10
  %.mask = and i32 %i.t, 255
  %i.u = icmp eq i32 %.mask, 0
  br i1 %i.u, label %bb.h, label %bb.g, !prof !58

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.f, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 1, %bb.g ], [ 0, %bb.f ]
  ret i32 %.1
}

declare ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall2ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i64, i1 noundef zeroext) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm11toLengthU64ERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, i32, ptr noundef) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8JSObject14deleteComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8JSObject17defineOwnComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr, i32) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6hermes2vm15StringPrimitive6equalsEPKS1_(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm15StringPrimitive5sliceERNS0_7RuntimeENS0_6HandleIS1_EEmm(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64 noundef, i64 noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm15StringPrimitive13arrayToStringIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !179
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 %2, ptr %i.a, align 8, !tbaa !14
  %i.d = icmp ugt i64 %2, 15
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #10 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !120
  %i.f = load i64, ptr %i.a, align 8, !tbaa !14
  store i64 %i.f, ptr %i.b, align 8, !tbaa !101
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.g = phi ptr [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %2, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !101
  store i8 %i.h, ptr %i.g, align 1, !tbaa !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.i = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  store i64 %i.i, ptr %i.c, align 8, !tbaa !180
  %i.j = load ptr, ptr %0, align 8, !tbaa !120
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 0, ptr %i.k, align 1, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i32 0, 258) i32 @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer12operationStrENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 208 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !71   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92
  store i64 %1, ptr %i.i, align 8, !tbaa !94
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.060.0.copyload = load ptr, ptr %i.j, align 8 ; 2 uses
  %.sroa.059.0.copyload = load ptr, ptr %i.h, align 8
  %i.k = tail call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr %.sroa.060.0.copyload, ptr noundef nonnull align 8 dereferenceable(9816) %i.a, ptr %.sroa.059.0.copyload, ptr %.sroa.060.0.copyload) #10 ; 2 uses
  %i.l = extractvalue { i32, i64 } %i.k, 0
  %i.m = extractvalue { i32, i64 } %i.k, 1        ; 3 uses
  %i.n = icmp eq i32 %i.l, 0
  br i1 %i.n, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 12 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !92
  store i64 %i.m, ptr %i.p, align 8, !tbaa !94
  %i.q = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 192 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !40
  %i.x = icmp ult ptr %i.u, %i.w
  br i1 %i.x, label %bb.c, label %bb.d, !prof !41

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.y, ptr %i.t, align 8, !tbaa !39
  store i64 %i.m, ptr %i.u, align 8, !tbaa !14
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.d:                                             ; preds = %bb.b
  %i.z = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.s, i64 %i.m) #10
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.u, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i.i69 = load i64, ptr %i.aa, align 8, !tbaa !14 ; 2 uses
  %i.ab = icmp ugt i64 %.sroa.0.0.copyload.i.i.i69, -844424930131969
  br i1 %i.ab, label %_ZN6hermes2vm5vmisaINS0_15BigIntPrimitiveEEEbNS0_11HermesValueE.exit, label %thread-pre-split

_ZN6hermes2vm5vmisaINS0_15BigIntPrimitiveEEEbNS0_11HermesValueE.exit: ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.ac = and i64 %.sroa.0.0.copyload.i.i.i69, 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load i32, ptr %i.ad, align 4
  %.mask.i.i.i.i.i.i.i = and i32 %i.ae, -16777216
  %i.af = icmp eq i32 %.mask.i.i.i.i.i.i.i, 1291845632
  br i1 %i.af, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_15BigIntPrimitiveEEEbNS0_11HermesValueE.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68
  %i.ah = tail call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %i.ag, ptr %.0.i.i.i.i.i.i) #10 ; 2 uses
  %i.ai = extractvalue { i32, i64 } %i.ah, 0
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, label %bb.f, !prof !58

bb.f:                                             ; preds = %bb.e
  %i.ak = extractvalue { i32, i64 } %i.ah, 1      ; 2 uses
  store i64 %i.ak, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !94
  br label %bb.g

thread-pre-split:                                 ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit, %_ZN6hermes2vm5vmisaINS0_15BigIntPrimitiveEEEbNS0_11HermesValueE.exit
  %.sroa.0.0.copyload.i.i.pr = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split, %bb.f
  %.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.pr, %thread-pre-split ], [ %i.ak, %bb.f ] ; 2 uses
  %i.al = icmp ugt i64 %.sroa.0.0.copyload.i.i, -844424930131969
  br i1 %i.al, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.g
  %i.am = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = add i32 %i.ao, -436207616
  %i.aq = icmp ult i32 %i.ap, 855638016
  %spec.select.i = select i1 %i.aq, ptr %.0.i.i.i.i.i.i, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %bb.g, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.g ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.ar = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !94 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, -844424930131969
  %i.at = and i64 %i.ar, 281474976710655
  %i.au = icmp ne i64 %i.at, 0
  %i.av = and i1 %i.as, %i.au
  br i1 %i.av, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.aw = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68
  %.sroa.042.0.copyload = load ptr, ptr %i.o, align 8
  %i.ax = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %i.aw, i32 287, ptr %.sroa.042.0.copyload, i32 0, ptr noundef null) #10 ; 2 uses
  %i.ay = extractvalue { i32, i64 } %i.ax, 0
  %i.az = extractvalue { i32, i64 } %i.ax, 1      ; 3 uses
  %i.ba = icmp eq i32 %i.ay, 0
  br i1 %i.ba, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, label %bb.i, !prof !58

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !31 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 192 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !39 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 200
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !40
  %i.bi = icmp ult ptr %i.bf, %i.bh
  br i1 %i.bi, label %bb.j, label %bb.k, !prof !41

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !39
  store i64 %i.az, ptr %i.bf, align 8, !tbaa !14
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.k:                                             ; preds = %bb.i
  %i.bk = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bd, i64 %i.az) #10 ; 2 uses
  %.sroa.0.0.copyload.i.i72.pr = load i64, ptr %i.bk, align 8, !tbaa !14
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.j, %bb.k
  %.sroa.0.0.copyload.i.i72 = phi i64 [ %i.az, %bb.j ], [ %.sroa.0.0.copyload.i.i72.pr, %bb.k ] ; 2 uses
  %.0.i.i.i.i.i.i71 = phi ptr [ %i.bf, %bb.j ], [ %i.bk, %bb.k ]
  %i.bl = icmp ugt i64 %.sroa.0.0.copyload.i.i72, -844424930131969
  br i1 %i.bl, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.bm = and i64 %.sroa.0.0.copyload.i.i72, 281474976710655
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = add i32 %i.bo, -1140850688
  %i.bq = icmp ult i32 %i.bp, 150994944
  %spec.select.i74 = select i1 %i.bq, ptr %.0.i.i.i.i.i.i71, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i73 = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ %spec.select.i74, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.br = load i64, ptr %.sroa.0.0.i73, align 8, !tbaa !94 ; 2 uses
  %i.bs = icmp ugt i64 %i.br, -844424930131969
  %i.bt = and i64 %i.br, 281474976710655
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = and i1 %i.bs, %i.bu
  br i1 %i.bv, label %bb.l, label %.critedge

bb.l:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.bw = load ptr, ptr %i.h, align 8, !tbaa !42  ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !94 ; 2 uses
  %.mask.i = and i64 %i.bx, -281474976710656
  %i.by = icmp eq i64 %.mask.i, -844424930131968
  %.pre173 = load ptr, ptr %0, align 8, !tbaa !86 ; 2 uses
  br i1 %i.by, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %.pre173, ptr nonnull %i.bw) #10
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = or i64 %i.ca, -844424930131968          ; 2 uses
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !92
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !94
  %.pre = load ptr, ptr %0, align 8, !tbaa !86
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.copyload.i.i.i75 = phi i64 [ %i.cb, %bb.m ], [ %i.bx, %bb.l ]
  %i.cd = phi ptr [ %.pre, %bb.m ], [ %.pre173, %bb.l ]
  %.sroa.038.0.copyload = load ptr, ptr %i.o, align 8
  %i.ce = tail call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr nonnull %.sroa.0.0.i73, ptr noundef nonnull align 8 dereferenceable(9816) %i.cd, ptr %.sroa.038.0.copyload, i64 %.sroa.0.0.copyload.i.i.i75, i1 noundef zeroext false) #10 ; 2 uses
  %i.cf = extractvalue { i32, i64 } %i.ce, 0
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, label %bb.o, !prof !58

bb.o:                                             ; preds = %bb.n
  %i.ch = extractvalue { i32, i64 } %i.ce, 1
  %i.ci = load ptr, ptr %i.o, align 8, !tbaa !92
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !94
  br label %.critedge

.critedge:                                        ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit, %bb.o, %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !42 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !94 ; 2 uses
  %i.cm = icmp ugt i64 %i.cl, -844424930131969
  %i.cn = and i64 %i.cl, 281474976710655
  %i.co = icmp ne i64 %i.cn, 0
  %i.cp = and i1 %i.cm, %i.co
  br i1 %i.cp, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.critedge
  %i.cq = load ptr, ptr %i.h, align 8, !tbaa !42  ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !94 ; 2 uses
  %.mask.i77 = and i64 %i.cr, -281474976710656
  %i.cs = icmp eq i64 %.mask.i77, -844424930131968
  %.pre177 = load ptr, ptr %0, align 8, !tbaa !86 ; 2 uses
  br i1 %i.cs, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ct = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %.pre177, ptr nonnull %i.cq) #10
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = or i64 %i.cu, -844424930131968          ; 2 uses
  %i.cw = load ptr, ptr %i.h, align 8, !tbaa !92
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !94
  %.sroa.034.0.copyload.pre = load ptr, ptr %i.cj, align 8
  %.pre176 = load ptr, ptr %0, align 8, !tbaa !86
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.0.0.copyload.i.i.i78 = phi i64 [ %i.cv, %bb.q ], [ %i.cr, %bb.p ]
  %i.cx = phi ptr [ %.pre176, %bb.q ], [ %.pre177, %bb.p ]
  %.sroa.034.0.copyload = phi ptr [ %.sroa.034.0.copyload.pre, %bb.q ], [ %i.ck, %bb.p ]
  %i.cy = load i64, ptr %i.j, align 8, !tbaa !92
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = load ptr, ptr %i.o, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i.i79 = load i64, ptr %i.da, align 8, !tbaa !14
  %i.db = tail call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall2ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_b(ptr %.sroa.034.0.copyload, ptr noundef nonnull align 8 dereferenceable(9816) %i.cx, ptr %i.cz, i64 %.sroa.0.0.copyload.i.i.i78, i64 %.sroa.0.0.copyload.i.i.i79, i1 noundef zeroext false) #10 ; 2 uses
  %i.dc = extractvalue { i32, i64 } %i.db, 0
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, label %bb.s, !prof !58

bb.s:                                             ; preds = %bb.r
  %i.de = extractvalue { i32, i64 } %i.db, 1
  %i.df = load ptr, ptr %i.o, align 8, !tbaa !92
  store i64 %i.de, ptr %i.df, align 8, !tbaa !94
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.critedge
  %i.dg = load ptr, ptr %i.o, align 8, !tbaa !42  ; 5 uses
  %.sroa.0.0.copyload.i.i.i81 = load i64, ptr %i.dg, align 8, !tbaa !14 ; 2 uses
  %i.dh = icmp ugt i64 %.sroa.0.0.copyload.i.i.i81, -844424930131969
  br i1 %i.dh, label %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit, label %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread

_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit: ; preds = %bb.t
  %i.di = and i64 %.sroa.0.0.copyload.i.i.i81, 281474976710655
  %i.dj = inttoptr i64 %i.di to ptr               ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = add i32 %i.dk, -905969664
  %i.dm = lshr i32 %i.dl, 24
  %trunc = trunc nuw i32 %i.dm to i8
  switch i8 %trunc, label %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread [
    i8 2, label %bb.u
    i8 1, label %bb.w
    i8 0, label %_ZN6hermes2vm10dyn_vmcastINS0_9JSBooleanEEEPT_NS0_11HermesValueE.exit
    i8 13, label %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit
  ]

bb.u:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit
  %i.dn = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68
  %i.do = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %i.dn, ptr nonnull %i.dg) #10 ; 2 uses
  %i.dp = extractvalue { i32, i64 } %i.do, 0
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, label %bb.v, !prof !58

bb.v:                                             ; preds = %bb.u
  %i.dr = extractvalue { i32, i64 } %i.do, 1
  %i.ds = load ptr, ptr %i.o, align 8, !tbaa !92
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !94
  br label %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread

bb.w:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit
  %i.dt = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68
  %i.du = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %i.dt, ptr nonnull %i.dg) #10 ; 2 uses
  %.not = icmp eq ptr %i.du, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, label %bb.x, !prof !58

bb.x:                                             ; preds = %bb.w
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = or i64 %i.dv, -844424930131968
  %i.dx = load ptr, ptr %i.o, align 8, !tbaa !92
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !94
  br label %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread

_ZN6hermes2vm10dyn_vmcastINS0_9JSBooleanEEEPT_NS0_11HermesValueE.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.dz = load i8, ptr %i.dy, align 4, !tbaa !183, !range !125, !noundef !67
  %i.ea = zext nneg i8 %i.dz to i64
  %i.eb = or disjoint i64 %i.ea, -1407374883553280
  store i64 %i.eb, ptr %i.dg, align 8, !tbaa !94
  br label %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread

_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit
  %i.ec = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %.sroa.0.0.copyload.i.i.i89 = load i32, ptr %i.ed, align 4, !tbaa !7 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i89, 0
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = zext i32 %.sroa.0.0.copyload.i.i.i89 to i64
  %i.eg = add i64 %i.ef, %i.ee
  %i.eh = or i64 %i.eg, -562949953421312
  %i.ei = select i1 %.not.i.i.i.i.i, i64 -562949953421312, i64 %i.eh
  store i64 %i.ei, ptr %i.dg, align 8, !tbaa !94
  br label %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread

_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit, %bb.t, %bb.x, %bb.v, %_ZN6hermes2vm10dyn_vmcastINS0_9JSBooleanEEEPT_NS0_11HermesValueE.exit, %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit
  %i.ej = load ptr, ptr %i.o, align 8             ; 3 uses
  %i.ek = load i64, ptr %i.ej, align 8            ; 8 uses
  %.mask.i90 = and i64 %i.ek, -140737488355328
  %i.el = bitcast i64 %i.ek to double
  switch i64 %.mask.i90, label %bb.ac [
    i64 -1548112371908608, label %bb.y
    i64 -1407374883553280, label %bb.z
  ]

bb.y:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread
  %i.em = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 9240
  %i.eo = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.en, ptr noundef nonnull align 8 dereferenceable(9816) %i.em, i32 19) #10
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.z:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread
  %i.eq = trunc i64 %i.ek to i1
  %i.er = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 9240 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br i1 %i.eq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eu = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.es, ptr noundef nonnull align 8 dereferenceable(9816) %i.er, i32 36) #10
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.eu, ptr noundef nonnull align 8 dereferenceable(16) %i.et) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.ab:                                            ; preds = %bb.z
  %i.ev = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.es, ptr noundef nonnull align 8 dereferenceable(9816) %i.er, i32 37) #10
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.ev, ptr noundef nonnull align 8 dereferenceable(16) %i.et) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.ac:                                            ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread
  %.mask.i92 = and i64 %i.ek, -281474976710656
  %i.ew = icmp eq i64 %.mask.i92, -844424930131968
  br i1 %i.ew, label %bb.ad, label %bb.as

bb.ad:                                            ; preds = %bb.ac
  %i.ex = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68
  %i.ey = tail call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %i.ex, ptr nonnull %i.ej) #10 ; 2 uses
  %i.ez = extractvalue { ptr, i64 } %i.ey, 0      ; 4 uses
  %i.fa = extractvalue { ptr, i64 } %i.ey, 1      ; 4 uses
  %.sroa.3.8.extract.trunc.i = trunc i64 %i.fa to i32 ; 3 uses
  %.sroa.7.8.extract.shift.i = lshr i64 %i.fa, 32 ; 2 uses
  %i.fb = icmp slt i32 %.sroa.3.8.extract.trunc.i, 0
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br i1 %i.fb, label %bb.ae, label %bb.al

bb.ae:                                            ; preds = %bb.ad
  %i.fd = and i32 %.sroa.3.8.extract.trunc.i, 1073741824
  %.not.i.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ez, align 8, !tbaa !14
  %i.fe = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.ff = inttoptr i64 %i.fe to ptr               ; 5 uses
  %i.fg = load i32, ptr %i.ff, align 4            ; 2 uses
  %i.fh = icmp ugt i32 %i.fg, 150994943
  br i1 %i.fh, label %bb.ag, label %bb.ah, !prof !58

bb.ag:                                            ; preds = %bb.af
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !120
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.ah:                                            ; preds = %bb.af
  %.mask.i.i.i.i.i.i.i.i.i.i = and i32 %i.fg, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i, label %bb.ak [
    i32 134217728, label %bb.ai
    i32 67108864, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.ak:                                            ; preds = %bb.ah
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i = load i64, ptr %i.fm, align 8, !tbaa !14
  %i.fn = and i64 %.sroa.0.0.copyload.i.i.i2.i.i, 281474976710655
  %i.fo = inttoptr i64 %i.fn to ptr
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !120
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i: ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ag, %bb.ae
  %.0.i.sink.i.i = phi ptr [ %i.ez, %bb.ae ], [ %i.fj, %bb.ag ], [ %i.fk, %bb.ai ], [ %i.fl, %bb.aj ], [ %i.fq, %bb.ak ]
  %i.fr = and i64 %i.fa, 1073741823
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i, i64 %i.fr
  tail call void @_ZN6hermes18quoteStringForJSONIN4llvh11SmallVectorIDsLj32EEEcEEvRT_NS1_8ArrayRefIT0_EE(ptr noundef nonnull align 8 dereferenceable(80) %i.fc, ptr %i.fs, i64 %.sroa.7.8.extract.shift.i)
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.al:                                            ; preds = %bb.ad
  %.not.i1.i = icmp samesign ult i32 %.sroa.3.8.extract.trunc.i, 1073741824
  br i1 %.not.i1.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.0.0.copyload.i.i.i.i2.i = load i64, ptr %i.ez, align 8, !tbaa !14
  %i.ft = and i64 %.sroa.0.0.copyload.i.i.i.i2.i, 281474976710655
  %i.fu = inttoptr i64 %i.ft to ptr               ; 5 uses
  %i.fv = load i32, ptr %i.fu, align 4            ; 2 uses
  %i.fw = icmp ugt i32 %i.fv, 150994943
  br i1 %i.fw, label %bb.an, label %bb.ao, !prof !58

bb.an:                                            ; preds = %bb.am
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !61
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.ao:                                            ; preds = %bb.am
  %.mask.i.i.i.i.i.i.i.i.i3.i = and i32 %i.fv, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i, label %bb.ar [
    i32 117440512, label %bb.ap
    i32 50331648, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.ar:                                            ; preds = %bb.ao
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i = load i64, ptr %i.gb, align 8, !tbaa !14
  %i.gc = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i, 281474976710655
  %i.gd = inttoptr i64 %i.gc to ptr
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !61
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i: ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.an, %bb.al
  %.0.i.sink.i4.i = phi ptr [ %i.ez, %bb.al ], [ %i.fy, %bb.an ], [ %i.fz, %bb.ap ], [ %i.ga, %bb.aq ], [ %i.gf, %bb.ar ]
  %i.gg = and i64 %i.fa, 1073741823
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i, i64 %i.gg
  tail call void @_ZN6hermes18quoteStringForJSONIN4llvh11SmallVectorIDsLj32EEEDsEEvRT_NS1_8ArrayRefIT0_EE(ptr noundef nonnull align 8 dereferenceable(80) %i.fc, ptr %i.gh, i64 %.sroa.7.8.extract.shift.i)
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.as:                                            ; preds = %bb.ac
  %i.gi = icmp ult i64 %i.ek, -1970324836974592
  br i1 %i.gi, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.gj = tail call double @llvm.fabs.f64(double %i.el)
  %i.gk = fcmp ueq double %i.gj, +inf
  br i1 %i.gk, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gl = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68
  %i.gm = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %i.gl, ptr nonnull %i.ej) #10
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.gm, ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.av:                                            ; preds = %bb.at
  tail call fastcc void @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14appendToOutputENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 19)
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.aw:                                            ; preds = %bb.as
  %i.go = icmp samesign ugt i64 %i.ek, -844424930131969
  br i1 %i.go, label %_ZN6hermes2vm5vmisaINS0_15BigIntPrimitiveEEEbNS0_11HermesValueE.exit95, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

_ZN6hermes2vm5vmisaINS0_15BigIntPrimitiveEEEbNS0_11HermesValueE.exit95: ; preds = %bb.aw
  %i.gp = and i64 %i.ek, 281474976710655
  %i.gq = inttoptr i64 %i.gp to ptr
  %i.gr = load i32, ptr %i.gq, align 4            ; 2 uses
  %.mask.i.i.i.i.i.i.i94 = and i32 %i.gr, -16777216
  %i.gs = icmp eq i32 %.mask.i.i.i.i.i.i.i94, 1291845632
  br i1 %i.gs, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZN6hermes2vm5vmisaINS0_15BigIntPrimitiveEEEbNS0_11HermesValueE.exit95
  %i.gt = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 1, ptr %i.gu, align 8, !tbaa !98
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 37, ptr %i.gv, align 8, !tbaa !99
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.gw, align 8, !tbaa !100
  store ptr @.str.7, ptr %2, align 8, !tbaa !101
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 3, ptr %i.gx, align 8, !tbaa !102
  %i.gy = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %i.gt, ptr noundef nonnull align 8 dereferenceable(48) %2) #10
  %i.gz = and i32 %i.gy, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_15BigIntPrimitiveEEEbNS0_11HermesValueE.exit95
  %i.ha = add i32 %i.gr, -1140850688
  %or.cond = icmp ult i32 %i.ha, -704643072
  br i1 %or.cond, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit
  %i.hb = tail call fastcc i32 @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer16pushValueToStackENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 %i.ek) ; 2 uses
  %.mask = and i32 %i.hb, 255
  %i.hc = icmp eq i32 %.mask, 0
  br i1 %i.hc, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not170 = icmp samesign ult i32 %i.hb, 256
  br i1 %.not170, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit100, label %bb.az, !prof !58

_ZN6hermes2vm11TwineChar16C2EPKc.exit100:         ; preds = %bb.ay
  %i.hd = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.he, align 8, !tbaa !98
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 33, ptr %i.hf, align 8, !tbaa !99
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.hg, align 8, !tbaa !100
  store ptr @.str.8, ptr %3, align 8, !tbaa !101
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.hh, align 8, !tbaa !102
  %i.hi = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %i.hd, ptr noundef nonnull align 8 dereferenceable(48) %3) #10
  %i.hj = and i32 %i.hi, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.az:                                            ; preds = %bb.ay
  %i.hk = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.hl = zext i32 %i.g to i64
  %i.hm = load ptr, ptr %i.hk, align 8, !tbaa !10
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.hl
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !92
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 128
  store i32 %i.g, ptr %i.f, align 8, !tbaa !71
  %i.hq = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !40
  store ptr %i.e, ptr %i.d, align 8, !tbaa !39
  %i.hr = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68
  %i.hs = load ptr, ptr %i.o, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i.i103 = load i64, ptr %i.hs, align 8, !tbaa !14
  %i.ht = and i64 %.sroa.0.0.copyload.i.i.i103, 281474976710655
  %i.hu = inttoptr i64 %i.ht to ptr
  %i.hv = tail call i32 @_ZN6hermes2vm7isArrayERNS0_7RuntimeEPNS0_8JSObjectE(ptr noundef nonnull align 8 dereferenceable(9816) %i.hr, ptr noundef %i.hu) #10 ; 2 uses
  %.mask171 = and i32 %i.hv, 255
  %i.hw = icmp eq i32 %.mask171, 0
  br i1 %i.hw, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, label %bb.ba, !prof !58

bb.ba:                                            ; preds = %bb.az
  %i.hx = and i32 %i.hv, 256
  %.not172 = icmp eq i32 %i.hx, 0
  br i1 %.not172, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hy = tail call fastcc noundef i32 @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer11operationJAEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.hz = tail call fastcc noundef i32 @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer11operationJOEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ia = phi i32 [ %i.hy, %bb.bb ], [ %i.hz, %bb.bc ]
  tail call fastcc void @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer17popValueFromStackEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %bb.be, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, !prof !58

bb.be:                                            ; preds = %bb.bd
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit: ; preds = %bb.az, %bb.ax, %bb.aw, %bb.w, %bb.u, %bb.r, %bb.e, %bb.y, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %bb.ab, %bb.aa, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i, %bb.av, %bb.au, %bb.be, %bb.bd, %_ZN6hermes2vm11TwineChar16C2EPKc.exit100, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit, %bb.n, %bb.h, %bb.a
  %.sroa.0140.14 = phi i32 [ 0, %bb.a ], [ 0, %bb.n ], [ 1, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit ], [ 0, %bb.e ], [ 0, %bb.r ], [ 257, %bb.y ], [ 0, %bb.u ], [ 257, %bb.aa ], [ 257, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i ], [ %i.gz, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 257, %bb.bd ], [ 257, %bb.au ], [ 257, %bb.ab ], [ 257, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i ], [ 257, %bb.av ], [ 1, %bb.aw ], [ %i.hj, %_ZN6hermes2vm11TwineChar16C2EPKc.exit100 ], [ 0, %bb.ax ], [ 0, %bb.be ], [ 0, %bb.w ], [ 0, %bb.az ], [ 0, %bb.h ]
  %i.ic = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.id = zext i32 %i.g to i64
  %i.ie = load ptr, ptr %i.ic, align 8, !tbaa !10
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.id
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !92
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 128
  store i32 %i.g, ptr %i.f, align 8, !tbaa !71
  %i.ii = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !40
  store ptr %i.e, ptr %i.d, align 8, !tbaa !39
  ret i32 %.sroa.0140.14
}

declare { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14appendToOutputENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9240
  %i.c = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %i.a, i32 %1) #10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d) #10
  ret void
}

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i32 0, 258) i32 @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer16pushValueToStackENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !tbaa !14
  %i.c = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load atomic i32, ptr %i.e monotonic, align 4 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !86    ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = ptrtoint ptr %.pre to i64
  %i.i = and i64 %1, 281474976710655
  %i.j = inttoptr i64 %i.i to ptr
  %wide.trip.count = zext i32 %i.f to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !184

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %.sroa.0.0.copyload.i = load i32, ptr %i.k, align 4, !tbaa !7 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i, 0
  %i.l = zext i32 %.sroa.0.0.copyload.i to i64
  %i.m = add i64 %i.h, %i.l
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = select i1 %.not.i.i.i.i, ptr null, ptr %i.n
  %i.p = icmp eq ptr %i.o, %i.j
  br i1 %i.p, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !92
  store i64 %1, ptr %i.r, align 8, !tbaa !94
  %.sroa.0.0.copyload = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(9816) %.pre, ptr %.sroa.0.0.copyload)
  %i.t = icmp eq i32 %i.s, 0
  %i.u = select i1 %i.t, i32 0, i32 257
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %._crit_edge
  %.sroa.010.1 = phi i32 [ %i.u, %._crit_edge ], [ 1, %bb.c ]
  ret i32 %.sroa.010.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer11operationJAEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 208 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !71   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 10 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !85   ; 3 uses
  %i.j = add i32 %i.i, 1                          ; 2 uses
  %i.k = icmp ugt i32 %i.j, 511
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %i.a, i32 noundef 3) #10
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  store i32 %i.j, ptr %i.h, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 15 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 23 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !11   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 6 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !12
  %.not.i = icmp ult i32 %i.o, %i.q
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit, label %bb.d, !prof !41

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.r, i64 noundef 0, i64 noundef 2) #10
  %.pre.i = load i32, ptr %i.n, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit: ; preds = %bb.c, %bb.d
  %i.s = phi i32 [ %.pre.i, %bb.d ], [ %i.o, %bb.c ]
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.u
  store i16 91, ptr %i.v, align 1
  %i.w = load i32, ptr %i.n, align 8, !tbaa !11
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.n, align 8, !tbaa !11
  %i.y = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.aa, align 8, !tbaa !14
  %i.ab = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load atomic i32, ptr %i.ad monotonic, align 4
  %i.af = add i32 %i.ae, -1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %.sroa.0.0.copyload.i = load i32, ptr %i.ai, align 4, !tbaa !7 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i, 0
  %i.aj = ptrtoint ptr %i.y to i64
  %i.ak = zext i32 %.sroa.0.0.copyload.i to i64
  %i.al = add i64 %i.ak, %i.aj
  %i.am = or i64 %i.al, -281474976710656
  %i.an = select i1 %.not.i.i.i.i, i64 -281474976710656, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !31 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 192 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !39 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 200
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !40
  %i.au = icmp ult ptr %i.ar, %i.at
  br i1 %i.au, label %bb.e, label %bb.f, !prof !41

bb.e:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.av, ptr %i.aq, align 8, !tbaa !39
  store i64 %i.an, ptr %i.ar, align 8, !tbaa !14
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

bb.f:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit
  %i.aw = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ap, i64 %i.an) #10
  %.pre = load ptr, ptr %0, align 8, !tbaa !86
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.e, %bb.f
  %i.ax = phi ptr [ %i.y, %bb.e ], [ %.pre, %bb.f ] ; 3 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.ar, %bb.e ], [ %i.aw, %bb.f ] ; 2 uses
  %i.ay = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %i.ax, i32 85, ptr %.0.i.i.i.i.i.i, i32 0, ptr noundef null) #10 ; 2 uses
  %i.az = extractvalue { i32, i64 } %i.ay, 0
  %i.ba = extractvalue { i32, i64 } %i.ay, 1      ; 2 uses
  %i.bb = icmp eq i32 %i.az, 0
  br i1 %i.bb, label %.critedge, label %bb.g, !prof !58

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !31 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 192 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !39 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 200
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !40
  %i.bi = icmp ult ptr %i.bf, %i.bh
  br i1 %i.bi, label %bb.h, label %bb.i, !prof !41

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !39
  store i64 %i.ba, ptr %i.bf, align 8, !tbaa !14
  br label %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit

bb.i:                                             ; preds = %bb.g
  %i.bk = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bd, i64 %i.ba) #10
  br label %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit

_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.bf, %bb.h ], [ %i.bk, %bb.i ]
  %i.bl = tail call { i32, i64 } @_ZN6hermes2vm11toLengthU64ERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %i.ax, ptr %.0.i.i.i.i.i.i.i) #10 ; 2 uses
  %i.bm = extractvalue { i32, i64 } %i.bl, 0
  %i.bn = extractvalue { i32, i64 } %i.bl, 1      ; 2 uses
  %i.bo = icmp eq i32 %i.bm, 0
  br i1 %i.bo, label %.critedge, label %bb.j, !prof !95

bb.j:                                             ; preds = %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit
  %.not = icmp eq i64 %i.bn, 0
  br i1 %.not, label %.critedge19.thread, label %bb.k

.critedge19.thread:                               ; preds = %bb.j
  store i32 %i.i, ptr %i.h, align 8, !tbaa !85
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit50

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.bq, align 8, !tbaa !14
  %i.br = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %.not.i21 = icmp eq i64 %i.br, 0
  br i1 %.not.i21, label %.lr.ph, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = load i32, ptr %i.n, align 8, !tbaa !11  ; 2 uses
  %i.bt = load i32, ptr %i.p, align 4, !tbaa !12
  %.not.i.i = icmp ult i32 %i.bs, %i.bt
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i, label %bb.m, !prof !41

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.bu, i64 noundef 0, i64 noundef 2) #10
  %.pre.i.i = load i32, ptr %i.n, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i: ; preds = %bb.m, %bb.l
  %i.bv = phi i32 [ %.pre.i.i, %bb.m ], [ %i.bs, %bb.l ]
  %i.bw = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.bx = zext i32 %i.bv to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.bx
  store i16 10, ptr %i.by, align 1
  %i.bz = load i32, ptr %i.n, align 8, !tbaa !11
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.n, align 8, !tbaa !11
  %i.cb = load i32, ptr %i.h, align 8, !tbaa !85
  %.not4.i = icmp eq i32 %i.cb, 0
  br i1 %.not4.i, label %.lr.ph, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i, %.lr.ph.i
  %.03.i = phi i32 [ %i.cf, %.lr.ph.i ], [ 0, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i ]
  %i.cc = load ptr, ptr %i.bp, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i2.i = load i64, ptr %i.cc, align 8, !tbaa !14
  %i.cd = and i64 %.sroa.0.0.copyload.i.i2.i, 281474976710655
  %i.ce = inttoptr i64 %i.cd to ptr
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.m) #10
  %i.cf = add nuw i32 %.03.i, 1                   ; 2 uses
  %i.cg = load i32, ptr %i.h, align 8, !tbaa !85
  %i.ch = icmp ult i32 %i.cf, %i.cg
  br i1 %i.ch, label %.lr.ph.i, label %.lr.ph, !llvm.loop !0

.lr.ph:                                           ; preds = %.lr.ph.i, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i, %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.cm = zext i32 %i.g to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.u
  %.01173 = phi i64 [ 0, %.lr.ph ], [ %i.ek, %bb.u ] ; 3 uses
  %.not15 = icmp eq i64 %.01173, 0
  br i1 %.not15, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit34, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load i32, ptr %i.n, align 8, !tbaa !11  ; 2 uses
  %i.cp = load i32, ptr %i.p, align 4, !tbaa !12
  %.not.i22 = icmp ult i32 %i.co, %i.cp
  br i1 %.not.i22, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit24, label %bb.p, !prof !41

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.ci, i64 noundef 0, i64 noundef 2) #10
  %.pre.i23 = load i32, ptr %i.n, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit24

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit24: ; preds = %bb.o, %bb.p
  %i.cq = phi i32 [ %.pre.i23, %bb.p ], [ %i.co, %bb.o ]
  %i.cr = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.cs = zext i32 %i.cq to i64
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.cs
  store i16 44, ptr %i.ct, align 1
  %i.cu = load i32, ptr %i.n, align 8, !tbaa !11
  %i.cv = add i32 %i.cu, 1                        ; 3 uses
  store i32 %i.cv, ptr %i.n, align 8, !tbaa !11
  %i.cw = load ptr, ptr %i.cj, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i.i25 = load i64, ptr %i.cw, align 8, !tbaa !14
  %i.cx = and i64 %.sroa.0.0.copyload.i.i.i25, 281474976710655
  %.not.i26 = icmp eq i64 %i.cx, 0
  br i1 %.not.i26, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit34, label %bb.q

bb.q:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit24
  %i.cy = load i32, ptr %i.p, align 4, !tbaa !12
  %.not.i.i27 = icmp ult i32 %i.cv, %i.cy
  br i1 %.not.i.i27, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i29, label %bb.r, !prof !41

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.ci, i64 noundef 0, i64 noundef 2) #10
  %.pre.i.i28 = load i32, ptr %i.n, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i29

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i29: ; preds = %bb.r, %bb.q
  %i.cz = phi i32 [ %.pre.i.i28, %bb.r ], [ %i.cv, %bb.q ]
  %i.da = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.db = zext i32 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.db
  store i16 10, ptr %i.dc, align 1
  %i.dd = load i32, ptr %i.n, align 8, !tbaa !11
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.n, align 8, !tbaa !11
  %i.df = load i32, ptr %i.h, align 8, !tbaa !85
  %.not4.i30 = icmp eq i32 %i.df, 0
  br i1 %.not4.i30, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit34, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i29, %.lr.ph.i31
  %.03.i32 = phi i32 [ %i.dj, %.lr.ph.i31 ], [ 0, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i29 ]
  %i.dg = load ptr, ptr %i.cj, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i2.i33 = load i64, ptr %i.dg, align 8, !tbaa !14
  %i.dh = and i64 %.sroa.0.0.copyload.i.i2.i33, 281474976710655
  %i.di = inttoptr i64 %i.dh to ptr
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %i.m) #10
  %i.dj = add nuw i32 %.03.i32, 1                 ; 2 uses
  %i.dk = load i32, ptr %i.h, align 8, !tbaa !85
  %i.dl = icmp ult i32 %i.dj, %i.dk
  br i1 %i.dl, label %.lr.ph.i31, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit34, !llvm.loop !0

_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit34: ; preds = %.lr.ph.i31, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i29, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit24, %bb.n
  %i.dm = load ptr, ptr %i.z, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i35 = load i64, ptr %i.dm, align 8, !tbaa !14
  %i.dn = and i64 %.sroa.0.0.copyload.i.i35, 281474976710655
  %i.do = inttoptr i64 %i.dn to ptr               ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load atomic i32, ptr %i.dp monotonic, align 4
  %i.dr = add i32 %i.dq, -1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dt = zext i32 %i.dr to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dt
  %.sroa.0.0.copyload.i37 = load i32, ptr %i.du, align 4, !tbaa !7 ; 2 uses
  %i.dv = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68
  %.not.i.i.i.i38 = icmp eq i32 %.sroa.0.0.copyload.i37, 0
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = zext i32 %.sroa.0.0.copyload.i37 to i64
  %i.dy = add i64 %i.dw, %i.dx
  %i.dz = or i64 %i.dy, -281474976710656
  %i.ea = select i1 %.not.i.i.i.i38, i64 -281474976710656, i64 %i.dz
  %i.eb = load ptr, ptr %i.ck, align 8, !tbaa !92
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !94
  %i.ec = load ptr, ptr %i.cl, align 8, !tbaa !10
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.cm
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !92
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 128
  store i32 %i.g, ptr %i.f, align 8, !tbaa !71
  store ptr %i.ef, ptr %i.cn, align 8, !tbaa !40
  store ptr %i.e, ptr %i.d, align 8, !tbaa !39
  %i.eg = uitofp i64 %.01173 to double
  %i.eh = bitcast double %i.eg to i64
  %i.ei = tail call fastcc i32 @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer12operationStrENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 %i.eh) ; 2 uses
  %.mask = and i32 %i.ei, 255
  %i.ej = icmp eq i32 %.mask, 0
  br i1 %i.ej, label %.critedge, label %bb.s, !prof !58

bb.s:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit34
  %.not71 = icmp samesign ult i32 %i.ei, 256
  br i1 %.not71, label %bb.t, label %bb.u, !prof !58

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14appendToOutputENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 19)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ek = add nuw i64 %.01173, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ek, %i.bn
  br i1 %exitcond.not, label %bb.v, label %bb.n, !llvm.loop !185

bb.v:                                             ; preds = %bb.u
  store i32 %i.i, ptr %i.h, align 8, !tbaa !85
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i.i41 = load i64, ptr %i.em, align 8, !tbaa !14
  %i.en = and i64 %.sroa.0.0.copyload.i.i.i41, 281474976710655
  %.not.i42 = icmp eq i64 %i.en, 0
  br i1 %.not.i42, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit50, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eo = load i32, ptr %i.n, align 8, !tbaa !11  ; 2 uses
  %i.ep = load i32, ptr %i.p, align 4, !tbaa !12
  %.not.i.i43 = icmp ult i32 %i.eo, %i.ep
  br i1 %.not.i.i43, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i45, label %bb.x, !prof !41

bb.x:                                             ; preds = %bb.w
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.eq, i64 noundef 0, i64 noundef 2) #10
  %.pre.i.i44 = load i32, ptr %i.n, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i45

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i45: ; preds = %bb.x, %bb.w
  %i.er = phi i32 [ %.pre.i.i44, %bb.x ], [ %i.eo, %bb.w ]
  %i.es = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.et = zext i32 %i.er to i64
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.et
  store i16 10, ptr %i.eu, align 1
  %i.ev = load i32, ptr %i.n, align 8, !tbaa !11
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr %i.n, align 8, !tbaa !11
  %i.ex = load i32, ptr %i.h, align 8, !tbaa !85
  %.not4.i46 = icmp eq i32 %i.ex, 0
  br i1 %.not4.i46, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit50, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i45, %.lr.ph.i47
  %.03.i48 = phi i32 [ %i.fb, %.lr.ph.i47 ], [ 0, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i45 ]
  %i.ey = load ptr, ptr %i.el, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i2.i49 = load i64, ptr %i.ey, align 8, !tbaa !14
  %i.ez = and i64 %.sroa.0.0.copyload.i.i2.i49, 281474976710655
  %i.fa = inttoptr i64 %i.ez to ptr
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.fa, ptr noundef nonnull align 8 dereferenceable(16) %i.m) #10
  %i.fb = add nuw i32 %.03.i48, 1                 ; 2 uses
  %i.fc = load i32, ptr %i.h, align 8, !tbaa !85
  %i.fd = icmp ult i32 %i.fb, %i.fc
  br i1 %i.fd, label %.lr.ph.i47, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit50, !llvm.loop !0

_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit50: ; preds = %.lr.ph.i47, %.critedge19.thread, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i45, %bb.v
  %i.fe = load i32, ptr %i.n, align 8, !tbaa !11  ; 2 uses
  %i.ff = load i32, ptr %i.p, align 4, !tbaa !12
  %.not.i51 = icmp ult i32 %i.fe, %i.ff
  br i1 %.not.i51, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit53, label %bb.y, !prof !41

bb.y:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit50
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.fg, i64 noundef 0, i64 noundef 2) #10
  %.pre.i52 = load i32, ptr %i.n, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit53

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit53: ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit50, %bb.y
  %i.fh = phi i32 [ %.pre.i52, %bb.y ], [ %i.fe, %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit50 ]
  %i.fi = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.fj = zext i32 %i.fh to i64
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.fi, i64 %i.fj
  store i16 93, ptr %i.fk, align 1
  %i.fl = load i32, ptr %i.n, align 8, !tbaa !11
  %i.fm = add i32 %i.fl, 1
  store i32 %i.fm, ptr %i.n, align 8, !tbaa !11
  br label %.critedge

.critedge:                                        ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit34, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit53, %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit, %bb.b
  %.4 = phi i32 [ %i.l, %bb.b ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit53 ], [ 0, %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit ], [ 0, %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit34 ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.fo = zext i32 %i.g to i64
  %i.fp = load ptr, ptr %i.fn, align 8, !tbaa !10
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fo
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !92
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 128
  store i32 %i.g, ptr %i.f, align 8, !tbaa !71
  %i.ft = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !40
  store ptr %i.e, ptr %i.d, align 8, !tbaa !39
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer11operationJOEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 208 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !71   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 10 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !85   ; 3 uses
  %i.j = add i32 %i.i, 1                          ; 2 uses
  %i.k = icmp ugt i32 %i.j, 511
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %i.a, i32 noundef 3) #10
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  store i32 %i.j, ptr %i.h, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 24 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 32 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !11   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 9 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !12
  %.not.i = icmp ult i32 %i.o, %i.q
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit, label %bb.d, !prof !41

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.r, i64 noundef 0, i64 noundef 2) #10
  %.pre.i = load i32, ptr %i.n, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit: ; preds = %bb.c, %bb.d
  %i.s = phi i32 [ %.pre.i, %bb.d ], [ %i.o, %bb.c ]
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.u
  store i16 123, ptr %i.v, align 1
  %i.w = load i32, ptr %i.n, align 8, !tbaa !11
  %i.x = add i32 %i.w, 1                          ; 9 uses
  store i32 %i.x, ptr %i.n, align 8, !tbaa !11
  %i.y = zext i32 %i.x to i64                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !14
  %i.ab = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %.not.i42 = icmp eq i64 %i.ab, 0
  br i1 %.not.i42, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit
  %i.ac = load i32, ptr %i.p, align 4, !tbaa !12
  %.not.i.i = icmp ult i32 %i.x, %i.ac
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i, label %bb.f, !prof !41

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.ad, i64 noundef 0, i64 noundef 2) #10
  %.pre.i.i = load i32, ptr %i.n, align 8, !tbaa !11
  %.pre146 = zext i32 %.pre.i.i to i64
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i: ; preds = %bb.f, %bb.e
  %.pre-phi147 = phi i64 [ %.pre146, %bb.f ], [ %i.y, %bb.e ]
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %.pre-phi147
  store i16 10, ptr %i.af, align 1
  %i.ag = load i32, ptr %i.n, align 8, !tbaa !11
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.n, align 8, !tbaa !11
  %i.ai = load i32, ptr %i.h, align 8, !tbaa !85
  %.not4.i = icmp eq i32 %i.ai, 0
  br i1 %.not4.i, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i, %.lr.ph.i
  %.03.i = phi i32 [ %i.am, %.lr.ph.i ], [ 0, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i ]
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i2.i = load i64, ptr %i.aj, align 8, !tbaa !14
  %i.ak = and i64 %.sroa.0.0.copyload.i.i2.i, 281474976710655
  %i.al = inttoptr i64 %i.ak to ptr
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.m) #10
  %i.am = add nuw i32 %.03.i, 1                   ; 2 uses
  %i.an = load i32, ptr %i.h, align 8, !tbaa !85
  %i.ao = icmp ult i32 %i.am, %i.an
  br i1 %i.ao, label %.lr.ph.i, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit, !llvm.loop !0

_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit: ; preds = %.lr.ph.i, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !42
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !94 ; 3 uses
  %i.as = icmp ugt i64 %i.ar, -844424930131969
  %i.at = and i64 %i.ar, 281474976710655
  %i.au = icmp ne i64 %i.at, 0
  %i.av = and i1 %i.as, %i.au
  br i1 %i.av, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i43 = load i64, ptr %i.ax, align 8, !tbaa !14
  %i.ay = and i64 %.sroa.0.0.copyload.i.i43, 281474976710655
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load atomic i32, ptr %i.ba monotonic, align 4
  %i.bc = add i32 %i.bb, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.be = zext i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %.sroa.0.0.copyload.i = load i32, ptr %i.bf, align 4, !tbaa !7 ; 2 uses
  %i.bg = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i, 0
  %i.bh = ptrtoint ptr %i.bg to i64
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer11operationJOEv:bb.a
bb.n:                                             ; preds = %bb.m
  %i.cw = load i32, ptr %i.p, align 4, !tbaa !12
  %.not.i50 = icmp ult i32 %i.ct, %i.cw
  br i1 %.not.i50, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit52, label %bb.o, !prof !41

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.cn, i64 noundef 0, i64 noundef 2) #10
  %.pre.i51 = load i32, ptr %i.n, align 8, !tbaa !11
  %.pre145 = zext i32 %.pre.i51 to i64
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit52

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit52: ; preds = %bb.n, %bb.o
  %.pre-phi = phi i64 [ %i.cu, %bb.n ], [ %.pre145, %bb.o ]
  %i.cx = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %.pre-phi
  store i16 44, ptr %i.cy, align 1
  %i.cz = load i32, ptr %i.n, align 8, !tbaa !11
  %i.da = add i32 %i.cz, 1                        ; 3 uses
  store i32 %i.da, ptr %i.n, align 8, !tbaa !11
  %i.db = load ptr, ptr %i.z, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i.i53 = load i64, ptr %i.db, align 8, !tbaa !14
  %i.dc = and i64 %.sroa.0.0.copyload.i.i.i53, 281474976710655
  %.not.i54 = icmp eq i64 %i.dc, 0
  br i1 %.not.i54, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit62, label %bb.p

bb.p:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit52
  %i.dd = load i32, ptr %i.p, align 4, !tbaa !12
  %.not.i.i55 = icmp ult i32 %i.da, %i.dd
  br i1 %.not.i.i55, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i57, label %bb.q, !prof !41

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.cn, i64 noundef 0, i64 noundef 2) #10
  %.pre.i.i56 = load i32, ptr %i.n, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i57

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i57: ; preds = %bb.q, %bb.p
  %i.de = phi i32 [ %.pre.i.i56, %bb.q ], [ %i.da, %bb.p ]
  %i.df = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.dg = zext i32 %i.de to i64
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %i.dg
  store i16 10, ptr %i.dh, align 1
  %i.di = load i32, ptr %i.n, align 8, !tbaa !11
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.n, align 8, !tbaa !11
  %i.dk = load i32, ptr %i.h, align 8, !tbaa !85
  %.not4.i58 = icmp eq i32 %i.dk, 0
  br i1 %.not4.i58, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit62, label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i57, %.lr.ph.i59
  %.03.i60 = phi i32 [ %i.do, %.lr.ph.i59 ], [ 0, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i57 ]
  %i.dl = load ptr, ptr %i.z, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i2.i61 = load i64, ptr %i.dl, align 8, !tbaa !14
  %i.dm = and i64 %.sroa.0.0.copyload.i.i2.i61, 281474976710655
  %i.dn = inttoptr i64 %i.dm to ptr
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.dn, ptr noundef nonnull align 8 dereferenceable(16) %i.m) #10
  %i.do = add nuw i32 %.03.i60, 1                 ; 2 uses
  %i.dp = load i32, ptr %i.h, align 8, !tbaa !85
  %i.dq = icmp ult i32 %i.do, %i.dp
  br i1 %i.dq, label %.lr.ph.i59, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit62, !llvm.loop !0

_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit62: ; preds = %.lr.ph.i59, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i57, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit52, %bb.m
  %i.dr = load ptr, ptr %i.ci, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i63 = load i64, ptr %i.dr, align 8, !tbaa !14
  %i.ds = and i64 %.sroa.0.0.copyload.i.i63, 281474976710655
  %i.dt = inttoptr i64 %i.ds to ptr               ; 3 uses
  %i.du = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !115 ; 2 uses
  %.not.i64 = icmp uge i32 %.038138, %i.dw
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = icmp ult i32 %.038138, %i.dy
  %or.cond.i = select i1 %.not.i64, i1 %i.dz, i1 false
  br i1 %or.cond.i, label %bb.r, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread

bb.r:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit62
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 28
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.ea, align 4, !tbaa !7
  %i.eb = ptrtoint ptr %i.du to i64               ; 6 uses
  %i.ec = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.ed = add i64 %i.ec, %i.eb
  %i.ee = inttoptr i64 %i.ed to ptr               ; 2 uses
  %i.ef = sub nuw i32 %.038138, %i.dw             ; 4 uses
  %i.eg = icmp ult i32 %i.ef, 4096
  br i1 %i.eg, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eh = add i32 %i.ef, -4096
  %i.ei = lshr i32 %i.eh, 10
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 16392
  %i.ek = zext nneg i32 %i.ei to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !117
  %i.en = zext i32 %i.em to i64
  %i.eo = add i64 %i.en, %i.eb
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = and i32 %i.ef, 1023
  br label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit: ; preds = %bb.r, %bb.s
  %.sink8.i.i = phi ptr [ %i.ep, %bb.s ], [ %i.ee, %bb.r ]
  %.sink7.i.i = phi i32 [ %i.eq, %bb.s ], [ %i.ef, %bb.r ]
  %i.er = getelementptr inbounds nuw i8, ptr %.sink8.i.i, i64 8
  %i.es = zext nneg i32 %.sink7.i.i to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.es
  %.sroa.0.0.i.i = load i32, ptr %i.et, align 4, !tbaa !7 ; 9 uses
  %i.eu = trunc i32 %.sroa.0.0.i.i to i8
  %i.ev = and i8 %i.eu, 15
  switch i8 %i.ev, label %default.unreachable [
    i8 0, label %bb.t
    i8 8, label %bb.t
    i8 1, label %bb.u
    i8 9, label %bb.u
    i8 2, label %bb.v
    i8 10, label %bb.v
    i8 3, label %bb.w
    i8 11, label %bb.w
    i8 4, label %bb.x
    i8 12, label %bb.x
    i8 5, label %bb.y
    i8 13, label %bb.y
    i8 6, label %bb.z
    i8 14, label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread
    i8 7, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread
    i8 15, label %bb.aa
  ]

bb.t:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.i.i, 0
  %i.ew = zext i32 %.sroa.0.0.i.i to i64
  %i.ex = add i64 %i.ew, %i.eb
  %i.ey = or i64 %i.ex, -281474976710656
  %i.ez = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.ey
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.u:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.fa = and i32 %.sroa.0.0.i.i, -8
  %i.fb = zext i32 %i.fa to i64
  %i.fc = add i64 %i.fb, %i.eb
  %i.fd = or i64 %i.fc, -562949953421312
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.v:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.fe = and i32 %.sroa.0.0.i.i, -8
  %i.ff = zext i32 %i.fe to i64
  %i.fg = add i64 %i.ff, %i.eb
  %i.fh = or i64 %i.fg, -844424930131968
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.w:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.fi = and i32 %.sroa.0.0.i.i, -8
  %i.fj = zext i32 %i.fi to i64
  %i.fk = add i64 %i.fj, %i.eb
  %i.fl = inttoptr i64 %i.fk to ptr
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !124 ; 2 uses
  %i.fo = fcmp uno double %i.fn, 0.000000e+00
  %i.fp = bitcast double %i.fn to i64
  %spec.select.i.i = select i1 %i.fo, i64 9221120237041090560, i64 %i.fp, !prof !58
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.x:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.fq = ashr i32 %.sroa.0.0.i.i, 3
  %i.fr = sitofp i32 %i.fq to double
  %i.fs = bitcast double %i.fr to i64
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.y:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.ft = lshr i32 %.sroa.0.0.i.i, 3
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = or disjoint i64 %i.fu, -1266637395197952
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.z:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.fw = icmp ugt i32 %.sroa.0.0.i.i, 15
  %i.fx = zext i1 %i.fw to i64
  %i.fy = or disjoint i64 %i.fx, -1407374883553280
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread: ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit62, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread

bb.aa:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread

default.unreachable:                              ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  unreachable

_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread: ; preds = %bb.aa, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %.sroa.05.0.i.ph = phi i64 [ -1688849860263936, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit ], [ -1970324836974592, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread ], [ -1548112371908608, %bb.aa ]
  %i.fz = load ptr, ptr %i.co, align 8, !tbaa !92
  store i64 %.sroa.05.0.i.ph, ptr %i.fz, align 8, !tbaa !94
  br label %bb.ab

_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit: ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z
  %.sroa.05.0.i = phi i64 [ %i.ez, %bb.t ], [ %i.fd, %bb.u ], [ %i.fh, %bb.v ], [ %spec.select.i.i, %bb.w ], [ %i.fs, %bb.x ], [ %i.fv, %bb.y ], [ %i.fy, %bb.z ] ; 2 uses
  %i.ga = load ptr, ptr %i.co, align 8            ; 2 uses
  store i64 %.sroa.05.0.i, ptr %i.ga, align 8, !tbaa !94
  %.mask.i = and i64 %.sroa.05.0.i, -281474976710656
  %i.gb = icmp eq i64 %.mask.i, -844424930131968
  br i1 %i.gb, label %bb.ac, label %bb.ab, !prof !187

bb.ab:                                            ; preds = %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit
  %.sroa.09.0.copyload = load ptr, ptr %i.co, align 8
  %i.gc = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %i.du, ptr %.sroa.09.0.copyload) #10
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = or i64 %i.gd, -844424930131968
  %i.gf = load ptr, ptr %i.co, align 8            ; 2 uses
  store i64 %i.ge, ptr %i.gf, align 8, !tbaa !94
  %.pre = load ptr, ptr %0, align 8, !tbaa !86
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit
  %.in = phi ptr [ %i.gf, %bb.ab ], [ %i.ga, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit ]
  %i.gg = phi ptr [ %.pre, %bb.ab ], [ %i.du, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit ]
  %i.gh = tail call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %i.gg, ptr nonnull %.in) #10 ; 2 uses
  %i.gi = extractvalue { ptr, i64 } %i.gh, 0      ; 4 uses
  %i.gj = extractvalue { ptr, i64 } %i.gh, 1      ; 4 uses
  %.sroa.3.8.extract.trunc.i = trunc i64 %i.gj to i32 ; 3 uses
  %.sroa.7.8.extract.shift.i = lshr i64 %i.gj, 32 ; 2 uses
  %i.gk = icmp slt i32 %.sroa.3.8.extract.trunc.i, 0
  br i1 %i.gk, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.gl = and i32 %.sroa.3.8.extract.trunc.i, 1073741824
  %.not.i.i65 = icmp eq i32 %i.gl, 0
  br i1 %.not.i.i65, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.gi, align 8, !tbaa !14
  %i.gm = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.gn = inttoptr i64 %i.gm to ptr               ; 5 uses
  %i.go = load i32, ptr %i.gn, align 4            ; 2 uses
  %i.gp = icmp ugt i32 %i.go, 150994943
  br i1 %i.gp, label %bb.af, label %bb.ag, !prof !58

bb.af:                                            ; preds = %bb.ae
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !120
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.ag:                                            ; preds = %bb.ae
  %.mask.i.i.i.i.i.i.i.i.i.i = and i32 %i.go, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i, label %bb.aj [
    i32 134217728, label %bb.ah
    i32 67108864, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.aj:                                            ; preds = %bb.ag
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i = load i64, ptr %i.gu, align 8, !tbaa !14
  %i.gv = and i64 %.sroa.0.0.copyload.i.i.i2.i.i, 281474976710655
  %i.gw = inttoptr i64 %i.gv to ptr
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !120
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ad
  %.0.i.sink.i.i = phi ptr [ %i.gi, %bb.ad ], [ %i.gr, %bb.af ], [ %i.gs, %bb.ah ], [ %i.gt, %bb.ai ], [ %i.gy, %bb.aj ]
  %i.gz = and i64 %i.gj, 1073741823
  %i.ha = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i, i64 %i.gz
  tail call void @_ZN6hermes18quoteStringForJSONIN4llvh11SmallVectorIDsLj32EEEcEEvRT_NS1_8ArrayRefIT0_EE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr %i.ha, i64 %.sroa.7.8.extract.shift.i)
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.ak:                                            ; preds = %bb.ac
  %.not.i1.i = icmp samesign ult i32 %.sroa.3.8.extract.trunc.i, 1073741824
  br i1 %.not.i1.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.0.0.copyload.i.i.i.i2.i = load i64, ptr %i.gi, align 8, !tbaa !14
  %i.hb = and i64 %.sroa.0.0.copyload.i.i.i.i2.i, 281474976710655
  %i.hc = inttoptr i64 %i.hb to ptr               ; 5 uses
  %i.hd = load i32, ptr %i.hc, align 4            ; 2 uses
  %i.he = icmp ugt i32 %i.hd, 150994943
  br i1 %i.he, label %bb.am, label %bb.an, !prof !58

bb.am:                                            ; preds = %bb.al
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !61
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.an:                                            ; preds = %bb.al
  %.mask.i.i.i.i.i.i.i.i.i3.i = and i32 %i.hd, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i, label %bb.aq [
    i32 117440512, label %bb.ao
    i32 50331648, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.ap:                                            ; preds = %bb.an
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.aq:                                            ; preds = %bb.an
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i = load i64, ptr %i.hj, align 8, !tbaa !14
  %i.hk = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i, 281474976710655
  %i.hl = inttoptr i64 %i.hk to ptr
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !61
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i: ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.ak
  %.0.i.sink.i4.i = phi ptr [ %i.gi, %bb.ak ], [ %i.hg, %bb.am ], [ %i.hh, %bb.ao ], [ %i.hi, %bb.ap ], [ %i.hn, %bb.aq ]
  %i.ho = and i64 %i.gj, 1073741823
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i, i64 %i.ho
  tail call void @_ZN6hermes18quoteStringForJSONIN4llvh11SmallVectorIDsLj32EEEDsEEvRT_NS1_8ArrayRefIT0_EE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr %i.hp, i64 %.sroa.7.8.extract.shift.i)
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit: ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i
  %i.hq = load i32, ptr %i.n, align 8, !tbaa !11  ; 2 uses
  %i.hr = load i32, ptr %i.p, align 4, !tbaa !12
  %.not.i66 = icmp ult i32 %i.hq, %i.hr
  br i1 %.not.i66, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68, label %bb.ar, !prof !41

bb.ar:                                            ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.cn, i64 noundef 0, i64 noundef 2) #10
  %.pre.i67 = load i32, ptr %i.n, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68: ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, %bb.ar
  %i.hs = phi i32 [ %.pre.i67, %bb.ar ], [ %i.hq, %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit ]
  %i.ht = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.hu = zext i32 %i.hs to i64
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.hu
  store i16 58, ptr %i.hv, align 1
  %i.hw = load i32, ptr %i.n, align 8, !tbaa !11
  %i.hx = add i32 %i.hw, 1                        ; 3 uses
  store i32 %i.hx, ptr %i.n, align 8, !tbaa !11
  %i.hy = load ptr, ptr %i.z, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i69 = load i64, ptr %i.hy, align 8, !tbaa !14
  %i.hz = and i64 %.sroa.0.0.copyload.i.i69, 281474976710655
  %.not = icmp eq i64 %i.hz, 0
  br i1 %.not, label %bb.au, label %bb.as

bb.as:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68
  %i.ia = load i32, ptr %i.p, align 4, !tbaa !12
  %.not.i70 = icmp ult i32 %i.hx, %i.ia
  br i1 %.not.i70, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit72, label %bb.at, !prof !41

bb.at:                                            ; preds = %bb.as
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.cn, i64 noundef 0, i64 noundef 2) #10
  %.pre.i71 = load i32, ptr %i.n, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit72

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit72: ; preds = %bb.as, %bb.at
  %i.ib = phi i32 [ %.pre.i71, %bb.at ], [ %i.hx, %bb.as ]
  %i.ic = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.id = zext i32 %i.ib to i64
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %i.id
  store i16 32, ptr %i.ie, align 1
  %i.if = load i32, ptr %i.n, align 8, !tbaa !11
  %i.ig = add i32 %i.if, 1
  store i32 %i.ig, ptr %i.n, align 8, !tbaa !11
  br label %bb.au

bb.au:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit72, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68
  %i.ih = load ptr, ptr %i.cp, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i73 = load i64, ptr %i.ih, align 8, !tbaa !14
  %i.ii = and i64 %.sroa.0.0.copyload.i.i73, 281474976710655
  %i.ij = inttoptr i64 %i.ii to ptr               ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.il = load atomic i32, ptr %i.ik monotonic, align 4
  %i.im = add i32 %i.il, -1
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.io = zext i32 %i.im to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.io
  %.sroa.0.0.copyload.i75 = load i32, ptr %i.ip, align 4, !tbaa !7 ; 2 uses
  %i.iq = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68 ; 2 uses
  %.not.i.i.i.i76 = icmp eq i32 %.sroa.0.0.copyload.i75, 0
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = zext i32 %.sroa.0.0.copyload.i75 to i64
  %i.it = add i64 %i.ir, %i.is
  %i.iu = or i64 %i.it, -281474976710656
  %i.iv = select i1 %.not.i.i.i.i76, i64 -281474976710656, i64 %i.iu
  %i.iw = load ptr, ptr %i.cq, align 8, !tbaa !92
  store i64 %i.iv, ptr %i.iw, align 8, !tbaa !94
  %i.ix = load ptr, ptr %i.ci, align 8, !tbaa !42
  %.sroa.0.0.copyload.i77 = load i64, ptr %i.ix, align 8, !tbaa !14
  %i.iy = load ptr, ptr %i.cr, align 8, !tbaa !92
  store i64 %.sroa.0.0.copyload.i77, ptr %i.iy, align 8, !tbaa !94
  %.sroa.04.0.copyload = load ptr, ptr %i.cr, align 8
  %i.iz = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull align 8 dereferenceable(9816) %i.iq, ptr %.sroa.04.0.copyload)
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %.critedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jb = load ptr, ptr %i.cb, align 8, !tbaa !10
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.cc
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !92
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 128
  store i32 %i.g, ptr %i.f, align 8, !tbaa !71
  store ptr %i.je, ptr %i.ch, align 8, !tbaa !40
  store ptr %i.e, ptr %i.d, align 8, !tbaa !39
  %i.jf = load ptr, ptr %i.co, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i.i81 = load i64, ptr %i.jf, align 8, !tbaa !14
  %i.jg = tail call fastcc i32 @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer12operationStrENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 %.sroa.0.0.copyload.i.i.i81) ; 2 uses
  %i.jh = load ptr, ptr %i.cs, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i82 = load i64, ptr %i.jh, align 8, !tbaa !14
  %i.ji = and i64 %.sroa.0.0.copyload.i.i82, 281474976710655
  %i.jj = inttoptr i64 %i.ji to ptr               ; 2 uses
  %i.jk = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 4 ; 2 uses
  %i.jm = load atomic i32, ptr %i.jl monotonic, align 4
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jo = add i32 %i.jm, -1                       ; 2 uses
  %i.jp = zext i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.jp ; 2 uses
  %.sroa.0.0.copyload.i83 = load i32, ptr %i.jq, align 4, !tbaa !7 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jk, i64 1632
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !126
  %i.jt = ptrtoint ptr %i.jq to i64
  %i.ju = and i64 %i.jt, 1125899902648320
  %i.jv = inttoptr i64 %i.ju to ptr
  %i.jw = icmp ne ptr %i.js, %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jk, i64 8489
  %i.jy = load i8, ptr %i.jx, align 1, !range !125
  %i.jz = trunc nuw i8 %i.jy to i1
  %or.cond.i.i.i = select i1 %i.jw, i1 %i.jz, i1 false, !prof !127
  br i1 %or.cond.i.i.i, label %bb.aw, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit, !prof !127

bb.aw:                                            ; preds = %bb.av
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jk, i64 856
  tail call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_13HermesValue32E(ptr noundef nonnull align 8 dereferenceable(8112) %i.ka, i32 %.sroa.0.0.copyload.i83) #10
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit: ; preds = %bb.av, %bb.aw
  store atomic i32 %i.jo, ptr %i.jl monotonic, align 4
  %i.kb = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68
  %.not.i.i.i.i84 = icmp eq i32 %.sroa.0.0.copyload.i83, 0
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = zext i32 %.sroa.0.0.copyload.i83 to i64
  %i.ke = add i64 %i.kc, %i.kd
  %i.kf = or i64 %i.ke, -281474976710656
  %i.kg = select i1 %.not.i.i.i.i84, i64 -281474976710656, i64 %i.kf
  %i.kh = load ptr, ptr %i.ci, align 8, !tbaa !92
  store i64 %i.kg, ptr %i.kh, align 8, !tbaa !94
  %.mask = and i32 %i.jg, 255
  %i.ki = icmp eq i32 %.mask, 0
  br i1 %i.ki, label %.critedge, label %bb.ax, !prof !58

bb.ax:                                            ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit
  %.not134 = icmp samesign ult i32 %i.jg, 256
  br i1 %.not134, label %bb.ay, label %bb.az, !prof !58

bb.ay:                                            ; preds = %bb.ax
  tail call void @_ZN4llvh15SmallVectorImplIDsE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 noundef %i.cu)
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.235.ph = phi i8 [ 1, %bb.ax ], [ %.033141, %bb.ay ] ; 2 uses
  %i.kj = add nuw i32 %.038138, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.kj, %i.cm
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !186

._crit_edge:                                      ; preds = %bb.az
  %i.kk = trunc nuw i8 %.235.ph to i1
  store i32 %i.i, ptr %i.h, align 8, !tbaa !85
  br i1 %i.kk, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %._crit_edge
  %i.kl = load ptr, ptr %i.z, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i.i85 = load i64, ptr %i.kl, align 8, !tbaa !14
  %i.km = and i64 %.sroa.0.0.copyload.i.i.i85, 281474976710655
  %.not.i86 = icmp eq i64 %i.km, 0
  %.pre144 = load i32, ptr %i.n, align 8, !tbaa !11 ; 3 uses
  br i1 %.not.i86, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kn = load i32, ptr %i.p, align 4, !tbaa !12
  %.not.i.i87 = icmp ult i32 %.pre144, %i.kn
  br i1 %.not.i.i87, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i89, label %bb.bc, !prof !41

bb.bc:                                            ; preds = %bb.bb
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.ko, i64 noundef 0, i64 noundef 2) #10
  %.pre.i.i88 = load i32, ptr %i.n, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i89

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i89: ; preds = %bb.bc, %bb.bb
  %i.kp = phi i32 [ %.pre.i.i88, %bb.bc ], [ %.pre144, %bb.bb ]
  %i.kq = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.kr = zext i32 %i.kp to i64
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %i.kq, i64 %i.kr
  store i16 10, ptr %i.ks, align 1
  %i.kt = load i32, ptr %i.n, align 8, !tbaa !11
  %i.ku = add i32 %i.kt, 1                        ; 2 uses
  store i32 %i.ku, ptr %i.n, align 8, !tbaa !11
  %i.kv = load i32, ptr %i.h, align 8, !tbaa !85
  %.not4.i90 = icmp eq i32 %i.kv, 0
  br i1 %.not4.i90, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94, label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i89, %.lr.ph.i91
  %.03.i92 = phi i32 [ %i.kz, %.lr.ph.i91 ], [ 0, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i89 ]
  %i.kw = load ptr, ptr %i.z, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i2.i93 = load i64, ptr %i.kw, align 8, !tbaa !14
  %i.kx = and i64 %.sroa.0.0.copyload.i.i2.i93, 281474976710655
  %i.ky = inttoptr i64 %i.kx to ptr
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.ky, ptr noundef nonnull align 8 dereferenceable(16) %i.m) #10
  %i.kz = add nuw i32 %.03.i92, 1                 ; 2 uses
  %i.la = load i32, ptr %i.h, align 8, !tbaa !85
  %i.lb = icmp ult i32 %i.kz, %i.la
  br i1 %i.lb, label %.lr.ph.i91, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94.loopexit, !llvm.loop !0

bb.bd:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %i.lc = load i32, ptr %i.n, align 8, !tbaa !11  ; 4 uses
  %i.ld = icmp ult i32 %i.x, %i.lc
  br i1 %i.ld, label %.sink.split.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.le = icmp ugt i32 %i.x, %i.lc
  br i1 %i.le, label %bb.bf, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94

bb.bf:                                            ; preds = %bb.be
  %i.lf = load i32, ptr %i.p, align 4, !tbaa !12
  %i.lg = icmp ugt i32 %i.x, %i.lf
  br i1 %i.lg, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.lh, i64 noundef %i.y, i64 noundef 2) #10
  %.pre.i95 = load i32, ptr %i.n, align 8, !tbaa !11
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pre-phi.i.in = phi i32 [ %.pre.i95, %bb.bg ], [ %i.lc, %bb.bf ] ; 2 uses
  %.not13.i = icmp eq i32 %i.x, %.pre-phi.i.in
  br i1 %.not13.i, label %.sink.split.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bh
  %.pre-phi.i = zext i32 %.pre-phi.i.in to i64    ; 2 uses
  %i.li = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.lj = getelementptr [2 x i8], ptr %i.li, i64 %.pre-phi.i
  %i.lk = sub nsw i64 %i.y, %.pre-phi.i
  %i.ll = shl nsw i64 %i.lk, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.lj, i8 0, i64 %i.ll, i1 false), !tbaa !122
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.preheader.i, %bb.bh, %bb.bd
  store i32 %i.x, ptr %i.n, align 8, !tbaa !11
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94

_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94.loopexit: ; preds = %.lr.ph.i91
  %.pre143 = load i32, ptr %i.n, align 8, !tbaa !11
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94

_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94: ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94.loopexit, %.sink.split.i, %bb.be, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i89, %bb.ba
  %i.lm = phi i32 [ %.pre143, %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94.loopexit ], [ %i.x, %.sink.split.i ], [ %i.lc, %bb.be ], [ %i.ku, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i89 ], [ %.pre144, %bb.ba ] ; 2 uses
  %i.ln = load i32, ptr %i.p, align 4, !tbaa !12
  %.not.i96 = icmp ult i32 %i.lm, %i.ln
  br i1 %.not.i96, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit98, label %bb.bi, !prof !41

bb.bi:                                            ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.lo, i64 noundef 0, i64 noundef 2) #10
  %.pre.i97 = load i32, ptr %i.n, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit98

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit98: ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94, %bb.bi
  %i.lp = phi i32 [ %.pre.i97, %bb.bi ], [ %i.lm, %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94 ]
  %i.lq = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.lr = zext i32 %i.lp to i64
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.lq, i64 %i.lr
  store i16 125, ptr %i.ls, align 1
  %i.lt = load i32, ptr %i.n, align 8, !tbaa !11
  %i.lu = add i32 %i.lt, 1
  store i32 %i.lu, ptr %i.n, align 8, !tbaa !11
  br label %.critedge

.critedge:                                        ; preds = %bb.au, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit, %bb.j, %bb.h, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit98, %bb.b
  %.9 = phi i32 [ %i.l, %bb.b ], [ 0, %bb.h ], [ 0, %bb.j ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit98 ], [ 0, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit ], [ 0, %bb.au ]
  %i.lv = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.lw = zext i32 %i.g to i64
  %i.lx = load ptr, ptr %i.lv, align 8, !tbaa !10
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %i.lw
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !92
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 128
  store i32 %i.g, ptr %i.f, align 8, !tbaa !71
  %i.mb = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store ptr %i.ma, ptr %i.mb, align 8, !tbaa !40
  store ptr %i.e, ptr %i.d, align 8, !tbaa !39
  ret i32 %.9
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer17popValueFromStackEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !tbaa !14
  %i.c = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !86, !nonnull !67, !align !68 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = add i32 %i.g, -1                         ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 1632
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !126
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = and i64 %i.n, 1125899902648320
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = icmp ne ptr %i.m, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8489
  %i.s = load i8, ptr %i.r, align 1, !range !125
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i.i.i = select i1 %i.q, i1 %i.t, i1 false, !prof !127
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit, !prof !127

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i32, ptr %i.k, align 4, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 856
  tail call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_13HermesValue32E(ptr noundef nonnull align 8 dereferenceable(8112) %i.u, i32 %.sroa.0.0.copyload.i) #10
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit: ; preds = %bb.a, %bb.b
  store atomic i32 %i.i, ptr %i.f monotonic, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes18quoteStringForJSONIN4llvh11SmallVectorIDsLj32EEEcEEvRT_NS1_8ArrayRefIT0_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 37 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 20 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i = icmp ult i32 %i.b, %i.d
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 2) #10
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %.pre.i, %bb.b ], [ %i.b, %bb.a ]
  %i.g = load ptr, ptr %0, align 8, !tbaa !10
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  store i16 34, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !11
  %i.k = add i32 %i.j, 1                          ; 3 uses
  store i32 %i.k, ptr %i.a, align 8, !tbaa !11
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  br label %bb.d

end_hunk_1
begin_hunk_2_@_ZN6hermes18quoteStringForJSONIN4llvh11SmallVectorIDsLj32EEEcEEvRT_NS1_8ArrayRefIT0_EE:bb.a
  br i1 %.not.i48, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50, label %bb.j, !prof !41

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i49 = load i32, ptr %i.a, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50: ; preds = %bb.i, %bb.j
  %i.ap = phi i32 [ %.pre.i49, %bb.j ], [ %i.v, %bb.i ]
  %i.aq = load ptr, ptr %0, align 8, !tbaa !10
  %i.ar = zext i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.ar
  store i16 92, ptr %i.as, align 1
  %i.at = load i32, ptr %i.a, align 8, !tbaa !11
  %i.au = add i32 %i.at, 1                        ; 3 uses
  store i32 %i.au, ptr %i.a, align 8, !tbaa !11
  %i.av = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i51 = icmp ult i32 %i.au, %i.av
  br i1 %.not.i51, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split, !prof !41

bb.k:                                             ; preds = %bb.d
  %i.aw = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i54 = icmp ult i32 %i.v, %i.aw
  br i1 %.not.i54, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit56, label %bb.l, !prof !41

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i55 = load i32, ptr %i.a, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit56

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit56: ; preds = %bb.k, %bb.l
  %i.ax = phi i32 [ %.pre.i55, %bb.l ], [ %i.v, %bb.k ]
  %i.ay = load ptr, ptr %0, align 8, !tbaa !10
  %i.az = zext i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.az
  store i16 92, ptr %i.ba, align 1
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !11
  %i.bc = add i32 %i.bb, 1                        ; 3 uses
  store i32 %i.bc, ptr %i.a, align 8, !tbaa !11
  %i.bd = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i57 = icmp ult i32 %i.bc, %i.bd
  br i1 %.not.i57, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split, !prof !41

bb.m:                                             ; preds = %bb.d
  %i.be = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i60 = icmp ult i32 %i.v, %i.be
  br i1 %.not.i60, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit62, label %bb.n, !prof !41

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i61 = load i32, ptr %i.a, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit62

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit62: ; preds = %bb.m, %bb.n
  %i.bf = phi i32 [ %.pre.i61, %bb.n ], [ %i.v, %bb.m ]
  %i.bg = load ptr, ptr %0, align 8, !tbaa !10
  %i.bh = zext i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bh
  store i16 92, ptr %i.bi, align 1
  %i.bj = load i32, ptr %i.a, align 8, !tbaa !11
  %i.bk = add i32 %i.bj, 1                        ; 3 uses
  store i32 %i.bk, ptr %i.a, align 8, !tbaa !11
  %i.bl = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i63 = icmp ult i32 %i.bk, %i.bl
  br i1 %.not.i63, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split, !prof !41

bb.o:                                             ; preds = %bb.d
  %i.bm = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i66 = icmp ult i32 %i.v, %i.bm
  br i1 %.not.i66, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68, label %bb.p, !prof !41

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i67 = load i32, ptr %i.a, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68: ; preds = %bb.o, %bb.p
  %i.bn = phi i32 [ %.pre.i67, %bb.p ], [ %i.v, %bb.o ]
  %i.bo = load ptr, ptr %0, align 8, !tbaa !10
  %i.bp = zext i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.bp
  store i16 92, ptr %i.bq, align 1
  %i.br = load i32, ptr %i.a, align 8, !tbaa !11
  %i.bs = add i32 %i.br, 1                        ; 3 uses
  store i32 %i.bs, ptr %i.a, align 8, !tbaa !11
  %i.bt = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i69 = icmp ult i32 %i.bs, %i.bt
  br i1 %.not.i69, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split, !prof !41

bb.q:                                             ; preds = %bb.d
  %i.bu = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i72 = icmp ult i32 %i.v, %i.bu
  br i1 %.not.i72, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit74, label %bb.r, !prof !41

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i73 = load i32, ptr %i.a, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit74

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit74: ; preds = %bb.q, %bb.r
  %i.bv = phi i32 [ %.pre.i73, %bb.r ], [ %i.v, %bb.q ]
  %i.bw = load ptr, ptr %0, align 8, !tbaa !10
  %i.bx = zext i32 %i.bv to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.bx
  store i16 92, ptr %i.by, align 1
  %i.bz = load i32, ptr %i.a, align 8, !tbaa !11
  %i.ca = add i32 %i.bz, 1                        ; 3 uses
  store i32 %i.ca, ptr %i.a, align 8, !tbaa !11
  %i.cb = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i75 = icmp ult i32 %i.ca, %i.cb
  br i1 %.not.i75, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split, !prof !41

bb.s:                                             ; preds = %bb.d
  %i.cc = icmp slt i8 %i.x, 32
  br i1 %i.cc, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.cd = load i32, ptr %i.c, align 4, !tbaa !12
  %i.ce = zext i32 %i.cd to i64
  %i.cf = zext i32 %i.v to i64                    ; 3 uses
  %i.cg = sub nsw i64 %i.ce, %i.cf
  %i.ch = icmp ult i64 %i.cg, 4
  br i1 %i.ch, label %.thread.i, label %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit

.thread.i:                                        ; preds = %bb.t
  %i.ci = add nuw nsw i64 %i.cf, 4
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef %i.ci, i64 noundef 2) #10
  %.pre7.pre.i.i = load i32, ptr %i.a, align 8, !tbaa !11
  %.pre = zext i32 %.pre7.pre.i.i to i64
  br label %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit

_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit: ; preds = %bb.t, %.thread.i
  %.pre-phi = phi i64 [ %i.cf, %bb.t ], [ %.pre, %.thread.i ]
  %i.cj = load ptr, ptr %0, align 8, !tbaa !10
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %.pre-phi
  store <4 x i16> <i16 92, i16 117, i16 48, i16 48>, ptr %i.ck, align 1
  %.pre.i.i = load i32, ptr %i.a, align 8, !tbaa !11
  %i.cl = add i32 %.pre.i.i, 4                    ; 3 uses
  store i32 %i.cl, ptr %i.a, align 8, !tbaa !11
  %i.cm = sdiv i8 %i.x, 16
  %i.cn = srem i8 %i.x, 16                        ; 3 uses
  %narrow = add nsw i8 %i.cm, 48
  %i.co = zext nneg i8 %narrow to i16
  %i.cp = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i78 = icmp ult i32 %i.cl, %i.cp
  br i1 %.not.i78, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit80, label %bb.u, !prof !41

bb.u:                                             ; preds = %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i79 = load i32, ptr %i.a, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit80

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit80: ; preds = %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit, %bb.u
  %i.cq = phi i32 [ %.pre.i79, %bb.u ], [ %i.cl, %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit ]
  %i.cr = load ptr, ptr %0, align 8, !tbaa !10
  %i.cs = zext i32 %i.cq to i64
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.cs
  store i16 %i.co, ptr %i.ct, align 1
  %i.cu = load i32, ptr %i.a, align 8, !tbaa !11
  %i.cv = add i32 %i.cu, 1                        ; 4 uses
  store i32 %i.cv, ptr %i.a, align 8, !tbaa !11
  %i.cw = icmp slt i8 %i.cn, 10
  %i.cx = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i81 = icmp ult i32 %i.cv, %i.cx           ; 2 uses
  br i1 %i.cw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit80
  %narrow113 = add nsw i8 %i.cn, 48
  %i.cy = zext nneg i8 %narrow113 to i16          ; 2 uses
  br i1 %.not.i81, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split, !prof !41

bb.w:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit80
  %narrow112 = add nuw nsw i8 %i.cn, 87
  %i.cz = zext nneg i8 %narrow112 to i16          ; 2 uses
  br i1 %.not.i81, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split, !prof !41

bb.x:                                             ; preds = %bb.s
  %i.da = zext nneg i8 %i.x to i16                ; 2 uses
  %i.db = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i87 = icmp ult i32 %i.v, %i.db
  br i1 %.not.i87, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split, !prof !41

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split: ; preds = %bb.x, %bb.w, %bb.v, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit74, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit62, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit56, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38
  %.sink.ph = phi i16 [ %i.cz, %bb.w ], [ %i.cy, %bb.v ], [ 92, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38 ], [ 34, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44 ], [ 98, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50 ], [ 102, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit56 ], [ 110, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit62 ], [ 114, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68 ], [ 116, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit74 ], [ %i.da, %bb.x ]
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i88 = load i32, ptr %i.a, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split, %bb.x, %bb.w, %bb.v, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit74, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit62, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit56, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38
  %.sink137 = phi i32 [ %i.cv, %bb.w ], [ %i.cv, %bb.v ], [ %i.ca, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit74 ], [ %i.bs, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68 ], [ %i.bk, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit62 ], [ %i.bc, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit56 ], [ %i.au, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50 ], [ %i.am, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44 ], [ %i.ae, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38 ], [ %i.v, %bb.x ], [ %.pre.i88, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split ]
  %.sink = phi i16 [ %i.cz, %bb.w ], [ %i.cy, %bb.v ], [ 116, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit74 ], [ 114, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68 ], [ 110, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit62 ], [ 102, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit56 ], [ 98, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50 ], [ 34, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44 ], [ 92, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38 ], [ %i.da, %bb.x ], [ %.sink.ph, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41.sink.split ]
  %i.dc = load ptr, ptr %0, align 8, !tbaa !10
  %i.dd = zext i32 %.sink137 to i64
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %i.dd
  store i16 %.sink, ptr %i.de, align 1
  %i.df = load i32, ptr %i.a, align 8, !tbaa !11
  %i.dg = add i32 %i.df, 1                        ; 3 uses
  store i32 %i.dg, ptr %i.a, align 8, !tbaa !11
  %i.dh = add nuw i64 %.0114, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.dh, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !188
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes18quoteStringForJSONIN4llvh11SmallVectorIDsLj32EEEDsEEvRT_NS1_8ArrayRefIT0_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 81 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 23 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i = icmp ult i32 %i.b, %i.d
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 2) #10
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %.pre.i, %bb.b ], [ %i.b, %bb.a ]
  %i.g = load ptr, ptr %0, align 8, !tbaa !10
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  store i16 34, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !11
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %i.a, align 8, !tbaa !11
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 21 uses
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.aq
  %.pre = load i32, ptr %i.a, align 8, !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit
  %i.m = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.k, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit ] ; 2 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i33 = icmp ult i32 %i.m, %i.n
  br i1 %.not.i33, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit35, label %bb.c, !prof !41

bb.c:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.o, i64 noundef 0, i64 noundef 2) #10
  %.pre.i34 = load i32, ptr %i.a, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit35

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit35: ; preds = %._crit_edge, %bb.c
  %i.p = phi i32 [ %.pre.i34, %bb.c ], [ %i.m, %._crit_edge ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !10
  %i.r = zext i32 %i.p to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.r
  store i16 34, ptr %i.s, align 1
  %i.t = load i32, ptr %i.a, align 8, !tbaa !11
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.a, align 8, !tbaa !11
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.aq
  %.0118 = phi i64 [ 0, %.lr.ph ], [ %i.gp, %bb.aq ] ; 13 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0118
  %i.w = load i16, ptr %i.v, align 2, !tbaa !122  ; 11 uses
  switch i16 %i.w, label %bb.z [
    i16 92, label %bb.e
    i16 34, label %bb.h
    i16 8, label %bb.k
    i16 12, label %bb.n
    i16 10, label %bb.q
    i16 13, label %bb.t
    i16 9, label %bb.w
  ]

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.y = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i36 = icmp ult i32 %i.x, %i.y
  br i1 %.not.i36, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38, label %bb.f, !prof !41

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i37 = load i32, ptr %i.a, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38: ; preds = %bb.e, %bb.f
  %i.z = phi i32 [ %.pre.i37, %bb.f ], [ %i.x, %bb.e ]
  %i.aa = load ptr, ptr %0, align 8, !tbaa !10
  %i.ab = zext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ab
  store i16 92, ptr %i.ac, align 1
  %i.ad = load i32, ptr %i.a, align 8, !tbaa !11
  %i.ae = add i32 %i.ad, 1                        ; 3 uses
  store i32 %i.ae, ptr %i.a, align 8, !tbaa !11
  %i.af = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i39 = icmp ult i32 %i.ae, %i.af
  br i1 %.not.i39, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41, label %bb.g, !prof !41

bb.g:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i40 = load i32, ptr %i.a, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38, %bb.g
  %i.ag = phi i32 [ %.pre.i40, %bb.g ], [ %i.ae, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit38 ]
  %i.ah = load ptr, ptr %0, align 8, !tbaa !10
  %i.ai = zext i32 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.ai
  store i16 92, ptr %i.aj, align 1
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !11
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.a, align 8, !tbaa !11
  br label %bb.aq

bb.h:                                             ; preds = %bb.d
  %i.am = load i32, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.an = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i42 = icmp ult i32 %i.am, %i.an
  br i1 %.not.i42, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44, label %bb.i, !prof !41

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i43 = load i32, ptr %i.a, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44: ; preds = %bb.h, %bb.i
  %i.ao = phi i32 [ %.pre.i43, %bb.i ], [ %i.am, %bb.h ]
  %i.ap = load ptr, ptr %0, align 8, !tbaa !10
  %i.aq = zext i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.aq
  store i16 92, ptr %i.ar, align 1
  %i.as = load i32, ptr %i.a, align 8, !tbaa !11
  %i.at = add i32 %i.as, 1                        ; 3 uses
  store i32 %i.at, ptr %i.a, align 8, !tbaa !11
  %i.au = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i45 = icmp ult i32 %i.at, %i.au
  br i1 %.not.i45, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit47, label %bb.j, !prof !41

bb.j:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i46 = load i32, ptr %i.a, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit47

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit47: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44, %bb.j
  %i.av = phi i32 [ %.pre.i46, %bb.j ], [ %i.at, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44 ]
  %i.aw = load ptr, ptr %0, align 8, !tbaa !10
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.ax
  store i16 34, ptr %i.ay, align 1
  %i.az = load i32, ptr %i.a, align 8, !tbaa !11
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.a, align 8, !tbaa !11
  br label %bb.aq

bb.k:                                             ; preds = %bb.d
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.bc = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i48 = icmp ult i32 %i.bb, %i.bc
  br i1 %.not.i48, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50, label %bb.l, !prof !41

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i49 = load i32, ptr %i.a, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50: ; preds = %bb.k, %bb.l
  %i.bd = phi i32 [ %.pre.i49, %bb.l ], [ %i.bb, %bb.k ]
  %i.be = load ptr, ptr %0, align 8, !tbaa !10
  %i.bf = zext i32 %i.bd to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.bf
  store i16 92, ptr %i.bg, align 1
  %i.bh = load i32, ptr %i.a, align 8, !tbaa !11
  %i.bi = add i32 %i.bh, 1                        ; 3 uses
  store i32 %i.bi, ptr %i.a, align 8, !tbaa !11
  %i.bj = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i51 = icmp ult i32 %i.bi, %i.bj
  br i1 %.not.i51, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit53, label %bb.m, !prof !41

bb.m:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i52 = load i32, ptr %i.a, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit53

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit53: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50, %bb.m
  %i.bk = phi i32 [ %.pre.i52, %bb.m ], [ %i.bi, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit50 ]
  %i.bl = load ptr, ptr %0, align 8, !tbaa !10
  %i.bm = zext i32 %i.bk to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.bm
  store i16 98, ptr %i.bn, align 1
  %i.bo = load i32, ptr %i.a, align 8, !tbaa !11
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.a, align 8, !tbaa !11
  br label %bb.aq

bb.n:                                             ; preds = %bb.d
  %i.bq = load i32, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.br = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i54 = icmp ult i32 %i.bq, %i.br
  br i1 %.not.i54, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit56, label %bb.o, !prof !41
end_hunk_2
begin_hunk_3_@_ZN6hermes18quoteStringForJSONIN4llvh11SmallVectorIDsLj32EEEDsEEvRT_NS1_8ArrayRefIT0_EE:bb.a
_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit77: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit74, %bb.y
  %i.ds = phi i32 [ %.pre.i76, %bb.y ], [ %i.dq, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit74 ]
  %i.dt = load ptr, ptr %0, align 8, !tbaa !10
  %i.du = zext i32 %i.ds to i64
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %i.du
  store i16 116, ptr %i.dv, align 1
  %i.dw = load i32, ptr %i.a, align 8, !tbaa !11
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.a, align 8, !tbaa !11
  br label %bb.aq

bb.z:                                             ; preds = %bb.d
  %i.dy = icmp ult i16 %i.w, 32
  br i1 %i.dy, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.dz = load i32, ptr %i.c, align 4, !tbaa !12
  %i.ea = zext i32 %i.dz to i64
  %i.eb = load i32, ptr %i.a, align 8, !tbaa !11
  %i.ec = zext i32 %i.eb to i64                   ; 3 uses
  %i.ed = sub nsw i64 %i.ea, %i.ec
  %i.ee = icmp ult i64 %i.ed, 4
  br i1 %i.ee, label %.thread.i, label %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit

.thread.i:                                        ; preds = %bb.aa
  %i.ef = add nuw nsw i64 %i.ec, 4
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef %i.ef, i64 noundef 2) #10
  %.pre7.pre.i.i = load i32, ptr %i.a, align 8, !tbaa !11
  %.pre119 = zext i32 %.pre7.pre.i.i to i64
  br label %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit

_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit: ; preds = %bb.aa, %.thread.i
  %.pre-phi = phi i64 [ %i.ec, %bb.aa ], [ %.pre119, %.thread.i ]
  %i.eg = load ptr, ptr %0, align 8, !tbaa !10
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.eg, i64 %.pre-phi
  store <4 x i16> <i16 92, i16 117, i16 48, i16 48>, ptr %i.eh, align 1
  %.pre.i.i = load i32, ptr %i.a, align 8, !tbaa !11
  %i.ei = add i32 %.pre.i.i, 4                    ; 3 uses
  store i32 %i.ei, ptr %i.a, align 8, !tbaa !11
  %i.ej = lshr i16 %i.w, 4
  %narrow = or disjoint i16 %i.ej, 48
  %i.ek = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i78 = icmp ult i32 %i.ei, %i.ek
  br i1 %.not.i78, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit80, label %bb.ab, !prof !41

bb.ab:                                            ; preds = %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i79 = load i32, ptr %i.a, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit80

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit80: ; preds = %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit, %bb.ab
  %i.el = phi i32 [ %.pre.i79, %bb.ab ], [ %i.ei, %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit ]
  %i.em = load ptr, ptr %0, align 8, !tbaa !10
  %i.en = zext i32 %i.el to i64
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.em, i64 %i.en
  store i16 %narrow, ptr %i.eo, align 1
  %i.ep = load i32, ptr %i.a, align 8, !tbaa !11
  %i.eq = add i32 %i.ep, 1                        ; 5 uses
  store i32 %i.eq, ptr %i.a, align 8, !tbaa !11
  %i.er = and i16 %i.w, 14
  %i.es = icmp samesign ult i16 %i.er, 10
  br i1 %i.es, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit80
  %i.et = or i16 %i.w, 48
  %i.eu = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i81 = icmp ult i32 %i.eq, %i.eu
  br i1 %.not.i81, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit83, label %bb.ad, !prof !41

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i82 = load i32, ptr %i.a, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit83

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit83: ; preds = %bb.ac, %bb.ad
  %i.ev = phi i32 [ %.pre.i82, %bb.ad ], [ %i.eq, %bb.ac ]
  %i.ew = load ptr, ptr %0, align 8, !tbaa !10
  %i.ex = zext i32 %i.ev to i64
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %i.ex
  store i16 %i.et, ptr %i.ey, align 1
  %i.ez = load i32, ptr %i.a, align 8, !tbaa !11
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr %i.a, align 8, !tbaa !11
  br label %bb.aq

bb.ae:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit80
  %i.fb = and i16 %i.w, 15
  %narrow32 = add nuw nsw i16 %i.fb, 87
  %i.fc = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i84 = icmp ult i32 %i.eq, %i.fc
  br i1 %.not.i84, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit86, label %bb.af, !prof !41

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i85 = load i32, ptr %i.a, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit86

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit86: ; preds = %bb.ae, %bb.af
  %i.fd = phi i32 [ %.pre.i85, %bb.af ], [ %i.eq, %bb.ae ]
  %i.fe = load ptr, ptr %0, align 8, !tbaa !10
  %i.ff = zext i32 %i.fd to i64
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %i.ff
  store i16 %narrow32, ptr %i.fg, align 1
  %i.fh = load i32, ptr %i.a, align 8, !tbaa !11
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr %i.a, align 8, !tbaa !11
  br label %bb.aq

bb.ag:                                            ; preds = %bb.z
  %i.fj = and i16 %i.w, -2048
  %or.cond = icmp eq i16 %i.fj, -10240
  br i1 %or.cond, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %i.fk = and i16 %i.w, -9216
  %i.fl = icmp eq i16 %i.fk, -10240
  br i1 %i.fl, label %bb.ai, label %_ZN6hermes15handleSurrogateIN4llvh11SmallVectorIDsLj32EEEDsEEbRT_NS1_8ArrayRefIT0_EEm.exit

bb.ai:                                            ; preds = %bb.ah
  %i.fm = add nuw i64 %.0118, 1                   ; 3 uses
  %i.fn = icmp ult i64 %i.fm, %2
  br i1 %i.fn, label %bb.aj, label %_ZN6hermes15handleSurrogateIN4llvh11SmallVectorIDsLj32EEEDsEEbRT_NS1_8ArrayRefIT0_EEm.exit

bb.aj:                                            ; preds = %bb.ai
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.fm
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !122 ; 2 uses
  %i.fq = and i16 %i.fp, -1024
  %i.fr = icmp eq i16 %i.fq, -9216
  br i1 %i.fr, label %bb.ak, label %_ZN6hermes15handleSurrogateIN4llvh11SmallVectorIDsLj32EEEDsEEbRT_NS1_8ArrayRefIT0_EEm.exit

bb.ak:                                            ; preds = %bb.aj
  %i.fs = load i32, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.ft = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i.i = icmp ult i32 %i.fs, %i.ft
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i, label %bb.al, !prof !41

bb.al:                                            ; preds = %bb.ak
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i.i87 = load i32, ptr %i.a, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i: ; preds = %bb.al, %bb.ak
  %i.fu = phi i32 [ %.pre.i.i87, %bb.al ], [ %i.fs, %bb.ak ]
  %i.fv = load ptr, ptr %0, align 8, !tbaa !10
  %i.fw = zext i32 %i.fu to i64
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %i.fw
  store i16 %i.w, ptr %i.fx, align 1
  %i.fy = load i32, ptr %i.a, align 8, !tbaa !11
  %i.fz = add i32 %i.fy, 1                        ; 3 uses
  store i32 %i.fz, ptr %i.a, align 8, !tbaa !11
  %i.ga = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i9.i = icmp ult i32 %i.fz, %i.ga
  br i1 %.not.i9.i, label %bb.an, label %bb.am, !prof !41

bb.am:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i10.i = load i32, ptr %i.a, align 8, !tbaa !11
  br label %bb.an

_ZN6hermes15handleSurrogateIN4llvh11SmallVectorIDsLj32EEEDsEEbRT_NS1_8ArrayRefIT0_EEm.exit: ; preds = %bb.ah, %bb.ai, %bb.aj
  tail call void @_ZN6hermes18appendUTF16EscapedIN4llvh11SmallVectorIDsLj32EEEEEvRT_Ds(ptr noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %i.w)
  br label %bb.aq

bb.an:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i, %bb.am
  %i.gb = phi i32 [ %.pre.i10.i, %bb.am ], [ %i.fz, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i ]
  %i.gc = load ptr, ptr %0, align 8, !tbaa !10
  %i.gd = zext i32 %i.gb to i64
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.gc, i64 %i.gd
  store i16 %i.fp, ptr %i.ge, align 1
  %i.gf = load i32, ptr %i.a, align 8, !tbaa !11
  %i.gg = add i32 %i.gf, 1
  store i32 %i.gg, ptr %i.a, align 8, !tbaa !11
  br label %bb.aq

bb.ao:                                            ; preds = %bb.ag
  %i.gh = load i32, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.gi = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i88 = icmp ult i32 %i.gh, %i.gi
  br i1 %.not.i88, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit90, label %bb.ap, !prof !41

bb.ap:                                            ; preds = %bb.ao
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 2) #10
  %.pre.i89 = load i32, ptr %i.a, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit90

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit90: ; preds = %bb.ao, %bb.ap
  %i.gj = phi i32 [ %.pre.i89, %bb.ap ], [ %i.gh, %bb.ao ]
  %i.gk = load ptr, ptr %0, align 8, !tbaa !10
  %i.gl = zext i32 %i.gj to i64
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.gl
  store i16 %i.w, ptr %i.gm, align 1
  %i.gn = load i32, ptr %i.a, align 8, !tbaa !11
  %i.go = add i32 %i.gn, 1
  store i32 %i.go, ptr %i.a, align 8, !tbaa !11
  br label %bb.aq

bb.aq:                                            ; preds = %bb.an, %_ZN6hermes15handleSurrogateIN4llvh11SmallVectorIDsLj32EEEDsEEbRT_NS1_8ArrayRefIT0_EEm.exit, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit86, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit83, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit90, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit77, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit71, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit65, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit59, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit53, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit47, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41
  %.1 = phi i64 [ %.0118, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit83 ], [ %.0118, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit86 ], [ %.0118, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit77 ], [ %.0118, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit71 ], [ %.0118, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit90 ], [ %.0118, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41 ], [ %.0118, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit47 ], [ %.0118, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit53 ], [ %.0118, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit59 ], [ %.0118, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit65 ], [ %i.fm, %bb.an ], [ %.0118, %_ZN6hermes15handleSurrogateIN4llvh11SmallVectorIDsLj32EEEDsEEbRT_NS1_8ArrayRefIT0_EEm.exit ]
  %i.gp = add i64 %.1, 1                          ; 2 uses
  %i.gq = icmp ult i64 %i.gp, %2
  br i1 %i.gq, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !189
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes18appendUTF16EscapedIN4llvh11SmallVectorIDsLj32EEEEEvRT_Ds(ptr noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !11
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %i.g = sub nsw i64 %i.c, %i.f
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %.thread.i, label %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit

.thread.i:                                        ; preds = %bb.a
  %i.i = add nuw nsw i64 %i.f, 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.j, i64 noundef %i.i, i64 noundef 2) #10
  %.pre7.pre.i.i = load i32, ptr %i.d, align 8, !tbaa !11
  %.pre = zext i32 %.pre7.pre.i.i to i64
  br label %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit

_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit: ; preds = %bb.a, %.thread.i
  %.pre-phi = phi i64 [ %i.f, %bb.a ], [ %.pre, %.thread.i ]
  %i.k = load ptr, ptr %0, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.pre-phi ; 2 uses
  store i16 92, ptr %i.l, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i16 117, ptr %.sroa.4.0..sroa_idx, align 1
  %.pre.i.i = load i32, ptr %i.d, align 8, !tbaa !11
  %i.m = add i32 %.pre.i.i, 2                     ; 3 uses
  store i32 %i.m, ptr %i.d, align 8, !tbaa !11
  %i.n = lshr i16 %1, 12
  %i.o = zext nneg i16 %i.n to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr @.str.9, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !122
  %i.r = load i32, ptr %i.a, align 4, !tbaa !12
  %.not.i = icmp ult i32 %i.m, %i.r
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.s, i64 noundef 0, i64 noundef 2) #10
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit: ; preds = %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit, %bb.b
  %i.t = phi i32 [ %.pre.i, %bb.b ], [ %i.m, %_ZN4llvh15SmallVectorImplIDsE6appendESt16initializer_listIDsE.exit ]
  %i.u = load ptr, ptr %0, align 8, !tbaa !10
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.v
  store i16 %i.q, ptr %i.w, align 1
  %i.x = load i32, ptr %i.d, align 8, !tbaa !11
  %i.y = add i32 %i.x, 1                          ; 3 uses
  store i32 %i.y, ptr %i.d, align 8, !tbaa !11
  %i.z = lshr i16 %1, 8
  %i.aa = and i16 %i.z, 15
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr @.str.9, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !122
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !12
  %.not.i8 = icmp ult i32 %i.y, %i.ae
  br i1 %.not.i8, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit10, label %bb.c, !prof !41

bb.c:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.af, i64 noundef 0, i64 noundef 2) #10
  %.pre.i9 = load i32, ptr %i.d, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit10

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit10: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit, %bb.c
  %i.ag = phi i32 [ %.pre.i9, %bb.c ], [ %i.y, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit ]
  %i.ah = load ptr, ptr %0, align 8, !tbaa !10
  %i.ai = zext i32 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.ai
  store i16 %i.ad, ptr %i.aj, align 1
  %i.ak = load i32, ptr %i.d, align 8, !tbaa !11
  %i.al = add i32 %i.ak, 1                        ; 3 uses
  store i32 %i.al, ptr %i.d, align 8, !tbaa !11
  %i.am = trunc i16 %1 to i8                      ; 2 uses
  %i.an = lshr i8 %i.am, 4
  %i.ao = zext nneg i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr @.str.9, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !122
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !12
  %.not.i11 = icmp ult i32 %i.al, %i.ar
  br i1 %.not.i11, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit13, label %bb.d, !prof !41

bb.d:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit10
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.as, i64 noundef 0, i64 noundef 2) #10
  %.pre.i12 = load i32, ptr %i.d, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit13

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit13: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit10, %bb.d
  %i.at = phi i32 [ %.pre.i12, %bb.d ], [ %i.al, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit10 ]
  %i.au = load ptr, ptr %0, align 8, !tbaa !10
  %i.av = zext i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.av
  store i16 %i.aq, ptr %i.aw, align 1
  %i.ax = load i32, ptr %i.d, align 8, !tbaa !11
  %i.ay = add i32 %i.ax, 1                        ; 3 uses
  store i32 %i.ay, ptr %i.d, align 8, !tbaa !11
  %i.az = and i8 %i.am, 15
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr @.str.9, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !122
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !12
  %.not.i14 = icmp ult i32 %i.ay, %i.bd
  br i1 %.not.i14, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit16, label %bb.e, !prof !41

bb.e:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit13
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.be, i64 noundef 0, i64 noundef 2) #10
  %.pre.i15 = load i32, ptr %i.d, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit16

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit16: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit13, %bb.e
  %i.bf = phi i32 [ %.pre.i15, %bb.e ], [ %i.ay, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit13 ]
  %i.bg = load ptr, ptr %0, align 8, !tbaa !10
  %i.bh = zext i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bh
  store i16 %i.bc, ptr %i.bi, align 1
  %i.bj = load i32, ptr %i.d, align 8, !tbaa !11
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.d, align 8, !tbaa !11
  ret void
}

declare void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !14
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
  %.sroa.0.0.copyload.i.i17 = load i64, ptr %2, align 8, !tbaa !14 ; 9 uses
  %i.f = ashr i64 %.sroa.0.0.copyload.i.i17, 47
  switch i64 %i.f, label %bb.i [
    i64 -14, label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
    i64 -12, label %bb.b
    i64 -11, label %bb.c
    i64 -10, label %bb.d
    i64 -9, label %bb.e
    i64 -6, label %bb.f
    i64 -5, label %bb.f
    i64 -4, label %bb.g
    i64 -3, label %bb.g
    i64 -2, label %bb.h
    i64 -1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.c:                                             ; preds = %bb.a
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.d:                                             ; preds = %bb.a
  %i.g = trunc i64 %.sroa.0.0.copyload.i.i17 to i1
  %i.h = select i1 %i.g, i32 22, i32 6
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.e:                                             ; preds = %bb.a
  %i.i = trunc i64 %.sroa.0.0.copyload.i.i17 to i32
  %i.j = shl i32 %i.i, 3
  %i.k = or disjoint i32 %i.j, 5
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %.sroa.0.0.copyload.i.i17, %i.l
  %i.n = trunc i64 %i.m to i32
  %i.o = or i32 %i.n, 2
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.p = ptrtoint ptr %1 to i64
  %i.q = sub i64 %.sroa.0.0.copyload.i.i17, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = or i32 %i.r, 1
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.h:                                             ; preds = %bb.a, %bb.a
  %i.t = ptrtoint ptr %1 to i64
  %i.u = sub i64 %.sroa.0.0.copyload.i.i17, %i.t
  %i.v = trunc i64 %i.u to i32
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.i:                                             ; preds = %bb.a
  %i.w = bitcast i64 %.sroa.0.0.copyload.i.i17 to double
  %i.x = fptosi double %i.w to i32
  %i.y = shl i32 %i.x, 3                          ; 2 uses
  %i.z = ashr exact i32 %i.y, 3
  %i.aa = sitofp i32 %i.z to double
  %i.ab = bitcast double %i.aa to i64
  %i.ac = icmp eq i64 %.sroa.0.0.copyload.i.i17, %i.ab
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !41

bb.j:                                             ; preds = %bb.i
  %i.ad = or disjoint i32 %i.y, 4
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.k:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !90 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !91
  %.not.i.not.i.i.i.i.i.i.i.i = icmp ugt ptr %i.ag, %i.ai
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.l, label %bb.m, !prof !58

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.ak = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.aj, i32 noundef 16) #10
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

bb.m:                                             ; preds = %bb.k
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !90
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i: ; preds = %bb.m, %bb.l
  %i.al = phi ptr [ %i.ak, %bb.l ], [ %i.af, %bb.m ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %.sroa.0.0.copyload.i.i17, ptr %i.am, align 8, !tbaa !124
  store i32 402653200, ptr %i.al, align 8, !tbaa !101
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %1 to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = or i32 %i.aq, 3
  %.pre = load ptr, ptr %0, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i18.pre = load i64, ptr %.pre, align 8, !tbaa !14
  %.pre20 = and i64 %.sroa.0.0.copyload.i.i18.pre, 281474976710655
  %.pre21 = inttoptr i64 %.pre20 to ptr
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.j, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i
  %.pre-phi22 = phi ptr [ %i.c, %bb.a ], [ %i.c, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.c, %bb.e ], [ %i.c, %bb.f ], [ %i.c, %bb.g ], [ %i.c, %bb.h ], [ %i.c, %bb.j ], [ %.pre21, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i ] ; 3 uses
  %.sroa.04.0.i = phi i32 [ 7, %bb.a ], [ 14, %bb.b ], [ 15, %bb.c ], [ %i.h, %bb.d ], [ %i.k, %bb.e ], [ %i.o, %bb.f ], [ %i.s, %bb.g ], [ %i.v, %bb.h ], [ %i.ad, %bb.j ], [ %i.ar, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i ] ; 2 uses
  %i.as = load i32, ptr %.pre-phi22, align 4
  %i.at = and i32 %i.as, 16777212
  %i.au = add nsw i32 %i.at, -8
  %i.av = lshr exact i32 %i.au, 2
  %i.aw = icmp ult i32 %i.e, %i.av
  br i1 %i.aw, label %bb.n, label %bb.p, !prof !41

bb.n:                                             ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre-phi22, i64 8
  %i.ay = zext nneg i32 %i.e to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay ; 3 uses
  store i32 %.sroa.04.0.i, ptr %i.az, align 4, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !126
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = and i64 %i.bc, 1125899902648320
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = icmp eq ptr %i.bb, %i.be
  br i1 %i.bf, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit, label %bb.o, !prof !41

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC27constructorWriteBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.bg, ptr noundef nonnull align 4 dereferenceable(4) %i.az, i32 %.sroa.04.0.i) #10
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit: ; preds = %bb.n, %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre-phi22, i64 4
  %i.bi = add nuw nsw i32 %i.e, 1
  store atomic i32 %i.bi, ptr %i.bh release, align 4
  br label %bb.q

bb.p:                                             ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %i.bj = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE16pushBackSlowPathERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2) #10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit
  %.0 = phi i32 [ 1, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit ], [ %i.bj, %bb.p ]
  ret i32 %.0
}

declare noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE16pushBackSlowPathERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC27constructorWriteBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm27enumerableOwnProperties_RJSERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_27EnumerableOwnPropertiesKindE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh15SmallVectorImplIDsE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %i.d = icmp ult i64 %1, %i.c
  br i1 %i.d, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %1, %i.c
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %i.h = zext i32 %i.g to i64
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.j, i64 noundef %1, i64 noundef 2) #10
  %.pre = load i32, ptr %i.a, align 8, !tbaa !11
  %.pre15 = zext i32 %.pre to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi = phi i64 [ %.pre15, %bb.d ], [ %i.c, %bb.c ] ; 3 uses
  %.not13 = icmp samesign eq i64 %1, %.pre-phi
  br i1 %.not13, label %.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.k = load ptr, ptr %0, align 8, !tbaa !10
  %i.l = getelementptr [2 x i8], ptr %i.k, i64 %.pre-phi
  %i.m = sub i64 %1, %.pre-phi
  %i.n = shl i64 %i.m, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.l, i8 0, i64 %i.n, i1 false), !tbaa !122
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %.lr.ph.preheader, %bb.a
  %i.o = trunc i64 %1 to i32
  store i32 %i.o, ptr %i.a, align 8, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b
  ret void
}

declare void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_13HermesValue32E(ptr noundef nonnull align 8 dereferenceable(8112), i32) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.230") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !190
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !191
  %.idx = shl nuw nsw i64 %2, 1                   ; 3 uses
  %i.c = icmp ugt i64 %2, 7
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.d, label %bb.c, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #12
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i: ; preds = %bb.b
  %i.e = add nuw nsw i64 %.idx, 2
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #13 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !61
  store i64 %2, ptr %i.a, align 8, !tbaa !101
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i, %bb.a
  %.pre7.i.i = phi ptr [ %i.f, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %2, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.g = load i16, ptr %1, align 2, !tbaa !122
  store i16 %i.g, ptr %.pre7.i.i, align 2, !tbaa !122
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.pre7.i.i, ptr align 2 %1, i64 %.idx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  store i64 %2, ptr %i.b, align 8, !tbaa !191
  %i.h = getelementptr inbounds nuw i8, ptr %.pre7.i.i, i64 %.idx
  store i16 0, ptr %i.h, align 2, !tbaa !122
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = distinct !{!0, !114}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"_ZTSN4llvh15SmallVectorBaseE", !8, i64 0, !6, i64 8, !6, i64 12}
!10 = !{!9, !8, i64 0}
!11 = !{!9, !6, i64 8}
!12 = !{!9, !6, i64 12}
!13 = !{!"long", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 _ZTSN6hermes2vm7RuntimeE", !8, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"_ZTSN6hermes2vm13JSONTokenKindE", !5, i64 0}
!18 = !{!"double", !5, i64 0}
!19 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !8, i64 0}
!20 = !{!"_ZTSN6hermes2vm10HandleBaseE", !19, i64 0}
!21 = !{!"_ZTSN6hermes2vm6HandleINS0_15StringPrimitiveEEE", !20, i64 0}
!22 = !{!"_ZTSN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEE", !21, i64 0}
!23 = !{!"_ZTSN6hermes2vm6HandleINS0_8SymbolIDEEE", !20, i64 0}
!24 = !{!"_ZTSN6hermes2vm13MutableHandleINS0_8SymbolIDEEE", !23, i64 0}
!25 = !{!"char16_t", !5, i64 0}
!26 = !{!"_ZTSN6hermes2vm9JSONTokenE", !17, i64 0, !18, i64 8, !22, i64 16, !24, i64 24, !25, i64 32}
!27 = !{!26, !17, i64 0}
!28 = !{!26, !18, i64 8}
!29 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !8, i64 0}
!30 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !29, i64 8}
!31 = !{!30, !29, i64 8}
!32 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !8, i64 0}
!33 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !9, i64 0}
!34 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !33, i64 0}
!35 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !34, i64 0}
!36 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes2vm17PinnedHermesValueELj4EEE", !5, i64 0}
!37 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !35, i64 0, !36, i64 16}
!38 = !{!"_ZTSN6hermes2vm7GCScopeE", !32, i64 0, !29, i64 8, !5, i64 16, !37, i64 144, !19, i64 192, !19, i64 200, !6, i64 208}
!39 = !{!38, !19, i64 192}
!40 = !{!38, !19, i64 200}
!41 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!42 = !{!20, !19, i64 0}
!43 = !{!26, !25, i64 32}
!44 = !{!"p1 char16_t", !8, i64 0}
!45 = !{!"p1 omnipotent char", !8, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIDsSaIDsEE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!47 = !{!"_ZTSNSt12_Vector_baseIDsSaIDsEE12_Vector_implE", !46, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIDsSaIDsEE", !47, i64 0}
!49 = !{!"_ZTSSt6vectorIDsSaIDsEE", !48, i64 0}
!50 = !{!"_ZTSN6hermes11UTF16StreamE", !44, i64 0, !44, i64 8, !45, i64 16, !45, i64 24, !44, i64 32, !49, i64 40}
!51 = !{!"_ZTSN6hermes2vm9JSONLexerE", !50, i64 0, !15, i64 64, !26, i64 72}
!52 = !{!"_ZTSN6hermes2vm6HandleINS0_8CallableEEE", !20, i64 0}
!53 = !{!"_ZTSN6hermes2vm6HandleINS0_11HermesValueEEE", !20, i64 0}
!54 = !{!"_ZTSN6hermes2vm13MutableHandleINS0_11HermesValueEEE", !53, i64 0}
!55 = !{!"_ZTSN6hermes2vm12_GLOBAL__N_117RuntimeJSONParserE", !15, i64 0, !51, i64 8, !52, i64 120, !54, i64 128, !6, i64 136}
!56 = !{!55, !6, i64 136}
!57 = !{!46, !44, i64 0}
!58 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!59 = !{!"_ZTSNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE12_Alloc_hiderE", !44, i64 0}
!60 = !{!"_ZTSNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE", !59, i64 0, !13, i64 8, !5, i64 16}
!61 = !{!60, !44, i64 0}
!62 = !{!"_ZTSN6hermes2vm6GCCellE", !5, i64 0}
!63 = !{!"_ZTSN6hermes2vm23VariableSizeRuntimeCellE", !62, i64 0}
!64 = !{!"_ZTSN6hermes2vm15StringPrimitiveE", !63, i64 0, !6, i64 4}
!65 = !{!64, !6, i64 4}
!66 = !{!55, !15, i64 0}
!67 = !{}
!68 = !{i64 8}
!69 = !{!32, !32, i64 0}
!70 = !{!38, !29, i64 8}
!71 = !{!38, !6, i64 208}
!72 = !{!"_ZTSN6hermes2vm13MutableHandleINS0_8CallableEEE", !52, i64 0}
!73 = !{!"_ZTSN6hermes2vm6HandleINS0_7JSArrayEEE", !20, i64 0}
!74 = !{!"_ZTSN6hermes2vm13MutableHandleINS0_7JSArrayEEE", !73, i64 0}
!75 = !{!"_ZTSN6hermes2vm6HandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEE", !20, i64 0}
!76 = !{!"_ZTSN6hermes2vm13MutableHandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEE", !75, i64 0}
!77 = !{!"_ZTSN6hermes2vm6HandleINS0_8JSObjectEEE", !20, i64 0}
!78 = !{!"_ZTSN6hermes2vm13MutableHandleINS0_8JSObjectEEE", !77, i64 0}
!79 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIDsvEE", !9, i64 0}
!80 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIDsLb1EEE", !79, i64 0}
!81 = !{!"_ZTSN4llvh15SmallVectorImplIDsEE", !80, i64 0}
!82 = !{!"_ZTSN4llvh18SmallVectorStorageIDsLj32EEE", !5, i64 0}
!83 = !{!"_ZTSN4llvh11SmallVectorIDsLj32EEE", !81, i64 0, !82, i64 16}
!84 = !{!"_ZTSN6hermes2vm12_GLOBAL__N_115JSONStringifyerE", !15, i64 0, !72, i64 8, !22, i64 16, !74, i64 24, !76, i64 32, !76, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !74, i64 72, !78, i64 80, !6, i64 88, !83, i64 96}
!85 = !{!84, !6, i64 88}
!86 = !{!84, !15, i64 0}
!87 = !{!"p1 _ZTSN6hermes2vm15StorageProviderE", !8, i64 0}
!88 = !{!"_ZTSN6hermes2vm14AlignedStorageE", !45, i64 0, !87, i64 8}
!89 = !{!"_ZTSN6hermes2vm18AlignedHeapSegmentE", !88, i64 0, !45, i64 16, !45, i64 24}
!90 = !{!89, !45, i64 16}
!91 = !{!89, !45, i64 24}
!92 = !{!19, !19, i64 0}
!93 = !{!"_ZTSN6hermes2vm11HermesValueE", !13, i64 0}
!94 = !{!93, !13, i64 0}
!95 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!96 = !{!"_ZTSN6hermes2vm11TwineChar168NodeKindE", !5, i64 0}
!97 = !{!"_ZTSN6hermes2vm11TwineChar16E", !5, i64 0, !96, i64 8, !5, i64 16, !96, i64 24, !13, i64 32, !13, i64 40}
!98 = !{!97, !96, i64 24}
!99 = !{!97, !13, i64 32}
!100 = !{!97, !13, i64 40}
!101 = !{!5, !5, i64 0}
!102 = !{!97, !96, i64 8}
!103 = !{!"_ZTSN6hermes2vm11ObjectFlagsE", !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 1}
!104 = !{!"_ZTSN6hermes2vm12BasedPointerE", !6, i64 0}
!105 = !{!"_ZTSN6hermes2vm17CompressedPointerE", !104, i64 0}
!106 = !{!"_ZTSN6hermes2vm13GCPointerBaseE", !105, i64 0}
!107 = !{!"_ZTSN6hermes2vm9GCPointerINS0_8JSObjectEEE", !106, i64 0}
!108 = !{!"_ZTSN6hermes2vm9GCPointerINS0_11HiddenClassEEE", !106, i64 0}
!109 = !{!"_ZTSN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEE", !106, i64 0}
!110 = !{!"_ZTSN6hermes2vm8JSObjectE", !62, i64 0, !103, i64 4, !107, i64 8, !108, i64 12, !109, i64 16}
!111 = !{!"_ZTSN6hermes2vm9GCPointerINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEE", !106, i64 0}
!112 = !{!"_ZTSN6hermes2vm9ArrayImplE", !110, i64 0, !6, i64 20, !6, i64 24, !111, i64 28}
!113 = !{!112, !6, i64 24}
!114 = !{!"llvm.loop.mustprogress"}
!115 = !{!112, !6, i64 20}
!116 = !{!"_ZTSN6hermes2vm13HermesValue32E", !6, i64 0}
!117 = !{!116, !6, i64 0}
!118 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !45, i64 0}
!119 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !118, i64 0, !13, i64 8, !5, i64 16}
!120 = !{!119, !45, i64 0}
!121 = !{!51, !15, i64 64}
!122 = !{!25, !25, i64 0}
!123 = !{!"_ZTSN6hermes2vm11BoxedDoubleE", !62, i64 0, !18, i64 8}
!124 = !{!123, !18, i64 8}
!125 = !{i8 0, i8 2}
!126 = !{!88, !45, i64 0}
!127 = !{!"branch_weights", i32 1, i32 4001}
!128 = !{!"branch_weights", i32 4001, i32 1}
!129 = !{!44, !44, i64 0}
!130 = !{!46, !44, i64 16}
!131 = distinct !{!131, !114}
!132 = distinct !{!132, !114}
!133 = distinct !{!133, !114}
!134 = !{!"branch_weights", !"expected", i32 19163825, i32 2128319823}
!135 = distinct !{null}
!136 = distinct !{!136, !114}
!137 = distinct !{!137, i1 false, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!138 = distinct !{!138, !137, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!139 = distinct !{!139, i1 false, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!140 = distinct !{!140, !139, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!141 = distinct !{!141, i1 false, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!142 = distinct !{!142, !141, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!143 = distinct !{null}
!144 = distinct !{!144, !114}
!145 = distinct !{!145, i1 false, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!146 = distinct !{!146, !145, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!147 = distinct !{!147, i1 false, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!148 = distinct !{!148, !147, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!149 = distinct !{!149, i1 false, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!150 = distinct !{!150, !149, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!151 = !{!138}
!152 = !{!140}
!153 = !{!142}
!154 = !{!"branch_weights", i32 1, i32 127}
!155 = !{!"branch_weights", i32 127, i32 255873}
!156 = !{!146}
!157 = !{!148}
!158 = !{!150}
!159 = distinct !{!159, i1 false, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!160 = distinct !{!160, !159, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!161 = distinct !{!161, i1 false, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!162 = distinct !{!162, !161, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!163 = distinct !{!163, i1 false, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!164 = distinct !{!164, !163, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!165 = !{!160}
!166 = !{!162}
!167 = !{!164}
!168 = distinct !{!168, i1 false, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!169 = distinct !{!169, !168, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0:thread"}
!170 = distinct !{!170, !168, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!171 = distinct !{!171, i1 false, !"_ZN6hermes2vm11TwineChar1610createNullEv"}
!172 = distinct !{!172, !171, !"_ZN6hermes2vm11TwineChar1610createNullEv: argument 0"}
!173 = !{!169}
!174 = !{!172, !170}
!175 = !{!96, !96, i64 0}
!176 = !{!170}
!177 = distinct !{!177, !114}
!178 = distinct !{!178, !114}
!179 = !{!118, !45, i64 0}
!180 = !{!119, !13, i64 8}
!181 = !{!"bool", !5, i64 0}
!182 = !{!"_ZTSN6hermes2vm9JSBooleanE", !110, i64 0, !181, i64 20}
!183 = !{!182, !181, i64 20}
!184 = distinct !{!184, !114}
!185 = distinct !{!185, !114}
!186 = distinct !{!186, !114}
!187 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!188 = distinct !{!188, !114}
!189 = distinct !{!189, !114}
!190 = !{!59, !44, i64 0}
!191 = !{!60, !13, i64 8}
end_hunk_3
