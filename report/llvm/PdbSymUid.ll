Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PdbSymUid?download=true
inline.NumInlined: 53
inline.NumDeleted: 42
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [10 x i8] c"Sym(modi=\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c", offset=\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"GlobalSym(\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"public, \00", align 1

@_ZN12lldb_private4npdb9PdbSymUidC1ERKNS0_14PdbCompilandIdE = unnamed_addr alias void (ptr, ptr), ptr @_ZN12lldb_private4npdb9PdbSymUidC2ERKNS0_14PdbCompilandIdE
@_ZN12lldb_private4npdb9PdbSymUidC1ERKNS0_17PdbCompilandSymIdE = unnamed_addr alias void (ptr, ptr), ptr @_ZN12lldb_private4npdb9PdbSymUidC2ERKNS0_17PdbCompilandSymIdE
@_ZN12lldb_private4npdb9PdbSymUidC1ERKNS0_14PdbGlobalSymIdE = unnamed_addr alias void (ptr, ptr), ptr @_ZN12lldb_private4npdb9PdbSymUidC2ERKNS0_14PdbGlobalSymIdE
@_ZN12lldb_private4npdb9PdbSymUidC1ERKNS0_12PdbTypeSymIdE = unnamed_addr alias void (ptr, ptr), ptr @_ZN12lldb_private4npdb9PdbSymUidC2ERKNS0_12PdbTypeSymIdE
@_ZN12lldb_private4npdb9PdbSymUidC1ERKNS0_20PdbFieldListMemberIdE = unnamed_addr alias void (ptr, ptr), ptr @_ZN12lldb_private4npdb9PdbSymUidC2ERKNS0_20PdbFieldListMemberIdE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN12lldb_private4npdb9PdbSymUidC2ERKNS0_14PdbCompilandIdE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(2) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i16, ptr %1, align 2, !tbaa !33
  %i.b = zext i16 %i.a to i64
  %i.c = shl nuw nsw i64 %i.b, 4
  store i64 %i.c, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN12lldb_private4npdb9PdbSymUidC2ERKNS0_17PdbCompilandSymIdE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i16, ptr %1, align 4, !tbaa !13
  %i.b = zext i16 %i.a to i64
  %i.c = shl nuw nsw i64 %i.b, 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !14
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 20
  %i.h = or disjoint i64 %i.c, %i.g
  %i.i = or disjoint i64 %i.h, 1
  store i64 %i.i, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN12lldb_private4npdb9PdbSymUidC2ERKNS0_14PdbGlobalSymIdE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(5) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !17, !range !18, !noundef !19
  %i.c = zext nneg i8 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 36
  %i.e = load i32, ptr %1, align 4, !tbaa !20
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 4
  %i.h = or disjoint i64 %i.d, %i.g
  %i.i = or disjoint i64 %i.h, 3
  store i64 %i.i, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN12lldb_private4npdb9PdbSymUidC2ERKNS0_12PdbTypeSymIdE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(5) %1) unnamed_addr #0 align 2 {
bb.a:
  store i64 0, ptr %0, align 8, !tbaa !11
  %.0.copyload.i.i.i.i = load i32, ptr %1, align 1
  %i.a = zext i32 %.0.copyload.i.i.i.i to i64
  %i.b = shl nuw nsw i64 %i.a, 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i8, ptr %i.c, align 1, !tbaa !35, !range !18, !noundef !19
  %i.e = zext nneg i8 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 36
  %i.g = or disjoint i64 %i.b, %i.f
  %i.h = or disjoint i64 %i.g, 4
  store i64 %i.h, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN12lldb_private4npdb9PdbSymUidC2ERKNS0_20PdbFieldListMemberIdE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %1) unnamed_addr #0 align 2 {
bb.a:
  store i64 0, ptr %0, align 8, !tbaa !11
  %.0.copyload.i.i.i.i = load i32, ptr %1, align 2
  %i.a = zext i32 %.0.copyload.i.i.i.i to i64
  %i.b = shl nuw nsw i64 %i.a, 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i16, ptr %i.c, align 2, !tbaa !37
  %i.e = zext i16 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 36
  %i.g = or disjoint i64 %i.b, %i.f
  %i.h = or disjoint i64 %i.g, 5
  store i64 %i.h, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext range(i8 0, 16) i8 @_ZNK12lldb_private4npdb9PdbSymUid4kindEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8
  %i.a = trunc i64 %.val to i8
  %i.b = and i8 %i.a, 15
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i16 @_ZNK12lldb_private4npdb9PdbSymUid11asCompilandEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8
  %i.a = lshr i64 %.val, 4
  %i.b = trunc i64 %i.a to i16
  ret i16 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, -4294901760) i64 @_ZNK12lldb_private4npdb9PdbSymUid14asCompilandSymEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = lshr i64 %.val, 4
  %i.b = shl i64 %.val, 12
  %.sroa.32.0.insert.ext = and i64 %i.b, -4294967296
  %.sroa.0.0.insert.ext = and i64 %i.a, 65535
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.32.0.insert.ext, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZNK12lldb_private4npdb9PdbSymUid11asGlobalSymEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8
  %i.a = lshr i64 %.val, 4
  %.sroa.0.0.insert.insert = and i64 %i.a, 8589934591
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i40 0, 8589934592) i40 @_ZNK12lldb_private4npdb9PdbSymUid9asTypeSymEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = lshr i64 %.val, 36
  %i.b = trunc i64 %i.a to i8
  %i.c = and i8 %i.b, 1
  %.sroa.3.0.insert.ext = zext nneg i8 %i.c to i40
  %.sroa.3.0.insert.shift = shl nuw nsw i40 %.sroa.3.0.insert.ext, 32
  %i.d = trunc i64 %.val to i40
  %i.e = lshr i40 %i.d, 4
  %.sroa.0.0.insert.ext = and i40 %i.e, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i40 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i40 %.sroa.0.0.insert.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i48 @_ZNK12lldb_private4npdb9PdbSymUid17asFieldListMemberEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8
  %sh.diff = lshr i64 %.val, 4
  %i.a = trunc i64 %sh.diff to i48
  ret i48 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15format_providerIN12lldb_private4npdb17PdbCompilandSymIdEvE6formatERKS3_RNS_11raw_ostreamENS_9StringRefE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree readnone captures(none) %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, 9
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str, i64 noundef 9) #5
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.d, ptr noundef nonnull align 1 dereferenceable(9) @.str, i64 9, i1 false)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  store ptr %i.k, ptr %i.c, align 8, !tbaa !30
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.i, %bb.b ], [ %1, %bb.c ]
  %i.l = load i16, ptr %0, align 4, !tbaa !13
  %i.m = zext i16 %i.l to i64
  %i.n = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %i.m) #5 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30   ; 2 uses
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp ult i64 %i.u, 9
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.w = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull @.str.1, i64 noundef 9) #5
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.r, ptr noundef nonnull align 1 dereferenceable(9) @.str.1, i64 9, i1 false)
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  store ptr %i.y, ptr %i.q, align 8, !tbaa !30
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5

_ZN4llvm11raw_ostreamlsEPKc.exit5:                ; preds = %bb.d, %bb.e
  %.0.i.i4 = phi ptr [ %i.w, %bb.d ], [ %i.n, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !14
  %i.ab = zext i32 %i.aa to i64
  %i.ac = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i4, i64 noundef %i.ab) #5 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !30 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !29
  %.not.i = icmp ult ptr %i.ae, %i.ag
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit5
  %i.ah = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i8 noundef zeroext 41) #5 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !30
  store i8 41, ptr %i.ae, align 1, !tbaa !31
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15format_providerIN12lldb_private4npdb14PdbGlobalSymIdEvE6formatERKS3_RNS_11raw_ostreamENS_9StringRefE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(5) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree readnone captures(none) %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, 10
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.2, i64 noundef 10) #5 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.d, ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i64 10, i1 false)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  store ptr %i.k, ptr %i.c, align 8, !tbaa !30
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i8, ptr %i.l, align 4, !tbaa !17, !range !18, !noundef !19
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %_ZN4llvm11raw_ostreamlsEPKc.exit7

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp ult i64 %i.s, 8
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.3, i64 noundef 8) #5 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit7

bb.f:                                             ; preds = %bb.d
  store i64 2318337212630070640, ptr %i.p, align 1
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.w, ptr %i.c, align 8, !tbaa !30
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit7

_ZN4llvm11raw_ostreamlsEPKc.exit7:                ; preds = %bb.f, %bb.e, %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.x = load i32, ptr %0, align 4, !tbaa !20
  %i.y = zext i32 %i.x to i64
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.y) #5 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !30 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29
  %.not.i = icmp ult ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit7
  %i.ae = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.z, i8 noundef zeroext 41) #5 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit7
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !30
  store i8 41, ptr %i.ab, align 1, !tbaa !31
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.g, %bb.h
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"short", !4, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!"_ZTSN12lldb_private4npdb9PdbSymUidE", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"_ZTSN12lldb_private4npdb17PdbCompilandSymIdE", !8, i64 0, !5, i64 4}
!13 = !{!12, !8, i64 0}
!14 = !{!12, !5, i64 4}
!15 = !{!"bool", !4, i64 0}
!16 = !{!"_ZTSN12lldb_private4npdb14PdbGlobalSymIdE", !5, i64 0, !15, i64 4}
!17 = !{!16, !15, i64 4}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{!16, !5, i64 0}
!21 = !{!"_ZTSN4llvm7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEUt_E", !4, i64 0}
!22 = !{!"_ZTSN4llvm7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEE", !21, i64 0}
!23 = !{!"_ZTSN4llvm8codeview9TypeIndexE", !22, i64 0}
!24 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !4, i64 0}
!25 = !{!"any pointer", !4, i64 0}
!26 = !{!"p1 omnipotent char", !25, i64 0}
end_hunk_0
