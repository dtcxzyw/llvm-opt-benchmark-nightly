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

@_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE = internal unnamed_addr constant [53 x %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag"] [%"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 3, ptr @.str.2, ptr null, i8 0, i32 67 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 4, ptr @.str.3, ptr null, i8 1, i32 68 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 5, ptr @.str.4, ptr null, i8 0, i32 64 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 7, ptr @.str.5, ptr null, i8 0, i32 64 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 10, ptr @.str.6, ptr null, i8 0, i32 1 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 12, ptr @.str.7, ptr null, i8 1, i32 236 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 15, ptr @.str.8, ptr null, i8 0, i32 3 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 20, ptr @.str.9, ptr null, i8 1, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 22, ptr @.str.10, ptr null, i8 0, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 25, ptr @.str.11, ptr null, i8 1, i32 64 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 26, ptr @.str.12, ptr null, i8 1, i32 3 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 27, ptr @.str.13, ptr null, i8 1, i32 64 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 30, ptr @.str.14, ptr null, i8 0, i32 8 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 35, ptr @.str.15, ptr null, i8 0, i32 11 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 37, ptr @.str.16, ptr null, i8 0, i32 8 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 38, ptr @.str.17, ptr null, i8 0, i32 11 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 40, ptr @.str.18, ptr null, i8 0, i32 256 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 45, ptr @.str.19, ptr null, i8 1, i32 10 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 47, ptr @.str.20, ptr null, i8 0, i32 8 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 50, ptr @.str.21, ptr null, i8 1, i32 8 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 55, ptr @.str.22, ptr null, i8 0, i32 8 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 60, ptr @.str.23, ptr null, i8 0, i32 11 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 62, ptr @.str.24, ptr null, i8 0, i32 8 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 63, ptr @.str.25, ptr null, i8 0, i32 11 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 65, ptr @.str.26, ptr @.str.27, i8 0, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 70, ptr @.str.28, ptr null, i8 0, i32 10 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 80, ptr @.str.29, ptr @.str.30, i8 1, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 85, ptr @.str.31, ptr null, i8 1, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 90, ptr @.str.32, ptr null, i8 0, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 92, ptr @.str.33, ptr null, i8 0, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 95, ptr @.str.34, ptr null, i8 0, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 100, ptr @.str.35, ptr null, i8 0, i32 3 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 101, ptr @.str.36, ptr null, i8 0, i32 64 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 103, ptr @.str.37, ptr null, i8 0, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 105, ptr @.str.38, ptr null, i8 0, i32 256 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 110, ptr @.str.39, ptr null, i8 0, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 115, ptr @.str.40, ptr null, i8 0, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 116, ptr @.str.41, ptr @.str.42, i8 0, i32 128 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 118, ptr @.str.43, ptr null, i8 0, i32 128 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 120, ptr @.str.44, ptr @.str.45, i8 0, i32 2000 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 121, ptr @.str.46, ptr null, i8 0, i32 256 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 122, ptr @.str.47, ptr null, i8 0, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 184, ptr @.str.48, ptr null, i8 0, i32 64 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 185, ptr @.str.49, ptr null, i8 0, i32 256 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 186, ptr @.str.50, ptr null, i8 0, i32 64 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 187, ptr @.str.51, ptr null, i8 0, i32 128 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 188, ptr @.str.52, ptr null, i8 0, i32 128 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 221, ptr @.str.53, ptr null, i8 0, i32 64 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 225, ptr @.str.54, ptr null, i8 0, i32 64 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 228, ptr @.str.55, ptr null, i8 0, i32 32 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 230, ptr @.str.56, ptr null, i8 0, i32 1024 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 231, ptr @.str.57, ptr null, i8 0, i32 256 }, %"struct.OpenImageIO::v3_1::(anonymous namespace)::IIMtag" { i32 -1, ptr null, ptr null, i8 0, i32 0 }], align 16, !guid !8
@.str = private unnamed_addr constant [3 x i8] c"; \00", align 1, !guid !9
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1, !guid !10
@_ZN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, align 8, !guid !11
@_ZGVN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, align 8, !guid !12
@.str.2 = private unnamed_addr constant [25 x i8] c"IPTC:ObjectTypeReference\00", align 1, !guid !13
@.str.3 = private unnamed_addr constant [30 x i8] c"IPTC:ObjectAttributeReference\00", align 1, !guid !14
@.str.4 = private unnamed_addr constant [16 x i8] c"IPTC:ObjectName\00", align 1, !guid !15
@.str.5 = private unnamed_addr constant [16 x i8] c"IPTC:EditStatus\00", align 1, !guid !16
@.str.6 = private unnamed_addr constant [13 x i8] c"IPTC:Urgency\00", align 1, !guid !17
@.str.7 = private unnamed_addr constant [22 x i8] c"IPTC:SubjectReference\00", align 1, !guid !18
@.str.8 = private unnamed_addr constant [14 x i8] c"IPTC:Category\00", align 1, !guid !19
@.str.9 = private unnamed_addr constant [28 x i8] c"IPTC:SupplementalCategories\00", align 1, !guid !20
@.str.10 = private unnamed_addr constant [23 x i8] c"IPTC:FixtureIdentifier\00", align 1, !guid !21
@.str.11 = private unnamed_addr constant [14 x i8] c"IPTC:Keywords\00", align 1, !guid !22
@.str.12 = private unnamed_addr constant [25 x i8] c"IPTC:ContentLocationCode\00", align 1, !guid !23
@.str.13 = private unnamed_addr constant [25 x i8] c"IPTC:ContentLocationName\00", align 1, !guid !24
@.str.14 = private unnamed_addr constant [17 x i8] c"IPTC:ReleaseDate\00", align 1, !guid !25
@.str.15 = private unnamed_addr constant [17 x i8] c"IPTC:ReleaseTime\00", align 1, !guid !26
@.str.16 = private unnamed_addr constant [20 x i8] c"IPTC:ExpirationDate\00", align 1, !guid !27
@.str.17 = private unnamed_addr constant [20 x i8] c"IPTC:ExpirationTime\00", align 1, !guid !28
@.str.18 = private unnamed_addr constant [18 x i8] c"IPTC:Instructions\00", align 1, !guid !29
@.str.19 = private unnamed_addr constant [22 x i8] c"IPTC:ReferenceService\00", align 1, !guid !30
@.str.20 = private unnamed_addr constant [19 x i8] c"IPTC:ReferenceDate\00", align 1, !guid !31
@.str.21 = private unnamed_addr constant [21 x i8] c"IPTC:ReferenceNumber\00", align 1, !guid !32
@.str.22 = private unnamed_addr constant [17 x i8] c"IPTC:DateCreated\00", align 1, !guid !33
@.str.23 = private unnamed_addr constant [17 x i8] c"IPTC:TimeCreated\00", align 1, !guid !34
@.str.24 = private unnamed_addr constant [25 x i8] c"IPTC:DigitalCreationDate\00", align 1, !guid !35
@.str.25 = private unnamed_addr constant [25 x i8] c"IPTC:DigitalCreationTime\00", align 1, !guid !36
@.str.26 = private unnamed_addr constant [24 x i8] c"IPTC:OriginatingProgram\00", align 1, !guid !37
@.str.27 = private unnamed_addr constant [9 x i8] c"Software\00", align 1, !guid !38
@.str.28 = private unnamed_addr constant [20 x i8] c"IPTC:ProgramVersion\00", align 1, !guid !39
@.str.29 = private unnamed_addr constant [13 x i8] c"IPTC:Creator\00", align 1, !guid !40
@.str.30 = private unnamed_addr constant [7 x i8] c"Artist\00", align 1, !guid !41
@.str.31 = private unnamed_addr constant [21 x i8] c"IPTC:AuthorsPosition\00", align 1, !guid !42
@.str.32 = private unnamed_addr constant [10 x i8] c"IPTC:City\00", align 1, !guid !43
@.str.33 = private unnamed_addr constant [17 x i8] c"IPTC:Sublocation\00", align 1, !guid !44
@.str.34 = private unnamed_addr constant [11 x i8] c"IPTC:State\00", align 1, !guid !45
@.str.35 = private unnamed_addr constant [17 x i8] c"IPTC:CountryCode\00", align 1, !guid !46
@.str.36 = private unnamed_addr constant [13 x i8] c"IPTC:Country\00", align 1, !guid !47
@.str.37 = private unnamed_addr constant [27 x i8] c"IPTC:TransmissionReference\00", align 1, !guid !48
@.str.38 = private unnamed_addr constant [14 x i8] c"IPTC:Headline\00", align 1, !guid !49
@.str.39 = private unnamed_addr constant [14 x i8] c"IPTC:Provider\00", align 1, !guid !50
@.str.40 = private unnamed_addr constant [12 x i8] c"IPTC:Source\00", align 1, !guid !51
@.str.41 = private unnamed_addr constant [21 x i8] c"IPTC:CopyrightNotice\00", align 1, !guid !52
@.str.42 = private unnamed_addr constant [10 x i8] c"Copyright\00", align 1, !guid !53
@.str.43 = private unnamed_addr constant [13 x i8] c"IPTC:Contact\00", align 1, !guid !54
@.str.44 = private unnamed_addr constant [13 x i8] c"IPTC:Caption\00", align 1, !guid !55
@.str.45 = private unnamed_addr constant [17 x i8] c"ImageDescription\00", align 1, !guid !56
@.str.46 = private unnamed_addr constant [18 x i8] c"IPTC:LocalCaption\00", align 1, !guid !57
@.str.47 = private unnamed_addr constant [19 x i8] c"IPTC:CaptionWriter\00", align 1, !guid !58
@.str.48 = private unnamed_addr constant [11 x i8] c"IPTC:JobID\00", align 1, !guid !59
@.str.49 = private unnamed_addr constant [22 x i8] c"IPTC:MasterDocumentID\00", align 1, !guid !60
@.str.50 = private unnamed_addr constant [21 x i8] c"IPTC:ShortDocumentID\00", align 1, !guid !61
@.str.51 = private unnamed_addr constant [22 x i8] c"IPTC:UniqueDocumentID\00", align 1, !guid !62
@.str.52 = private unnamed_addr constant [13 x i8] c"IPTC:OwnerID\00", align 1, !guid !63
@.str.53 = private unnamed_addr constant [11 x i8] c"IPTC:Prefs\00", align 1, !guid !64
@.str.54 = private unnamed_addr constant [19 x i8] c"IPTC:ClassifyState\00", align 1, !guid !65
@.str.55 = private unnamed_addr constant [21 x i8] c"IPTC:SimilarityIndex\00", align 1, !guid !66
@.str.56 = private unnamed_addr constant [19 x i8] c"IPTC:DocumentNotes\00", align 1, !guid !67
@.str.57 = private unnamed_addr constant [21 x i8] c"IPTC:DocumentHistory\00", align 1, !guid !68
@.str.58 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1, !guid !69
@.str.59 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1, !guid !70
@.str.61 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1, !guid !71
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }], !guid !72
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_115decode_iptc_iimEPKviRNS0_9ImageSpecE(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(160) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !106 {
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
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.z
  %.032115 = phi ptr [ %0, %.lr.ph ], [ %i.dm, %bb.z ] ; 6 uses
  %.075114 = phi i32 [ %1, %.lr.ph ], [ %i.dn, %bb.z ]
  %i.r = load i8, ptr %.032115, align 1, !tbaa !73
  %i.s = icmp eq i8 %i.r, 28
  br i1 %i.s, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.032115, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !73    ; 2 uses
  %.off = add i8 %i.u, -1
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.032115, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !73
  %i.x = getelementptr inbounds nuw i8, ptr %.032115, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !73
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.032115, i64 4
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !73
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.aa, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.032115, i64 5 ; 3 uses
  %i.ag = add nsw i32 %.075114, -5                ; 2 uses
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.ag, i32 %i.ae) ; 5 uses
  %i.ah = icmp eq i8 %i.u, 2
  br i1 %i.ah, label %bb.d, label %.critedge2._crit_edge

.critedge2._crit_edge:                            ; preds = %.critedge2
  %.pre123 = zext nneg i32 %.sroa.speculated to i64
  br label %bb.z

bb.d:                                             ; preds = %.critedge2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.ai = zext nneg i32 %.sroa.speculated to i64  ; 3 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 %i.ai, ptr %i.b, align 8, !tbaa !79
  %i.aj = icmp samesign ugt i32 %.sroa.speculated, 15
  br i1 %i.aj, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.ak = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ak, ptr %3, align 8, !tbaa !81
  %i.al = load i64, ptr %i.b, align 8, !tbaa !79
  store i64 %i.al, ptr %i.d, align 8, !tbaa !73
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.d
  %i.am = phi ptr [ %i.ak, %.noexc.i ], [ %i.d, %bb.d ] ; 2 uses
  %trunc = trunc nuw i32 %.sroa.speculated to i16
  switch i16 %trunc, label %bb.f [
    i16 1, label %bb.e
    i16 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.an = load i8, ptr %i.af, align 1, !tbaa !73
  store i8 %i.an, ptr %i.am, align 1, !tbaa !73
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr nonnull align 1 %i.af, i64 %i.ai, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !79  ; 2 uses
  store i64 %i.ao, ptr %i.e, align 8, !tbaa !82
  %i.ap = load ptr, ptr %3, align 8, !tbaa !81
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 0, ptr %i.aq, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  switch i8 %i.w, label %.loopexit [
    i8 3, label %bb.i
    i8 4, label %bb.h
    i8 5, label %.fold.split
    i8 7, label %.fold.split143
    i8 10, label %.fold.split144
    i8 12, label %.fold.split145
    i8 15, label %.fold.split146
    i8 20, label %.fold.split147
    i8 22, label %.fold.split148
    i8 25, label %.fold.split149
    i8 26, label %.fold.split150
    i8 27, label %.fold.split151
    i8 30, label %.fold.split152
    i8 35, label %.fold.split153
    i8 37, label %.fold.split154
    i8 38, label %.fold.split155
    i8 40, label %.fold.split156
    i8 45, label %.fold.split157
    i8 47, label %.fold.split158
    i8 50, label %.fold.split159
    i8 55, label %.fold.split160
    i8 60, label %.fold.split161
    i8 62, label %.fold.split162
    i8 63, label %.fold.split163
    i8 65, label %.fold.split164
    i8 70, label %.fold.split165
    i8 80, label %.fold.split166
    i8 85, label %.fold.split167
    i8 90, label %.fold.split168
    i8 92, label %.fold.split169
    i8 95, label %.fold.split170
    i8 100, label %.fold.split171
    i8 101, label %.fold.split172
    i8 103, label %.fold.split173
    i8 105, label %.fold.split174
    i8 110, label %.fold.split175
    i8 115, label %.fold.split176
    i8 116, label %.fold.split177
    i8 118, label %.fold.split178
    i8 120, label %.fold.split179
    i8 121, label %.fold.split180
    i8 122, label %.fold.split181
    i8 -72, label %.fold.split182
    i8 -71, label %.fold.split183
    i8 -70, label %.fold.split184
    i8 -69, label %.fold.split185
    i8 -68, label %.fold.split186
    i8 -35, label %.fold.split187
    i8 -31, label %.fold.split188
    i8 -28, label %.fold.split189
    i8 -26, label %.fold.split190
    i8 -25, label %.fold.split191
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.i

.fold.split:                                      ; preds = %bb.g
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

.fold.split170:                                   ; preds = %bb.g
  br label %bb.i

.fold.split171:                                   ; preds = %bb.g
  br label %bb.i

.fold.split172:                                   ; preds = %bb.g
  br label %bb.i

.fold.split173:                                   ; preds = %bb.g
  br label %bb.i

.fold.split174:                                   ; preds = %bb.g
  br label %bb.i

.fold.split175:                                   ; preds = %bb.g
  br label %bb.i

.fold.split176:                                   ; preds = %bb.g
  br label %bb.i

.fold.split177:                                   ; preds = %bb.g
  br label %bb.i

.fold.split178:                                   ; preds = %bb.g
  br label %bb.i

.fold.split179:                                   ; preds = %bb.g
  br label %bb.i

.fold.split180:                                   ; preds = %bb.g
  br label %bb.i

.fold.split181:                                   ; preds = %bb.g
  br label %bb.i

.fold.split182:                                   ; preds = %bb.g
  br label %bb.i

.fold.split183:                                   ; preds = %bb.g
  br label %bb.i

.fold.split184:                                   ; preds = %bb.g
  br label %bb.i

.fold.split185:                                   ; preds = %bb.g
  br label %bb.i

.fold.split186:                                   ; preds = %bb.g
  br label %bb.i

.fold.split187:                                   ; preds = %bb.g
  br label %bb.i

.fold.split188:                                   ; preds = %bb.g
  br label %bb.i

.fold.split189:                                   ; preds = %bb.g
  br label %bb.i

.fold.split190:                                   ; preds = %bb.g
  br label %bb.i

.fold.split191:                                   ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %.fold.split191, %.fold.split190, %.fold.split189, %.fold.split188, %.fold.split187, %.fold.split186, %.fold.split185, %.fold.split184, %.fold.split183, %.fold.split182, %.fold.split181, %.fold.split180, %.fold.split179, %.fold.split178, %.fold.split177, %.fold.split176, %.fold.split175, %.fold.split174, %.fold.split173, %.fold.split172, %.fold.split171, %.fold.split170, %.fold.split169, %.fold.split168, %.fold.split167, %.fold.split166, %.fold.split165, %.fold.split164, %.fold.split163, %.fold.split162, %.fold.split161, %.fold.split160, %.fold.split159, %.fold.split158, %.fold.split157, %.fold.split156, %.fold.split155, %.fold.split154, %.fold.split153, %.fold.split152, %.fold.split151, %.fold.split150, %.fold.split149, %.fold.split148, %.fold.split147, %.fold.split146, %.fold.split145, %.fold.split144, %.fold.split143, %.fold.split, %bb.h
  %.lcssa119 = phi ptr [ @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, %bb.g ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 1600), %.fold.split190 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 32), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 64), %.fold.split ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 96), %.fold.split143 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 128), %.fold.split144 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 160), %.fold.split145 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 192), %.fold.split146 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 224), %.fold.split147 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 256), %.fold.split148 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 288), %.fold.split149 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 320), %.fold.split150 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 352), %.fold.split151 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 384), %.fold.split152 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 416), %.fold.split153 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 448), %.fold.split154 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 480), %.fold.split155 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 512), %.fold.split156 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 544), %.fold.split157 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 576), %.fold.split158 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 608), %.fold.split159 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 640), %.fold.split160 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 672), %.fold.split161 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 704), %.fold.split162 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 736), %.fold.split163 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 768), %.fold.split164 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 800), %.fold.split165 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 832), %.fold.split166 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 864), %.fold.split167 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 896), %.fold.split168 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 928), %.fold.split169 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 960), %.fold.split170 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 992), %.fold.split171 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 1024), %.fold.split172 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 1056), %.fold.split173 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 1088), %.fold.split174 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 1120), %.fold.split175 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 1152), %.fold.split176 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 1184), %.fold.split177 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 1216), %.fold.split178 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 1248), %.fold.split179 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 1280), %.fold.split180 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 1312), %.fold.split181 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 1344), %.fold.split182 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 1376), %.fold.split183 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 1408), %.fold.split184 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 1440), %.fold.split185 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 1472), %.fold.split186 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 1504), %.fold.split187 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 1536), %.fold.split188 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 1568), %.fold.split189 ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 1632), %.fold.split191 ]
  %.lcssa = phi i64 [ 0, %bb.g ], [ 50, %.fold.split190 ], [ 1, %bb.h ], [ 2, %.fold.split ], [ 3, %.fold.split143 ], [ 4, %.fold.split144 ], [ 5, %.fold.split145 ], [ 6, %.fold.split146 ], [ 7, %.fold.split147 ], [ 8, %.fold.split148 ], [ 9, %.fold.split149 ], [ 10, %.fold.split150 ], [ 11, %.fold.split151 ], [ 12, %.fold.split152 ], [ 13, %.fold.split153 ], [ 14, %.fold.split154 ], [ 15, %.fold.split155 ], [ 16, %.fold.split156 ], [ 17, %.fold.split157 ], [ 18, %.fold.split158 ], [ 19, %.fold.split159 ], [ 20, %.fold.split160 ], [ 21, %.fold.split161 ], [ 22, %.fold.split162 ], [ 23, %.fold.split163 ], [ 24, %.fold.split164 ], [ 25, %.fold.split165 ], [ 26, %.fold.split166 ], [ 27, %.fold.split167 ], [ 28, %.fold.split168 ], [ 29, %.fold.split169 ], [ 30, %.fold.split170 ], [ 31, %.fold.split171 ], [ 32, %.fold.split172 ], [ 33, %.fold.split173 ], [ 34, %.fold.split174 ], [ 35, %.fold.split175 ], [ 36, %.fold.split176 ], [ 37, %.fold.split177 ], [ 38, %.fold.split178 ], [ 39, %.fold.split179 ], [ 40, %.fold.split180 ], [ 41, %.fold.split181 ], [ 42, %.fold.split182 ], [ 43, %.fold.split183 ], [ 44, %.fold.split184 ], [ 45, %.fold.split185 ], [ 46, %.fold.split186 ], [ 47, %.fold.split187 ], [ 48, %.fold.split188 ], [ 49, %.fold.split189 ], [ 51, %.fold.split191 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa119, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !85 ; 6 uses
  %i.at = shl nuw nsw i64 1, %.lcssa
  %i.au = and i64 %i.at, 201985698
  %.not35 = icmp eq i64 %i.au, 0
  br i1 %.not35, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit58, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.av = load ptr, ptr %3, align 8, !tbaa !81
  store ptr %i.av, ptr %5, align 8, !tbaa !87
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !82
  store i64 %i.aw, ptr %i.f, align 8, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  invoke void @_ZN11OpenImageIO4v3_17Strutil5stripENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %4, ptr noundef nonnull dead_on_return %5, ptr noundef nonnull dead_on_return %6)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %4, align 8, !tbaa !87
  %i.ay = load i64, ptr %i.g, align 8, !tbaa !88
  %i.az = load i64, ptr %i.e, align 8, !tbaa !82
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.az, ptr noundef %i.ax, i64 noundef %i.ay)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSIN11OpenImageIO4v3_117basic_string_viewIcS2_EEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIcS2_EESt6__not_ISB_IPSD_PKS4_EESI_ISB_ISE_PKcEEEE5valueERS4_E4typeESE_.exit unwind label %bb.r ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSIN11OpenImageIO4v3_117basic_string_viewIcS2_EEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIcS2_EESt6__not_ISB_IPSD_PKS4_EESI_ISB_ISE_PKcEEEE5valueERS4_E4typeESE_.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  store ptr %i.as, ptr %9, align 8, !tbaa !87
  %i.bb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #13
  store i64 %i.bb, ptr %i.h, align 8, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  invoke void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %8, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSIN11OpenImageIO4v3_117basic_string_viewIcS2_EEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIcS2_EESt6__not_ISB_IPSD_PKS4_EESI_ISB_ISE_PKcEEEE5valueERS4_E4typeESE_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.bc = load ptr, ptr %8, align 8, !tbaa !87, !noalias !107 ; 3 uses
  %.not.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.not.i, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = load i64, ptr %i.i, align 8, !tbaa !88, !noalias !107 ; 4 uses
  store ptr %i.j, ptr %7, align 8, !tbaa !77, !alias.scope !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !107
  store i64 %i.bd, ptr %i.a, align 8, !tbaa !79, !noalias !107
  %i.be = icmp ugt i64 %i.bd, 15
  br i1 %i.be, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.m
  %i.bf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc43 unwind label %bb.s   ; 2 uses

.noexc43:                                         ; preds = %.noexc.i.i
  store ptr %i.bf, ptr %7, align 8, !tbaa !81, !alias.scope !107
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !79, !noalias !107
  store i64 %i.bg, ptr %i.j, align 8, !tbaa !73, !alias.scope !107
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc43, %bb.m
  %i.bh = phi ptr [ %i.bf, %.noexc43 ], [ %i.j, %bb.m ] ; 2 uses
  switch i64 %i.bd, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.bi = load i8, ptr %i.bc, align 1, !tbaa !73
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !73
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit

bb.o:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr nonnull align 1 %i.bc, i64 %i.bd, i1 false)
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit.thread: ; preds = %bb.l
  store ptr %i.j, ptr %7, align 8, !tbaa !77, !alias.scope !107
  store i64 0, ptr %i.k, align 8, !tbaa !82, !alias.scope !107
  store i8 0, ptr %i.j, align 8, !tbaa !73, !alias.scope !107
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit: ; preds = %._crit_edge.i.i.i, %bb.n, %bb.o
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !79, !noalias !107 ; 2 uses
  store i64 %i.bj, ptr %i.k, align 8, !tbaa !82, !alias.scope !107
  %i.bk = load ptr, ptr %7, align 8, !tbaa !81, !alias.scope !107
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bj
  store i8 0, ptr %i.bl, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !107
  %.pre = load i64, ptr %i.k, align 8, !tbaa !82  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %.not36 = icmp eq i64 %.pre, 0
  br i1 %.not36, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit
  %i.bm = and i64 %.pre, -2
  %i.bn = icmp eq i64 %i.bm, 4611686018427387902
  br i1 %i.bn, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #14
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc44:                                         ; preds = %bb.q
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.p
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %.pre122 = load i64, ptr %i.k, align 8, !tbaa !82, !noalias !108
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.r:                                             ; preds = %bb.k, %bb.j
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.y

bb.s:                                             ; preds = %.noexc.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSIN11OpenImageIO4v3_117basic_string_viewIcS2_EEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIcS2_EESt6__not_ISB_IPSD_PKS4_EESI_ISB_ISE_PKcEEEE5valueERS4_E4typeESE_.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.q
  %lpad.loopexit.split-lp197 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit
  %i.br = phi i64 [ %.pre122, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge ], [ 0, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit ], [ 0, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit.thread ] ; 3 uses
  store ptr %i.as, ptr %11, align 8, !tbaa !87
  %i.bs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #13
  store i64 %i.bs, ptr %i.l, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.bt = load ptr, ptr %7, align 8, !tbaa !81, !noalias !108
  %i.bu = load ptr, ptr %3, align 8, !tbaa !81, !noalias !108
  %i.bv = load i64, ptr %i.e, align 8, !tbaa !82, !noalias !108 ; 3 uses
  store ptr %i.m, ptr %13, align 8, !tbaa !77, !alias.scope !109
  store i64 0, ptr %i.n, align 8, !tbaa !82, !alias.scope !109
  store i8 0, ptr %i.m, align 8, !tbaa !73, !alias.scope !109
  %i.bw = add i64 %i.bv, %i.br
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.bw)
          to label %bb.t unwind label %.loopexit.split-lp78.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.bx = load i64, ptr %i.n, align 8, !tbaa !82, !alias.scope !109
  %i.by = sub i64 4611686018427387903, %i.bx
  %i.bz = icmp ult i64 %i.by, %i.br
  br i1 %i.bz, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.t
  %i.ca = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %i.bt, i64 noundef %i.br)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit.split-lp78.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cb = load i64, ptr %i.n, align 8, !tbaa !82, !alias.scope !109
  %i.cc = sub i64 4611686018427387903, %i.cb
  %i.cd = icmp ult i64 %i.cc, %i.bv
  br i1 %i.cd, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #14
          to label %.cont.i.i unwind label %.loopexit.split-lp78.loopexit.split-lp.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ce = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %i.bu, i64 noundef %i.bv)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %.loopexit.split-lp78.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp78.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %.invoke.i.i
  %lpad.loopexit.split-lp199 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %13, align 8, !tbaa !81, !alias.scope !109 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.m
  br i1 %i.cg, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.ch = load ptr, ptr %13, align 8, !tbaa !81
  store ptr %i.ch, ptr %12, align 8, !tbaa !87
  %i.ci = load i64, ptr %i.n, align 8, !tbaa !82
  store i64 %i.ci, ptr %i.o, align 8, !tbaa !88
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %11, ptr noundef nonnull dead_on_return %12)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %i.cj = load ptr, ptr %13, align 8, !tbaa !81   ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.m
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.cl = load i64, ptr %i.m, align 8, !tbaa !73
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  %i.cn = load ptr, ptr %7, align 8, !tbaa !81    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.j
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cp = load i64, ptr %i.j, align 8, !tbaa !73
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %.loopexit

bb.v:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = load ptr, ptr %13, align 8, !tbaa !81   ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.m
  br i1 %i.ct, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.v, %.loopexit.split-lp78.loopexit.split-lp.loopexit.split-lp
  %.sink = phi ptr [ %i.cf, %.loopexit.split-lp78.loopexit.split-lp.loopexit.split-lp ], [ %i.cs, %bb.v ]
  %.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp199, %.loopexit.split-lp78.loopexit.split-lp.loopexit.split-lp ], [ %i.cr, %bb.v ]
  %i.cu = load i64, ptr %i.m, align 8, !tbaa !73
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cv) #15
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.v, %.loopexit.split-lp78.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp199, %.loopexit.split-lp78.loopexit.split-lp.loopexit.split-lp ], [ %i.cr, %bb.v ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %lpad.loopexit.split-lp197, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.cw = load ptr, ptr %7, align 8, !tbaa !81    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.j
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.w
  %i.cy = load i64, ptr %i.j, align 8, !tbaa !73
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.s ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %.pn.pn, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.y

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit58: ; preds = %bb.i
  store ptr %i.as, ptr %14, align 8, !tbaa !87
  %i.da = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #13
  store i64 %i.da, ptr %i.p, align 8, !tbaa !88
  %i.db = load ptr, ptr %3, align 8, !tbaa !81
  store ptr %i.db, ptr %15, align 8, !tbaa !87
  %i.dc = load i64, ptr %i.e, align 8, !tbaa !82
  store i64 %i.dc, ptr %i.q, align 8, !tbaa !88
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %14, ptr noundef nonnull dead_on_return %15)
          to label %.loopexit unwind label %bb.x

bb.x:                                             ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit58
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit:                                        ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit58
  %i.de = load ptr, ptr %3, align 8, !tbaa !81    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.d
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %.loopexit
  %i.dg = load i64, ptr %i.d, align 8, !tbaa !73
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.z

bb.y:                                             ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %bb.r
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %i.bp, %bb.r ], [ %i.dd, %bb.x ]
  %i.di = load ptr, ptr %3, align 8, !tbaa !81    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.d
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.y
  %i.dk = load i64, ptr %i.d, align 8, !tbaa !73
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.z:                                             ; preds = %.critedge2._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.pre-phi = phi i64 [ %.pre123, %.critedge2._crit_edge ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.af, i64 %.pre-phi
  %i.dn = sub nsw i32 %i.ag, %.sroa.speculated    ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 4
  br i1 %i.do, label %bb.b, label %.critedge, !llvm.loop !105

.critedge:                                        ; preds = %bb.z, %bb.b, %bb.c, %bb.a
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN11OpenImageIO4v3_17Strutil5stripENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8, ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #2

declare void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8, ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_115encode_iptc_iimERKNS0_9ImageSpecERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !115 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::vector.3", align 8     ; 11 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !91     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !92
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5clearEv.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.c, ptr %i.d, align 8, !tbaa !92
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit

_ZNSt6vectorIcSaIcEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit

bb.b:                                             ; preds = %bb.an
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !92
  %i.x = load ptr, ptr %1, align 8, !tbaa !91
  %i.y = icmp ne ptr %i.w, %i.x
  ret i1 %i.y

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit: ; preds = %_ZNSt6vectorIcSaIcEE5clearEv.exit, %bb.an
  %indvars.iv = phi i64 [ 0, %_ZNSt6vectorIcSaIcEE5clearEv.exit ], [ %indvars.iv.next, %bb.an ] ; 3 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16iimtagE, i64 %indvars.iv ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !85 ; 2 uses
  store ptr %i.ab, ptr %2, align 8, !tbaa !87
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #13
  store i64 %i.ac, ptr %i.f, align 8, !tbaa !88
  %i.ad = call noundef ptr @_ZNK11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull dead_on_return %2, i64 256, i1 noundef zeroext false) ; 3 uses
  %.not38 = icmp eq ptr %i.ad, null
  br i1 %.not38, label %bb.an, label %bb.c

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit
  %i.ae = shl nuw i64 1, %indvars.iv              ; 2 uses
  %i.af = and i64 %i.ae, 201985698
  %.not39 = icmp eq i64 %i.af, 0
  br i1 %.not39, label %bb.y, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZNK11OpenImageIO4v3_110ParamValue10get_stringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(39) %i.ad, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ag = load ptr, ptr %3, align 8, !tbaa !81
  store ptr %i.ag, ptr %5, align 8, !tbaa !87
  %i.ah = load i64, ptr %i.h, align 8, !tbaa !82
  store i64 %i.ah, ptr %i.g, align 8, !tbaa !88
  store ptr @.str.1, ptr %6, align 8, !tbaa !87
  store i64 1, ptr %i.i, align 8, !tbaa !88
  invoke void @_ZN11OpenImageIO4v3_17Strutil5splitENS0_17basic_string_viewIcSt11char_traitsIcEEERSt6vectorINSt7__cxx1112basic_stringIcS4_SaIcEEESaISA_EES5_i(ptr noundef nonnull dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull dead_on_return %6, i32 noundef -1)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %4, align 8, !tbaa !116   ; 3 uses
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !116 ; 2 uses
  %.not8289 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not8289, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  br label %bb.g

._crit_edge:                                      ; preds = %bb.w
  %.pre93 = load ptr, ptr %4, align 8, !tbaa !95  ; 3 uses
  %.pre94 = load ptr, ptr %i.j, align 8, !tbaa !96 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre93, %.pre94
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre93, %._crit_edge ] ; 3 uses
  %i.al = load ptr, ptr %.05.i.i.i, align 8, !tbaa !81 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !73
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #15
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %.pre94
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !95
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %bb.e, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.ar = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %.pre93, %._crit_edge ], [ %i.ai, %bb.e ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.as = load ptr, ptr %i.p, align 8, !tbaa !97
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #15
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.aw = load ptr, ptr %3, align 8, !tbaa !81    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.q
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ay = load i64, ptr %i.q, align 8, !tbaa !73
end_hunk_0
