Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/CiffParser?download=true
inline.NumInlined: 332
inline.NumDeleted: 257
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array" = type { [8192 x i8] }
%"class.rawspeed::ByteStream" = type { %"class.rawspeed::DataBuffer.base", i32, [4 x i8] }
%"class.rawspeed::DataBuffer.base" = type { %"class.rawspeed::Buffer.base", i16 }
%"class.rawspeed::Buffer.base" = type <{ ptr, i32 }>
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%"class.std::unique_ptr.10" = type { %"struct.std::__uniq_ptr_data.11" }
%"struct.std::__uniq_ptr_data.11" = type { %"class.std::__uniq_ptr_impl.12" }
%"class.std::__uniq_ptr_impl.12" = type { %"class.std::tuple.13" }
%"class.std::tuple.13" = type { %"struct.std::_Tuple_impl.14" }
%"struct.std::_Tuple_impl.14" = type { %"struct.std::_Head_base.17" }
%"struct.std::_Head_base.17" = type { ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<const rawspeed::CiffIFD *, std::allocator<const rawspeed::CiffIFD *>>::_Vector_impl" }
%"struct.std::_Vector_base<const rawspeed::CiffIFD *, std::allocator<const rawspeed::CiffIFD *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const rawspeed::CiffIFD *, std::allocator<const rawspeed::CiffIFD *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const rawspeed::CiffIFD *, std::allocator<const rawspeed::CiffIFD *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN8rawspeed14ThrowExceptionINS_19CiffParserExceptionEEEvPKcz = comdat any

$_ZN8rawspeed10CiffParserD2Ev = comdat any

$_ZN8rawspeed10CiffParserD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz = comdat any

$_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZN8rawspeed17RawspeedExceptionC2EPKc = comdat any

$_ZN8rawspeed17RawspeedException3logEPKc = comdat any

$_ZNKSt14default_deleteIKN8rawspeed7CiffIFDEEclEPS2_ = comdat any

$_ZNSt8_Rb_treeIN8rawspeed7CiffTagESt4pairIKS1_St10unique_ptrIKNS0_9CiffEntryESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZN8rawspeed19CiffParserExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_19CiffParserExceptionEEEvPKczE3buf = comdat any

@_ZTVN8rawspeed10CiffParserE = hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8rawspeed10CiffParserE, ptr @_ZN8rawspeed10CiffParserD2Ev, ptr @_ZN8rawspeed10CiffParserD0Ev, ptr @_ZN8rawspeed10CiffParser10getDecoderEPKNS_14CameraMetaDataE] }, align 8
@.str = private unnamed_addr constant [42 x i8] c"%s, line 48: Not a CIFF file (endianness)\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10CiffParser9parseDataEv = private unnamed_addr constant [39 x i8] c"void rawspeed::CiffParser::parseData()\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"%s, line 55: Not a CIFF file (ID)\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"%s, line 75: No decoder found. Sorry.\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10CiffParser10getDecoderEPKNS_14CameraMetaDataE = private unnamed_addr constant [93 x i8] c"virtual std::unique_ptr<RawDecoder> rawspeed::CiffParser::getDecoder(const CameraMetaData *)\00", align 1
@_ZTIN8rawspeed10CiffParserE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8rawspeed10CiffParserE, ptr @_ZTIN8rawspeed9RawParserE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN8rawspeed10CiffParserE = hidden constant [24 x i8] c"N8rawspeed10CiffParserE\00", align 1
@_ZTIN8rawspeed9RawParserE = external constant ptr
@.str.4 = private unnamed_addr constant [58 x i8] c"%s, line 80: Buffer overflow: image file may be truncated\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj = private unnamed_addr constant [64 x i8] c"Buffer rawspeed::Buffer::getSubView(size_type, size_type) const\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array" zeroinitializer, comdat, align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"EXCEPTION: %s\00", align 1
@_ZTIN8rawspeed11IOExceptionE = external constant ptr
@_ZTVN8rawspeed11IOExceptionE = external constant { [6 x ptr] }, align 8
@_ZTVN8rawspeed17RawspeedExceptionE = external constant { [6 x ptr] }, align 8
@.str.6 = private unnamed_addr constant [58 x i8] c"%s, line 87: Buffer overflow: image file may be truncated\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEj = private unnamed_addr constant [53 x i8] c"Buffer rawspeed::Buffer::getSubView(size_type) const\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_19CiffParserExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array" zeroinitializer, comdat, align 1
@_ZTIN8rawspeed19CiffParserExceptionE = external constant ptr
@_ZTVN8rawspeed19CiffParserExceptionE = external constant { [6 x ptr] }, align 8

@_ZN8rawspeed10CiffParserC1ENS_6BufferE = hidden unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN8rawspeed10CiffParserC2ENS_6BufferE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN8rawspeed10CiffParserC2ENS_6BufferE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 20), (24, 32)) %0, ptr %1, i32 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !14
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !15
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8rawspeed10CiffParserE, i64 16), ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.b, align 8, !tbaa !26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10CiffParser9parseDataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.rawspeed::ByteStream", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.02.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !14 ; 4 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.23.0.copyload = load i32, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !15 ; 6 uses
  %.not.i.i.i.i.i.i = icmp ult i32 %.sroa.23.0.copyload, 2
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZN8rawspeed10ByteStream6getU16Ev.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #14
  unreachable

_ZN8rawspeed10ByteStream6getU16Ev.exit:           ; preds = %bb.a
  %2 = icmp sgt i32 %.sroa.23.0.copyload, -1
  tail call void @llvm.assume(i1 %2)
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %.sroa.02.0.copyload, align 1
  %.not = icmp eq i16 %.0.copyload.i.i.i.i.i.i, 18761
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19CiffParserExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10CiffParser9parseDataEv) #14
  unreachable

bb.d:                                             ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit
  %.not.i.i.i.i.i.i6 = icmp samesign ult i32 %.sroa.23.0.copyload, 6
  br i1 %.not.i.i.i.i.i.i6, label %bb.e, label %_ZN8rawspeed10ByteStream6getU32Ev.exit

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #14
  unreachable

_ZN8rawspeed10ByteStream6getU32Ev.exit:           ; preds = %bb.d
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 2
  %.0.copyload.i.i.i.i.i.i7 = load i32, ptr %i.b, align 1 ; 3 uses
  %i.c = tail call noundef zeroext i1 @_ZN8rawspeed10CrwDecoder5isCRWENS_6BufferE(ptr nonnull %.sroa.02.0.copyload, i32 %.sroa.23.0.copyload)
  br i1 %i.c, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19CiffParserExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10CiffParser9parseDataEv) #14
  unreachable

bb.g:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %.not.i.i = icmp ugt i32 %.0.copyload.i.i.i.i.i.i7, %.sroa.23.0.copyload
  br i1 %.not.i.i, label %bb.h, label %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEj) #14, !noalias !31
  unreachable

_ZNK8rawspeed10ByteStream12getSubStreamEj.exit:   ; preds = %bb.g
  %i.d = zext nneg i32 %.0.copyload.i.i.i.i.i.i7 to i64
  %i.e = sub nuw nsw i32 %.sroa.23.0.copyload, %.0.copyload.i.i.i.i.i.i7
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 %i.d
  %.sroa.2.8.insert.ext.i = zext nneg i32 %i.e to i64
  %.sroa.2.8.insert.insert.i = or disjoint i64 %.sroa.2.8.insert.ext.i, 244834610708480
  store ptr %i.f, ptr %1, align 8, !alias.scope !31
  %.sroa.2.0..0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.2.8.insert.insert.i, ptr %.sroa.2.0..0..sroa_idx.i3.i, align 8, !alias.scope !31
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.g, align 8, !tbaa !36, !alias.scope !31
  %i.h = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #25, !noalias !37 ; 3 uses
  invoke void @_ZN8rawspeed7CiffIFDC1EPS0_NS_10ByteStreamE(ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef null, ptr noundef nonnull byval(%"class.rawspeed::ByteStream") align 8 %1)
          to label %_ZSt11make_uniqueIN8rawspeed7CiffIFDEJDnRNS0_10ByteStreamEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.i, !noalias !37

bb.i:                                             ; preds = %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 88) #26, !noalias !37
  resume { ptr, i32 } %i.i

_ZSt11make_uniqueIN8rawspeed7CiffIFDEJDnRNS0_10ByteStreamEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !19
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN8rawspeed7CiffIFDESt14default_deleteIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt11make_uniqueIN8rawspeed7CiffIFDEJDnRNS0_10ByteStreamEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  tail call void @_ZNKSt14default_deleteIKN8rawspeed7CiffIFDEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.k)
  br label %_ZNSt10unique_ptrIN8rawspeed7CiffIFDESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN8rawspeed7CiffIFDESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.j, %_ZSt11make_uniqueIN8rawspeed7CiffIFDEJDnRNS0_10ByteStreamEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19CiffParserExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19CiffParserExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #24 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN8rawspeed19CiffParserExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19CiffParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZN8rawspeed10CrwDecoder5isCRWENS_6BufferE(ptr, i32) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10CiffParser10getDecoderEPKNS_14CameraMetaDataE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.10") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree readnone captures(none) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %4 = alloca %"class.std::vector", align 8       ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8rawspeed10CiffParser9parseDataEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNK8rawspeed7CiffIFD14getIFDsWithTagENS_7CiffTagE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.c, i16 noundef zeroext 2058) #28
  %i.d = load ptr, ptr %4, align 8, !tbaa !46     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22
  %.sroa.029.047 = phi ptr [ %i.d, %.lr.ph ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22 ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.029.047, align 8, !tbaa !19
  %i.k = call noundef ptr @_ZNK8rawspeed7CiffIFD8getEntryENS_7CiffTagE(ptr noundef nonnull align 8 dereferenceable(88) %i.j, i16 noundef zeroext 2058) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.l = invoke { i64, ptr } @_ZNK8rawspeed9CiffEntry9getStringEv(ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.e unwind label %.loopexit33 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.m = extractvalue { i64, ptr } %i.l, 0        ; 6 uses
  %i.n = extractvalue { i64, ptr } %i.l, 1        ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.e, %bb.f
  %.0710.i.i.i = phi i64 [ %i.q, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.0710.i.i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !48, !noalias !47
  switch i8 %i.p, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i [
    i8 32, label %bb.f
    i8 9, label %bb.f
  ]

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.q = add nuw i64 %.0710.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.q, %i.m
  br i1 %exitcond.not.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !40

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i: ; preds = %bb.f, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %.0.i.i.i = phi i64 [ -1, %bb.f ], [ %.0710.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i ] ; 6 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12.i: ; preds = %bb.g, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i
  %.1.i.i.in.i = phi i64 [ %.1.i.i.i, %bb.g ], [ %i.m, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ] ; 2 uses
  %.1.i.i.i = add i64 %.1.i.i.in.i, -1            ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.1.i.i.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !48, !noalias !47
  switch i8 %i.s, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.i [
    i8 32, label %bb.g
    i8 9, label %bb.g
  ]

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12.i
  %.not15.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not15.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12.i, !llvm.loop !41

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12.i
  %i.t = icmp eq i64 %.0.i.i.i, -1
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22, label %bb.h

bb.h:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.i
  %i.u = icmp ugt i64 %.0.i.i.i, %i.m
  br i1 %i.u, label %bb.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i64 noundef %.0.i.i.i, i64 noundef %i.m) #27
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %bb.h
  %i.v = sub i64 %.1.i.i.in.i, %.0.i.i.i
  %i.w = sub nuw i64 %i.m, %.0.i.i.i
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.w, i64 %i.v) ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %.0.i.i.i ; 2 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !50, !alias.scope !47
  store i64 0, ptr %i.i, align 8, !tbaa !52, !alias.scope !47
  %i.y = icmp ugt i64 %.sroa.speculated.i.i, 15
  br i1 %i.y, label %bb.j, label %._crit_edge.i.i15.i

bb.j:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %i.z = icmp slt i64 %.sroa.speculated.i.i, 0
  br i1 %i.z, label %.noexc.i17.i, label %bb.k

.noexc.i17.i:                                     ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
          to label %.noexc16 unwind label %.loopexit.split-lp

.noexc16:                                         ; preds = %.noexc.i17.i
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.aa = add nuw i64 %.sroa.speculated.i.i, 1    ; 2 uses
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %.noexc4.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i16.i, !prof !53

.noexc4.i.i:                                      ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc17 unwind label %.loopexit.split-lp

.noexc17:                                         ; preds = %.noexc4.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i16.i: ; preds = %bb.k
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #25
          to label %.noexc18 unwind label %.loopexit33 ; 2 uses

.noexc18:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i16.i
  store ptr %i.ac, ptr %5, align 8, !tbaa !54, !alias.scope !47
  store i64 %.sroa.speculated.i.i, ptr %i.h, align 8, !tbaa !48, !alias.scope !47
  br label %._crit_edge.i.i15.i

._crit_edge.i.i15.i:                              ; preds = %.noexc18, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %i.ad = phi ptr [ %i.ac, %.noexc18 ], [ %i.h, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ] ; 3 uses
  switch i64 %.sroa.speculated.i.i, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZN8rawspeed10trimSpacesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  ]

bb.l:                                             ; preds = %._crit_edge.i.i15.i
  %i.ae = load i8, ptr %i.x, align 1, !tbaa !48, !noalias !47
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !48
  br label %_ZN8rawspeed10trimSpacesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.m:                                             ; preds = %._crit_edge.i.i15.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr align 1 %i.x, i64 %.sroa.speculated.i.i, i1 false)
  br label %_ZN8rawspeed10trimSpacesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN8rawspeed10trimSpacesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %._crit_edge.i.i15.i, %bb.l, %bb.m
  store i64 %.sroa.speculated.i.i, ptr %i.i, align 8, !tbaa !52, !alias.scope !47
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sroa.speculated.i.i
  store i8 0, ptr %i.af, align 1, !tbaa !48
  %.pre55 = load i64, ptr %i.i, align 8, !tbaa !52
  %.pre56.pre = load ptr, ptr %5, align 8, !tbaa !54 ; 4 uses
  %i.ag = icmp eq i64 %.pre55, 5
  br i1 %i.ag, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN8rawspeed10trimSpacesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ah = load i32, ptr %.pre56.pre, align 1
  %i.ai = xor i32 %i.ah, 1869504835
  %i.aj = getelementptr i8, ptr %.pre56.pre, i64 4
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i32
  %i.am = xor i32 %i.al, 110
  %i.an = or i32 %i.ai, %i.am
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ar = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #25
          to label %.noexc19 unwind label %bb.r   ; 3 uses

.noexc19:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !55
  store i64 %i.at, ptr %3, align 8, !tbaa !19, !noalias !55
  store ptr null, ptr %i.a, align 8, !tbaa !19, !noalias !55
  %.sroa.0.0.copyload.i = load ptr, ptr %i.as, align 8, !tbaa !14, !noalias !55
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !15, !noalias !55
  invoke void @_ZN8rawspeed10CrwDecoderC1ESt10unique_ptrIKNS_7CiffIFDESt14default_deleteIS3_EENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(104) %i.ar, ptr noundef nonnull align 8 %3, ptr %.sroa.0.0.copyload.i, i32 %.sroa.2.0.copyload.i)
          to label %bb.n unwind label %bb.p, !noalias !55

bb.n:                                             ; preds = %.noexc19
  %i.au = load ptr, ptr %3, align 8, !tbaa !19, !noalias !55 ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN8rawspeed10CrwDecoderESt14default_deleteIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNKSt14default_deleteIKN8rawspeed7CiffIFDEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.au), !noalias !55, !inline_history !0
  br label %_ZNSt10unique_ptrIN8rawspeed10CrwDecoderESt14default_deleteIS1_EED2Ev.exit

bb.p:                                             ; preds = %.noexc19
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %3, align 8, !tbaa !19, !noalias !55 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.aw, null
  br i1 %.not.i4.i, label %_ZNSt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS2_EED2Ev.exit5.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZNKSt14default_deleteIKN8rawspeed7CiffIFDEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.aw), !noalias !55, !inline_history !0
  br label %_ZNSt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS2_EED2Ev.exit5.i

_ZNSt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS2_EED2Ev.exit5.i: ; preds = %bb.q, %bb.p
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef 104) #26, !noalias !55
  br label %.body

_ZNSt10unique_ptrIN8rawspeed10CrwDecoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %i.ar, ptr %0, align 8, !tbaa !58
  %i.ax = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.h
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN8rawspeed10CrwDecoderESt14default_deleteIS1_EED2Ev.exit
  %i.az = load i64, ptr %i.h, align 8, !tbaa !48
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN8rawspeed10CrwDecoderESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.loopexitthread-pre-split

.loopexit33:                                      ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i16.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

.loopexit.split-lp:                               ; preds = %bb.i, %.noexc.i17.i, %.noexc4.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.r:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS2_EED2Ev.exit5.i, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.bb, %bb.r ], [ %i.av, %_ZNSt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS2_EED2Ev.exit5.i ] ; 2 uses
  %i.bc = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.h
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

.critedge:                                        ; preds = %_ZN8rawspeed10trimSpacesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.be = icmp eq ptr %.pre56.pre, %i.h
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %.critedge
  %i.bf = load i64, ptr %i.h, align 8, !tbaa !48
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %.pre56.pre, i64 noundef %i.bg) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22: ; preds = %bb.g, %.critedge, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.i, %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.029.047, i64 8 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.f
  br i1 %i.bi, label %.loopexitthread-pre-split, label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %.body
  %i.bj = load i64, ptr %i.h, align 8, !tbaa !48
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bk) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %.body, %.loopexit33, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit33 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.bl = load ptr, ptr %4, align 8, !tbaa !60    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN8rawspeed7CiffIFDESaIS3_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !61
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #26
  br label %_ZNSt6vectorIPKN8rawspeed7CiffIFDESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN8rawspeed7CiffIFDESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn.pn

.loopexitthread-pre-split:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.ph = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22 ]
  %.pr = load ptr, ptr %4, align 8, !tbaa !60
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexitthread-pre-split, %bb.c
  %i.br = phi ptr [ %.pr, %.loopexitthread-pre-split ], [ %i.d, %bb.c ] ; 3 uses
  %i.bs = phi i1 [ %.ph, %.loopexitthread-pre-split ], [ true, %bb.c ]
  %.not.i.i.i27 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIPKN8rawspeed7CiffIFDESaIS3_EED2Ev.exit28, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !61
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bx) #26
  br label %_ZNSt6vectorIPKN8rawspeed7CiffIFDESaIS3_EED2Ev.exit28

_ZNSt6vectorIPKN8rawspeed7CiffIFDESaIS3_EED2Ev.exit28: ; preds = %.loopexit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %i.bs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorIPKN8rawspeed7CiffIFDESaIS3_EED2Ev.exit28
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19CiffParserExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10CiffParser10getDecoderEPKNS_14CameraMetaDataE) #14
  unreachable

bb.v:                                             ; preds = %_ZNSt6vectorIPKN8rawspeed7CiffIFDESaIS3_EED2Ev.exit28
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(read, argmem: readwrite)
declare void @_ZNK8rawspeed7CiffIFD14getIFDsWithTagENS_7CiffTagE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull readonly align 8 dereferenceable(88), i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZNK8rawspeed7CiffIFD8getEntryENS_7CiffTagE(ptr noundef nonnull align 8 dereferenceable(88), i16 noundef zeroext) local_unnamed_addr #6

declare { i64, ptr } @_ZNK8rawspeed9CiffEntry9getStringEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed10CiffParserD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt14default_deleteIKN8rawspeed7CiffIFDEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b), !inline_history !0
  br label %_ZNSt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed10CiffParserD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN8rawspeed10CiffParserD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt14default_deleteIKN8rawspeed7CiffIFDEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b), !inline_history !0
  br label %_ZN8rawspeed10CiffParserD2Ev.exit

_ZN8rawspeed10CiffParserD2Ev.exit:                ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #26
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #24 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed11IOExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #10

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #10

declare void @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #31
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed11IOExceptionE, i64 16), ptr %0, align 8, !tbaa !17
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !17
  invoke void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %1) #31
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  resume { ptr, i32 } %i.a
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.5, ptr noundef %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #17

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #18

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNKSt14default_deleteIKN8rawspeed7CiffIFDEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  invoke void @_ZNSt8_Rb_treeIN8rawspeed7CiffTagESt4pairIKS1_St10unique_ptrIKNS0_9CiffEntryESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.d)
          to label %_ZNSt3mapIN8rawspeed7CiffTagESt10unique_ptrIKNS0_9CiffEntryESt14default_deleteIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #30
  unreachable

_ZNSt3mapIN8rawspeed7CiffTagESt10unique_ptrIKNS0_9CiffEntryESt14default_deleteIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !70   ; 2 uses
  %.not.i2 = icmp eq ptr %i.h, %i.j
  br i1 %.not.i2, label %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS3_EEEvT_S8_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt3mapIN8rawspeed7CiffTagESt10unique_ptrIKNS0_9CiffEntryESt14default_deleteIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit, %_ZSt10destroy_atISt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS3_EEEvPT_.exit.i
  %.0.i3 = phi ptr [ %i.l, %_ZSt10destroy_atISt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS3_EEEvPT_.exit.i ], [ %i.h, %_ZNSt3mapIN8rawspeed7CiffTagESt10unique_ptrIKNS0_9CiffEntryESt14default_deleteIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit ] ; 4 uses
  %i.k = load ptr, ptr %.0.i3, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i1, label %_ZSt10destroy_atISt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS3_EEEvPT_.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  tail call void @_ZNKSt14default_deleteIKN8rawspeed7CiffIFDEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %.0.i3, ptr noundef nonnull %i.k), !inline_history !62
  br label %_ZSt10destroy_atISt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS3_EEEvPT_.exit.i

_ZSt10destroy_atISt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS3_EEEvPT_.exit.i: ; preds = %bb.d, %.lr.ph
  store ptr null, ptr %.0.i3, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i3, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.j
  br i1 %.not.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS3_EEEvT_S8_.exit.i.loopexit, label %.lr.ph, !llvm.loop !63

_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS3_EEEvT_S8_.exit.i.loopexit: ; preds = %_ZSt10destroy_atISt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS3_EEEvPT_.exit.i
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !69
  br label %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS3_EEEvT_S8_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS3_EEEvT_S8_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS3_EEEvT_S8_.exit.i.loopexit, %_ZNSt3mapIN8rawspeed7CiffTagESt10unique_ptrIKNS0_9CiffEntryESt14default_deleteIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit
  %i.m = phi ptr [ %.pre, %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS3_EEEvT_S8_.exit.i.loopexit ], [ %i.h, %_ZNSt3mapIN8rawspeed7CiffTagESt10unique_ptrIKNS0_9CiffEntryESt14default_deleteIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS3_EEEvT_S8_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #26, !inline_history !64
  br label %_ZNSt6vectorISt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS3_EEEvT_S8_.exit.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 88) #26
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS3_EESaIS6_EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN8rawspeed7CiffTagESt4pairIKS1_St10unique_ptrIKNS0_9CiffEntryESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIN8rawspeed7CiffTagESt4pairIKS1_St10unique_ptrIKNS0_9CiffEntryESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIN8rawspeed7CiffTagESt4pairIKS1_St10unique_ptrIKNS0_9CiffEntryESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  tail call void @_ZNSt8_Rb_treeIN8rawspeed7CiffTagESt4pairIKS1_St10unique_ptrIKNS0_9CiffEntryESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8_Rb_treeIN8rawspeed7CiffTagESt4pairIKS1_St10unique_ptrIKNS0_9CiffEntryESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt14default_deleteIKN8rawspeed9CiffEntryEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIKN8rawspeed9CiffEntryEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 32) #26
  br label %_ZNSt8_Rb_treeIN8rawspeed7CiffTagESt4pairIKS1_St10unique_ptrIKNS0_9CiffEntryESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeIN8rawspeed7CiffTagESt4pairIKS1_St10unique_ptrIKNS0_9CiffEntryESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIKN8rawspeed9CiffEntryEEclEPS2_.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #26
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !72

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIN8rawspeed7CiffTagESt4pairIKS1_St10unique_ptrIKNS0_9CiffEntryESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19CiffParserExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #31
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19CiffParserExceptionE, i64 16), ptr %0, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #21

declare void @_ZN8rawspeed7CiffIFDC1EPS0_NS_10ByteStreamE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef byval(%"class.rawspeed::ByteStream") align 8) unnamed_addr #4

declare void @_ZN8rawspeed10CrwDecoderC1ESt10unique_ptrIKNS_7CiffIFDESt14default_deleteIS3_EENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef align 8, ptr, i32) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nounwind willreturn memory(read, argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { cold noreturn }
attributes #15 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn }
attributes #28 = { nounwind willreturn memory(read, argmem: readwrite) }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { noreturn nounwind }
attributes #31 = { cold }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!9, !9, i64 0}
!16 = !{!"vtable pointer", !7, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"p1 _ZTSN8rawspeed7CiffIFDE", !12, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"long", !8, i64 0}
!22 = !{!"_ZTSSt14_Rb_tree_color", !8, i64 0}
!23 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!24 = !{!"_ZTSSt18_Rb_tree_node_base", !22, i64 0, !23, i64 8, !23, i64 16, !23, i64 24}
!25 = !{!"_ZTSSt10_Head_baseILm0EPKN8rawspeed7CiffIFDELb0EE", !18, i64 0}
!26 = !{!25, !18, i64 0}
!27 = distinct !{!27, !"_ZNK8rawspeed10ByteStream12getSubStreamEj"}
!28 = distinct !{!28, !27, !"_ZNK8rawspeed10ByteStream12getSubStreamEj: argument 0"}
!29 = distinct !{!29, !"_ZSt11make_uniqueIN8rawspeed7CiffIFDEJDnRNS0_10ByteStreamEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!30 = distinct !{!30, !29, !"_ZSt11make_uniqueIN8rawspeed7CiffIFDEJDnRNS0_10ByteStreamEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!31 = !{!28}
!32 = !{!"_ZTSN8rawspeed6BufferE", !13, i64 0, !9, i64 8}
!33 = !{!"_ZTSN8rawspeed10EndiannessE", !8, i64 0}
!34 = !{!"_ZTSN8rawspeed10DataBufferE", !32, i64 0, !33, i64 12}
!35 = !{!"_ZTSN8rawspeed10ByteStreamE", !34, i64 0, !9, i64 16}
!36 = !{!35, !9, i64 16}
!37 = !{!30}
!38 = distinct !{!38, !"_ZN8rawspeed10trimSpacesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!39 = distinct !{!39, !38, !"_ZN8rawspeed10trimSpacesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!40 = distinct !{!40, !20}
!41 = distinct !{!41, !20}
!42 = distinct !{!42, !"_ZSt11make_uniqueIN8rawspeed10CrwDecoderEJSt10unique_ptrIKNS0_7CiffIFDESt14default_deleteIS4_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!43 = distinct !{!43, !42, !"_ZSt11make_uniqueIN8rawspeed10CrwDecoderEJSt10unique_ptrIKNS0_7CiffIFDESt14default_deleteIS4_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!44 = !{!"any p2 pointer", !12, i64 0}
!45 = !{!"p2 _ZTSN8rawspeed7CiffIFDE", !44, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!39}
!48 = !{!8, !8, i64 0}
!49 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!50 = !{!49, !13, i64 0}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !49, i64 0, !21, i64 8, !8, i64 16}
!52 = !{!51, !21, i64 8}
!53 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!54 = !{!51, !13, i64 0}
!55 = !{!43}
!56 = !{!"p1 _ZTSN8rawspeed10RawDecoderE", !12, i64 0}
!57 = !{!"_ZTSSt10_Head_baseILm0EPN8rawspeed10RawDecoderELb0EE", !56, i64 0}
!58 = !{!57, !56, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIPKN8rawspeed7CiffIFDESaIS3_EE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!60 = !{!59, !45, i64 0}
!61 = !{!59, !45, i64 16}
!62 = distinct !{null, null, null, null, null, null, null}
!63 = distinct !{!63, !20}
!64 = distinct !{null, null}
!65 = !{!"_ZTSSt15_Rb_tree_header", !24, i64 0, !21, i64 32}
!66 = !{!65, !23, i64 8}
!67 = !{!"p1 _ZTSSt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS2_EE", !12, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !67, i64 0, !67, i64 8, !67, i64 16}
!69 = !{!68, !67, i64 0}
!70 = !{!68, !67, i64 8}
!71 = !{!68, !67, i64 16}
!72 = distinct !{!72, !20}
!73 = !{!24, !23, i64 24}
!74 = !{!24, !23, i64 16}
!75 = !{!"p1 _ZTSN8rawspeed9CiffEntryE", !12, i64 0}
!76 = !{!75, !75, i64 0}
end_hunk_0
