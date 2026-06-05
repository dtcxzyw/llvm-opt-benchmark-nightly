inline.NumInlined: 896
inline.NumDeleted: 542
begin_hunk_0
@_ZN2v88internal10RootsTable11root_names_E = external local_unnamed_addr global [1150 x ptr], align 16
@.str.7 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"!code.is_null()\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"%08x       constant\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"%08x       constant pool begin (num_const = %d)\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"%08lx       jump table entry %4zu\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"jump table entry %08x\00", align 1
@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str.13 = private unnamed_addr constant [6 x i8] c"\1B[34m\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"                  \00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"\1B[;m\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"\1B[33;1m\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"\1B[m\00", align 1
@_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant { [4 x ptr] }, align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.19 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"    ;; debug: deopt position, script offset '\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"    ;; debug: deopt position, inlining id '\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"    ;; debug: deopt reason '\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"    ;; debug: deopt index \00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"    ;; \00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"object: \00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"    ;; external reference (\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"    ;; js dispatch handle:0x\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c" Builtin::\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"    ;; code:\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"    ;; wasm stub: \00", align 1
@_ZTVN2v88internal19HeapStringAllocatorE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZN2v88internal12IsolateGroup22default_isolate_group_E = external local_unnamed_addr global ptr, align 8
@.str.41 = private unnamed_addr constant [19 x i8] c"!IsFreelistEntry()\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal15V8NameConverter21InitExternalRefsCacheEv(ptr noundef nonnull align 8 dereferenceable(376) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::pair.463", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 9848
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 21032
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.k = load i64, ptr %i.j, align 8
  %i.l = sub i64 %i.k, %i.g                       ; 2 uses
  %i.m = icmp ult i64 %i.l, 55448
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = trunc nuw nsw i64 %i.l to i32
  %i.o = add nsw i32 %i.n, -128
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal22ExternalReferenceTable9ref_name_E, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store i32 %i.o, ptr %1, align 8
  store ptr %i.q, ptr %i.i, align 8
  %i.r = call { ptr, i8 } @_ZNSt10_HashtableIiSt4pairIKiPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS4_EEES0_INS6_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1398
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !5

.loopexit:                                        ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal15V8NameConverter13NameOfAddressEPh(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %..thread_crit_edge, label %bb.c

..thread_crit_edge:                               ; preds = %bb.b
  %.pre = ptrtoint ptr %1 to i64
  br label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 58992
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = tail call noundef ptr @_ZN2v88internal8Builtins6LookupEm(ptr noundef nonnull align 8 dereferenceable(20) %i.f, i64 noundef %i.g) #15 ; 2 uses
  %.not28 = icmp eq ptr %i.h, null
  br i1 %.not28, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %.sroa.08.0.copyload = load ptr, ptr %i.i, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.sroa.29.0.copyload = load i64, ptr %.sroa.29.0..sroa_idx, align 8
  %i.j = tail call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr %.sroa.08.0.copyload, i64 %.sroa.29.0.copyload, ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull %i.h) #15 ; 0 uses
  %i.k = load ptr, ptr %i.i, align 8
  br label %.thread31

.thread:                                          ; preds = %..thread_crit_edge, %bb.c
  %.pre-phi = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.g, %bb.c ] ; 2 uses
  %i.l = tail call noundef i64 @_ZNK2v88internal13CodeReference17instruction_startEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #15
  %i.m = sub i64 %.pre-phi, %i.l
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.thread
  %i.p = tail call noundef i32 @_ZNK2v88internal13CodeReference16instruction_sizeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #15
  %i.q = icmp sgt i32 %i.p, %i.n
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %.sroa.02.0.copyload = load ptr, ptr %i.r, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8
  %i.s = tail call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr %.sroa.02.0.copyload, i64 %.sroa.23.0.copyload, ptr noundef nonnull @.str.1, ptr noundef %1, i32 noundef %i.n) #15 ; 0 uses
  %i.t = load ptr, ptr %i.r, align 8
  br label %.thread31

bb.g:                                             ; preds = %bb.e, %.thread
  %i.u = tail call noundef ptr @_ZN2v88internal4wasm18GetWasmCodeManagerEv() #15
  %i.v = load ptr, ptr %i.d, align 8
  %i.w = tail call noundef ptr @_ZNK2v88internal4wasm15WasmCodeManager10LookupCodeEPNS0_7IsolateEm(ptr noundef nonnull align 8 dereferenceable(88) %i.u, ptr noundef %i.v, i64 noundef %.pre-phi) #15 ; 2 uses
  %.not29 = icmp eq ptr %i.w, null
  br i1 %.not29, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.x, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 100
  %i.z = load i8, ptr %i.y, align 4
  %i.aa = and i8 %i.z, 7
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = tail call noundef ptr @_ZN2v88internal4wasm23GetWasmCodeKindAsStringENS1_8WasmCode4KindE(i32 noundef %i.ab) #15
  %i.ad = tail call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull @.str, ptr noundef %1, ptr noundef %i.ac) #15 ; 0 uses
  %i.ae = load ptr, ptr %i.x, align 8
  br label %.thread31

bb.i:                                             ; preds = %bb.g, %bb.a
  %i.af = tail call noundef ptr @_ZNK6disasm13NameConverter13NameOfAddressEPh(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) #15
  br label %.thread31

.thread31:                                        ; preds = %bb.h, %bb.f, %bb.d, %bb.i
  %.3 = phi ptr [ %i.af, %bb.i ], [ %i.ae, %bb.h ], [ %i.t, %bb.f ], [ %i.k, %bb.d ]
  ret ptr %.3
}

declare noundef ptr @_ZN2v88internal8Builtins6LookupEm(ptr noundef nonnull align 8 dereferenceable(20), i64 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr, i64, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef i64 @_ZNK2v88internal13CodeReference17instruction_startEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef i32 @_ZNK2v88internal13CodeReference16instruction_sizeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal4wasm18GetWasmCodeManagerEv() local_unnamed_addr #2

declare noundef ptr @_ZNK2v88internal4wasm15WasmCodeManager10LookupCodeEPNS0_7IsolateEm(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal4wasm23GetWasmCodeKindAsStringENS1_8WasmCode4KindE(i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK6disasm13NameConverter13NameOfAddressEPh(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZNK2v88internal15V8NameConverter10NameInCodeEPh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(376) %0, ptr nofree noundef readnone captures(ret: address, provenance) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
  %i.d = select i1 %i.c, ptr @.str.2, ptr %1
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal15V8NameConverter16RootRelativeNameEi(ptr noundef nonnull align 8 dereferenceable(376) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNSt13unordered_mapIiPKcSt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE4findERS7_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %1, -520                     ; 2 uses
  %i.e = icmp ult i32 %i.d, 9200
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = and i32 %1, 7
  %.not25 = icmp eq i32 %i.f, 0
  br i1 %.not25, label %bb.d, label %_ZNSt13unordered_mapIiPKcSt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE4findERS7_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = lshr exact i32 %i.d, 3
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %.sroa.013.0.copyload = load ptr, ptr %i.i, align 8
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.sroa.214.0.copyload = load i64, ptr %.sroa.214.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal10RootsTable11root_names_E, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr %.sroa.013.0.copyload, i64 %.sroa.214.0.copyload, ptr noundef nonnull @.str.3, ptr noundef %i.k) #15 ; 0 uses
  %i.m = load ptr, ptr %i.i, align 8
  br label %_ZNSt13unordered_mapIiPKcSt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE4findERS7_.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.n = add nsw i32 %1, -9720                    ; 2 uses
  %i.o = icmp ult i32 %i.n, 11192
  br i1 %i.o, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.p = and i32 %1, 7
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.g, label %_ZNSt13unordered_mapIiPKcSt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE4findERS7_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 21032
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp eq i32 %i.r, 2
  br i1 %i.s, label %bb.h, label %_ZNSt13unordered_mapIiPKcSt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE4findERS7_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %.sroa.09.0.copyload = load ptr, ptr %i.t, align 8
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.sroa.210.0.copyload = load i64, ptr %.sroa.210.0..sroa_idx, align 8
  %i.u = lshr exact i32 %i.n, 3
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal22ExternalReferenceTable9ref_name_E, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr %.sroa.09.0.copyload, i64 %.sroa.210.0.copyload, ptr noundef nonnull @.str.4, ptr noundef %i.x) #15 ; 0 uses
  %i.z = load ptr, ptr %i.t, align 8
  br label %_ZNSt13unordered_mapIiPKcSt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE4findERS7_.exit.thread

bb.i:                                             ; preds = %bb.e
  %i.aa = add nsw i32 %1, -16                     ; 2 uses
  %i.ab = icmp ult i32 %i.aa, 56
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = lshr i32 %i.aa, 3
  %i.ad = tail call noundef ptr @_ZN2v88internal8Builtins4nameENS0_7BuiltinE(i32 noundef %i.ac) #15
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %i.ae, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.sroa.25.0.copyload = load i64, ptr %.sroa.25.0..sroa_idx, align 8
  %i.af = tail call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr %.sroa.04.0.copyload, i64 %.sroa.25.0.copyload, ptr noundef nonnull @.str.5, ptr noundef %i.ad) #15 ; 0 uses
  %i.ag = load ptr, ptr %i.ae, align 8
  br label %_ZNSt13unordered_mapIiPKcSt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE4findERS7_.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.ah = add nsw i32 %1, -38040                  ; 2 uses
  %i.ai = icmp ult i32 %i.ah, 17128
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = lshr i32 %i.ah, 3
  %i.ak = tail call noundef ptr @_ZN2v88internal8Builtins4nameENS0_7BuiltinE(i32 noundef %i.aj) #15
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.al, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8
  %i.am = tail call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, ptr noundef nonnull @.str.5, ptr noundef %i.ak) #15 ; 0 uses
  %i.an = load ptr, ptr %i.al, align 8
  br label %_ZNSt13unordered_mapIiPKcSt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE4findERS7_.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNK2v88internal15V8NameConverter21InitExternalRefsCacheEv(ptr noundef nonnull align 8 dereferenceable(376) %0)
  %.pr = load i64, ptr %i.ap, align 8
  %.not.not.i.i = icmp eq i64 %.pr, 0
  br i1 %.not.not.i.i, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 336
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %.sroa.06.0.in.i.i = phi ptr [ %i.as, %bb.o ], [ %.sroa.06.0.i.i, %bb.q ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8 ; 4 uses
  %i.at = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.at, label %_ZNSt13unordered_mapIiPKcSt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE4findERS7_.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = icmp eq i32 %1, %i.av
  br i1 %i.aw, label %_ZNSt13unordered_mapIiPKcSt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE4findERS7_.exit, label %bb.p, !llvm.loop !7

.thread:                                          ; preds = %bb.m, %bb.n
  %i.ax = sext i32 %1 to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = urem i64 %i.ax, %i.az                   ; 2 uses
  %i.bb = load ptr, ptr %i.ao, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapIiPKcSt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE4findERS7_.exit.thread, label %bb.r

bb.r:                                             ; preds = %.thread
  %i.be = load ptr, ptr %i.bd, align 8            ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = icmp eq i32 %1, %i.bg
  br i1 %i.bh, label %_ZNSt13unordered_mapIiPKcSt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE4findERS7_.exit, label %.lr.ph.i.i.i.i

bb.s:                                             ; preds = %bb.t
  %i.bi = icmp eq i32 %1, %i.bl
  br i1 %i.bi, label %_ZNSt13unordered_mapIiPKcSt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE4findERS7_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !8

.lr.ph.i.i.i.i:                                   ; preds = %bb.r, %bb.s
  %.020.i.i.i.i = phi ptr [ %i.bj, %bb.s ], [ %i.be, %bb.r ]
  %i.bj = load ptr, ptr %.020.i.i.i.i, align 8    ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIiPKcSt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE4findERS7_.exit.thread, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i32, ptr %i.bk, align 4            ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = urem i64 %i.bm, %i.az
  %.not19.i.i.i.i = icmp eq i64 %i.bn, %i.ba
  br i1 %.not19.i.i.i.i, label %bb.s, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !8

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.t
  br label %_ZNSt13unordered_mapIiPKcSt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE4findERS7_.exit.thread, !llvm.loop !8

_ZNSt13unordered_mapIiPKcSt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE4findERS7_.exit: ; preds = %bb.s, %bb.q, %bb.r
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.q ], [ %i.be, %bb.r ], [ %i.bj, %bb.s ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.bo, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull @.str.6, ptr noundef %i.bq) #15 ; 0 uses
  %i.bs = load ptr, ptr %i.bo, align 8
  br label %_ZNSt13unordered_mapIiPKcSt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE4findERS7_.exit.thread

_ZNSt13unordered_mapIiPKcSt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE4findERS7_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %bb.p, %.thread, %..loopexit_crit_edge21.i.i.i.i, %_ZNSt13unordered_mapIiPKcSt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE4findERS7_.exit, %bb.j, %bb.l, %bb.c, %bb.d, %bb.g, %bb.f, %bb.h, %bb.a
  %.4 = phi ptr [ null, %bb.a ], [ null, %bb.g ], [ null, %bb.c ], [ %i.ag, %bb.j ], [ %i.an, %bb.l ], [ %i.m, %bb.d ], [ null, %bb.f ], [ %i.z, %bb.h ], [ %i.bs, %_ZNSt13unordered_mapIiPKcSt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE4findERS7_.exit ], [ null, %..loopexit_crit_edge21.i.i.i.i ], [ null, %bb.p ], [ null, %.thread ], [ null, %.lr.ph.i.i.i.i ]
  ret ptr %.4
}

declare noundef ptr @_ZN2v88internal8Builtins4nameENS0_7BuiltinE(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal12Disassembler6DecodeEPNS0_7IsolateERSoPhS5_NS0_13CodeReferenceEmm(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr nofree noundef readnone captures(address) %3, ptr nofree noundef readonly byval(%"class.v8::internal::CodeReference") align 8 captures(none) %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.v8::internal::V8NameConverter", align 8 ; 20 uses
  %8 = alloca %"class.v8::internal::ExternalReferenceEncoder", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 128, ptr %i.d, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN2v88internal15V8NameConverterE, i64 16), ptr %7, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 152
  store ptr %0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 176
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 192
  store ptr %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 184
  store i64 128, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 320 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 368 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 328 ; 3 uses
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 336 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @_ZN2v88internal24ExternalReferenceEncoderC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %0) #15
  %i.o = call fastcc noundef i32 @_ZN2v88internalL8DecodeItEPNS0_7IsolateEPNS0_24ExternalReferenceEncoderERSoNS0_13CodeReferenceERKNS0_15V8NameConverterEPhSA_mm(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull byval(%"class.v8::internal::CodeReference") align 8 %4, ptr noundef nonnull align 8 dereferenceable(376) %7, ptr noundef %2, ptr noundef %3, i64 noundef %5, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = call fastcc noundef i32 @_ZN2v88internalL8DecodeItEPNS0_7IsolateEPNS0_24ExternalReferenceEncoderERSoNS0_13CodeReferenceERKNS0_15V8NameConverterEPhSA_mm(ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull byval(%"class.v8::internal::CodeReference") align 8 %4, ptr noundef nonnull align 8 dereferenceable(376) %7, ptr noundef %2, ptr noundef %3, i64 noundef %5, i64 noundef %6)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.o, %bb.b ], [ %i.p, %bb.c ]
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN2v88internal15V8NameConverterE, i64 16), ptr %7, align 8
  %i.q = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i.i.i.i, align 8    ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #16, !inline_history !9
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !10

_ZNSt10_HashtableIiSt4pairIKiPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %i.s = load ptr, ptr %i.i, align 8
  %i.t = load i64, ptr %i.k, align 8
  %i.u = shl i64 %i.t, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.u, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.v = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.j
  br i1 %i.w, label %_ZN2v88internal15V8NameConverterD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.x = load i64, ptr %i.k, align 8
  %i.y = shl i64 %i.x, 3
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #16, !inline_history !9
  br label %_ZN2v88internal15V8NameConverterD2Ev.exit

_ZN2v88internal15V8NameConverterD2Ev.exit:        ; preds = %_ZNSt10_HashtableIiSt4pairIKiPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  ret i32 %.0
}

declare void @_ZN2v88internal24ExternalReferenceEncoderC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN2v88internalL8DecodeItEPNS0_7IsolateEPNS0_24ExternalReferenceEncoderERSoNS0_13CodeReferenceERKNS0_15V8NameConverterEPhSA_mm(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef byval(%"class.v8::internal::CodeReference") align 8 %3, ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef %5, ptr nofree noundef readnone captures(address) %6, i64 noundef %7, i64 noundef %8) unnamed_addr #0 {
bb.a:
  %9 = alloca %"class.v8::base::EmbeddedVector", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 48 uses
  %11 = alloca %"class.disasm::Disassembler", align 8 ; 6 uses
  %12 = alloca %"class.v8::internal::RelocIterator", align 8 ; 8 uses
  %13 = alloca %"class.v8::internal::CodeCommentsIterator", align 8 ; 17 uses
  %14 = alloca %"class.v8::internal::RelocInfo", align 8 ; 7 uses
  %15 = alloca %"class.v8::internal::RelocInfo", align 8 ; 6 uses
  %i.a = load i32, ptr %3, align 8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.c, ptr %9, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  store i64 128, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #15
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 328
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 336
  store i8 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 337
  store i8 0, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.j, ptr %10, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %10, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = load ptr, ptr %10, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %10, i64 %i.q
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.r, ptr noundef null) #15
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %10, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.e, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #15
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 72
  store i32 16, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 4 uses
  store ptr %i.x, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 88
  store i64 0, ptr %i.y, align 8
  store i8 0, ptr %i.x, align 8
  %i.z = load ptr, ptr %10, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %10, i64 %i.ab
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ac, ptr noundef nonnull %i.s) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  store ptr %4, ptr %11, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  call void @_ZN2v88internal13RelocIteratorC1ENS0_13CodeReferenceE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull byval(%"class.v8::internal::CodeReference") align 8 %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.ae = call noundef i64 @_ZNK2v88internal13CodeReference13code_commentsEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  %i.af = call noundef i32 @_ZNK2v88internal13CodeReference18code_comments_sizeEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  call void @_ZN2v88internal20CodeCommentsIteratorC1Emj(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %i.ae, i32 noundef %i.af) #15
  %i.ag = load i32, ptr %3, align 8
  switch i32 %i.ag, label %.critedge.thread [
    i32 1, label %bb.d
    i32 2, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i124 = load ptr, ptr %i.ah, align 8
  %i.ai = load i64, ptr %.sroa.0.0.copyload.i124, align 8 ; 6 uses
  %i.aj = add i64 %i.ai, 75
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = add i64 %i.ai, 83
  %i.an = inttoptr i64 %i.am to ptr               ; 3 uses
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %i.ap = icmp sgt i32 %i.al, %i.ao
  br i1 %i.ap, label %bb.e, label %.critedge.thread

bb.e:                                             ; preds = %bb.d
  %i.aq = add i64 %i.ai, 31
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load i64, ptr %i.ar, align 8
  %.not.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = add i64 %i.ai, 39
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = add i64 %i.ai, 55
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = sext i32 %i.ay to i64
  %i.ba = add i64 %i.av, %i.az
  br label %_ZNSt10unique_ptrIN2v88internal21JumpTableInfoIteratorESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bb = call noundef ptr @_ZN2v88internal7Isolate23CurrentEmbeddedBlobCodeEv() #15, !noalias !12 ; 0 uses
  %i.bc = call noundef i32 @_ZN2v88internal7Isolate27CurrentEmbeddedBlobCodeSizeEv() #15, !noalias !12 ; 0 uses
  %i.bd = call noundef ptr @_ZN2v88internal7Isolate23CurrentEmbeddedBlobDataEv() #15, !noalias !12 ; 2 uses
  %i.be = call noundef i32 @_ZN2v88internal7Isolate27CurrentEmbeddedBlobDataSizeEv() #15, !noalias !12 ; 0 uses
  %i.bf = add i64 %i.ai, 89
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = sext i16 %i.bh to i64
  %i.bj = getelementptr [12 x i8], ptr %i.bd, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 42844
  %i.bl = getelementptr i8, ptr %i.bj, i64 32
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bn
  %i.bp = ptrtoint ptr %i.bo to i64
  %.pre = load i32, ptr %i.an, align 4
  %.sroa.0.0.copyload.i126.pre = load ptr, ptr %i.ah, align 8
  %.pre338 = load i64, ptr %.sroa.0.0.copyload.i126.pre, align 8 ; 2 uses
  %.pre341 = add i64 %.pre338, 75
  %.pre342 = inttoptr i64 %.pre341 to ptr
  %.pre344 = add i64 %.pre338, 83
  %.pre346 = inttoptr i64 %.pre344 to ptr
  br label %_ZNSt10unique_ptrIN2v88internal21JumpTableInfoIteratorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal21JumpTableInfoIteratorESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.f, %bb.g
  %.pre-phi347 = phi ptr [ %i.an, %bb.f ], [ %.pre346, %bb.g ]
  %.pre-phi343 = phi ptr [ %i.ak, %bb.f ], [ %.pre342, %bb.g ]
  %i.bq = phi i32 [ %i.ao, %bb.f ], [ %.pre, %bb.g ]
  %.0.i.i = phi i64 [ %i.ba, %bb.f ], [ %i.bp, %bb.g ]
  %i.br = sext i32 %i.bq to i64
  %i.bs = add i64 %.0.i.i, %i.br
  %i.bt = load i32, ptr %.pre-phi343, align 4
  %i.bu = load i32, ptr %.pre-phi347, align 4
  %i.bv = sub nsw i32 %i.bt, %i.bu
  %i.bw = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18, !noalias !15 ; 2 uses
  call void @_ZN2v88internal21JumpTableInfoIteratorC1Emj(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 noundef %i.bs, i32 noundef %i.bv) #15, !noalias !15
  br label %.critedge.thread

bb.h:                                             ; preds = %bb.c
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call noundef i32 @_ZNK2v88internal4wasm8WasmCode20jump_table_info_sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %i.by) #15
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %_ZNSt10unique_ptrIN2v88internal21JumpTableInfoIteratorESt14default_deleteIS2_EED2Ev.exit132, label %.critedge.thread

_ZNSt10unique_ptrIN2v88internal21JumpTableInfoIteratorESt14default_deleteIS2_EED2Ev.exit132: ; preds = %bb.h
  %i.cb = load ptr, ptr %i.bx, align 8
  %i.cc = call noundef i64 @_ZNK2v88internal4wasm8WasmCode15jump_table_infoEv(ptr noundef nonnull align 8 dereferenceable(112) %i.cb) #15
  %i.cd = load ptr, ptr %i.bx, align 8
  %i.ce = call noundef i32 @_ZNK2v88internal4wasm8WasmCode20jump_table_info_sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %i.cd) #15
  %i.cf = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18, !noalias !18 ; 2 uses
  call void @_ZN2v88internal21JumpTableInfoIteratorC1Emj(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 noundef %i.cc, i32 noundef %i.ce) #15, !noalias !18
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.c, %bb.d, %bb.h, %_ZNSt10unique_ptrIN2v88internal21JumpTableInfoIteratorESt14default_deleteIS2_EED2Ev.exit132, %_ZNSt10unique_ptrIN2v88internal21JumpTableInfoIteratorESt14default_deleteIS2_EED2Ev.exit
  %.sroa.0221.0 = phi ptr [ %i.bw, %_ZNSt10unique_ptrIN2v88internal21JumpTableInfoIteratorESt14default_deleteIS2_EED2Ev.exit ], [ %i.cf, %_ZNSt10unique_ptrIN2v88internal21JumpTableInfoIteratorESt14default_deleteIS2_EED2Ev.exit132 ], [ null, %bb.h ], [ null, %bb.c ], [ null, %bb.d ] ; 7 uses
  %i.cg = icmp ult ptr %5, %6
  br i1 %i.cg, label %.lr.ph318, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit.thread

.lr.ph318:                                        ; preds = %.critedge.thread
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.ck = ptrtoint ptr %5 to i64                  ; 5 uses
  %.not247 = icmp eq ptr %.sroa.0221.0, null
  %.not = icmp eq i64 %8, 0                       ; 2 uses
  %i.cl = add i64 %8, %7
  %i.cm = sub i64 %7, %8
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.co = sub i64 %7, %i.ck
  %i.cp = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %14, i64 24
  %.sroa.2165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %15, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph318, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit
  %.0317 = phi ptr [ %5, %.lr.ph318 ], [ %.2, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit ] ; 14 uses
  %.098316 = phi i32 [ -1, %.lr.ph318 ], [ %.2100, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit ] ; 5 uses
  %i.cu = icmp sgt i32 %.098316, 0                ; 2 uses
  br i1 %i.cu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.037.0.copyload = load ptr, ptr %9, align 8
  %.sroa.238.0.copyload = load i64, ptr %i.d, align 8
  %.0.copyload.i = load i32, ptr %.0317, align 1
  %i.cv = call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr %.sroa.037.0.copyload, i64 %.sroa.238.0.copyload, ptr noundef nonnull @.str.9, i32 noundef %.0.copyload.i) #15 ; 0 uses
  %i.cw = add nsw i32 %.098316, -1
  %i.cx = getelementptr inbounds nuw i8, ptr %.0317, i64 4
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.cy = call noundef i32 @_ZN6disasm12Disassembler18ConstantPoolSizeAtEPh(ptr noundef nonnull align 8 dereferenceable(9) %11, ptr noundef %.0317) #15 ; 3 uses
  %i.cz = icmp sgt i32 %i.cy, -1
  br i1 %i.cz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.032.0.copyload = load ptr, ptr %9, align 8
  %.sroa.233.0.copyload = load i64, ptr %i.d, align 8
  %.0.copyload.i133 = load i32, ptr %.0317, align 1
  %i.da = call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr %.sroa.032.0.copyload, i64 %.sroa.233.0.copyload, ptr noundef nonnull @.str.10, i32 noundef %.0.copyload.i133, i32 noundef %i.cy) #15 ; 0 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0317, i64 4
  br label %bb.u

bb.m:                                             ; preds = %bb.k
  %i.dc = load i8, ptr %i.ch, align 8, !range !21, !noundef !22
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.de = load i64, ptr %i.ci, align 8
  %i.df = ptrtoint ptr %.0317 to i64
  %i.dg = icmp eq i64 %i.de, %i.df
  %i.dh = load i8, ptr %i.cj, align 8
  %i.di = icmp eq i8 %i.dh, 10
  %or.cond246 = select i1 %i.dg, i1 %i.di, i1 false
  br i1 %or.cond246, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.0.copyload.i134 = load ptr, ptr %.0317, align 1
  %.sroa.028.0.copyload = load ptr, ptr %9, align 8
  %.sroa.229.0.copyload = load i64, ptr %i.d, align 8
  %i.dj = ptrtoint ptr %.0.copyload.i134 to i64   ; 2 uses
  %i.dk = sub i64 %i.dj, %i.ck
  %i.dl = call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr %.sroa.028.0.copyload, i64 %.sroa.229.0.copyload, ptr noundef nonnull @.str.11, i64 noundef %i.dj, i64 noundef %i.dk) #15 ; 0 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0317, i64 8
  br label %bb.u

bb.p:                                             ; preds = %bb.n, %bb.m
  br i1 %.not247, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dn = call noundef zeroext i1 @_ZNK2v88internal21JumpTableInfoIterator10HasCurrentEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0221.0) #15
  br i1 %i.dn, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.do = call noundef i32 @_ZNK2v88internal21JumpTableInfoIterator11GetPCOffsetEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0221.0) #15
  %i.dp = ptrtoint ptr %.0317 to i64
  %i.dq = sub i64 %i.dp, %i.ck
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = icmp eq i32 %i.do, %i.dr
  br i1 %i.ds, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dt = call noundef i32 @_ZNK2v88internal21JumpTableInfoIterator9GetTargetEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0221.0) #15
  %.sroa.025.0.copyload = load ptr, ptr %9, align 8
  %.sroa.226.0.copyload = load i64, ptr %i.d, align 8
  %i.du = call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr %.sroa.025.0.copyload, i64 %.sroa.226.0.copyload, ptr noundef nonnull @.str.12, i32 noundef %i.dt) #15 ; 0 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0317, i64 4
  call void @_ZN2v88internal21JumpTableInfoIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0221.0) #15
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.dw = load ptr, ptr %9, align 8
  store i8 0, ptr %i.dw, align 1
  %.sroa.024.0.copyload = load ptr, ptr %9, align 8
  %.sroa.2.0.copyload = load i64, ptr %i.d, align 8
  %i.dx = call noundef i32 @_ZN6disasm12Disassembler17InstructionDecodeEN2v84base6VectorIcEEPh(ptr noundef nonnull align 8 dereferenceable(9) %11, ptr %.sroa.024.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef %.0317) #15
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds i8, ptr %.0317, i64 %i.dy
  br label %bb.u

bb.u:                                             ; preds = %bb.l, %bb.s, %bb.t, %bb.o, %bb.j
  %.2100 = phi i32 [ %i.cw, %bb.j ], [ %i.cy, %bb.l ], [ %.098316, %bb.s ], [ %.098316, %bb.t ], [ %.098316, %bb.o ]
  %.2 = phi ptr [ %i.cx, %bb.j ], [ %i.db, %bb.l ], [ %i.dv, %bb.s ], [ %i.dz, %bb.t ], [ %i.dm, %bb.o ] ; 5 uses
  %i.ea = ptrtoint ptr %.2 to i64                 ; 4 uses
  br i1 %.not, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eb = icmp ult i64 %i.cl, %i.ea
  br i1 %i.eb, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not112 = icmp ult i64 %i.cm, %i.ea
  br i1 %.not112, label %bb.x, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit, !llvm.loop !23

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.ec = load i8, ptr %i.ch, align 8, !range !21, !noundef !22
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  %.sroa.0184.0283 = phi ptr [ %.sroa.0184.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ], [ null, %bb.x ] ; 6 uses
  %.sroa.9.0282 = phi ptr [ %.sroa.9.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ], [ null, %bb.x ] ; 5 uses
  %.sroa.15.0281 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ], [ null, %bb.x ] ; 3 uses
  %.sroa.0177.0280 = phi ptr [ %.sroa.0177.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ], [ null, %bb.x ] ; 6 uses
  %.sroa.11.0279 = phi ptr [ %.sroa.11.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ], [ null, %bb.x ] ; 4 uses
  %.sroa.7.0278 = phi ptr [ %.sroa.7.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ], [ null, %bb.x ] ; 3 uses
  %.sroa.0172.0277 = phi ptr [ %.sroa.0172.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ], [ null, %bb.x ] ; 6 uses
  %.sroa.11182.0276 = phi ptr [ %.sroa.11182.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ], [ null, %bb.x ] ; 4 uses
  %.sroa.7180.0275 = phi ptr [ %.sroa.7180.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ], [ null, %bb.x ] ; 3 uses
  %i.ee = load i64, ptr %i.ci, align 8            ; 3 uses
  %i.ef = icmp ult i64 %i.ee, %i.ea
  br i1 %i.ef, label %bb.y, label %.critedge2.loopexit

bb.y:                                             ; preds = %.lr.ph
  %.not.i.i135 = icmp eq ptr %.sroa.9.0282, %.sroa.15.0281
  br i1 %.not.i.i135, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 %i.ee, ptr %.sroa.9.0282, align 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.aa:                                            ; preds = %bb.y
  %i.eg = ptrtoint ptr %.sroa.9.0282 to i64
  %i.eh = ptrtoint ptr %.sroa.0184.0283 to i64
  %i.ei = sub i64 %i.eg, %i.eh                    ; 6 uses
  %i.ej = icmp eq i64 %i.ei, 9223372036854775800
  br i1 %i.ej, label %bb.ab, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #17
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aa
  %i.ek = ashr exact i64 %i.ei, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ek, i64 1)
  %i.el = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ek ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ek
  %i.en = call i64 @llvm.umin.i64(i64 %i.el, i64 1152921504606846975)
  %i.eo = select i1 %i.em, i64 1152921504606846975, i64 %i.en ; 3 uses
  %.not.i.i.i.i136 = icmp ne i64 %i.eo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i136)
  %i.ep = shl nuw nsw i64 %i.eo, 3
  %i.eq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ep) #18 ; 4 uses
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 %i.ei ; 2 uses
  store i64 %i.ee, ptr %i.er, align 8
  %i.es = icmp sgt i64 %i.ei, 0
  br i1 %i.es, label %bb.ac, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.ac:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eq, ptr align 8 %.sroa.0184.0283, i64 %i.ei, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ac, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0184.0283, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0184.0283, i64 noundef %i.ei) #16
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.ad, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.eo
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.z, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %.sroa.15.1 = phi ptr [ %i.et, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.15.0281, %bb.z ] ; 2 uses
  %.pn = phi ptr [ %i.er, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.9.0282, %bb.z ]
  %.sroa.0184.1 = phi ptr [ %i.eq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0184.0283, %bb.z ] ; 2 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.eu = load i8, ptr %i.cj, align 8             ; 2 uses
  %.not.i.i137 = icmp eq ptr %.sroa.7180.0275, %.sroa.11182.0276
  br i1 %.not.i.i137, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  store i8 %i.eu, ptr %.sroa.7180.0275, align 1
  br label %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE9push_backEOS3_.exit

bb.af:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.ev = ptrtoint ptr %.sroa.11182.0276 to i64
  %i.ew = ptrtoint ptr %.sroa.0177.0280 to i64
  %i.ex = sub i64 %i.ev, %i.ew                    ; 8 uses
  %i.ey = icmp eq i64 %i.ex, 9223372036854775807
  br i1 %i.ey, label %bb.ag, label %_ZNKSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #17
  unreachable

_ZNKSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.af
  %.sroa.speculated.i.i.i.i138 = call i64 @llvm.umax.i64(i64 %i.ex, i64 1)
  %i.ez = add i64 %.sroa.speculated.i.i.i.i138, %i.ex ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.ex
  %i.fb = call i64 @llvm.umin.i64(i64 %i.ez, i64 9223372036854775807)
  %i.fc = select i1 %i.fa, i64 9223372036854775807, i64 %i.fb ; 3 uses
  %.not.i.i.i.i139 = icmp ne i64 %i.fc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i139)
  %16 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #18 ; 4 uses
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 %i.ex ; 2 uses
  store i8 %i.eu, ptr %17, align 1
  %18 = icmp sgt i64 %i.ex, 0
  br i1 %18, label %bb.ah, label %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.ah:                                            ; preds = %_ZNKSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %16, ptr align 1 %.sroa.0177.0280, i64 %i.ex, i1 false)
  br label %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.ah, %_ZNKSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i140 = icmp eq ptr %.sroa.0177.0280, null
  br i1 %.not.i17.i.i.i140, label %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0177.0280, i64 noundef %i.ex) #16
  br label %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.ai, %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %16, i64 %i.fc
  br label %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.ae, %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %.pn248 = phi ptr [ %17, %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.7180.0275, %bb.ae ]
  %.sroa.11182.1 = phi ptr [ %i.fd, %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.11182.0276, %bb.ae ] ; 2 uses
  %.sroa.0177.1 = phi ptr [ %16, %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.0177.0280, %bb.ae ] ; 2 uses
  %.sroa.7180.1 = getelementptr inbounds nuw i8, ptr %.pn248, i64 1
  %i.fe = load i64, ptr %i.cn, align 8            ; 2 uses
  %.not.i.i141 = icmp eq ptr %.sroa.7.0278, %.sroa.11.0279
  br i1 %.not.i.i141, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE9push_backEOS3_.exit
  store i64 %i.fe, ptr %.sroa.7.0278, align 8
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

bb.ak:                                            ; preds = %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE9push_backEOS3_.exit
  %i.ff = ptrtoint ptr %.sroa.11.0279 to i64
  %i.fg = ptrtoint ptr %.sroa.0172.0277 to i64
  %i.fh = sub i64 %i.ff, %i.fg                    ; 6 uses
  %i.fi = icmp eq i64 %i.fh, 9223372036854775800
  br i1 %i.fi, label %bb.al, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #17
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ak
  %i.fj = ashr exact i64 %i.fh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i142 = call i64 @llvm.umax.i64(i64 %i.fj, i64 1)
  %i.fk = add nsw i64 %.sroa.speculated.i.i.i.i142, %i.fj ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.fj
  %i.fm = call i64 @llvm.umin.i64(i64 %i.fk, i64 1152921504606846975)
  %i.fn = select i1 %i.fl, i64 1152921504606846975, i64 %i.fm ; 3 uses
  %.not.i.i.i.i143 = icmp ne i64 %i.fn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i143)
  %i.fo = shl nuw nsw i64 %i.fn, 3
  %i.fp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fo) #18 ; 4 uses
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 %i.fh ; 2 uses
  store i64 %i.fe, ptr %i.fq, align 8
  %i.fr = icmp sgt i64 %i.fh, 0
  br i1 %i.fr, label %bb.am, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

bb.am:                                            ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fp, ptr align 8 %.sroa.0172.0277, i64 %i.fh, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.am, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i144 = icmp eq ptr %.sroa.0172.0277, null
  br i1 %.not.i17.i.i.i144, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0172.0277, i64 noundef %i.fh) #16
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i: ; preds = %bb.an, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fn
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

_ZNSt6vectorIlSaIlEE9push_backEOl.exit:           ; preds = %bb.aj, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i
  %.sroa.0172.1 = phi ptr [ %i.fp, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i ], [ %.sroa.0172.0277, %bb.aj ] ; 2 uses
  %.pn249 = phi ptr [ %i.fq, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i ], [ %.sroa.7.0278, %bb.aj ]
  %.sroa.11.1 = phi ptr [ %i.fs, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i ], [ %.sroa.11.0279, %bb.aj ] ; 2 uses
  %.sroa.7.1 = getelementptr inbounds nuw i8, ptr %.pn249, i64 8
  call void @_ZN2v88internal17RelocIteratorBaseINS0_9RelocInfoEE4nextEv(ptr noundef nonnull align 8 dereferenceable(56) %12) #15
  %i.ft = load i8, ptr %i.ch, align 8, !range !21, !noundef !22
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %.critedge2.loopexit, label %.lr.ph, !llvm.loop !24

.critedge2.loopexit:                              ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit, %.lr.ph
  %.sroa.11182.0.lcssa.ph = phi ptr [ %.sroa.11182.0276, %.lr.ph ], [ %.sroa.11182.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ]
  %.sroa.0172.0.lcssa.ph = phi ptr [ %.sroa.0172.0277, %.lr.ph ], [ %.sroa.0172.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ]
  %.sroa.11.0.lcssa.ph = phi ptr [ %.sroa.11.0279, %.lr.ph ], [ %.sroa.11.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ]
  %.sroa.0177.0.lcssa.ph = phi ptr [ %.sroa.0177.0280, %.lr.ph ], [ %.sroa.0177.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ]
  %.sroa.15.0.lcssa.ph = phi ptr [ %.sroa.15.0281, %.lr.ph ], [ %.sroa.15.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ]
  %.sroa.9.0.lcssa.ph = phi ptr [ %.sroa.9.0282, %.lr.ph ], [ %.sroa.9.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ]
  %.sroa.0184.0.lcssa.ph = phi ptr [ %.sroa.0184.0283, %.lr.ph ], [ %.sroa.0184.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ]
  %i.fv = ptrtoint ptr %.sroa.11.0.lcssa.ph to i64
  %i.fw = ptrtoint ptr %.sroa.11182.0.lcssa.ph to i64
  %i.fx = ptrtoint ptr %.sroa.15.0.lcssa.ph to i64
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %bb.x
  %.sroa.11182.0.lcssa = phi i64 [ 0, %bb.x ], [ %i.fw, %.critedge2.loopexit ]
  %.sroa.0172.0.lcssa = phi ptr [ null, %bb.x ], [ %.sroa.0172.0.lcssa.ph, %.critedge2.loopexit ] ; 4 uses
  %.sroa.11.0.lcssa = phi i64 [ 0, %bb.x ], [ %i.fv, %.critedge2.loopexit ]
  %.sroa.0177.0.lcssa = phi ptr [ null, %bb.x ], [ %.sroa.0177.0.lcssa.ph, %.critedge2.loopexit ] ; 4 uses
  %.sroa.15.0.lcssa = phi i64 [ 0, %bb.x ], [ %i.fx, %.critedge2.loopexit ]
  %.sroa.9.0.lcssa = phi ptr [ null, %bb.x ], [ %.sroa.9.0.lcssa.ph, %.critedge2.loopexit ] ; 2 uses
  %.sroa.0184.0.lcssa = phi ptr [ null, %bb.x ], [ %.sroa.0184.0.lcssa.ph, %.critedge2.loopexit ] ; 5 uses
  %i.fy = call noundef zeroext i1 @_ZNK2v88internal20CodeCommentsIterator10HasCurrentEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #15
  br i1 %i.fy, label %.lr.ph301, label %._crit_edge

.lr.ph301:                                        ; preds = %.critedge2
  %i.fz = sub i64 %i.ea, %i.ck
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph301, %bb.aw
  %.sroa.0193.0300 = phi ptr [ null, %.lr.ph301 ], [ %.sroa.0193.1, %bb.aw ] ; 7 uses
  %.sroa.8.0299 = phi ptr [ null, %.lr.ph301 ], [ %.sroa.8.1, %bb.aw ] ; 6 uses
  %.sroa.13.0298 = phi ptr [ null, %.lr.ph301 ], [ %.sroa.13.1, %bb.aw ] ; 4 uses
  %i.ga = call noundef i32 @_ZNK2v88internal20CodeCommentsIterator11GetPCOffsetEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #15
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %.not113 = icmp ugt i64 %i.fz, %i.gb
  br i1 %.not113, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %bb.ao
  %i.gc = add i64 %8, %i.gb
  %i.gd = icmp ugt i64 %i.gc, %i.co
  %or.cond325 = or i1 %.not, %i.gd
  br i1 %or.cond325, label %bb.aq, label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  %i.ge = call noundef ptr @_ZNK2v88internal20CodeCommentsIterator10GetCommentEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #15 ; 2 uses
  %.not.i.i145 = icmp eq ptr %.sroa.8.0299, %.sroa.13.0298
  br i1 %.not.i.i145, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.ge, ptr %.sroa.8.0299, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.8.0299, i64 8
  br label %bb.aw

bb.as:                                            ; preds = %bb.aq
  %i.gg = ptrtoint ptr %.sroa.8.0299 to i64
  %i.gh = ptrtoint ptr %.sroa.0193.0300 to i64
  %i.gi = sub i64 %i.gg, %i.gh                    ; 6 uses
  %i.gj = icmp eq i64 %i.gi, 9223372036854775800
  br i1 %i.gj, label %bb.at, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i

bb.at:                                            ; preds = %bb.as
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #17
  unreachable

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i: ; preds = %bb.as
  %i.gk = ashr exact i64 %i.gi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i146 = call i64 @llvm.umax.i64(i64 %i.gk, i64 1)
  %i.gl = add nsw i64 %.sroa.speculated.i.i.i.i146, %i.gk ; 2 uses
  %i.gm = icmp ult i64 %i.gl, %i.gk
  %i.gn = call i64 @llvm.umin.i64(i64 %i.gl, i64 1152921504606846975)
  %i.go = select i1 %i.gm, i64 1152921504606846975, i64 %i.gn ; 3 uses
  %.not.i.i.i.i147 = icmp ne i64 %i.go, 0
  call void @llvm.assume(i1 %.not.i.i.i.i147)
  %i.gp = shl nuw nsw i64 %i.go, 3
  %i.gq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gp) #18 ; 4 uses
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 %i.gi ; 2 uses
  store ptr %i.ge, ptr %i.gr, align 8
  %i.gs = icmp sgt i64 %i.gi, 0
  br i1 %i.gs, label %bb.au, label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.au:                                            ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gq, ptr align 8 %.sroa.0193.0300, i64 %i.gi, i1 false)
  br label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.au, %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %.not.i17.i.i.i148 = icmp eq ptr %.sroa.0193.0300, null
  br i1 %.not.i17.i.i.i148, label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0193.0300, i64 noundef %i.gi) #16
  br label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.av, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.go
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ap, %bb.ar, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %.sroa.13.1 = phi ptr [ %.sroa.13.0298, %bb.ap ], [ %i.gu, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.13.0298, %bb.ar ] ; 2 uses
  %.sroa.8.1 = phi ptr [ %.sroa.8.0299, %bb.ap ], [ %i.gt, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.gf, %bb.ar ] ; 2 uses
  %.sroa.0193.1 = phi ptr [ %.sroa.0193.0300, %bb.ap ], [ %i.gq, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0193.0300, %bb.ar ] ; 2 uses
  call void @_ZN2v88internal20CodeCommentsIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #15
  %i.gv = call noundef zeroext i1 @_ZNK2v88internal20CodeCommentsIterator10HasCurrentEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #15
  br i1 %i.gv, label %bb.ao, label %.thread

.thread:                                          ; preds = %bb.aw, %bb.ao
  %.sroa.13.0.lcssa.ph = phi ptr [ %.sroa.13.1, %bb.aw ], [ %.sroa.13.0298, %bb.ao ]
  %.sroa.8.0.lcssa.ph = phi ptr [ %.sroa.8.1, %bb.aw ], [ %.sroa.8.0299, %bb.ao ] ; 2 uses
  %.sroa.0193.0.lcssa.ph = phi ptr [ %.sroa.0193.1, %bb.aw ], [ %.sroa.0193.0300, %bb.ao ] ; 5 uses
  %i.gw = ptrtoint ptr %.sroa.13.0.lcssa.ph to i64 ; 2 uses
  %i.gx = ptrtoint ptr %.sroa.0193.0.lcssa.ph to i64 ; 3 uses
  %.not326 = icmp eq ptr %.sroa.8.0.lcssa.ph, %.sroa.0193.0.lcssa.ph
  br i1 %.not326, label %._crit_edge, label %.lr.ph310.preheader

.lr.ph310.preheader:                              ; preds = %.thread
  %i.gy = ptrtoint ptr %.sroa.8.0.lcssa.ph to i64
  %i.gz = sub i64 %i.gy, %i.gx
  %i.ha = ashr exact i64 %i.gz, 3
  br label %.lr.ph310

._crit_edge:                                      ; preds = %bb.bc, %.critedge2, %.thread
  %i.hb = phi i64 [ 0, %.critedge2 ], [ %i.gx, %.thread ], [ %i.gx, %bb.bc ]
  %.sroa.0193.0.lcssa374 = phi ptr [ null, %.critedge2 ], [ %.sroa.0193.0.lcssa.ph, %.thread ], [ %.sroa.0193.0.lcssa.ph, %bb.bc ] ; 2 uses
  %.sroa.13.0.lcssa373 = phi i64 [ 0, %.critedge2 ], [ %i.gw, %.thread ], [ %i.gw, %bb.bc ]
  %i.hc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1462), align 2, !range !21, !noundef !22
  %i.hd = trunc nuw i8 %i.hc to i1
  %i.he = ptrtoint ptr %.0317 to i64              ; 3 uses
  %i.hf = icmp eq i64 %7, %i.he                   ; 2 uses
  %or.cond115 = and i1 %i.hf, %i.hd
  br i1 %or.cond115, label %bb.bd, label %bb.be

.lr.ph310:                                        ; preds = %.lr.ph310.preheader, %bb.bc
  %.0103309 = phi i64 [ %i.hy, %bb.bc ], [ 0, %.lr.ph310.preheader ] ; 2 uses
  %i.hg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1462), align 2, !range !21, !noundef !22
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph310
end_hunk_0
begin_hunk_1_@_ZN2v88internal15V8NameConverterD0Ev:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i.i, align 8    ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #16, !inline_history !9
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !10

_ZNSt10_HashtableIiSt4pairIKiPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN2v88internal15V8NameConverterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.l = load i64, ptr %i.f, align 8
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #16, !inline_history !9
  br label %_ZN2v88internal15V8NameConverterD2Ev.exit

_ZN2v88internal15V8NameConverterD2Ev.exit:        ; preds = %_ZNSt10_HashtableIiSt4pairIKiPKcESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 376) #16
  ret void
}

declare noundef ptr @_ZNK6disasm13NameConverter17NameOfCPURegisterEi(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef) unnamed_addr #2

declare noundef ptr @_ZNK6disasm13NameConverter21NameOfByteCPURegisterEi(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef) unnamed_addr #2

declare noundef ptr @_ZNK6disasm13NameConverter17NameOfXMMRegisterEi(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef) unnamed_addr #2

declare noundef ptr @_ZNK6disasm13NameConverter14NameOfConstantEPh(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #5

declare void @_ZN2v88internal13RelocIteratorC1ENS0_13CodeReferenceE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef byval(%"class.v8::internal::CodeReference") align 8) unnamed_addr #2

declare noundef i64 @_ZNK2v88internal13CodeReference13code_commentsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef i32 @_ZNK2v88internal13CodeReference18code_comments_sizeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN2v88internal20CodeCommentsIteratorC1Emj(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i32 noundef) unnamed_addr #2

declare noundef i64 @_ZNK2v88internal4wasm8WasmCode15jump_table_infoEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

declare noundef i32 @_ZNK2v88internal4wasm8WasmCode20jump_table_info_sizeEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

declare noundef i32 @_ZN6disasm12Disassembler18ConstantPoolSizeAtEPh(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal21JumpTableInfoIterator10HasCurrentEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef i32 @_ZNK2v88internal21JumpTableInfoIterator11GetPCOffsetEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef i32 @_ZNK2v88internal21JumpTableInfoIterator9GetTargetEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2v88internal21JumpTableInfoIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef i32 @_ZN6disasm12Disassembler17InstructionDecodeEN2v84base6VectorIcEEPh(ptr noundef nonnull align 8 dereferenceable(9), ptr, i64, ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal17RelocIteratorBaseINS0_9RelocInfoEE4nextEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal20CodeCommentsIterator10HasCurrentEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef i32 @_ZNK2v88internal20CodeCommentsIterator11GetPCOffsetEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef ptr @_ZNK2v88internal20CodeCommentsIterator10GetCommentEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2v88internal20CodeCommentsIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internalL10DumpBufferERSoRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !35
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !35
  store i8 0, ptr %i.a, align 8, !alias.scope !35
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !35 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !35 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !35 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l) ; 0 uses
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.b, %bb.c
  %i.o = load ptr, ptr %2, align 8
  %i.p = load i64, ptr %i.b, align 8
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.o, i64 noundef %i.p) #15 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 240
  %i.w = load ptr, ptr %i.v, align 8              ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZSt16__throw_bad_castv() #17
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load i8, ptr %i.x, align 8
  %.not.i1.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 67
  %i.aa = load i8, ptr %i.z, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.w) #15
  %i.ab = load ptr, ptr %i.w, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef signext i8 %i.ad(ptr noundef nonnull align 8 dereferenceable(570) %i.w, i8 noundef signext 10) #15, !inline_history !36
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi i8 [ %i.aa, %bb.e ], [ %i.ae, %bb.f ]
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef signext %.0.i.i.i) #15
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #15 ; 0 uses
  %i.ah = load ptr, ptr %2, align 8               ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.aj = load i64, ptr %i.a, align 8
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.al, ptr %3, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.am, align 8
  store i8 0, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.ao = load ptr, ptr %3, align 8               ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.al
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.al, align 8
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

declare noundef i64 @_ZNK2v88internal13CodeReference13constant_poolEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internalL14PrintRelocInfoERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEPNS0_7IsolateEPKNS0_24ExternalReferenceEncoderERSoNS0_13CodeReferenceEPNS0_9RelocInfoEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.v8::internal::HeapStringAllocator", align 8 ; 6 uses
  %7 = alloca %"class.v8::internal::StringStream", align 8 ; 9 uses
  %8 = alloca %"class.std::unique_ptr.526", align 8 ; 5 uses
  br i1 %5, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  tail call fastcc void @_ZN2v88internalL10DumpBufferERSoRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %.lr.ph.i.us.i.preheader

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i64, i64 } @_ZNSo5tellpEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = sub nsw i32 57, %i.d
  %.not40 = icmp sgt i32 %i.d, 56
  br i1 %.not40, label %_ZSt10__fill_n_aISt16ostream_iteratorIccSt11char_traitsIcEEicET_S4_T0_RKT1_St19output_iterator_tag.exit, label %.lr.ph.i.us.i.preheader

.lr.ph.i.us.i.preheader:                          ; preds = %.thread, %bb.b
  %.02.i.us.i.ph = phi i32 [ %i.e, %bb.b ], [ 57, %.thread ]
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i.us.i
  %.02.i.us.i = phi i32 [ %i.n, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i.us.i ], [ %.02.i.us.i.ph, %.lr.ph.i.us.i.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37
  store i8 32, ptr %i.a, align 1, !noalias !37
  %i.f = load ptr, ptr %0, align 8, !noalias !37
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8, !noalias !37
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !37
  %.not.i.i.i.us.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.us.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.us.i
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) #15, !noalias !37 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i.us.i

bb.d:                                             ; preds = %.lr.ph.i.us.i
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 32) #15, !noalias !37 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i.us.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i.us.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37
  %i.n = add nsw i32 %.02.i.us.i, -1
  %i.o = icmp sgt i32 %.02.i.us.i, 1
  br i1 %i.o, label %.lr.ph.i.us.i, label %_ZSt10__fill_n_aISt16ostream_iteratorIccSt11char_traitsIcEEicET_S4_T0_RKT1_St19output_iterator_tag.exit, !llvm.loop !42

_ZSt10__fill_n_aISt16ostream_iteratorIccSt11char_traitsIcEEicET_S4_T0_RKT1_St19output_iterator_tag.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i.us.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load i8, ptr %i.p, align 8               ; 6 uses
  switch i8 %i.q, label %bb.l [
    i8 17, label %bb.e
    i8 18, label %bb.f
    i8 19, label %bb.g
    i8 20, label %bb.j
    i8 21, label %bb.k
  ]

bb.e:                                             ; preds = %_ZSt10__fill_n_aISt16ostream_iteratorIccSt11char_traitsIcEEicET_S4_T0_RKT1_St19output_iterator_tag.exit
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.25, i64 noundef 45) #15 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = load i64, ptr %i.s, align 8
  %i.u = trunc i64 %i.t to i32
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.u) #15
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.26, i64 noundef 1) #15 ; 0 uses
  br label %bb.ah

bb.f:                                             ; preds = %_ZSt10__fill_n_aISt16ostream_iteratorIccSt11char_traitsIcEEicET_S4_T0_RKT1_St19output_iterator_tag.exit
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.27, i64 noundef 43) #15 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = trunc i64 %i.z to i32
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.aa) #15
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.26, i64 noundef 1) #15 ; 0 uses
  br label %bb.ah

bb.g:                                             ; preds = %_ZSt10__fill_n_aISt16ostream_iteratorIccSt11char_traitsIcEEicET_S4_T0_RKT1_St19output_iterator_tag.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = trunc i64 %i.ae to i8
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.28, i64 noundef 28) #15 ; 0 uses
  %i.ah = call noundef ptr @_ZN2v88internal24DeoptimizeReasonToStringENS0_16DeoptimizeReasonE(i8 noundef zeroext %i.af) #15 ; 3 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %0, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = or i32 %i.an, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.al, i32 noundef %i.ao) #15
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.i:                                             ; preds = %bb.g
  %i.ap = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ah) #15
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ah, i64 noundef %i.ap) #15 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.h, %bb.i
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.26, i64 noundef 1) #15 ; 0 uses
  br label %bb.ah

bb.j:                                             ; preds = %_ZSt10__fill_n_aISt16ostream_iteratorIccSt11char_traitsIcEEicET_S4_T0_RKT1_St19output_iterator_tag.exit
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.29, i64 noundef 26) #15 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = load i64, ptr %i.at, align 8
  %i.av = trunc i64 %i.au to i32
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.av) #15 ; 0 uses
  br label %bb.ah

bb.k:                                             ; preds = %_ZSt10__fill_n_aISt16ostream_iteratorIccSt11char_traitsIcEEicET_S4_T0_RKT1_St19output_iterator_tag.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.30) #17
  unreachable

bb.l:                                             ; preds = %_ZSt10__fill_n_aISt16ostream_iteratorIccSt11char_traitsIcEEicET_S4_T0_RKT1_St19output_iterator_tag.exit
  %i.ax = add i8 %i.q, -3
  %i.ay = icmp ult i8 %i.ax, 2
  br i1 %i.ay, label %_ZN2v88internal9RelocInfo13target_objectENS0_16PtrComprCageBaseE.exit, label %bb.p

_ZN2v88internal9RelocInfo13target_objectENS0_16PtrComprCageBaseE.exit: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal19HeapStringAllocatorE, i64 16), ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store ptr %6, ptr %7, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 1, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 16, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bd = load ptr, ptr getelementptr inbounds nuw inrange(-32, 16) (i8, ptr @_ZTVN2v88internal19HeapStringAllocatorE, i64 32), align 8
  %i.be = call noundef ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 16) #15, !inline_history !43 ; 2 uses
  store ptr %i.be, ptr %i.bc, align 8
  store i8 0, ptr %i.be, align 1
  %i.bf = load i64, ptr %4, align 8
  %i.bg = inttoptr i64 %i.bf to ptr
  %.0.copyload.i58 = load i64, ptr %i.bg, align 1
  call void @_ZN2v88internal10ShortPrintILNS0_23HeapObjectReferenceTypeE1EmEEvNS0_10TaggedImplIXT_ET0_EEPNS0_12StringStreamE(i64 %.0.copyload.i58, ptr noundef nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @_ZNK2v88internal12StringStream9ToCStringEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.526") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %7) #15
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.31, i64 noundef 7) #15 ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 0) #15 ; 0 uses
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.33, i64 noundef 8) #15 ; 0 uses
  %i.bk = load ptr, ptr %8, align 8               ; 3 uses
  %.not.i60 = icmp eq ptr %i.bk, null
  br i1 %.not.i60, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN2v88internal9RelocInfo13target_objectENS0_16PtrComprCageBaseE.exit
  %i.bl = load ptr, ptr %0, align 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 -24
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds i8, ptr %0, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = or i32 %i.bq, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bo, i32 noundef %i.br) #15
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61

bb.n:                                             ; preds = %_ZN2v88internal9RelocInfo13target_objectENS0_16PtrComprCageBaseE.exit
  %i.bs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bk) #15
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bk, i64 noundef %i.bs) #15 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61: ; preds = %bb.m, %bb.n
  %i.bu = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i62 = icmp eq ptr %i.bu, null
  br i1 %.not.i62, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #16
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZN2v88internal19HeapStringAllocatorD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bw) #16
  br label %_ZN2v88internal19HeapStringAllocatorD2Ev.exit

_ZN2v88internal19HeapStringAllocatorD2Ev.exit:    ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.ah

bb.p:                                             ; preds = %bb.l
  switch i8 %i.q, label %bb.aa [
    i8 9, label %bb.q
    i8 12, label %bb.w
  ]
end_hunk_1
