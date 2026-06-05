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
@switch.table._ZN6google8protobuf2io9Tokenizer4NextEv.7 = private unnamed_addr constant [24 x i8] [i8 9, i8 poison, i8 11, i8 12, i8 13, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 32], align 1
@switch.table._ZN6google8protobuf2io9Tokenizer4NextEv.9 = private unnamed_addr constant [24 x i8] [i8 9, i8 10, i8 11, i8 12, i8 13, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 32], align 1

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
  resume { ptr, i32 } %lpad.phi
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io9Tokenizer7RefreshEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !37, !range !38, !noundef !39
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.e, align 8, !tbaa !40
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27   ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !28   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = load i32, ptr %i.j, align 8, !tbaa !41   ; 2 uses
  %i.l = icmp slt i32 %i.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = sub nsw i32 %i.k, %i.i
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11
  %i.q = sub i64 4611686018427387903, %i.p
  %i.r = icmp ult i64 %i.q, %i.n
  br i1 %i.r, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.u = sext i32 %i.i to i64
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u
  %i.w = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef %i.v, i64 noundef %i.n) ; 0 uses
  store i32 0, ptr %i.h, align 8, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.x, align 8, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 0, ptr %i.y, align 4, !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !15  ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.a, ptr noundef nonnull %i.aa)
  br i1 %i.af, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.aa, align 8, !tbaa !41
  store i8 1, ptr %i.b, align 8, !tbaa !37
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %i.aa, align 8, !tbaa !41
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %bb.k, !llvm.loop !48

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  store ptr %i.ai, ptr %i.x, align 8, !tbaa !42
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.sink = phi i8 [ %i.aj, %bb.k ], [ 0, %bb.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %.sink, ptr %i.ak, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf2io9TokenizerD2Ev(ptr noundef nonnull readonly align 8 captures(address) dead_on_return(192) dereferenceable(192) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.d = load i32, ptr %i.c, align 4, !tbaa !44   ; 2 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %i.h = sub nsw i32 %i.b, %i.d
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i32 noundef %i.h)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8, !tbaa !14
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit

_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit:  ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2: ; preds = %_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !14
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #25
  br label %_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit4

_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit4: ; preds = %_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2
  ret void

bb.d:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #22
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6google8protobuf2io9Tokenizer17report_whitespaceEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 190
  %i.b = load i8, ptr %i.a, align 2, !tbaa !51, !range !38, !noundef !39
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6google8protobuf2io9Tokenizer21set_report_whitespaceEb(ptr noundef nonnull align 8 captures(none) dereferenceable(192) initializes((190, 191)) %0, i1 noundef zeroext %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 190
  store i8 %i.a, ptr %i.b, align 2, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 191 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !52, !range !38, !noundef !39
  %i.e = icmp ne i8 %i.d, 0
  %i.f = and i1 %1, %i.e
  %i.g = zext i1 %i.f to i8
  store i8 %i.g, ptr %i.c, align 1, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6google8protobuf2io9Tokenizer15report_newlinesEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 191
  %i.b = load i8, ptr %i.a, align 1, !tbaa !52, !range !38, !noundef !39
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6google8protobuf2io9Tokenizer19set_report_newlinesEb(ptr noundef nonnull align 8 captures(none) dereferenceable(192) initializes((191, 192)) %0, i1 noundef zeroext %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8                         ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 191
  store i8 %i.a, ptr %i.b, align 1, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 190 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !51, !range !38, !noundef !39
  %i.e = or i8 %i.d, %i.a
  store i8 %i.e, ptr %i.c, align 2, !tbaa !51
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !40
  switch i8 %i.c, label %bb.d [
    i8 10, label %bb.b
    i8 9, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !25
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.g, align 8, !tbaa !26
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.j = srem i32 %i.i, 8
  %reass.sub = add i32 %i.i, 8
  %i.k = sub i32 %reass.sub, %i.j
  store i32 %i.k, ptr %i.h, align 8, !tbaa !26
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !26
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 8, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !44
  %i.q = add nsw i32 %i.p, 1                      ; 3 uses
  store i32 %i.q, ptr %i.o, align 4, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !41   ; 3 uses
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.w = sext i32 %i.q to i64
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14
  store i8 %i.y, ptr %i.b, align 8, !tbaa !40
  br label %_ZN6google8protobuf2io9Tokenizer7RefreshEv.exit

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !37, !range !38, !noundef !39
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.b, align 8, !tbaa !40
  br label %_ZN6google8protobuf2io9Tokenizer7RefreshEv.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !27 ; 3 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !28 ; 3 uses
  %i.ag = icmp slt i32 %i.af, %i.s
  br i1 %i.ag, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ah = sub nsw i32 %i.s, %i.af
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !11
  %i.al = sub i64 4611686018427387903, %i.ak
  %i.am = icmp ult i64 %i.al, %i.ai
  br i1 %i.am, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !42
  %i.ap = sext i32 %i.af to i64
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap
  %i.ar = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef %i.aq, i64 noundef %i.ai) ; 0 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !28
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !43
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.as, align 8, !tbaa !42
  store i32 0, ptr %i.o, align 4, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !15 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !45
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull %i.a, ptr noundef nonnull %i.r), !inline_history !47
  br i1 %i.ay, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.r, align 8, !tbaa !41
  store i8 1, ptr %i.z, align 8, !tbaa !37
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.az = load i32, ptr %i.r, align 8, !tbaa !41
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.n, label %bb.q, !llvm.loop !48

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  store ptr %i.bb, ptr %i.as, align 8, !tbaa !42
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !14
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.sink.i = phi i8 [ %i.bc, %bb.q ], [ 0, %bb.o ]
  store i8 %.sink.i, ptr %i.b, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN6google8protobuf2io9Tokenizer7RefreshEv.exit

_ZN6google8protobuf2io9Tokenizer7RefreshEv.exit:  ; preds = %bb.r, %bb.h, %bb.f
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io9Tokenizer13ConsumeStringEc(ptr noundef nonnull align 8 dereferenceable(192) %0, i8 noundef signext %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 15 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 189
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.t = load i8, ptr %i.g, align 8, !tbaa !40    ; 2 uses
  switch i8 %i.t, label %bb.ac [
    i8 0, label %.noexc.i
    i8 10, label %bb.e
    i8 92, label %bb.i
  ]

.noexc.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf2io9Tokenizer16NextWithCommentsEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS8_SaIS8_EES9_:bb.a

_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector18MaybeDetachCommentEv.exit: ; preds = %bb.bh, %bb.dd, %bb.dl, %bb.dc, %.thread, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit41, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0 = phi i1 [ %i.ej, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit41 ], [ true, %bb.dd ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %bb.ad ], [ true, %.thread ], [ false, %bb.dc ], [ true, %bb.dl ], [ true, %bb.bh ]
  %i.lx = load ptr, ptr %i.h, align 8, !tbaa !82  ; 2 uses
  %.not.i72 = icmp ne ptr %i.lx, null
  %i.ly = getelementptr inbounds nuw i8, ptr %5, i64 61
  %i.lz = load i8, ptr %i.ly, align 1, !range !38
  %i.ma = trunc nuw i8 %i.lz to i1
  %or.cond.i73 = select i1 %.not.i72, i1 %i.ma, i1 false
  br i1 %or.cond.i73, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector18MaybeDetachCommentEv.exit
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.lx) #24
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector18MaybeDetachCommentEv.exit
  %i.mb = load ptr, ptr %i.i, align 8, !tbaa !50  ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.j
  br i1 %i.mc, label %_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollectorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74: ; preds = %bb.dn
  %i.md = load i64, ptr %i.j, align 8, !tbaa !14
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #25
  br label %_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollectorD2Ev.exit

_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollectorD2Ev.exit: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret i1 %.0

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn18 = phi { ptr, i32 } [ %i.ll, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.kk, %bb.db ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit113, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit116, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit118, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit121, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit123, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit126, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit128, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit131, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit133, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit136, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollectorD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn18
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector5FlushEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 61 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !89, !range !38, !noundef !39
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 63 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !83, !range !38, !noundef !39
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !78     ; 3 uses
  %.not2 = icmp eq ptr %i.h, null
  br i1 %.not2, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.j
  br i1 %i.n, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50
  %i.q = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef %i.p, i64 noundef %i.j) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 1, ptr %i.r, align 4, !tbaa !93
  store i8 0, ptr %i.e, align 1, !tbaa !83
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.g:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81   ; 4 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !86   ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95
  %.not.i = icmp eq ptr %i.w, %i.y
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  store ptr %i.z, ptr %i.w, align 8, !tbaa !7
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !50  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !53
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.i
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !50
  %i.af = load i64, ptr %i.a, align 8, !tbaa !53
  store i64 %i.af, ptr %i.z, align 8, !tbaa !14
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.i
  %i.ag = phi ptr [ %i.ae, %.noexc.i.i ], [ %i.z, %bb.i ] ; 2 uses
  switch i64 %i.ac, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !14
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.k:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !11
  %i.ak = load ptr, ptr %i.w, align 8, !tbaa !50
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !86
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr %i.an, ptr %i.v, align 8, !tbaa !86
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.l:                                             ; preds = %bb.h
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.g, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ap, align 8, !tbaa !11
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !50
  store i8 0, ptr %i.aq, align 1, !tbaa !14
  store i8 0, ptr %i.b, align 1, !tbaa !89
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !92
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !92
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollectorD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.d = load i8, ptr %i.c, align 1, !range !38
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.i, align 8, !tbaa !14
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer12ParseIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmPm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50     ; 5 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !14
  %i.c = icmp eq i8 %i.b, 48
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  switch i8 %i.e, label %bb.d [
    i8 120, label %bb.c
    i8 88, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.042 = phi i32 [ 16, %bb.c ], [ 10, %bb.a ], [ 8, %bb.b ] ; 3 uses
  %.041 = phi i64 [ 1152921504606846976, %bb.c ], [ 1844674407370955162, %bb.a ], [ 2305843009213693952, %bb.b ]
  %.032 = phi ptr [ %i.f, %bb.c ], [ %i.a, %bb.a ], [ %i.a, %bb.b ]
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.036 = phi i64 [ 0, %bb.d ], [ %.137, %bb.f ]  ; 2 uses
  %.133 = phi ptr [ %.032, %bb.d ], [ %i.h, %bb.f ] ; 2 uses
  %i.g = load i8, ptr %.133, align 1, !tbaa !14   ; 3 uses
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %.133, i64 1 ; 3 uses
  %i.i = zext i8 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN6google8protobuf2io12_GLOBAL__N_111kAsciiToIntE, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14    ; 2 uses
  %i.l = sext i8 %i.k to i32
  %.not48 = icmp sgt i32 %.042, %i.l              ; 2 uses
  %.not49 = icmp ne i8 %i.g, 48                   ; 2 uses
  %i.m = sext i8 %i.k to i64
  %spec.select53 = select i1 %.not49, i32 3, i32 0
  %i.n = and i1 %.not49, %.not48
  %.137 = select i1 %i.n, i64 %i.m, i64 %.036     ; 3 uses
  %.030 = select i1 %.not48, i32 %spec.select53, i32 1
  switch i32 %.030, label %.critedge [
    i32 0, label %bb.e
    i32 3, label %split
  ], !llvm.loop !96

split:                                            ; preds = %bb.f
  %.pre = load i8, ptr %i.h, align 1, !tbaa !14   ; 2 uses
  %.not5058 = icmp eq i8 %.pre, 0
  br i1 %.not5058, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %split
  %i.o = zext nneg i32 %.042 to i64               ; 2 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.33560, i64 1 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14    ; 2 uses
  %.not50 = icmp eq i8 %i.q, 0
  br i1 %.not50, label %._crit_edge, label %bb.h, !llvm.loop !97

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %i.r = phi i8 [ %.pre, %.lr.ph ], [ %i.q, %bb.g ]
  %.33560 = phi ptr [ %i.h, %.lr.ph ], [ %i.p, %bb.g ]
  %.33959 = phi i64 [ %.137, %.lr.ph ], [ %i.y, %bb.g ] ; 2 uses
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr @_ZN6google8protobuf2io12_GLOBAL__N_111kAsciiToIntE, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14
  %i.v = sext i8 %i.u to i32                      ; 2 uses
  %.not51 = icmp sgt i32 %.042, %i.v
  %.not52 = icmp ult i64 %.33959, %.041
  %or.cond54 = select i1 %.not51, i1 %.not52, i1 false
  br i1 %or.cond54, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.w = mul i64 %.33959, %i.o
  %i.x = zext nneg i32 %i.v to i64
  %i.y = add i64 %i.w, %i.x                       ; 3 uses
  %.not55 = icmp ult i64 %i.y, %i.o
  br i1 %.not55, label %.critedge, label %bb.g

._crit_edge:                                      ; preds = %bb.e, %bb.g, %split
  %.339.lcssa = phi i64 [ %.137, %split ], [ %i.y, %bb.g ], [ %.036, %bb.e ] ; 2 uses
  %i.z = icmp ugt i64 %.339.lcssa, %1
  br i1 %i.z, label %.critedge, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  store i64 %.339.lcssa, ptr %2, align 8, !tbaa !53
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.h, %bb.i, %._crit_edge, %bb.j
  %.5 = phi i1 [ false, %bb.h ], [ true, %bb.j ], [ false, %._crit_edge ], [ false, %bb.i ], [ false, %bb.f ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN6google8protobuf2io9Tokenizer10ParseFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.c = call noundef double @_ZN6google8protobuf2io14NoLocaleStrtodEPKcPPc(ptr noundef %i.b, ptr noundef nonnull %i.a)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  switch i8 %i.e, label %_ZN6google8protobuf2io9Tokenizer13TryParseFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPd.exit [
    i8 101, label %bb.b
    i8 69, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.f, ptr %i.a, align 8, !tbaa !98
  br label %_ZN6google8protobuf2io9Tokenizer13TryParseFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPd.exit

_ZN6google8protobuf2io9Tokenizer13TryParseFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPd.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret double %i.c
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer13TryParseFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPd(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !50     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.c = call noundef double @_ZN6google8protobuf2io14NoLocaleStrtodEPKcPPc(ptr noundef %i.b, ptr noundef nonnull %i.a)
  store double %i.c, ptr %1, align 8, !tbaa !99
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !98   ; 4 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14    ; 2 uses
  switch i8 %i.e, label %bb.d [
    i8 101, label %bb.b
    i8 69, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !98
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14    ; 2 uses
  switch i8 %i.g, label %bb.d [
    i8 45, label %bb.c
    i8 43, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !98
  %.pre = load i8, ptr %i.h, align 1, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %i.i = phi i8 [ %i.g, %bb.b ], [ %i.e, %bb.a ], [ %.pre, %bb.c ]
  %i.j = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ], [ %i.h, %bb.c ] ; 2 uses
  switch i8 %i.i, label %bb.f [
    i8 102, label %bb.e
    i8 70, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.l = phi ptr [ %i.j, %bb.d ], [ %i.k, %bb.e ]
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.b to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.b, align 1, !tbaa !14
  %i.t = icmp ne i8 %i.s, 45
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = phi i1 [ false, %bb.f ], [ %i.t, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i1 %i.u
}

declare noundef double @_ZN6google8protobuf2io14NoLocaleStrtodEPKcPPc(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io9Tokenizer17ParseStringAppendERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS8_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %i.g = add i64 %i.f, %i.c                       ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.j = icmp eq ptr %i.h, %i.i                   ; 2 uses
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.b, %bb.c
  %i.l = load i64, ptr %i.i, align 8
  %i.m = select i1 %i.j, i64 15, i64 %i.l
  %i.n = icmp ugt i64 %i.g, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.g)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.o = load ptr, ptr %0, align 8, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.f

bb.f:                                             ; preds = %.backedge, %bb.e
  %.pn = phi ptr [ %i.o, %bb.e ], [ %.pn.be, %.backedge ] ; 9 uses
  %.054 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 3 uses
  %i.r = load i8, ptr %.054, align 1, !tbaa !14   ; 3 uses
  switch i8 %i.r, label %bb.ay [
    i8 0, label %.loopexit
    i8 92, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.pn, i64 2 ; 5 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14    ; 8 uses
  %.not62 = icmp eq i8 %i.t, 0
  br i1 %.not62, label %bb.ay, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = and i8 %i.t, -8
  %i.v = icmp eq i8 %i.u, 48
  br i1 %i.v, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.w = zext nneg i8 %i.t to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN6google8protobuf2io12_GLOBAL__N_111kAsciiToIntE, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.pn, i64 3 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14   ; 2 uses
  %i.ab = and i8 %i.aa, -8
  %i.ac = icmp eq i8 %i.ab, 48
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = shl i8 %i.y, 3
  %i.ae = zext nneg i8 %i.aa to i64
  %i.af = getelementptr inbounds nuw i8, ptr @_ZN6google8protobuf2io12_GLOBAL__N_111kAsciiToIntE, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14
  %i.ah = add i8 %i.ag, %i.ad
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.155 = phi ptr [ %i.z, %bb.j ], [ %i.s, %bb.i ] ; 2 uses
  %.052 = phi i8 [ %i.ah, %bb.j ], [ %i.y, %bb.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.155, i64 1 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !14  ; 2 uses
  %i.ak = and i8 %i.aj, -8
  %i.al = icmp eq i8 %i.ak, 48
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = shl i8 %.052, 3
  %i.an = zext nneg i8 %i.aj to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZN6google8protobuf2io12_GLOBAL__N_111kAsciiToIntE, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !14
  %i.aq = add i8 %i.ap, %i.am
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2 = phi ptr [ %i.ai, %bb.l ], [ %.155, %bb.k ]
  %.153 = phi i8 [ %i.aq, %bb.l ], [ %.052, %bb.k ]
  %i.ar = load i64, ptr %i.e, align 8, !tbaa !11  ; 4 uses
  %i.as = add i64 %i.ar, 1                        ; 3 uses
  %i.at = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.i                 ; 2 uses
  br i1 %i.au, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.n:                                             ; preds = %bb.m
  %i.av = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.av)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.n, %bb.m
  %i.aw = load i64, ptr %i.i, align 8
  %i.ax = select i1 %i.au, i64 15, i64 %i.aw
  %i.ay = icmp ugt i64 %i.as, %i.ax
  br i1 %i.ay, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ar, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.o
  %i.az = phi ptr [ %.pre.i, %bb.o ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  store i8 %.153, ptr %i.ba, align 1, !tbaa !14
  store i64 %i.as, ptr %i.e, align 8, !tbaa !11
  %i.bb = load ptr, ptr %1, align 8, !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.as
  store i8 0, ptr %i.bc, align 1, !tbaa !14
  br label %.backedge

bb.p:                                             ; preds = %bb.h
  switch i8 %i.t, label %bb.av [
    i8 120, label %bb.q
    i8 88, label %bb.q
    i8 117, label %bb.x
    i8 85, label %bb.x
    i8 97, label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit
    i8 98, label %bb.ao
    i8 102, label %bb.ap
    i8 110, label %bb.aq
    i8 114, label %bb.ar
    i8 116, label %bb.as
    i8 118, label %bb.at
    i8 92, label %bb.au
    i8 34, label %bb.au
    i8 39, label %bb.au
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn, i64 3 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !14  ; 3 uses
  %i.bf = add i8 %i.be, -48
  %or.cond.i = icmp ult i8 %i.bf, 10
  %i.bg = and i8 %i.be, -33
  %i.bh = add i8 %i.bg, -65
  %i.bi = icmp ult i8 %i.bh, 6
  %i.bj = or i1 %or.cond.i, %i.bi
  br i1 %i.bj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bk = zext i8 %i.be to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @_ZN6google8protobuf2io12_GLOBAL__N_111kAsciiToIntE, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !14
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.3 = phi ptr [ %i.bd, %bb.r ], [ %i.s, %bb.q ] ; 2 uses
  %.0 = phi i8 [ %i.bm, %bb.r ], [ 0, %bb.q ]     ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !14  ; 3 uses
  %i.bp = add i8 %i.bo, -48
  %or.cond.i63 = icmp ult i8 %i.bp, 10
  %i.bq = and i8 %i.bo, -33
  %i.br = add i8 %i.bq, -65
  %i.bs = icmp ult i8 %i.br, 6
  %i.bt = or i1 %or.cond.i63, %i.bs
  br i1 %i.bt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bu = shl i8 %.0, 4
  %i.bv = zext i8 %i.bo to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZN6google8protobuf2io12_GLOBAL__N_111kAsciiToIntE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !14
  %i.by = add i8 %i.bx, %i.bu
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.4 = phi ptr [ %i.bn, %bb.t ], [ %.3, %bb.s ]
  %.1 = phi i8 [ %i.by, %bb.t ], [ %.0, %bb.s ]
  %i.bz = load i64, ptr %i.e, align 8, !tbaa !11  ; 4 uses
  %i.ca = add i64 %i.bz, 1                        ; 3 uses
  %i.cb = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.i                 ; 2 uses
  br i1 %i.cc, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i64

bb.v:                                             ; preds = %bb.u
  %i.cd = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.cd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i64: ; preds = %bb.v, %bb.u
  %i.ce = load i64, ptr %i.i, align 8
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf2io9Tokenizer17ParseStringAppendERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS8_:bb.a
  br label %.backedge

.backedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit69, %_ZN6google8protobuf2ioL10AppendUTF8EjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit77
  %.pn.be = phi ptr [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit66 ], [ %.054, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit77 ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit74 ], [ %.054, %bb.az ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit69 ], [ %i.gg, %_ZN6google8protobuf2ioL10AppendUTF8EjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  br label %bb.f, !llvm.loop !102

bb.af:                                            ; preds = %_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit
  %i.ev = icmp ult i32 %i.cu, 2048
  br i1 %i.ev, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ew = shl nuw nsw i32 %i.cu, 2
  %i.ex = and i32 %i.ew, 7936
  %i.ey = and i32 %i.cu, 63
  %i.ez = or disjoint i32 %i.ey, %i.ex
  %i.fa = or disjoint i32 %i.ez, 49280
  br label %bb.am

bb.ah:                                            ; preds = %.thread, %bb.af
  %.17998105 = phi i32 [ %.179.ph, %.thread ], [ %i.cu, %bb.af ] ; 10 uses
  %.0.i.ptr100104 = phi ptr [ %.0.i.ptr97, %.thread ], [ %.0.i.ptr, %bb.af ] ; 3 uses
  %i.fb = icmp ult i32 %.17998105, 65536
  br i1 %i.fb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fc = shl nuw nsw i32 %.17998105, 4
  %i.fd = and i32 %i.fc, 983040
  %i.fe = shl nuw nsw i32 %.17998105, 2
  %i.ff = and i32 %i.fe, 16128
  %i.fg = and i32 %.17998105, 63
  %i.fh = or disjoint i32 %i.fg, %i.ff
  %i.fi = or disjoint i32 %i.fh, %i.fd
  %i.fj = or disjoint i32 %i.fi, 14712960
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah
  %i.fk = icmp ult i32 %.17998105, 1114112
  br i1 %i.fk, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fl = shl nuw nsw i32 %.17998105, 6
  %i.fm = and i32 %i.fl, 117440512
  %i.fn = shl nuw nsw i32 %.17998105, 4
  %i.fo = and i32 %i.fn, 4128768
  %i.fp = shl nuw nsw i32 %.17998105, 2
  %i.fq = and i32 %i.fp, 16128
  %i.fr = and i32 %.17998105, 63
  %i.fs = or disjoint i32 %i.fr, %i.fo
  %i.ft = or disjoint i32 %i.fs, %i.fm
  %i.fu = or disjoint i32 %i.ft, %i.fq
  %i.fv = or disjoint i32 %i.fu, -260013952
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %.sroa.0.0.insert.ext.i.i.i.i.i = zext i32 %.17998105 to i64
  %i.fw = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i.i to ptr
  store ptr %i.fw, ptr %2, align 8, !tbaa !14
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIjEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.p, align 8, !tbaa !76
  %i.fx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4absl12lts_2025051219str_format_internal10AppendPackEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef nonnull %1, ptr nonnull @.str.25, i64 6, ptr nonnull %2, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZN6google8protobuf2ioL10AppendUTF8EjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.am:                                            ; preds = %bb.ak, %bb.ai, %bb.ag, %_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit
  %.0.i.ptr101 = phi ptr [ %.0.i.ptr100104, %bb.ak ], [ %.0.i.ptr, %bb.ag ], [ %.0.i.ptr100104, %bb.ai ], [ %.0.i.ptr, %_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit ]
  %i.fy = phi i32 [ %i.fv, %bb.ak ], [ %i.fa, %bb.ag ], [ %i.fj, %bb.ai ], [ %i.cu, %_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit ]
  %.0.i70 = phi i64 [ 4, %bb.ak ], [ 2, %bb.ag ], [ 3, %bb.ai ], [ 1, %_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit ] ; 3 uses
  %i.fz = call noundef i32 @_ZN6google8protobuf6ghtonlEj(i32 noundef %i.fy)
  store i32 %i.fz, ptr %i.a, align 4, !tbaa !3
  %i.ga = load i64, ptr %i.e, align 8, !tbaa !11
  %i.gb = sub i64 4611686018427387903, %i.ga
  %i.gc = icmp ult i64 %i.gb, %.0.i70
  br i1 %i.gc, label %bb.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.an:                                            ; preds = %bb.am
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.am
  %i.gd = sub nsw i64 0, %.0.i70
  %i.ge = getelementptr inbounds i8, ptr %i.q, i64 %i.gd
  %i.gf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.ge, i64 noundef %.0.i70) ; 0 uses
  br label %_ZN6google8protobuf2ioL10AppendUTF8EjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6google8protobuf2ioL10AppendUTF8EjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %.0.i.ptr99 = phi ptr [ %.0.i.ptr100104, %bb.al ], [ %.0.i.ptr101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.gg = getelementptr inbounds i8, ptr %.0.i.ptr99, i64 -1
  br label %.backedge

bb.ao:                                            ; preds = %bb.p
  br label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit

bb.ap:                                            ; preds = %bb.p
  br label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit

bb.aq:                                            ; preds = %bb.p
  br label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit

bb.ar:                                            ; preds = %bb.p
  br label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit

bb.as:                                            ; preds = %bb.p
  br label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit

bb.at:                                            ; preds = %bb.p
  br label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit

bb.au:                                            ; preds = %bb.p, %bb.p, %bb.p
  br label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit

bb.av:                                            ; preds = %bb.p
  br label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit

_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit: ; preds = %bb.p, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av
  %.0.i71 = phi i8 [ 63, %bb.av ], [ 7, %bb.p ], [ 8, %bb.ao ], [ 12, %bb.ap ], [ 10, %bb.aq ], [ 13, %bb.ar ], [ 9, %bb.as ], [ 11, %bb.at ], [ %i.t, %bb.au ]
  %i.gh = load i64, ptr %i.e, align 8, !tbaa !11  ; 4 uses
  %i.gi = add i64 %i.gh, 1                        ; 3 uses
  %i.gj = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.i                 ; 2 uses
  br i1 %i.gk, label %bb.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72

bb.aw:                                            ; preds = %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit
  %i.gl = icmp ult i64 %i.gh, 16
  call void @llvm.assume(i1 %i.gl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72: ; preds = %bb.aw, %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit
  %i.gm = load i64, ptr %i.i, align 8
  %i.gn = select i1 %i.gk, i64 15, i64 %i.gm
  %i.go = icmp ugt i64 %i.gi, %i.gn
  br i1 %i.go, label %bb.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit74

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.gh, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i73 = load ptr, ptr %1, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit74: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72, %bb.ax
  %i.gp = phi ptr [ %.pre.i73, %bb.ax ], [ %i.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72 ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gh
  store i8 %.0.i71, ptr %i.gq, align 1, !tbaa !14
  store i64 %i.gi, ptr %i.e, align 8, !tbaa !11
  %i.gr = load ptr, ptr %1, align 8, !tbaa !50
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gi
  store i8 0, ptr %i.gs, align 1, !tbaa !14
  br label %.backedge

bb.ay:                                            ; preds = %bb.f, %bb.g
  %i.gt = load ptr, ptr %0, align 8, !tbaa !50
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !14
  %i.gv = icmp eq i8 %i.r, %i.gu
  br i1 %i.gv, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gw = getelementptr inbounds nuw i8, ptr %.pn, i64 2
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !14
  %i.gy = icmp eq i8 %i.gx, 0
  br i1 %i.gy, label %.backedge, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.gz = load i64, ptr %i.e, align 8, !tbaa !11  ; 4 uses
  %i.ha = add i64 %i.gz, 1                        ; 3 uses
  %i.hb = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.i                 ; 2 uses
  br i1 %i.hc, label %bb.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i75

bb.bb:                                            ; preds = %bb.ba
  %i.hd = icmp ult i64 %i.gz, 16
  call void @llvm.assume(i1 %i.hd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i75: ; preds = %bb.bb, %bb.ba
  %i.he = load i64, ptr %i.i, align 8
  %i.hf = select i1 %i.hc, i64 15, i64 %i.he
  %i.hg = icmp ugt i64 %i.ha, %i.hf
  br i1 %i.hg, label %bb.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit77

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i75
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.gz, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i76 = load ptr, ptr %1, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit77: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i75, %bb.bc
  %i.hh = phi ptr [ %.pre.i76, %bb.bc ], [ %i.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i75 ]
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.gz
  store i8 %i.r, ptr %i.hi, align 1, !tbaa !14
  store i64 %i.ha, ptr %i.e, align 8, !tbaa !11
  %i.hj = load ptr, ptr %1, align 8, !tbaa !50
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.ha
  store i8 0, ptr %i.hk, align 1, !tbaa !14
  br label %.backedge

.loopexit:                                        ; preds = %bb.f, %bb.a
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer12IsIdentifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14    ; 2 uses
  %i.g = and i8 %i.f, -33
  %i.h = add i8 %i.g, -65
  %or.cond10.i = icmp ult i8 %i.h, 26
  %i.i = icmp eq i8 %i.f, 95
  %i.j = or i1 %i.i, %or.cond10.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !7, !alias.scope !103
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.m = add i64 %i.c, -1                         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !103
  store i64 %i.m, ptr %i.a, align 8, !tbaa !53, !noalias !103
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !50, !alias.scope !103
  %i.p = load i64, ptr %i.a, align 8, !tbaa !53, !noalias !103
  store i64 %i.p, ptr %i.k, align 8, !tbaa !14, !alias.scope !103
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.q = phi ptr [ %i.o, %.noexc10.i.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.l, align 1, !tbaa !14
  store i8 %i.r, ptr %i.q, align 1, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull align 1 %i.l, i64 %i.m, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.s = load i64, ptr %i.a, align 8, !tbaa !53, !noalias !103 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !11, !alias.scope !103
  %i.u = load ptr, ptr %1, align 8, !tbaa !50, !alias.scope !103
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !103
  %.val = load ptr, ptr %1, align 8, !tbaa !50    ; 4 uses
  %.val4 = load i64, ptr %i.t, align 8, !tbaa !11 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.val4
  %.not4.i = icmp samesign eq i64 %.val4, 0
  br i1 %.not4.i, label %_ZN6google8protobuf2ioL10AllInClassINS1_12_GLOBAL__N_112AlphanumericEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %.lr.ph.i
  %.sroa.01.05.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.val, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit ] ; 2 uses
  %i.x = load i8, ptr %.sroa.01.05.i, align 1, !tbaa !14 ; 3 uses
  %i.y = and i8 %i.x, -33
  %i.z = add i8 %i.y, -65
  %or.cond15.i.i = icmp ult i8 %i.z, 26
  %i.aa = add i8 %i.x, -48
  %or.cond8.i.i = icmp ult i8 %i.aa, 10
  %or.cond16.i.i = or i1 %or.cond8.i.i, %or.cond15.i.i
  %i.ab = icmp eq i8 %i.x, 95
  %i.ac = or i1 %i.ab, %or.cond16.i.i             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 1 ; 2 uses
  %.not.i5 = icmp ne ptr %i.ad, %i.w
  %or.cond.not = select i1 %i.ac, i1 %.not.i5, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN6google8protobuf2ioL10AllInClassINS1_12_GLOBAL__N_112AlphanumericEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6google8protobuf2ioL10AllInClassINS1_12_GLOBAL__N_112AlphanumericEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %.not.lcssa.i = phi i1 [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit ], [ %i.ac, %.lr.ph.i ]
  %i.ae = icmp eq ptr %.val, %i.k
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN6google8protobuf2ioL10AllInClassINS1_12_GLOBAL__N_112AlphanumericEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.af = icmp ult i64 %.val4, 16
  call void @llvm.assume(i1 %i.af)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf2ioL10AllInClassINS1_12_GLOBAL__N_112AlphanumericEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ag = load i64, ptr %i.k, align 8, !tbaa !14
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %.val, i64 noundef %i.ah) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %.not.lcssa.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit ]
  ret i1 %.0
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io14ErrorCollector13RecordWarningEiiSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2, i64 %3, ptr %4) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !50 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !14
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !87

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !84     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #23
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %3 = ashr exact i64 %i.g, 5                     ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
  %5 = icmp ult i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 288230376151711743)
  %7 = select i1 %5, i64 288230376151711743, i64 %6 ; 4 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.f
  %.not.i = icmp eq i64 %7, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %10

10:                                               ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %11 = shl nuw nsw i64 %7, 5
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #26
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %10
  %13 = phi ptr [ %12, %10 ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 %9 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !7
  %i.k = load ptr, ptr %2, align 8, !tbaa !50     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.m, ptr %i.a, align 8, !tbaa !53
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.o, ptr %i.i, align 8, !tbaa !50
  %i.p = load i64, ptr %i.a, align 8, !tbaa !53
  store i64 %i.p, ptr %i.j, align 8, !tbaa !14
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.q = phi ptr [ %i.o, %.noexc ], [ %i.j, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !14
  store i8 %i.r, ptr %i.q, align 1, !tbaa !14
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !11
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %13, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.w, ptr %.012.i.i.i, align 8, !tbaa !7, !alias.scope !106, !noalias !109
  %i.x = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !50, !alias.scope !109, !noalias !106 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !11, !alias.scope !109, !noalias !106 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !111
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.x, ptr %.012.i.i.i, align 8, !tbaa !50, !alias.scope !106, !noalias !109
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !14, !alias.scope !109, !noalias !106
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !14, !alias.scope !106, !noalias !109
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !11, !alias.scope !109, !noalias !106
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.af = phi i64 [ %i.ab, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !11, !alias.scope !106, !noalias !109
  store ptr %i.y, ptr %.0911.i.i.i, align 8, !tbaa !50, !alias.scope !109, !noalias !106
  store i64 0, ptr %i.ag, align 8, !tbaa !11, !alias.scope !109, !noalias !106
  store i8 0, ptr %i.y, align 8, !tbaa !14, !alias.scope !109, !noalias !106
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !112

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %13, %bb.e ], [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i28, align 8, !tbaa !7, !alias.scope !113, !noalias !116
  %i.am = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !50, !alias.scope !116, !noalias !113 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !11, !alias.scope !116, !noalias !113 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !118
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.am, ptr %.012.i.i.i28, align 8, !tbaa !50, !alias.scope !113, !noalias !116
  %i.at = load i64, ptr %i.an, align 8, !tbaa !14, !alias.scope !116, !noalias !113
  store i64 %i.at, ptr %i.al, align 8, !tbaa !14, !alias.scope !113, !noalias !116
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !11, !alias.scope !116, !noalias !113
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.au = phi i64 [ %i.aq, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !11, !alias.scope !113, !noalias !116
  store ptr %i.an, ptr %.0911.i.i.i29, align 8, !tbaa !50, !alias.scope !116, !noalias !113
  store i64 0, ptr %i.av, align 8, !tbaa !11, !alias.scope !116, !noalias !113
  store i8 0, ptr %i.an, align 8, !tbaa !14, !alias.scope !116, !noalias !113
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.ax, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !112

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !95
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bc) #25
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %13, ptr %0, align 8, !tbaa !84
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !86
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %13, i64 %7
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !95
  ret void

bb.i:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = call ptr @__cxa_begin_catch(ptr %i.bg) #24 ; 0 uses
  %14 = shl nuw nsw i64 %7, 5
  call void @_ZdlPvm(ptr noundef nonnull %13, i64 noundef %14) #25
  invoke void @__cxa_rethrow() #23
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.be

bb.l:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #22
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::vector<std::__cxx11::basic_string<char>>::_Temporary_value", align 8 ; 7 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !86   ; 5 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 5
  %.not65 = icmp ult i64 %i.i, %2
  br i1 %.not65, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %0, ptr %4, align 8, !tbaa !119
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 7 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !7
  %i.l = load ptr, ptr %3, align 8, !tbaa !50     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.n, ptr %i.a, align 8, !tbaa !53
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %i.j, align 8, !tbaa !50
  %i.q = load i64, ptr %i.a, align 8, !tbaa !53
  store i64 %i.q, ptr %i.k, align 8, !tbaa !14
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.c
  %i.r = phi ptr [ %i.p, %.noexc.i.i ], [ %i.k, %bb.c ] ; 2 uses
  switch i64 %i.n, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueC2IJRKS5_EEEPS7_DpOT_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.s = load i8, ptr %i.l, align 1, !tbaa !14
  store i8 %i.s, ptr %i.r, align 1, !tbaa !14
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueC2IJRKS5_EEEPS7_DpOT_.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueC2IJRKS5_EEEPS7_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueC2IJRKS5_EEEPS7_DpOT_.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.t = load i64, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.t, ptr %i.u, align 8, !tbaa !11
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !94   ; 10 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = ashr exact i64 %i.aa, 5                 ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, %2
  br i1 %i.ac, label %bb.f, label %bb.n

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueC2IJRKS5_EEEPS7_DpOT_.exit
  %.neg = mul i64 %2, -32                         ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.x, i64 %.neg ; 3 uses
  %.not11.i.i.i.i.i = icmp eq i64 %.neg, 0
  br i1 %.not11.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ar, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.x, %bb.f ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.aq, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.ad, %bb.f ] ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.013.i.i.i.i.i, align 8, !tbaa !7
  %i.af = load ptr, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !11 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.af, ptr %.013.i.i.i.i.i, align 8, !tbaa !50
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !14
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !14
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !11
  store ptr %i.ag, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !50
  store i64 0, ptr %i.an, align 8, !tbaa !11
  store i8 0, ptr %i.ag, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.x
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !121

_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit.loopexit: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !86
  br label %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit

_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit.loopexit, %bb.f
  %i.as = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit.loopexit ], [ %i.x, %bb.f ]
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %2
  store ptr %i.at, ptr %i.d, align 8, !tbaa !86
  %i.au = ptrtoint ptr %i.ad to i64
  %i.av = sub i64 %i.au, %i.z
  %i.aw = ashr exact i64 %i.av, 5                 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i69, label %_ZSt13move_backwardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i69:                               ; preds = %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.aw, %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.x, %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 6 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.ad, %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 7 uses
  %i.ay = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 5 uses
  %i.az = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 5 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !50 ; 6 uses
  %i.bb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 4 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !50 ; 6 uses
  %i.be = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 6 uses
  %i.bf = icmp eq ptr %i.bd, %i.be                ; 2 uses
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i69
  br i1 %i.bf, label %bb.h, label %.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i69
  br i1 %i.bf, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !11 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %.not21.i.i.i.i.i.i = icmp eq ptr %.078.i.i.i.i.i, %.069.i.i.i.i.i
  br i1 %.not21.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i, label %bb.i, !prof !122

bb.i:                                             ; preds = %bb.h
  switch i64 %i.bh, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.bj = load i8, ptr %i.bd, align 1, !tbaa !14
  store i8 %i.bj, ptr %i.ba, align 1, !tbaa !14
end_hunk_2
