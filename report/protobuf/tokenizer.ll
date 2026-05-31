inline.NumInlined: 657
inline.NumDeleted: 223
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.absl::lts_20250512::str_format_internal::FormatArgImpl" = type { %"union.absl::lts_20250512::str_format_internal::FormatArgImpl::Data", ptr }
%"union.absl::lts_20250512::str_format_internal::FormatArgImpl::Data" = type { ptr }
%"class.google::protobuf::io::(anonymous namespace)::CommentCollector" = type { ptr, ptr, ptr, %"class.std::__cxx11::basic_string", i32, i8, i8, i8, i8 }
%"struct.std::vector<std::__cxx11::basic_string<char>>::_Temporary_value" = type { ptr, %"union.std::vector<std::__cxx11::basic_string<char>>::_Temporary_value::_Storage" }
%"union.std::vector<std::__cxx11::basic_string<char>>::_Temporary_value::_Storage" = type { %"class.std::__cxx11::basic_string" }

$__clang_call_terminate = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN6google8protobuf2io14ErrorCollector13RecordWarningEiiSt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_ = comdat any

$_ZSt18__do_uninit_fill_nIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RKT1_ = comdat any

@.str = private unnamed_addr constant [26 x i8] c"Unexpected end of string.\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Multiline strings are not allowed. Did you miss a \22?.\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Expected hex digits for escape sequence.\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Expected four hex digits for \\u escape sequence.\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"Expected eight hex digits up to 10ffff for \\U escape sequence\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Invalid escape sequence in string literal.\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"\220x\22 must be followed by hex digits.\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Numbers starting with leading zero must be in octal.\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"\22e\22 must be followed by exponent.\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Need space between number and identifier.\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"Already saw decimal point or exponent; can't have another one.\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Hex and octal numbers must be integers.\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"\22/*\22 inside block comment.  Block comments cannot be nested.\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"End-of-file inside block comment.\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"  Comment started here.\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"Invalid control characters encountered in text.\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"Need space between identifier and decimal point.\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"Interpreting non ascii codepoint %d.\00", align 1
@.str.19 = private unnamed_addr constant [86 x i8] c"Proto file starts with 0xEF but not UTF-8 BOM. Only UTF-8 is accepted for proto file.\00", align 1
@_ZTVN6google8protobuf2io14ErrorCollectorE = unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6google8protobuf2io14ErrorCollectorE, ptr @_ZN6google8protobuf2io14ErrorCollectorD1Ev, ptr @_ZN6google8protobuf2io14ErrorCollectorD0Ev, ptr @__cxa_pure_virtual, ptr @_ZN6google8protobuf2io14ErrorCollector13RecordWarningEiiSt17basic_string_viewIcSt11char_traitsIcEE] }, align 8
@_ZTIN6google8protobuf2io14ErrorCollectorE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6google8protobuf2io14ErrorCollectorE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN6google8protobuf2io14ErrorCollectorE = constant [38 x i8] c"N6google8protobuf2io14ErrorCollectorE\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@_ZN6google8protobuf2io12_GLOBAL__N_111kAsciiToIntE = internal unnamed_addr constant [256 x i8] c"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\00\01\02\03\04\05\06\07\08\09$$$$$$$\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$$$$$$\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$", align 16
@.str.25 = private unnamed_addr constant [7 x i8] c"\\U%08x\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1
@.str.27 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.29 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

@_ZN6google8protobuf2io14ErrorCollectorD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6google8protobuf2io14ErrorCollectorD2Ev
@_ZN6google8protobuf2io9TokenizerC1EPNS1_19ZeroCopyInputStreamEPNS1_14ErrorCollectorE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6google8protobuf2io9TokenizerC2EPNS1_19ZeroCopyInputStreamEPNS1_14ErrorCollectorE
@_ZN6google8protobuf2io9TokenizerD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6google8protobuf2io9TokenizerD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6google8protobuf2io14ErrorCollectorD2Ev(ptr nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN6google8protobuf2io14ErrorCollectorD0Ev(ptr nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io9TokenizerC2EPNS1_19ZeroCopyInputStreamEPNS1_14ErrorCollectorE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !11
  store i8 0, ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.h, align 8, !tbaa !11
  store i8 0, ptr %i.g, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %1, ptr %i.i, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %2, ptr %i.j, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 0, ptr %i.o, align 4, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.p, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.k, i8 0, i64 17, i1 false)
  store i32 -1, ptr %i.r, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i8 0, ptr %i.s, align 4, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 0, ptr %i.t, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 188
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.u, align 4, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 0, ptr %i.v, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.w, align 4, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.x, align 8, !tbaa !34
  store i32 0, ptr %0, align 8, !tbaa !35
  store i32 0, ptr %i.e, align 8, !tbaa !36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.b unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.y, ptr noundef nonnull align 8 dereferenceable(12) %i.v, i64 12, i1 false)
  %i.z = load i8, ptr %i.n, align 8, !tbaa !37, !range !38, !noundef !39
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.ab, align 8, !tbaa !40
  br label %_ZN6google8protobuf2io9Tokenizer7RefreshEv.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !27  ; 3 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.r, align 8, !tbaa !28  ; 3 uses
  %i.ae = load i32, ptr %i.l, align 8, !tbaa !41  ; 2 uses
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = sub nsw i32 %i.ae, %i.ad
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !11
  %i.ak = sub i64 4611686018427387903, %i.aj
  %i.al = icmp ult i64 %i.ak, %i.ah
  br i1 %i.al, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #23
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.f
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.an = sext i32 %i.ad to i64
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  %i.ap = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef %i.ao, i64 noundef %i.ah)
          to label %.noexc4 unwind label %.loopexit.split-lp ; 0 uses

.noexc4:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  store i32 0, ptr %i.r, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %.noexc4, %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !43
  store ptr null, ptr %i.k, align 8, !tbaa !42
  store i32 0, ptr %i.m, align 4, !tbaa !44
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !15  ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !45
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.l)
          to label %.noexc5 unwind label %.loopexit, !inline_history !47

.noexc5:                                          ; preds = %bb.i
  br i1 %i.au, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.noexc5
  store i32 0, ptr %i.l, align 8, !tbaa !41
  store i8 1, ptr %i.n, align 8, !tbaa !37
  br label %bb.m

bb.k:                                             ; preds = %.noexc5
  %i.av = load i32, ptr %i.l, align 8, !tbaa !41
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.i, label %bb.l, !llvm.loop !48

bb.l:                                             ; preds = %bb.k
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  store ptr %i.ax, ptr %i.k, align 8, !tbaa !42
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sink.i = phi i8 [ %i.ay, %bb.l ], [ 0, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %.sink.i, ptr %i.az, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN6google8protobuf2io9Tokenizer7RefreshEv.exit

_ZN6google8protobuf2io9Tokenizer7RefreshEv.exit:  ; preds = %bb.m, %bb.c
  ret void

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.a, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ba = load ptr, ptr %i.f, align 8, !tbaa !50  ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.g
  br i1 %i.bb, label %_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.bc = load i64, ptr %i.g, align 8, !tbaa !14
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #25
  br label %_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit

_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit:  ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !50  ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.c
  br i1 %i.bf, label %_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit
  %i.bg = load i64, ptr %i.c, align 8, !tbaa !14
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #25
  br label %_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit8

_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit8: ; preds = %_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf2io9Tokenizer22TryConsumeCommentStartEv:bb.a
_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit1.thread: ; preds = %bb.c
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2.thread: ; preds = %bb.c
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2: ; preds = %bb.c
  store i32 6, ptr %0, align 8, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef %i.j, ptr noundef nonnull @.str.15, i64 noundef 1) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.o = load i32, ptr %i.n, align 8, !tbaa !26
  %i.p = load <2 x i32>, ptr %i.l, align 4, !tbaa !3
  %i.q = add nsw <2 x i32> %i.p, <i32 0, i32 -1>
  store <2 x i32> %i.q, ptr %i.m, align 8, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.o, ptr %i.r, align 8, !tbaa !34
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit: ; preds = %bb.a
  %i.s = icmp eq i32 %i.b, 1
  %i.t = icmp eq i8 %i.e, 35
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3.thread, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3.thread: ; preds = %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3: ; preds = %bb.b, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3.thread, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2.thread, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit1.thread, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2
  %.0 = phi i32 [ 0, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3.thread ], [ 0, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit1.thread ], [ 2, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2 ], [ 1, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2.thread ], [ 3, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit ], [ 3, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 191
  %i.b = load i8, ptr %i.a, align 1, !tbaa !52, !range !38, !noundef !39
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !40    ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEbv.exit [
    i8 32, label %.preheader
    i8 13, label %.preheader
    i8 11, label %.preheader
    i8 9, label %.preheader
    i8 12, label %.preheader
  ]

.preheader:                                       ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.preheader
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.f = load i8, ptr %i.d, align 8, !tbaa !40
  switch i8 %i.f, label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit [
    i8 32, label %.backedge
    i8 13, label %.backedge
    i8 11, label %.backedge
    i8 9, label %.backedge
    i8 12, label %.backedge
  ]

.backedge:                                        ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  br label %bb.c, !llvm.loop !64

_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit: ; preds = %bb.c
  store i32 7, ptr %0, align 8, !tbaa !35
  br label %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEbv.exit

bb.d:                                             ; preds = %bb.a
  switch i8 %i.e, label %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEbv.exit [
    i8 32, label %.preheader2
    i8 13, label %.preheader2
    i8 11, label %.preheader2
    i8 10, label %.preheader2
    i8 9, label %.preheader2
    i8 12, label %.preheader2
  ]

.preheader2:                                      ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  br label %bb.e

bb.e:                                             ; preds = %.backedge3, %.preheader2
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.g = load i8, ptr %i.d, align 8, !tbaa !40
  switch i8 %i.g, label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_110WhitespaceEEEvv.exit [
    i8 32, label %.backedge3
    i8 13, label %.backedge3
    i8 11, label %.backedge3
    i8 10, label %.backedge3
    i8 9, label %.backedge3
    i8 12, label %.backedge3
  ]

.backedge3:                                       ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  br label %bb.e, !llvm.loop !66

_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_110WhitespaceEEEvv.exit: ; preds = %bb.e
  store i32 7, ptr %0, align 8, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 190
  %i.i = load i8, ptr %i.h, align 2, !tbaa !51, !range !38, !noundef !39
  %i.j = trunc nuw i8 %i.i to i1
  br label %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEbv.exit

_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEbv.exit: ; preds = %bb.d, %bb.b, %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_110WhitespaceEEEvv.exit, %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit
  %.0 = phi i1 [ true, %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit ], [ false, %bb.b ], [ %i.j, %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_110WhitespaceEEEvv.exit ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 190
  %i.b = load i8, ptr %i.a, align 2, !tbaa !51, !range !38, !noundef !39
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 191
  %i.e = load i8, ptr %i.d, align 1, !range !38
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load i8, ptr %i.g, align 8
  %i.i = icmp eq i8 %i.h, 10
  %or.cond6 = select i1 %or.cond, i1 %i.i, i1 false ; 2 uses
  br i1 %or.cond6, label %bb.b, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  store i32 8, ptr %0, align 8, !tbaa !35
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit: ; preds = %bb.a, %bb.b
  ret i1 %or.cond6
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer4NextEv(ptr noundef nonnull align 8 dereferenceable(192) initializes((56, 60)) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %1 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !36
  store i32 %i.e, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i64 12, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !37, !range !38, !noundef !39
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.critedge2.thread50, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 191
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 190 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge2
  store i32 0, ptr %0, align 8, !tbaa !35
  store i64 0, ptr %i.m, align 8, !tbaa !11
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !50
  store i8 0, ptr %i.ad, align 1, !tbaa !14
  %i.ae = load <2 x i32>, ptr %i.n, align 4, !tbaa !3
  store <2 x i32> %i.ae, ptr %i.i, align 8, !tbaa !3
  store ptr %i.g, ptr %i.q, align 8, !tbaa !27
  %i.af = load i32, ptr %i.r, align 4, !tbaa !44
  store i32 %i.af, ptr %i.s, align 8, !tbaa !28
  %i.ag = load i8, ptr %i.t, align 1, !tbaa !52, !range !38, !noundef !39
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = load i8, ptr %i.u, align 8, !tbaa !40   ; 5 uses
  br i1 %i.ah, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  switch i8 %i.ai, label %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread [
    i8 32, label %.preheader201
    i8 13, label %.preheader201
    i8 11, label %.preheader201
    i8 9, label %.preheader201
    i8 12, label %.preheader201
  ]

.preheader201:                                    ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %.preheader201
  %i.aj = phi i8 [ %i.ai, %.preheader201 ], [ %i.bx, %.backedge ]
  switch i8 %i.aj, label %bb.g [
    i8 10, label %bb.e
    i8 9, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.ak = load i32, ptr %i.n, align 4, !tbaa !25
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.n, align 4, !tbaa !25
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.am = load i32, ptr %i.o, align 8, !tbaa !26  ; 2 uses
  %i.an = srem i32 %i.am, 8
  %reass.sub.i39 = add i32 %i.am, 8
  %i.ao = sub i32 %reass.sub.i39, %i.an
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ap = load i32, ptr %i.o, align 8, !tbaa !26
  %i.aq = add nsw i32 %i.ap, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sink = phi i32 [ %i.aq, %bb.g ], [ %i.ao, %bb.f ], [ 0, %bb.e ]
  store i32 %.sink, ptr %i.o, align 8, !tbaa !26
  %i.ar = load i32, ptr %i.r, align 4, !tbaa !44
  %i.as = add nsw i32 %i.ar, 1                    ; 3 uses
  store i32 %i.as, ptr %i.r, align 4, !tbaa !44
  %i.at = load i32, ptr %i.v, align 8, !tbaa !41  ; 3 uses
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %i.w, align 8, !tbaa !42
  %i.aw = sext i32 %i.as to i64
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !14  ; 2 uses
  store i8 %i.ay, ptr %i.u, align 8, !tbaa !40
  br label %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43

bb.j:                                             ; preds = %bb.h
  %i.az = load i8, ptr %i.j, align 8, !tbaa !37, !range !38, !noundef !39
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43.thread, label %bb.k

_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43.thread: ; preds = %bb.j
  store i8 0, ptr %i.u, align 8, !tbaa !40
  br label %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread47

bb.k:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %i.q, align 8, !tbaa !27  ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i40, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = load i32, ptr %i.s, align 8, !tbaa !28  ; 3 uses
  %i.bd = icmp slt i32 %i.bc, %i.at
  br i1 %i.bd, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.be = sub nsw i32 %i.at, %i.bc
  %i.bf = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !11
  %i.bi = sub i64 4611686018427387903, %i.bh
  %i.bj = icmp ult i64 %i.bi, %i.bf
  br i1 %i.bj, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i42

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i42: ; preds = %bb.m
  %i.bk = load ptr, ptr %i.w, align 8, !tbaa !42
  %i.bl = sext i32 %i.bc to i64
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 %i.bl
  %i.bn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef %i.bm, i64 noundef %i.bf) ; 0 uses
  store i32 0, ptr %i.s, align 8, !tbaa !28
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i42, %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !43
  store ptr null, ptr %i.w, align 8, !tbaa !42
  store i32 0, ptr %i.r, align 4, !tbaa !44
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %i.bo = load ptr, ptr %i.x, align 8, !tbaa !15  ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !45
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef zeroext i1 %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull %i.a, ptr noundef nonnull %i.v), !inline_history !63
  br i1 %i.bs, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.v, align 8, !tbaa !41
  store i8 1, ptr %i.j, align 8, !tbaa !37
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.bt = load i32, ptr %i.v, align 8, !tbaa !41
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.p, label %bb.s, !llvm.loop !48

bb.s:                                             ; preds = %bb.r
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  store ptr %i.bv, ptr %i.w, align 8, !tbaa !42
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.sink.i.i41 = phi i8 [ %i.bw, %bb.s ], [ 0, %bb.q ] ; 2 uses
  store i8 %.sink.i.i41, ptr %i.u, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43

_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43: ; preds = %bb.i, %bb.t
  %i.bx = phi i8 [ %i.ay, %bb.i ], [ %.sink.i.i41, %bb.t ] ; 2 uses
  switch i8 %i.bx, label %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread47 [
    i8 32, label %.backedge
    i8 13, label %.backedge
    i8 11, label %.backedge
    i8 9, label %.backedge
    i8 12, label %.backedge
  ]

.backedge:                                        ; preds = %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43, %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43, %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43, %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43, %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43
  br label %bb.d, !llvm.loop !64

_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread47: ; preds = %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43, %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43.thread
  store i32 7, ptr %0, align 8, !tbaa !35
  br label %.critedge15

bb.u:                                             ; preds = %bb.b
  switch i8 %i.ai, label %_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv.exit [
    i8 32, label %.preheader203
    i8 13, label %.preheader203
    i8 11, label %.preheader203
    i8 10, label %.preheader203
    i8 9, label %.preheader203
    i8 12, label %.preheader203
  ]

.preheader203:                                    ; preds = %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u
  br label %bb.v

bb.v:                                             ; preds = %.backedge204, %.preheader203
  %i.by = phi i8 [ %i.ai, %.preheader203 ], [ %i.dm, %.backedge204 ]
  switch i8 %i.by, label %bb.y [
    i8 10, label %bb.w
    i8 9, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.bz = load i32, ptr %i.n, align 4, !tbaa !25
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.n, align 4, !tbaa !25
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.cb = load i32, ptr %i.o, align 8, !tbaa !26  ; 2 uses
  %i.cc = srem i32 %i.cb, 8
  %reass.sub.i = add i32 %i.cb, 8
  %i.cd = sub i32 %reass.sub.i, %i.cc
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.ce = load i32, ptr %i.o, align 8, !tbaa !26
  %i.cf = add nsw i32 %i.ce, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %.sink189 = phi i32 [ %i.cf, %bb.y ], [ %i.cd, %bb.x ], [ 0, %bb.w ]
  store i32 %.sink189, ptr %i.o, align 8, !tbaa !26
  %i.cg = load i32, ptr %i.r, align 4, !tbaa !44
  %i.ch = add nsw i32 %i.cg, 1                    ; 3 uses
  store i32 %i.ch, ptr %i.r, align 4, !tbaa !44
  %i.ci = load i32, ptr %i.v, align 8, !tbaa !41  ; 3 uses
  %i.cj = icmp slt i32 %i.ch, %i.ci
  br i1 %i.cj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr %i.w, align 8, !tbaa !42
  %i.cl = sext i32 %i.ch to i64
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !14  ; 2 uses
  store i8 %i.cn, ptr %i.u, align 8, !tbaa !40
  br label %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit

bb.ab:                                            ; preds = %bb.z
  %i.co = load i8, ptr %i.j, align 8, !tbaa !37, !range !38, !noundef !39
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit.thread, label %bb.ac

_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit.thread: ; preds = %bb.ab
  store i8 0, ptr %i.u, align 8, !tbaa !40
  br label %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cq = load ptr, ptr %i.q, align 8, !tbaa !27  ; 3 uses
  %.not.i.i37 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i37, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cr = load i32, ptr %i.s, align 8, !tbaa !28  ; 3 uses
  %i.cs = icmp slt i32 %i.cr, %i.ci
  br i1 %i.cs, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ct = sub nsw i32 %i.ci, %i.cr
  %i.cu = zext nneg i32 %i.ct to i64              ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !11
  %i.cx = sub i64 4611686018427387903, %i.cw
  %i.cy = icmp ult i64 %i.cx, %i.cu
  br i1 %i.cy, label %bb.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i38

bb.af:                                            ; preds = %bb.ae
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i38: ; preds = %bb.ae
  %i.cz = load ptr, ptr %i.w, align 8, !tbaa !42
  %i.da = sext i32 %i.cr to i64
  %i.db = getelementptr inbounds i8, ptr %i.cz, i64 %i.da
  %i.dc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef %i.db, i64 noundef %i.cu) ; 0 uses
  store i32 0, ptr %i.s, align 8, !tbaa !28
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i38, %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr null, ptr %i.b, align 8, !tbaa !43
  store ptr null, ptr %i.w, align 8, !tbaa !42
  store i32 0, ptr %i.r, align 4, !tbaa !44
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %bb.ag
  %i.dd = load ptr, ptr %i.x, align 8, !tbaa !15  ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !45
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = call noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef nonnull %i.b, ptr noundef nonnull %i.v), !inline_history !63
  br i1 %i.dh, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.v, align 8, !tbaa !41
  store i8 1, ptr %i.j, align 8, !tbaa !37
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.di = load i32, ptr %i.v, align 8, !tbaa !41
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.ah, label %bb.ak, !llvm.loop !48

bb.ak:                                            ; preds = %bb.aj
  %i.dk = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  store ptr %i.dk, ptr %i.w, align 8, !tbaa !42
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !14
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %.sink.i.i = phi i8 [ %i.dl, %bb.ak ], [ 0, %bb.ai ] ; 2 uses
  store i8 %.sink.i.i, ptr %i.u, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit

_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit: ; preds = %bb.aa, %bb.al
  %i.dm = phi i8 [ %i.cn, %bb.aa ], [ %.sink.i.i, %bb.al ] ; 2 uses
  switch i8 %i.dm, label %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit [
    i8 32, label %.backedge204
    i8 13, label %.backedge204
    i8 11, label %.backedge204
    i8 10, label %.backedge204
    i8 9, label %.backedge204
    i8 12, label %.backedge204
  ]

.backedge204:                                     ; preds = %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit, %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit, %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit, %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit, %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit, %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit
  br label %bb.v, !llvm.loop !66

_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit: ; preds = %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit, %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit.thread
  store i32 7, ptr %0, align 8, !tbaa !35
  %i.dn = load i8, ptr %i.y, align 2, !tbaa !51, !range !38, !noundef !39
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %.critedge15, label %_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv.exit

_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread: ; preds = %bb.c
  %i.dp = load i8, ptr %i.y, align 2, !tbaa !51, !range !38, !noundef !39
  %i.dq = trunc nuw i8 %i.dp to i1
  %i.dr = icmp eq i8 %i.ai, 10
  %or.cond6.i = select i1 %i.dq, i1 %i.dr, i1 false
  br i1 %or.cond6.i, label %bb.am, label %_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv.exit

bb.am:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  store i32 8, ptr %0, align 8, !tbaa !35
  br label %_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv.exit

_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv.exit: ; preds = %bb.u, %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit, %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread, %bb.am
  %or.cond6.i178 = phi i1 [ true, %bb.am ], [ false, %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread ], [ false, %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit ], [ false, %bb.u ]
  %i.ds = load i32, ptr %i.r, align 4, !tbaa !44  ; 2 uses
  %i.dt = load i32, ptr %i.s, align 8, !tbaa !28  ; 3 uses
  %.not.i.i = icmp eq i32 %i.ds, %i.dt
  br i1 %.not.i.i, label %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit, label %bb.an

bb.an:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv.exit
  %i.du = load ptr, ptr %i.q, align 8, !tbaa !27  ; 2 uses
  %i.dv = sub nsw i32 %i.ds, %i.dt
  %i.dw = sext i32 %i.dv to i64                   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !11
  %i.dz = sub i64 4611686018427387903, %i.dy
  %i.ea = icmp ult i64 %i.dz, %i.dw
  br i1 %i.ea, label %bb.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.ao:                                            ; preds = %bb.an
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.an
  %i.eb = load ptr, ptr %i.w, align 8, !tbaa !42
  %i.ec = sext i32 %i.dt to i64
  %i.ed = getelementptr inbounds i8, ptr %i.eb, i64 %i.ec
  %i.ee = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.du, ptr noundef %i.ed, i64 noundef %i.dw) ; 0 uses
  br label %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit

_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit: ; preds = %_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  store ptr null, ptr %i.q, align 8, !tbaa !27
  store i32 -1, ptr %i.s, align 8, !tbaa !28
  %i.ef = load i32, ptr %i.o, align 8, !tbaa !26
  store i32 %i.ef, ptr %i.z, align 8, !tbaa !34
  br i1 %or.cond6.i178, label %.critedge2.thread, label %bb.ar

.critedge15:                                      ; preds = %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit, %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread47
  %i.eg = load i32, ptr %i.r, align 4, !tbaa !44  ; 2 uses
  %i.eh = load i32, ptr %i.s, align 8, !tbaa !28  ; 3 uses
  %.not.i.i16 = icmp eq i32 %i.eg, %i.eh
  br i1 %.not.i.i16, label %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit18, label %bb.ap

bb.ap:                                            ; preds = %.critedge15
  %i.ei = load ptr, ptr %i.q, align 8, !tbaa !27  ; 2 uses
  %i.ej = sub nsw i32 %i.eg, %i.eh
  %i.ek = sext i32 %i.ej to i64                   ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !11
  %i.en = sub i64 4611686018427387903, %i.em
  %i.eo = icmp ult i64 %i.en, %i.ek
  br i1 %i.eo, label %bb.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i17

bb.aq:                                            ; preds = %bb.ap
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i17: ; preds = %bb.ap
  %i.ep = load ptr, ptr %i.w, align 8, !tbaa !42
  %i.eq = sext i32 %i.eh to i64
  %i.er = getelementptr inbounds i8, ptr %i.ep, i64 %i.eq
  %i.es = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ei, ptr noundef %i.er, i64 noundef %i.ek) ; 0 uses
  br label %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit18

_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit18: ; preds = %.critedge15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i17
  store ptr null, ptr %i.q, align 8, !tbaa !27
  store i32 -1, ptr %i.s, align 8, !tbaa !28
  %i.et = load i32, ptr %i.o, align 8, !tbaa !26
  store i32 %i.et, ptr %i.z, align 8, !tbaa !34
  br label %.critedge2.thread

bb.ar:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit
  %i.eu = call noundef i32 @_ZN6google8protobuf2io9Tokenizer22TryConsumeCommentStartEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  switch i32 %i.eu, label %default.unreachable [
    i32 0, label %.preheader
    i32 1, label %bb.au
    i32 2, label %.critedge2.thread
    i32 3, label %bb.av
  ]

.preheader:                                       ; preds = %bb.ar, %bb.as
  %i.ev = load i8, ptr %i.u, align 8, !tbaa !40
  switch i8 %i.ev, label %bb.as [
    i8 10, label %bb.at
    i8 0, label %.critedge2
  ], !llvm.loop !67

bb.as:                                            ; preds = %.preheader
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br label %.preheader, !llvm.loop !61

bb.at:                                            ; preds = %.preheader
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br label %.critedge2, !llvm.loop !67

bb.au:                                            ; preds = %bb.ar
  call void @_ZN6google8protobuf2io9Tokenizer19ConsumeBlockCommentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef null)
  br label %.critedge2, !llvm.loop !67

default.unreachable:                              ; preds = %bb.ar
  unreachable

bb.av:                                            ; preds = %bb.ar
  %i.ew = load i8, ptr %i.j, align 8, !tbaa !37, !range !38, !noundef !39
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %.critedge2.thread50, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.val = load i8, ptr %i.u, align 8, !tbaa !40
  %or.cond = icmp ult i8 %.val, 32
  br i1 %or.cond, label %.noexc.i, label %bb.az

.noexc.i:                                         ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %i.aa, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 47, ptr %i.c, align 8, !tbaa !53
  %i.ey = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.ax    ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ey, ptr %2, align 8, !tbaa !50
  %i.ez = load i64, ptr %i.c, align 8, !tbaa !53  ; 3 uses
  store i64 %i.ez, ptr %i.aa, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.ey, ptr noundef nonnull align 1 dereferenceable(47) @.str.16, i64 47, i1 false)
  store i64 %i.ez, ptr %i.ab, align 8, !tbaa !11
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ez
  store i8 0, ptr %i.fa, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.fb = load ptr, ptr %i.ac, align 8, !tbaa !24 ; 2 uses
  %i.fc = load i32, ptr %i.n, align 4, !tbaa !25
  %i.fd = load i32, ptr %i.o, align 8, !tbaa !26
  %i.fe = load ptr, ptr %2, align 8, !tbaa !50
  %i.ff = load i64, ptr %i.ab, align 8, !tbaa !11
  %i.fg = load ptr, ptr %i.fb, align 8, !tbaa !45
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  invoke void %i.fi(ptr noundef nonnull align 8 dereferenceable(8) %i.fb, i32 noundef %i.fc, i32 noundef %i.fd, i64 %i.ff, ptr %i.fe)
          to label %_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.ay, !inline_history !54

_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc
  %i.fj = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.aa
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.fl = load i64, ptr %i.aa, align 8, !tbaa !14
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.fn = load i8, ptr %i.u, align 8, !tbaa !40   ; 2 uses
  %i.fo = add i8 %i.fn, -1
  %i.fp = icmp ult i8 %i.fo, 31
  br i1 %i.fp, label %.critedge.backedge, label %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_111UnprintableEEEbv.exit

_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_111UnprintableEEEbv.exit: ; preds = %.critedge
  %i.fq = load i8, ptr %i.j, align 8, !tbaa !37, !range !38, !noundef !39
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = icmp ne i8 %i.fn, 0
  %or.cond54.not = or i1 %i.fs, %i.fr
  br i1 %or.cond54.not, label %.critedge2, label %.critedge.backedge

.critedge.backedge:                               ; preds = %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_111UnprintableEEEbv.exit, %.critedge
  br label %.critedge, !llvm.loop !68

bb.ax:                                            ; preds = %.noexc.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.ay:                                            ; preds = %.noexc
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fv = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.aa
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.ay
  %i.fx = load i64, ptr %i.aa, align 8, !tbaa !14
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.ax
  %.pn = phi { ptr, i32 } [ %i.ft, %bb.ax ], [ %i.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.fu, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.br

bb.az:                                            ; preds = %bb.aw
  store i32 0, ptr %0, align 8, !tbaa !35
  store i64 0, ptr %i.m, align 8, !tbaa !11
  %i.fz = load ptr, ptr %i.g, align 8, !tbaa !50
  store i8 0, ptr %i.fz, align 1, !tbaa !14
  %i.ga = load i32, ptr %i.n, align 4, !tbaa !25  ; 2 uses
  store i32 %i.ga, ptr %i.i, align 8, !tbaa !32
  %i.gb = load i32, ptr %i.o, align 8, !tbaa !26  ; 2 uses
  store i32 %i.gb, ptr %i.p, align 4, !tbaa !33
end_hunk_1
