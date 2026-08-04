inline.NumInlined: 5848
inline.NumDeleted: 2548
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueEC2EOS4_:bb.a
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !579
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 432
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i64 16, i1 false), !tbaa.struct !668
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  store ptr null, ptr %i.dw, align 8, !tbaa !670
  %i.dx = load ptr, ptr %i.dj, align 8, !tbaa !17
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 4 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit21
  store ptr %i.dw, ptr %i.di, align 8, !tbaa !17
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !670
  store ptr %i.ea, ptr %i.dw, align 8, !tbaa !670
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit21
  %i.eb = phi ptr [ %i.dw, %bb.d ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit21 ]
  %.not.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEC2EOSA_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !246
  %i.ee = urem i64 %i.ed, %i.dn
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ee
  store ptr %i.do, ptr %i.ef, align 8, !tbaa !244
  br label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEC2EOSA_.exit

_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEC2EOSA_.exit: ; preds = %bb.e, %bb.f
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 440
  store i64 0, ptr %i.eg, align 8, !tbaa !697
  store i64 1, ptr %i.dm, align 8, !tbaa !25
  store ptr null, ptr %i.dy, align 8, !tbaa !670
  store ptr %i.dy, ptr %i.dj, align 8, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE14BlockProducersD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !698  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !245 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #25
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !699

_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !700
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !701
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !700  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !701
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #25
  br label %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEED2Ev.exit

_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !698  ; 2 uses
  %.not5.i.i.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not5.i.i.i.i1, label %_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i5, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEED2Ev.exit, %.lr.ph.i.i.i.i2
  %.06.i.i.i.i3 = phi ptr [ %i.q, %.lr.ph.i.i.i.i2 ], [ %i.p, %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEED2Ev.exit ] ; 2 uses
  %i.q = load ptr, ptr %.06.i.i.i.i3, align 8, !tbaa !245 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i3, i64 noundef 16) #25
  %.not.i.i.i.i4 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i4, label %_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i5, label %.lr.ph.i.i.i.i2, !llvm.loop !699

_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i5: ; preds = %.lr.ph.i.i.i.i2, %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEED2Ev.exit
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !700
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !701
  %i.u = shl i64 %i.t, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %i.u, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !700  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEED2Ev.exit6, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i5
  %i.y = load i64, ptr %i.s, align 8, !tbaa !701
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #25
  br label %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEED2Ev.exit6

_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEED2Ev.exit6: ; preds = %_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i5, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !698 ; 2 uses
  %.not5.i.i.i.i7 = icmp eq ptr %i.ab, null
  br i1 %.not5.i.i.i.i7, label %_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i11, label %.lr.ph.i.i.i.i8

.lr.ph.i.i.i.i8:                                  ; preds = %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEED2Ev.exit6, %.lr.ph.i.i.i.i8
  %.06.i.i.i.i9 = phi ptr [ %i.ac, %.lr.ph.i.i.i.i8 ], [ %i.ab, %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEED2Ev.exit6 ] ; 2 uses
  %i.ac = load ptr, ptr %.06.i.i.i.i9, align 8, !tbaa !245 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i9, i64 noundef 16) #25
  %.not.i.i.i.i10 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i10, label %_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i11, label %.lr.ph.i.i.i.i8, !llvm.loop !699

_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i11: ; preds = %.lr.ph.i.i.i.i8, %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEED2Ev.exit6
  %i.ad = load ptr, ptr %0, align 8, !tbaa !700
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !701
  %i.ag = shl i64 %i.af, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ag, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ah = load ptr, ptr %0, align 8, !tbaa !700   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEED2Ev.exit12, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i11
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !701
  %i.al = shl i64 %i.ak, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #25
  br label %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEED2Ev.exit12

_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEED2Ev.exit12: ; preds = %_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i11, %bb.d
  ret void
}

declare void @_ZN4Luau15BytecodeBuilderC2EPNS_15BytecodeEncoderE(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau10JitInliner22RuntimeBytecodeBuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(1072) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN4Luau15BytecodeBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(1072) dereferenceable(1072) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1072) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK4Luau10JitInliner22RuntimeBytecodeBuilder13validateConstEi(ptr noundef nonnull align 8 dereferenceable(1072) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4Luau10JitInliner22RuntimeBytecodeBuilder13validateConstEiNS_15BytecodeBuilder8Constant4TypeE(ptr noundef nonnull align 8 dereferenceable(1072) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
_ZNK4Luau10JitInliner22RuntimeBytecodeBuilder13constTypeToTTENS_15BytecodeBuilder8Constant4TypeE.exit:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZNK4Luau10JitInliner22RuntimeBytecodeBuilder13validateProtoEi(ptr noundef nonnull align 8 dereferenceable(1072) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !702, !nonnull !167, !align !168
  %i.c = sext i32 %1 to i64
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !569
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !703
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.h = load i8, ptr %i.g, align 1, !tbaa !109
  ret i8 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZNK4Luau10JitInliner22RuntimeBytecodeBuilder15validateClosureEi(ptr noundef nonnull align 8 dereferenceable(1072) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !704, !nonnull !167, !align !168
  %i.c = sext i32 %1 to i64
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !119
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !121
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i8, ptr %i.h, align 4, !tbaa !705
  ret i8 %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4Luau10JitInliner22RuntimeBytecodeBuilder12dumpConstantERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEib(ptr noundef nonnull align 8 dereferenceable(1072) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !704, !nonnull !167, !align !168
  %i.c = sext i32 %2 to i64
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !119
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !121  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !707
  switch i32 %i.h, label %bb.v [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.n
    i32 8, label %bb.o
    i32 12, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @_ZN4Luau12formatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.9)
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.f, align 8, !tbaa !16
  %.not63 = icmp eq i32 %i.i, 0
  %i.j = select i1 %.not63, ptr @.str.12, ptr @.str.11
  tail call void (ptr, ptr, ...) @_ZN4Luau12formatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.j)
  br label %bb.w

bb.d:                                             ; preds = %bb.a
  %i.k = load double, ptr %i.f, align 8, !tbaa !16
  tail call void (ptr, ptr, ...) @_ZN4Luau12formatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.13, double noundef %i.k)
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.f, align 8, !tbaa !16
  tail call void (ptr, ptr, ...) @_ZN4Luau12formatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.14, i64 noundef %i.l)
  br label %bb.w

bb.f:                                             ; preds = %bb.a
  %i.m = load float, ptr %i.f, align 4, !tbaa !669
  %i.n = fpext float %i.m to double
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %4 = load <2 x float>, ptr %i.o, align 4, !tbaa !669
  %5 = fpext <2 x float> %4 to <2 x double>       ; 2 uses
  %6 = extractelement <2 x double> %5, i64 0
  %7 = extractelement <2 x double> %5, i64 1
  tail call void (ptr, ptr, ...) @_ZN4Luau12formatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.15, double noundef %i.n, double noundef %6, double noundef %7)
  br label %bb.w

bb.g:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 20 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !708  ; 4 uses
  %i.t = zext i32 %i.s to i64
  %i.u = icmp eq i32 %i.s, 0
  br i1 %i.u, label %.loopexit.thread, label %.lr.ph.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.v = add nuw nsw i64 %.068.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.t
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !710

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %.068.i = phi i64 [ %i.v, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %.068.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16
  %i.y = icmp ugt i8 %i.x, 31
  br i1 %i.y, label %bb.h, label %_ZNK4Luau10JitInliner22RuntimeBytecodeBuilder23printableStringConstantEPKcm.exit

.loopexit:                                        ; preds = %bb.h
  %i.z = icmp ult i32 %i.s, 32
  br i1 %i.z, label %.loopexit.thread, label %bb.i

.loopexit.thread:                                 ; preds = %bb.g, %.loopexit
  tail call void (ptr, ptr, ...) @_ZN4Luau12formatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.16, i32 noundef %i.s, ptr noundef nonnull %i.q)
  br label %bb.w

bb.i:                                             ; preds = %.loopexit
  tail call void (ptr, ptr, ...) @_ZN4Luau12formatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.17, i32 noundef 32, ptr noundef nonnull %i.q)
  br label %bb.w

_ZNK4Luau10JitInliner22RuntimeBytecodeBuilder23printableStringConstantEPKcm.exit: ; preds = %.lr.ph.i
  tail call void (ptr, ptr, ...) @_ZN4Luau12formatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.18)
  %i.aa = load i32, ptr %i.r, align 4, !tbaa !708
  %.not67 = icmp eq i32 %i.aa, 0
  br i1 %.not67, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.l
  %i.ab = icmp ugt i32 %i.ai, 31
  br i1 %i.ab, label %bb.m, label %._crit_edge.thread

.lr.ph:                                           ; preds = %_ZNK4Luau10JitInliner22RuntimeBytecodeBuilder23printableStringConstantEPKcm.exit, %bb.l
  %.066 = phi i64 [ %i.ah, %bb.l ], [ 0, %_ZNK4Luau10JitInliner22RuntimeBytecodeBuilder23printableStringConstantEPKcm.exit ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 %.066
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16  ; 3 uses
  %i.ae = icmp ult i8 %i.ad, 32
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.af = zext nneg i8 %i.ad to i32
  tail call void (ptr, ptr, ...) @_ZN4Luau12formatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.19, i32 noundef %i.af)
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.ag = sext i8 %i.ad to i32
  tail call void (ptr, ptr, ...) @_ZN4Luau12formatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.20, i32 noundef %i.ag)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ah = add nuw nsw i64 %.066, 1                ; 2 uses
  %i.ai = load i32, ptr %i.r, align 4, !tbaa !708 ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = icmp samesign ult i64 %i.ah, %i.aj
  %i.al = icmp samesign ult i64 %.066, 31
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !711

bb.m:                                             ; preds = %._crit_edge
  tail call void (ptr, ptr, ...) @_ZN4Luau12formatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.21)
  br label %bb.w

._crit_edge.thread:                               ; preds = %_ZNK4Luau10JitInliner22RuntimeBytecodeBuilder23printableStringConstantEPKcm.exit, %._crit_edge
  tail call void (ptr, ptr, ...) @_ZN4Luau12formatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.18)
  br label %bb.w

bb.n:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @_ZN4Luau12formatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.22)
  br label %bb.w

bb.o:                                             ; preds = %bb.a
  %i.an = load ptr, ptr %i.f, align 8, !tbaa !16  ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 3
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !712
  %.not = icmp eq i8 %i.ap, 0
  br i1 %.not, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = load i8, ptr @_ZN5FFlag21LuauManagedDebugNamesE, align 8, !tbaa !566, !range !186, !noundef !167
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !16 ; 2 uses
  %.not61 = icmp eq ptr %i.at, null
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %spec.select = select i1 %.not61, ptr null, ptr %i.au
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !16
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !527 ; 2 uses
  %.not60 = icmp eq ptr %i.ba, null
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %spec.select64 = select i1 %.not60, ptr null, ptr %i.bb
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s
  %.2 = phi ptr [ %spec.select, %bb.q ], [ %i.aw, %bb.r ], [ %spec.select64, %bb.s ] ; 2 uses
  %.not62 = icmp eq ptr %.2, null
  %i.bc = select i1 %.not62, ptr @.str.24, ptr %.2
  tail call void (ptr, ptr, ...) @_ZN4Luau12formatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.bc)
  br label %bb.w

bb.u:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @_ZN4Luau12formatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.25)
  br label %bb.w

bb.v:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @_ZN4Luau12formatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.26, i32 noundef %2)
  br label %bb.w

bb.w:                                             ; preds = %bb.i, %.loopexit.thread, %._crit_edge.thread, %bb.m, %bb.v, %bb.u, %bb.t, %bb.n, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

declare void @_ZN4Luau12formatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.c = load ptr, ptr %1, align 8, !tbaa !136    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !137
  %i.i = load ptr, ptr %0, align 8, !tbaa !136    ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, !prof !477

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !572

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !138
  store i32 %i.r, ptr %i.o, align 4, !tbaa !138
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit

_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #25
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !136
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !137
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit
end_hunk_0
