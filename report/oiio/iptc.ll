Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/iptc?download=true
inline.NumInlined: 345
inline.NumDeleted: 160
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" = type { i32, ptr, ptr, i8, i32 }
%"class.std::locale::id" = type { i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.OpenImageIO::v3_1::basic_string_view" = type { ptr, i64 }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

@_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE = internal unnamed_addr constant [53 x %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag"] [%"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 3, ptr @.str.2, ptr null, i8 0, i32 67 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 4, ptr @.str.3, ptr null, i8 1, i32 68 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 5, ptr @.str.4, ptr null, i8 0, i32 64 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 7, ptr @.str.5, ptr null, i8 0, i32 64 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 10, ptr @.str.6, ptr null, i8 0, i32 1 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 12, ptr @.str.7, ptr null, i8 1, i32 236 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 15, ptr @.str.8, ptr null, i8 0, i32 3 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 20, ptr @.str.9, ptr null, i8 1, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 22, ptr @.str.10, ptr null, i8 0, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 25, ptr @.str.11, ptr null, i8 1, i32 64 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 26, ptr @.str.12, ptr null, i8 1, i32 3 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 27, ptr @.str.13, ptr null, i8 1, i32 64 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 30, ptr @.str.14, ptr null, i8 0, i32 8 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 35, ptr @.str.15, ptr null, i8 0, i32 11 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 37, ptr @.str.16, ptr null, i8 0, i32 8 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 38, ptr @.str.17, ptr null, i8 0, i32 11 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 40, ptr @.str.18, ptr null, i8 0, i32 256 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 45, ptr @.str.19, ptr null, i8 1, i32 10 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 47, ptr @.str.20, ptr null, i8 0, i32 8 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 50, ptr @.str.21, ptr null, i8 1, i32 8 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 55, ptr @.str.22, ptr null, i8 0, i32 8 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 60, ptr @.str.23, ptr null, i8 0, i32 11 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 62, ptr @.str.24, ptr null, i8 0, i32 8 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 63, ptr @.str.25, ptr null, i8 0, i32 11 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 65, ptr @.str.26, ptr @.str.27, i8 0, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 70, ptr @.str.28, ptr null, i8 0, i32 10 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 80, ptr @.str.29, ptr @.str.30, i8 1, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 85, ptr @.str.31, ptr null, i8 1, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 90, ptr @.str.32, ptr null, i8 0, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 92, ptr @.str.33, ptr null, i8 0, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 95, ptr @.str.34, ptr null, i8 0, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 100, ptr @.str.35, ptr null, i8 0, i32 3 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 101, ptr @.str.36, ptr null, i8 0, i32 64 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 103, ptr @.str.37, ptr null, i8 0, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 105, ptr @.str.38, ptr null, i8 0, i32 256 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 110, ptr @.str.39, ptr null, i8 0, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 115, ptr @.str.40, ptr null, i8 0, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 116, ptr @.str.41, ptr @.str.42, i8 0, i32 128 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 118, ptr @.str.43, ptr null, i8 0, i32 128 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 120, ptr @.str.44, ptr @.str.45, i8 0, i32 2000 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 121, ptr @.str.46, ptr null, i8 0, i32 256 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 122, ptr @.str.47, ptr null, i8 0, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 184, ptr @.str.48, ptr null, i8 0, i32 64 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 185, ptr @.str.49, ptr null, i8 0, i32 256 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 186, ptr @.str.50, ptr null, i8 0, i32 64 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 187, ptr @.str.51, ptr null, i8 0, i32 128 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 188, ptr @.str.52, ptr null, i8 0, i32 128 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 221, ptr @.str.53, ptr null, i8 0, i32 64 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 225, ptr @.str.54, ptr null, i8 0, i32 64 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 228, ptr @.str.55, ptr null, i8 0, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 230, ptr @.str.56, ptr null, i8 0, i32 1024 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 231, ptr @.str.57, ptr null, i8 0, i32 256 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 -1, ptr null, ptr null, i8 0, i32 0 }], align 16
@.str = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@_ZN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, align 8
@_ZGVN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"IPTC:ObjectTypeReference\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"IPTC:ObjectAttributeReference\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"IPTC:ObjectName\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"IPTC:EditStatus\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"IPTC:Urgency\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"IPTC:SubjectReference\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"IPTC:Category\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"IPTC:SupplementalCategories\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"IPTC:FixtureIdentifier\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"IPTC:Keywords\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"IPTC:ContentLocationCode\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"IPTC:ContentLocationName\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"IPTC:ReleaseDate\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"IPTC:ReleaseTime\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"IPTC:ExpirationDate\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"IPTC:ExpirationTime\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"IPTC:Instructions\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"IPTC:ReferenceService\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"IPTC:ReferenceDate\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"IPTC:ReferenceNumber\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"IPTC:DateCreated\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"IPTC:TimeCreated\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"IPTC:DigitalCreationDate\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"IPTC:DigitalCreationTime\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"IPTC:OriginatingProgram\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"Software\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"IPTC:ProgramVersion\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"IPTC:Creator\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"Artist\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"IPTC:AuthorsPosition\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"IPTC:City\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"IPTC:Sublocation\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"IPTC:State\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"IPTC:CountryCode\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"IPTC:Country\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"IPTC:TransmissionReference\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"IPTC:Headline\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"IPTC:Provider\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"IPTC:Source\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"IPTC:CopyrightNotice\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"Copyright\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"IPTC:Contact\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"IPTC:Caption\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"ImageDescription\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"IPTC:LocalCaption\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"IPTC:CaptionWriter\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"IPTC:JobID\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"IPTC:MasterDocumentID\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"IPTC:ShortDocumentID\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"IPTC:UniqueDocumentID\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"IPTC:OwnerID\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"IPTC:Prefs\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"IPTC:ClassifyState\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"IPTC:SimilarityIndex\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"IPTC:DocumentNotes\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"IPTC:DocumentHistory\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_115decode_iptc_iimEPKviRNS0_9ImageSpecE(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(160) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 7 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %15 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.c = icmp sgt i32 %1, 4
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.aa
  %.032114 = phi ptr [ %0, %.lr.ph ], [ %i.dh, %bb.aa ] ; 5 uses
  %.074113 = phi i32 [ %1, %.lr.ph ], [ %i.di, %bb.aa ]
  %i.r = load i8, ptr %.032114, align 1, !tbaa !8
  %i.s = icmp eq i8 %i.r, 28
  br i1 %i.s, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.032114, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !8     ; 2 uses
  %.off = add i8 %i.u, -1
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.032114, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.032114, i64 3
  %16 = load i16, ptr %i.x, align 1
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %i.y = zext i16 %17 to i32
  %i.z = getelementptr inbounds nuw i8, ptr %.032114, i64 5 ; 3 uses
  %i.aa = add nsw i32 %.074113, -5                ; 2 uses
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.aa, i32 %i.y) ; 5 uses
  %i.ab = icmp eq i8 %i.u, 2
  br i1 %i.ab, label %bb.d, label %.critedge2._crit_edge

.critedge2._crit_edge:                            ; preds = %.critedge2
  %.pre120 = zext nneg i32 %.sroa.speculated to i64
  br label %bb.aa

bb.d:                                             ; preds = %.critedge2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.ac = zext nneg i32 %.sroa.speculated to i64  ; 3 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !14
  %i.ad = icmp samesign ugt i32 %.sroa.speculated, 15
  br i1 %i.ad, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ae, ptr %3, align 8, !tbaa !16
  %i.af = load i64, ptr %i.b, align 8, !tbaa !14
  store i64 %i.af, ptr %i.d, align 8, !tbaa !8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.d
  %i.ag = phi ptr [ %i.ae, %.noexc.i ], [ %i.d, %bb.d ] ; 2 uses
  %trunc = trunc nuw i32 %.sroa.speculated to i16
  switch i16 %trunc, label %bb.f [
    i16 1, label %bb.e
    i16 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ah = load i8, ptr %i.z, align 1, !tbaa !8
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !8
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull align 1 %i.z, i64 %i.ac, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !14  ; 2 uses
  store i64 %i.ai, ptr %i.e, align 8, !tbaa !17
  %i.aj = load ptr, ptr %3, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 0, ptr %i.ak, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  switch i8 %i.w, label %bb.h [
    i8 3, label %bb.i
    i8 4, label %.fold.split
    i8 5, label %.fold.split140
    i8 7, label %.fold.split141
    i8 10, label %.fold.split142
    i8 12, label %.fold.split143
    i8 15, label %.fold.split144
    i8 20, label %.fold.split145
    i8 22, label %.fold.split146
    i8 25, label %.fold.split147
    i8 26, label %.fold.split148
    i8 27, label %.fold.split149
    i8 30, label %.fold.split150
    i8 35, label %.fold.split151
    i8 37, label %.fold.split152
    i8 38, label %.fold.split153
    i8 40, label %.fold.split154
    i8 45, label %.fold.split155
    i8 47, label %.fold.split156
    i8 50, label %.fold.split157
    i8 55, label %.fold.split158
    i8 60, label %.fold.split159
    i8 62, label %.fold.split160
    i8 63, label %.fold.split161
    i8 65, label %.fold.split162
    i8 70, label %.fold.split163
    i8 80, label %.fold.split164
    i8 85, label %.fold.split165
    i8 90, label %.fold.split166
    i8 92, label %.fold.split167
    i8 95, label %.fold.split168
    i8 100, label %.fold.split169
  ]

bb.h:                                             ; preds = %bb.g
  switch i8 %i.w, label %.loopexit [
    i8 101, label %bb.i
    i8 103, label %.fold.split170
    i8 105, label %.fold.split171
    i8 110, label %.fold.split172
    i8 115, label %.fold.split173
    i8 116, label %.fold.split174
    i8 118, label %.fold.split175
    i8 120, label %.fold.split176
    i8 121, label %.fold.split177
    i8 122, label %.fold.split178
    i8 -72, label %.fold.split179
    i8 -71, label %.fold.split180
    i8 -70, label %.fold.split181
    i8 -69, label %.fold.split182
    i8 -68, label %.fold.split183
    i8 -35, label %.fold.split184
    i8 -31, label %.fold.split185
    i8 -28, label %.fold.split186
    i8 -26, label %.fold.split187
    i8 -25, label %.fold.split188
  ]

.fold.split:                                      ; preds = %bb.g
  br label %bb.i

.fold.split140:                                   ; preds = %bb.g
  br label %bb.i

.fold.split141:                                   ; preds = %bb.g
  br label %bb.i

.fold.split142:                                   ; preds = %bb.g
  br label %bb.i

.fold.split143:                                   ; preds = %bb.g
  br label %bb.i

.fold.split144:                                   ; preds = %bb.g
  br label %bb.i

.fold.split145:                                   ; preds = %bb.g
  br label %bb.i

.fold.split146:                                   ; preds = %bb.g
  br label %bb.i

.fold.split147:                                   ; preds = %bb.g
  br label %bb.i

.fold.split148:                                   ; preds = %bb.g
  br label %bb.i

.fold.split149:                                   ; preds = %bb.g
  br label %bb.i

.fold.split150:                                   ; preds = %bb.g
  br label %bb.i

.fold.split151:                                   ; preds = %bb.g
  br label %bb.i

.fold.split152:                                   ; preds = %bb.g
  br label %bb.i

.fold.split153:                                   ; preds = %bb.g
  br label %bb.i

.fold.split154:                                   ; preds = %bb.g
  br label %bb.i

.fold.split155:                                   ; preds = %bb.g
  br label %bb.i

.fold.split156:                                   ; preds = %bb.g
  br label %bb.i

.fold.split157:                                   ; preds = %bb.g
  br label %bb.i

.fold.split158:                                   ; preds = %bb.g
  br label %bb.i

.fold.split159:                                   ; preds = %bb.g
  br label %bb.i

.fold.split160:                                   ; preds = %bb.g
  br label %bb.i

.fold.split161:                                   ; preds = %bb.g
  br label %bb.i

.fold.split162:                                   ; preds = %bb.g
  br label %bb.i

.fold.split163:                                   ; preds = %bb.g
  br label %bb.i

.fold.split164:                                   ; preds = %bb.g
  br label %bb.i

.fold.split165:                                   ; preds = %bb.g
  br label %bb.i

.fold.split166:                                   ; preds = %bb.g
  br label %bb.i

.fold.split167:                                   ; preds = %bb.g
  br label %bb.i

.fold.split168:                                   ; preds = %bb.g
  br label %bb.i

.fold.split169:                                   ; preds = %bb.g
  br label %bb.i

.fold.split170:                                   ; preds = %bb.h
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag:bb.a

bb.l:                                             ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  %i.ac = icmp eq i64 %i.c, 1
  br i1 %i.ac, label %bb.m, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %2, align 1, !tbaa !8
  store i8 %i.ad, ptr %1, align 1, !tbaa !8
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ae = icmp eq i64 %i.l, 1
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.l ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag                     ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !59

bb.n:                                             ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.p, label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !8
  store i8 %i.ak, ptr %i.g, align 1, !tbaa !8
  br label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = sub nuw i64 %i.c, %i.l
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 3 uses
  store ptr %i.an, ptr %i.f, align 8, !tbaa !30
  %i.ao = icmp sgt i64 %i.l, 1
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !59

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.ae, label %bb.s, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %1, align 1, !tbaa !8
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !8
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.l
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !30
  %i.as = icmp sgt i64 %i.l, 1
  br i1 %i.as, label %bb.t, label %bb.u, !prof !59

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55
  %i.at = icmp eq i64 %i.l, 1
  br i1 %i.at, label %bb.v, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %2, align 1, !tbaa !8
  store i8 %i.au, ptr %1, align 1, !tbaa !8
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.w:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8, !tbaa !29    ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = sub i64 %i.i, %i.aw                     ; 4 uses
  %i.ay = sub i64 9223372036854775807, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #14
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #16
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !59

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1, !tbaa !8
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bm = icmp sgt i64 %i.c, 1
  br i1 %i.bm, label %bb.ad, label %bb.ae, !prof !59

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bn = icmp eq i64 %i.c, 1
  br i1 %i.bn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bo = load i8, ptr %2, align 1, !tbaa !8
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.c ; 3 uses
  %i.bq = sub i64 %i.i, %i.bg                     ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.ah, label %bb.ai, !prof !59

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bs = icmp eq i64 %i.bq, 1
  br i1 %i.bs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bt = load i8, ptr %1, align 1, !tbaa !8
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i59 = icmp eq ptr %i.av, null
  br i1 %.not.i59, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bx) #15
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bf, ptr %0, align 8, !tbaa !29
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !30
  %i.by = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.by, ptr %i.d, align 8, !tbaa !36
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin nounwind }
attributes #16 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = distinct !{!0, !27}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !13, i64 8, !5, i64 16}
!16 = !{!15, !10, i64 0}
!17 = !{!15, !13, i64 8}
!18 = !{!"bool", !5, i64 0}
!19 = !{!"_ZTSN11OpenImageIO4v3_112_GLOBAL__N_16IIMtagE", !6, i64 0, !10, i64 8, !10, i64 16, !18, i64 24, !6, i64 28}
!20 = !{!19, !10, i64 8}
!21 = !{!19, !18, i64 24}
!22 = !{i8 0, i8 2}
!23 = !{}
!24 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !10, i64 0, !13, i64 8}
!25 = !{!24, !10, i64 0}
!26 = !{!24, !13, i64 8}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!29 = !{!28, !10, i64 0}
!30 = !{!28, !10, i64 8}
!31 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!32, !31, i64 0}
!34 = !{!32, !31, i64 8}
!35 = !{!32, !31, i64 16}
!36 = !{!28, !10, i64 16}
!37 = distinct !{!37, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!38 = distinct !{!38, !37, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!39 = distinct !{!39, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
!40 = distinct !{!40, !39, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!41 = distinct !{!41, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!42 = distinct !{!42, !41, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!43 = distinct !{!43, !27}
!44 = !{!38}
!45 = !{!40}
!46 = !{!42, !40}
!47 = distinct !{!47, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!48 = distinct !{!48, !47, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!49 = distinct !{!49, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!50 = distinct !{!50, !49, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!51 = distinct !{!51, !27}
!52 = !{!31, !31, i64 0}
!53 = !{!19, !6, i64 28}
!54 = !{!48}
!55 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!56 = !{!19, !6, i64 0}
!57 = !{!50}
!58 = !{!10, !10, i64 0}
!59 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_1
