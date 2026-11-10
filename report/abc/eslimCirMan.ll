Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/eslimCirMan?download=true
inline.NumInlined: 2087
inline.NumDeleted: 787
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
@.str.8 = private unnamed_addr constant [6 x i8] c"oai21\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"nand3\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"aoi22\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"oai22\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.12 = private unnamed_addr constant [68 x i8] c"Error: A node with a function not part of the library was detected.\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"Inputs:\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c" :\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"Outputs:\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"\0AForbidden pairs:\00", align 1
@_ZZN5eSLIM11eSLIMCirMan10compressTTEmjE8filters1 = internal unnamed_addr constant [5 x i64] [i64 1229782938247303441, i64 217020518514230019, i64 4222189076152335, i64 1095216660735, i64 65535], align 16
@_ZZN5eSLIM11eSLIMCirMan10compressTTEmjE8filters2 = internal unnamed_addr constant [5 x i64] [i64 4919131752989213764, i64 3472328296227680304, i64 1080880403494997760, i64 71776119077928960, i64 281470681743360], align 16
@_ZZN5eSLIM11eSLIMCirMan10compressTTEmjE6shifts = internal unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16], align 16
@_ZZN5eSLIM11eSLIMCirMan17removeInputFromTTEmjjE14isTruePatterns = internal unnamed_addr constant [6 x i64] [i64 -6148914691236517206, i64 -3689348814741910324, i64 -1085102592571150096, i64 -71777214294589696, i64 -281470681808896, i64 -4294967296], align 16
@_ZZN5eSLIM11eSLIMCirMan17removeInputFromTTEmjjE15isFalsePatterns = internal unnamed_addr constant [6 x i64] [i64 6148914691236517205, i64 3689348814741910323, i64 1085102592571150095, i64 71777214294589695, i64 281470681808895, i64 4294967295], align 16
@_ZZN5eSLIM11eSLIMCirMan17removeInputFromTTEmjjE12firstTrueIn1 = internal unnamed_addr constant [6 x i8] c"\01\02\04\08\10 ", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"Extending GIA object storage: %d -> %d.\0A\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"unordered_map::at\00", align 1
@.str.26 = private unnamed_addr constant [80 x i8] c"vector<bool>::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@str = private unnamed_addr constant [65 x i8] c"Hard limit on the number of nodes (2^29) is reached. Quitting...\00", align 1

@_ZN5eSLIM11eSLIMCirObjC1EiOSt6vectorIPS0_SaIS2_EE = unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN5eSLIM11eSLIMCirObjC2EiOSt6vectorIPS0_SaIS2_EE
@_ZN5eSLIM11eSLIMCirManC1Ei = unnamed_addr alias void (ptr, i32), ptr @_ZN5eSLIM11eSLIMCirManC2Ei
@_ZN5eSLIM11eSLIMCirManC1ERS0_RKNS_10SubcircuitE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN5eSLIM11eSLIMCirManC2ERS0_RKNS_10SubcircuitE
@_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN5eSLIM11eSLIMCirManC2EP10Gia_Man_t_
@_ZN5eSLIM11eSLIMCirManC1EP10Abc_Ntk_t_b = unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN5eSLIM11eSLIMCirManC2EP10Abc_Ntk_t_b

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5eSLIM11eSLIMCirObjC2EiOSt6vectorIPS0_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(124) initializes((0, 4), (8, 32)) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !43     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIPN5eSLIM11eSLIMCirObjESaIS2_EEC2EmRKS3_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.c, label %_ZNSt15__new_allocatorIPN5eSLIM11eSLIMCirObjEE8allocateEmPKv.exit.i.i.i.i, !prof !44

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt15__new_allocatorIPN5eSLIM11eSLIMCirObjEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #29
  br label %_ZNSt12_Vector_baseIPN5eSLIM11eSLIMCirObjESaIS2_EEC2EmRKS3_.exit.i

_ZNSt12_Vector_baseIPN5eSLIM11eSLIMCirObjESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt15__new_allocatorIPN5eSLIM11eSLIMCirObjEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt15__new_allocatorIPN5eSLIM11eSLIMCirObjEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 6 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.l, ptr %i.m, align 8, !tbaa !45
  %i.n = load ptr, ptr %2, align 8, !tbaa !46     ; 3 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = icmp sgt i64 %i.r, 8
  br i1 %i.s, label %bb.d, label %bb.e, !prof !47

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIPN5eSLIM11eSLIMCirObjESaIS2_EEC2EmRKS3_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.j, ptr align 8 %i.n, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EEC2ERKS4_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIPN5eSLIM11eSLIMCirObjESaIS2_EEC2EmRKS3_.exit.i
  %i.t = icmp eq i64 %i.r, 8
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EEC2ERKS4_.exit

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !49
  store ptr %i.u, ptr %i.j, align 8, !tbaa !49
  br label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EEC2ERKS4_.exit

_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EEC2ERKS4_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.v = getelementptr inbounds i8, ptr %i.j, i64 %i.r
  store ptr %i.v, ptr %i.k, align 8, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.w, align 8, !tbaa !171
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.x, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.w, ptr %i.y, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.w, ptr %i.z, align 8, !tbaa !52
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.aa, align 8, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ab, i8 0, i64 36, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK5eSLIM11eSLIMCirObj10getNFaninsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(124) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK5eSLIM11eSLIMCirObj11getTTLengthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(124) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = and i64 %i.h, 4294967295
  %i.j = shl nuw i64 1, %i.i
  %i.k = trunc i64 %i.j to i32
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK5eSLIM11eSLIMCirObj5getIdEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(124) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.b = load i32, ptr %i.a, align 4, !tbaa !54
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5eSLIM11eSLIMCirManC2Ei(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((0, 44), (48, 56)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.b, align 8, !tbaa !62
  %i.c = add nsw i32 %1, 1                        ; 2 uses
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = icmp slt i32 %1, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = shl nuw nsw i64 %i.d, 3
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #29 ; 6 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !63   ; 8 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !64   ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = ptrtoaddr ptr %i.j to i64
  %i.n = add i64 %i.l, -8
  %i.o = sub i64 %i.n, %i.m                       ; 2 uses
  %i.p = lshr i64 %i.o, 3
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.o, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.q, 4611686018427387900      ; 3 uses
  %i.r = shl i64 %n.vec, 3                        ; 2 uses
  %i.s = getelementptr i8, ptr %i.i, i64 %i.r
  %i.t = getelementptr i8, ptr %i.j, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.u ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.j, i64 %i.u ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.v = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !49, !alias.scope !185
  %wide.load18 = load <2 x i64>, ptr %i.v, align 8, !tbaa !49, !alias.scope !185
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !49, !alias.scope !184
  store <2 x i64> %wide.load18, ptr %i.w, align 8, !tbaa !49, !alias.scope !184
  %3 = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !49, !alias.scope !185
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !49, !alias.scope !185
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.preheader36

.lr.ph.i.i.i.i.preheader36:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.s, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader36, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader36 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader36 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.y = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !49, !alias.scope !185
  store i64 %i.y, ptr %.012.i.i.i.i, align 8, !tbaa !49, !alias.scope !184
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !49, !alias.scope !185
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.k
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !176

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.j, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !68
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.j to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ae) #30
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.i, ptr %i.a, align 8, !tbaa !63
  store ptr %i.i, ptr %i.g, align 8, !tbaa !64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.d
  store ptr %i.af, ptr %i.f, align 8, !tbaa !68
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.ag = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #29, !noalias !186 ; 3 uses
  call void @_ZN5eSLIM11eSLIMCirObjC1EiOSt6vectorIPS0_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(124) %i.ag, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %2) #31, !noalias !186
  %i.ah = load ptr, ptr %2, align 8, !tbaa !43    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !45
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #30
  br label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EED2Ev.exit

_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !64 ; 6 uses
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !68
  %.not.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EED2Ev.exit
  %i.aq = ptrtoint ptr %i.ag to i64
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !49
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !64
  br label %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EED2Ev.exit
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !63  ; 7 uses
  %i.at = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64               ; 3 uses
  %i.av = sub i64 %i.at, %i.au                    ; 3 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.ax = ashr exact i64 %i.av, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = call i64 @llvm.umin.i64(i64 %i.ay, i64 1152921504606846975)
  %i.bb = select i1 %i.az, i64 1152921504606846975, i64 %i.ba ; 3 uses
  %.not.i.i1 = icmp ne i64 %i.bb, 0
  call void @llvm.assume(i1 %.not.i.i1)
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #29 ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.av
  %i.bf = ptrtoint ptr %i.ag to i64
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !49
  %.not10.i.i.i.i2 = icmp eq ptr %i.as, %i.ao
  br i1 %.not10.i.i.i.i2, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i3.preheader

.lr.ph.i.i.i.i3.preheader:                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bg = add i64 %i.at, -8
  %i.bh = sub i64 %i.bg, %i.au                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check21 = icmp ult i64 %i.bh, 24
  br i1 %min.iters.check21, label %.lr.ph.i.i.i.i3.preheader35, label %vector.ph22

vector.ph22:                                      ; preds = %.lr.ph.i.i.i.i3.preheader
  %n.vec23 = and i64 %i.bj, 4611686018427387900   ; 3 uses
  %i.bk = shl i64 %n.vec23, 3                     ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bd, i64 %i.bk  ; 2 uses
  %i.bm = getelementptr i8, ptr %i.as, i64 %i.bk
  br label %vector.body24

vector.body24:                                    ; preds = %vector.body24, %vector.ph22
  %index25 = phi i64 [ 0, %vector.ph22 ], [ %index.next30, %vector.body24 ] ; 2 uses
  %i.bn = shl i64 %index25, 3                     ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.bd, i64 %i.bn ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.as, i64 %i.bn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.bo = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load28 = load <2 x i64>, ptr %next.gep27, align 8, !tbaa !49, !alias.scope !188
  %wide.load29 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !49, !alias.scope !188
  %i.bp = getelementptr i8, ptr %next.gep26, i64 16
  store <2 x i64> %wide.load28, ptr %next.gep26, align 8, !tbaa !49, !alias.scope !187
  store <2 x i64> %wide.load29, ptr %i.bp, align 8, !tbaa !49, !alias.scope !187
  %4 = getelementptr i8, ptr %next.gep27, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep27, align 8, !tbaa !49, !alias.scope !188
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !49, !alias.scope !188
  %index.next30 = add nuw i64 %index25, 4         ; 2 uses
  %i.bq = icmp eq i64 %index.next30, %n.vec23
  br i1 %i.bq, label %middle.block31, label %vector.body24, !llvm.loop !182

middle.block31:                                   ; preds = %vector.body24
  %cmp.n32 = icmp eq i64 %i.bj, %n.vec23
  br i1 %cmp.n32, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i3.preheader35

.lr.ph.i.i.i.i3.preheader35:                      ; preds = %.lr.ph.i.i.i.i3.preheader, %middle.block31
  %.012.i.i.i.i4.ph = phi ptr [ %i.bd, %.lr.ph.i.i.i.i3.preheader ], [ %i.bl, %middle.block31 ]
  %.0911.i.i.i.i5.ph = phi ptr [ %i.as, %.lr.ph.i.i.i.i3.preheader ], [ %i.bm, %middle.block31 ]
  br label %.lr.ph.i.i.i.i3

.lr.ph.i.i.i.i3:                                  ; preds = %.lr.ph.i.i.i.i3.preheader35, %.lr.ph.i.i.i.i3
  %.012.i.i.i.i4 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i3 ], [ %.012.i.i.i.i4.ph, %.lr.ph.i.i.i.i3.preheader35 ] ; 2 uses
  %.0911.i.i.i.i5 = phi ptr [ %i.bs, %.lr.ph.i.i.i.i3 ], [ %.0911.i.i.i.i5.ph, %.lr.ph.i.i.i.i3.preheader35 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.br = load i64, ptr %.0911.i.i.i.i5, align 8, !tbaa !49, !alias.scope !188
  store i64 %i.br, ptr %.012.i.i.i.i4, align 8, !tbaa !49, !alias.scope !187
  store ptr null, ptr %.0911.i.i.i.i5, align 8, !tbaa !49, !alias.scope !188
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i5, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4, i64 8 ; 2 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.bs, %i.ao
  br i1 %.not.i.i.i.i6, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i3, !llvm.loop !183

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i3, %middle.block31, %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bd, %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.bl, %middle.block31 ], [ %i.bt, %.lr.ph.i.i.i.i3 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.as, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !68
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.bx) #30
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.i
  store ptr %i.bd, ptr %i.a, align 8, !tbaa !63
  store ptr %i.bu, ptr %i.an, align 8, !tbaa !64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.by, ptr %i.f, align 8, !tbaa !68
  br label %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, %bb.f
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5eSLIM11eSLIMCirManC2ERS0_RKNS_10SubcircuitE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((0, 44), (48, 56)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::vector.10", align 8    ; 6 uses
  %4 = alloca %"class.std::vector.10", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !72
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 2
  %i.q = add nuw nsw i64 %i.p, %i.h
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !71
  %i.t = load ptr, ptr %2, align 8, !tbaa !72
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = lshr exact i64 %i.w, 2
  %i.y = add nuw i64 %i.q, %i.x
  %i.z = trunc i64 %i.y to i32
  tail call void @_ZN5eSLIM11eSLIMCirManC2Ei(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %i.z)
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !72
  %.not61 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not61, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ad = load ptr, ptr %2, align 8, !tbaa !73    ; 2 uses
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !73  ; 2 uses
  %.not54 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not54, label %.preheader, label %.lr.ph57

.lr.ph57:                                         ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.aj = tail call noundef i32 @_ZN5eSLIM11eSLIMCirMan5addPiEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !72  ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !74
  %i.an = sext i32 %i.am to i64
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !63
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !49
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  store i32 %i.aj, ptr %i.ar, align 8, !tbaa !191
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ak to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 2
  %i.ax = icmp ugt i64 %i.aw, %indvars.iv.next
  br i1 %i.ax, label %bb.b, label %._crit_edge, !llvm.loop !189

.preheader:                                       ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %._crit_edge
  %i.ay = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.az = load ptr, ptr %i.i, align 8, !tbaa !72  ; 2 uses
  %.not62 = icmp eq ptr %i.ay, %i.az
  br i1 %.not62, label %._crit_edge60, label %.lr.ph59

.lr.ph59:                                         ; preds = %.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.k

bb.c:                                             ; preds = %.lr.ph57, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.sroa.035.055 = phi ptr [ %i.ad, %.lr.ph57 ], [ %i.cb, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %i.bg = load i32, ptr %.sroa.035.055, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.bh = sext i32 %i.bg to i64                   ; 3 uses
  %i.bi = load ptr, ptr %i.af, align 8, !tbaa !63
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !49 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !46 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !46 ; 2 uses
  %.not3841 = icmp eq ptr %i.bm, %i.bo
  br i1 %.not3841, label %bb.d, label %.lr.ph44

._crit_edge45:                                    ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store ptr %i.cz, ptr %i.ag, align 8
  store ptr %i.cx, ptr %i.ah, align 8
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !63
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.bh
  %.pre76 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !49
  %i.bp = ptrtoint ptr %i.cx to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge45, %bb.c
  %i.bq = phi i64 [ %i.bp, %._crit_edge45 ], [ 0, %bb.c ]
  %i.br = phi ptr [ %.pre76, %._crit_edge45 ], [ %i.bk, %bb.c ]
  %.lcssa = phi ptr [ %i.cy, %._crit_edge45 ], [ null, %bb.c ] ; 4 uses
  store ptr %.lcssa, ptr %4, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 80
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !75
  %i.bu = call noundef i32 @_ZN5eSLIM11eSLIMCirMan7addNodeERKSt6vectorIiSaIiEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bt)
  %i.bv = load ptr, ptr %i.af, align 8, !tbaa !63
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bh
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !49
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 96
  store i32 %i.bu, ptr %i.by, align 8, !tbaa !191
  %.not.i.i.i = icmp eq ptr %.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bz = ptrtoint ptr %.lcssa to i64
  %i.ca = sub i64 %i.bq, %i.bz
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa, i64 noundef %i.ca) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.035.055, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.cb, %i.ae
end_hunk_0
begin_hunk_1_@_ZN5eSLIM11eSLIMCirManC2ERS0_RKNS_10SubcircuitE:bb.a
  br i1 %i.cl, label %bb.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #28
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.cm = ashr exact i64 %i.ck, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 1)
  %i.cn = add nsw i64 %.sroa.speculated.i.i.i, %i.cm ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.cm
  %i.cp = tail call i64 @llvm.umin.i64(i64 %i.cn, i64 2305843009213693951)
  %i.cq = select i1 %i.co, i64 2305843009213693951, i64 %i.cp ; 3 uses
  %.not.i.i.i30 = icmp ne i64 %i.cq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i30)
  %i.cr = shl nuw nsw i64 %i.cq, 2
  %i.cs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #29 ; 4 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 %i.ck ; 2 uses
  %i.cu = load i32, ptr %i.cg, align 4, !tbaa !74
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !74
  %i.cv = icmp sgt i64 %i.ck, 0
  br i1 %i.cv, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cs, ptr align 4 %i.ce, i64 %i.ck, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.ck) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cq
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.cx = phi ptr [ %i.cc, %bb.f ], [ %i.cw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 3 uses
  %.pn = phi ptr [ %i.cd, %bb.f ], [ %i.ct, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.cy = phi ptr [ %i.ce, %bb.f ], [ %i.cs, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.031.042, i64 8 ; 2 uses
  %.not38 = icmp eq ptr %i.da, %i.bo
  br i1 %.not38, label %._crit_edge45, label %.lr.ph44

._crit_edge60:                                    ; preds = %bb.k, %.preheader
  ret void

bb.k:                                             ; preds = %.lr.ph59, %bb.k
  %indvars.iv73 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next74, %bb.k ] ; 2 uses
  %i.db = phi ptr [ %i.az, %.lr.ph59 ], [ %i.dx, %bb.k ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv73
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !74
  %i.de = sext i32 %i.dd to i64
  %i.df = load ptr, ptr %i.ba, align 8, !tbaa !63
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.de
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !49
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !191
  %i.dk = load i32, ptr %i.bb, align 4, !tbaa !76
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.bb, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.dm = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #29 ; 4 uses
  store ptr %i.dm, ptr %3, align 8, !tbaa !72
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4 ; 2 uses
  store ptr %i.dn, ptr %i.bc, align 8, !tbaa !77
  store i32 %i.dj, ptr %i.dm, align 4, !tbaa !74
  store ptr %i.dn, ptr %i.bd, align 8, !tbaa !71
  %i.do = call noundef i32 @_ZN5eSLIM11eSLIMCirMan7addNodeERKSt6vectorIiSaIiEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 2) ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef 4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.dp = load ptr, ptr %i.bf, align 8, !tbaa !78
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !49
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 88
  %i.dt = load i32, ptr %i.be, align 8, !tbaa !74
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !74
  %i.dv = tail call i32 @llvm.smax.i32(i32 %i.dt, i32 %i.du)
  store i32 %i.dv, ptr %i.be, align 8, !tbaa !79
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.dw = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.dx = load ptr, ptr %i.i, align 8, !tbaa !72  ; 2 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = ashr exact i64 %i.ea, 2
  %i.ec = icmp ugt i64 %i.eb, %indvars.iv.next74
  br i1 %i.ec, label %bb.k, label %._crit_edge60, !llvm.loop !190
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN5eSLIM11eSLIMCirMan5addPiEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 6 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !80
  %i.b = add i32 %i.a, 1
  store i32 %i.b, ptr %0, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.l = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #29, !noalias !199 ; 6 uses
  call void @_ZN5eSLIM11eSLIMCirObjC1EiOSt6vectorIPS0_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(124) %i.l, i32 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1) #31, !noalias !199
  %i.m = load ptr, ptr %1, align 8, !tbaa !43     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #30
  br label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EED2Ev.exit

_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store i64 2, ptr %i.s, align 8, !tbaa !75
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  store i32 0, ptr %i.t, align 8, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !82   ; 2 uses
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 8, !tbaa !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 100
  store i32 %i.v, ptr %i.x, align 4, !tbaa !54
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !64   ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !68
  %.not.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EED2Ev.exit
  %i.ab = ptrtoint ptr %i.l to i64
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !64
  br label %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EED2Ev.exit

bb.d:                                             ; preds = %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EED2Ev.exit
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !63  ; 7 uses
  %i.ae = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i1 = icmp ne i64 %i.am, 0
  call void @llvm.assume(i1 %.not.i.i1)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #29 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  %i.aq = ptrtoint ptr %i.l to i64
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !49
  %.not10.i.i.i.i = icmp eq ptr %i.ad, %i.y
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.ar = add i64 %i.ae, -8
  %i.as = sub i64 %i.ar, %i.af                    ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3                       ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ao, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ad, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.ad, i64 %i.ay ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.az = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !49, !alias.scope !201
  %wide.load11 = load <2 x i64>, ptr %i.az, align 8, !tbaa !49, !alias.scope !201
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !49, !alias.scope !200
  store <2 x i64> %wide.load11, ptr %i.ba, align 8, !tbaa !49, !alias.scope !200
  %2 = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !49, !alias.scope !201
  store <2 x ptr> splat (ptr null), ptr %2, align 8, !tbaa !49, !alias.scope !201
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader13

.lr.ph.i.i.i.i.preheader13:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader13, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader13 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.bc = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !49, !alias.scope !201
  store i64 %i.bc, ptr %.012.i.i.i.i, align 8, !tbaa !49, !alias.scope !200
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !49, !alias.scope !201
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bd, %i.y
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !198

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ao, %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.aw, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ad, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.bg = load ptr, ptr %i.z, align 8, !tbaa !68
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.bi) #30
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.f
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !63
  store ptr %i.bf, ptr %i.d, align 8, !tbaa !64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bj, ptr %i.z, align 8, !tbaa !68
  br label %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, %bb.c
  ret i32 %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN5eSLIM11eSLIMCirMan7addNodeERKSt6vectorIiSaIiEEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.j = load ptr, ptr %1, align 8, !tbaa !73     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !73   ; 2 uses
  %.not38 = icmp eq ptr %i.j, %i.l
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE9push_backEOS2_.exit
  %i.o = add i32 %spec.select, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %i.o, %._crit_edge.loopexit ]
  %i.p = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #29, !noalias !209 ; 7 uses
  call void @_ZN5eSLIM11eSLIMCirObjC1EiOSt6vectorIPS0_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(124) %i.p, i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(24) %3) #31, !noalias !209
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  store i64 %2, ptr %i.q, align 8, !tbaa !75
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store i32 %.0.lcssa, ptr %i.r, align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !82   ; 2 uses
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 8, !tbaa !82
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 100 ; 4 uses
  store i32 %i.t, ptr %i.v, align 4, !tbaa !54
  %i.w = load ptr, ptr %1, align 8, !tbaa !73     ; 2 uses
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !73   ; 2 uses
  %.not3441 = icmp eq ptr %i.w, %i.x
  br i1 %.not3441, label %._crit_edge45, label %.lr.ph44

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE9push_backEOS2_.exit
  %i.y = phi ptr [ null, %.lr.ph ], [ %i.ax, %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE9push_backEOS2_.exit ] ; 5 uses
  %i.z = phi ptr [ null, %.lr.ph ], [ %i.ay, %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %i.aa = phi ptr [ null, %.lr.ph ], [ %i.aw, %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %.040 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE9push_backEOS2_.exit ]
  %.sroa.030.039 = phi ptr [ %i.j, %.lr.ph ], [ %i.bd, %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.ab = load i32, ptr %.sroa.030.039, align 4, !tbaa !74
  %i.ac = sext i32 %i.ab to i64
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !49 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %i.ag, ptr %i.m, align 8, !tbaa !42
  br label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE9push_backEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.ah = ptrtoint ptr %i.z to i64
  %i.ai = ptrtoint ptr %i.y to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 6 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.e, label %_ZNKSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #28
  unreachable

_ZNKSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.al = ashr exact i64 %i.aj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 1152921504606846975)
  %i.ap = select i1 %i.an, i64 1152921504606846975, i64 %i.ao ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #29 ; 5 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.aj ; 2 uses
  store ptr %i.af, ptr %i.as, align 8, !tbaa !49
  %i.at = icmp sgt i64 %i.aj, 0
  br i1 %i.at, label %bb.f, label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 8 %i.y, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.aj) #30
  br label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.ar, ptr %3, align 8, !tbaa !43
  store ptr %i.au, ptr %i.m, align 8, !tbaa !42
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap ; 2 uses
  store ptr %i.av, ptr %i.n, align 8, !tbaa !45
  br label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.c, %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.aw = phi ptr [ %i.ag, %bb.c ], [ %i.au, %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ax = phi ptr [ %i.y, %bb.c ], [ %i.ar, %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ay = phi ptr [ %i.z, %bb.c ], [ %i.av, %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 -8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !49
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !81
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.bc, i32 %.040) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.030.039, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bd, %i.l
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b

._crit_edge45:                                    ; preds = %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit, %._crit_edge
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !64  ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !68
  %.not.i.i12 = icmp eq ptr %i.be, %i.bg
  br i1 %.not.i.i12, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge45
  %i.bh = ptrtoint ptr %i.p to i64
  store i64 %i.bh, ptr %i.be, align 8, !tbaa !49
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bi, ptr %i.b, align 8, !tbaa !64
  br label %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EED2Ev.exit

bb.i:                                             ; preds = %._crit_edge45
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !63  ; 7 uses
  %i.bk = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64               ; 3 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 3 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775800
  br i1 %i.bn, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.bo = ashr exact i64 %i.bm, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %i.bp = add nsw i64 %.sroa.speculated.i.i, %i.bo ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bo
  %i.br = call i64 @llvm.umin.i64(i64 %i.bp, i64 1152921504606846975)
  %i.bs = select i1 %i.bq, i64 1152921504606846975, i64 %i.br ; 3 uses
  %.not.i.i13 = icmp ne i64 %i.bs, 0
  call void @llvm.assume(i1 %.not.i.i13)
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %i.bu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #29 ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bm
  %i.bw = ptrtoint ptr %i.p to i64
  store i64 %i.bw, ptr %i.bv, align 8, !tbaa !49
  %.not10.i.i.i.i = icmp eq ptr %i.bj, %i.be
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bx = add i64 %i.bk, -8
  %i.by = sub i64 %i.bx, %i.bl                    ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.by, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ca, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bu, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bj, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bu, i64 %i.ce ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.bj, i64 %i.ce ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.cf = getelementptr i8, ptr %next.gep68, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep68, align 8, !tbaa !49, !alias.scope !211
  %wide.load69 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !49, !alias.scope !211
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !49, !alias.scope !210
  store <2 x i64> %wide.load69, ptr %i.cg, align 8, !tbaa !49, !alias.scope !210
  %4 = getelementptr i8, ptr %next.gep68, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep68, align 8, !tbaa !49, !alias.scope !211
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !49, !alias.scope !211
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader71

.lr.ph.i.i.i.i.preheader71:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader71, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader71 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader71 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.ci = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !49, !alias.scope !211
  store i64 %i.ci, ptr %.012.i.i.i.i, align 8, !tbaa !49, !alias.scope !210
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !49, !alias.scope !211
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.cj, %i.be
  br i1 %.not.i.i.i.i14, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !208

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bu, %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.cc, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bj, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.cm = load ptr, ptr %i.bf, align 8, !tbaa !68
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.co) #30
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.k
  store ptr %i.bu, ptr %i.a, align 8, !tbaa !63
  store ptr %i.cl, ptr %i.b, align 8, !tbaa !64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs
  store ptr %i.cp, ptr %i.bf, align 8, !tbaa !68
  br label %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, %bb.h
  %i.cq = load ptr, ptr %3, align 8, !tbaa !43    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EED2Ev.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !45
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cv) #30
  br label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EED2Ev.exit

_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret i32 %i.i

.lr.ph44:                                         ; preds = %._crit_edge, %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit
  %.sroa.018.042 = phi ptr [ %i.ed, %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit ], [ %i.w, %._crit_edge ] ; 2 uses
  %i.cw = load i32, ptr %.sroa.018.042, align 4, !tbaa !74
  %i.cx = sext i32 %i.cw to i64
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cx
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !49 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 40 ; 3 uses
  %.02022.i.i = load ptr, ptr %i.db, align 8, !tbaa !83 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph44
  %i.dd = load i32, ptr %i.v, align 4, !tbaa !54  ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.m ] ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !49
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 100
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !54 ; 2 uses
  %i.di = icmp ult i32 %i.dd, %i.dh               ; 2 uses
  %.in.v.i.i = select i1 %i.di, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !83 ; 2 uses
  %.not.i.i15 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i15, label %._crit_edge.i.i, label %bb.m, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %bb.m
  br i1 %i.di, label %._crit_edge.thread.i.i, label %bb.o

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %.lr.ph44
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.dc, %.lr.ph44 ] ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !51
  %i.dl = icmp eq ptr %.019.lcssa29.i.i, %i.dk
  br i1 %i.dl, label %select.unfold.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread.i.i
  %i.dm = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #32
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !49
  %.phi.trans.insert19.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 100
  %.pre20.i = load i32, ptr %.phi.trans.insert19.i, align 4, !tbaa !54
  %.pre22.i = load i32, ptr %i.v, align 4, !tbaa !54
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i
  %i.dn = phi i32 [ %.pre22.i, %bb.n ], [ %i.dd, %._crit_edge.i.i ]
  %i.do = phi i32 [ %.pre20.i, %bb.n ], [ %i.dh, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.n ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.dp = icmp ult i32 %i.do, %i.dn
  br i1 %i.dp, label %select.unfold.i, label %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit

select.unfold.i:                                  ; preds = %bb.o, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %.019.lcssa28.i.i, %bb.o ] ; 3 uses
  %i.dq = icmp eq ptr %.sroa.4.0.i.ph.i, %i.dc
  br i1 %i.dq, label %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE10_M_insert_IS2_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i, label %bb.p

bb.p:                                             ; preds = %select.unfold.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !49
  %i.dt = load i32, ptr %i.v, align 4, !tbaa !54
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 100
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !54
  %i.dw = icmp ult i32 %i.dt, %i.dv
  br label %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE10_M_insert_IS2_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i

_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE10_M_insert_IS2_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i: ; preds = %bb.p, %select.unfold.i
  %i.dx = phi i1 [ %i.dw, %bb.p ], [ true, %select.unfold.i ]
  %i.dy = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  store ptr %i.p, ptr %i.dz, align 8, !tbaa !49
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dx, ptr noundef nonnull %i.dy, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.dc) #31
  %i.ea = getelementptr inbounds nuw i8, ptr %i.da, i64 72 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !53
  %i.ec = add i64 %i.eb, 1
  store i64 %i.ec, ptr %i.ea, align 8, !tbaa !53
  br label %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit

_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit: ; preds = %bb.o, %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE10_M_insert_IS2_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.018.042, i64 4 ; 2 uses
  %.not34 = icmp eq ptr %i.ed, %i.x
  br i1 %.not34, label %._crit_edge45, label %.lr.ph44
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN5eSLIM11eSLIMCirMan5addPoEib(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
_ZNSt6vectorIiSaIiEED2Ev.exit:
  %3 = alloca %"class.std::vector.10", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !76
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !76
  %i.d = select i1 %2, i64 1, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.e = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #29 ; 4 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !77
  store i32 %1, ptr %i.e, align 4, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.f, ptr %i.h, align 8, !tbaa !71
  %i.i = call noundef i32 @_ZN5eSLIM11eSLIMCirMan7addNodeERKSt6vectorIiSaIiEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.d)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.p = load i32, ptr %i.j, align 8, !tbaa !74
  %i.q = load i32, ptr %i.o, align 4, !tbaa !74
  %i.r = tail call i32 @llvm.smax.i32(i32 %i.p, i32 %i.q)
  store i32 %i.r, ptr %i.j, align 8, !tbaa !79
  ret i32 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5eSLIM11eSLIMCirManC2EP10Gia_Man_t_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((0, 44), (48, 56)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::vector.10", align 8    ; 6 uses
  %3 = alloca %"class.std::vector.10", align 8    ; 6 uses
  %i.a = getelementptr i8, ptr %1, i64 24         ; 3 uses
  %.val = load i32, ptr %i.a, align 8, !tbaa !102
  tail call void @_ZN5eSLIM11eSLIMCirManC2Ei(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.val)
  %i.b = getelementptr i8, ptr %1, i64 32         ; 4 uses
  %.val47 = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.c = getelementptr inbounds nuw i8, ptr %.val47, i64 8
  store i32 0, ptr %i.c, align 4, !tbaa !216
  %i.d = getelementptr i8, ptr %1, i64 16         ; 4 uses
  %i.e = getelementptr i8, ptr %1, i64 64         ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5eSLIM11eSLIMCirMan16processRedundantERKNS_10SubcircuitE:bb.a
  %.not.i.i.i26 = icmp eq ptr %.sroa.039.0.lcssa72, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit
  %i.gc = ptrtoint ptr %.sroa.16.0.lcssa to i64
  %i.gd = sub i64 %i.gc, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.039.0.lcssa72, i64 noundef %i.gd) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit, %bb.ao
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 3 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !80
  %i.d = sext i32 %i.c to i64
  %.idx = shl nsw i64 %i.d, 3                     ; 2 uses
  %i.e = add nsw i64 %.idx, 8                     ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = shl i64 %i.k, 29
  %i.m = ashr exact i64 %i.l, 29
  %.idx5 = and i64 %i.m, -8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !76
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 3
  %i.r = sub nsw i64 %.idx5, %i.q                 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.b, i64 %i.r ; 3 uses
  %.not.i.i = icmp eq i64 %i.e, %i.r
  br i1 %.not.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEEZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EvT_SF_T0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %gepdiff = sub nsw i64 %i.r, %i.e               ; 2 uses
  %i.t = ashr exact i64 %gepdiff, 3
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.t, i1 true)
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = xor i64 %i.v, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_T0_T1_"(ptr nonnull %i.f, ptr %i.s, i64 noundef %i.w)
  %i.x = icmp sgt i64 %gepdiff, 128
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_T0_"(ptr nonnull %i.f, ptr nonnull %i.y)
  %i.z = add nsw i64 %.idx, 136
  %.not6.i.i.i.i = icmp eq i64 %i.z, %i.r
  br i1 %.not6.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEEZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EvT_SF_T0_.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %i.y, %bb.c ] ; 2 uses
  tail call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.07.i.i.i.i)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.s
  br i1 %.not.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEEZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EvT_SF_T0_.exit", label %.lr.ph.i.i.i.i, !llvm.loop !315

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_T0_"(ptr nonnull %i.f, ptr %i.s)
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEEZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EvT_SF_T0_.exit"

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEEZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EvT_SF_T0_.exit": ; preds = %.lr.ph.i.i.i.i, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5eSLIM11eSLIMCirMan16applyDFSOrderingERKSt6vectorIiSaIiEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::vector.3", align 8     ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !148
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64   ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp ugt i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %.not83 = icmp eq ptr %i.f, %i.g
  br i1 %.not83, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.c
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #29 ; 3 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j ; 2 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !68
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %i.o = phi ptr [ null, %bb.c ], [ %i.n, %_ZNSt12_Vector_baseISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i ]
  %i.p = phi ptr [ null, %bb.c ], [ %i.m, %_ZNSt12_Vector_baseISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  br label %bb.d

.preheader45:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !76
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.t = phi ptr [ %i.p, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit ], [ %i.bk, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ] ; 11 uses
  %i.u = phi ptr [ %i.o, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit ], [ %i.bl, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ] ; 5 uses
  %i.v = phi ptr [ %i.p, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit ], [ %i.bm, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit ], [ %indvars.iv.next, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ] ; 3 uses
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = load i32, ptr %i.a, align 4, !tbaa !148
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !149
  %.not.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.y to i64
  store i64 %i.ab, ptr %i.v, align 8, !tbaa !49
  store ptr null, ptr %i.x, align 8, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.q, align 8, !tbaa !64
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ae = ptrtoint ptr %i.t to i64                ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.f
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 3 uses
  %.not.i.i17 = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i17)
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #29 ; 11 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  %i.ap = load i64, ptr %i.x, align 8, !tbaa !49
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !49
  store ptr null, ptr %i.x, align 8, !tbaa !49
  %.not10.i.i.i.i18 = icmp eq ptr %i.t, %i.u
  br i1 %.not10.i.i.i.i18, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i19.preheader

.lr.ph.i.i.i.i19.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.aq = add i64 %i.ad, -8
  %i.ar = sub i64 %i.aq, %i.ae                    ; 3 uses
  %i.as = lshr i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i19.preheader135, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i19.preheader
  %i.au = and i64 %i.ar, -8
  %i.av = add i64 %i.au, 8                        ; 2 uses
  %i.aw = getelementptr i8, ptr %i.an, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.t, i64 %i.av
  %bound0 = icmp ult ptr %i.an, %i.ax
  %bound1 = icmp ult ptr %i.t, %i.aw
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i19.preheader135, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.at, 4611686018427387900     ; 3 uses
  %i.ay = shl i64 %n.vec, 3                       ; 2 uses
  %i.az = getelementptr i8, ptr %i.an, i64 %i.ay  ; 2 uses
  %i.ba = getelementptr i8, ptr %i.t, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.bb ; 2 uses
  %next.gep102 = getelementptr i8, ptr %i.t, i64 %i.bb ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.bc = getelementptr i8, ptr %next.gep102, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep102, align 8, !tbaa !49, !alias.scope !337
  %wide.load103 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !49, !alias.scope !337
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !49, !alias.scope !338, !noalias !339
  store <2 x i64> %wide.load103, ptr %i.bd, align 8, !tbaa !49, !alias.scope !338, !noalias !339
  %3 = getelementptr i8, ptr %next.gep102, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep102, align 8, !tbaa !49, !alias.scope !337
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !49, !alias.scope !337
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !322

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i19.preheader135

.lr.ph.i.i.i.i19.preheader135:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i19.preheader, %middle.block
  %.012.i.i.i.i20.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i19.preheader ], [ %i.az, %middle.block ]
  %.0911.i.i.i.i21.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i19.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i.i.i.i19

.lr.ph.i.i.i.i19:                                 ; preds = %.lr.ph.i.i.i.i19.preheader135, %.lr.ph.i.i.i.i19
  %.012.i.i.i.i20 = phi ptr [ %i.bh, %.lr.ph.i.i.i.i19 ], [ %.012.i.i.i.i20.ph, %.lr.ph.i.i.i.i19.preheader135 ] ; 2 uses
  %.0911.i.i.i.i21 = phi ptr [ %i.bg, %.lr.ph.i.i.i.i19 ], [ %.0911.i.i.i.i21.ph, %.lr.ph.i.i.i.i19.preheader135 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.bf = load i64, ptr %.0911.i.i.i.i21, align 8, !tbaa !49, !alias.scope !336
  store i64 %i.bf, ptr %.012.i.i.i.i20, align 8, !tbaa !49, !alias.scope !335
  store ptr null, ptr %.0911.i.i.i.i21, align 8, !tbaa !49, !alias.scope !336
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i21, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i20, i64 8 ; 2 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.bg, %i.u
  br i1 %.not.i.i.i.i22, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i19, !llvm.loop !323

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i19, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.an, %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.az, %middle.block ], [ %i.bh, %.lr.ph.i.i.i.i19 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.af) #30
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.h
  store ptr %i.an, ptr %2, align 8, !tbaa !63
  store ptr %i.bi, ptr %i.q, align 8, !tbaa !64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al ; 2 uses
  store ptr %i.bj, ptr %i.l, align 8, !tbaa !68
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit
  %i.bk = phi ptr [ %i.t, %bb.e ], [ %i.an, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit ]
  %i.bl = phi ptr [ %i.u, %bb.e ], [ %i.bj, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit ] ; 2 uses
  %i.bm = phi ptr [ %i.ac, %bb.e ], [ %i.bi, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bn = load i32, ptr %0, align 8, !tbaa !80
  %i.bo = zext i32 %i.bn to i64
  %.not.not = icmp samesign ult i64 %indvars.iv, %i.bo
  br i1 %.not.not, label %bb.d, label %.preheader45, !llvm.loop !324

.preheader:                                       ; preds = %.lr.ph
  %.pre60.pre = load ptr, ptr %i.q, align 8, !tbaa !64 ; 2 uses
  %.pre.pre = load ptr, ptr %i.l, align 8, !tbaa !68 ; 2 uses
  %.not52 = icmp eq i32 %i.bz, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph51

.lr.ph:                                           ; preds = %.preheader45, %.lr.ph
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %.lr.ph ], [ 0, %.preheader45 ] ; 2 uses
  %i.bp = load ptr, ptr %1, align 8, !tbaa !72
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv55
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !74
  %i.bs = sext i32 %i.br to i64
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !49
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !43
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !49
  call void @_ZN5eSLIM11eSLIMCirMan19applyDFSOrderingRecEPNS_11eSLIMCirObjERSt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.by, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %i.bz = load i32, ptr %i.r, align 4, !tbaa !76  ; 3 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = icmp samesign ult i64 %indvars.iv.next56, %i.ca
  br i1 %i.cb, label %.lr.ph, label %.preheader, !llvm.loop !325

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit16, %.preheader45, %.preheader
  %i.cc = phi ptr [ %i.bl, %.preheader45 ], [ %.pre.pre, %.preheader ], [ %i.fc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit16 ]
  %i.cd = phi ptr [ %i.bm, %.preheader45 ], [ %.pre60.pre, %.preheader ], [ %i.fd, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit16 ]
  %i.ce = load ptr, ptr %i.d, align 8, !tbaa !63  ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cg = load ptr, ptr %2, align 8, !tbaa !63
  store ptr %i.cg, ptr %i.d, align 8, !tbaa !63
  store ptr %i.ce, ptr %2, align 8, !tbaa !63
  %i.ch = load <2 x ptr>, ptr %i.e, align 8, !tbaa !78
  %i.ci = load ptr, ptr %i.e, align 8, !tbaa !64  ; 2 uses
  store ptr %i.cd, ptr %i.e, align 8, !tbaa !64
  store ptr %i.cc, ptr %i.cf, align 8, !tbaa !68
  store <2 x ptr> %i.ch, ptr %i.q, align 8, !tbaa !78
  %.not4.i.i.i = icmp eq ptr %i.ce, %i.ci
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cu, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.ce, %._crit_edge ] ; 2 uses
  %i.cj = load ptr, ptr %.05.i.i.i, align 8, !tbaa !49 ; 6 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !50
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ck, ptr noundef %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !43 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !45
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #30
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef 128) #30
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cu, %i.ci
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !63
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i, %._crit_edge
  %i.cv = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i ], [ %i.ce, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i
  %i.cw = load ptr, ptr %i.l, align 8, !tbaa !68
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.cz) #30
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

.lr.ph51:                                         ; preds = %.preheader, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit16
  %i.da = phi i32 [ %i.fb, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit16 ], [ %i.bz, %.preheader ] ; 2 uses
  %i.db = phi ptr [ %i.fc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit16 ], [ %.pre.pre, %.preheader ] ; 5 uses
  %i.dc = phi ptr [ %i.fd, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit16 ], [ %.pre60.pre, %.preheader ] ; 3 uses
  %.01350 = phi i32 [ %i.fe, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit16 ], [ 0, %.preheader ] ; 2 uses
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.de = load ptr, ptr %i.d, align 8, !tbaa !63  ; 2 uses
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = lshr exact i64 %i.dh, 3
  %i.dj = trunc i64 %i.di to i32
  %i.dk = sub i32 %.01350, %i.da
  %i.dl = add i32 %i.dk, %i.dj
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dm ; 4 uses
  %.not.i.i15 = icmp eq ptr %i.dc, %i.db
  br i1 %.not.i.i15, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph51
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !49
  store i64 %i.do, ptr %i.dc, align 8, !tbaa !49
  store ptr null, ptr %i.dn, align 8, !tbaa !49
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  store ptr %i.dp, ptr %i.q, align 8, !tbaa !64
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit16

bb.m:                                             ; preds = %.lr.ph51
  %i.dq = load ptr, ptr %2, align 8, !tbaa !63    ; 10 uses
  %i.dr = ptrtoint ptr %i.db to i64               ; 2 uses
  %i.ds = ptrtoint ptr %i.dq to i64               ; 3 uses
  %i.dt = sub i64 %i.dr, %i.ds                    ; 3 uses
  %i.du = icmp eq i64 %i.dt, 9223372036854775800
  br i1 %i.du, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i25

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i25: ; preds = %bb.m
  %i.dv = ashr exact i64 %i.dt, 3                 ; 3 uses
  %.sroa.speculated.i.i26 = call i64 @llvm.umax.i64(i64 %i.dv, i64 1)
  %i.dw = add nsw i64 %.sroa.speculated.i.i26, %i.dv ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dv
  %i.dy = call i64 @llvm.umin.i64(i64 %i.dw, i64 1152921504606846975)
  %i.dz = select i1 %i.dx, i64 1152921504606846975, i64 %i.dy ; 3 uses
  %.not.i.i27 = icmp ne i64 %i.dz, 0
  call void @llvm.assume(i1 %.not.i.i27)
  %i.ea = shl nuw nsw i64 %i.dz, 3
  %i.eb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #29 ; 10 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dt
  %i.ed = load i64, ptr %i.dn, align 8, !tbaa !49
  store i64 %i.ed, ptr %i.ec, align 8, !tbaa !49
  store ptr null, ptr %i.dn, align 8, !tbaa !49
  %.not10.i.i.i.i28 = icmp eq ptr %i.dq, %i.db
  br i1 %.not10.i.i.i.i28, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40, label %.lr.ph.i.i.i.i29.preheader

.lr.ph.i.i.i.i29.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i25
  %i.ee = add i64 %i.dr, -8
  %i.ef = sub i64 %i.ee, %i.ds                    ; 3 uses
  %i.eg = lshr i64 %i.ef, 3
  %i.eh = add nuw nsw i64 %i.eg, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.ef, 56
  br i1 %min.iters.check113, label %.lr.ph.i.i.i.i29.preheader131, label %vector.memcheck114

vector.memcheck114:                               ; preds = %.lr.ph.i.i.i.i29.preheader
  %i.ei = and i64 %i.ef, -8
  %i.ej = add i64 %i.ei, 8                        ; 2 uses
  %i.ek = getelementptr i8, ptr %i.eb, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.dq, i64 %i.ej
  %bound0115 = icmp ult ptr %i.eb, %i.el
  %bound1116 = icmp ult ptr %i.dq, %i.ek
  %found.conflict117 = and i1 %bound0115, %bound1116
  br i1 %found.conflict117, label %.lr.ph.i.i.i.i29.preheader131, label %vector.ph118

vector.ph118:                                     ; preds = %vector.memcheck114
  %n.vec119 = and i64 %i.eh, 4611686018427387900  ; 3 uses
  %i.em = shl i64 %n.vec119, 3                    ; 2 uses
  %i.en = getelementptr i8, ptr %i.eb, i64 %i.em  ; 2 uses
  %i.eo = getelementptr i8, ptr %i.dq, i64 %i.em
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph118
  %index121 = phi i64 [ 0, %vector.ph118 ], [ %index.next126, %vector.body120 ] ; 2 uses
  %i.ep = shl i64 %index121, 3                    ; 2 uses
  %next.gep122 = getelementptr i8, ptr %i.eb, i64 %i.ep ; 2 uses
  %next.gep123 = getelementptr i8, ptr %i.dq, i64 %i.ep ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.eq = getelementptr i8, ptr %next.gep123, i64 16
  %wide.load124 = load <2 x i64>, ptr %next.gep123, align 8, !tbaa !49, !alias.scope !342
  %wide.load125 = load <2 x i64>, ptr %i.eq, align 8, !tbaa !49, !alias.scope !342
  %i.er = getelementptr i8, ptr %next.gep122, i64 16
  store <2 x i64> %wide.load124, ptr %next.gep122, align 8, !tbaa !49, !alias.scope !343, !noalias !344
  store <2 x i64> %wide.load125, ptr %i.er, align 8, !tbaa !49, !alias.scope !343, !noalias !344
  %4 = getelementptr i8, ptr %next.gep123, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep123, align 8, !tbaa !49, !alias.scope !342
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !49, !alias.scope !342
  %index.next126 = add nuw i64 %index121, 4       ; 2 uses
  %i.es = icmp eq i64 %index.next126, %n.vec119
  br i1 %i.es, label %middle.block127, label %vector.body120, !llvm.loop !332

middle.block127:                                  ; preds = %vector.body120
  %cmp.n128 = icmp eq i64 %i.eh, %n.vec119
  br i1 %cmp.n128, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40, label %.lr.ph.i.i.i.i29.preheader131

.lr.ph.i.i.i.i29.preheader131:                    ; preds = %vector.memcheck114, %.lr.ph.i.i.i.i29.preheader, %middle.block127
  %.012.i.i.i.i30.ph = phi ptr [ %i.eb, %vector.memcheck114 ], [ %i.eb, %.lr.ph.i.i.i.i29.preheader ], [ %i.en, %middle.block127 ]
  %.0911.i.i.i.i31.ph = phi ptr [ %i.dq, %vector.memcheck114 ], [ %i.dq, %.lr.ph.i.i.i.i29.preheader ], [ %i.eo, %middle.block127 ]
  br label %.lr.ph.i.i.i.i29

.lr.ph.i.i.i.i29:                                 ; preds = %.lr.ph.i.i.i.i29.preheader131, %.lr.ph.i.i.i.i29
  %.012.i.i.i.i30 = phi ptr [ %i.ev, %.lr.ph.i.i.i.i29 ], [ %.012.i.i.i.i30.ph, %.lr.ph.i.i.i.i29.preheader131 ] ; 2 uses
  %.0911.i.i.i.i31 = phi ptr [ %i.eu, %.lr.ph.i.i.i.i29 ], [ %.0911.i.i.i.i31.ph, %.lr.ph.i.i.i.i29.preheader131 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.et = load i64, ptr %.0911.i.i.i.i31, align 8, !tbaa !49, !alias.scope !341
  store i64 %i.et, ptr %.012.i.i.i.i30, align 8, !tbaa !49, !alias.scope !340
  store ptr null, ptr %.0911.i.i.i.i31, align 8, !tbaa !49, !alias.scope !341
  %i.eu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 8 ; 2 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.eu, %i.db
  br i1 %.not.i.i.i.i32, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40, label %.lr.ph.i.i.i.i29, !llvm.loop !333

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40: ; preds = %.lr.ph.i.i.i.i29, %middle.block127, %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i25
  %.0.lcssa.i.i.i.i34 = phi ptr [ %i.eb, %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i25 ], [ %i.en, %middle.block127 ], [ %i.ev, %.lr.ph.i.i.i.i29 ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i34, i64 8 ; 2 uses
  %.not.i23.i42 = icmp eq ptr %i.dq, null
  br i1 %.not.i23.i42, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit44, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40
  %i.ex = load ptr, ptr %i.l, align 8, !tbaa !68
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = sub i64 %i.ey, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.ez) #30
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit44

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit44: ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40, %bb.o
  store ptr %i.eb, ptr %2, align 8, !tbaa !63
  store ptr %i.ew, ptr %i.q, align 8, !tbaa !64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dz ; 2 uses
  store ptr %i.fa, ptr %i.l, align 8, !tbaa !68
  %.pre59 = load i32, ptr %i.r, align 4, !tbaa !76
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit16

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit16: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit44
  %i.fb = phi i32 [ %i.da, %bb.l ], [ %.pre59, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit44 ] ; 2 uses
  %i.fc = phi ptr [ %i.db, %bb.l ], [ %i.fa, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit44 ] ; 2 uses
  %i.fd = phi ptr [ %i.dp, %bb.l ], [ %i.ew, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit44 ] ; 2 uses
  %i.fe = add nuw nsw i32 %.01350, 1              ; 2 uses
  %i.ff = icmp ult i32 %i.fe, %i.fb
  br i1 %i.ff, label %.lr.ph51, label %._crit_edge, !llvm.loop !334
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5eSLIM11eSLIMCirMan19applyDFSOrderingRecEPNS_11eSLIMCirObjERSt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !149
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !148  ; 2 uses
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.d, ptr %i.a, align 8, !tbaa !149
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46   ; 2 uses
  %.not16 = icmp eq ptr %i.g, %i.i
  br i1 %.not16, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %1, align 8, !tbaa !41
  %i.l = sext i32 %i.k to i64
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64   ; 5 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !63
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 3
  %i.v = trunc i64 %i.u to i32
  %i.w = load ptr, ptr %i.n, align 8              ; 2 uses
  store i32 %i.v, ptr %i.w, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !68
  %.not.i.i = icmp eq ptr %i.p, %i.y
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.z = ptrtoint ptr %i.w to i64
  store i64 %i.z, ptr %i.p, align 8, !tbaa !49
  store ptr null, ptr %i.n, align 8, !tbaa !49
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.aa, ptr %i.o, align 8, !tbaa !64
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.d:                                             ; preds = %._crit_edge
  tail call void @_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.013.017 = phi ptr [ %i.ac, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %i.ab = load ptr, ptr %.sroa.013.017, align 8, !tbaa !49
  tail call void @_ZN5eSLIM11eSLIMCirMan19applyDFSOrderingRecEPNS_11eSLIMCirObjERSt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK5eSLIM11eSLIMCirMan5printEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.13, i64 noundef 7) #31 ; 0 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !80
  %.not22 = icmp eq i32 %i.b, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.15, i64 noundef 1) #31 ; 0 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %.01529 = add i32 %i.d, 1                       ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !63   ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 3
  %i.n = trunc i64 %i.m to i32
  %i.o = load i32, ptr %i.g, align 4, !tbaa !76
  %i.p = sub nsw i32 %i.n, %i.o
  %i.q = icmp slt i32 %.01529, %i.p
  br i1 %i.q, label %.lr.ph32.preheader, label %._crit_edge33

.lr.ph32.preheader:                               ; preds = %._crit_edge
  %i.r = sext i32 %.01529 to i64
  br label %.lr.ph32

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01423 = phi i32 [ %i.u, %.lr.ph ], [ 1, %bb.a ] ; 3 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.14, i64 noundef 1) #31 ; 0 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.01423) #31 ; 0 uses
  %i.u = add nuw nsw i32 %.01423, 1
  %i.v = load i32, ptr %0, align 8, !tbaa !80
  %.not.not = icmp ult i32 %.01423, %i.v
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !345

._crit_edge33:                                    ; preds = %._crit_edge28, %._crit_edge
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.18, i64 noundef 8) #31 ; 0 uses
  %i.x = load i32, ptr %i.g, align 4, !tbaa !76   ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph36.preheader, label %._crit_edge37

.lr.ph36.preheader:                               ; preds = %._crit_edge33
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.aa, %i.ac
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = trunc i64 %i.ae to i32
  %i.ag = sub nsw i32 %i.af, %i.x
  %i.ah = sext i32 %i.ag to i64
  br label %.lr.ph36

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %._crit_edge28
  %indvars.iv = phi i64 [ %i.r, %.lr.ph32.preheader ], [ %indvars.iv.next, %._crit_edge28 ] ; 4 uses
  %i.ai = phi ptr [ %i.i, %.lr.ph32.preheader ], [ %i.be, %._crit_edge28 ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !49
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !41
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.al) #31
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.16, i64 noundef 2) #31 ; 0 uses
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !49 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !46 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !46 ; 2 uses
  %.not1924 = icmp eq ptr %i.as, %i.au
  br i1 %.not1924, label %._crit_edge28, label %.lr.ph27

._crit_edge28:                                    ; preds = %.lr.ph27, %.lr.ph32
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.17, i64 noundef 3) #31 ; 0 uses
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv
end_hunk_2
begin_hunk_3_@_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE5eraseERKS2_:bb.a
_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread10.i.i: ; preds = %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread.i.i, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.i.i, %bb.d
  %.sink.i.i = phi i64 [ 24, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread.i.i ], [ 16, %bb.d ], [ 16, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.i.i ]
  %.19.i.i = phi ptr [ %.0812.i.i, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread.i.i ], [ %.013.i.i, %bb.d ], [ %.013.i.i, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 %.sink.i.i
  %.1.i.i = load ptr, ptr %i.ai, align 8, !tbaa !83 ; 2 uses
  %.not.i.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i.i, label %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i, label %.lr.ph.i.i, !llvm.loop !360

_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i: ; preds = %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread10.i.i, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit24.thread42.i
  %.08.lcssa.i.i = phi ptr [ %.050.i, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit24.thread42.i ], [ %.19.i.i, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread10.i.i ] ; 2 uses
  %.not11.i25.i = icmp eq ptr %i.y, null
  br i1 %.not11.i25.i, label %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE11equal_rangeERKS2_.exit, label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread.i30.i
  %.013.i27.i = phi ptr [ %.1.i33.i, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread.i30.i ], [ %i.y, %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i ] ; 4 uses
  %.0812.i28.i = phi ptr [ %.19.i32.i, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread.i30.i ], [ %.02249.i, %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i27.i, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !49 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 120
  %i.am = load i32, ptr %i.al, align 8, !tbaa !153 ; 2 uses
  %i.an = icmp ult i32 %i.e, %i.am
  br i1 %i.an, label %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread.i30.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i26.i
  %i.ao = icmp eq i32 %i.e, %i.am
  br i1 %i.ao, label %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.i36.i, label %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread10.i29.i

_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.i36.i: ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 100
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !54
  %i.ar = icmp ult i32 %i.r, %i.aq
  br i1 %i.ar, label %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread.i30.i, label %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread10.i29.i

_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread10.i29.i: ; preds = %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.i36.i, %bb.e
  br label %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread.i30.i

_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread.i30.i: ; preds = %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread10.i29.i, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.i36.i, %.lr.ph.i26.i
  %.sink.i31.i = phi i64 [ 24, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread10.i29.i ], [ 16, %.lr.ph.i26.i ], [ 16, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.i36.i ]
  %.19.i32.i = phi ptr [ %.0812.i28.i, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread10.i29.i ], [ %.013.i27.i, %.lr.ph.i26.i ], [ %.013.i27.i, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.i36.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i27.i, i64 %.sink.i31.i
  %.1.i33.i = load ptr, ptr %i.as, align 8, !tbaa !83 ; 2 uses
  %.not.i34.i = icmp eq ptr %.1.i33.i, null
  br i1 %.not.i34.i, label %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE11equal_rangeERKS2_.exit, label %.lr.ph.i26.i, !llvm.loop !361

_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread.i: ; preds = %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit24.i, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread41.i, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.i, %bb.b
  %.sink.i = phi i64 [ 24, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.i ], [ 24, %bb.b ], [ 16, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread41.i ], [ 16, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit24.i ]
  %.123.i = phi ptr [ %.02249.i, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.i ], [ %.02249.i, %bb.b ], [ %.050.i, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread41.i ], [ %.050.i, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit24.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.050.i, i64 %.sink.i
  %.0.i = load ptr, ptr %i.at, align 8, !tbaa !83 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE11equal_rangeERKS2_.exit, label %bb.b, !llvm.loop !362

_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE11equal_rangeERKS2_.exit: ; preds = %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread.i, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread.i30.i, %bb.a, %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i
  %.sroa.040.0.i = phi ptr [ %.08.lcssa.i.i, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread.i30.i ], [ %.08.lcssa.i.i, %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i ], [ %i.b, %bb.a ], [ %.123.i, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread.i ] ; 3 uses
  %.sroa.3.0.i = phi ptr [ %.19.i32.i, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread.i30.i ], [ %.02249.i, %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i ], [ %i.b, %bb.a ], [ %.123.i, %_ZNK5eSLIM9TabooList15eSLIMCirObjCompclEPNS_11eSLIMCirObjES3_.exit.thread.i ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !53 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !51
  %i.ay = icmp eq ptr %.sroa.040.0.i, %i.ax
  %i.az = icmp eq ptr %.sroa.3.0.i, %i.b
  %or.cond = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %or.cond, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE11equal_rangeERKS2_.exit
  tail call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %.047.i)
  store ptr null, ptr %i.a, align 8, !tbaa !50
  store ptr %i.b, ptr %i.aw, align 8, !tbaa !51
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.ba, align 8, !tbaa !52
  store i64 0, ptr %i.au, align 8, !tbaa !53
  br label %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS2_ESA_.exit

.critedge.i:                                      ; preds = %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE11equal_rangeERKS2_.exit
  %.not8.i = icmp eq ptr %.sroa.040.0.i, %.sroa.3.0.i
  br i1 %.not8.i, label %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS2_ESA_.exit, label %.lr.ph.i2

.lr.ph.i2:                                        ; preds = %.critedge.i, %.lr.ph.i2
  %.sroa.06.09.i = phi ptr [ %i.bb, %.lr.ph.i2 ], [ %.sroa.040.0.i, %.critedge.i ] ; 2 uses
  %i.bb = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i) #32 ; 2 uses
  %i.bc = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 40) #30
  %i.bd = load i64, ptr %i.au, align 8, !tbaa !53
  %i.be = add i64 %i.bd, -1                       ; 2 uses
  store i64 %i.be, ptr %i.au, align 8, !tbaa !53
  %.not.i3 = icmp eq ptr %i.bb, %.sroa.3.0.i
  br i1 %.not.i3, label %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS2_ESA_.exit, label %.lr.ph.i2, !llvm.loop !363

_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS2_ESA_.exit: ; preds = %.lr.ph.i2, %bb.f, %.critedge.i
  %i.bf = phi i64 [ %i.av, %.critedge.i ], [ 0, %bb.f ], [ %i.be, %.lr.ph.i2 ]
  %i.bg = sub i64 %i.av, %i.bf
  ret i64 %i.bg
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164
  tail call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !163  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #30
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !364

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #24

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164
  tail call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !163  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #30
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !365

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !63     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !49
  store i64 %i.r, ptr %i.q, align 8, !tbaa !49
  store ptr null, ptr %2, align 8, !tbaa !49
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.c, i64 %i.z ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.aa = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !tbaa !49, !alias.scope !380
  %wide.load36 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !49, !alias.scope !380
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !49, !alias.scope !379
  store <2 x i64> %wide.load36, ptr %i.ab, align 8, !tbaa !49, !alias.scope !379
  %3 = getelementptr i8, ptr %next.gep35, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !49, !alias.scope !380
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !49, !alias.scope !380
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !369

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader55

.lr.ph.i.i.i.preheader55:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader55, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.ad = load i64, ptr %.0911.i.i.i, align 8, !tbaa !49, !alias.scope !380
  store i64 %i.ad, ptr %.012.i.i.i, align 8, !tbaa !49, !alias.scope !379
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !49, !alias.scope !380
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !370

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.af, %.lr.ph.i.i.i ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.ah = add i64 %i.d, -8
  %i.ai = sub i64 %i.ah, %i.m                     ; 3 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check40 = icmp ult i64 %i.ai, 152
  br i1 %min.iters.check40, label %.lr.ph.i.i.i17.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i17.preheader
  %i.al = and i64 %i.ai, -8                       ; 2 uses
  %i.am = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %i.ao = getelementptr i8, ptr %1, i64 %i.al
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %bound0 = icmp ult ptr %i.ag, %i.ap
  %bound1 = icmp ult ptr %1, %i.an
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i17.preheader54, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck
  %n.vec42 = and i64 %i.ak, 4611686018427387900   ; 3 uses
  %i.aq = shl i64 %n.vec42, 3                     ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ag, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %1, i64 %i.aq
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %i.at = shl i64 %index44, 3                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.ag, i64 %i.at ; 2 uses
  %next.gep46 = getelementptr i8, ptr %1, i64 %i.at ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.au = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load47 = load <2 x i64>, ptr %next.gep46, align 8, !tbaa !49, !alias.scope !383
  %wide.load48 = load <2 x i64>, ptr %i.au, align 8, !tbaa !49, !alias.scope !383
  %i.av = getelementptr i8, ptr %next.gep45, i64 16
  store <2 x i64> %wide.load47, ptr %next.gep45, align 8, !tbaa !49, !alias.scope !384, !noalias !385
  store <2 x i64> %wide.load48, ptr %i.av, align 8, !tbaa !49, !alias.scope !384, !noalias !385
  %4 = getelementptr i8, ptr %next.gep46, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !49, !alias.scope !383
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !49, !alias.scope !383
  %index.next49 = add nuw i64 %index44, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.aw, label %middle.block50, label %vector.body43, !llvm.loop !377

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %i.ak, %n.vec42
  br i1 %cmp.n51, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader54

.lr.ph.i.i.i17.preheader54:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i17.preheader, %middle.block50
  %.012.i.i.i18.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i17.preheader ], [ %i.ar, %middle.block50 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block50 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader54, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.az, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader54 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ay, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader54 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.ax = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !49, !alias.scope !382
  store i64 %i.ax, ptr %.012.i.i.i18, align 8, !tbaa !49, !alias.scope !381
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !49, !alias.scope !382
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !378

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block50, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ag, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ar, %middle.block50 ], [ %i.az, %.lr.ph.i.i.i17 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !68
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bd) #30
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !63
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIiSt4pairIKiiESaIS3_ENS_10_Select1stESt8equal_toIiESt4hashIiENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !74     ; 3 uses
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !132  ; 2 uses
  %i.e = urem i64 %i.b, %i.d                      ; 3 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !131
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !141  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !74
  %i.l = icmp eq i32 %i.a, %i.k
  br i1 %i.l, label %.loopexit30, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d
  %i.m = icmp eq i32 %i.a, %i.p
  br i1 %i.m, label %.loopexit30, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.020.i.i = phi ptr [ %i.n, %bb.c ], [ %i.i, %bb.b ]
  %i.n = load ptr, ptr %.020.i.i, align 8, !tbaa !141 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.n, null
  br i1 %.not18.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !74   ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = urem i64 %i.q, %i.d
  %.not19.i.i = icmp eq i64 %i.r, %i.e
  br i1 %.not19.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i, !llvm.loop !2

..loopexit_crit_edge21.i.i:                       ; preds = %bb.d
  br label %.loopexit, !llvm.loop !2

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge21.i.i
  %i.s = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %1, align 4, !tbaa !74
  store i32 %i.u, ptr %i.t, align 4, !tbaa !160
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !145
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load i64, ptr %i.c, align 8, !tbaa !132
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !140
  %i.aa = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 noundef %i.x, i64 noundef %i.z, i64 noundef 1) #31 ; 2 uses
  %i.ab = extractvalue { i8, i64 } %i.aa, 0
  %i.ac = trunc i8 %i.ab to i1
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.ad = extractvalue { i8, i64 } %i.aa, 1
  tail call void @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ad)
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !132
  %i.af = urem i64 %i.b, %i.ae
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  %.0.i19 = phi i64 [ %i.af, %bb.e ], [ %i.e, %.loopexit ]
  %i.ag = load ptr, ptr %0, align 8, !tbaa !131   ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.0.i19 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !142 ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !141
  store ptr %i.aj, ptr %i.s, align 8, !tbaa !141
  store ptr %i.s, ptr %i.ai, align 8, !tbaa !141
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !143 ; 3 uses
  store ptr %i.al, ptr %i.s, align 8, !tbaa !141
  store ptr %i.s, ptr %i.ak, align 8, !tbaa !143
  %.not11.i.i = icmp eq ptr %i.al, null
  br i1 %.not11.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.c, align 8, !tbaa !132
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !74
  %i.ap = sext i32 %i.ao to i64
  %i.aq = urem i64 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.aq
  store ptr %i.s, ptr %i.ar, align 8, !tbaa !142
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !142
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.j, %bb.g
  %i.as = load i64, ptr %i.y, align 8, !tbaa !140
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.y, align 8, !tbaa !140
  br label %.loopexit30

.loopexit30:                                      ; preds = %bb.c, %bb.b, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.pn = phi ptr [ %i.s, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.i, %bb.b ], [ %i.n, %bb.c ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 12
  ret ptr %.1
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !161
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiiELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiiELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #29 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiiELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiiELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !143
end_hunk_3
