Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/AST2JS?download=true
inline.NumInlined: 2172
inline.NumDeleted: 1204
begin_hunk_0_@_ZN6hermes12_GLOBAL__N_110checkMinusEPNS_6ESTree4NodeE:bb.a

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load double, ptr %i.q, align 8, !tbaa !51
  %i.s = fcmp olt double %i.r, 0.000000e+00
  br label %_ZN6hermes12_GLOBAL__N_116isNegativeNumberEPNS_6ESTree4NodeE.exit

_ZN6hermes12_GLOBAL__N_116isNegativeNumberEPNS_6ESTree4NodeE.exit: ; preds = %bb.a, %_ZN6hermes12_GLOBAL__N_114isUpdatePrefixEPNS_6ESTree4NodeEN4llvh9StringRefE.exit, %bb.e, %.thread12, %_ZN6hermes12_GLOBAL__N_17isUnaryEPNS_6ESTree4NodeEN4llvh9StringRefE.exit
  %i.t = phi i1 [ %i.p, %_ZN6hermes12_GLOBAL__N_114isUpdatePrefixEPNS_6ESTree4NodeEN4llvh9StringRefE.exit ], [ true, %_ZN6hermes12_GLOBAL__N_17isUnaryEPNS_6ESTree4NodeEN4llvh9StringRefE.exit ], [ %i.s, %bb.e ], [ false, %.thread12 ], [ false, %bb.a ]
  ret i1 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN6hermes12_GLOBAL__N_19checkPlusEPNS_6ESTree4NodeE(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35
  switch i32 %i.b, label %_ZN6hermes12_GLOBAL__N_114isUpdatePrefixEPNS_6ESTree4NodeEN4llvh9StringRefE.exit [
    i32 55, label %bb.b
    i32 56, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69   ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !55
  %i.e = icmp eq i64 %.sroa.22.0.copyload.i, 1
  br i1 %i.e, label %_ZN6hermes12_GLOBAL__N_17isUnaryEPNS_6ESTree4NodeEN4llvh9StringRefE.exit, label %_ZN6hermes12_GLOBAL__N_114isUpdatePrefixEPNS_6ESTree4NodeEN4llvh9StringRefE.exit

_ZN6hermes12_GLOBAL__N_17isUnaryEPNS_6ESTree4NodeEN4llvh9StringRefE.exit: ; preds = %bb.b
  %.sroa.01.0.copyload.i = load ptr, ptr %i.d, align 8, !tbaa !53
  %lhsc = load i8, ptr %.sroa.01.0.copyload.i, align 1
  %i.f = icmp eq i8 %lhsc, 43
  br label %_ZN6hermes12_GLOBAL__N_114isUpdatePrefixEPNS_6ESTree4NodeEN4llvh9StringRefE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i8, ptr %i.g, align 8, !tbaa !71, !range !46, !noundef !19
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %_ZN6hermes12_GLOBAL__N_114isUpdatePrefixEPNS_6ESTree4NodeEN4llvh9StringRefE.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72   ; 2 uses
  %.sroa.22.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.22.0.copyload.i4 = load i64, ptr %.sroa.22.0..sroa_idx.i3, align 8, !tbaa !55
  %i.l = icmp eq i64 %.sroa.22.0.copyload.i4, 2
  br i1 %i.l, label %bb.e, label %_ZN6hermes12_GLOBAL__N_114isUpdatePrefixEPNS_6ESTree4NodeEN4llvh9StringRefE.exit

bb.e:                                             ; preds = %bb.d
  %.sroa.01.0.copyload.i2 = load ptr, ptr %i.k, align 8, !tbaa !53
  %i.m = load i16, ptr %.sroa.01.0.copyload.i2, align 1
  %i.n = icmp ne i16 %i.m, 11051
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br label %_ZN6hermes12_GLOBAL__N_114isUpdatePrefixEPNS_6ESTree4NodeEN4llvh9StringRefE.exit

_ZN6hermes12_GLOBAL__N_114isUpdatePrefixEPNS_6ESTree4NodeEN4llvh9StringRefE.exit: ; preds = %bb.a, %_ZN6hermes12_GLOBAL__N_17isUnaryEPNS_6ESTree4NodeEN4llvh9StringRefE.exit, %bb.b, %bb.e, %bb.d, %bb.c
  %i.q = phi i1 [ %i.f, %_ZN6hermes12_GLOBAL__N_17isUnaryEPNS_6ESTree4NodeEN4llvh9StringRefE.exit ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.d ], [ %i.p, %bb.e ]
  ret i1 %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 0, 4294967329) i64 @_ZN6hermes12_GLOBAL__N_15GenJS13getPrecedenceEPNS_6ESTree4NodeE(i8 %.8.val, ptr nofree noundef readonly captures(address) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35
  switch i32 %i.b, label %bb.g [
    i32 66, label %.thread35
    i32 34, label %.thread35
    i32 35, label %.thread35
    i32 36, label %.thread35
    i32 37, label %.thread35
    i32 38, label %.thread35
    i32 40, label %.thread35
    i32 41, label %.thread35
    i32 44, label %.thread35
    i32 43, label %.thread35
    i32 94, label %.thread35
    i32 4, label %.thread35
    i32 78, label %.thread35
    i32 73, label %.thread35
    i32 96, label %.thread35
    i32 58, label %.fold.split
    i32 68, label %.fold.split
    i32 51, label %.fold.split
    i32 46, label %bb.b
    i32 74, label %.fold.split43
    i32 49, label %.fold.split43
    i32 56, label %bb.d
    i32 55, label %.thread35.fold.split
    i32 63, label %bb.e
    i32 61, label %bb.f
    i32 62, label %.thread35.fold.split55
    i32 54, label %.thread35.fold.split47
    i32 97, label %.thread35.fold.split47
    i32 47, label %.thread35.fold.split49
    i32 5, label %.thread35.fold.split49
    i32 42, label %.thread35.fold.split51
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw i8 %.8.val to i1
  br i1 %i.c, label %.thread35, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = icmp eq ptr %i.d, %i.e
  %spec.select = select i1 %i.f, i32 30, i32 31
  br label %.thread35

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i8, ptr %i.g, align 8, !tbaa !71, !range !46, !noundef !19 ; 2 uses
  %i.i = trunc nuw i8 %i.h to i1
  %spec.select45 = select i1 %i.i, i32 27, i32 28
  %i.j = zext nneg i8 %i.h to i64
  %i.k = shl nuw nsw i64 %i.j, 32
  br label %.thread35

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !67   ; 2 uses
  %.sroa.03.0.copyload = load ptr, ptr %i.m, align 8, !tbaa !53
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !55
  %i.n = tail call fastcc noundef i32 @_ZN6hermes12_GLOBAL__N_119getBinaryPrecedenceEN4llvh9StringRefE(ptr %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload)
  br label %.thread35

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !75   ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.p, align 8, !tbaa !53
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !55
  %i.q = tail call fastcc noundef i32 @_ZN6hermes12_GLOBAL__N_119getBinaryPrecedenceEN4llvh9StringRefE(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  br label %.thread35

bb.g:                                             ; preds = %bb.a
  br label %.thread35

.fold.split:                                      ; preds = %bb.a, %bb.a, %bb.a
  br label %.thread35

.fold.split43:                                    ; preds = %bb.a, %bb.a
  br label %.thread35

.thread35.fold.split:                             ; preds = %bb.a
  br label %.thread35

.thread35.fold.split47:                           ; preds = %bb.a, %bb.a
  br label %.thread35

.thread35.fold.split49:                           ; preds = %bb.a, %bb.a
  br label %.thread35

.thread35.fold.split51:                           ; preds = %bb.a
  br label %.thread35

.thread35.fold.split55:                           ; preds = %bb.a
  br label %.thread35

.thread35:                                        ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %.thread35.fold.split55, %bb.d, %bb.c, %.thread35.fold.split51, %.thread35.fold.split49, %.thread35.fold.split47, %.thread35.fold.split, %.fold.split43, %.fold.split, %bb.f, %bb.e, %bb.b, %bb.g
  %.sroa.0.2 = phi i32 [ 1, %.thread35.fold.split51 ], [ 32, %bb.a ], [ 29, %.fold.split43 ], [ 31, %bb.b ], [ 4, %.thread35.fold.split47 ], [ %spec.select45, %bb.d ], [ %spec.select, %bb.c ], [ 27, %.thread35.fold.split ], [ 31, %.fold.split ], [ 3, %.thread35.fold.split49 ], [ 0, %bb.g ], [ %i.q, %bb.f ], [ %i.n, %bb.e ], [ 32, %bb.a ], [ 32, %bb.a ], [ 32, %bb.a ], [ 32, %bb.a ], [ 32, %bb.a ], [ 32, %bb.a ], [ 32, %bb.a ], [ 32, %bb.a ], [ 32, %bb.a ], [ 32, %bb.a ], [ 32, %bb.a ], [ 32, %bb.a ], [ 32, %bb.a ], [ 32, %bb.a ], [ 5, %.thread35.fold.split55 ]
  %.sroa.15.2 = phi i64 [ 4294967296, %.thread35.fold.split51 ], [ 0, %bb.a ], [ 0, %.fold.split43 ], [ 0, %bb.b ], [ 4294967296, %.thread35.fold.split47 ], [ %i.k, %bb.d ], [ 0, %bb.c ], [ 4294967296, %.thread35.fold.split ], [ 0, %.fold.split ], [ 0, %.thread35.fold.split49 ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 4294967296, %.thread35.fold.split55 ]
  %.sroa.0.0.insert.ext = zext nneg i32 %.sroa.0.2 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.15.2, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN6hermes12_GLOBAL__N_15GenJS15_exprStartsWithEPNS_6ESTree4NodeES4_PFbS4_E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
  br label %tailrecurse162

tailrecurse162:                                   ; preds = %bb.l, %bb.a
  %.tr163.a = phi ptr [ %1, %bb.a ], [ %i.v, %bb.l ]
  %.tr164 = phi ptr [ %2, %bb.a ], [ %.tr145, %bb.l ]
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %tailrecurse162
  %.tr145 = phi ptr [ %.tr163.a, %tailrecurse162 ], [ %.tr145.be, %tailrecurse.backedge ] ; 10 uses
  %.tr146 = phi ptr [ %.tr164, %tailrecurse162 ], [ %.tr145, %tailrecurse.backedge ] ; 2 uses
  %.not = icmp eq ptr %.tr146, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.a = tail call fastcc noundef i32 @_ZN6hermes12_GLOBAL__N_15GenJS10needParensEPNS_6ESTree4NodeES4_NS0_8ChildPosE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.tr146, ptr noundef %.tr145, i32 noundef 0)
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.thread125, label %bb.c

bb.c:                                             ; preds = %bb.b, %tailrecurse
  %i.c = tail call noundef zeroext i1 %3(ptr noundef %.tr145) #12, !callees !186
  br i1 %i.c, label %.thread125, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.tr145, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !35   ; 8 uses
  %.not89.not133 = icmp eq ptr %.tr145, null      ; 5 uses
  %i.f = add i32 %i.e, -53
  %.not90.not155 = icmp ult i32 %i.f, -2
  %i.g = and i32 %i.e, -3
  %i.h = icmp ne i32 %i.g, 61
  %.not92.not157 = and i1 %.not90.not155, %i.h
  %i.i = icmp ne i32 %i.e, 62
  %.not93.not158 = and i1 %.not92.not157, %i.i
  %or.cond154 = or i1 %.not89.not133, %.not93.not158
  br i1 %or.cond154, label %bb.e, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.d, %bb.j, %bb.i, %bb.g, %bb.e
  %.sink = phi i64 [ 48, %bb.j ], [ 56, %bb.i ], [ 48, %bb.d ], [ 56, %bb.g ], [ 56, %bb.e ]
  %i.j = getelementptr inbounds nuw i8, ptr %.tr145, i64 %.sink
  %.tr145.be = load ptr, ptr %i.j, align 8, !tbaa !60
  br label %tailrecurse

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ne i32 %i.e, 54
  %.not94.not = or i1 %.not89.not133, %i.k
  br i1 %.not94.not, label %bb.f, label %tailrecurse.backedge

bb.f:                                             ; preds = %bb.e
  %i.l = icmp ne i32 %i.e, 56
  %.not95.not = or i1 %.not89.not133, %i.l
  br i1 %.not95.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.tr145, i64 64
  %i.n = load i8, ptr %i.m, align 8, !tbaa !71, !range !46, !noundef !19
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %.thread125, label %tailrecurse.backedge

bb.h:                                             ; preds = %bb.f
  %i.p = icmp ne i32 %i.e, 55
  %.not96.not = or i1 %.not89.not133, %i.p
  br i1 %.not96.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %.tr145, i64 64
  %i.r = load i8, ptr %i.q, align 8, !tbaa !187, !range !46, !noundef !19
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.thread125, label %tailrecurse.backedge

bb.j:                                             ; preds = %bb.h
  %i.t = icmp ne i32 %i.e, 58
  %.not97.not = or i1 %.not89.not133, %i.t
  br i1 %.not97.not, label %bb.k, label %tailrecurse.backedge

bb.k:                                             ; preds = %bb.j
  %4 = icmp eq i32 %i.e, 74
  br i1 %4, label %bb.l, label %.thread125

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.tr145, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !77
  br label %tailrecurse162

.thread125:                                       ; preds = %bb.i, %bb.g, %bb.c, %bb.b, %bb.k
  %.10 = phi i1 [ false, %bb.k ], [ false, %bb.g ], [ true, %bb.c ], [ false, %bb.b ], [ false, %bb.i ]
  ret i1 %.10
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @"_ZZN6hermes12_GLOBAL__N_15GenJS10needParensEPNS_6ESTree4NodeES4_NS0_8ChildPosEEN3$_08__invokeES4_"(ptr nofree noundef readonly captures(none) %0) #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35
  switch i32 %i.b, label %bb.b [
    i32 4, label %"_ZZN6hermes12_GLOBAL__N_15GenJS10needParensEPNS_6ESTree4NodeES4_NS0_8ChildPosEENK3$_0clES4_.exit"
    i32 78, label %"_ZZN6hermes12_GLOBAL__N_15GenJS10needParensEPNS_6ESTree4NodeES4_NS0_8ChildPosEENK3$_0clES4_.exit"
    i32 43, label %"_ZZN6hermes12_GLOBAL__N_15GenJS10needParensEPNS_6ESTree4NodeES4_NS0_8ChildPosEENK3$_0clES4_.exit"
    i32 94, label %"_ZZN6hermes12_GLOBAL__N_15GenJS10needParensEPNS_6ESTree4NodeES4_NS0_8ChildPosEENK3$_0clES4_.exit"
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZZN6hermes12_GLOBAL__N_15GenJS10needParensEPNS_6ESTree4NodeES4_NS0_8ChildPosEENK3$_0clES4_.exit"

"_ZZN6hermes12_GLOBAL__N_15GenJS10needParensEPNS_6ESTree4NodeES4_NS0_8ChildPosEENK3$_0clES4_.exit": ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %i.c = phi i1 [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ false, %bb.b ], [ true, %bb.a ]
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef range(i32 0, 19) i32 @_ZN6hermes12_GLOBAL__N_119getBinaryPrecedenceEN4llvh9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #8 {
bb.a:
  switch i64 %1, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.thread [
    i64 2, label %_ZNK4llvh9StringRef6equalsES0_.exit.i167
    i64 1, label %_ZNK4llvh9StringRef6equalsES0_.exit.i160
    i64 3, label %_ZNK4llvh9StringRef6equalsES0_.exit.i111
    i64 10, label %_ZNK4llvh9StringRef6equalsES0_.exit.i
  ]

_ZNK4llvh9StringRef6equalsES0_.exit.i167:         ; preds = %bb.a
  %i.a = load i16, ptr %0, align 1
  %i.b = icmp ne i16 %i.a, 10794
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN4llvh12StringSwitchIN6hermes12_GLOBAL__N_110PrecedenceES3_E7DefaultES3_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i125

_ZNK4llvh9StringRef6equalsES0_.exit.i160:         ; preds = %bb.a
  %lhsc = load i8, ptr %0, align 1
  %switch.tableidx = add i8 %lhsc, -37            ; 2 uses
  %i.e = icmp ult i8 %switch.tableidx, 88
  br i1 %i.e, label %switch.lookup, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.thread

_ZNK4llvh9StringRef6equalsES0_.exit.i125:         ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i167
  %i.f = load i16, ptr %0, align 1
  %i.g = icmp ne i16 %i.f, 15420
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvh12StringSwitchIN6hermes12_GLOBAL__N_110PrecedenceES3_E7DefaultES3_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i118

_ZNK4llvh9StringRef6equalsES0_.exit.i118:         ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i125
  %i.j = load i16, ptr %0, align 1
  %i.k = icmp ne i16 %i.j, 15934
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZN4llvh12StringSwitchIN6hermes12_GLOBAL__N_110PrecedenceES3_E7DefaultES3_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i90

_ZNK4llvh9StringRef6equalsES0_.exit.i111:         ; preds = %bb.a
  %i.n = load i16, ptr %0, align 1
  %i.o = xor i16 %i.n, 15934
  %i.p = getelementptr i8, ptr %0, i64 2
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i16
  %i.s = xor i16 %i.r, 62
  %i.t = or i16 %i.o, %i.s
  %i.u = icmp ne i16 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZN4llvh12StringSwitchIN6hermes12_GLOBAL__N_110PrecedenceES3_E7DefaultES3_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i62

_ZNK4llvh9StringRef6equalsES0_.exit.i90:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i118
  %i.x = load i16, ptr %0, align 1
  %i.y = icmp ne i16 %i.x, 15676
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZN4llvh12StringSwitchIN6hermes12_GLOBAL__N_110PrecedenceES3_E7DefaultES3_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i83

_ZNK4llvh9StringRef6equalsES0_.exit.i83:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i90
  %i.ab = load i16, ptr %0, align 1
  %i.ac = icmp ne i16 %i.ab, 15678
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZN4llvh12StringSwitchIN6hermes12_GLOBAL__N_110PrecedenceES3_E7DefaultES3_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i76

_ZNK4llvh9StringRef6equalsES0_.exit.i76:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i83
  %i.af = load i16, ptr %0, align 1
  %i.ag = icmp ne i16 %i.af, 15677
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZN4llvh12StringSwitchIN6hermes12_GLOBAL__N_110PrecedenceES3_E7DefaultES3_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i69

_ZNK4llvh9StringRef6equalsES0_.exit.i69:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i76
  %i.aj = load i16, ptr %0, align 1
  %i.ak = icmp ne i16 %i.aj, 15649
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZN4llvh12StringSwitchIN6hermes12_GLOBAL__N_110PrecedenceES3_E7DefaultES3_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i27

_ZNK4llvh9StringRef6equalsES0_.exit.i62:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i111
  %i.an = load i16, ptr %0, align 1
  %i.ao = xor i16 %i.an, 15677
  %i.ap = getelementptr i8, ptr %0, i64 2
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i16
  %i.as = xor i16 %i.ar, 61
  %i.at = or i16 %i.ao, %i.as
  %i.au = icmp ne i16 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_ZN4llvh12StringSwitchIN6hermes12_GLOBAL__N_110PrecedenceES3_E7DefaultES3_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i55

_ZNK4llvh9StringRef6equalsES0_.exit.i55:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i62
  %i.ax = load i16, ptr %0, align 1
  %i.ay = xor i16 %i.ax, 15649
  %i.az = getelementptr i8, ptr %0, i64 2
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i16
  %i.bc = xor i16 %i.bb, 61
  %i.bd = or i16 %i.ay, %i.bc
  %i.be = icmp ne i16 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZN4llvh12StringSwitchIN6hermes12_GLOBAL__N_110PrecedenceES3_E7DefaultES3_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.thread

_ZNK4llvh9StringRef6equalsES0_.exit.i27:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i69
  %i.bh = load i16, ptr %0, align 1
  %i.bi = icmp ne i16 %i.bh, 9766
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_ZN4llvh12StringSwitchIN6hermes12_GLOBAL__N_110PrecedenceES3_E7DefaultES3_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i20

_ZNK4llvh9StringRef6equalsES0_.exit.i20:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i27
  %i.bl = load i16, ptr %0, align 1
  %i.bm = icmp ne i16 %i.bl, 31868
  %i.bn = zext i1 %i.bm to i32
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_ZN4llvh12StringSwitchIN6hermes12_GLOBAL__N_110PrecedenceES3_E7DefaultES3_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i13

_ZNK4llvh9StringRef6equalsES0_.exit.i13:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i20
  %i.bp = load i16, ptr %0, align 1
  %i.bq = icmp ne i16 %i.bp, 16191
  %i.br = zext i1 %i.bq to i32
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_ZN4llvh12StringSwitchIN6hermes12_GLOBAL__N_110PrecedenceES3_E7DefaultES3_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i6

_ZNK4llvh9StringRef6equalsES0_.exit.i6:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i13
  %i.bt = load i16, ptr %0, align 1
  %i.bu = icmp ne i16 %i.bt, 28265
  %i.bv = zext i1 %i.bu to i32
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %_ZN4llvh12StringSwitchIN6hermes12_GLOBAL__N_110PrecedenceES3_E7DefaultES3_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.thread

_ZNK4llvh9StringRef6equalsES0_.exit.i.thread:     ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i160, %bb.a, %_ZNK4llvh9StringRef6equalsES0_.exit.i55, %_ZNK4llvh9StringRef6equalsES0_.exit.i6
  br label %_ZN4llvh12StringSwitchIN6hermes12_GLOBAL__N_110PrecedenceES3_E7DefaultES3_.exit

_ZNK4llvh9StringRef6equalsES0_.exit.i:            ; preds = %bb.a
  %i.bx = load i64, ptr %0, align 1
  %i.by = xor i64 %i.bx, 7305804385369681513
  %i.bz = getelementptr i8, ptr %0, i64 8
  %i.ca = load i16, ptr %i.bz, align 1
  %i.cb = zext i16 %i.ca to i64
  %i.cc = xor i64 %i.cb, 26223
  %i.cd = or i64 %i.by, %i.cc
  %i.ce = icmp ne i64 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  %i.cg = icmp eq i32 %i.cf, 0
  %spec.select = select i1 %i.cg, i32 14, i32 0
  br label %_ZN4llvh12StringSwitchIN6hermes12_GLOBAL__N_110PrecedenceES3_E7DefaultES3_.exit

switch.lookup:                                    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i160
  %i.ch = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6hermes12_GLOBAL__N_119getBinaryPrecedenceEN4llvh9StringRefE, i64 %i.ch
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN4llvh12StringSwitchIN6hermes12_GLOBAL__N_110PrecedenceES3_E7DefaultES3_.exit

_ZN4llvh12StringSwitchIN6hermes12_GLOBAL__N_110PrecedenceES3_E7DefaultES3_.exit: ; preds = %switch.lookup, %_ZNK4llvh9StringRef6equalsES0_.exit.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i6, %_ZNK4llvh9StringRef6equalsES0_.exit.i13, %_ZNK4llvh9StringRef6equalsES0_.exit.i20, %_ZNK4llvh9StringRef6equalsES0_.exit.i27, %_ZNK4llvh9StringRef6equalsES0_.exit.i55, %_ZNK4llvh9StringRef6equalsES0_.exit.i62, %_ZNK4llvh9StringRef6equalsES0_.exit.i69, %_ZNK4llvh9StringRef6equalsES0_.exit.i76, %_ZNK4llvh9StringRef6equalsES0_.exit.i83, %_ZNK4llvh9StringRef6equalsES0_.exit.i90, %_ZNK4llvh9StringRef6equalsES0_.exit.i111, %_ZNK4llvh9StringRef6equalsES0_.exit.i118, %_ZNK4llvh9StringRef6equalsES0_.exit.i125, %_ZNK4llvh9StringRef6equalsES0_.exit.i167, %_ZNK4llvh9StringRef6equalsES0_.exit.i.thread
  %.0.i = phi i32 [ %spec.select, %_ZNK4llvh9StringRef6equalsES0_.exit.i ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.i.thread ], [ 14, %_ZNK4llvh9StringRef6equalsES0_.exit.i6 ], [ 7, %_ZNK4llvh9StringRef6equalsES0_.exit.i13 ], [ 8, %_ZNK4llvh9StringRef6equalsES0_.exit.i20 ], [ 9, %_ZNK4llvh9StringRef6equalsES0_.exit.i27 ], [ 15, %_ZNK4llvh9StringRef6equalsES0_.exit.i118 ], [ 15, %_ZNK4llvh9StringRef6equalsES0_.exit.i125 ], [ 15, %_ZNK4llvh9StringRef6equalsES0_.exit.i111 ], [ 13, %_ZNK4llvh9StringRef6equalsES0_.exit.i55 ], [ 13, %_ZNK4llvh9StringRef6equalsES0_.exit.i62 ], [ 13, %_ZNK4llvh9StringRef6equalsES0_.exit.i69 ], [ 13, %_ZNK4llvh9StringRef6equalsES0_.exit.i76 ], [ 14, %_ZNK4llvh9StringRef6equalsES0_.exit.i83 ], [ 14, %_ZNK4llvh9StringRef6equalsES0_.exit.i90 ], [ %switch.ext, %switch.lookup ], [ 18, %_ZNK4llvh9StringRef6equalsES0_.exit.i167 ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6hermes12_GLOBAL__N_15GenJS5visitEPNS_6ESTree18WhileStatementNodeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18, !nonnull !19, !align !20 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 2 uses
end_hunk_0
