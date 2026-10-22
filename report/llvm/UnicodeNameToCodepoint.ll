Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/UnicodeNameToCodepoint?download=true
inline.NumInlined: 745
inline.NumDeleted: 401
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
%"struct.std::_Tuple_impl.base" = type <{ %"struct.std::_Tuple_impl.20", %"struct.std::_Head_base.21" }>
%"struct.std::_Tuple_impl.20" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { i32 }
%"struct.std::_Head_base.21" = type { i8 }
%"struct.std::_Head_base.22" = type { %"struct.llvm::sys::unicode::Node" }
%"struct.llvm::sys::unicode::Node" = type { i8, i32, i32, i8, i32, %"class.llvm::StringRef", ptr }
%"class.std::optional.0" = type { %"struct.std::_Optional_base.1" }
%"struct.std::_Optional_base.1" = type { %"struct.std::_Optional_payload.3" }
%"struct.std::_Optional_payload.3" = type { %"struct.std::_Optional_payload.base.7", [7 x i8] }
%"struct.std::_Optional_payload.base.7" = type { %"struct.std::_Optional_payload_base.base.6" }
%"struct.std::_Optional_payload_base.base.6" = type <{ %"union.std::_Optional_payload_base<llvm::sys::unicode::LooseMatchingResult>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::sys::unicode::LooseMatchingResult>::_Storage" = type { %"struct.llvm::sys::unicode::LooseMatchingResult" }
%"struct.llvm::sys::unicode::LooseMatchingResult" = type { i32, %"class.llvm::SmallString" }
%"class.llvm::SmallVector.10" = type { %"class.llvm::SmallVectorImpl.11", %"struct.llvm::SmallVectorStorage.15" }
%"class.llvm::SmallVectorImpl.11" = type { %"class.llvm::SmallVectorTemplateBase.12" }
%"class.llvm::SmallVectorTemplateBase.12" = type { %"class.llvm::SmallVectorTemplateCommon.13" }
%"class.llvm::SmallVectorTemplateCommon.13" = type { %"class.llvm::SmallVectorBase.14" }
%"class.llvm::SmallVectorBase.14" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.15" = type { [40 x i8] }
%class.anon = type { ptr, ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.anon.17 = type { ptr, i64 }
%class.anon.18 = type { ptr, ptr, ptr, ptr }
%class.anon.46 = type { ptr, ptr }
%"struct.llvm::sys::unicode::MatchForCodepointName" = type { %"class.std::__cxx11::basic_string", i32, i32 }

$_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc = comdat any

$_ZN4llvm15SmallVectorImplIcEaSEOS1_ = comdat any

$_ZN4llvm15SmallVectorImplINS_3sys7unicode21MatchForCodepointNameEE15insert_one_implIS3_EEPS3_S6_OT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_3sys7unicode21MatchForCodepointNameELb0EE4growEm = comdat any

$_ZZN4llvm8hexdigitEjbE3LUT = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZN4llvm3sys7unicode37UnicodeNameToCodepointLargestNameSizeE = external local_unnamed_addr constant i64, align 8
@_ZGVZN4llvm3sys7unicode30nearestMatchesForCodepointNameENS_9StringRefEmE4Rows = internal global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"O-E\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"HANGUL JUNGSEONG O-E\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"HANGUL SYLLABLE \00", align 1
@_ZN4llvm3sys7unicodeL15HangulSyllablesE = internal unnamed_addr constant [28 x [3 x ptr]] [[3 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5], [3 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.3], [3 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.6], [3 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12], [3 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.8], [3 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17], [3 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20], [3 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.10], [3 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25], [3 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28], [3 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31], [3 x ptr] [ptr @.str.5, ptr @.str.32, ptr @.str.33], [3 x ptr] [ptr @.str.34, ptr @.str.35, ptr @.str.36], [3 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39], [3 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42], [3 x ptr] [ptr @.str.43, ptr @.str.44, ptr @.str.45], [3 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.18], [3 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.21], [3 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52], [3 x ptr] [ptr null, ptr @.str.53, ptr @.str.26], [3 x ptr] [ptr null, ptr @.str.54, ptr @.str.29], [3 x ptr] [ptr null, ptr null, ptr @.str.55], [3 x ptr] [ptr null, ptr null, ptr @.str.34], [3 x ptr] [ptr null, ptr null, ptr @.str.40], [3 x ptr] [ptr null, ptr null, ptr @.str.43], [3 x ptr] [ptr null, ptr null, ptr @.str.46], [3 x ptr] [ptr null, ptr null, ptr @.str.48], [3 x ptr] [ptr null, ptr null, ptr @.str.50]], align 16
@.str.3 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"GG\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"AE\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"YA\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"YAE\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"GS\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"DD\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"EO\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"NJ\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"YEO\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"NH\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"YE\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"BB\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"WA\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"LG\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"SS\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"WAE\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"LM\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"OE\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"LB\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"YO\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"LS\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"JJ\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"LT\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"WEO\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"LP\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"WE\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"LH\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"WI\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"YU\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"EU\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"BS\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"YI\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"NG\00", align 1
@_ZN4llvm3sys7unicodeL23GeneratedNamesDataTableE = internal unnamed_addr constant [20 x %"struct.llvm::sys::unicode::GeneratedNamesData"] [%"struct.llvm::sys::unicode::GeneratedNamesData" { %"class.llvm::StringRef" { ptr @.str.56, i64 22 }, i32 13312, i32 19903 }, %"struct.llvm::sys::unicode::GeneratedNamesData" { %"class.llvm::StringRef" { ptr @.str.56, i64 22 }, i32 19968, i32 40959 }, %"struct.llvm::sys::unicode::GeneratedNamesData" { %"class.llvm::StringRef" { ptr @.str.56, i64 22 }, i32 131072, i32 173791 }, %"struct.llvm::sys::unicode::GeneratedNamesData" { %"class.llvm::StringRef" { ptr @.str.56, i64 22 }, i32 173824, i32 177983 }, %"struct.llvm::sys::unicode::GeneratedNamesData" { %"class.llvm::StringRef" { ptr @.str.56, i64 22 }, i32 177984, i32 178206 }, %"struct.llvm::sys::unicode::GeneratedNamesData" { %"class.llvm::StringRef" { ptr @.str.56, i64 22 }, i32 178208, i32 183981 }, %"struct.llvm::sys::unicode::GeneratedNamesData" { %"class.llvm::StringRef" { ptr @.str.56, i64 22 }, i32 183984, i32 191456 }, %"struct.llvm::sys::unicode::GeneratedNamesData" { %"class.llvm::StringRef" { ptr @.str.56, i64 22 }, i32 191472, i32 192093 }, %"struct.llvm::sys::unicode::GeneratedNamesData" { %"class.llvm::StringRef" { ptr @.str.56, i64 22 }, i32 196608, i32 201546 }, %"struct.llvm::sys::unicode::GeneratedNamesData" { %"class.llvm::StringRef" { ptr @.str.56, i64 22 }, i32 201552, i32 205743 }, %"struct.llvm::sys::unicode::GeneratedNamesData" { %"class.llvm::StringRef" { ptr @.str.56, i64 22 }, i32 205744, i32 210041 }, %"struct.llvm::sys::unicode::GeneratedNamesData" { %"class.llvm::StringRef" { ptr @.str.57, i64 20 }, i32 78944, i32 82938 }, %"struct.llvm::sys::unicode::GeneratedNamesData" { %"class.llvm::StringRef" { ptr @.str.58, i64 17 }, i32 94208, i32 100343 }, %"struct.llvm::sys::unicode::GeneratedNamesData" { %"class.llvm::StringRef" { ptr @.str.58, i64 17 }, i32 101632, i32 101640 }, %"struct.llvm::sys::unicode::GeneratedNamesData" { %"class.llvm::StringRef" { ptr @.str.59, i64 30 }, i32 101120, i32 101589 }, %"struct.llvm::sys::unicode::GeneratedNamesData" { %"class.llvm::StringRef" { ptr @.str.60, i64 16 }, i32 110960, i32 111355 }, %"struct.llvm::sys::unicode::GeneratedNamesData" { %"class.llvm::StringRef" { ptr @.str.61, i64 15 }, i32 249856, i32 261183 }, %"struct.llvm::sys::unicode::GeneratedNamesData" { %"class.llvm::StringRef" { ptr @.str.62, i64 28 }, i32 63744, i32 64109 }, %"struct.llvm::sys::unicode::GeneratedNamesData" { %"class.llvm::StringRef" { ptr @.str.62, i64 28 }, i32 64112, i32 64217 }, %"struct.llvm::sys::unicode::GeneratedNamesData" { %"class.llvm::StringRef" { ptr @.str.62, i64 28 }, i32 194560, i32 195101 }], align 16
@.str.56 = private unnamed_addr constant [23 x i8] c"CJK UNIFIED IDEOGRAPH-\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"EGYPTIAN HIEROGLYPH-\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"TANGUT IDEOGRAPH-\00", align 1
@.str.59 = private unnamed_addr constant [31 x i8] c"KHITAN SMALL SCRIPT CHARACTER-\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"NUSHU CHARACTER-\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"SEAL CHARACTER-\00", align 1
@.str.62 = private unnamed_addr constant [29 x i8] c"CJK COMPATIBILITY IDEOGRAPH-\00", align 1
@_ZZN4llvm8hexdigitEjbE3LUT = linkonce_odr local_unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", comdat, align 16
@_ZN4llvm3sys7unicode27UnicodeNameToCodepointIndexE = external local_unnamed_addr constant ptr, align 8
@_ZN4llvm3sys7unicode31UnicodeNameToCodepointIndexSizeE = external local_unnamed_addr constant i64, align 8
@_ZN4llvm3sys7unicode26UnicodeNameToCodepointDictE = external local_unnamed_addr constant ptr, align 8
@.str.63 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4llvm3sys7unicode21nameToCodepointStrictENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::SmallString", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 64, ptr %i.c, align 8, !tbaa !13
  %i.d = call fastcc i64 @_ZN4llvm3sys7unicodeL15nameToCodepointENS_9StringRefEbRNS_11SmallStringILj64EEE(ptr %0, i64 %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(88) %2)
  %i.e = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZN4llvm11SmallVectorIcLj64EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.e) #17
  br label %_ZN4llvm11SmallVectorIcLj64EED2Ev.exit

_ZN4llvm11SmallVectorIcLj64EED2Ev.exit:           ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i64 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i64 0, 8589934592) i64 @_ZN4llvm3sys7unicodeL15nameToCodepointENS_9StringRefEbRNS_11SmallStringILj64EEE(ptr %0, i64 %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(88) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [17 x i8], align 16               ; 4 uses
  %i.c = alloca i64, align 8                      ; 9 uses
  %i.d = alloca i8, align 1                       ; 9 uses
  %i.e = alloca i64, align 8                      ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i8, align 1                       ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i8, align 1                       ; 6 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %6 = alloca %"class.std::tuple", align 8        ; 5 uses
  store ptr %0, ptr %5, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %1, ptr %i.n, align 8
  %i.o = icmp eq i64 %1, 0
  br i1 %i.o, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 30 uses
  store i64 0, ptr %i.p, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #17
  store i8 0, ptr %i.m, align 1, !tbaa !14
  %i.q = call fastcc noundef zeroext i1 @_ZN4llvm3sys7unicodeL10startsWithENS_9StringRefES2_bRmRcb(ptr %0, i64 %1, ptr nonnull @.str.2, i64 16, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 1 dereferenceable(1) %i.m, i1 noundef zeroext false)
  br i1 %i.q, label %bb.c, label %_ZN4llvm3sys7unicodeL21nameToHangulCodePointENS_9StringRefEbRNS_11SmallStringILj64EEE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.l, align 8, !tbaa !15
  %.sroa.speculated4.i.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.r) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.speculated4.i.i ; 2 uses
  %i.t = sub i64 %1, %.sroa.speculated4.i.i       ; 3 uses
  %i.u = load i8, ptr %i.m, align 1, !tbaa !14    ; 3 uses
  br label %_ZN4llvm9StringRefC2EPKc.exit.i.i.a

._crit_edge.i.i:                                  ; preds = %bb.e
  %i.v = icmp eq i32 %.2.i.i, -1                  ; 2 uses
  %i.w = sext i32 %.2.i.i to i64
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.w)
  %i.y = select i1 %i.v, i8 %i.u, i8 %.223.i.i    ; 3 uses
  %.0.i.i = select i1 %i.v, i64 0, i64 %i.x       ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %.0.i.i ; 2 uses
  %i.aa = sub i64 %i.t, %.0.i.i                   ; 3 uses
  br label %_ZN4llvm9StringRefC2EPKc.exit.i39.i.a

_ZN4llvm9StringRefC2EPKc.exit.i.i.a:              ; preds = %bb.e, %bb.c
  %.0.i = phi i32 [ -1, %bb.c ], [ %.1.i, %bb.e ] ; 2 uses
  %.02028.i.i = phi i32 [ -1, %bb.c ], [ %.2.i.i, %bb.e ] ; 3 uses
  %.02127.i.i = phi i8 [ %i.u, %bb.c ], [ %.223.i.i, %bb.e ] ; 2 uses
  %.02426.i.i = phi i64 [ 0, %bb.c ], [ %i.ah, %bb.e ] ; 3 uses
  %gep.i.i = getelementptr [24 x i8], ptr @_ZN4llvm3sys7unicodeL15HangulSyllablesE, i64 %.02426.i.i
  %i.ab = load ptr, ptr %gep.i.i, align 8, !tbaa !17 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZN4llvm9StringRefC2EPKc.exit.i.i, label %7

7:                                                ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i.i.a
  %8 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #17
  br label %_ZN4llvm9StringRefC2EPKc.exit.i.i

_ZN4llvm9StringRefC2EPKc.exit.i.i:                ; preds = %7, %_ZN4llvm9StringRefC2EPKc.exit.i.i.a
  %.sroa.0.0.i.i.i = phi i64 [ %8, %7 ], [ 0, %_ZN4llvm9StringRefC2EPKc.exit.i.i.a ] ; 2 uses
  %9 = trunc i64 %.sroa.0.0.i.i.i to i32
  %.not.i.i = icmp slt i32 %.02028.i.i, %9
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #17
  store i8 %i.u, ptr %i.k, align 1, !tbaa !14
  %i.ac = call fastcc noundef zeroext i1 @_ZN4llvm3sys7unicodeL10startsWithENS_9StringRefES2_bRmRcb(ptr %i.s, i64 %i.t, ptr %i.ab, i64 %.sroa.0.0.i.i.i, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %i.k, i1 noundef zeroext false) ; 3 uses
  %i.ad = load i64, ptr %i.j, align 8
  %i.ae = trunc i64 %i.ad to i32
  %i.af = trunc i64 %.02426.i.i to i32
  %i.ag = load i8, ptr %i.k, align 1
  %.2.i = select i1 %i.ac, i32 %i.af, i32 %.0.i
  %.122.i.i = select i1 %i.ac, i8 %i.ag, i8 %.02127.i.i
  %.1.i.i = select i1 %i.ac, i32 %i.ae, i32 %.02028.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4llvm9StringRefC2EPKc.exit.i.i
  %.1.i = phi i32 [ %.2.i, %bb.d ], [ %.0.i, %_ZN4llvm9StringRefC2EPKc.exit.i.i ] ; 4 uses
  %.223.i.i = phi i8 [ %.122.i.i, %bb.d ], [ %.02127.i.i, %_ZN4llvm9StringRefC2EPKc.exit.i.i ] ; 2 uses
  %.2.i.i = phi i32 [ %.1.i.i, %bb.d ], [ %.02028.i.i, %_ZN4llvm9StringRefC2EPKc.exit.i.i ] ; 3 uses
  %i.ah = add nuw nsw i64 %.02426.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ah, 19
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %_ZN4llvm9StringRefC2EPKc.exit.i.i.a, !llvm.loop !57

._crit_edge.i45.i:                                ; preds = %bb.g
  %i.ai = icmp eq i32 %.2.i43.i, -1               ; 2 uses
  %i.aj = sext i32 %.2.i43.i to i64
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.aj)
  %i.al = select i1 %i.ai, i8 %i.y, i8 %.223.i42.i
  %.0.i46.i = select i1 %i.ai, i64 0, i64 %i.ak   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 %.0.i46.i
  %i.an = sub i64 %i.aa, %.0.i46.i                ; 3 uses
  br label %.lr.ph.i53.i

_ZN4llvm9StringRefC2EPKc.exit.i39.i.a:            ; preds = %bb.g, %._crit_edge.i.i
  %.0126.i = phi i32 [ -1, %._crit_edge.i.i ], [ %.1127.i, %bb.g ] ; 2 uses
  %.02028.i34.i = phi i32 [ -1, %._crit_edge.i.i ], [ %.2.i43.i, %bb.g ] ; 3 uses
  %.02127.i35.i = phi i8 [ %i.y, %._crit_edge.i.i ], [ %.223.i42.i, %bb.g ] ; 2 uses
  %.02426.i36.i = phi i64 [ 0, %._crit_edge.i.i ], [ %i.au, %bb.g ] ; 3 uses
  %gep.i37.i = getelementptr [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm3sys7unicodeL15HangulSyllablesE, i64 8), i64 %.02426.i36.i
  %i.ao = load ptr, ptr %gep.i37.i, align 8, !tbaa !17 ; 3 uses
  %.not.i.i38.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i38.i, label %_ZN4llvm9StringRefC2EPKc.exit.i39.i, label %10

10:                                               ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i39.i.a
  %11 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ao) #17
  br label %_ZN4llvm9StringRefC2EPKc.exit.i39.i

_ZN4llvm9StringRefC2EPKc.exit.i39.i:              ; preds = %10, %_ZN4llvm9StringRefC2EPKc.exit.i39.i.a
  %.sroa.0.0.i.i40.i = phi i64 [ %11, %10 ], [ 0, %_ZN4llvm9StringRefC2EPKc.exit.i39.i.a ] ; 2 uses
  %12 = trunc i64 %.sroa.0.0.i.i40.i to i32
  %.not.i41.i = icmp slt i32 %.02028.i34.i, %12
  br i1 %.not.i41.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i39.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  store i8 %i.y, ptr %i.i, align 1, !tbaa !14
  %i.ap = call fastcc noundef zeroext i1 @_ZN4llvm3sys7unicodeL10startsWithENS_9StringRefES2_bRmRcb(ptr %i.z, i64 %i.aa, ptr %i.ao, i64 %.sroa.0.0.i.i40.i, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(1) %i.i, i1 noundef zeroext false) ; 3 uses
  %i.aq = load i64, ptr %i.h, align 8
  %i.ar = trunc i64 %i.aq to i32
  %i.as = trunc i64 %.02426.i36.i to i32
  %i.at = load i8, ptr %i.i, align 1
  %.2128.i = select i1 %i.ap, i32 %i.as, i32 %.0126.i
  %.122.i47.i = select i1 %i.ap, i8 %i.at, i8 %.02127.i35.i
  %.1.i48.i = select i1 %i.ap, i32 %i.ar, i32 %.02028.i34.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvm9StringRefC2EPKc.exit.i39.i
  %.1127.i = phi i32 [ %.2128.i, %bb.f ], [ %.0126.i, %_ZN4llvm9StringRefC2EPKc.exit.i39.i ] ; 4 uses
  %.223.i42.i = phi i8 [ %.122.i47.i, %bb.f ], [ %.02127.i35.i, %_ZN4llvm9StringRefC2EPKc.exit.i39.i ] ; 2 uses
  %.2.i43.i = phi i32 [ %.1.i48.i, %bb.f ], [ %.02028.i34.i, %_ZN4llvm9StringRefC2EPKc.exit.i39.i ] ; 3 uses
  %i.au = add nuw nsw i64 %.02426.i36.i, 1        ; 2 uses
  %exitcond.not.i44.i = icmp eq i64 %i.au, 21
  br i1 %exitcond.not.i44.i, label %._crit_edge.i45.i, label %_ZN4llvm9StringRefC2EPKc.exit.i39.i.a, !llvm.loop !57

._crit_edge.i65.i:                                ; preds = %bb.i
  %i.av = icmp eq i32 %.2.i63.i, -1
  %i.aw = sext i32 %.2.i63.i to i64
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %i.aw)
  %.0.i66.i = select i1 %i.av, i64 0, i64 %i.ax
  %i.ay = icmp ne i32 %.1.i, -1
  %i.az = icmp ne i32 %.1127.i, -1
  %or.cond.i = select i1 %i.ay, i1 %i.az, i1 false
  %i.ba = icmp ne i32 %.1130.i, -1
  %or.cond3.i = select i1 %or.cond.i, i1 %i.ba, i1 false
  %i.bb = icmp eq i64 %i.an, %.0.i66.i
  %or.cond132.i = select i1 %or.cond3.i, i1 %i.bb, i1 false
  br i1 %or.cond132.i, label %bb.j, label %_ZN4llvm3sys7unicodeL21nameToHangulCodePointENS_9StringRefEbRNS_11SmallStringILj64EEE.exit.thread

.lr.ph.i53.i:                                     ; preds = %bb.i, %._crit_edge.i45.i
  %.0129.i = phi i32 [ -1, %._crit_edge.i45.i ], [ %.1130.i, %bb.i ] ; 2 uses
  %.02028.i54.i = phi i32 [ -1, %._crit_edge.i45.i ], [ %.2.i63.i, %bb.i ] ; 3 uses
  %.02426.i56.i = phi i64 [ 0, %._crit_edge.i45.i ], [ %i.bh, %bb.i ] ; 3 uses
  %gep.i57.i = getelementptr [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm3sys7unicodeL15HangulSyllablesE, i64 16), i64 %.02426.i56.i
  %i.bc = load ptr, ptr %gep.i57.i, align 8, !tbaa !17 ; 3 uses
  %.not.i.i58.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i58.i, label %_ZN4llvm9StringRefC2EPKc.exit.i59.i, label %13

13:                                               ; preds = %.lr.ph.i53.i
  %14 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bc) #17
  br label %_ZN4llvm9StringRefC2EPKc.exit.i59.i

_ZN4llvm9StringRefC2EPKc.exit.i59.i:              ; preds = %13, %.lr.ph.i53.i
  %.sroa.0.0.i.i60.i = phi i64 [ %14, %13 ], [ 0, %.lr.ph.i53.i ] ; 2 uses
  %15 = trunc i64 %.sroa.0.0.i.i60.i to i32
  %.not.i61.i = icmp slt i32 %.02028.i54.i, %15
  br i1 %.not.i61.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i59.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  store i8 %i.al, ptr %i.g, align 1, !tbaa !14
  %i.bd = call fastcc noundef zeroext i1 @_ZN4llvm3sys7unicodeL10startsWithENS_9StringRefES2_bRmRcb(ptr %i.am, i64 %i.an, ptr %i.bc, i64 %.sroa.0.0.i.i60.i, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.g, i1 noundef zeroext false) ; 2 uses
  %i.be = load i64, ptr %i.f, align 8
  %i.bf = trunc i64 %i.be to i32
  %i.bg = trunc i64 %.02426.i56.i to i32
  %.2131.i = select i1 %i.bd, i32 %i.bg, i32 %.0129.i
  %.1.i68.i = select i1 %i.bd, i32 %i.bf, i32 %.02028.i54.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4llvm9StringRefC2EPKc.exit.i59.i
  %.1130.i = phi i32 [ %.2131.i, %bb.h ], [ %.0129.i, %_ZN4llvm9StringRefC2EPKc.exit.i59.i ] ; 4 uses
  %.2.i63.i = phi i32 [ %.1.i68.i, %bb.h ], [ %.02028.i54.i, %_ZN4llvm9StringRefC2EPKc.exit.i59.i ] ; 3 uses
  %i.bh = add nuw nsw i64 %.02426.i56.i, 1        ; 2 uses
  %exitcond.not.i64.i = icmp eq i64 %i.bh, 28
  br i1 %exitcond.not.i64.i, label %._crit_edge.i65.i, label %.lr.ph.i53.i, !llvm.loop !57

bb.j:                                             ; preds = %._crit_edge.i65.i
  br i1 %2, label %_ZN4llvm3sys7unicodeL21nameToHangulCodePointENS_9StringRefEbRNS_11SmallStringILj64EEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = load i64, ptr %i.p, align 8, !tbaa !12  ; 2 uses
  %i.bj = add i64 %i.bi, 16                       ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !13
  %i.bm = icmp ult i64 %i.bl, %i.bj
  br i1 %i.bm, label %bb.l, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull %i.bn, i64 noundef %i.bj, i64 noundef 1) #17
  %.pre8.pre.i.i.i = load i64, ptr %i.p, align 8, !tbaa !12
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.pre8.i.i.i = phi i64 [ %i.bi, %bb.k ], [ %.pre8.pre.i.i.i, %bb.l ]
  %i.bo = load ptr, ptr %3, align 8, !tbaa !11
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.pre8.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bp, ptr noundef nonnull align 1 dereferenceable(16) @.str.2, i64 16, i1 false)
  %.pre.i.i.i = load i64, ptr %i.p, align 8, !tbaa !12
  %i.bq = add i64 %.pre.i.i.i, 16                 ; 3 uses
  store i64 %i.bq, ptr %i.p, align 8, !tbaa !12
  %i.br = sext i32 %.1.i to i64                   ; 2 uses
  %i.bs = getelementptr inbounds [24 x i8], ptr @_ZN4llvm3sys7unicodeL15HangulSyllablesE, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !17 ; 2 uses
  %i.bu = add nsw i64 %i.br, -19
  %.not.i73.i = icmp ult i64 %i.bu, 9
  br i1 %.not.i73.i, label %_ZN4llvm9StringRefC2EPKc.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i
  %i.bv = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bt) #17
  br label %_ZN4llvm9StringRefC2EPKc.exit.i

_ZN4llvm9StringRefC2EPKc.exit.i:                  ; preds = %bb.m, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i
  %.sroa.0.0.i.i = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ] ; 4 uses
  %i.bw = add i64 %.sroa.0.0.i.i, %i.bq           ; 2 uses
  %i.bx = load i64, ptr %i.bk, align 8, !tbaa !13
  %i.by = icmp ult i64 %i.bx, %i.bw
  br i1 %i.by, label %bb.n, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i74.i

bb.n:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull %i.bz, i64 noundef %i.bw, i64 noundef 1) #17
  %.pre8.pre.i.i78.i = load i64, ptr %i.p, align 8, !tbaa !12
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i74.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i74.i: ; preds = %bb.n, %_ZN4llvm9StringRefC2EPKc.exit.i
  %.pre8.i.i75.i = phi i64 [ %i.bq, %_ZN4llvm9StringRefC2EPKc.exit.i ], [ %.pre8.pre.i.i78.i, %bb.n ] ; 2 uses
  %.not.i.i.i76.i = icmp samesign eq i64 %.sroa.0.0.i.i, 0
  br i1 %.not.i.i.i76.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i74.i
  %i.ca = load ptr, ptr %3, align 8, !tbaa !11
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.pre8.i.i75.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cb, ptr align 1 %i.bt, i64 %.sroa.0.0.i.i, i1 false)
  %.pre.i.i77.i = load i64, ptr %i.p, align 8, !tbaa !12
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i74.i
  %i.cc = phi i64 [ %.pre8.i.i75.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i74.i ], [ %.pre.i.i77.i, %bb.o ]
  %i.cd = add i64 %i.cc, %.sroa.0.0.i.i           ; 3 uses
  store i64 %i.cd, ptr %i.p, align 8, !tbaa !12
  %i.ce = sext i32 %.1127.i to i64                ; 2 uses
  %i.cf = getelementptr inbounds [24 x i8], ptr @_ZN4llvm3sys7unicodeL15HangulSyllablesE, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !17 ; 2 uses
  %i.ci = add nsw i64 %i.ce, -21
  %.not.i80.i = icmp ult i64 %i.ci, 7
  br i1 %.not.i80.i, label %_ZN4llvm9StringRefC2EPKc.exit82.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ch) #17
  br label %_ZN4llvm9StringRefC2EPKc.exit82.i

_ZN4llvm9StringRefC2EPKc.exit82.i:                ; preds = %bb.q, %bb.p
  %.sroa.0.0.i81.i = phi i64 [ %i.cj, %bb.q ], [ 0, %bb.p ] ; 4 uses
  %i.ck = add i64 %.sroa.0.0.i81.i, %i.cd         ; 2 uses
  %i.cl = load i64, ptr %i.bk, align 8, !tbaa !13
  %i.cm = icmp ult i64 %i.cl, %i.ck
  br i1 %i.cm, label %bb.r, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i83.i

bb.r:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit82.i
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull %i.cn, i64 noundef %i.ck, i64 noundef 1) #17
  %.pre8.pre.i.i87.i = load i64, ptr %i.p, align 8, !tbaa !12
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i83.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i83.i: ; preds = %bb.r, %_ZN4llvm9StringRefC2EPKc.exit82.i
  %.pre8.i.i84.i = phi i64 [ %i.cd, %_ZN4llvm9StringRefC2EPKc.exit82.i ], [ %.pre8.pre.i.i87.i, %bb.r ] ; 2 uses
  %.not.i.i.i85.i = icmp samesign eq i64 %.sroa.0.0.i81.i, 0
  br i1 %.not.i.i.i85.i, label %_ZN4llvm9StringRefC2EPKc.exit91.i, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i83.i
  %i.co = load ptr, ptr %3, align 8, !tbaa !11
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %.pre8.i.i84.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr align 1 %i.ch, i64 %.sroa.0.0.i81.i, i1 false)
  %.pre.i.i86.i = load i64, ptr %i.p, align 8, !tbaa !12
  br label %_ZN4llvm9StringRefC2EPKc.exit91.i

_ZN4llvm9StringRefC2EPKc.exit91.i:                ; preds = %bb.s, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i83.i
  %i.cq = phi i64 [ %.pre8.i.i84.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i83.i ], [ %.pre.i.i86.i, %bb.s ]
  %i.cr = add i64 %i.cq, %.sroa.0.0.i81.i         ; 3 uses
  store i64 %i.cr, ptr %i.p, align 8, !tbaa !12
  %i.cs = sext i32 %.1130.i to i64
  %i.ct = getelementptr inbounds [24 x i8], ptr @_ZN4llvm3sys7unicodeL15HangulSyllablesE, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !17 ; 2 uses
  %i.cw = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cv) #17 ; 4 uses
  %i.cx = add i64 %i.cw, %i.cr                    ; 2 uses
  %i.cy = load i64, ptr %i.bk, align 8, !tbaa !13
  %i.cz = icmp ult i64 %i.cy, %i.cx
  br i1 %i.cz, label %bb.t, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i92.i

bb.t:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit91.i
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull %i.da, i64 noundef %i.cx, i64 noundef 1) #17
  %.pre8.pre.i.i96.i = load i64, ptr %i.p, align 8, !tbaa !12
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i92.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i92.i: ; preds = %bb.t, %_ZN4llvm9StringRefC2EPKc.exit91.i
  %.pre8.i.i93.i = phi i64 [ %i.cr, %_ZN4llvm9StringRefC2EPKc.exit91.i ], [ %.pre8.pre.i.i96.i, %bb.t ] ; 2 uses
  %.not.i.i.i94.i = icmp samesign eq i64 %i.cw, 0
  br i1 %.not.i.i.i94.i, label %_ZN4llvm11SmallStringILj64EE6appendENS_9StringRefE.exit97.i, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i92.i
  %i.db = load ptr, ptr %3, align 8, !tbaa !11
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %.pre8.i.i93.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dc, ptr nonnull align 1 %i.cv, i64 %i.cw, i1 false)
  %.pre.i.i95.i = load i64, ptr %i.p, align 8, !tbaa !12
  br label %_ZN4llvm11SmallStringILj64EE6appendENS_9StringRefE.exit97.i

_ZN4llvm11SmallStringILj64EE6appendENS_9StringRefE.exit97.i: ; preds = %bb.u, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i92.i
  %i.dd = phi i64 [ %.pre8.i.i93.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i92.i ], [ %.pre.i.i95.i, %bb.u ]
  %i.de = add i64 %i.dd, %i.cw
  store i64 %i.de, ptr %i.p, align 8, !tbaa !12
  br label %_ZN4llvm3sys7unicodeL21nameToHangulCodePointENS_9StringRefEbRNS_11SmallStringILj64EEE.exit

_ZN4llvm3sys7unicodeL21nameToHangulCodePointENS_9StringRefEbRNS_11SmallStringILj64EEE.exit.thread: ; preds = %bb.b, %._crit_edge.i65.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #17
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.dg = ptrtoint ptr %i.df to i64
  br i1 %2, label %.split.us.i, label %.split.i

_ZN4llvm3sys7unicodeL21nameToHangulCodePointENS_9StringRefEbRNS_11SmallStringILj64EEE.exit: ; preds = %bb.j, %_ZN4llvm11SmallStringILj64EE6appendENS_9StringRefE.exit97.i
  %i.dh = mul i32 %.1.i, 21
  %i.di = add i32 %.1127.i, %i.dh
  %i.dj = mul i32 %i.di, 28
  %i.dk = add i32 %i.dj, 44032
  %i.dl = add i32 %i.dk, %.1130.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #17
  br label %.thread

.split.us.i:                                      ; preds = %_ZN4llvm3sys7unicodeL21nameToHangulCodePointENS_9StringRefEbRNS_11SmallStringILj64EEE.exit.thread, %.thread41.us.i
  %.0.idx74.us.i = phi i64 [ %.0.add.us.i, %.thread41.us.i ], [ 0, %_ZN4llvm3sys7unicodeL21nameToHangulCodePointENS_9StringRefEbRNS_11SmallStringILj64EEE.exit.thread ] ; 2 uses
  %.0.ptr75.us.i = getelementptr inbounds nuw i8, ptr @_ZN4llvm3sys7unicodeL23GeneratedNamesDataTableE, i64 %.0.idx74.us.i ; 4 uses
  store i64 0, ptr %i.p, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i8 0, ptr %i.d, align 1, !tbaa !14
  %.sroa.03.0.copyload.us.i = load ptr, ptr %.0.ptr75.us.i, align 8, !tbaa !17 ; 2 uses
  %.sroa.24.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %.0.ptr75.us.i, i64 8
  %.sroa.24.0.copyload.us.i = load i64, ptr %.sroa.24.0..sroa_idx.us.i, align 8, !tbaa !15 ; 7 uses
  %.not.i.i25 = icmp ult i64 %1, %.sroa.24.0.copyload.us.i
  br i1 %.not.i.i25, label %.thread41.us.i, label %bb.v

bb.v:                                             ; preds = %.split.us.i
  %i.dm = icmp eq i64 %.sroa.24.0.copyload.us.i, 0
  br i1 %i.dm, label %bb.w, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i:      ; preds = %bb.v
  %bcmp.i.i = call i32 @bcmp(ptr %0, ptr readonly %.sroa.03.0.copyload.us.i, i64 %.sroa.24.0.copyload.us.i)
  %i.dn = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.dn, label %bb.w, label %.thread41.us.i

bb.w:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i, %bb.v
  store i64 %.sroa.24.0.copyload.us.i, ptr %i.c, align 8, !tbaa !15
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.24.0.copyload.us.i ; 4 uses
  %i.dp = sub nuw i64 %1, %.sroa.24.0.copyload.us.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  store i64 0, ptr %i.e, align 8, !tbaa !64
  %i.dq = ashr i64 %i.dp, 2                       ; 2 uses
  %i.dr = icmp sgt i64 %i.dq, 0
  br i1 %i.dr, label %.lr.ph.preheader.i.i.i.i.i.i.us.i, label %._crit_edge.i.i.i.i.i.i.us.i

.lr.ph.preheader.i.i.i.i.i.i.us.i:                ; preds = %bb.w
  %i.ds = and i64 %i.dp, -4
  %scevgep.i.i.i.i.i.i.us.i = getelementptr i8, ptr %i.do, i64 %i.ds
  br label %.lr.ph.i.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i.i.us.i:                          ; preds = %bb.aa, %.lr.ph.preheader.i.i.i.i.i.i.us.i
  %.044.i.i.i.i.i.i.us.i = phi i64 [ %i.ef, %bb.aa ], [ %i.dq, %.lr.ph.preheader.i.i.i.i.i.i.us.i ] ; 2 uses
end_hunk_0
