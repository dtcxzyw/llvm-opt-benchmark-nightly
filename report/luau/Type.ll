Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Type?download=true
inline.NumInlined: 2960
inline.NumDeleted: 1329
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4Luau8Property9writeonlyEPKNS_4TypeE:bb.a
  store i8 0, ptr %i.h, align 8, !tbaa !170
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.j, align 8
  store i8 1, ptr %i.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4Luau8Property2rwEPKNS_4TypeE(ptr dead_on_unwind noalias writable sret(%"struct.Luau::Property") align 8 initializes((0, 1)) %0, ptr noundef %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !229, !alias.scope !421
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !46, !alias.scope !421
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !48, !alias.scope !421
  store i8 0, ptr %i.b, align 8, !tbaa !45, !alias.scope !421
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.d, align 8, !tbaa !54, !alias.scope !421
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 0, ptr %i.e, align 4, !tbaa !54, !alias.scope !421
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false), !alias.scope !421
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
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i8, ptr %i.a, align 8, !tbaa !170, !range !55, !noundef !56
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load i8, ptr %i.d, align 8, !range !55
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = icmp eq ptr %3, %4
  %i.g = select i1 %or.cond, i1 %5, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau8Property10isReadOnlyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %2 = load i8, ptr %1, align 8, !tbaa !170, !range !55, !noundef !56
  %3 = trunc nuw i8 %2 to i1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i8, ptr %i.a, align 8, !range !55
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = xor i1 %i.c, true
  %4 = select i1 %3, i1 %i.d, i1 false
  ret i1 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau8Property11isWriteOnlyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i8, ptr %i.a, align 8, !tbaa !170, !range !55, !noundef !56
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load i8, ptr %i.d, align 8, !range !55
  %i.f = trunc nuw i8 %i.e to i1
  %not. = xor i1 %i.c, true
  %i.g = select i1 %not., i1 %i.f, i1 false
  ret i1 %i.g
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
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !52
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
end_hunk_0
