Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/strutil?download=true
inline.NumInlined: 763
inline.NumDeleted: 191
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.google::protobuf::stringpiece_internal::StringPiece" = type { ptr, i64 }
%"class.google::protobuf::internal::LogMessage" = type { i32, ptr, i32, %"class.std::__cxx11::basic_string" }
%"class.google::protobuf::internal::LogFinisher" = type { i8 }

$_ZN6google8protobuf9CaseEqualENS0_20stringpiece_internal11StringPieceES2_ = comdat any

$_ZN6google8protobuf17safe_int_internalIiEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_ = comdat any

$_ZN6google8protobuf18safe_uint_internalIjEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_ = comdat any

$_ZN6google8protobuf17safe_int_internalIlEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_ = comdat any

$_ZN6google8protobuf18safe_uint_internalImEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZN6google8protobuf15safe_parse_signEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPb = comdat any

@.str = private unnamed_addr constant [85 x i8] c"/opt-bench/work/opencv/opencv/3rdparty/protobuf/src/google/protobuf/stubs/strutil.cc\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"CHECK failed: dest: \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"CHECK failed: i >= 0: \00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"FastHexToBuffer() wants non-negative integers, not \00", align 1
@_ZN6google8protobufL16two_ASCII_digitsE = internal unnamed_addr constant [100 x [2 x i8]] [[2 x i8] c"00", [2 x i8] c"01", [2 x i8] c"02", [2 x i8] c"03", [2 x i8] c"04", [2 x i8] c"05", [2 x i8] c"06", [2 x i8] c"07", [2 x i8] c"08", [2 x i8] c"09", [2 x i8] c"10", [2 x i8] c"11", [2 x i8] c"12", [2 x i8] c"13", [2 x i8] c"14", [2 x i8] c"15", [2 x i8] c"16", [2 x i8] c"17", [2 x i8] c"18", [2 x i8] c"19", [2 x i8] c"20", [2 x i8] c"21", [2 x i8] c"22", [2 x i8] c"23", [2 x i8] c"24", [2 x i8] c"25", [2 x i8] c"26", [2 x i8] c"27", [2 x i8] c"28", [2 x i8] c"29", [2 x i8] c"30", [2 x i8] c"31", [2 x i8] c"32", [2 x i8] c"33", [2 x i8] c"34", [2 x i8] c"35", [2 x i8] c"36", [2 x i8] c"37", [2 x i8] c"38", [2 x i8] c"39", [2 x i8] c"40", [2 x i8] c"41", [2 x i8] c"42", [2 x i8] c"43", [2 x i8] c"44", [2 x i8] c"45", [2 x i8] c"46", [2 x i8] c"47", [2 x i8] c"48", [2 x i8] c"49", [2 x i8] c"50", [2 x i8] c"51", [2 x i8] c"52", [2 x i8] c"53", [2 x i8] c"54", [2 x i8] c"55", [2 x i8] c"56", [2 x i8] c"57", [2 x i8] c"58", [2 x i8] c"59", [2 x i8] c"60", [2 x i8] c"61", [2 x i8] c"62", [2 x i8] c"63", [2 x i8] c"64", [2 x i8] c"65", [2 x i8] c"66", [2 x i8] c"67", [2 x i8] c"68", [2 x i8] c"69", [2 x i8] c"70", [2 x i8] c"71", [2 x i8] c"72", [2 x i8] c"73", [2 x i8] c"74", [2 x i8] c"75", [2 x i8] c"76", [2 x i8] c"77", [2 x i8] c"78", [2 x i8] c"79", [2 x i8] c"80", [2 x i8] c"81", [2 x i8] c"82", [2 x i8] c"83", [2 x i8] c"84", [2 x i8] c"85", [2 x i8] c"86", [2 x i8] c"87", [2 x i8] c"88", [2 x i8] c"89", [2 x i8] c"90", [2 x i8] c"91", [2 x i8] c"92", [2 x i8] c"93", [2 x i8] c"94", [2 x i8] c"95", [2 x i8] c"96", [2 x i8] c"97", [2 x i8] c"98", [2 x i8] c"99"], align 16
@.str.12 = private unnamed_addr constant [5 x i8] c"-inf\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%.*g\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"CHECK failed: value != nullptr: \00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"nullptr output boolean given.\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@_ZZN6google8protobuf7strings8AlphaNumC1ENS1_3HexEE9hexdigits = internal unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16
@.str.35 = private unnamed_addr constant [29 x i8] c"CHECK failed: s != nullptr: \00", align 1
@_ZN6google8protobufL16kUnWebSafeBase64E = internal constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF?\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@_ZN6google8protobufL9kUnBase64E = internal constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@.str.37 = private unnamed_addr constant [24 x i8] c"Logic problem? szsrc = \00", align 1
@_ZN6google8protobufL12kBase64CharsE = internal constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@_ZN6google8protobufL19kWebSafeBase64CharsE = internal constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_\00", align 16
@_ZN6google8protobufL11kUTF8LenTblE = internal unnamed_addr constant [256 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\01\01\01\01\01\01\01\01\01\01\01", align 16
@_ZZN6google8protobufL14CEscapedLengthENS0_20stringpiece_internal11StringPieceEE13c_escaped_len = internal unnamed_addr constant [256 x i8] c"\04\04\04\04\04\04\04\04\04\02\02\04\04\02\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\01\01\02\01\01\01\01\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04", align 16
@.str.40 = private unnamed_addr constant [5 x i8] c"%.1f\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"CHECK failed: (temp[0]) == ('1'): \00", align 1
@.str.42 = private unnamed_addr constant [42 x i8] c"CHECK failed: (temp[size - 1]) == ('5'): \00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"CHECK failed: (size) <= (6): \00", align 1
@.str.45 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.48 = private unnamed_addr constant [68 x i8] c"basic_string::at: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1
@_ZN6google8protobuf20stringpiece_internal11StringPiece4nposE = external local_unnamed_addr constant i64, align 8
@.str.50 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.52 = private unnamed_addr constant [34 x i8] c"CHECK failed: result != nullptr: \00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1

@_ZN6google8protobuf7strings8AlphaNumC1ENS1_3HexE = hidden unnamed_addr alias void (ptr, i64, i32), ptr @_ZN6google8protobuf7strings8AlphaNumC2ENS1_3HexE

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6google8protobuf17ReplaceCharactersEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i8 noundef signext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.b = tail call noundef ptr @strpbrk(ptr noundef %i.a, ptr noundef %1) #27 ; 2 uses
  %.not10 = icmp eq ptr %i.b, null
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.011 = phi ptr [ %i.b, %.lr.ph ], [ %i.i, %bb.b ] ; 2 uses
  %i.d = ptrtoint ptr %.011 to i64
  %i.e = sub i64 %i.d, %i.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e
  store i8 %2, ptr %i.g, align 1, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %.011, i64 1
  %i.i = tail call noundef ptr @strpbrk(ptr noundef nonnull %i.h, ptr noundef %1) #27 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strpbrk(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf15StripWhitespaceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 6 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader, label %.critedge.thread61

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.b, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 6 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %i.b
  br i1 %exitcond.not, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit

bb.b:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.48, i64 noundef %i.b, i64 noundef %i.b) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit: ; preds = %.lr.ph
  %i.e = load ptr, ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14
  switch i8 %i.g, label %.critedge [
    i8 32, label %bb.c
    i8 12, label %bb.c
    i8 11, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond53.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond53.not, label %.critedge.thread, label %.lr.ph, !llvm.loop !18

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit
  %i.h = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.i = icmp eq i32 %i.h, %i.c
  br i1 %i.i, label %.critedge.thread, label %bb.d

.critedge.thread61:                               ; preds = %bb.a
  %i.j = icmp eq i32 %i.c, 0
  br i1 %i.j, label %.critedge.thread, label %.critedge2.thread

.critedge.thread:                                 ; preds = %bb.c, %.critedge.thread61, %.critedge
  store i64 0, ptr %i.a, align 8, !tbaa !17
  %i.k = load ptr, ptr %0, align 8, !tbaa !8
  store i8 0, ptr %i.k, align 1, !tbaa !14
  br label %.critedge2.thread

bb.d:                                             ; preds = %.critedge
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %bb.d
  %spec.select.i.i = tail call noundef i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.b)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %spec.select.i.i)
  %i.l = sub nsw i32 %i.c, %i.h
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %bb.d
  %.027 = phi i32 [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ %i.c, %bb.d ] ; 2 uses
  %i.m = add i32 %.027, -1                        ; 2 uses
  %i.n = icmp sgt i32 %.027, 0
  br i1 %i.n, label %.lr.ph45, label %.critedge2.thread

.lr.ph45:                                         ; preds = %bb.e
  %i.o = load i64, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %1 = zext nneg i32 %i.m to i64                  ; 3 uses
  %.not.i29.first_iter = icmp ugt i64 %i.o, %1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph45, %bb.h
  %indvars.iv54 = phi i64 [ %1, %.lr.ph45 ], [ %indvars.iv.next55, %bb.h ] ; 5 uses
  br i1 %.not.i29.first_iter, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit30, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.48, i64 noundef %1, i64 noundef %i.o) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit30: ; preds = %bb.f
  %i.p = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv54
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14
  switch i8 %i.r, label %.critedge2 [
    i8 32, label %bb.h
    i8 12, label %bb.h
    i8 11, label %bb.h
    i8 10, label %bb.h
    i8 9, label %bb.h
    i8 13, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit30
  %indvars.iv.next55 = add nsw i64 %indvars.iv54, -1
  %i.s = icmp sgt i64 %indvars.iv54, 0
  br i1 %i.s, label %bb.f, label %.critedge2.thread, !llvm.loop !19

.critedge2:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit30
  %2 = trunc nuw nsw i64 %indvars.iv54 to i32
  %.not34 = icmp eq i32 %i.m, %2
  br i1 %.not34, label %.critedge2.thread, label %bb.i

bb.i:                                             ; preds = %.critedge2
  %3 = add nuw nsw i64 %indvars.iv54, 1
  %4 = and i64 %3, 4294967295                     ; 4 uses
  %i.t = icmp ult i64 %i.o, %4
  br i1 %i.t, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit32

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.49, i64 noundef %4, i64 noundef %i.o) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit32: ; preds = %bb.i
  store i64 %4, ptr %i.a, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %4
  store i8 0, ptr %i.u, align 1, !tbaa !14
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %bb.h, %.critedge.thread61, %bb.e, %.critedge2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit32, %.critedge.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf13StringReplaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_bPS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !8
  %i.h = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.g, i64 noundef 0, i64 noundef %i.b) #29 ; 4 uses
  %i.i = icmp eq i64 %i.h, -1                     ; 2 uses
  br i1 %3, label %.preheader.split.us, label %.preheader.split, !llvm.loop !20

.preheader.split.us:                              ; preds = %.preheader
  br i1 %i.i, label %.split.us.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.split.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit22.us
  %i.j = phi i64 [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit22.us ], [ %i.h, %.preheader.split.us ] ; 2 uses
  %.0.us39 = phi i64 [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit22.us ], [ 0, %.preheader.split.us ] ; 5 uses
  %i.k = load i64, ptr %i.d, align 8, !tbaa !17   ; 3 uses
  %i.l = icmp ugt i64 %.0.us39, %i.k
  br i1 %i.l, label %.split32.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.us: ; preds = %.lr.ph
  %i.m = sub i64 %i.j, %.0.us39
  %i.n = sub nuw i64 %i.k, %.0.us39
  %spec.select.i.i.us = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.o = load i64, ptr %i.e, align 8, !tbaa !17
  %i.p = sub i64 4611686018427387903, %i.o
  %i.q = icmp ult i64 %i.p, %spec.select.i.i.us
  br i1 %i.q, label %.split36.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.us: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.us
  %i.r = load ptr, ptr %0, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.0.us39
  %i.t = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.s, i64 noundef %spec.select.i.i.us) ; 0 uses
  %i.u = load i64, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.v = load i64, ptr %i.e, align 8, !tbaa !17
  %i.w = sub i64 4611686018427387903, %i.v
  %i.x = icmp ult i64 %i.w, %i.u
  br i1 %i.x, label %.split38.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit22.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit22.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.us
  %i.y = load ptr, ptr %2, align 8, !tbaa !8
  %i.z = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.y, i64 noundef %i.u) ; 0 uses
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.ab = add i64 %i.aa, %i.j                     ; 3 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !8
  %i.ad = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ac, i64 noundef %i.ab, i64 noundef %i.aa) #29 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, -1
  br i1 %i.ae, label %.split.us, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.af = load i64, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !17
  %i.ai = sub i64 4611686018427387903, %i.ah
  %i.aj = icmp ult i64 %i.ai, %i.af
  br i1 %i.aj, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.b
  %i.ak = load ptr, ptr %0, align 8, !tbaa !8
  %i.al = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ak, i64 noundef %i.af) ; 0 uses
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader
  br i1 %i.i, label %.split.us.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i

.split32.us:                                      ; preds = %.lr.ph
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i64 noundef %.0.us39, i64 noundef %i.k) #28
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i: ; preds = %.preheader.split
  %i.am = load i64, ptr %i.d, align 8, !tbaa !17
  %spec.select.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.h, i64 %i.am) ; 2 uses
  %i.an = load i64, ptr %i.e, align 8, !tbaa !17
  %i.ao = sub i64 4611686018427387903, %i.an
  %i.ap = icmp ult i64 %i.ao, %spec.select.i.i
  br i1 %i.ap, label %.split36.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit

.split36.us:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %i.aq = load ptr, ptr %0, align 8, !tbaa !8
  %i.ar = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.aq, i64 noundef %spec.select.i.i) ; 0 uses
  %i.as = load i64, ptr %i.f, align 8, !tbaa !17  ; 2 uses
  %i.at = load i64, ptr %i.e, align 8, !tbaa !17
  %i.au = sub i64 4611686018427387903, %i.at
  %i.av = icmp ult i64 %i.au, %i.as
  br i1 %i.av, label %.split38.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit22

.split38.us:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit
  %i.aw = load ptr, ptr %2, align 8, !tbaa !8
  %i.ax = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.aw, i64 noundef %i.as) ; 0 uses
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !17
  %i.az = add i64 %i.ay, %i.h
  br label %.split.us

.split.us.thread:                                 ; preds = %.preheader.split.us, %.preheader.split
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i23

.split.us:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit22.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit22
  %.us-phi = phi i64 [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit22 ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit22.us ] ; 4 uses
  %i.bb = load i64, ptr %i.d, align 8, !tbaa !17  ; 3 uses
  %i.bc = sub i64 %i.bb, %.us-phi
  %i.bd = icmp ugt i64 %.us-phi, %i.bb
  br i1 %i.bd, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i23

bb.d:                                             ; preds = %.split.us
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i64 noundef %.us-phi, i64 noundef %i.bb) #28
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i23: ; preds = %.split.us.thread, %.split.us
  %i.be = phi i64 [ %i.ba, %.split.us.thread ], [ %i.bc, %.split.us ] ; 2 uses
  %.us-phi57 = phi i64 [ 0, %.split.us.thread ], [ %.us-phi, %.split.us ]
  %i.bf = load i64, ptr %i.e, align 8, !tbaa !17
  %i.bg = sub i64 4611686018427387903, %i.bf
  %i.bh = icmp ult i64 %i.bg, %i.be
  br i1 %i.bh, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit25

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i23
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i23
  %i.bi = load ptr, ptr %0, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.us-phi57
  %i.bk = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.bj, i64 noundef %i.be) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf13StringReplaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_b(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i1 noundef zeroext %4) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !17
  store i8 0, ptr %i.a, align 8, !tbaa !14
  invoke void @_ZN6google8protobuf13StringReplaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_bPS6_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext %4, ptr noundef nonnull %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !14
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.c

bb.c:                                             ; preds = %bb.a
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
end_hunk_0
