Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/genrb?download=true
inline.NumInlined: 218
inline.NumDeleted: 123
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.7 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.7 = type { i64, [8 x i8] }
%class.ResKeyPath = type { %"class.std::__cxx11::list" }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_List_impl" }
%"struct.std::__cxx11::_List_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }

$_ZN7ResFileD2Ev = comdat any

$_ZN6icu_7810CharStringD2Ev = comdat any

$_ZN6icu_7812LocalPointerI7SRBRootED2Ev = comdat any

$_ZN10ResKeyPathD2Ev = comdat any

$_ZN25SimpleRuleBasedPathFilterD2Ev = comdat any

$_ZN6icu_788internal16LocalOpenPointerI8UCHARBUFXadL_Z11ucbuf_closeEEED2Ev = comdat any

$_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNKSt14default_deleteIN25SimpleRuleBasedPathFilter4TreeEEclEPS1_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

@gCurrentFileName = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"sourcedir\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"destdir\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"icudatadir\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"write-java\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"copyright\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"java-package\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"bundle-name\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"write-xliff\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"noBinaryCollation\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"omitCollationRules\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"formatVersion\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"writePoolBundle\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"usePoolBundle\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"includeUnihanColl\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"filterDir\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"icu4xMode\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"ucadata\00", align 1
@options = dso_local global [25 x %struct.UOption] [%struct.UOption { ptr @.str, ptr null, ptr null, ptr null, i8 104, i8 0, i8 0 }, %struct.UOption { ptr @.str, ptr null, ptr null, ptr null, i8 63, i8 0, i8 0 }, %struct.UOption { ptr @.str.1, ptr null, ptr null, ptr null, i8 118, i8 0, i8 0 }, %struct.UOption { ptr @.str.2, ptr null, ptr null, ptr null, i8 113, i8 0, i8 0 }, %struct.UOption { ptr @.str.3, ptr null, ptr null, ptr null, i8 86, i8 0, i8 0 }, %struct.UOption { ptr @.str.4, ptr null, ptr null, ptr null, i8 115, i8 1, i8 0 }, %struct.UOption { ptr @.str.5, ptr null, ptr null, ptr null, i8 100, i8 1, i8 0 }, %struct.UOption { ptr @.str.6, ptr null, ptr null, ptr null, i8 101, i8 1, i8 0 }, %struct.UOption { ptr @.str.7, ptr null, ptr null, ptr null, i8 105, i8 1, i8 0 }, %struct.UOption { ptr @.str.8, ptr null, ptr null, ptr null, i8 106, i8 2, i8 0 }, %struct.UOption { ptr @.str.9, ptr null, ptr null, ptr null, i8 99, i8 0, i8 0 }, %struct.UOption { ptr @.str.10, ptr null, ptr null, ptr null, i8 1, i8 1, i8 0 }, %struct.UOption { ptr @.str.11, ptr null, ptr null, ptr null, i8 98, i8 1, i8 0 }, %struct.UOption { ptr @.str.12, ptr null, ptr null, ptr null, i8 120, i8 2, i8 0 }, %struct.UOption { ptr @.str.13, ptr null, ptr null, ptr null, i8 107, i8 0, i8 0 }, %struct.UOption { ptr @.str.14, ptr null, ptr null, ptr null, i8 67, i8 0, i8 0 }, %struct.UOption { ptr @.str.15, ptr null, ptr null, ptr null, i8 108, i8 1, i8 0 }, %struct.UOption { ptr @.str.16, ptr null, ptr null, ptr null, i8 82, i8 0, i8 0 }, %struct.UOption { ptr @.str.17, ptr null, ptr null, ptr null, i8 1, i8 1, i8 0 }, %struct.UOption { ptr @.str.18, ptr null, ptr null, ptr null, i8 1, i8 2, i8 0 }, %struct.UOption { ptr @.str.19, ptr null, ptr null, ptr null, i8 1, i8 2, i8 0 }, %struct.UOption { ptr @.str.20, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0 }, %struct.UOption { ptr @.str.21, ptr null, ptr null, ptr null, i8 1, i8 2, i8 0 }, %struct.UOption { ptr @.str.22, ptr null, ptr null, ptr null, i8 88, i8 0, i8 0 }, %struct.UOption { ptr @.str.23, ptr null, ptr null, ptr null, i8 1, i8 1, i8 0 }], align 16
@_ZL10poolBundle = internal global %struct.ResFile zeroinitializer, align 8
@__dso_handle = external hidden global i8
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"com.ibm.icu.impl.data\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"LocaleElements\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [41 x i8] c"%s: error in command line argument \22%s\22\0A\00", align 1
@.str.28 = private unnamed_addr constant [58 x i8] c"%s: cannot combine --writePoolBundle and --usePoolBundle\0A\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"%s: --icu4xMode requires --ucadata\0A\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"%s: unsupported --formatVersion %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [80 x i8] c"%s: cannot combine --formatVersion 1 with --writePoolBundle or --usePoolBundle\0A\00", align 1
@.str.32 = private unnamed_addr constant [86 x i8] c"%s error: command line argument --java-package or --bundle-name without --write-java\0A\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"%s version %s (ICU version %s).\0A%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"56\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"78.3\00", align 1
@.str.36 = private unnamed_addr constant [120 x i8] c" Copyright (C) 2016 and later: Unicode, Inc. and others. License & terms of use: http://www.unicode.org/copyright.html \00", align 1
@.str.37 = private unnamed_addr constant [138 x i8] c"Usage: %s [OPTIONS] [FILES]\0A\09Reads the list of resource bundle source files and creates\0A\09binary version of resource bundles (.res files)\0A\00", align 1
@.str.38 = private unnamed_addr constant [287 x i8] c"Options:\0A\09-h or -? or --help       this usage text\0A\09-q or --quiet            do not display warnings\0A\09-v or --verbose          print extra information when processing files\0A\09-V or --version          prints out version number and exits\0A\09-c or --copyright        include copyright notice\0A\00", align 1
@.str.39 = private unnamed_addr constant [374 x i8] c"\09-e or --encoding         encoding of source files\0A\09-d or --destdir          destination directory, followed by the path, defaults to '%s'\0A\09-s or --sourcedir        source directory for files followed by path, defaults to '%s'\0A\09-i or --icudatadir       directory for locating any needed intermediate data files,\0A\09                         followed by path, defaults to '%s'\0A\00", align 1
@.str.40 = private unnamed_addr constant [316 x i8] c"\09-j or --write-java       write a Java ListResourceBundle for ICU4J, followed by optional encoding\0A\09                         defaults to ASCII and \\uXXXX format.\0A\09      --java-package     For --write-java: package name for writing the ListResourceBundle,\0A\09                         defaults to com.ibm.icu.impl.data\0A\00", align 1
@.str.41 = private unnamed_addr constant [430 x i8] c"\09-b or --bundle-name      For --write-java: root resource bundle name for writing the ListResourceBundle,\0A\09                         defaults to LocaleElements\0A\09-x or --write-xliff      write an XLIFF file for the resource bundle. Followed by\0A\09                         an optional output file name.\0A\09-k or --strict           use pedantic parsing of syntax\0A\09-l or --language         for XLIFF: language code compliant with BCP 47.\0A\00", align 1
@.str.42 = private unnamed_addr constant [490 x i8] c"\09-C or --noBinaryCollation  do not generate binary collation image;\0A\09                           makes .res file smaller but collator instantiation much slower;\0A\09                           maintains ability to get tailoring rules\0A\09-R or --omitCollationRules do not include collation (tailoring) rules;\0A\09                           makes .res file smaller and maintains collator instantiation speed\0A\09                           but tailoring rules will not be available (they are rarely used)\0A\00", align 1
@.str.43 = private unnamed_addr constant [166 x i8] c"\09      --formatVersion      write a .res file compatible with the requested formatVersion (single digit);\0A\09                           for example, --formatVersion 1\0A\00", align 1
@.str.44 = private unnamed_addr constant [390 x i8] c"\09      --writePoolBundle [directory]  write a pool.res file with all of the keys of all input bundles\0A\09      --usePoolBundle [directory]  point to keys from the pool.res keys pool bundle if they are available there;\0A\09                           makes .res files smaller but dependent on the pool bundle\0A\09                           (--writePoolBundle and --usePoolBundle cannot be combined)\0A\00", align 1
@.str.45 = private unnamed_addr constant [158 x i8] c"\09      --filterDir          Input directory where filter files are available.\0A\09                           For more on filter files, see ICU Data Build Tool.\0A\00", align 1
@.str.46 = private unnamed_addr constant [42 x i8] c"%s: can not initialize ICU.  status = %s\0A\00", align 1
@_ZL10write_java = internal unnamed_addr global i1 false, align 1
@_ZL9outputEnc = internal unnamed_addr global ptr @.str.24, align 8
@_ZL11write_xliff = internal unnamed_addr global i1 false, align 1
@_ZL19xliffOutputFileName = internal unnamed_addr global ptr null, align 8
@_ZL8language = internal unnamed_addr global ptr null, align 8
@.str.47 = private unnamed_addr constant [56 x i8] c"unable to create an empty bundle for the pool keys: %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"pool.res\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"out of memory error\0A\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.51 = private unnamed_addr constant [36 x i8] c"unable to open pool bundle file %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [38 x i8] c"the pool bundle file %s is too small\0A\00", align 1
@.str.54 = private unnamed_addr constant [40 x i8] c"unable to read the pool bundle file %s\0A\00", align 1
@.str.55 = private unnamed_addr constant [58 x i8] c"udata_openSwapperForInputData(pool bundle %s) failed: %s\0A\00", align 1
@.str.56 = private unnamed_addr constant [38 x i8] c"ures_swap(pool bundle %s) failed: %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [39 x i8] c"invalid format of pool bundle file %s\0A\00", align 1
@.str.58 = private unnamed_addr constant [47 x i8] c"insufficient indexes[] in pool bundle file %s\0A\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"U_SUCCESS(status)\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"genrb.cpp\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"number of shared strings: %d\0A\00", align 1
@.str.64 = private unnamed_addr constant [43 x i8] c"16-bit units for strings: %6d = %6d bytes\0A\00", align 1
@.str.65 = private unnamed_addr constant [209 x i8] c"genrb option --includeUnihanColl ignored: \0ACLDR 26/ICU 54 unihan data is small, except\0Athe ucadata-unihan.icu version of the collation root data\0Ais about 300kB larger than the ucadata-implicithan.icu version.\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"genrb number of files: %d\0A\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"Processing file \22%s\22\0A\00", align 1
@.str.68 = private unnamed_addr constant [37 x i8] c"unable to write the pool bundle: %s\0A\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"couldn't open file %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [49 x i8] c"An error occurred processing file %s. Error: %s\0A\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"autodetected encoding %s\0A\00", align 1
@.str.72 = private unnamed_addr constant [38 x i8] c"couldn't parse the file %s. Error:%s\0A\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.73 = private unnamed_addr constant [29 x i8] c"genrb error: unable to open \00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.74 = private unnamed_addr constant [59 x i8] c"bundle_compactKeys(%s) or bundle_getKeyBytes() failed: %s\0A\00", align 1
@.str.75 = private unnamed_addr constant [57 x i8] c"couldn't make the res fileName for  bundle %s. Error:%s\0A\00", align 1
@.str.76 = private unnamed_addr constant [36 x i8] c"couldn't write bundle %s. Error:%s\0A\00", align 1
@_ZTV18PseudoListResource = external constant { [10 x ptr] }, align 8
@_ZTV14StringResource = external constant { [10 x ptr] }, align 8
@_ZTV25SimpleRuleBasedPathFilter = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_genrb.cpp, ptr null }]

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7ResFile5closeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(72) %i.d) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.c, align 8, !tbaa !16
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7ResFileD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN7ResFile5closeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(72) %i.d) #25, !inline_history !19
  br label %_ZN7ResFile5closeEv.exit

_ZN7ResFile5closeEv.exit:                         ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 34 uses
  %2 = alloca %"class.icu_78::LocalPointer", align 8 ; 7 uses
  %3 = alloca %"class.icu_78::CharString", align 8 ; 20 uses
  %4 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %5 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %6 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %7 = alloca %"class.icu_78::CharString", align 8 ; 14 uses
  %8 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %9 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %i.b = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !21
  store ptr @.str.25, ptr getelementptr inbounds nuw (i8, ptr @options, i64 448), align 16, !tbaa !23
  store ptr @.str.26, ptr getelementptr inbounds nuw (i8, ptr @options, i64 488), align 8, !tbaa !23
  %i.c = tail call i32 @u_parseArgs(i32 noundef %0, ptr noundef %1, i32 noundef 25, ptr noundef nonnull @options) ; 6 uses
  %i.d = icmp slt i32 %i.c, 0
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sink.sroa.gep397 = getelementptr inbounds nuw i8, ptr %5, i64 8
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.f = load ptr, ptr %1, align 8, !tbaa !26
  %i.g = sub nsw i32 0, %i.c
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.27, ptr noundef %i.f, ptr noundef %i.j) #26 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = icmp samesign ult i32 %i.c, 2
  %spec.select = zext i1 %i.l to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0206 = phi i8 [ 1, %bb.b ], [ %spec.select, %bb.c ]
  %i.m = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 794), align 2, !tbaa !27
  %i.n = icmp ne i8 %i.m, 0
  %i.o = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 834), align 2
  %i.p = icmp ne i8 %i.o, 0
  %or.cond = select i1 %i.n, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.r = load ptr, ptr %1, align 8, !tbaa !26
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.28, ptr noundef %i.r) #26 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1207 = phi i8 [ 1, %bb.e ], [ %.0206, %bb.d ]
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 954), align 2, !tbaa !27
  %i.u = icmp eq i8 %i.t, 0
  %i.v = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 994), align 2
  %i.w = icmp ne i8 %i.v, 0
  %or.cond6 = select i1 %i.u, i1 true, i1 %i.w
  br i1 %or.cond6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.y = load ptr, ptr %1, align 8, !tbaa !26
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.29, ptr noundef %i.y) #26 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2208 = phi i8 [ %.1207, %bb.f ], [ 1, %bb.g ] ; 2 uses
  %i.aa = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 754), align 2, !tbaa !27
  %.not = icmp eq i8 %i.aa, 0
  br i1 %.not, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @options, i64 728), align 8, !tbaa !23 ; 3 uses
  %i.ac = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #27
  %.not237 = icmp eq i64 %i.ac, 1
  br i1 %.not237, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !28  ; 3 uses
  %i.ae = add i8 %i.ad, -52
  %or.cond306 = icmp ult i8 %i.ae, -3
  br i1 %or.cond306, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.ag = load ptr, ptr %1, align 8, !tbaa !26
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.30, ptr noundef %i.ag, ptr noundef nonnull %i.ab) #26 ; 0 uses
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.ai = icmp eq i8 %i.ad, 49
  br i1 %i.ai, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aj = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 794), align 2, !tbaa !27
  %i.ak = icmp ne i8 %i.aj, 0
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 834), align 2
  %i.am = icmp ne i8 %i.al, 0
  %or.cond8 = select i1 %i.ak, i1 true, i1 %i.am
  br i1 %or.cond8, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.ao = load ptr, ptr %1, align 8, !tbaa !26
  %i.ap = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.an, ptr noundef nonnull @.str.31, ptr noundef %i.ao) #26 ; 0 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.aq = zext nneg i8 %i.ad to i32
  %i.ar = add nsw i32 %i.aq, -48
  tail call void @setFormatVersion(i32 noundef %i.ar)
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.o, %bb.n, %bb.h
  %.4210 = phi i8 [ %.2208, %bb.h ], [ 1, %bb.k ], [ 1, %bb.n ], [ %.2208, %bb.o ]
  %i.as = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 474), align 2, !tbaa !27
  %i.at = icmp eq i8 %i.as, 0
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 514), align 2
  %i.av = icmp eq i8 %i.au, 0
  %or.cond10.not240 = select i1 %i.at, i1 %i.av, i1 false
  %i.aw = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 394), align 2
  %i.ax = icmp ne i8 %i.aw, 0
  %or.cond12 = select i1 %or.cond10.not240, i1 true, i1 %i.ax
  br i1 %or.cond12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.az = load ptr, ptr %1, align 8, !tbaa !26
  %i.ba = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ay, ptr noundef nonnull @.str.32, ptr noundef %i.az) #26 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.5211 = phi i8 [ %.4210, %bb.p ], [ 1, %bb.q ] ; 2 uses
  %i.bb = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 194), align 2, !tbaa !27
  %.not241 = icmp eq i8 %i.bb, 0
  br i1 %.not241, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.bd = load ptr, ptr %1, align 8, !tbaa !26
  %i.be = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bc, ptr noundef nonnull @.str.33, ptr noundef %i.bd, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #26 ; 0 uses
  %.not242 = icmp eq i8 %.5211, 0
  br i1 %.not242, label %bb.fa, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bf = icmp ne i8 %.5211, 0                    ; 2 uses
  %i.bg = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 34), align 2
  %i.bh = icmp ne i8 %i.bg, 0
  %or.cond14 = select i1 %i.bf, i1 true, i1 %i.bh
  %i.bi = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 74), align 2
  %i.bj = icmp ne i8 %i.bi, 0
  %or.cond16 = select i1 %or.cond14, i1 true, i1 %i.bj
  br i1 %or.cond16, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.bl = load ptr, ptr %1, align 8, !tbaa !26
  %i.bm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bk, ptr noundef nonnull @.str.37, ptr noundef %i.bl) #26 ; 0 uses
  %i.bn = load ptr, ptr @stderr, align 8, !tbaa !25
  %fwrite299 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 286, i64 1, ptr %i.bn) #28 ; 0 uses
  %i.bo = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.bp = tail call ptr @u_getDataDirectory_78()
  %i.bq = tail call ptr @u_getDataDirectory_78()
  %i.br = tail call ptr @u_getDataDirectory_78()
  %i.bs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bo, ptr noundef nonnull @.str.39, ptr noundef %i.bp, ptr noundef %i.bq, ptr noundef %i.br) #26 ; 0 uses
  %i.bt = load ptr, ptr @stderr, align 8, !tbaa !25
  %fwrite300 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 315, i64 1, ptr %i.bt) #28 ; 0 uses
  %i.bu = load ptr, ptr @stderr, align 8, !tbaa !25
  %fwrite301 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 429, i64 1, ptr %i.bu) #28 ; 0 uses
  %i.bv = load ptr, ptr @stderr, align 8, !tbaa !25
  %fwrite302 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 489, i64 1, ptr %i.bv) #28 ; 0 uses
  %i.bw = load ptr, ptr @stderr, align 8, !tbaa !25
  %fwrite303 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 165, i64 1, ptr %i.bw) #28 ; 0 uses
  %i.bx = load ptr, ptr @stderr, align 8, !tbaa !25
  %fwrite304 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 389, i64 1, ptr %i.bx) #28 ; 0 uses
  %i.by = load ptr, ptr @stderr, align 8, !tbaa !25
  %fwrite305 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 157, i64 1, ptr %i.by) #28 ; 0 uses
  %i.bz = zext i1 %i.bf to i32
  br label %bb.fa

bb.v:                                             ; preds = %bb.t
  %i.ca = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 114), align 2, !tbaa !27
  %.not243 = icmp eq i8 %i.ca, 0
  br i1 %.not243, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @setVerbose(i8 noundef signext 1)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cb = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 154), align 2, !tbaa !27
  %.not244 = icmp eq i8 %i.cb, 0
  br i1 %.not244, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @setShowWarning(i8 noundef signext 0)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cc = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 594), align 2, !tbaa !27
  %.not245 = icmp eq i8 %i.cc, 0
  br i1 %.not245, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @setStrict(i8 noundef signext 1)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cd = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 434), align 2, !tbaa !27
  %.not246 = icmp eq i8 %i.cd, 0
  br i1 %.not246, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @setIncludeCopyright(i8 noundef signext 1)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ce = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 234), align 2, !tbaa !27
  %.not247 = icmp eq i8 %i.ce, 0
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @options, i64 208), align 16 ; 3 uses
  %spec.select307 = select i1 %.not247, ptr null, ptr %i.cf ; 3 uses
  %i.cg = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 274), align 2, !tbaa !27
  %.not248 = icmp eq i8 %i.cg, 0
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @options, i64 248), align 8
  %.0217 = select i1 %.not248, ptr null, ptr %i.ch ; 2 uses
  %i.ci = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 914), align 2, !tbaa !27
  %.not249 = icmp eq i8 %i.ci, 0
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @options, i64 888), align 8
  %.0215 = select i1 %.not249, ptr null, ptr %i.cj
  %i.ck = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 314), align 2, !tbaa !27
  %.not250 = icmp eq i8 %i.ck, 0
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @options, i64 288), align 16
  %.0214 = select i1 %.not250, ptr @.str.24, ptr %i.cl
  %i.cm = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 354), align 2, !tbaa !27
  %.not251 = icmp eq i8 %i.cm, 0
  br i1 %.not251, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @options, i64 328), align 8, !tbaa !23
  tail call void @u_setDataDirectory_78(ptr noundef %i.cn)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @u_init_78(ptr noundef nonnull %i.a)
  %i.co = load i32, ptr %i.a, align 4, !tbaa !21  ; 3 uses
  %i.cp = icmp sgt i32 %i.co, 0
  %i.cq = icmp ne i32 %i.co, 4
  %or.cond18 = and i1 %i.cp, %i.cq
  br i1 %or.cond18, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cr = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.cs = load ptr, ptr %1, align 8, !tbaa !26
  %i.ct = call ptr @u_errorName_78(i32 noundef %i.co)
  %i.cu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cr, ptr noundef nonnull @.str.46, ptr noundef %i.cs, ptr noundef %i.ct) #26 ; 0 uses
  call void @exit(i32 noundef 1) #29
  unreachable

bb.ah:                                            ; preds = %bb.af
  store i32 0, ptr %i.a, align 4, !tbaa !21
  %i.cv = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 394), align 2, !tbaa !27
  %.not252 = icmp eq i8 %i.cv, 0
  br i1 %.not252, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i1 true, ptr @_ZL10write_java, align 1
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @options, i64 368), align 16, !tbaa !23
  store ptr %i.cw, ptr @_ZL9outputEnc, align 8, !tbaa !26
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.cx = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 554), align 2, !tbaa !27
  %.not253 = icmp eq i8 %i.cx, 0
  br i1 %.not253, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i1 true, ptr @_ZL11write_xliff, align 1
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @options, i64 528), align 16, !tbaa !23 ; 2 uses
  %.not254 = icmp eq ptr %i.cy, null
  br i1 %.not254, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr %i.cy, ptr @_ZL19xliffOutputFileName, align 8, !tbaa !26
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.aj
  %i.cz = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 994), align 2, !tbaa !27
  %.not255 = icmp eq i8 %i.cz, 0
  br i1 %.not255, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @options, i64 968), align 8, !tbaa !23
  call void @_ZN6icu_7813CollationRoot17forceLoadFromFileEPKcR10UErrorCode(ptr noundef %i.da, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  call void @initParser()
  %i.db = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 674), align 2, !tbaa !27
  %.not256 = icmp eq i8 %i.db, 0
  br i1 %.not256, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @options, i64 648), align 8, !tbaa !23
  store ptr %i.dc, ptr @_ZL8language, align 8, !tbaa !26
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr null, ptr %2, align 8, !tbaa !31
  %i.dd = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 794), align 2, !tbaa !27
  %.not257 = icmp eq i8 %i.dd, 0
  br i1 %.not257, label %bb.az, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.de = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #30
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN7SRBRootC1EPK7UStringaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(176) %i.de, ptr noundef null, i8 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.df = load i32, ptr %i.a, align 4, !tbaa !21
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %_ZN6icu_7812LocalPointerI7SRBRootE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit, label %_ZN6icu_7812LocalPointerI7SRBRootE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread

_ZN6icu_7812LocalPointerI7SRBRootE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread: ; preds = %bb.at
  store ptr %i.de, ptr %2, align 8, !tbaa !31
  br label %bb.aw

_ZN6icu_7812LocalPointerI7SRBRootE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit: ; preds = %bb.at
  call void @_ZN7SRBRootD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.de) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef 176) #24
  %.pre = load i32, ptr %i.a, align 4, !tbaa !21  ; 2 uses
  %i.dh = icmp slt i32 %.pre, 1
  br i1 %i.dh, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %_ZN6icu_7812LocalPointerI7SRBRootE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit
  %i.di = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.dj = invoke ptr @u_errorName_78(i32 noundef %.pre)
          to label %.thread376 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread376:                                       ; preds = %bb.au
  %i.dk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.di, ptr noundef nonnull @.str.47, ptr noundef %i.dj) #26 ; 0 uses
  %i.dl = load i32, ptr %i.a, align 4, !tbaa !21
  br label %_ZN6icu_7812LocalPointerI7SRBRootED2Ev.exit

bb.av:                                            ; preds = %bb.as
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef 176) #24
  br label %.loopexit.split-lp

bb.aw:                                            ; preds = %_ZN6icu_7812LocalPointerI7SRBRootE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread, %_ZN6icu_7812LocalPointerI7SRBRootE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit
  %i.dn = phi ptr [ %i.de, %_ZN6icu_7812LocalPointerI7SRBRootE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread ], [ null, %_ZN6icu_7812LocalPointerI7SRBRootE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit ] ; 3 uses
  %i.do = invoke noalias dereferenceable_or_null(9) ptr @uprv_malloc_78(i64 noundef 9) #31
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.ax:                                            ; preds = %bb.aw
  %.not259 = icmp eq ptr %i.do, null
  br i1 %.not259, label %.thread, label %bb.ay

.thread:                                          ; preds = %bb.ax
  %i.dp = load ptr, ptr @stderr, align 8, !tbaa !25
  %fwrite = call i64 @fwrite(ptr nonnull @.str.49, i64 20, i64 1, ptr %i.dp) #28 ; 0 uses
  br label %bb.ey

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dz, %bb.ar, %bb.au, %bb.ds, %bb.du, %bb.ew, %bb.aw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.do, ptr noundef nonnull align 1 dereferenceable(9) @.str.48, i64 9, i1 false) #25
  %i.dq = call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.do, i32 noundef 46) #27
  store i8 0, ptr %i.dq, align 1, !tbaa !28
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %i.do, ptr %i.dr, align 8, !tbaa !65
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.aq
  %i.ds = phi ptr [ %i.dn, %bb.ay ], [ null, %bb.aq ] ; 3 uses
  %i.dt = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 834), align 2, !tbaa !27
  %.not260 = icmp eq i8 %i.dt, 0
  br i1 %.not260, label %bb.dr, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 13 ; 2 uses
  store ptr %i.du, ptr %3, align 8, !tbaa !40
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 40, ptr %i.dv, align 8, !tbaa !41
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i8 0, ptr %i.dw, align 4, !tbaa !42
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.dx, align 8, !tbaa !44
  store i8 0, ptr %i.du, align 1, !tbaa !28
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @options, i64 808), align 8, !tbaa !23 ; 2 uses
  %.not261 = icmp eq ptr %i.dy, null
  br i1 %.not261, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull %i.dy)
          to label %.invoke unwind label %.loopexit.split-lp323.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %bb.ba
  %.not262 = icmp eq ptr %spec.select307, null
  br i1 %.not262, label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull %i.cf)
          to label %.invoke unwind label %.loopexit.split-lp323.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke:                                          ; preds = %bb.bd, %bb.bb
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.bb ], [ %.sink.sroa.gep397, %bb.bd ]
  %.sink = phi ptr [ %4, %bb.bb ], [ %5, %bb.bd ]
  %i.dz = load ptr, ptr %.sink, align 8
  %i.ea = load i32, ptr %.sink.sroa.phi, align 8
  %i.eb = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %3, ptr noundef %i.dz, i32 noundef %i.ea, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit unwind label %.loopexit.split-lp323.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit: ; preds = %.invoke, %bb.bc
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull @.str.48)
          to label %bb.be unwind label %.loopexit.split-lp323.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.be:                                            ; preds = %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit
  %i.ec = load ptr, ptr %6, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ee = load i32, ptr %i.ed, align 8
  %i.ef = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString14appendPathPartENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %3, ptr %i.ec, i32 %i.ee, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.bf unwind label %.loopexit.split-lp323.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bf:                                            ; preds = %bb.be
  %i.eg = load i32, ptr %i.a, align 4, !tbaa !21  ; 2 uses
  %i.eh = icmp slt i32 %i.eg, 1
  br i1 %i.eh, label %bb.bg, label %bb.do

bb.bg:                                            ; preds = %bb.bf
  %i.ei = load ptr, ptr %3, align 8, !tbaa !40
  %i.ej = invoke ptr @T_FileStream_open(ptr noundef %i.ei, ptr noundef nonnull @.str.50)
          to label %bb.bh unwind label %.loopexit.split-lp323.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.bh:                                            ; preds = %bb.bg
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.el = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.em = load ptr, ptr %3, align 8, !tbaa !40
  %i.en = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.el, ptr noundef nonnull @.str.51, ptr noundef %i.em) #26 ; 0 uses
  br label %bb.do

bb.bj:                                            ; preds = %bb.bh
  %i.eo = invoke i32 @T_FileStream_size(ptr noundef nonnull %i.ej)
          to label %bb.bk unwind label %.loopexit.split-lp323.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

bb.bk:                                            ; preds = %bb.bj
  %i.ep = icmp slt i32 %i.eo, 32
  br i1 %i.ep, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.eq = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.er = load ptr, ptr %3, align 8, !tbaa !40
  %i.es = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eq, ptr noundef nonnull @.str.52, ptr noundef %i.er) #26 ; 0 uses
  br label %bb.do

bb.bm:                                            ; preds = %bb.bk
  %i.et = add nuw nsw i32 %i.eo, 15
  %i.eu = and i32 %i.et, 2147483632
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ev) #30
          to label %bb.bn unwind label %.loopexit.split-lp323.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bn:                                            ; preds = %bb.bm
  store ptr %i.ew, ptr @_ZL10poolBundle, align 8, !tbaa !15
  %i.ex = invoke i32 @T_FileStream_read(ptr noundef nonnull %i.ej, ptr noundef nonnull %i.ew, i32 noundef %i.eo)
          to label %bb.bo unwind label %.loopexit.split-lp323.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %bb.bn
  %.not264 = icmp eq i32 %i.ex, %i.eo
  br i1 %.not264, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ey = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.ez = load ptr, ptr %3, align 8, !tbaa !40
  %i.fa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ey, ptr noundef nonnull @.str.54, ptr noundef %i.ez) #26 ; 0 uses
  br label %bb.do

bb.bq:                                            ; preds = %bb.bo
  %i.fb = load ptr, ptr @_ZL10poolBundle, align 8, !tbaa !15
  %i.fc = invoke ptr @udata_openSwapperForInputData_78(ptr noundef %i.fb, i32 noundef %i.eo, i8 noundef signext 0, i8 noundef zeroext 0, ptr noundef nonnull %i.a)
          to label %bb.br unwind label %.loopexit.split-lp323.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.br:                                            ; preds = %bb.bq
  %i.fd = load i32, ptr %i.a, align 4, !tbaa !21  ; 2 uses
  %i.fe = icmp slt i32 %i.fd, 1
  br i1 %i.fe, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ff = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.fg = load ptr, ptr %3, align 8, !tbaa !40
  %i.fh = invoke ptr @u_errorName_78(i32 noundef %i.fd)
          to label %bb.bt unwind label %.loopexit.split-lp323.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %bb.bs
  %i.fi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ff, ptr noundef nonnull @.str.55, ptr noundef %i.fg, ptr noundef %i.fh) #26 ; 0 uses
  %i.fj = load i32, ptr %i.a, align 4, !tbaa !21
  br label %bb.do

bb.bu:                                            ; preds = %bb.br
  %i.fk = load ptr, ptr @_ZL10poolBundle, align 8, !tbaa !15 ; 2 uses
  %i.fl = invoke i32 @ures_swap_78(ptr noundef %i.fc, ptr noundef %i.fk, i32 noundef %i.eo, ptr noundef %i.fk, ptr noundef nonnull %i.a)
          to label %bb.bv unwind label %.loopexit.split-lp323.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bv:                                            ; preds = %bb.bu
  invoke void @udata_closeSwapper_78(ptr noundef %i.fc)
          to label %bb.bw unwind label %.loopexit.split-lp323.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %bb.bv
  %i.fm = load i32, ptr %i.a, align 4, !tbaa !21  ; 2 uses
  %i.fn = icmp slt i32 %i.fm, 1
  br i1 %i.fn, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fo = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.fp = load ptr, ptr %3, align 8, !tbaa !40
  %i.fq = invoke ptr @u_errorName_78(i32 noundef %i.fm)
          to label %bb.by unwind label %.loopexit.split-lp323.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.by:                                            ; preds = %bb.bx
  %i.fr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fo, ptr noundef nonnull @.str.56, ptr noundef %i.fp, ptr noundef %i.fq) #26 ; 0 uses
  %i.fs = load i32, ptr %i.a, align 4, !tbaa !21
  br label %bb.do

bb.bz:                                            ; preds = %bb.bw
  %i.ft = load ptr, ptr @_ZL10poolBundle, align 8, !tbaa !15 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load i8, ptr %i.fu, align 2, !tbaa !28
  %i.fw = icmp ult i8 %i.fv, 2
  br i1 %i.fw, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.fx = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.fy = load ptr, ptr %3, align 8, !tbaa !40
  %i.fz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fx, ptr noundef nonnull @.str.57, ptr noundef %i.fy) #26 ; 0 uses
  br label %bb.do

bb.cb:                                            ; preds = %bb.bz
  %i.ga = load i16, ptr %i.ft, align 2, !tbaa !70
  %i.gb = zext i16 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.gb ; 6 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4 ; 2 uses
  store ptr %i.gd, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 8), align 8, !tbaa !71
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !45
  %i.gf = and i32 %i.ge, 255                      ; 2 uses
  %i.gg = icmp samesign ult i32 %i.gf, 8
  br i1 %i.gg, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.gh = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.gi = load ptr, ptr %3, align 8, !tbaa !40
  %i.gj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gh, ptr noundef nonnull @.str.58, ptr noundef %i.gi) #26 ; 0 uses
  br label %bb.do

bb.cd:                                            ; preds = %bb.cb
  %i.gk = add nuw nsw i32 %i.gf, 1                ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !45 ; 3 uses
  %i.gn = zext nneg i32 %i.gk to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.gn ; 4 uses
  store ptr %i.go, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 16), align 8, !tbaa !72
  %i.gp = sub nsw i32 %i.gm, %i.gk                ; 2 uses
  %i.gq = shl i32 %i.gp, 2                        ; 2 uses
  store i32 %i.gq, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 24), align 8, !tbaa !73
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !45
  store i32 %i.gs, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 44), align 4, !tbaa !74
  %i.gt = icmp sgt i32 %i.gp, 0
  br i1 %i.gt, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.cd
  %.promoted = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 28), align 4 ; 2 uses
end_hunk_0
begin_hunk_1_@main:bb.a

bb.dq:                                            ; preds = %bb.dp
  %i.kv = landingpad { ptr, i32 }
          catch ptr null
  %i.kw = extractvalue { ptr, i32 } %i.kv, 0
  call void @__clang_call_terminate(ptr %i.kw) #32
  unreachable

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.do, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.8204, label %bb.dr, label %bb.ey

.loopexit.split-lp323:                            ; preds = %.loopexit.split-lp323.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cn, %bb.dd
  %.pn280 = phi { ptr, i32 } [ %i.jn, %bb.dd ], [ %i.hx, %bb.cn ], [ %lpad.loopexit.split-lp392, %.loopexit.split-lp323.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.loopexit.split-lp

bb.dr:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.az
  %i.kx = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 754), align 2, !tbaa !27
  %.not283 = icmp eq i8 %i.kx, 0
  br i1 %.not283, label %bb.ds, label %bb.dv

bb.ds:                                            ; preds = %bb.dr
  %i.ky = invoke i32 @getFormatVersion()
          to label %bb.dt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dt:                                            ; preds = %bb.ds
  %i.kz = icmp ne i32 %i.ky, 3
  %i.la = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 32), align 8
  %i.lb = icmp ne ptr %i.la, null
  %or.cond28.not286 = select i1 %i.kz, i1 true, i1 %i.lb
  %i.lc = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 794), align 2
  %i.ld = icmp ne i8 %i.lc, 0
  %or.cond30 = select i1 %or.cond28.not286, i1 true, i1 %i.ld
  br i1 %or.cond30, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  invoke void @setFormatVersion(i32 noundef 2)
          to label %bb.dv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dv:                                            ; preds = %bb.du, %bb.dt, %bb.dr
  %i.le = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 874), align 2, !tbaa !27
  %.not287 = icmp eq i8 %i.le, 0
  br i1 %.not287, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.lf = call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.65) ; 0 uses
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.lg = add nsw i32 %i.c, -1                    ; 2 uses
  %.not288 = icmp eq i32 %i.lg, 1
  br i1 %.not288, label %.lr.ph335, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.lh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66, i32 noundef %i.lg) ; 0 uses
  %i.li = icmp sgt i32 %i.c, 1
  br i1 %i.li, label %.lr.ph335, label %_ZN6icu_7810CharStringD2Ev.exit313._crit_edge

.lr.ph335:                                        ; preds = %bb.dx, %bb.dy
  %i.lj = getelementptr inbounds nuw i8, ptr %7, i64 13 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ll = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %7, i64 56
  %.not289 = icmp eq ptr %spec.select307, null
  %i.ln = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.lo = getelementptr inbounds nuw i8, ptr %9, i64 8
  %wide.trip.count350 = zext nneg i32 %i.c to i64
  br label %bb.dz

bb.dz:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit313, %.lr.ph335
  %indvars.iv347 = phi i64 [ 1, %.lr.ph335 ], [ %indvars.iv.next348, %_ZN6icu_7810CharStringD2Ev.exit313 ] ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !21
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv347
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !26
  %i.lr = invoke ptr @getLongPathname(ptr noundef %i.lq)
          to label %bb.ea unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %i.lj, ptr %7, align 8, !tbaa !40
  store i32 40, ptr %i.lk, align 8, !tbaa !41
  store i8 0, ptr %i.ll, align 4, !tbaa !42
  store i32 0, ptr %i.lm, align 8, !tbaa !44
  store i8 0, ptr %i.lj, align 1, !tbaa !28
  br i1 %.not289, label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit311, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull %i.cf)
          to label %bb.ec unwind label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.ls = load ptr, ptr %8, align 8
  %i.lt = load i32, ptr %i.ln, align 8
  %i.lu = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr noundef %i.ls, i32 noundef %i.lt, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit311 unwind label %bb.ed ; 0 uses

bb.ed:                                            ; preds = %bb.ec, %bb.ej, %bb.eg, %bb.ee, %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit311, %bb.eb
  %i.lv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.loopexit.split-lp

_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit311: ; preds = %bb.ec, %bb.ea
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef %i.lr)
          to label %bb.ee unwind label %bb.ed

bb.ee:                                            ; preds = %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit311
  %i.lw = load ptr, ptr %9, align 8
  %i.lx = load i32, ptr %i.lo, align 8
  %i.ly = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString14appendPathPartENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr %i.lw, i32 %i.lx, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ef unwind label %bb.ed     ; 0 uses

bb.ef:                                            ; preds = %bb.ee
  %i.lz = load i32, ptr %i.a, align 4, !tbaa !21
  %i.ma = icmp sgt i32 %i.lz, 0                   ; 2 uses
  br i1 %i.ma, label %bb.ek, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.mb = load ptr, ptr %7, align 8, !tbaa !40
  store ptr %i.mb, ptr @gCurrentFileName, align 8, !tbaa !26
  %i.mc = invoke signext i8 @isVerbose()
          to label %bb.eh unwind label %bb.ed

bb.eh:                                            ; preds = %bb.eg
  %.not291 = icmp eq i8 %i.mc, 0
  br i1 %.not291, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.md = load ptr, ptr %7, align 8, !tbaa !40
  %i.me = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67, ptr noundef %i.md) ; 0 uses
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %i.mf = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 634), align 2, !tbaa !27
  invoke void @_Z11processFilePKcS0_S0_S0_S0_S0_P7SRBRootaR10UErrorCode(ptr noundef %i.lr, ptr noundef %.0214, ptr noundef %spec.select307, ptr noundef %.0217, ptr noundef %.0215, ptr noundef null, ptr noundef %i.ds, i8 noundef signext %i.mf, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ek unwind label %bb.ed

bb.ek:                                            ; preds = %bb.ej, %bb.ef
  %i.mg = load i8, ptr %i.ll, align 4, !tbaa !42
  %.not.i.i.i312 = icmp eq i8 %i.mg, 0
  br i1 %.not.i.i.i312, label %_ZN6icu_7810CharStringD2Ev.exit313, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.mh = load ptr, ptr %7, align 8, !tbaa !40
  invoke void @uprv_free_78(ptr noundef %i.mh)
          to label %_ZN6icu_7810CharStringD2Ev.exit313 unwind label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.mi = landingpad { ptr, i32 }
          catch ptr null
  %i.mj = extractvalue { ptr, i32 } %i.mi, 0
  call void @__clang_call_terminate(ptr %i.mj) #32
  unreachable

_ZN6icu_7810CharStringD2Ev.exit313:               ; preds = %bb.ek, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %indvars.iv.next348 = add nuw nsw i64 %indvars.iv347, 1 ; 2 uses
  %exitcond351.not = icmp eq i64 %indvars.iv.next348, %wide.trip.count350
  %or.cond383 = select i1 %i.ma, i1 true, i1 %exitcond351.not
  br i1 %or.cond383, label %_ZN6icu_7810CharStringD2Ev.exit313._crit_edge, label %bb.dz, !llvm.loop !64

_ZN6icu_7810CharStringD2Ev.exit313._crit_edge:    ; preds = %_ZN6icu_7810CharStringD2Ev.exit313, %bb.dy
  %i.mk = load ptr, ptr @_ZL10poolBundle, align 8, !tbaa !15 ; 2 uses
  %i.ml = icmp eq ptr %i.mk, null
  br i1 %i.ml, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit313._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %i.mk) #24
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %_ZN6icu_7810CharStringD2Ev.exit313._crit_edge
  store ptr null, ptr @_ZL10poolBundle, align 8, !tbaa !15
  %i.mm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 32), align 8, !tbaa !16 ; 3 uses
  %i.mn = icmp eq ptr %i.mm, null
  br i1 %i.mn, label %_ZN7ResFile5closeEv.exit, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.mo = load ptr, ptr %i.mm, align 8, !tbaa !18
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mq = load ptr, ptr %i.mp, align 8
  call void %i.mq(ptr noundef nonnull align 8 dereferenceable(72) %i.mm) #25, !inline_history !19
  br label %_ZN7ResFile5closeEv.exit

_ZN7ResFile5closeEv.exit:                         ; preds = %bb.eo, %bb.ep
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 32), align 8, !tbaa !16
  %i.mr = load i32, ptr %i.a, align 4, !tbaa !21
  %i.ms = icmp slt i32 %i.mr, 1
  %i.mt = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 794), align 2
  %i.mu = icmp ne i8 %i.mt, 0
  %or.cond32 = select i1 %i.ms, i1 %i.mu, i1 false
  br i1 %or.cond32, label %bb.eq, label %bb.ew

bb.eq:                                            ; preds = %_ZN7ResFile5closeEv.exit
  %i.mv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @options, i64 768), align 16, !tbaa !23 ; 2 uses
  %.not294 = icmp eq ptr %i.mv, null
  %.0217. = select i1 %.not294, ptr %.0217, ptr %i.mv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  invoke void @_ZN7SRBRoot5writeEPKcS1_PciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(176) %i.ds, ptr noundef %.0217., ptr noundef null, ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.er unwind label %bb.eu

bb.er:                                            ; preds = %bb.eq
  %i.mw = load i32, ptr %i.a, align 4, !tbaa !21  ; 2 uses
  %i.mx = icmp slt i32 %i.mw, 1
  br i1 %i.mx, label %bb.ev, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.my = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.mz = invoke ptr @u_errorName_78(i32 noundef %i.mw)
          to label %bb.et unwind label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.na = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.my, ptr noundef nonnull @.str.68, ptr noundef %i.mz) #26 ; 0 uses
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es, %bb.eq
  %i.nb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit.split-lp

bb.ev:                                            ; preds = %bb.et, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %_ZN7ResFile5closeEv.exit
  invoke void @u_cleanup_78()
          to label %bb.ex unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ex:                                            ; preds = %bb.ew
  %i.nc = load i32, ptr %i.a, align 4, !tbaa !21
  %spec.select309 = call i32 @llvm.smax.i32(i32 %i.nc, i32 0)
  %.pre352 = load ptr, ptr %2, align 8, !tbaa !31
  br label %bb.ey

bb.ey:                                            ; preds = %.thread, %bb.ex, %_ZN6icu_7810CharStringD2Ev.exit
  %i.nd = phi ptr [ %i.ds, %_ZN6icu_7810CharStringD2Ev.exit ], [ %i.dn, %.thread ], [ %.pre352, %bb.ex ] ; 3 uses
  %.12 = phi i32 [ %.11, %_ZN6icu_7810CharStringD2Ev.exit ], [ 7, %.thread ], [ %spec.select309, %bb.ex ] ; 2 uses
  %i.ne = icmp eq ptr %i.nd, null
  br i1 %i.ne, label %_ZN6icu_7812LocalPointerI7SRBRootED2Ev.exit, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @_ZN7SRBRootD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.nd) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.nd, i64 noundef 176) #24
  br label %_ZN6icu_7812LocalPointerI7SRBRootED2Ev.exit

_ZN6icu_7812LocalPointerI7SRBRootED2Ev.exit:      ; preds = %.thread376, %bb.ey, %bb.ez
  %.12378 = phi i32 [ %i.dl, %.thread376 ], [ %.12, %bb.ey ], [ %.12, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.fa

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.eu, %bb.ed, %.loopexit.split-lp323, %bb.av
  %.pn297 = phi { ptr, i32 } [ %i.dm, %bb.av ], [ %i.nb, %bb.eu ], [ %i.lv, %bb.ed ], [ %.pn280, %.loopexit.split-lp323 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6icu_7812LocalPointerI7SRBRootED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  resume { ptr, i32 } %.pn297

bb.fa:                                            ; preds = %bb.s, %_ZN6icu_7812LocalPointerI7SRBRootED2Ev.exit, %bb.u
  %.13 = phi i32 [ %i.bz, %bb.u ], [ %.12378, %_ZN6icu_7812LocalPointerI7SRBRootED2Ev.exit ], [ 0, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i32 @u_parseArgs(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare void @setFormatVersion(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare ptr @u_getDataDirectory_78() local_unnamed_addr #5

declare void @setVerbose(i8 noundef signext) local_unnamed_addr #5

declare void @setShowWarning(i8 noundef signext) local_unnamed_addr #5

declare void @setStrict(i8 noundef signext) local_unnamed_addr #5

declare void @setIncludeCopyright(i8 noundef signext) local_unnamed_addr #5

declare void @u_setDataDirectory_78(ptr noundef) local_unnamed_addr #5

declare void @u_init_78(ptr noundef) local_unnamed_addr #5

declare ptr @u_errorName_78(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

declare void @_ZN6icu_7813CollationRoot17forceLoadFromFileEPKcR10UErrorCode(ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare void @initParser() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

declare i32 @__gxx_personality_v0(...)

declare void @_ZN7SRBRootC1EPK7UStringaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef, i8 noundef signext, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString14appendPathPartENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr, i32, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare ptr @T_FileStream_open(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @T_FileStream_size(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

declare i32 @T_FileStream_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @udata_openSwapperForInputData_78(ptr noundef, i32 noundef, i8 noundef signext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #5

declare i32 @ures_swap_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @udata_closeSwapper_78(ptr noundef) local_unnamed_addr #5

declare i32 @getFormatVersion() local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #12

declare void @_ZN18PseudoListResource3addEP9SResource(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #5

declare void @T_FileStream_close(ptr noundef) local_unnamed_addr #5

declare void @setUsePoolBundle(i8 noundef signext) local_unnamed_addr #5

declare signext i8 @isVerbose() local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !42
  %.not.i.i = icmp eq i8 %i.b, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !40
  invoke void @uprv_free_78(ptr noundef %i.c)
          to label %_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #32
  unreachable

_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit:     ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #6

declare ptr @getLongPathname(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_Z11processFilePKcS0_S0_S0_S0_S0_P7SRBRootaR10UErrorCode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i8 noundef signext %7, ptr noundef nonnull align 4 dereferenceable(4) %8) local_unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.icu_78::LocalPointer", align 8 ; 6 uses
  %10 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 6 uses
  %11 = alloca %"class.icu_78::CharString", align 8 ; 15 uses
  %12 = alloca %"class.icu_78::CharString", align 8 ; 12 uses
  %i.b = alloca [256 x i8], align 16              ; 7 uses
  %13 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %14 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %15 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %16 = alloca %"class.icu_78::CharString", align 8 ; 19 uses
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E:bb.a
bb.c:                                             ; preds = %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #32, !inline_history !147
  unreachable

_ZN25SimpleRuleBasedPathFilter4TreeD2Ev.exit:     ; preds = %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit.i
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !59   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN25SimpleRuleBasedPathFilter4TreeD2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !28
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN25SimpleRuleBasedPathFilter4TreeD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 128) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !148

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

declare void @get_basename(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @get_dirname(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZN7SRBRootD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176)) unnamed_addr #19

declare void @ucbuf_close(ptr noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #20

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_genrb.cpp() #21 section ".text.startup" {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZL10poolBundle, i8 0, i64 48, i1 false)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7ResFileD2Ev, ptr nonnull @_ZL10poolBundle, ptr nonnull @__dso_handle) #25 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { builtin nounwind }
attributes #25 = { nounwind }
attributes #26 = { cold nounwind }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { cold }
attributes #29 = { cold noreturn nounwind }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { allocsize(0) }
attributes #32 = { noreturn nounwind }
attributes #33 = { noreturn }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null, null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"p1 int", !10, i64 0}
!13 = !{!"p1 _ZTS18PseudoListResource", !10, i64 0}
!14 = !{!"_ZTS7ResFile", !11, i64 0, !12, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !13, i64 32, !7, i64 40, !7, i64 44}
!15 = !{!14, !11, i64 0}
!16 = !{!14, !13, i64 32}
!17 = !{!"vtable pointer", !5, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{ptr @_ZN7ResFile5closeEv}
!20 = !{!"_ZTS10UErrorCode", !6, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"_ZTS7UOption", !11, i64 0, !11, i64 8, !10, i64 16, !10, i64 24, !6, i64 32, !6, i64 33, !6, i64 34}
!23 = !{!22, !11, i64 8}
!24 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!11, !11, i64 0}
!27 = !{!22, !6, i64 34}
!28 = !{!6, !6, i64 0}
!29 = !{!"p1 _ZTS7SRBRoot", !10, i64 0}
!30 = !{!"_ZTSN6icu_7816LocalPointerBaseI7SRBRootEE", !29, i64 0}
!31 = !{!30, !29, i64 0}
!32 = !{!"p1 _ZTS9SResource", !10, i64 0}
!33 = !{!"p1 _ZTS11KeyMapEntry", !10, i64 0}
!34 = !{!"_ZTSN6icu_787UObjectE"}
!35 = !{!"_ZTSN6icu_7811ReplaceableE", !34, i64 0}
!36 = !{!"_ZTSN6icu_7813UnicodeStringE", !35, i64 0, !6, i64 8}
!37 = !{!"p1 _ZTS7ResFile", !10, i64 0}
!38 = !{!"_ZTS7SRBRoot", !32, i64 0, !11, i64 8, !7, i64 16, !7, i64 20, !6, i64 24, !6, i64 25, !6, i64 26, !11, i64 32, !33, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !36, i64 72, !7, i64 136, !37, i64 144, !7, i64 152, !7, i64 156, !7, i64 160, !29, i64 168}
!39 = !{!"_ZTSN6icu_7815MaybeStackArrayIcLi40EEE", !11, i64 0, !7, i64 8, !6, i64 12, !6, i64 13}
!40 = !{!39, !11, i64 0}
!41 = !{!39, !7, i64 8}
!42 = !{!39, !6, i64 12}
!43 = !{!"_ZTSN6icu_7810CharStringE", !39, i64 0, !7, i64 56}
!44 = !{!43, !7, i64 56}
!45 = !{!7, !7, i64 0}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"p1 _ZTS8UCHARBUF", !10, i64 0}
!48 = !{!"_ZTSN6icu_7816LocalPointerBaseI8UCHARBUFEE", !47, i64 0}
!49 = !{!48, !47, i64 0}
!50 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!51 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !10, i64 0}
!52 = !{!"_ZTSSt18_Rb_tree_node_base", !50, i64 0, !51, i64 8, !51, i64 16, !51, i64 24}
!53 = !{!"long", !6, i64 0}
!54 = !{!"_ZTSSt15_Rb_tree_header", !52, i64 0, !53, i64 32}
!55 = !{!"p1 _ZTSN25SimpleRuleBasedPathFilter4TreeE", !10, i64 0}
!56 = !{!54, !51, i64 8}
!57 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!58 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !57, i64 0, !53, i64 8, !6, i64 16}
!59 = !{!58, !11, i64 0}
!60 = !{!55, !55, i64 0}
!61 = distinct !{!61, !46}
!62 = distinct !{!62, !46}
!63 = distinct !{!63, !46}
!64 = distinct !{!64, !46}
!65 = !{!38, !11, i64 8}
!66 = !{!"short", !6, i64 0}
!67 = !{!"_ZTS10MappedData", !66, i64 0, !6, i64 2, !6, i64 3}
!68 = !{!"_ZTS9UDataInfo", !66, i64 0, !66, i64 2, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7, !6, i64 8, !6, i64 12, !6, i64 16}
!69 = !{!"_ZTS10DataHeader", !67, i64 0, !68, i64 4}
!70 = !{!69, !66, i64 0}
!71 = !{!14, !12, i64 8}
!72 = !{!14, !11, i64 16}
!73 = !{!14, !7, i64 24}
!74 = !{!14, !7, i64 44}
!75 = !{!14, !7, i64 28}
!76 = !{!"p1 char16_t", !10, i64 0}
!77 = !{!"_ZTS7UString", !76, i64 0, !7, i64 8, !7, i64 12}
!78 = !{!"_ZTS9SResource", !6, i64 8, !6, i64 9, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !32, i64 32, !77, i64 40}
!79 = !{!"_ZTS17ContainerResource", !78, i64 0, !7, i64 56, !32, i64 64}
!80 = !{!79, !7, i64 56}
!81 = !{!79, !32, i64 64}
!82 = !{!"char16_t", !6, i64 0}
!83 = !{!82, !82, i64 0}
!84 = !{!"_ZTS18StringBaseResource", !78, i64 0, !36, i64 56}
!85 = !{!"p1 _ZTS14StringResource", !10, i64 0}
!86 = !{!"_ZTS14StringResource", !84, i64 0, !85, i64 120, !7, i64 128, !7, i64 132, !7, i64 136, !6, i64 140}
!87 = !{!86, !6, i64 140}
!88 = !{!78, !7, i64 12}
!89 = !{!78, !6, i64 9}
!90 = !{!14, !7, i64 40}
!91 = distinct !{null}
!92 = distinct !{null}
!93 = distinct !{!93, !46}
!94 = distinct !{!94, !46}
!95 = !{!"_ZTSN10PathFilter10EInclusionE", !6, i64 0}
!96 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!97 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !96, i64 0}
!98 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !97, i64 0, !54, i64 8}
!99 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !98, i64 0}
!100 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !99, i64 0}
!101 = !{!"_ZTSSt10_Head_baseILm0EPN25SimpleRuleBasedPathFilter4TreeELb0EE", !55, i64 0}
!102 = !{!"_ZTSSt11_Tuple_implILm0EJPN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EEE", !101, i64 0}
!103 = !{!"_ZTSSt5tupleIJPN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EEE", !102, i64 0}
!104 = !{!"_ZTSSt15__uniq_ptr_implIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EE", !103, i64 0}
!105 = !{!"_ZTSSt15__uniq_ptr_dataIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_ELb1ELb1EE", !104, i64 0}
!106 = !{!"_ZTSSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EE", !105, i64 0}
!107 = !{!"_ZTSN25SimpleRuleBasedPathFilter4TreeE", !95, i64 0, !100, i64 8, !106, i64 56}
!108 = !{!107, !95, i64 0}
!109 = !{!54, !50, i64 0}
!110 = !{!54, !51, i64 16}
!111 = !{!54, !51, i64 24}
!112 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!113 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!114 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !10, i64 0}
!115 = !{!"_ZTSNSt8ios_base6_WordsE", !10, i64 0, !53, i64 8}
!116 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !10, i64 0}
!117 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!118 = !{!"_ZTSSt6locale", !117, i64 0}
!119 = !{!"_ZTSSt8ios_base", !53, i64 8, !53, i64 16, !112, i64 24, !113, i64 28, !113, i64 32, !114, i64 40, !115, i64 48, !6, i64 64, !7, i64 192, !116, i64 200, !118, i64 208}
!120 = !{!119, !113, i64 32}
!121 = !{!57, !11, i64 0}
!122 = !{!58, !53, i64 8}
!123 = !{!"p1 _ZTSSo", !10, i64 0}
!124 = !{!"bool", !6, i64 0}
!125 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 0}
!126 = !{!"p1 _ZTSSt5ctypeIcE", !10, i64 0}
!127 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !10, i64 0}
!128 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !10, i64 0}
!129 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !119, i64 0, !123, i64 216, !6, i64 224, !124, i64 225, !125, i64 232, !126, i64 240, !127, i64 248, !128, i64 256}
!130 = !{!129, !126, i64 240}
!131 = !{!"_ZTSNSt6locale5facetE", !7, i64 8}
!132 = !{!"p1 _ZTS15__locale_struct", !10, i64 0}
!133 = !{!"p1 short", !10, i64 0}
!134 = !{!"_ZTSSt5ctypeIcE", !131, i64 0, !132, i64 16, !124, i64 24, !12, i64 32, !12, i64 40, !133, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!135 = !{!134, !6, i64 56}
!136 = !{!38, !32, i64 0}
!137 = !{!38, !29, i64 168}
!138 = !{!38, !7, i64 60}
!139 = !{!38, !37, i64 144}
!140 = distinct !{!140, !46}
!141 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !10, i64 0}
!142 = !{!"_ZTSNSt8__detail15_List_node_baseE", !141, i64 0, !141, i64 8}
!143 = !{!142, !141, i64 0}
!144 = distinct !{null, null, null}
!145 = distinct !{null, null, null}
!146 = distinct !{null, null, null, null, null}
!147 = distinct !{null, null, null, null, null, null}
!148 = distinct !{!148, !46}
!149 = !{!52, !51, i64 24}
!150 = !{!52, !51, i64 16}
end_hunk_2
