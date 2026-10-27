Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/cbor?download=true
inline.NumInlined: 819
inline.NumDeleted: 290
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.crdtp::StatusOr" = type { %"struct.crdtp::Status", %"class.crdtp::cbor::EnvelopeHeader" }
%"struct.crdtp::Status" = type { i32, i64 }
%"class.crdtp::cbor::EnvelopeHeader" = type { i64, i64 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.5" }
%"struct.std::_Head_base.5" = type { ptr }
%"class.crdtp::cbor::CBORTokenizer" = type { %"class.std::span", i32, %"struct.crdtp::Status", i64, i32, i64, %"class.crdtp::cbor::EnvelopeHeader" }
%"class.std::span" = type { ptr, %"class.std::__detail::__extent_storage" }
%"class.std::__detail::__extent_storage" = type { i64 }

$_ZNSt6vectorIhSaIhEE9push_backEOh = comdat any

$_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS5_Lm18446744073709551615EEEEEEvNS4_IPhS1_EET_SC_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS5_Lm18446744073709551615EEEEEEvNS4_IPhS1_EET_SC_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIhSaIhEE17_M_default_appendEm = comdat any

@.str.1 = private unnamed_addr constant [44 x i8] c"../../deps/inspector_protocol/crdtp/cbor.cc\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"byte_size_pos_ == 0\00", align 1
@__PRETTY_FUNCTION__._ZN5crdtp4cbor15EnvelopeEncoder11EncodeStartEPSt6vectorIhSaIhEE = private unnamed_addr constant [71 x i8] c"void crdtp::cbor::EnvelopeEncoder::EncodeStart(std::vector<uint8_t> *)\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"byte_size_pos_ != 0\00", align 1
@__PRETTY_FUNCTION__._ZN5crdtp4cbor15EnvelopeEncoder10EncodeStopEPSt6vectorIhSaIhEE = private unnamed_addr constant [70 x i8] c"bool crdtp::cbor::EnvelopeEncoder::EncodeStop(std::vector<uint8_t> *)\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"in[0] == kInitialByteForEnvelope\00", align 1
@__PRETTY_FUNCTION__._ZN5crdtp4cbor14EnvelopeHeader17ParseFromFragmentESt4spanIKhLm18446744073709551615EE = private unnamed_addr constant [94 x i8] c"static StatusOr<EnvelopeHeader> crdtp::cbor::EnvelopeHeader::ParseFromFragment(span<uint8_t>)\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"token_tag_ == CBORTokenTag::INT32\00", align 1
@__PRETTY_FUNCTION__._ZNK5crdtp4cbor13CBORTokenizer8GetInt32Ev = private unnamed_addr constant [53 x i8] c"int32_t crdtp::cbor::CBORTokenizer::GetInt32() const\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"token_tag_ == CBORTokenTag::DOUBLE\00", align 1
@__PRETTY_FUNCTION__._ZNK5crdtp4cbor13CBORTokenizer9GetDoubleEv = private unnamed_addr constant [53 x i8] c"double crdtp::cbor::CBORTokenizer::GetDouble() const\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"token_tag_ == CBORTokenTag::STRING8\00", align 1
@__PRETTY_FUNCTION__._ZNK5crdtp4cbor13CBORTokenizer10GetString8Ev = private unnamed_addr constant [61 x i8] c"span<uint8_t> crdtp::cbor::CBORTokenizer::GetString8() const\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"token_tag_ == CBORTokenTag::STRING16\00", align 1
@__PRETTY_FUNCTION__._ZNK5crdtp4cbor13CBORTokenizer18GetString16WireRepEv = private unnamed_addr constant [69 x i8] c"span<uint8_t> crdtp::cbor::CBORTokenizer::GetString16WireRep() const\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"token_tag_ == CBORTokenTag::BINARY\00", align 1
@__PRETTY_FUNCTION__._ZNK5crdtp4cbor13CBORTokenizer9GetBinaryEv = private unnamed_addr constant [60 x i8] c"span<uint8_t> crdtp::cbor::CBORTokenizer::GetBinary() const\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"token_tag_ == CBORTokenTag::ENVELOPE\00", align 1
@__PRETTY_FUNCTION__._ZNK5crdtp4cbor13CBORTokenizer17GetEnvelopeHeaderEv = private unnamed_addr constant [76 x i8] c"const EnvelopeHeader &crdtp::cbor::CBORTokenizer::GetEnvelopeHeader() const\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"env_header.content_size() > 0\00", align 1
@__PRETTY_FUNCTION__._ZN5crdtp4cbor27AppendString8EntryToCBORMapESt4spanIKhLm18446744073709551615EES3_PSt6vectorIhSaIhEE = private unnamed_addr constant [102 x i8] c"Status crdtp::cbor::AppendString8EntryToCBORMap(span<uint8_t>, span<uint8_t>, std::vector<uint8_t> *)\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZTVN5crdtp4cbor12_GLOBAL__N_111CBOREncoderE = internal unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr null, ptr @_ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoderD2Ev, ptr @_ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoderD0Ev, ptr @_ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoder14HandleMapBeginEv, ptr @_ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoder12HandleMapEndEv, ptr @_ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoder16HandleArrayBeginEv, ptr @_ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoder14HandleArrayEndEv, ptr @_ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoder13HandleString8ESt4spanIKhLm18446744073709551615EE, ptr @_ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoder14HandleString16ESt4spanIKtLm18446744073709551615EE, ptr @_ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoder12HandleBinaryESt4spanIKhLm18446744073709551615EE, ptr @_ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoder12HandleDoubleEd, ptr @_ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoder11HandleInt32Ei, ptr @_ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoder10HandleBoolEb, ptr @_ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoder10HandleNullEv, ptr @_ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoder11HandleErrorENS_6StatusE] }, align 8
@.str.17 = private unnamed_addr constant [20 x i8] c"!envelopes_.empty()\00", align 1
@__PRETTY_FUNCTION__._ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoder12HandleMapEndEv = private unnamed_addr constant [77 x i8] c"virtual void crdtp::cbor::(anonymous namespace)::CBOREncoder::HandleMapEnd()\00", align 1
@__PRETTY_FUNCTION__._ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoder14HandleArrayEndEv = private unnamed_addr constant [79 x i8] c"virtual void crdtp::cbor::(anonymous namespace)::CBOREncoder::HandleArrayEnd()\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"tokenizer->TokenTag() == CBORTokenTag::MAP_START\00", align 1
@__PRETTY_FUNCTION__._ZN5crdtp4cbor12_GLOBAL__N_18ParseMapEiPNS0_13CBORTokenizerEPNS_13ParserHandlerE = private unnamed_addr constant [93 x i8] c"bool crdtp::cbor::(anonymous namespace)::ParseMap(int32_t, CBORTokenizer *, ParserHandler *)\00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c"tokenizer->TokenTag() == CBORTokenTag::ARRAY_START\00", align 1
@__PRETTY_FUNCTION__._ZN5crdtp4cbor12_GLOBAL__N_110ParseArrayEiPNS0_13CBORTokenizerEPNS_13ParserHandlerE = private unnamed_addr constant [95 x i8] c"bool crdtp::cbor::(anonymous namespace)::ParseArray(int32_t, CBORTokenizer *, ParserHandler *)\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"in.size() >= sizeof(T)\00", align 1
@__PRETTY_FUNCTION__._ZN5crdtp4cbor12_GLOBAL__N_133ReadBytesMostSignificantByteFirstImEET_St4spanIKhLm18446744073709551615EE = private unnamed_addr constant [107 x i8] c"T crdtp::cbor::(anonymous namespace)::ReadBytesMostSignificantByteFirst(span<uint8_t>) [T = unsigned long]\00", align 1

@_ZN5crdtp4cbor13CBORTokenizerC1ESt4spanIKhLm18446744073709551615EE = dso_local unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN5crdtp4cbor13CBORTokenizerC2ESt4spanIKhLm18446744073709551615EE
@_ZN5crdtp4cbor13CBORTokenizerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN5crdtp4cbor13CBORTokenizerD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef range(i64 0, 10) i64 @_ZN5crdtp4cbor9internals14ReadTokenStartESt4spanIKhLm18446744073709551615EEPNS0_9MajorTypeEPm(ptr nofree readonly captures(none) %0, i64 %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1                 ; 2 uses
  %i.c = lshr i8 %i.b, 5
  %i.d = zext nneg i8 %i.c to i32
  store i32 %i.d, ptr %2, align 4
  %i.e = and i8 %i.b, 31                          ; 3 uses
  %i.f = icmp samesign ult i8 %i.e, 24
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = zext nneg i8 %i.e to i64
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  switch i8 %i.e, label %bb.i [
    i8 24, label %bb.e
    i8 25, label %bb.f
    i8 26, label %bb.g
    i8 27, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = icmp eq i64 %1, 1
  br i1 %i.h, label %bb.i, label %_ZN5crdtp4cbor12_GLOBAL__N_133ReadBytesMostSignificantByteFirstIhEET_St4spanIKhLm18446744073709551615EE.exit

_ZN5crdtp4cbor12_GLOBAL__N_133ReadBytesMostSignificantByteFirstIhEET_St4spanIKhLm18446744073709551615EE.exit: ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i64
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.l = icmp ult i64 %1, 3
  br i1 %i.l, label %bb.i, label %_ZN5crdtp4cbor12_GLOBAL__N_133ReadBytesMostSignificantByteFirstItEET_St4spanIKhLm18446744073709551615EE.exit

_ZN5crdtp4cbor12_GLOBAL__N_133ReadBytesMostSignificantByteFirstItEET_St4spanIKhLm18446744073709551615EE.exit: ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i64
  %i.q = load i8, ptr %i.m, align 1
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 8
  %i.t = or disjoint i64 %i.s, %i.p
  br label %.sink.split

bb.g:                                             ; preds = %bb.d
  %i.u = icmp ult i64 %1, 5
  br i1 %i.u, label %bb.i, label %_ZN5crdtp4cbor12_GLOBAL__N_133ReadBytesMostSignificantByteFirstIjEET_St4spanIKhLm18446744073709551615EE.exit

_ZN5crdtp4cbor12_GLOBAL__N_133ReadBytesMostSignificantByteFirstIjEET_St4spanIKhLm18446744073709551615EE.exit: ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.w = load i32, ptr %i.v, align 1
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.w)
  %i.y = zext i32 %i.x to i64
  br label %.sink.split

bb.h:                                             ; preds = %bb.d
  %i.z = icmp ult i64 %1, 9
  br i1 %i.z, label %bb.i, label %_ZN5crdtp4cbor12_GLOBAL__N_133ReadBytesMostSignificantByteFirstImEET_St4spanIKhLm18446744073709551615EE.exit

_ZN5crdtp4cbor12_GLOBAL__N_133ReadBytesMostSignificantByteFirstImEET_St4spanIKhLm18446744073709551615EE.exit: ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 8
  %i.ai = or disjoint i64 %i.ah, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 16
  %i.an = or disjoint i64 %i.ai, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 24
  %i.as = or disjoint i64 %i.an, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 32
  %i.ax = or disjoint i64 %i.as, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 40
  %i.bc = or i64 %i.ax, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 48
  %i.bh = or i64 %i.bc, %i.bg
  %i.bi = load i8, ptr %i.aa, align 1
  %i.bj = zext i8 %i.bi to i64
  %i.bk = shl nuw i64 %i.bj, 56
  %i.bl = or i64 %i.bh, %i.bk
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN5crdtp4cbor12_GLOBAL__N_133ReadBytesMostSignificantByteFirstImEET_St4spanIKhLm18446744073709551615EE.exit, %_ZN5crdtp4cbor12_GLOBAL__N_133ReadBytesMostSignificantByteFirstIjEET_St4spanIKhLm18446744073709551615EE.exit, %_ZN5crdtp4cbor12_GLOBAL__N_133ReadBytesMostSignificantByteFirstItEET_St4spanIKhLm18446744073709551615EE.exit, %_ZN5crdtp4cbor12_GLOBAL__N_133ReadBytesMostSignificantByteFirstIhEET_St4spanIKhLm18446744073709551615EE.exit, %bb.c
  %.sink = phi i64 [ %i.g, %bb.c ], [ %i.k, %_ZN5crdtp4cbor12_GLOBAL__N_133ReadBytesMostSignificantByteFirstIhEET_St4spanIKhLm18446744073709551615EE.exit ], [ %i.t, %_ZN5crdtp4cbor12_GLOBAL__N_133ReadBytesMostSignificantByteFirstItEET_St4spanIKhLm18446744073709551615EE.exit ], [ %i.y, %_ZN5crdtp4cbor12_GLOBAL__N_133ReadBytesMostSignificantByteFirstIjEET_St4spanIKhLm18446744073709551615EE.exit ], [ %i.bl, %_ZN5crdtp4cbor12_GLOBAL__N_133ReadBytesMostSignificantByteFirstImEET_St4spanIKhLm18446744073709551615EE.exit ]
  %.1.ph = phi i64 [ 1, %bb.c ], [ 2, %_ZN5crdtp4cbor12_GLOBAL__N_133ReadBytesMostSignificantByteFirstIhEET_St4spanIKhLm18446744073709551615EE.exit ], [ 3, %_ZN5crdtp4cbor12_GLOBAL__N_133ReadBytesMostSignificantByteFirstItEET_St4spanIKhLm18446744073709551615EE.exit ], [ 5, %_ZN5crdtp4cbor12_GLOBAL__N_133ReadBytesMostSignificantByteFirstIjEET_St4spanIKhLm18446744073709551615EE.exit ], [ 9, %_ZN5crdtp4cbor12_GLOBAL__N_133ReadBytesMostSignificantByteFirstImEET_St4spanIKhLm18446744073709551615EE.exit ]
  store i64 %.sink, ptr %3, align 8
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.e, %bb.f, %bb.g, %bb.h, %bb.d, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.g ], [ %.1.ph, %.sink.split ]
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5crdtp4cbor9internals15WriteTokenStartENS0_9MajorTypeEmPSt6vectorIhSaIhEE(i32 noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %1, 24
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw nsw i64 %1 to i8
  %.tr.i = trunc i32 %0 to i8
  %i.c = shl i8 %.tr.i, 5
  %i.d = or disjoint i8 %i.c, %i.b                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 %i.d, ptr %i.f, align 1
  %i.i = load ptr, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.j, ptr %i.e, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %2, align 8                ; 4 uses
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 7 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775807
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #16
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.p = add i64 %.sroa.speculated.i.i.i.i, %i.n  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.n
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 9223372036854775807)
  %i.s = select i1 %i.q, i64 9223372036854775807, i64 %i.r ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #17 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n ; 2 uses
  store i8 %i.d, ptr %i.u, align 1
  %i.v = icmp sgt i64 %i.n, 0
  br i1 %i.v, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %i.k, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  %i.x = load ptr, ptr %i.g, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.z) #18
end_hunk_0
begin_hunk_1_@_ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoder14HandleArrayEndEv:bb.a
  %i.at = icmp ult i64 %i.as, 4294967296
  br i1 %i.at, label %bb.l, label %_ZN5crdtp4cbor15EnvelopeEncoder10EncodeStopEPSt6vectorIhSaIhEE.exit

_ZN5crdtp4cbor15EnvelopeEncoder10EncodeStopEPSt6vectorIhSaIhEE.exit: ; preds = %bb.k
  %i.au = sub i64 %i.ao, %i.ap
  %i.av = load ptr, ptr %0, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 104
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 35, i64 %i.au) #19
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = lshr i64 %i.as, 24
  %i.az = trunc nuw i64 %i.ay to i8
  %i.ba = add i64 %i.ak, 1
  store i64 %i.ba, ptr %i.ai, align 8
  %i.bb = load ptr, ptr %i.aj, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ak
  store i8 %i.az, ptr %i.bc, align 1
  %i.bd = lshr i64 %i.as, 16
  %i.be = trunc i64 %i.bd to i8
  %i.bf = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.ai, align 8
  %i.bh = load ptr, ptr %i.aj, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  store i8 %i.be, ptr %i.bi, align 1
  %i.bj = lshr i64 %i.as, 8
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.ai, align 8
  %i.bn = load ptr, ptr %i.aj, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 %i.bk, ptr %i.bo, align 1
  %i.bp = trunc i64 %i.as to i8
  %i.bq = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.ai, align 8
  %i.bs = load ptr, ptr %i.aj, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 %i.bp, ptr %i.bt, align 1
  %i.bu = load ptr, ptr %i.af, align 8
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -8
  store ptr %i.bv, ptr %i.af, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l, %_ZN5crdtp4cbor15EnvelopeEncoder10EncodeStopEPSt6vectorIhSaIhEE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoder13HandleString8ESt4spanIKhLm18446744073709551615EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr %1, i64 %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  tail call void @_ZN5crdtp4cbor9internals15WriteTokenStartENS0_9MajorTypeEmPSt6vectorIhSaIhEE(i32 noundef 3, i64 noundef %2, ptr noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.j = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  tail call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS5_Lm18446744073709551615EEEEEEvNS4_IPhS1_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr %i.n, ptr %1, ptr %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoder14HandleString16ESt4spanIKtLm18446744073709551615EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr %1, i64 %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN5crdtp4cbor15EncodeFromUTF16ESt4spanIKtLm18446744073709551615EEPSt6vectorIhSaIhEE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %.idx.i = shl nuw nsw i64 %2, 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i ; 2 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge.i, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.026.i, i64 2 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.013.026.i = phi ptr [ %i.i, %bb.c ], [ %1, %bb.b ] ; 2 uses
  %i.k = load i16, ptr %.sroa.013.026.i, align 2
  %i.l = icmp ult i16 %i.k, 128
  br i1 %i.l, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  tail call void @_ZN5crdtp4cbor14EncodeString16ESt4spanIKtLm18446744073709551615EEPSt6vectorIhSaIhEE(ptr %1, i64 %2, ptr noundef %i.f)
  br label %_ZN5crdtp4cbor15EncodeFromUTF16ESt4spanIKtLm18446744073709551615EEPSt6vectorIhSaIhEE.exit

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  tail call void @_ZN5crdtp4cbor9internals15WriteTokenStartENS0_9MajorTypeEmPSt6vectorIhSaIhEE(i32 noundef 3, i64 noundef %2, ptr noundef %i.f)
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 %i.r
  tail call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS5_Lm18446744073709551615EEEEEEvNS4_IPhS1_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr %i.s, ptr %1, ptr %i.g)
  br label %_ZN5crdtp4cbor15EncodeFromUTF16ESt4spanIKtLm18446744073709551615EEPSt6vectorIhSaIhEE.exit

_ZN5crdtp4cbor15EncodeFromUTF16ESt4spanIKtLm18446744073709551615EEPSt6vectorIhSaIhEE.exit: ; preds = %._crit_edge.i, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoder12HandleBinaryESt4spanIKhLm18446744073709551615EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr %1, i64 %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @_ZN5crdtp4cbor12EncodeBinaryESt4spanIKhLm18446744073709551615EEPSt6vectorIhSaIhEE(ptr %1, i64 %2, ptr noundef %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoder12HandleDoubleEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, double noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @_ZN5crdtp4cbor12EncodeDoubleEdPSt6vectorIhSaIhEE(double noundef %1, ptr noundef %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoder11HandleInt32Ei(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %.lobit.i = ashr i32 %1, 31
  %.sink6.i = xor i32 %.lobit.i, %1
  %.lobit7.i = lshr i32 %1, 31
  %i.g = zext nneg i32 %.sink6.i to i64
  tail call void @_ZN5crdtp4cbor9internals15WriteTokenStartENS0_9MajorTypeEmPSt6vectorIhSaIhEE(i32 noundef %.lobit7.i, i64 noundef %i.g, ptr noundef %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoder10HandleBoolEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i1 noundef zeroext %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = select i1 %1, i8 -11, i8 -12
  store i8 %2, ptr %i.h, align 1
  %i.k = load ptr, ptr %i.g, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.l, ptr %i.g, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 7 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775807
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #16
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.r = add i64 %.sroa.speculated.i.i.i, %i.p    ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.p
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 9223372036854775807)
  %i.u = select i1 %i.s, i64 9223372036854775807, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #17 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.p ; 2 uses
  %3 = select i1 %1, i8 -11, i8 -12
  store i8 %3, ptr %i.w, align 1
  %i.x = icmp sgt i64 %i.p, 0
  br i1 %i.x, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.v, ptr align 1 %i.m, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %.not.i17.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  %i.z = load ptr, ptr %i.i, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.ab) #18
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %i.v, ptr %i.f, align 8
  store ptr %i.y, ptr %i.g, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store ptr %i.ac, ptr %i.i, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

_ZNSt6vectorIhSaIhEE9push_backERKh.exit:          ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoder10HandleNullEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 -10, ptr %i.h, align 1
  %i.k = load ptr, ptr %i.g, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.l, ptr %i.g, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 7 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775807
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #16
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.r = add i64 %.sroa.speculated.i.i.i, %i.p    ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.p
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 9223372036854775807)
  %i.u = select i1 %i.s, i64 9223372036854775807, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #17 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.p ; 2 uses
  store i8 -10, ptr %i.w, align 1
  %i.x = icmp sgt i64 %i.p, 0
  br i1 %i.x, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.v, ptr align 1 %i.m, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %.not.i17.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  %i.z = load ptr, ptr %i.i, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.ab) #18
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %i.v, ptr %i.f, align 8
  store ptr %i.y, ptr %i.g, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store ptr %i.ac, ptr %i.i, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

_ZNSt6vectorIhSaIhEE9push_backERKh.exit:          ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN5crdtp4cbor12_GLOBAL__N_111CBOREncoder11HandleErrorENS_6StatusE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 %1, i64 %2) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorIhSaIhEE5clearEv.exit

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.b, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %.sroa.21.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %.not.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE5clearEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.g, ptr %i.h, align 8
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit

_ZNSt6vectorIhSaIhEE5clearEv.exit:                ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5crdtp4cbor12_GLOBAL__N_116ParseUTF16StringEPNS0_13CBORTokenizerEPNS_13ParserHandlerE(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 7
  br i1 %i.c, label %_ZNK5crdtp4cbor13CBORTokenizer18GetString16WireRepEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5crdtp4cbor13CBORTokenizer18GetString16WireRepEv) #16
  unreachable

_ZNK5crdtp4cbor13CBORTokenizer18GetString16WireRepEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8
  %i.j = sub i64 %i.i, %i.e
  %i.k = add i64 %i.j, %i.g                       ; 2 uses
  %i.l = icmp eq i64 %i.e, -1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = sub i64 %i.n, %i.k
  %.0.i.i = select i1 %i.l, i64 %i.o, i64 %i.e    ; 2 uses
  %i.p = load ptr, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.k
  %.not = icmp eq i64 %.0.i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %i.r = ptrtoint ptr %.sroa.7.1 to i64
  %i.s = ptrtoint ptr %.sroa.12.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK5crdtp4cbor13CBORTokenizer18GetString16WireRepEv.exit
  %.sroa.12.0.lcssa = phi i64 [ 0, %_ZNK5crdtp4cbor13CBORTokenizer18GetString16WireRepEv.exit ], [ %i.s, %._crit_edge.loopexit ]
  %.sroa.7.0.lcssa = phi i64 [ 0, %_ZNK5crdtp4cbor13CBORTokenizer18GetString16WireRepEv.exit ], [ %i.r, %._crit_edge.loopexit ]
  %.sroa.09.0.lcssa = phi ptr [ null, %_ZNK5crdtp4cbor13CBORTokenizer18GetString16WireRepEv.exit ], [ %.sroa.09.1, %._crit_edge.loopexit ] ; 4 uses
  %i.t = ptrtoint ptr %.sroa.09.0.lcssa to i64    ; 2 uses
  %i.u = sub i64 %.sroa.7.0.lcssa, %i.t
  %i.v = ashr exact i64 %i.u, 1
  %i.w = load ptr, ptr %1, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %.sroa.09.0.lcssa, i64 %i.v) #19
  %i.z = load i32, ptr %i.a, align 8
  switch i32 %i.z, label %bb.c [
    i32 0, label %_ZN5crdtp4cbor13CBORTokenizer4NextEv.exit
    i32 13, label %_ZN5crdtp4cbor13CBORTokenizer4NextEv.exit
  ]

bb.c:                                             ; preds = %._crit_edge
  tail call void @_ZN5crdtp4cbor13CBORTokenizer13ReadNextTokenEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br label %_ZN5crdtp4cbor13CBORTokenizer4NextEv.exit

_ZN5crdtp4cbor13CBORTokenizer4NextEv.exit:        ; preds = %._crit_edge, %._crit_edge, %bb.c
  %.not.i.i.i = icmp eq ptr %.sroa.09.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.d

end_hunk_1
