Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/gcontainer?download=true
inline.NumInlined: 331
inline.NumDeleted: 256
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.photos_editing_formats::image_io::MessageHandler" = type { %"class.std::unique_ptr", %"class.std::unique_ptr.2", %"class.std::shared_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.std::unique_ptr.2" = type { %"struct.std::__uniq_ptr_data.3" }
%"struct.std::__uniq_ptr_data.3" = type { %"class.std::__uniq_ptr_impl.4" }
%"class.std::__uniq_ptr_impl.4" = type { %"class.std::tuple.5" }
%"class.std::tuple.5" = type { %"struct.std::_Tuple_impl.6" }
%"struct.std::_Tuple_impl.6" = type { %"struct.std::_Head_base.9" }
%"struct.std::_Head_base.9" = type { ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::unique_ptr.10" = type { %"struct.std::__uniq_ptr_data.11" }
%"struct.std::__uniq_ptr_data.11" = type { %"class.std::__uniq_ptr_impl.12" }
%"class.std::__uniq_ptr_impl.12" = type { %"class.std::tuple.13" }
%"class.std::tuple.13" = type { %"struct.std::_Tuple_impl.14" }
%"struct.std::_Tuple_impl.14" = type { %"struct.std::_Head_base.17" }
%"struct.std::_Head_base.17" = type { ptr }
%"class.photos_editing_formats::image_io::OStreamDataDestination" = type { %"class.photos_editing_formats::image_io::OStreamRefDataDestination.base", %"class.std::unique_ptr.10" }
%"class.photos_editing_formats::image_io::OStreamRefDataDestination.base" = type <{ %"class.photos_editing_formats::image_io::DataDestination", ptr, ptr, i64, %"class.std::__cxx11::basic_string", i8 }>
%"class.photos_editing_formats::image_io::DataDestination" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.photos_editing_formats::image_io::DataRange" = type { i64, i64 }
%"class.std::unique_ptr.18" = type { %"struct.std::__uniq_ptr_data.19" }
%"struct.std::__uniq_ptr_data.19" = type { %"class.std::__uniq_ptr_impl.20" }
%"class.std::__uniq_ptr_impl.20" = type { %"class.std::tuple.21" }
%"class.std::tuple.21" = type { %"struct.std::_Tuple_impl.22" }
%"struct.std::_Tuple_impl.22" = type { %"struct.std::_Head_base.25" }
%"struct.std::_Head_base.25" = type { ptr }
%"class.photos_editing_formats::image_io::IStreamDataSource" = type { %"class.photos_editing_formats::image_io::IStreamRefDataSource", %"class.std::unique_ptr.18" }
%"class.photos_editing_formats::image_io::IStreamRefDataSource" = type { %"class.photos_editing_formats::image_io::DataSource", ptr, %"class.std::shared_ptr.26" }
%"class.photos_editing_formats::image_io::DataSource" = type { ptr }
%"class.std::shared_ptr.26" = type { %"class.std::__shared_ptr.27" }
%"class.std::__shared_ptr.27" = type { ptr, %"class.std::__shared_count" }
%"class.photos_editing_formats::image_io::DataSegmentDataSource" = type { %"class.photos_editing_formats::image_io::DataSource", %"class.std::shared_ptr.26" }
%"class.photos_editing_formats::image_io::JpegInfoBuilder" = type { %"class.photos_editing_formats::image_io::JpegSegmentProcessor", i32, i32, %"class.std::vector.33", %"class.std::vector.33", %"class.std::vector.33", %"class.photos_editing_formats::image_io::DataRange", %"class.std::__cxx11::basic_string", %"class.photos_editing_formats::image_io::JpegXmpInfoBuilder", %"class.photos_editing_formats::image_io::JpegXmpInfoBuilder", %"class.photos_editing_formats::image_io::JpegInfo", %"class.std::set" }
%"class.photos_editing_formats::image_io::JpegSegmentProcessor" = type { ptr }
%"class.std::vector.33" = type { %"struct.std::_Vector_base.34" }
%"struct.std::_Vector_base.34" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.photos_editing_formats::image_io::JpegXmpInfoBuilder" = type { i32, %"class.std::vector.38", %"class.photos_editing_formats::image_io::DataRange" }
%"class.std::vector.38" = type { %"struct.std::_Vector_base.39" }
%"struct.std::_Vector_base.39" = type { %"struct.std::_Vector_base<photos_editing_formats::image_io::DataRange, std::allocator<photos_editing_formats::image_io::DataRange>>::_Vector_impl" }
%"struct.std::_Vector_base<photos_editing_formats::image_io::DataRange, std::allocator<photos_editing_formats::image_io::DataRange>>::_Vector_impl" = type { %"struct.std::_Vector_base<photos_editing_formats::image_io::DataRange, std::allocator<photos_editing_formats::image_io::DataRange>>::_Vector_impl_data" }
%"struct.std::_Vector_base<photos_editing_formats::image_io::DataRange, std::allocator<photos_editing_formats::image_io::DataRange>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.photos_editing_formats::image_io::JpegInfo" = type { %"class.std::vector.38", %"class.std::vector.43", %"class.photos_editing_formats::image_io::DataRange", %"class.photos_editing_formats::image_io::DataRange", %"class.std::vector.48" }
%"class.std::vector.43" = type { %"struct.std::_Vector_base.44" }
%"struct.std::_Vector_base.44" = type { %"struct.std::_Vector_base<photos_editing_formats::image_io::JpegSegmentInfo, std::allocator<photos_editing_formats::image_io::JpegSegmentInfo>>::_Vector_impl" }
%"struct.std::_Vector_base<photos_editing_formats::image_io::JpegSegmentInfo, std::allocator<photos_editing_formats::image_io::JpegSegmentInfo>>::_Vector_impl" = type { %"struct.std::_Vector_base<photos_editing_formats::image_io::JpegSegmentInfo, std::allocator<photos_editing_formats::image_io::JpegSegmentInfo>>::_Vector_impl_data" }
%"struct.std::_Vector_base<photos_editing_formats::image_io::JpegSegmentInfo, std::allocator<photos_editing_formats::image_io::JpegSegmentInfo>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.48" = type { %"struct.std::_Vector_base.49" }
%"struct.std::_Vector_base.49" = type { %"struct.std::_Vector_base<photos_editing_formats::image_io::JpegXmpInfo, std::allocator<photos_editing_formats::image_io::JpegXmpInfo>>::_Vector_impl" }
%"struct.std::_Vector_base<photos_editing_formats::image_io::JpegXmpInfo, std::allocator<photos_editing_formats::image_io::JpegXmpInfo>>::_Vector_impl" = type { %"struct.std::_Vector_base<photos_editing_formats::image_io::JpegXmpInfo, std::allocator<photos_editing_formats::image_io::JpegXmpInfo>>::_Vector_impl_data" }
%"struct.std::_Vector_base<photos_editing_formats::image_io::JpegXmpInfo, std::allocator<photos_editing_formats::image_io::JpegXmpInfo>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::set" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.photos_editing_formats::image_io::JpegScanner" = type <{ ptr, ptr, ptr, %"class.std::bitset", %"class.std::shared_ptr.26", %"class.std::shared_ptr.26", i64, i8, i8, [6 x i8] }>
%"class.std::bitset" = type { %"struct.std::_Base_bitset" }
%"struct.std::_Base_bitset" = type { [4 x i64] }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon.32 }
%union.anon.32 = type { i32 }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

@_ZTVN22photos_editing_formats8image_io22OStreamDataDestinationE = linkonce_odr unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN22photos_editing_formats8image_io22OStreamDataDestinationE, ptr @_ZN22photos_editing_formats8image_io22OStreamDataDestinationD2Ev, ptr @_ZN22photos_editing_formats8image_io22OStreamDataDestinationD0Ev, ptr @_ZN22photos_editing_formats8image_io25OStreamRefDataDestination13StartTransferEv, ptr @_ZN22photos_editing_formats8image_io25OStreamRefDataDestination8TransferERKNS0_9DataRangeERKNS0_11DataSegmentE, ptr @_ZN22photos_editing_formats8image_io25OStreamRefDataDestination14FinishTransferEv, ptr @_ZNK22photos_editing_formats8image_io25OStreamRefDataDestination19GetBytesTransferredEv] }, align 8, !guid !17
@_ZTIN22photos_editing_formats8image_io22OStreamDataDestinationE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN22photos_editing_formats8image_io22OStreamDataDestinationE, ptr @_ZTIN22photos_editing_formats8image_io25OStreamRefDataDestinationE }, align 8, !guid !18
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN22photos_editing_formats8image_io22OStreamDataDestinationE = linkonce_odr constant [60 x i8] c"N22photos_editing_formats8image_io22OStreamDataDestinationE\00", align 1, !guid !19
@_ZTIN22photos_editing_formats8image_io25OStreamRefDataDestinationE = external constant ptr
@_ZTVN22photos_editing_formats8image_io25OStreamRefDataDestinationE = external unnamed_addr constant { [8 x ptr] }, align 8
@.str = private unnamed_addr constant [16 x i8] c"No Images Found\00", align 1, !guid !20
@_ZTVN22photos_editing_formats8image_io20IStreamRefDataSourceE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVN22photos_editing_formats8image_io15JpegInfoBuilderE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVN22photos_editing_formats8image_io17IStreamDataSourceE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN22photos_editing_formats8image_io17IStreamDataSourceE, ptr @_ZN22photos_editing_formats8image_io17IStreamDataSourceD2Ev, ptr @_ZN22photos_editing_formats8image_io17IStreamDataSourceD0Ev, ptr @_ZN22photos_editing_formats8image_io20IStreamRefDataSource14GetDataSegmentEmm, ptr @_ZN22photos_editing_formats8image_io20IStreamRefDataSource5ResetEv, ptr @_ZN22photos_editing_formats8image_io20IStreamRefDataSource12TransferDataERKNS0_9DataRangeEmPNS0_15DataDestinationE] }, align 8, !guid !21
@_ZTIN22photos_editing_formats8image_io17IStreamDataSourceE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN22photos_editing_formats8image_io17IStreamDataSourceE, ptr @_ZTIN22photos_editing_formats8image_io20IStreamRefDataSourceE }, align 8, !guid !22
@_ZTSN22photos_editing_formats8image_io17IStreamDataSourceE = linkonce_odr constant [55 x i8] c"N22photos_editing_formats8image_io17IStreamDataSourceE\00", align 1, !guid !23
@_ZTIN22photos_editing_formats8image_io20IStreamRefDataSourceE = external constant ptr
@_ZTVN22photos_editing_formats8image_io21DataSegmentDataSourceE = external unnamed_addr constant { [7 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN22photos_editing_formats8image_io10gcontainer18WriteImageAndFilesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS7_SaIS7_EES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !81 {
bb.a:
  %3 = alloca %"class.photos_editing_formats::image_io::MessageHandler", align 8 ; 14 uses
  %4 = alloca %"class.std::unique_ptr.10", align 8 ; 8 uses
  %5 = alloca %"class.photos_editing_formats::image_io::OStreamDataDestination", align 8 ; 19 uses
  %6 = alloca %"class.photos_editing_formats::image_io::DataRange", align 8 ; 9 uses
  %7 = alloca %"class.std::unique_ptr.18", align 8 ; 7 uses
  %8 = alloca %"class.photos_editing_formats::image_io::IStreamDataSource", align 8 ; 12 uses
  %9 = alloca %"class.std::unique_ptr.18", align 8 ; 3 uses
  %10 = alloca %"class.std::shared_ptr.26", align 8 ; 8 uses
  %11 = alloca %"class.photos_editing_formats::image_io::DataSegmentDataSource", align 8 ; 9 uses
  %12 = alloca %"class.photos_editing_formats::image_io::DataRange", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN22photos_editing_formats8image_io14MessageHandlerC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  invoke void @_ZN22photos_editing_formats8image_io14OpenOutputFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_14MessageHandlerE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.10") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit62, label %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit59

_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit: ; preds = %bb.b
  %i.c = ptrtoint ptr %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr null, ptr %4, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.e, align 8, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !37
  store i8 0, ptr %i.h, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  store i8 0, ptr %i.j, align 8, !tbaa !83
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN22photos_editing_formats8image_io22OStreamDataDestinationE, i64 16), ptr %5, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  store i64 %i.c, ptr %i.k, align 8, !tbaa !26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN22photos_editing_formats8image_io25OStreamRefDataDestination7SetNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.f

_ZN22photos_editing_formats8image_io25OStreamRefDataDestination7SetNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  invoke void @_ZN22photos_editing_formats8image_io13OpenInputFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_14MessageHandlerE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.18") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN22photos_editing_formats8image_io25OStreamRefDataDestination7SetNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.l = load ptr, ptr %7, align 8, !tbaa !42
  %i.m = invoke fastcc noundef zeroext i1 @_ZN22photos_editing_formats8image_io10gcontainer12_GLOBAL__N_123ExtractFirstImageInJpegERSiPNS0_14MessageHandlerEPNS0_9DataRangeE(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef %3, ptr noundef %6)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  br i1 %i.m, label %bb.i, label %bb.ax

bb.f:                                             ; preds = %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.g:                                             ; preds = %_ZN22photos_editing_formats8image_io25OStreamRefDataDestination7SetNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit56

bb.h:                                             ; preds = %bb.i, %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.i:                                             ; preds = %bb.e
  invoke void @_ZN22photos_editing_formats8image_io25OStreamRefDataDestination13StartTransferEv(ptr noundef nonnull align 8 dereferenceable(65) %5)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  invoke void @_ZN22photos_editing_formats8image_io13OpenInputFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_14MessageHandlerE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.18") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.q = load ptr, ptr %9, align 8                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.q, ptr %i.r, align 8, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN22photos_editing_formats8image_io17IStreamDataSourceE, i64 16), ptr %8, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.u = ptrtoint ptr %i.q to i64
  store i64 %i.u, ptr %i.t, align 8, !tbaa !42
  store ptr null, ptr %9, align 8, !tbaa !42
  %i.v = load i64, ptr %6, align 8, !tbaa !84
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !44
  %spec.select.i = call noundef i64 @llvm.usub.sat.i64(i64 %i.x, i64 %i.v)
  %i.y = invoke noundef i32 @_ZN22photos_editing_formats8image_io20IStreamRefDataSource12TransferDataERKNS0_9DataRangeEmPNS0_15DataDestinationE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %spec.select.i, ptr noundef nonnull %5)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.z = load i64, ptr %6, align 8, !tbaa !84
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !44
  %spec.select.i42 = call noundef i64 @llvm.usub.sat.i64(i64 %i.aa, i64 %i.z) ; 2 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !86    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !86 ; 2 uses
  %.not7781 = icmp eq ptr %i.ab, %i.ad
  br i1 %.not7781, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %bb.o

._crit_edge:                                      ; preds = %bb.al, %bb.l
  %.0.lcssa = phi i64 [ %spec.select.i42, %bb.l ], [ %.2, %bb.al ]
  invoke void @_ZN22photos_editing_formats8image_io25OStreamRefDataDestination14FinishTransferEv(ptr noundef nonnull align 8 dereferenceable(65) %5)
          to label %13 unwind label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.n:                                             ; preds = %bb.k, %._crit_edge
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.o:                                             ; preds = %.lr.ph, %bb.al
  %.083 = phi i64 [ %spec.select.i42, %.lr.ph ], [ %.2, %bb.al ] ; 3 uses
  %.sroa.068.082 = phi ptr [ %i.ab, %.lr.ph ], [ %i.cg, %bb.al ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.068.082, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !37
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.al, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  invoke void @_ZN22photos_editing_formats8image_io14ReadEntireFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_14MessageHandlerE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.26") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.068.082, ptr noundef nonnull %3)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.an = load ptr, ptr %10, align 8, !tbaa !87   ; 4 uses
  %.not78 = icmp eq ptr %i.an, null
  br i1 %.not78, label %bb.ae, label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN22photos_editing_formats8image_io21DataSegmentDataSourceE, i64 16), ptr %11, align 8, !tbaa !40
  store ptr %i.an, ptr %i.ae, align 8, !tbaa !87
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !49 ; 3 uses
  store ptr %i.ap, ptr %i.af, align 8, !tbaa !49
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !16
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !16
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.au = atomicrmw volatile add ptr %i.aq, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %10, align 8, !tbaa !87
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.u, %bb.v
  %i.av = phi ptr [ %i.an, %bb.s ], [ %i.an, %bb.u ], [ %.pre, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !51
  %i.aw = load i64, ptr %12, align 8, !tbaa !84
  %i.ax = load i64, ptr %i.ah, align 8, !tbaa !44
  %spec.select.i43 = call noundef i64 @llvm.usub.sat.i64(i64 %i.ax, i64 %i.aw) ; 2 uses
  %i.ay = add i64 %spec.select.i43, %.083
  %i.az = invoke noundef i32 @_ZN22photos_editing_formats8image_io21DataSegmentDataSource12TransferDataERKNS0_9DataRangeEmPNS0_15DataDestinationE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef %spec.select.i43, ptr noundef nonnull %5)
          to label %bb.x unwind label %bb.am      ; 0 uses

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN22photos_editing_formats8image_io21DataSegmentDataSourceE, i64 16), ptr %11, align 8, !tbaa !40
  %i.ba = load ptr, ptr %i.af, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %_ZN22photos_editing_formats8image_io21DataSegmentDataSourceD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bb, align 8, !tbaa !53
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !54
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !40
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #12, !inline_history !80
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #12, !inline_history !80
  br label %_ZN22photos_editing_formats8image_io21DataSegmentDataSourceD2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i45 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i45, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bn = add nsw i32 %i.be, -1
  store i32 %i.bn, ptr %i.bb, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.bo = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i = phi i32 [ %i.be, %bb.ab ], [ %i.bo, %bb.ac ]
  %i.bp = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bp, label %bb.ad, label %_ZN22photos_editing_formats8image_io21DataSegmentDataSourceD2Ev.exit, !prof !55

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #12
  br label %_ZN22photos_editing_formats8image_io21DataSegmentDataSourceD2Ev.exit

_ZN22photos_editing_formats8image_io21DataSegmentDataSourceD2Ev.exit: ; preds = %bb.x, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %bb.ae

bb.ae:                                            ; preds = %bb.q, %_ZN22photos_editing_formats8image_io21DataSegmentDataSourceD2Ev.exit
  %.1 = phi i64 [ %i.ay, %_ZN22photos_editing_formats8image_io21DataSegmentDataSourceD2Ev.exit ], [ %.083, %bb.q ]
  %i.bq = load ptr, ptr %i.ag, align 8, !tbaa !49 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.br, align 8, !tbaa !53
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !54
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !40
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #12, !inline_history !0
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !40
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #12, !inline_history !0
  br label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ah:                                            ; preds = %bb.af
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i46 = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i46, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i = phi i32 [ %i.bu, %bb.ai ], [ %i.ce, %bb.aj ]
  %i.cf = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cf, label %bb.ak, label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #12
  br label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ae, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %bb.al

bb.al:                                            ; preds = %bb.o, %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.2 = phi i64 [ %.1, %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %.083, %bb.o ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.068.082, i64 32 ; 2 uses
  %.not77 = icmp eq ptr %i.cg, %i.ad
  br i1 %.not77, label %._crit_edge, label %bb.o

bb.am:                                            ; preds = %bb.w
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @_ZN22photos_editing_formats8image_io21DataSegmentDataSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #12
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ch, %bb.am ], [ %i.ao, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %bb.av

13:                                               ; preds = %._crit_edge
  %14 = load i64, ptr %i.f, align 8, !tbaa !35
  %15 = icmp eq i64 %14, %.0.lcssa
  br i1 %15, label %16, label %bb.ao

16:                                               ; preds = %13
  %17 = load i8, ptr %i.j, align 8, !tbaa !83, !range !56, !noundef !57
  %18 = trunc nuw i8 %17 to i1
  %19 = xor i1 %18, true
  br label %bb.ao

bb.ao:                                            ; preds = %16, %13
  %20 = phi i1 [ false, %13 ], [ %19, %16 ]
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN22photos_editing_formats8image_io17IStreamDataSourceE, i64 16), ptr %8, align 8, !tbaa !40
  %i.ci = load ptr, ptr %i.t, align 8, !tbaa !42  ; 3 uses
  %.not.i.i47 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i47, label %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit.i, label %_ZNKSt14default_deleteISiEclEPSi.exit.i.i

_ZNKSt14default_deleteISiEclEPSi.exit.i.i:        ; preds = %bb.ao
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !40
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #12, !inline_history !1
  br label %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit.i

_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteISiEclEPSi.exit.i.i, %bb.ao
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN22photos_editing_formats8image_io20IStreamRefDataSourceE, i64 16), ptr %8, align 8, !tbaa !40
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i48 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i48, label %_ZN22photos_editing_formats8image_io17IStreamDataSourceD2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 4 uses
  %i.cp = load atomic i64, ptr %i.co acquire, align 8 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 4294967297
  %i.cr = trunc i64 %i.cp to i32                  ; 2 uses
  br i1 %i.cq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.co, align 8, !tbaa !53
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  store i32 0, ptr %i.cs, align 4, !tbaa !54
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !40
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #12, !inline_history !2
  %i.cw = load ptr, ptr %i.cn, align 8, !tbaa !40
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #12, !inline_history !2
  br label %_ZN22photos_editing_formats8image_io17IStreamDataSourceD2Ev.exit

bb.ar:                                            ; preds = %bb.ap
  %i.cz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i49 = icmp eq i8 %i.cz, 0
  br i1 %.not.i.i.i.i.i49, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.da = add nsw i32 %i.cr, -1
  store i32 %i.da, ptr %i.co, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.db = atomicrmw volatile add ptr %i.co, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i = phi i32 [ %i.cr, %bb.as ], [ %i.db, %bb.at ]
  %i.dc = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dc, label %bb.au, label %_ZN22photos_editing_formats8image_io17IStreamDataSourceD2Ev.exit, !prof !55

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #12, !inline_history !58
  br label %_ZN22photos_editing_formats8image_io17IStreamDataSourceD2Ev.exit

_ZN22photos_editing_formats8image_io17IStreamDataSourceD2Ev.exit: ; preds = %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit.i, %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.ax

bb.av:                                            ; preds = %bb.n, %bb.an
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %.pn, %bb.an ]
  call void @_ZN22photos_editing_formats8image_io17IStreamDataSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %8) #12
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.m
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.av ], [ %i.ai, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.ay

bb.ax:                                            ; preds = %bb.e, %_ZN22photos_editing_formats8image_io17IStreamDataSourceD2Ev.exit
  %.027 = phi i1 [ %20, %_ZN22photos_editing_formats8image_io17IStreamDataSourceD2Ev.exit ], [ false, %bb.e ] ; 2 uses
  %i.dd = load ptr, ptr %7, align 8, !tbaa !42    ; 3 uses
  %.not.i50 = icmp eq ptr %i.dd, null
  br i1 %.not.i50, label %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit52, label %_ZNKSt14default_deleteISiEclEPSi.exit.i51

_ZNKSt14default_deleteISiEclEPSi.exit.i51:        ; preds = %bb.ax
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !40
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #12, !inline_history !3
  br label %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit52

_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit52: ; preds = %bb.ax, %_ZNKSt14default_deleteISiEclEPSi.exit.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN22photos_editing_formats8image_io22OStreamDataDestinationE, i64 16), ptr %5, align 8, !tbaa !40
  %i.dh = load ptr, ptr %i.k, align 8, !tbaa !26  ; 3 uses
  %.not.i.i53 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i53, label %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit.i, label %_ZNKSt14default_deleteISoEclEPSo.exit.i.i

_ZNKSt14default_deleteISoEclEPSo.exit.i.i:        ; preds = %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit52
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !40
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.dh) #12, !inline_history !4
  br label %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit.i

_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteISoEclEPSo.exit.i.i, %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit52
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN22photos_editing_formats8image_io25OStreamRefDataDestinationE, i64 16), ptr %5, align 8, !tbaa !40
  %i.dl = load ptr, ptr %i.g, align 8, !tbaa !59  ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.h
  br i1 %i.dm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit.i
  %i.dn = load i64, ptr %i.h, align 8, !tbaa !38
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #13, !inline_history !60
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.ay:                                            ; preds = %bb.aw, %bb.h
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.aw ], [ %i.p, %bb.h ] ; 2 uses
  %i.dp = load ptr, ptr %7, align 8, !tbaa !42    ; 3 uses
  %.not.i54 = icmp eq ptr %i.dp, null
  br i1 %.not.i54, label %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit56, label %_ZNKSt14default_deleteISiEclEPSi.exit.i55

_ZNKSt14default_deleteISiEclEPSi.exit.i55:        ; preds = %bb.ay
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !40
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #12, !inline_history !3
  br label %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit56

_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit56: ; preds = %_ZNKSt14default_deleteISiEclEPSi.exit.i55, %bb.ay, %bb.g
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %.pn.pn.pn.pn.pn, %bb.ay ], [ %.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteISiEclEPSi.exit.i55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.az

bb.az:                                            ; preds = %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit56, %bb.f
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit56 ], [ %i.n, %bb.f ] ; 2 uses
  call void @_ZN22photos_editing_formats8image_io22OStreamDataDestinationD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.dt = load ptr, ptr %4, align 8, !tbaa !26    ; 3 uses
  %.not.i57 = icmp eq ptr %i.dt, null
  br i1 %.not.i57, label %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit59, label %_ZNKSt14default_deleteISoEclEPSo.exit.i58

_ZNKSt14default_deleteISoEclEPSo.exit.i58:        ; preds = %bb.az
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !40
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %i.dt) #12, !inline_history !5
  br label %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %.pr = load ptr, ptr %4, align 8, !tbaa !26     ; 3 uses
  %.not.i60 = icmp eq ptr %.pr, null
  br i1 %.not.i60, label %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit62, label %_ZNKSt14default_deleteISoEclEPSo.exit.i61

_ZNKSt14default_deleteISoEclEPSo.exit.i61:        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.dx = load ptr, ptr %.pr, align 8, !tbaa !40
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(8) %.pr) #12, !inline_history !5
  br label %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit62

_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit62: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt14default_deleteISoEclEPSo.exit.i61
  %.12876 = phi i1 [ %.027, %_ZNKSt14default_deleteISoEclEPSo.exit.i61 ], [ %.027, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i63 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i63, label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit62
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 4 uses
  %i.ed = load atomic i64, ptr %i.ec acquire, align 8 ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 4294967297
  %i.ef = trunc i64 %i.ed to i32                  ; 2 uses
  br i1 %i.ee, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.ec, align 8, !tbaa !53
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  store i32 0, ptr %i.eg, align 4, !tbaa !54
  %i.eh = load ptr, ptr %i.eb, align 8, !tbaa !40
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #12, !inline_history !6
  %i.ek = load ptr, ptr %i.eb, align 8, !tbaa !40
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #12, !inline_history !6
  br label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.bc:                                            ; preds = %bb.ba
  %i.en = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i64 = icmp eq i8 %i.en, 0
  br i1 %.not.i.i.i.i64, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.eo = add nsw i32 %i.ef, -1
  store i32 %i.eo, ptr %i.ec, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i65

bb.be:                                            ; preds = %bb.bc
  %i.ep = atomicrmw volatile add ptr %i.ec, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i65

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i65: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i.i66 = phi i32 [ %i.ef, %bb.bd ], [ %i.ep, %bb.be ]
  %i.eq = icmp eq i32 %.0.i.i.i.i.i66, 1
  br i1 %i.eq, label %bb.bf, label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !55

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i65
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #12
  br label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i65, %bb.bb, %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit62
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !62 ; 3 uses
  %.not.i.i67 = icmp eq ptr %i.es, null
  br i1 %.not.i.i67, label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io12MessageStoreESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN22photos_editing_formats8image_io12MessageStoreEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN22photos_editing_formats8image_io12MessageStoreEEclEPS2_.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !40
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.es) #12, !inline_history !7
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io12MessageStoreESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN22photos_editing_formats8image_io12MessageStoreESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN22photos_editing_formats8image_io12MessageStoreEEclEPS2_.exit.i.i, %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ew = load ptr, ptr %3, align 8, !tbaa !64    ; 3 uses
  %.not.i1.i = icmp eq ptr %i.ew, null
  br i1 %.not.i1.i, label %_ZN22photos_editing_formats8image_io14MessageHandlerD2Ev.exit, label %_ZNKSt14default_deleteIN22photos_editing_formats8image_io13MessageWriterEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN22photos_editing_formats8image_io13MessageWriterEEclEPS2_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN22photos_editing_formats8image_io12MessageStoreESt14default_deleteIS2_EED2Ev.exit.i
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !40
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ew) #12, !inline_history !8
  br label %_ZN22photos_editing_formats8image_io14MessageHandlerD2Ev.exit

_ZN22photos_editing_formats8image_io14MessageHandlerD2Ev.exit: ; preds = %_ZNSt10unique_ptrIN22photos_editing_formats8image_io12MessageStoreESt14default_deleteIS2_EED2Ev.exit.i, %_ZNKSt14default_deleteIN22photos_editing_formats8image_io13MessageWriterEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i1 %.12876

_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit59: ; preds = %_ZNKSt14default_deleteISoEclEPSo.exit.i58, %bb.az, %bb.c
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.b, %bb.c ], [ %.pn.pn.pn.pn.pn.pn.pn, %bb.az ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteISoEclEPSo.exit.i58 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @_ZN22photos_editing_formats8image_io14MessageHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN22photos_editing_formats8image_io14MessageHandlerC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare void @_ZN22photos_editing_formats8image_io14OpenOutputFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_14MessageHandlerE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.10") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN22photos_editing_formats8image_io13OpenInputFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_14MessageHandlerE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN22photos_editing_formats8image_io10gcontainer12_GLOBAL__N_123ExtractFirstImageInJpegERSiPNS0_14MessageHandlerEPNS0_9DataRangeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !90 {
bb.a:
  %3 = alloca %"class.photos_editing_formats::image_io::IStreamRefDataSource", align 8 ; 11 uses
  %4 = alloca %"class.photos_editing_formats::image_io::JpegInfoBuilder", align 8 ; 10 uses
  %5 = alloca %"class.photos_editing_formats::image_io::JpegScanner", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62   ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN22photos_editing_formats8image_io14MessageHandler13ClearMessagesEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !88
  br label %_ZN22photos_editing_formats8image_io14MessageHandler13ClearMessagesEv.exit

_ZN22photos_editing_formats8image_io14MessageHandler13ClearMessagesEv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN22photos_editing_formats8image_io20IStreamRefDataSourceE, i64 16), ptr %3, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.h, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  invoke void @_ZN22photos_editing_formats8image_io15JpegInfoBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(384) %4)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN22photos_editing_formats8image_io14MessageHandler13ClearMessagesEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.j, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %1, ptr %5, align 8, !tbaa !123
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(90) %i.k, i8 0, i64 90, i1 false)
  invoke void @_ZN22photos_editing_formats8image_io11JpegScanner3RunEPNS0_10DataSourceEPNS0_20JpegSegmentProcessorE(ptr noundef nonnull align 8 dereferenceable(98) %5, ptr noundef nonnull %3, ptr noundef nonnull %4)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN22photos_editing_formats8image_io20IStreamRefDataSource5ResetEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 97
  %i.m = load i8, ptr %i.l, align 1, !tbaa !124, !range !56, !noundef !57
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.l, label %bb.h

bb.f:                                             ; preds = %_ZN22photos_editing_formats8image_io14MessageHandler13ClearMessagesEv.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.h:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !125  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !125
  %.not = icmp eq ptr %i.r, %i.t
  br i1 %.not, label %._crit_edge.i.i, label %bb.k

._crit_edge.i.i:                                  ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.u, ptr %6, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.u, ptr noundef nonnull align 1 dereferenceable(15) @.str, i64 15, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 15, ptr %i.v, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 31
  store i8 0, ptr %i.w, align 1, !tbaa !38
  invoke void @_ZN22photos_editing_formats8image_io14MessageHandler13ReportMessageENS0_7Message4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.x = load ptr, ptr %6, align 8, !tbaa !59     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.u
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.z = load i64, ptr %i.u, align 8, !tbaa !38
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %6, align 8, !tbaa !59    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.u
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.j
  %i.ae = load i64, ptr %i.u, align 8, !tbaa !38
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.ae

bb.k:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !51
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k, %bb.e
  %.117 = phi i1 [ false, %bb.e ], [ true, %bb.k ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ai, align 8, !tbaa !53
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !54
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #12, !inline_history !89
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #12, !inline_history !89
  br label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.o:                                             ; preds = %bb.m
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.al, %bb.p ], [ %i.av, %bb.q ]
  %i.aw = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aw, label %bb.r, label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !55

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #12
  br label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n, %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !49 ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i1.i, label %_ZN22photos_editing_formats8image_io11JpegScannerD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.az, align 8, !tbaa !53
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !54
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #12, !inline_history !89
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #12, !inline_history !89
  br label %_ZN22photos_editing_formats8image_io11JpegScannerD2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i2.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i2.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.w:                                             ; preds = %bb.u
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i4.i = phi i32 [ %i.bc, %bb.v ], [ %i.bm, %bb.w ]
  %i.bn = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.bn, label %bb.x, label %_ZN22photos_editing_formats8image_io11JpegScannerD2Ev.exit, !prof !55

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #12
  br label %_ZN22photos_editing_formats8image_io11JpegScannerD2Ev.exit

_ZN22photos_editing_formats8image_io11JpegScannerD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @_ZN22photos_editing_formats8image_io15JpegInfoBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(384) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN22photos_editing_formats8image_io20IStreamRefDataSourceE, i64 16), ptr %3, align 8, !tbaa !40
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i28 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i28, label %_ZN22photos_editing_formats8image_io20IStreamRefDataSourceD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN22photos_editing_formats8image_io11JpegScannerD2Ev.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bq, align 8, !tbaa !53
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !54
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !40
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #12, !inline_history !9
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !40
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #12, !inline_history !9
  br label %_ZN22photos_editing_formats8image_io20IStreamRefDataSourceD2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i29 = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i.i29, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i30

bb.ac:                                            ; preds = %bb.aa
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i30

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i30: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i31 = phi i32 [ %i.bt, %bb.ab ], [ %i.cd, %bb.ac ]
  %i.ce = icmp eq i32 %.0.i.i.i.i.i31, 1
  br i1 %i.ce, label %bb.ad, label %_ZN22photos_editing_formats8image_io20IStreamRefDataSourceD2Ev.exit, !prof !55

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i30
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #12
  br label %_ZN22photos_editing_formats8image_io20IStreamRefDataSourceD2Ev.exit

_ZN22photos_editing_formats8image_io20IStreamRefDataSourceD2Ev.exit: ; preds = %_ZN22photos_editing_formats8image_io11JpegScannerD2Ev.exit, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i30, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i1 %.117

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %i.p, %bb.g ]
  call void @_ZN22photos_editing_formats8image_io11JpegScannerD2Ev(ptr noundef nonnull align 8 dead_on_return(98) dereferenceable(98) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @_ZN22photos_editing_formats8image_io15JpegInfoBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(384) %4) #12
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ae ], [ %i.o, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @_ZN22photos_editing_formats8image_io20IStreamRefDataSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN22photos_editing_formats8image_io25OStreamRefDataDestination13StartTransferEv(ptr noundef nonnull align 8 dereferenceable(65)) unnamed_addr #2

declare noundef i32 @_ZN22photos_editing_formats8image_io20IStreamRefDataSource12TransferDataERKNS0_9DataRangeEmPNS0_15DataDestinationE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef) unnamed_addr #2

declare void @_ZN22photos_editing_formats8image_io14ReadEntireFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_14MessageHandlerE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.26") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef i32 @_ZN22photos_editing_formats8image_io21DataSegmentDataSource12TransferDataERKNS0_9DataRangeEmPNS0_15DataDestinationE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN22photos_editing_formats8image_io21DataSegmentDataSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !126 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN22photos_editing_formats8image_io21DataSegmentDataSourceE, i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !54
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12, !inline_history !0
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12, !inline_history !0
  br label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12
  br label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !128 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !54
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12, !inline_history !127
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12, !inline_history !127
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN22photos_editing_formats8image_io25OStreamRefDataDestination14FinishTransferEv(ptr noundef nonnull align 8 dereferenceable(65)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK22photos_editing_formats8image_io25OStreamRefDataDestination19GetBytesTransferredEv(ptr noundef nonnull align 8 dereferenceable(65) %0) unnamed_addr #4 align 2 !guid !129 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !35
  ret i64 %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN22photos_editing_formats8image_io17IStreamDataSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !130 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN22photos_editing_formats8image_io17IStreamDataSourceE, i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit, label %_ZNKSt14default_deleteISiEclEPSi.exit.i

_ZNKSt14default_deleteISiEclEPSi.exit.i:          ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12, !inline_history !3
  br label %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit

_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteISiEclEPSi.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN22photos_editing_formats8image_io20IStreamRefDataSourceE, i64 16), ptr %0, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZN22photos_editing_formats8image_io20IStreamRefDataSourceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !54
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #12, !inline_history !9
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #12, !inline_history !9
  br label %_ZN22photos_editing_formats8image_io20IStreamRefDataSourceD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZN22photos_editing_formats8image_io20IStreamRefDataSourceD2Ev.exit, !prof !55

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #12
  br label %_ZN22photos_editing_formats8image_io20IStreamRefDataSourceD2Ev.exit

_ZN22photos_editing_formats8image_io20IStreamRefDataSourceD2Ev.exit: ; preds = %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN22photos_editing_formats8image_io22OStreamDataDestinationD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !131 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN22photos_editing_formats8image_io22OStreamDataDestinationE, i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit, label %_ZNKSt14default_deleteISoEclEPSo.exit.i

_ZNKSt14default_deleteISoEclEPSo.exit.i:          ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #12, !inline_history !5
  br label %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit

_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteISoEclEPSo.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN22photos_editing_formats8image_io25OStreamRefDataDestinationE, i64 16), ptr %0, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN22photos_editing_formats8image_io25OStreamRefDataDestinationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !38
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #13
  br label %_ZN22photos_editing_formats8image_io25OStreamRefDataDestinationD2Ev.exit

_ZN22photos_editing_formats8image_io25OStreamRefDataDestinationD2Ev.exit: ; preds = %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN22photos_editing_formats8image_io14MessageHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !135 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !54
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12, !inline_history !132
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12, !inline_history !132
  br label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12
  br label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !62   ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io12MessageStoreESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN22photos_editing_formats8image_io12MessageStoreEEclEPS2_.exit.i

_ZNKSt14default_deleteIN22photos_editing_formats8image_io12MessageStoreEEclEPS2_.exit.i: ; preds = %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.s) #12, !inline_history !133
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io12MessageStoreESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN22photos_editing_formats8image_io12MessageStoreESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN22photos_editing_formats8image_io12MessageStoreEEclEPS2_.exit.i
  %i.w = load ptr, ptr %0, align 8, !tbaa !64     ; 3 uses
  %.not.i1 = icmp eq ptr %i.w, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io13MessageWriterESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN22photos_editing_formats8image_io13MessageWriterEEclEPS2_.exit.i

_ZNKSt14default_deleteIN22photos_editing_formats8image_io13MessageWriterEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN22photos_editing_formats8image_io12MessageStoreESt14default_deleteIS2_EED2Ev.exit
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #12, !inline_history !134
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io13MessageWriterESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN22photos_editing_formats8image_io13MessageWriterESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN22photos_editing_formats8image_io12MessageStoreESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN22photos_editing_formats8image_io13MessageWriterEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN22photos_editing_formats8image_io10gcontainer19ParseFileAfterImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmmPS7_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !136 {
bb.a:
  %4 = alloca %"class.std::basic_ifstream", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 8)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.b = call noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9) %i.a) #14
  br i1 %i.b, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %i.c

bb.c:                                             ; preds = %bb.a
  %i.d = invoke noundef zeroext i1 @_ZN22photos_editing_formats8image_io10gcontainer29ParseFileAfterImageFromStreamEmmRSiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %3)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.d, %bb.c ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN22photos_editing_formats8image_io10gcontainer29ParseFileAfterImageFromStreamEmmRSiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !137 {
bb.a:
  %4 = alloca %"class.photos_editing_formats::image_io::DataRange", align 8 ; 6 uses
  %5 = alloca %"class.photos_editing_formats::image_io::MessageHandler", align 8 ; 9 uses
  %i.a = icmp eq ptr %3, null
  %i.b = icmp eq i64 %1, 0
  %or.cond3 = or i1 %i.b, %i.a
  br i1 %or.cond3, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i64 } @_ZNSi5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.f = tail call { i64, i64 } @_ZNSi5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.g = extractvalue { i64, i64 } %i.f, 0
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.d, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @_ZN22photos_editing_formats8image_io14MessageHandlerC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.i = invoke fastcc noundef zeroext i1 @_ZN22photos_editing_formats8image_io10gcontainer12_GLOBAL__N_123ExtractFirstImageInJpegERSiPNS0_14MessageHandlerEPNS0_9DataRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %5, ptr noundef %4)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !44
  %i.l = add i64 %i.k, %0                         ; 3 uses
  %i.m = add i64 %i.l, %1                         ; 2 uses
  %.not = icmp ult i64 %i.g, %i.m
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select.i = call noundef i64 @llvm.usub.sat.i64(i64 %i.m, i64 %i.l) ; 2 uses
  %i.n = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.l, i32 noundef 0)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %spec.select.i, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.f
  %i.o = load ptr, ptr %3, align 8, !tbaa !59
  %i.p = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.o, i64 noundef %spec.select.i)
          to label %bb.h unwind label %bb.g       ; 0 uses

bb.g:                                             ; preds = %bb.b, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN22photos_editing_formats8image_io14MessageHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %i.q

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, %bb.d, %bb.c
  %.1 = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.t, align 8, !tbaa !53
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !54
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #12, !inline_history !6
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #12, !inline_history !6
  br label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.l ], [ %i.ag, %bb.m ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.n, label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !55

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #12
  br label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !62 ; 3 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io12MessageStoreESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN22photos_editing_formats8image_io12MessageStoreEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN22photos_editing_formats8image_io12MessageStoreEEclEPS2_.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #12, !inline_history !7
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io12MessageStoreESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN22photos_editing_formats8image_io12MessageStoreESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN22photos_editing_formats8image_io12MessageStoreEEclEPS2_.exit.i.i, %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.an = load ptr, ptr %5, align 8, !tbaa !64    ; 3 uses
  %.not.i1.i = icmp eq ptr %i.an, null
  br i1 %.not.i1.i, label %_ZN22photos_editing_formats8image_io14MessageHandlerD2Ev.exit, label %_ZNKSt14default_deleteIN22photos_editing_formats8image_io13MessageWriterEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN22photos_editing_formats8image_io13MessageWriterEEclEPS2_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN22photos_editing_formats8image_io12MessageStoreESt14default_deleteIS2_EED2Ev.exit.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #12, !inline_history !8
  br label %_ZN22photos_editing_formats8image_io14MessageHandlerD2Ev.exit

_ZN22photos_editing_formats8image_io14MessageHandlerD2Ev.exit: ; preds = %_ZNSt10unique_ptrIN22photos_editing_formats8image_io12MessageStoreESt14default_deleteIS2_EED2Ev.exit.i, %_ZNKSt14default_deleteIN22photos_editing_formats8image_io13MessageWriterEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZN22photos_editing_formats8image_io14MessageHandlerD2Ev.exit
  %.2 = phi i1 [ %.1, %_ZN22photos_editing_formats8image_io14MessageHandlerD2Ev.exit ], [ false, %bb.a ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #4 align 2

declare { i64, i64 } @_ZNSi5tellgEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN22photos_editing_formats8image_io22OStreamDataDestinationD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !138 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN22photos_editing_formats8image_io22OStreamDataDestinationE, i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit.i, label %_ZNKSt14default_deleteISoEclEPSo.exit.i.i

_ZNKSt14default_deleteISoEclEPSo.exit.i.i:        ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #12, !inline_history !4
  br label %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit.i

_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteISoEclEPSo.exit.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN22photos_editing_formats8image_io25OStreamRefDataDestinationE, i64 16), ptr %0, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN22photos_editing_formats8image_io22OStreamDataDestinationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !38
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #13, !inline_history !60
  br label %_ZN22photos_editing_formats8image_io22OStreamDataDestinationD2Ev.exit

_ZN22photos_editing_formats8image_io22OStreamDataDestinationD2Ev.exit: ; preds = %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #13
  ret void
}

declare noundef i32 @_ZN22photos_editing_formats8image_io25OStreamRefDataDestination8TransferERKNS0_9DataRangeERKNS0_11DataSegmentE(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 !guid !139 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN22photos_editing_formats8image_io15JpegInfoBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(384)) unnamed_addr #2

declare void @_ZN22photos_editing_formats8image_io11JpegScanner3RunEPNS0_10DataSourceEPNS0_20JpegSegmentProcessorE(ptr noundef nonnull align 8 dereferenceable(98), ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN22photos_editing_formats8image_io20IStreamRefDataSource5ResetEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare void @_ZN22photos_editing_formats8image_io14MessageHandler13ReportMessageENS0_7Message4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN22photos_editing_formats8image_io11JpegScannerD2Ev(ptr noundef nonnull align 8 dead_on_return(98) dereferenceable(98) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !140 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !54
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12, !inline_history !0
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12, !inline_history !0
  br label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12
  br label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !53
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !54
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #12, !inline_history !0
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #12, !inline_history !0
  br label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, !prof !55

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #12
  br label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5

_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5: ; preds = %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN22photos_editing_formats8image_io15JpegInfoBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !141 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN22photos_editing_formats8image_io15JpegInfoBuilderE, i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !142
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #15
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZN22photos_editing_formats8image_io8JpegInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.f) #12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN22photos_editing_formats8image_io18JpegXmpInfoBuilderD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #13
  br label %_ZN22photos_editing_formats8image_io18JpegXmpInfoBuilderD2Ev.exit

_ZN22photos_editing_formats8image_io18JpegXmpInfoBuilderD2Ev.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !77   ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i1, label %_ZN22photos_editing_formats8image_io18JpegXmpInfoBuilderD2Ev.exit2, label %bb.d

bb.d:                                             ; preds = %_ZN22photos_editing_formats8image_io18JpegXmpInfoBuilderD2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !78
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #13
  br label %_ZN22photos_editing_formats8image_io18JpegXmpInfoBuilderD2Ev.exit2

_ZN22photos_editing_formats8image_io18JpegXmpInfoBuilderD2Ev.exit2: ; preds = %_ZN22photos_editing_formats8image_io18JpegXmpInfoBuilderD2Ev.exit, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !59   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN22photos_editing_formats8image_io18JpegXmpInfoBuilderD2Ev.exit2
  %i.y = load i64, ptr %i.w, align 8, !tbaa !38
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN22photos_editing_formats8image_io18JpegXmpInfoBuilderD2Ev.exit2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !144
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIiSaIiEED2Ev.exit4, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !144
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit4

_ZNSt6vectorIiSaIiEED2Ev.exit4:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIiSaIiEED2Ev.exit6, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !144
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit6

_ZNSt6vectorIiSaIiEED2Ev.exit6:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN22photos_editing_formats8image_io20IStreamRefDataSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !145 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN22photos_editing_formats8image_io20IStreamRefDataSourceE, i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !54
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12, !inline_history !0
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12, !inline_history !0
  br label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12
  br label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN22photos_editing_formats8image_io8JpegInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !148 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !150  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN22photos_editing_formats8image_io11JpegXmpInfoES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN22photos_editing_formats8image_io11JpegXmpInfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyIN22photos_editing_formats8image_io11JpegXmpInfoEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EED2Ev.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #13
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt8_DestroyIN22photos_editing_formats8image_io11JpegXmpInfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EED2Ev.exit.i.i.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !38
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #13
  br label %_ZSt8_DestroyIN22photos_editing_formats8image_io11JpegXmpInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN22photos_editing_formats8image_io11JpegXmpInfoEEvPT_.exit.i.i.i: ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN22photos_editing_formats8image_io11JpegXmpInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !146

_ZSt8_DestroyIPN22photos_editing_formats8image_io11JpegXmpInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN22photos_editing_formats8image_io11JpegXmpInfoEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !149
  br label %_ZSt8_DestroyIPN22photos_editing_formats8image_io11JpegXmpInfoES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN22photos_editing_formats8image_io11JpegXmpInfoES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN22photos_editing_formats8image_io11JpegXmpInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.s = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN22photos_editing_formats8image_io11JpegXmpInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io11JpegXmpInfoESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN22photos_editing_formats8image_io11JpegXmpInfoES2_EvT_S4_RSaIT0_E.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !151
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #13
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io11JpegXmpInfoESaIS2_EED2Ev.exit

_ZNSt6vectorIN22photos_editing_formats8image_io11JpegXmpInfoESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN22photos_editing_formats8image_io11JpegXmpInfoES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !152  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !153 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.z, %i.ab
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io11JpegXmpInfoESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN22photos_editing_formats8image_io15JpegSegmentInfoEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.ap, %_ZSt8_DestroyIN22photos_editing_formats8image_io15JpegSegmentInfoEEvPT_.exit.i.i.i ], [ %i.z, %_ZNSt6vectorIN22photos_editing_formats8image_io11JpegXmpInfoESaIS2_EED2Ev.exit ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !155 ; 3 uses
  %.not.i.i.i.i.i.i.i.i4 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i4, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i2
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !156
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #13
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i.i:          ; preds = %bb.d, %.lr.ph.i.i.i2
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !59 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 40 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZSt8_DestroyIN22photos_editing_formats8image_io15JpegSegmentInfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i5: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !38
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #13
  br label %_ZSt8_DestroyIN22photos_editing_formats8image_io15JpegSegmentInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN22photos_editing_formats8image_io15JpegSegmentInfoEEvPT_.exit.i.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i5
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 80 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.ap, %i.ab
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !147

_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN22photos_editing_formats8image_io15JpegSegmentInfoEEvPT_.exit.i.i.i
  %.pr.i7 = load ptr, ptr %i.y, align 8, !tbaa !152
  br label %_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN22photos_editing_formats8image_io11JpegXmpInfoESaIS2_EED2Ev.exit
  %i.aq = phi ptr [ %.pr.i7, %_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.z, %_ZNSt6vectorIN22photos_editing_formats8image_io11JpegXmpInfoESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i8 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i1.i8, label %_ZNSt6vectorIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoES2_EvT_S4_RSaIT0_E.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !157
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #13
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EED2Ev.exit

_ZNSt6vectorIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoES2_EvT_S4_RSaIT0_E.exit.i, %bb.e
  %i.aw = load ptr, ptr %0, align 8, !tbaa !77    ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !78
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #13
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EED2Ev.exit

_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EED2Ev.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !159 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !161  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !38
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #13
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #13
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !158

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN22photos_editing_formats8image_io17IStreamDataSourceD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !162 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN22photos_editing_formats8image_io17IStreamDataSourceE, i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit.i, label %_ZNKSt14default_deleteISiEclEPSi.exit.i.i

_ZNKSt14default_deleteISiEclEPSi.exit.i.i:        ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12, !inline_history !1
  br label %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit.i

_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteISiEclEPSi.exit.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN22photos_editing_formats8image_io20IStreamRefDataSourceE, i64 16), ptr %0, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN22photos_editing_formats8image_io17IStreamDataSourceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !54
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #12, !inline_history !2
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #12, !inline_history !2
  br label %_ZN22photos_editing_formats8image_io17IStreamDataSourceD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZN22photos_editing_formats8image_io17IStreamDataSourceD2Ev.exit, !prof !55

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #12, !inline_history !58
  br label %_ZN22photos_editing_formats8image_io17IStreamDataSourceD2Ev.exit

_ZN22photos_editing_formats8image_io17IStreamDataSourceD2Ev.exit: ; preds = %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit.i, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #13
  ret void
}

declare void @_ZN22photos_editing_formats8image_io20IStreamRefDataSource14GetDataSegmentEmm(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.26") align 8, ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !guid !164 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #12, !inline_history !163
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !16   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #12, !inline_history !163
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #10

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{ptr @_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1 = distinct !{ptr @_ZN22photos_editing_formats8image_io17IStreamDataSourceD2Ev, null, null}
!2 = distinct !{ptr @_ZN22photos_editing_formats8image_io17IStreamDataSourceD2Ev, ptr @_ZN22photos_editing_formats8image_io20IStreamRefDataSourceD2Ev, ptr @_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3 = distinct !{null, null}
!4 = distinct !{ptr @_ZN22photos_editing_formats8image_io22OStreamDataDestinationD2Ev, null, null}
!5 = distinct !{null, null}
!6 = distinct !{ptr @_ZN22photos_editing_formats8image_io14MessageHandlerD2Ev, null, null, null}
!7 = distinct !{ptr @_ZN22photos_editing_formats8image_io14MessageHandlerD2Ev, null, null}
!8 = distinct !{ptr @_ZN22photos_editing_formats8image_io14MessageHandlerD2Ev, null, null}
!9 = distinct !{ptr @_ZN22photos_editing_formats8image_io20IStreamRefDataSourceD2Ev, ptr @_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{i64 -8004020437104401823}
!18 = !{i64 8778868433663180689}
!19 = !{i64 -7971648297223733998}
!20 = !{i64 1069405855981459787}
!21 = !{i64 -5868802934433069028}
!22 = !{i64 -66918800379832477}
!23 = !{i64 562821239403984291}
!24 = !{!"any pointer", !14, i64 0}
!25 = !{!"p1 _ZTSSo", !24, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"_ZTSN22photos_editing_formats8image_io15DataDestinationE"}
!28 = !{!"p1 _ZTSN22photos_editing_formats8image_io14MessageHandlerE", !24, i64 0}
!29 = !{!"long", !14, i64 0}
!30 = !{!"p1 omnipotent char", !24, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !30, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !31, i64 0, !29, i64 8, !14, i64 16}
!33 = !{!"bool", !14, i64 0}
!34 = !{!"_ZTSN22photos_editing_formats8image_io25OStreamRefDataDestinationE", !27, i64 0, !25, i64 8, !28, i64 16, !29, i64 24, !32, i64 32, !33, i64 64}
!35 = !{!34, !29, i64 24}
!36 = !{!31, !30, i64 0}
!37 = !{!32, !29, i64 8}
!38 = !{!14, !14, i64 0}
!39 = !{!"vtable pointer", !13, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"p1 _ZTSSi", !24, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"_ZTSN22photos_editing_formats8image_io9DataRangeE", !29, i64 0, !29, i64 8}
!44 = !{!43, !29, i64 8}
!45 = !{!"p1 _ZTSN22photos_editing_formats8image_io11DataSegmentE", !24, i64 0}
!46 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !24, i64 0}
!47 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !46, i64 0}
!48 = !{!"_ZTSSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EE", !45, i64 0, !47, i64 8}
!49 = !{!47, !46, i64 0}
!50 = !{!29, !29, i64 0}
!51 = !{i64 0, i64 8, !50, i64 8, i64 8, !50}
!52 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 8, !15, i64 12}
!53 = !{!52, !15, i64 8}
!54 = !{!52, !15, i64 12}
!55 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!56 = !{i8 0, i8 2}
!57 = !{}
!58 = !{ptr @_ZN22photos_editing_formats8image_io17IStreamDataSourceD2Ev}
!59 = !{!32, !30, i64 0}
!60 = !{ptr @_ZN22photos_editing_formats8image_io22OStreamDataDestinationD2Ev}
!61 = !{!"p1 _ZTSN22photos_editing_formats8image_io12MessageStoreE", !24, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{!"p1 _ZTSN22photos_editing_formats8image_io13MessageWriterE", !24, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!"p1 int", !24, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!67 = !{!"p1 _ZTSN22photos_editing_formats8image_io9DataRangeE", !24, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIN22photos_editing_formats8image_io9DataRangeESaIS2_EE17_Vector_impl_dataE", !67, i64 0, !67, i64 8, !67, i64 16}
!69 = !{!"p1 _ZTSN22photos_editing_formats8image_io15JpegSegmentInfoE", !24, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!71 = !{!"p1 _ZTSN22photos_editing_formats8image_io11JpegXmpInfoE", !24, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIN22photos_editing_formats8image_io11JpegXmpInfoESaIS2_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!73 = !{!"_ZTSSt14_Rb_tree_color", !14, i64 0}
!74 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !24, i64 0}
!75 = !{!"_ZTSSt18_Rb_tree_node_base", !73, i64 0, !74, i64 8, !74, i64 16, !74, i64 24}
!76 = !{!"_ZTSSt15_Rb_tree_header", !75, i64 0, !29, i64 32}
!77 = !{!68, !67, i64 0}
!78 = !{!68, !67, i64 16}
!79 = !{!"llvm.loop.mustprogress"}
!80 = distinct !{ptr @_ZN22photos_editing_formats8image_io21DataSegmentDataSourceD2Ev, ptr @_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!81 = !{i64 -889416479599222447}
!82 = !{!34, !28, i64 16}
!83 = !{!34, !33, i64 64}
!84 = !{!43, !29, i64 0}
!85 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0}
!86 = !{!85, !85, i64 0}
!87 = !{!48, !45, i64 0}
!88 = distinct !{null}
!89 = distinct !{ptr @_ZN22photos_editing_formats8image_io11JpegScannerD2Ev, ptr @_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!90 = !{i64 2814715786650970825}
!91 = !{!"p1 _ZTSN22photos_editing_formats8image_io12MessageStatsE", !24, i64 0}
!92 = !{!"_ZTSSt12__shared_ptrIN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EE", !91, i64 0, !47, i64 8}
!93 = !{!92, !91, i64 0}
!94 = !{!"_ZTSN22photos_editing_formats8image_io20JpegSegmentProcessorE"}
!95 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !66, i64 0}
!96 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !95, i64 0}
!97 = !{!"_ZTSSt6vectorIiSaIiEE", !96, i64 0}
!98 = !{!"_ZTSN22photos_editing_formats8image_io11JpegXmpInfo4TypeE", !14, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseIN22photos_editing_formats8image_io9DataRangeESaIS2_EE12_Vector_implE", !68, i64 0}
!100 = !{!"_ZTSSt12_Vector_baseIN22photos_editing_formats8image_io9DataRangeESaIS2_EE", !99, i64 0}
!101 = !{!"_ZTSSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE", !100, i64 0}
!102 = !{!"_ZTSN22photos_editing_formats8image_io18JpegXmpInfoBuilderE", !98, i64 0, !101, i64 8, !43, i64 32}
!103 = !{!"_ZTSNSt12_Vector_baseIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE12_Vector_implE", !70, i64 0}
!104 = !{!"_ZTSSt12_Vector_baseIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE", !103, i64 0}
!105 = !{!"_ZTSSt6vectorIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE", !104, i64 0}
!106 = !{!"_ZTSNSt12_Vector_baseIN22photos_editing_formats8image_io11JpegXmpInfoESaIS2_EE12_Vector_implE", !72, i64 0}
!107 = !{!"_ZTSSt12_Vector_baseIN22photos_editing_formats8image_io11JpegXmpInfoESaIS2_EE", !106, i64 0}
!108 = !{!"_ZTSSt6vectorIN22photos_editing_formats8image_io11JpegXmpInfoESaIS2_EE", !107, i64 0}
!109 = !{!"_ZTSN22photos_editing_formats8image_io8JpegInfoE", !101, i64 0, !105, i64 24, !43, i64 48, !43, i64 64, !108, i64 80}
!110 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!111 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !110, i64 0}
!112 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !111, i64 0, !76, i64 8}
!113 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !112, i64 0}
!114 = !{!"_ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !113, i64 0}
!115 = !{!"_ZTSN22photos_editing_formats8image_io15JpegInfoBuilderE", !94, i64 0, !15, i64 8, !15, i64 12, !97, i64 16, !97, i64 40, !97, i64 64, !43, i64 88, !32, i64 104, !102, i64 136, !102, i64 184, !109, i64 232, !114, i64 336}
!116 = !{!115, !15, i64 8}
!117 = !{!"p1 _ZTSN22photos_editing_formats8image_io10DataSourceE", !24, i64 0}
!118 = !{!"p1 _ZTSN22photos_editing_formats8image_io20JpegSegmentProcessorE", !24, i64 0}
!119 = !{!"_ZTSSt12_Base_bitsetILm4EE", !14, i64 0}
!120 = !{!"_ZTSSt6bitsetILm256EE", !119, i64 0}
!121 = !{!"_ZTSSt10shared_ptrIN22photos_editing_formats8image_io11DataSegmentEE", !48, i64 0}
!122 = !{!"_ZTSN22photos_editing_formats8image_io11JpegScannerE", !28, i64 0, !117, i64 8, !118, i64 16, !120, i64 24, !121, i64 56, !121, i64 72, !29, i64 88, !33, i64 96, !33, i64 97}
!123 = !{!122, !28, i64 0}
!124 = !{!122, !33, i64 97}
!125 = !{!67, !67, i64 0}
!126 = !{i64 8475216465593584673}
!127 = distinct !{null, null}
!128 = !{i64 8986616616557952690}
!129 = !{i64 1070944207342418963}
!130 = !{i64 -45870072214366779}
!131 = !{i64 -6692676962134608734}
!132 = distinct !{null, null, null}
!133 = distinct !{null, null}
!134 = distinct !{null, null}
!135 = !{i64 1188748104444593106}
!136 = !{i64 -4222636200368618960}
!137 = !{i64 1898927542744348904}
!138 = !{i64 -4649660895193291790}
!139 = !{i64 1080103601501470593}
!140 = !{i64 -6199317989715737582}
!141 = !{i64 8676029262094392585}
!142 = !{!76, !74, i64 8}
!143 = !{!66, !65, i64 0}
!144 = !{!66, !65, i64 16}
!145 = !{i64 4616944572757209602}
!146 = distinct !{!146, !79}
!147 = distinct !{!147, !79}
!148 = !{i64 -1544981303869942557}
!149 = !{!72, !71, i64 0}
!150 = !{!72, !71, i64 8}
!151 = !{!72, !71, i64 16}
!152 = !{!70, !69, i64 0}
!153 = !{!70, !69, i64 8}
!154 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!155 = !{!154, !30, i64 0}
!156 = !{!154, !30, i64 16}
!157 = !{!70, !69, i64 16}
!158 = distinct !{!158, !79}
!159 = !{i64 -2076133162968456094}
!160 = !{!75, !74, i64 24}
!161 = !{!75, !74, i64 16}
!162 = !{i64 6090866691582951211}
!163 = distinct !{null}
!164 = !{i64 -227505617863360783}
end_hunk_0
