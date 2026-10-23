Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Type?download=true
inline.NumInlined: 2960
inline.NumDeleted: 1329
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4Luau8Property2rwEPKNS_4TypeE:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.g, align 8, !tbaa !52, !alias.scope !421
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %1, ptr %i.j, align 8, !alias.scope !421
  store i8 1, ptr %i.h, align 8, !alias.scope !421
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.k, align 8, !alias.scope !421
  store i8 1, ptr %i.i, align 8, !alias.scope !421
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4Luau8Property2rwEPKNS_4TypeES3_(ptr dead_on_unwind noalias writable sret(%"struct.Luau::Property") align 8 initializes((0, 1)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !229
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !48
  store i8 0, ptr %i.b, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.d, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 0, ptr %i.e, align 4, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.g, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %1, ptr %i.j, align 8
  store i8 1, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %2, ptr %i.k, align 8
  store i8 1, ptr %i.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4Luau8Property6createESt8optionalIPKNS_4TypeEES5_(ptr dead_on_unwind noalias writable sret(%"struct.Luau::Property") align 8 initializes((0, 1)) %0, ptr %1, i8 %2, ptr %3, i8 %4) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = trunc nuw i8 %2 to i1
  %i.b = trunc nuw i8 %4 to i1                    ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %0, align 8, !tbaa !229, !alias.scope !428
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !46, !alias.scope !428
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !48, !alias.scope !428
  store i8 0, ptr %i.d, align 8, !tbaa !45, !alias.scope !428
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.f, align 8, !tbaa !54, !alias.scope !428
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 0, ptr %i.g, align 4, !tbaa !54, !alias.scope !428
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false), !alias.scope !428
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.i, align 8, !tbaa !52, !alias.scope !428
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 0, ptr %i.k, align 8, !tbaa !170, !alias.scope !428
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %1, ptr %i.l, align 8, !alias.scope !428
  store i8 1, ptr %i.j, align 8, !alias.scope !428
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %0, align 8, !tbaa !229, !alias.scope !429
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !46, !alias.scope !429
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.o, align 8, !tbaa !48, !alias.scope !429
  store i8 0, ptr %i.n, align 8, !tbaa !45, !alias.scope !429
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.p, align 8, !tbaa !54, !alias.scope !429
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 0, ptr %i.q, align 4, !tbaa !54, !alias.scope !429
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false), !alias.scope !429
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.s, align 8, !tbaa !52, !alias.scope !429
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.t, align 8, !tbaa !170, !alias.scope !429
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %3, ptr %i.v, align 8, !alias.scope !429
  store i8 1, ptr %i.u, align 8, !alias.scope !429
  br label %bb.f

.thread:                                          ; preds = %bb.b, %bb.d
  store i8 0, ptr %0, align 8, !tbaa !229, !alias.scope !430
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !46, !alias.scope !430
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.y, align 8, !tbaa !48, !alias.scope !430
  store i8 0, ptr %i.x, align 8, !tbaa !45, !alias.scope !430
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.z, align 8, !tbaa !54, !alias.scope !430
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 0, ptr %i.aa, align 4, !tbaa !54, !alias.scope !430
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false), !alias.scope !430
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.ac, align 8, !tbaa !52, !alias.scope !430
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %1, ptr %i.af, align 8, !alias.scope !430
  store i8 1, ptr %i.ad, align 8, !alias.scope !430
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %3, ptr %i.ag, align 8, !alias.scope !430
  store i8 1, ptr %i.ae, align 8, !alias.scope !430
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK4Luau8Property15type_DEPRECATEDEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4Luau8Property7setTypeEPKNS_4TypeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(176) initializes((144, 153), (160, 169)) %0, ptr noundef %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %1, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 1, ptr %.sroa.42.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4Luau8Property10makeSharedEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i8, ptr %i.a, align 8, !tbaa !170, !range !55, !noundef !56
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau8Property8isSharedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = load i8, ptr %i.b, align 8, !tbaa !170, !range !55, !noundef !56
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = load i8, ptr %i.e, align 8, !range !55
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %i.d, i1 %i.g, i1 false
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = load ptr, ptr %i.h, align 8
  %i.k = icmp eq ptr %i.i, %i.j
  %i.l = select i1 %or.cond, i1 %i.k, i1 false
  ret i1 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau8Property10isReadOnlyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i8, ptr %i.a, align 8, !tbaa !170, !range !55, !noundef !56
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load i8, ptr %i.d, align 8, !range !55
  %1 = icmp eq i8 %i.e, 0
  %i.f = select i1 %i.c, i1 %1, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau8Property11isWriteOnlyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i8, ptr %i.a, align 8, !tbaa !170, !range !55, !noundef !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load i8, ptr %i.c, align 8, !range !55
  %i.e = trunc nuw i8 %i.d to i1
  %not. = icmp eq i8 %i.b, 0
  %i.f = select i1 %not., i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau8Property11isReadWriteEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i8, ptr %i.a, align 8, !tbaa !170, !range !55, !noundef !56
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load i8, ptr %i.d, align 8, !range !55
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4Luau9TableTypeC2ENS_10TableStateENS_9TypeLevelEPNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(328) initializes((8, 12), (16, 24)) %0, i32 noundef %1, i64 %2, ptr noundef %3) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !238
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !239
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.c, align 8, !tbaa !240
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !241
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !242
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.f, align 8, !tbaa !244
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %1, ptr %i.g, align 8, !tbaa !257
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i64 %2, ptr %i.h, align 4, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %3, ptr %i.i, align 8, !tbaa !258
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.j, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 0, ptr %i.k, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i8 0, i64 48, i1 false)
  store ptr %i.n, ptr %i.m, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.o, align 8, !tbaa !48
  store i8 0, ptr %i.n, align 8, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 0, ptr %i.q, align 8, !tbaa !170
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !52, !range !55, !noundef !56
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !52
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !45
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #36
  br label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !239
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #35
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau9TableTypeC2ERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8PropertyESt4lessIS7_ESaISt4pairIKS7_S8_EEERKSt8optionalINS_12TableIndexerEENS_9TypeLevelENS_10TableStateE(ptr noundef nonnull align 8 dereferenceable(328) initializes((8, 12), (16, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i64 %3, i32 noundef %4) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, Luau::Property>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, Luau::Property>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.a, align 8, !tbaa !238
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !239
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !240
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !241
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !242
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !239  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  store ptr %0, ptr %5, align 8, !tbaa !260
  %i.h = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 3 uses
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %.noexc.i.i, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ %i.j, %.noexc.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !261  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !8

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.c, align 8, !tbaa !262
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.h, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !263  ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.d, label %bb.c, !llvm.loop !9

bb.d:                                             ; preds = %bb.c
  store ptr %.0.i.i7.i.i.i.i, ptr %i.d, align 8, !tbaa !262
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !242
  store i64 %i.n, ptr %i.e, align 8, !tbaa !242
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  store ptr %i.h, ptr %i.b, align 8, !tbaa !262
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %4, ptr %i.p, align 8, !tbaa !257
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i64 %3, ptr %i.q, align 4, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.r, align 8, !tbaa !258
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.s, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 0, ptr %i.t, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 0, i64 48, i1 false)
  store ptr %i.w, ptr %i.v, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.x, align 8, !tbaa !48
  store i8 0, ptr %i.w, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 0, ptr %i.z, align 8, !tbaa !170
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau9TableTypeC2ERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8PropertyESt4lessIS7_ESaISt4pairIKS7_S8_EEERKSt8optionalINS_12TableIndexerEENS_9TypeLevelEPNS_5ScopeENS_10TableStateE(ptr noundef nonnull align 8 dereferenceable(328) initializes((8, 12), (16, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i64 %3, ptr noundef %4, i32 noundef %5) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, Luau::Property>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, Luau::Property>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.a, align 8, !tbaa !238
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !239
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !240
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !241
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !242
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_0
begin_hunk_1_@_ZN4Luau9attachTagERNS_8PropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.i, ptr %i.a, align 8, !tbaa !47
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !44
  %i.l = load i64, ptr %i.a, align 8, !tbaa !47
  store i64 %i.l, ptr %i.f, align 8, !tbaa !45
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc.i.i ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !45
  store i8 %i.n, ptr %i.m, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !48
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !230
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.t, ptr %i.b, align 8, !tbaa !230
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Luau6hasTagERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERKS6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !233
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !233
  %i.d = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %i.a, ptr %i.c, ptr nonnull align 8 dereferenceable(32) %1)
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !233
  %i.f = icmp ne ptr %i.d, %i.e
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Luau6hasTagEPKNS_4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeENS_12FollowOptionE(ptr noundef %0, i32 noundef 0) ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37
  %i.c = icmp eq i32 %i.b, 11
  br i1 %i.c, label %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.preheader, label %bb.f

_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.preheader: ; preds = %bb.b, %bb.e
  %.pn = phi ptr [ %i.n, %bb.e ], [ %i.a, %bb.b ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.pn, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !233
  %i.f = getelementptr inbounds nuw i8, ptr %.pn, i64 128 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !233
  %i.h = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %i.e, ptr %i.g, ptr nonnull align 8 dereferenceable(32) %1)
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !233
  %.not.not.not = icmp ne ptr %i.h, %i.i          ; 5 uses
  br i1 %.not.not.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %.pn, i64 96
  %i.k = load i8, ptr %i.j, align 8, !tbaa !170, !range !55, !noundef !56
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.pn, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39   ; 3 uses
  %.not.i.i22 = icmp eq ptr %i.n, null
  br i1 %.not.i.i22, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.n, align 8, !tbaa !37
  %i.p = icmp eq i32 %i.o, 11
  br i1 %i.p, label %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.preheader, label %.loopexit, !llvm.loop !493

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.q = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeENS_12FollowOptionE(ptr noundef %i.a, i32 noundef 0) ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.q, align 8, !tbaa !37   ; 2 uses
  switch i32 %i.r, label %bb.h [
    i32 8, label %_ZN4Luau10getMutableINS_12FunctionTypeEEEPT_PKNS_4TypeE.exit.i
    i32 9, label %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit.i
  ]

_ZN4Luau10getMutableINS_12FunctionTypeEEEPT_PKNS_4TypeE.exit.i: ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 184
  br label %_ZN4LuauL7getTagsB5cxx11EPKNS_4TypeE.exit

_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit.i: ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 304
  br label %_ZN4LuauL7getTagsB5cxx11EPKNS_4TypeE.exit

bb.h:                                             ; preds = %bb.g
  %i.u = icmp eq i32 %i.r, 11
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  br i1 %i.u, label %_ZN4LuauL7getTagsB5cxx11EPKNS_4TypeE.exit, label %.loopexit

_ZN4LuauL7getTagsB5cxx11EPKNS_4TypeE.exit:        ; preds = %bb.h, %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit.i, %_ZN4Luau10getMutableINS_12FunctionTypeEEEPT_PKNS_4TypeE.exit.i
  %.ph = phi ptr [ %i.s, %_ZN4Luau10getMutableINS_12FunctionTypeEEEPT_PKNS_4TypeE.exit.i ], [ %i.t, %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit.i ], [ %i.v, %bb.h ] ; 2 uses
  %i.w = load ptr, ptr %.ph, align 8, !tbaa !233
  %i.x = getelementptr inbounds nuw i8, ptr %.ph, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !233
  %i.z = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %i.w, ptr %i.y, ptr nonnull align 8 dereferenceable(32) %1)
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !233
  %i.ab = icmp ne ptr %i.z, %i.aa
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.e, %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.preheader, %bb.c, %bb.f, %bb.h, %_ZN4LuauL7getTagsB5cxx11EPKNS_4TypeE.exit
  %i.ac = phi i1 [ false, %bb.f ], [ %i.ab, %_ZN4LuauL7getTagsB5cxx11EPKNS_4TypeE.exit ], [ false, %bb.h ], [ %.not.not.not, %bb.c ], [ %.not.not.not, %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.preheader ], [ %.not.not.not, %bb.e ], [ %.not.not.not, %bb.d ]
  ret i1 %i.ac
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Luau6hasTagERKNS_8PropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !233
  %i.e = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %i.b, ptr %i.d, ptr nonnull align 8 dereferenceable(32) %1)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !233
  %i.g = icmp ne ptr %i.e, %i.f
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau7TypeFuneqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %1) local_unnamed_addr #23 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !507
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !507
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZSteqIN4Luau25GenericTypePackDefinitionESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !508  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !509    ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !508
  %i.n = load ptr, ptr %1, align 8, !tbaa !509    ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp eq i64 %i.k, %i.q
  br i1 %i.r, label %bb.c, label %_ZSteqIN4Luau25GenericTypePackDefinitionESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit

bb.c:                                             ; preds = %bb.b
  %.not9.i.i.i.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not9.i.i.i.i.i, label %_ZSteqIN4Luau21GenericTypeDefinitionESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.011.i.i.i.i.i = phi ptr [ %i.ah, %bb.d ], [ %i.n, %bb.c ] ; 4 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ag, %bb.d ], [ %i.h, %bb.c ] ; 4 uses
  %i.s = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !317
  %i.t = load ptr, ptr %.011.i.i.i.i.i, align 8, !tbaa !317
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNK4Luau21GenericTypeDefinitioneqERKS0_.exit.i.i.i.i.i, label %_ZSteqIN4Luau25GenericTypePackDefinitionESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit

_ZNK4Luau21GenericTypeDefinitioneqERKS0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16
  %i.y = load i8, ptr %i.x, align 8, !tbaa !170, !range !55, !noundef !56 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !170, !range !55, !noundef !56
  %2 = icmp ne i8 %i.y, %i.aa                     ; 2 uses
  %i.ab = icmp eq i8 %i.y, 0
  %brmerge.i.i.i.i.i.i.i = or i1 %i.ab, %2
  %not..i.i.i.i.i.i.i = xor i1 %2, true
  %i.ac = load ptr, ptr %i.v, align 8
  %i.ad = load ptr, ptr %i.w, align 8
  %i.ae = icmp eq ptr %i.ac, %i.ad
  %i.af = select i1 %brmerge.i.i.i.i.i.i.i, i1 %not..i.i.i.i.i.i.i, i1 %i.ae
  br i1 %i.af, label %bb.d, label %_ZSteqIN4Luau25GenericTypePackDefinitionESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit

bb.d:                                             ; preds = %_ZNK4Luau21GenericTypeDefinitioneqERKS0_.exit.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZSteqIN4Luau21GenericTypeDefinitionESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !494

_ZSteqIN4Luau21GenericTypeDefinitionESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit: ; preds = %bb.d, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !510 ; 3 uses
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !511 ; 3 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !510
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !511 ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp eq i64 %i.ap, %i.av
  br i1 %i.aw, label %bb.e, label %_ZSteqIN4Luau25GenericTypePackDefinitionESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit

bb.e:                                             ; preds = %_ZSteqIN4Luau21GenericTypeDefinitionESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit
  %.not9.i.i.i.i.i4 = icmp eq ptr %i.am, %i.al
  br i1 %.not9.i.i.i.i.i4, label %_ZSteqIN4Luau25GenericTypePackDefinitionESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit, label %.lr.ph.i.i.i.i.i5

.lr.ph.i.i.i.i.i5:                                ; preds = %bb.e, %bb.f
  %.011.i.i.i.i.i6 = phi ptr [ %i.bm, %bb.f ], [ %i.as, %bb.e ] ; 4 uses
  %.0810.i.i.i.i.i7 = phi ptr [ %i.bl, %bb.f ], [ %i.am, %bb.e ] ; 4 uses
  %i.ax = load ptr, ptr %.0810.i.i.i.i.i7, align 8, !tbaa !322
  %i.ay = load ptr, ptr %.011.i.i.i.i.i6, align 8, !tbaa !322
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNK4Luau25GenericTypePackDefinitioneqERKS0_.exit.i.i.i.i.i, label %_ZSteqIN4Luau25GenericTypePackDefinitionESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit

_ZNK4Luau25GenericTypePackDefinitioneqERKS0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i5
  %i.ba = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i7, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i6, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i7, i64 16
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !309, !range !55, !noundef !56 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i6, i64 16
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !309, !range !55, !noundef !56
  %3 = icmp ne i8 %i.bd, %i.bf                    ; 2 uses
  %i.bg = icmp eq i8 %i.bd, 0
  %brmerge.i.i.i.i.i.i.i9 = or i1 %i.bg, %3
  %not..i.i.i.i.i.i.i10 = xor i1 %3, true
  %i.bh = load ptr, ptr %i.ba, align 8
  %i.bi = load ptr, ptr %i.bb, align 8
  %i.bj = icmp eq ptr %i.bh, %i.bi
  %i.bk = select i1 %brmerge.i.i.i.i.i.i.i9, i1 %not..i.i.i.i.i.i.i10, i1 %i.bj
  br i1 %i.bk, label %bb.f, label %_ZSteqIN4Luau25GenericTypePackDefinitionESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit

bb.f:                                             ; preds = %_ZNK4Luau25GenericTypePackDefinitioneqERKS0_.exit.i.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i7, i64 24 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i6, i64 24
  %.not.i.i.i.i.i9 = icmp eq ptr %i.bl, %i.al
  br i1 %.not.i.i.i.i.i9, label %_ZSteqIN4Luau25GenericTypePackDefinitionESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit, label %.lr.ph.i.i.i.i.i5, !llvm.loop !495

_ZSteqIN4Luau25GenericTypePackDefinitionESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit: ; preds = %_ZNK4Luau21GenericTypeDefinitioneqERKS0_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %bb.f, %_ZNK4Luau25GenericTypePackDefinitioneqERKS0_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i5, %bb.b, %bb.e, %_ZSteqIN4Luau21GenericTypeDefinitionESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit, %bb.a
  %i.bn = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %_ZSteqIN4Luau21GenericTypeDefinitionESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit ], [ true, %bb.e ], [ false, %_ZNK4Luau25GenericTypePackDefinitioneqERKS0_.exit.i.i.i.i.i ], [ true, %bb.f ], [ false, %.lr.ph.i.i.i.i.i5 ], [ false, %.lr.ph.i.i.i.i.i ], [ false, %_ZNK4Luau21GenericTypeDefinitioneqERKS0_.exit.i.i.i.i.i ]
  ret i1 %i.bn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau21GenericTypeDefinitioneqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !317
  %i.b = load ptr, ptr %1, align 8, !tbaa !317
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !170, !range !55, !noundef !56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !170, !range !55, !noundef !56
  %2 = icmp ne i8 %i.g, %i.i                      ; 2 uses
  %i.j = icmp eq i8 %i.g, 0
  %brmerge.i = or i1 %i.j, %2
  %not..i = xor i1 %2, true
  %i.k = load ptr, ptr %i.d, align 8
  %i.l = load ptr, ptr %i.e, align 8
  %i.m = icmp eq ptr %i.k, %i.l
  %i.n = select i1 %brmerge.i, i1 %not..i, i1 %i.m
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi i1 [ false, %bb.a ], [ %i.n, %bb.b ]
  ret i1 %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau25GenericTypePackDefinitioneqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !322
  %i.b = load ptr, ptr %1, align 8, !tbaa !322
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !309, !range !55, !noundef !56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !309, !range !55, !noundef !56
  %2 = icmp ne i8 %i.g, %i.i                      ; 2 uses
  %i.j = icmp eq i8 %i.g, 0
  %brmerge.i = or i1 %i.j, %2
  %not..i = xor i1 %2, true
  %i.k = load ptr, ptr %i.d, align 8
  %i.l = load ptr, ptr %i.e, align 8
  %i.m = icmp eq ptr %i.k, %i.l
  %i.n = select i1 %brmerge.i, i1 %not..i, i1 %i.m
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi i1 [ false, %bb.a ], [ %i.n, %bb.b ]
  ret i1 %i.o
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef nonnull ptr @_ZN4Luau11emplaceTypeINS_9Unifiable5BoundIPKNS_4TypeEEEJRS5_EEEPT_PS3_DpOT0_(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #24 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !37
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void %i.d(ptr noundef nonnull %i.e), !inline_history !512
  store i32 0, ptr %0, align 8, !tbaa !37
  %i.f = load ptr, ptr %1, align 8, !tbaa !39
  store ptr %i.f, ptr %i.e, align 8, !tbaa !514
  ret ptr %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE6fnDtorIS2_EEvPv(ptr noundef %0) #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN4Luau8TypePath8PropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !45
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #36
  br label %_ZN4Luau8TypePath8PropertyD2Ev.exit

_ZN4Luau8TypePath8PropertyD2Ev.exit:              ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE6fnDtorIS3_EEvPv(ptr noundef %0) #16 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE6fnDtorIS4_EEvPv(ptr noundef %0) #16 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE6fnDtorIS5_EEvPv(ptr noundef %0) #16 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE6fnDtorIS6_EEvPv(ptr noundef %0) #16 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE6fnDtorIS7_EEvPv(ptr noundef %0) #16 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE6fnDtorIS8_EEvPv(ptr noundef %0) #16 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #25

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7VariantIJNS2_8TypePath8PropertyENS4_5IndexENS4_9TypeFieldENS4_9PackFieldENS4_9PackSliceENS4_9ReductionENS4_18GenericPackMappingEEEESt6vectorISC_SaISC_EEEEPSC_ET0_T_SL_SK_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not13 = icmp eq ptr %0, %1
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEJRKSA_EEvPT_DpOT0_.exit
  %.015 = phi ptr [ %i.aa, %_ZSt10_ConstructIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEJRKSA_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 8 uses
  %.sroa.08.014 = phi ptr [ %i.z, %_ZSt10_ConstructIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEJRKSA_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 5 uses
  %i.b = load i32, ptr %.sroa.08.014, align 8, !tbaa !30 ; 2 uses
  store i32 %i.b, ptr %.015, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %.015, i64 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.014, i64 8 ; 7 uses
  switch i32 %i.b, label %default.switch.case.unreachable.i.i [
    i32 0, label %call.0.i.i
    i32 1, label %call.1.i.i
    i32 2, label %call.2.i.i
    i32 3, label %call.3.i.i
    i32 4, label %call.4.i.i
    i32 5, label %call.5.i.i
    i32 6, label %call.6.i.i
  ], !prof !516

default.switch.case.unreachable.i.i:              ; preds = %.lr.ph
  unreachable

call.0.i.i:                                       ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.015, i64 24 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !46
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.014, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !48   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.h, ptr %i.a, align 8, !tbaa !47
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %call.0.i.i
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  store ptr %i.j, ptr %i.c, align 8, !tbaa !44
  %i.k = load i64, ptr %i.a, align 8, !tbaa !47
  store i64 %i.k, ptr %i.e, align 8, !tbaa !45
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc, %call.0.i.i
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %call.0.i.i ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE6fnCopyIS2_EEvPvPKv.exit.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !45
  store i8 %i.m, ptr %i.l, align 1, !tbaa !45
  br label %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE6fnCopyIS2_EEvPvPKv.exit.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE6fnCopyIS2_EEvPvPKv.exit.i.i

_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE6fnCopyIS2_EEvPvPKv.exit.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.015, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !48
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.r = getelementptr inbounds nuw i8, ptr %.015, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.08.014, i64 40
  %i.t = load i8, ptr %i.s, align 8, !tbaa !518, !range !55, !noundef !56
  store i8 %i.t, ptr %i.r, align 8, !tbaa !518
  br label %_ZSt10_ConstructIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEJRKSA_EEvPT_DpOT0_.exit

call.1.i.i:                                       ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !521
  br label %_ZSt10_ConstructIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEJRKSA_EEvPT_DpOT0_.exit

call.2.i.i:                                       ; preds = %.lr.ph
  %i.u = load i32, ptr %i.d, align 8, !tbaa !523
  store i32 %i.u, ptr %i.c, align 8, !tbaa !523
  br label %_ZSt10_ConstructIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEJRKSA_EEvPT_DpOT0_.exit

call.3.i.i:                                       ; preds = %.lr.ph
  %i.v = load i32, ptr %i.d, align 8, !tbaa !525
  store i32 %i.v, ptr %i.c, align 8, !tbaa !525
  br label %_ZSt10_ConstructIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEJRKSA_EEvPT_DpOT0_.exit

call.4.i.i:                                       ; preds = %.lr.ph
  %i.w = load i64, ptr %i.d, align 8, !tbaa !47
  store i64 %i.w, ptr %i.c, align 8, !tbaa !47
  br label %_ZSt10_ConstructIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEJRKSA_EEvPT_DpOT0_.exit

call.5.i.i:                                       ; preds = %.lr.ph
  %i.x = load i64, ptr %i.d, align 8, !tbaa !39
  store i64 %i.x, ptr %i.c, align 8, !tbaa !39
  br label %_ZSt10_ConstructIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEJRKSA_EEvPT_DpOT0_.exit

call.6.i.i:                                       ; preds = %.lr.ph
  %i.y = load i64, ptr %i.d, align 8, !tbaa !302
  store i64 %i.y, ptr %i.c, align 8, !tbaa !302
  br label %_ZSt10_ConstructIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEJRKSA_EEvPT_DpOT0_.exit

_ZSt10_ConstructIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEJRKSA_EEvPT_DpOT0_.exit: ; preds = %call.6.i.i, %call.5.i.i, %call.4.i.i, %call.3.i.i, %call.2.i.i, %call.1.i.i, %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE6fnCopyIS2_EEvPvPKv.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.014, i64 48 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.015, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.z, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !515

bb.d:                                             ; preds = %.noexc.i.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = call ptr @__cxa_begin_catch(ptr %i.ac) #34 ; 0 uses
end_hunk_1
