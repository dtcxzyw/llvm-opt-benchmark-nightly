inline.NumInlined: 488
inline.NumDeleted: 154
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.absl::lts_20250512::log_internal::LogMessageFatal" = type { %"class.absl::lts_20250512::log_internal::LogMessage" }
%"class.absl::lts_20250512::log_internal::LogMessage" = type { %"class.absl::lts_20250512::base_internal::ErrnoSaver", %"class.std::unique_ptr" }
%"class.absl::lts_20250512::base_internal::ErrnoSaver" = type { i32 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.absl::lts_20250512::AlphaNum" = type { %"class.std::basic_string_view", [32 x i8] }

$_ZN6google8protobuf8internal12FieldSkipperD0Ev = comdat any

$_ZN6google8protobuf8internal12FieldSkipperD2Ev = comdat any

$_ZN6google8protobuf8internal29CodedOutputStreamFieldSkipperD0Ev = comdat any

$_ZN6google8protobuf8internal14WireFormatLite12kFixed32SizeE = comdat any

$_ZN6google8protobuf8internal14WireFormatLite12kFixed64SizeE = comdat any

$_ZN6google8protobuf8internal14WireFormatLite13kSFixed32SizeE = comdat any

$_ZN6google8protobuf8internal14WireFormatLite13kSFixed64SizeE = comdat any

$_ZN6google8protobuf8internal14WireFormatLite10kFloatSizeE = comdat any

$_ZN6google8protobuf8internal14WireFormatLite11kDoubleSizeE = comdat any

$_ZN6google8protobuf8internal14WireFormatLite9kBoolSizeE = comdat any

@_ZN6google8protobuf8internal14WireFormatLite23kMessageSetItemStartTagE = local_unnamed_addr constant i32 11, align 4
@_ZN6google8protobuf8internal14WireFormatLite21kMessageSetItemEndTagE = local_unnamed_addr constant i32 12, align 4
@_ZN6google8protobuf8internal14WireFormatLite20kMessageSetTypeIdTagE = local_unnamed_addr constant i32 16, align 4
@_ZN6google8protobuf8internal14WireFormatLite21kMessageSetMessageTagE = local_unnamed_addr constant i32 26, align 4
@_ZN6google8protobuf8internal14WireFormatLite12kFixed32SizeE = weak_odr local_unnamed_addr constant i64 4, comdat, align 8
@_ZN6google8protobuf8internal14WireFormatLite12kFixed64SizeE = weak_odr local_unnamed_addr constant i64 8, comdat, align 8
@_ZN6google8protobuf8internal14WireFormatLite13kSFixed32SizeE = weak_odr local_unnamed_addr constant i64 4, comdat, align 8
@_ZN6google8protobuf8internal14WireFormatLite13kSFixed64SizeE = weak_odr local_unnamed_addr constant i64 8, comdat, align 8
@_ZN6google8protobuf8internal14WireFormatLite10kFloatSizeE = weak_odr local_unnamed_addr constant i64 4, comdat, align 8
@_ZN6google8protobuf8internal14WireFormatLite11kDoubleSizeE = weak_odr local_unnamed_addr constant i64 8, comdat, align 8
@_ZN6google8protobuf8internal14WireFormatLite9kBoolSizeE = weak_odr local_unnamed_addr constant i64 1, comdat, align 8
@_ZN6google8protobuf8internal14WireFormatLite23kMessageSetItemTagsSizeE = local_unnamed_addr constant i64 4, align 8
@_ZN6google8protobuf8internal14WireFormatLite22kFieldTypeToCppTypeMapE = local_unnamed_addr constant [19 x i32] [i32 0, i32 5, i32 6, i32 2, i32 4, i32 1, i32 4, i32 3, i32 7, i32 9, i32 10, i32 10, i32 9, i32 3, i32 8, i32 1, i32 2, i32 1, i32 2], align 16
@_ZN6google8protobuf8internal14WireFormatLite21kWireTypeForFieldTypeE = local_unnamed_addr constant [19 x i32] [i32 -1, i32 1, i32 5, i32 0, i32 0, i32 0, i32 1, i32 5, i32 0, i32 2, i32 3, i32 2, i32 2, i32 0, i32 0, i32 5, i32 1, i32 0, i32 0], align 16
@.str = private unnamed_addr constant [30 x i8] c"value.size() <= kInt32MaxSize\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"/opt-bench/work/protobuf/protobuf/src/google/protobuf/wire_format_lite.cc\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" '\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"String field\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c" contains invalid UTF-8 data when \00", align 1
@.str.8 = private unnamed_addr constant [75 x i8] c" a protocol buffer. Use the 'bytes' type if you intend to send raw bytes. \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"parsing\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"serializing\00", align 1
@_ZTVN6google8protobuf8internal12FieldSkipperE = unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN6google8protobuf8internal12FieldSkipperE, ptr @_ZN6google8protobuf8internal12FieldSkipperD2Ev, ptr @_ZN6google8protobuf8internal12FieldSkipperD0Ev, ptr @_ZN6google8protobuf8internal12FieldSkipper9SkipFieldEPNS0_2io16CodedInputStreamEj, ptr @_ZN6google8protobuf8internal12FieldSkipper11SkipMessageEPNS0_2io16CodedInputStreamE, ptr @_ZN6google8protobuf8internal12FieldSkipper15SkipUnknownEnumEii] }, align 8
@_ZTIN6google8protobuf8internal12FieldSkipperE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6google8protobuf8internal12FieldSkipperE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN6google8protobuf8internal12FieldSkipperE = constant [42 x i8] c"N6google8protobuf8internal12FieldSkipperE\00", align 1
@_ZTVN6google8protobuf8internal29CodedOutputStreamFieldSkipperE = unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN6google8protobuf8internal29CodedOutputStreamFieldSkipperE, ptr @_ZN6google8protobuf8internal12FieldSkipperD2Ev, ptr @_ZN6google8protobuf8internal29CodedOutputStreamFieldSkipperD0Ev, ptr @_ZN6google8protobuf8internal29CodedOutputStreamFieldSkipper9SkipFieldEPNS0_2io16CodedInputStreamEj, ptr @_ZN6google8protobuf8internal29CodedOutputStreamFieldSkipper11SkipMessageEPNS0_2io16CodedInputStreamE, ptr @_ZN6google8protobuf8internal29CodedOutputStreamFieldSkipper15SkipUnknownEnumEii] }, align 8
@_ZTIN6google8protobuf8internal29CodedOutputStreamFieldSkipperE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6google8protobuf8internal29CodedOutputStreamFieldSkipperE, ptr @_ZTIN6google8protobuf8internal12FieldSkipperE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6google8protobuf8internal29CodedOutputStreamFieldSkipperE = constant [59 x i8] c"N6google8protobuf8internal29CodedOutputStreamFieldSkipperE\00", align 1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite9SkipFieldEPNS0_2io16CodedInputStreamEj(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = icmp ult i32 %1, 8
  br i1 %i.c, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %1, 7
  switch i32 %i.d, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit [
    i32 0, label %bb.c
    i32 1, label %bb.g
    i32 2, label %bb.j
    i32 3, label %bb.o
    i32 5, label %bb.v
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %bb.d, label %bb.f, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %i.e, align 1, !tbaa !17
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  br label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit.sink.split

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.l = tail call { i64, i8 } @_ZN6google8protobuf2io16CodedInputStream20ReadVarint64FallbackEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %.fca.1.extract.i = extractvalue { i64, i8 } %i.l, 1
  %i.m = trunc i8 %.fca.1.extract.i to i1
  br label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.p = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = trunc i64 %i.s to i32
  %i.u = icmp sgt i32 %i.t, 7
  br i1 %i.u, label %bb.h, label %bb.i, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.v, ptr %0, align 8, !tbaa !7
  br label %_ZN6google8protobuf2io16CodedInputStream18ReadLittleEndian64EPm.exit

bb.i:                                             ; preds = %bb.g
  %i.w = call noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream26ReadLittleEndian64FallbackEPm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.a)
  br label %_ZN6google8protobuf2io16CodedInputStream18ReadLittleEndian64EPm.exit

_ZN6google8protobuf2io16CodedInputStream18ReadLittleEndian64EPm.exit: ; preds = %bb.h, %bb.i
  %.0.i13 = phi i1 [ true, %bb.h ], [ %i.w, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit

bb.j:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !15   ; 2 uses
  %i.aa = icmp ult ptr %i.x, %i.z
  br i1 %i.aa, label %bb.k, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit, !prof !16

bb.k:                                             ; preds = %bb.j
  %i.ab = load i8, ptr %i.x, align 1, !tbaa !17   ; 2 uses
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = icmp sgt i8 %i.ab, -1
  br i1 %i.ad, label %.thread, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit

.thread:                                          ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !7
  br label %bb.l

_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit: ; preds = %bb.j, %bb.k
  %.08.i = phi i32 [ %i.ac, %bb.k ], [ 0, %bb.j ]
  %i.af = tail call noundef i64 @_ZN6google8protobuf2io16CodedInputStream20ReadVarint32FallbackEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.08.i) ; 2 uses
  %i.ag = and i64 %i.af, -9223372034707292160
  %or.cond.not = icmp eq i64 %i.ag, 0
  br i1 %or.cond.not, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit._crit_edge, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit

_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit._crit_edge: ; preds = %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit
  %i.ah = trunc i64 %i.af to i32
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !15
  %.pre30 = load ptr, ptr %0, align 8, !tbaa !7
  br label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit._crit_edge, %.thread
  %i.ai = phi ptr [ %i.ae, %.thread ], [ %.pre30, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit._crit_edge ] ; 2 uses
  %i.aj = phi ptr [ %i.z, %.thread ], [ %.pre, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit._crit_edge ]
  %.01921 = phi i32 [ %i.ac, %.thread ], [ %i.ah, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit._crit_edge ] ; 3 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = trunc i64 %i.am to i32                  ; 2 uses
  %.not.i = icmp sgt i32 %.01921, %i.an
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = zext nneg i32 %.01921 to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ao
  br label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit.sink.split

bb.n:                                             ; preds = %bb.l
  %i.aq = tail call noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream12SkipFallbackEii(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.01921, i32 noundef %i.an)
  br label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit

bb.o:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !18 ; 2 uses
  %i.at = add nsw i32 %i.as, -1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !18
  %i.au = icmp sgt i32 %i.as, 0
  br i1 %i.au, label %.preheader, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit

.preheader:                                       ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.p

bb.p:                                             ; preds = %.preheader, %bb.t
  %i.ax = load ptr, ptr %0, align 8, !tbaa !7     ; 3 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !15
  %i.az = icmp ult ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.q, label %bb.s, !prof !16

bb.q:                                             ; preds = %bb.p
  %i.ba = load i8, ptr %i.ax, align 1, !tbaa !17  ; 2 uses
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = icmp sgt i8 %i.ba, -1
  br i1 %i.bc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store ptr %i.bd, ptr %0, align 8, !tbaa !7
  br label %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i

bb.s:                                             ; preds = %bb.q, %bb.p
  %.0.i.i = phi i32 [ %i.bb, %bb.q ], [ 0, %bb.p ]
  %i.be = tail call noundef i32 @_ZN6google8protobuf2io16CodedInputStream15ReadTagFallbackEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.0.i.i), !inline_history !19
  br label %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i

_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i: ; preds = %bb.s, %bb.r
  %i.bf = phi i32 [ %i.bb, %bb.r ], [ %i.be, %bb.s ] ; 5 uses
  store i32 %i.bf, ptr %i.aw, align 8, !tbaa !20
  %i.bg = icmp eq i32 %i.bf, 0
  %i.bh = and i32 %i.bf, 7
  %i.bi = icmp eq i32 %i.bh, 4
  %or.cond28 = or i1 %i.bg, %i.bi
  br i1 %or.cond28, label %_ZN6google8protobuf8internal14WireFormatLite11SkipMessageEPNS0_2io16CodedInputStreamE.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i
  %i.bj = tail call noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite9SkipFieldEPNS0_2io16CodedInputStreamEj(ptr noundef nonnull %0, i32 noundef %i.bf), !inline_history !19
  br i1 %i.bj, label %bb.p, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit

_ZN6google8protobuf8internal14WireFormatLite11SkipMessageEPNS0_2io16CodedInputStreamE.exit.thread: ; preds = %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i
  %i.bk = load i32, ptr %i.ar, align 4, !tbaa !18 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !21
  %i.bn = icmp slt i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.u, label %_ZN6google8protobuf2io16CodedInputStream23DecrementRecursionDepthEv.exit

bb.u:                                             ; preds = %_ZN6google8protobuf8internal14WireFormatLite11SkipMessageEPNS0_2io16CodedInputStreamE.exit.thread
  %i.bo = add nsw i32 %i.bk, 1
  store i32 %i.bo, ptr %i.ar, align 4, !tbaa !18
  br label %_ZN6google8protobuf2io16CodedInputStream23DecrementRecursionDepthEv.exit

_ZN6google8protobuf2io16CodedInputStream23DecrementRecursionDepthEv.exit: ; preds = %_ZN6google8protobuf8internal14WireFormatLite11SkipMessageEPNS0_2io16CodedInputStreamE.exit.thread, %bb.u
  %i.bp = and i32 %1, -8
  %i.bq = or disjoint i32 %i.bp, 4
  %i.br = icmp eq i32 %i.bf, %i.bq
  br label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit

bb.v:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !15
  %i.bu = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = trunc i64 %i.bx to i32
  %i.bz = icmp sgt i32 %i.by, 3
  br i1 %i.bz, label %bb.w, label %bb.x, !prof !16

bb.w:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store ptr %i.ca, ptr %0, align 8, !tbaa !7
  br label %_ZN6google8protobuf2io16CodedInputStream18ReadLittleEndian32EPj.exit

bb.x:                                             ; preds = %bb.v
  %i.cb = call noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream26ReadLittleEndian32FallbackEPj(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.b)
  br label %_ZN6google8protobuf2io16CodedInputStream18ReadLittleEndian32EPj.exit

_ZN6google8protobuf2io16CodedInputStream18ReadLittleEndian32EPj.exit: ; preds = %bb.w, %bb.x
  %.0.i16 = phi i1 [ true, %bb.w ], [ %i.cb, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit

_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit.sink.split: ; preds = %bb.e, %bb.m
  %.sink = phi ptr [ %i.ap, %bb.m ], [ %i.k, %bb.e ]
  store ptr %.sink, ptr %0, align 8, !tbaa !7
  br label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit

_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit: ; preds = %bb.t, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit.sink.split, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit, %bb.n, %bb.f, %bb.b, %_ZN6google8protobuf2io16CodedInputStream23DecrementRecursionDepthEv.exit, %bb.o, %bb.a, %_ZN6google8protobuf2io16CodedInputStream18ReadLittleEndian32EPj.exit, %_ZN6google8protobuf2io16CodedInputStream18ReadLittleEndian64EPm.exit
  %.4 = phi i1 [ %.0.i16, %_ZN6google8protobuf2io16CodedInputStream18ReadLittleEndian32EPj.exit ], [ false, %bb.a ], [ false, %bb.b ], [ %.0.i13, %_ZN6google8protobuf2io16CodedInputStream18ReadLittleEndian64EPm.exit ], [ %i.m, %bb.f ], [ %i.aq, %bb.n ], [ %i.br, %_ZN6google8protobuf2io16CodedInputStream23DecrementRecursionDepthEv.exit ], [ false, %bb.o ], [ true, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit.sink.split ], [ false, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit ], [ false, %bb.t ]
  ret i1 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite11SkipMessageEPNS0_2io16CodedInputStreamE(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.e = icmp ult ptr %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.e, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.c, align 1, !tbaa !17    ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = icmp sgt i8 %i.f, -1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.i, ptr %0, align 8, !tbaa !7
  br label %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ %i.g, %bb.c ], [ 0, %bb.b ]
  %i.j = tail call noundef i32 @_ZN6google8protobuf2io16CodedInputStream15ReadTagFallbackEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.0.i)
  br label %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit

_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit: ; preds = %bb.d, %bb.e
  %.05.i = phi i32 [ %i.g, %bb.d ], [ %i.j, %bb.e ] ; 4 uses
  store i32 %.05.i, ptr %i.b, align 8, !tbaa !20
  %i.k = icmp eq i32 %.05.i, 0
  %i.l = and i32 %.05.i, 7
  %i.m = icmp eq i32 %i.l, 4
  %or.cond = or i1 %i.k, %i.m                     ; 2 uses
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit
  %i.n = tail call noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite9SkipFieldEPNS0_2io16CodedInputStreamEj(ptr noundef nonnull %0, i32 noundef %.05.i)
  br i1 %i.n, label %bb.b, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit, %bb.f
  ret i1 %or.cond
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite9SkipFieldEPNS0_2io16CodedInputStreamEjPNS3_17CodedOutputStreamE(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = icmp ult i32 %1, 8
  br i1 %i.c, label %_ZN6google8protobuf8internal14WireFormatLite11SkipMessageEPNS0_2io16CodedInputStreamEPNS3_17CodedOutputStreamE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %1, 7
  switch i32 %i.d, label %_ZN6google8protobuf8internal14WireFormatLite11SkipMessageEPNS0_2io16CodedInputStreamEPNS3_17CodedOutputStreamE.exit [
    i32 0, label %bb.c
    i32 1, label %bb.h
    i32 2, label %bb.m
    i32 3, label %bb.x
    i32 5, label %bb.ai
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %bb.d, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %i.e, align 1, !tbaa !17    ; 2 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit.thread, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit

_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit.thread: ; preds = %bb.d
  %i.k = zext nneg i8 %i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.l, ptr %0, align 8, !tbaa !7
  br label %bb.e

_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit: ; preds = %bb.c, %bb.d
  %i.m = tail call { i64, i8 } @_ZN6google8protobuf2io16CodedInputStream20ReadVarint64FallbackEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i8 } %i.m, 0
  %.fca.1.extract.i = extractvalue { i64, i8 } %i.m, 1
  %i.n = trunc i8 %.fca.1.extract.i to i1
  br i1 %i.n, label %bb.e, label %_ZN6google8protobuf8internal14WireFormatLite11SkipMessageEPNS0_2io16CodedInputStreamEPNS3_17CodedOutputStreamE.exit

bb.e:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit.thread, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit
  %.0108111 = phi i64 [ %i.k, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit.thread ], [ %.fca.0.extract.i, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22   ; 3 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !27
  %.not.i.i = icmp ult ptr %i.p, %i.q
  br i1 %.not.i.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.r = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %i.p)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i = phi ptr [ %i.r, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %i.s = icmp ugt i32 %1, 127
  br i1 %i.s, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream13WriteVarint32Ej.exit, !prof !28

.lr.ph.i.i:                                       ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %.0.i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i ] ; 2 uses
  %.07.i1.i.i = phi i32 [ %i.v, %.lr.ph.i.i ], [ %1, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i ] ; 3 uses
  %i.t = trunc i32 %.07.i1.i.i to i8
  %i.u = or i8 %i.t, -128
  store i8 %i.u, ptr %.0.i2.i.i, align 1, !tbaa !17
  %i.v = lshr i32 %.07.i1.i.i, 7                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 1 ; 2 uses
  %i.x = icmp ugt i32 %.07.i1.i.i, 16383
  br i1 %i.x, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream13WriteVarint32Ej.exit, !prof !29, !llvm.loop !30

_ZN6google8protobuf2io17CodedOutputStream13WriteVarint32Ej.exit: ; preds = %.lr.ph.i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i
  %.07.i.lcssa.i.i = phi i32 [ %1, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i ], [ %i.v, %.lr.ph.i.i ]
  %.0.i.lcssa.i.i = phi ptr [ %.0.i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i ], [ %i.w, %.lr.ph.i.i ] ; 2 uses
  %i.y = trunc nuw nsw i32 %.07.i.lcssa.i.i to i8
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i, i64 1 ; 4 uses
  store i8 %i.y, ptr %.0.i.lcssa.i.i, align 1, !tbaa !17
  store ptr %i.z, ptr %i.o, align 8, !tbaa !22
  %i.aa = load ptr, ptr %2, align 8, !tbaa !27
  %.not.i.i30 = icmp ult ptr %i.z, %i.aa
  br i1 %.not.i.i30, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i31, label %bb.g, !prof !16

bb.g:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream13WriteVarint32Ej.exit
  %i.ab = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %i.z)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i31

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i31: ; preds = %bb.g, %_ZN6google8protobuf2io17CodedOutputStream13WriteVarint32Ej.exit
  %.0.i.i32 = phi ptr [ %i.ab, %bb.g ], [ %i.z, %_ZN6google8protobuf2io17CodedOutputStream13WriteVarint32Ej.exit ] ; 2 uses
  %i.ac = icmp ugt i64 %.0108111, 127
  br i1 %i.ac, label %.lr.ph.i.i35, label %_ZN6google8protobuf2io17CodedOutputStream13WriteVarint64Em.exit, !prof !28

.lr.ph.i.i35:                                     ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i31, %.lr.ph.i.i35
  %.0.i2.i.i36 = phi ptr [ %i.ag, %.lr.ph.i.i35 ], [ %.0.i.i32, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i31 ] ; 2 uses
  %.07.i1.i.i37 = phi i64 [ %i.af, %.lr.ph.i.i35 ], [ %.0108111, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i31 ] ; 3 uses
  %i.ad = trunc i64 %.07.i1.i.i37 to i8
  %i.ae = or i8 %i.ad, -128
  store i8 %i.ae, ptr %.0.i2.i.i36, align 1, !tbaa !17
  %i.af = lshr i64 %.07.i1.i.i37, 7               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i2.i.i36, i64 1 ; 2 uses
  %i.ah = icmp ugt i64 %.07.i1.i.i37, 16383
  br i1 %i.ah, label %.lr.ph.i.i35, label %_ZN6google8protobuf2io17CodedOutputStream13WriteVarint64Em.exit, !prof !29, !llvm.loop !32

_ZN6google8protobuf2io17CodedOutputStream13WriteVarint64Em.exit: ; preds = %.lr.ph.i.i35, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i31
  %.07.i.lcssa.i.i33 = phi i64 [ %.0108111, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i31 ], [ %i.af, %.lr.ph.i.i35 ]
  %.0.i.lcssa.i.i34 = phi ptr [ %.0.i.i32, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i31 ], [ %i.ag, %.lr.ph.i.i35 ] ; 2 uses
  %i.ai = trunc nuw nsw i64 %.07.i.lcssa.i.i33 to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i34, i64 1
  store i8 %i.ai, ptr %.0.i.lcssa.i.i34, align 1, !tbaa !17
  store ptr %i.aj, ptr %i.o, align 8, !tbaa !22
  br label %_ZN6google8protobuf8internal14WireFormatLite11SkipMessageEPNS0_2io16CodedInputStreamEPNS3_17CodedOutputStreamE.exit

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !15
  %i.am = load ptr, ptr %0, align 8, !tbaa !7     ; 3 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = icmp sgt i32 %i.aq, 7
  br i1 %i.ar, label %_ZN6google8protobuf2io16CodedInputStream18ReadLittleEndian64EPm.exit.thread, label %_ZN6google8protobuf2io16CodedInputStream18ReadLittleEndian64EPm.exit, !prof !16

_ZN6google8protobuf2io16CodedInputStream18ReadLittleEndian64EPm.exit.thread: ; preds = %bb.h
  %i.as = load i64, ptr %i.am, align 1
  store i64 %i.as, ptr %i.a, align 8, !tbaa !33
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.at, ptr %0, align 8, !tbaa !7
  br label %bb.i

_ZN6google8protobuf2io16CodedInputStream18ReadLittleEndian64EPm.exit: ; preds = %bb.h
  %i.au = call noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream26ReadLittleEndian64FallbackEPm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.a)
  br i1 %i.au, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream18ReadLittleEndian64EPm.exit.thread, %_ZN6google8protobuf2io16CodedInputStream18ReadLittleEndian64EPm.exit
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !22 ; 3 uses
  %i.ax = load ptr, ptr %2, align 8, !tbaa !27
  %.not.i.i39 = icmp ult ptr %i.aw, %i.ax
  br i1 %.not.i.i39, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i40, label %bb.j, !prof !16

bb.j:                                             ; preds = %bb.i
  %i.ay = call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %i.aw)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i40
end_hunk_0
