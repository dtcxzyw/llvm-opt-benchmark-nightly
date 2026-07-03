inline.NumInlined: 126
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tagSTATPROPSTG = type { ptr, i32, i16 }
%struct.GUID = type { i32, i16, i16, [8 x i8] }
%struct.CArcInfo = type { ptr, ptr, ptr, i8, [28 x i8], i32, i8, ptr, ptr }
%class.CMyComPtr = type { ptr }
%class.CMyComPtr.2 = type { ptr }
%class.CMyComPtr.3 = type { ptr }
%class.CMyComPtr.4 = type { ptr }
%"class.NWindows::NCOM::CPropVariant" = type { %struct.tagPROPVARIANT }
%struct.tagPROPVARIANT = type { i16, i16, i16, i16, %union.anon }
%union.anon = type { %struct.LARGE_INTEGER }
%struct.LARGE_INTEGER = type { i64 }
%class.CMyComPtr.0 = type { ptr }
%"class.NArchive::NLzma::CDecoder" = type { ptr, %class.CMyComPtr, %class.CMyComPtr.0 }
%"struct.NArchive::NLzma::CHeader" = type { i64, i8, [5 x i8] }

$__clang_call_terminate = comdat any

$_ZN8NArchive5NLzma8CHandler14QueryInterfaceERK4GUIDPPv = comdat any

$_ZN8NArchive5NLzma8CHandler6AddRefEv = comdat any

$_ZN8NArchive5NLzma8CHandler7ReleaseEv = comdat any

$_ZN8NArchive5NLzma8CHandlerD2Ev = comdat any

$_ZN8NArchive5NLzma8CHandlerD0Ev = comdat any

$_ZThn8_N8NArchive5NLzma8CHandler14QueryInterfaceERK4GUIDPPv = comdat any

$_ZThn8_N8NArchive5NLzma8CHandler6AddRefEv = comdat any

$_ZThn8_N8NArchive5NLzma8CHandler7ReleaseEv = comdat any

$_ZThn8_N8NArchive5NLzma8CHandlerD1Ev = comdat any

$_ZThn8_N8NArchive5NLzma8CHandlerD0Ev = comdat any

$_ZTI10IInArchive = comdat any

$_ZTS10IInArchive = comdat any

$_ZTI8IUnknown = comdat any

$_ZTS8IUnknown = comdat any

$_ZTI15IArchiveOpenSeq = comdat any

$_ZTS15IArchiveOpenSeq = comdat any

$_ZTI13CMyUnknownImp = comdat any

$_ZTS13CMyUnknownImp = comdat any

@_ZN8NArchive5NLzma6kPropsE = dso_local local_unnamed_addr global [3 x %struct.tagSTATPROPSTG] [%struct.tagSTATPROPSTG { ptr null, i32 7, i16 21 }, %struct.tagSTATPROPSTG { ptr null, i32 8, i16 21 }, %struct.tagSTATPROPSTG { ptr null, i32 22, i16 8 }], align 16
@IID_ISequentialOutStream = external global %struct.GUID, align 4
@IID_ICompressSetDecoderProperties2 = external global %struct.GUID, align 4
@IID_ICompressSetOutStream = external global %struct.GUID, align 4
@IID_IOutStreamFlush = external global %struct.GUID, align 4
@.str = private unnamed_addr constant [5 x i8] c"BCJ \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"LZMA:\00", align 1
@_ZTIPKc = external constant ptr
@_ZTVN8NArchive5NLzma8CHandlerE = dso_local unnamed_addr constant { [18 x ptr], [8 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN8NArchive5NLzma8CHandlerE, ptr @_ZN8NArchive5NLzma8CHandler14QueryInterfaceERK4GUIDPPv, ptr @_ZN8NArchive5NLzma8CHandler6AddRefEv, ptr @_ZN8NArchive5NLzma8CHandler7ReleaseEv, ptr @_ZN8NArchive5NLzma8CHandlerD2Ev, ptr @_ZN8NArchive5NLzma8CHandlerD0Ev, ptr @_ZN8NArchive5NLzma8CHandler4OpenEP9IInStreamPKyP20IArchiveOpenCallback, ptr @_ZN8NArchive5NLzma8CHandler5CloseEv, ptr @_ZN8NArchive5NLzma8CHandler16GetNumberOfItemsEPj, ptr @_ZN8NArchive5NLzma8CHandler11GetPropertyEjjP14tagPROPVARIANT, ptr @_ZN8NArchive5NLzma8CHandler7ExtractEPKjjiP23IArchiveExtractCallback, ptr @_ZN8NArchive5NLzma8CHandler18GetArchivePropertyEjP14tagPROPVARIANT, ptr @_ZN8NArchive5NLzma8CHandler21GetNumberOfPropertiesEPj, ptr @_ZN8NArchive5NLzma8CHandler15GetPropertyInfoEjPPwPjPt, ptr @_ZN8NArchive5NLzma8CHandler28GetNumberOfArchivePropertiesEPj, ptr @_ZN8NArchive5NLzma8CHandler22GetArchivePropertyInfoEjPPwPjPt, ptr @_ZN8NArchive5NLzma8CHandler7OpenSeqEP19ISequentialInStream], [8 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN8NArchive5NLzma8CHandlerE, ptr @_ZThn8_N8NArchive5NLzma8CHandler14QueryInterfaceERK4GUIDPPv, ptr @_ZThn8_N8NArchive5NLzma8CHandler6AddRefEv, ptr @_ZThn8_N8NArchive5NLzma8CHandler7ReleaseEv, ptr @_ZThn8_N8NArchive5NLzma8CHandlerD1Ev, ptr @_ZThn8_N8NArchive5NLzma8CHandlerD0Ev, ptr @_ZThn8_N8NArchive5NLzma8CHandler7OpenSeqEP19ISequentialInStream] }, align 8
@_ZTIN8NArchive5NLzma8CHandlerE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN8NArchive5NLzma8CHandlerE, i32 1, i32 3, ptr @_ZTI10IInArchive, i64 2, ptr @_ZTI15IArchiveOpenSeq, i64 2050, ptr @_ZTI13CMyUnknownImp, i64 4098 }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN8NArchive5NLzma8CHandlerE = dso_local constant [27 x i8] c"N8NArchive5NLzma8CHandlerE\00", align 1
@_ZTI10IInArchive = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10IInArchive, ptr @_ZTI8IUnknown }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS10IInArchive = linkonce_odr dso_local constant [13 x i8] c"10IInArchive\00", comdat, align 1
@_ZTI8IUnknown = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS8IUnknown }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS8IUnknown = linkonce_odr dso_local constant [10 x i8] c"8IUnknown\00", comdat, align 1
@_ZTI15IArchiveOpenSeq = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15IArchiveOpenSeq, ptr @_ZTI8IUnknown }, comdat, align 8
@_ZTS15IArchiveOpenSeq = linkonce_odr dso_local constant [18 x i8] c"15IArchiveOpenSeq\00", comdat, align 1
@_ZTI13CMyUnknownImp = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13CMyUnknownImp }, comdat, align 8
@_ZTS13CMyUnknownImp = linkonce_odr dso_local constant [16 x i8] c"13CMyUnknownImp\00", comdat, align 1
@_ZTV15CDummyOutStream = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZN8NArchive5NLzma7NLzmaArL9g_ArcInfoE = internal global %struct.CArcInfo { ptr @.str.3, ptr @.str.3, ptr null, i8 10, [28 x i8] zeroinitializer, i32 0, i8 1, ptr @_ZN8NArchive5NLzmaL9CreateArcEv, ptr null }, align 8
@.str.3 = private unnamed_addr constant [5 x i32] [i32 108, i32 122, i32 109, i32 97, i32 0], align 4
@_ZN8NArchive5NLzma9NLzma86ArL9g_ArcInfoE = internal global %struct.CArcInfo { ptr @.str.4, ptr @.str.4, ptr null, i8 11, [28 x i8] zeroinitializer, i32 0, i8 1, ptr @_ZN8NArchive5NLzmaL11CreateArc86Ev, ptr null }, align 8
@.str.4 = private unnamed_addr constant [7 x i32] [i32 108, i32 122, i32 109, i32 97, i32 56, i32 54, i32 0], align 4
@IID_IUnknown = external local_unnamed_addr global %struct.GUID, align 4
@IID_IInArchive = external local_unnamed_addr global %struct.GUID, align 4
@IID_IArchiveOpenSeq = external local_unnamed_addr global %struct.GUID, align 4
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_LzmaHandler.cpp, ptr null }]

@_ZN8NArchive5NLzma8CDecoderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN8NArchive5NLzma8CDecoderD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZN8NArchive5NLzma7CHeader5ParseEPKhb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 14)) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.a, align 8, !tbaa !8
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !11      ; 2 uses
  store i8 %i.b, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp ult i8 %i.b, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i1 [ %i.c, %bb.b ], [ true, %bb.a ]
  %i.e = zext i1 %2 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.h = load i8, ptr %i.f, align 1, !tbaa !11    ; 2 uses
  store i8 %i.h, ptr %i.g, align 1, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.j, ptr %i.k, align 2, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.m, ptr %i.n, align 1, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.p, ptr %i.q, align 4, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.s = load i8, ptr %i.r, align 1, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.s, ptr %i.t, align 1, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.v = load i64, ptr %i.u, align 8, !tbaa !12   ; 2 uses
  store i64 %i.v, ptr %0, align 8, !tbaa !13
  %3 = icmp ult i8 %i.h, -31
  %or.cond = select i1 %3, i1 %i.d, i1 false
  %4 = add i64 %i.v, 1
  %or.cond12 = icmp ult i64 %4, 72057594037927937
  %or.cond14 = select i1 %or.cond, i1 %or.cond12, i1 false
  br i1 %or.cond14, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 10
  %.val = load i32, ptr %i.w, align 4, !tbaa !4   ; 2 uses
  switch i32 %.val, label %bb.e [
    i32 -1073741824, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 -2147483648, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 1610612736, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 1073741824, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 805306368, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 536870912, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 402653184, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 268435456, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 201326592, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 134217728, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 100663296, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 67108864, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 50331648, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 33554432, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 25165824, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 16777216, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 12582912, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 8388608, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 6291456, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 4194304, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 3145728, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 2097152, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 1572864, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 1048576, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 786432, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 524288, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 393216, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 262144, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 196608, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 131072, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 98304, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 65536, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 49152, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 32768, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 24576, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 16384, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 12288, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 8192, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 6144, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 4096, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 3072, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 2048, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 1536, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 1024, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 768, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 512, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 384, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 256, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 192, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 128, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 96, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 64, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 48, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 32, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 24, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 16, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 12, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 8, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 6, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
    i32 4, label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit
  ]

bb.e:                                             ; preds = %bb.d
  br label %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit

_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit:       ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.e
  %or.cond.lcssa.i = phi i1 [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ]
  %i.x = icmp eq i32 %.val, -1
  %spec.select.i = or i1 %i.x, %or.cond.lcssa.i
  br label %bb.f

bb.f:                                             ; preds = %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit, %bb.c
  %5 = phi i1 [ false, %bb.c ], [ %spec.select.i, %_ZN8NArchive5NLzmaL12CheckDicSizeEPKh.exit ]
  ret i1 %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive5NLzma8CDecoder6CreateEbP19ISequentialInStream(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CMyComPtr, align 8           ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #21 ; 6 uses
  invoke void @_ZN9NCompress5NLzma8CDecoderC1Ev(ptr noundef nonnull align 8 dereferenceable(273) %i.d)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %0, align 8, !tbaa !18
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !25 ; 0 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %.not6.i = icmp eq ptr %i.i, null
  br i1 %.not6.i, label %_ZN9CMyComPtrI14ICompressCoderEaSEPS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i), !inline_history !25 ; 0 uses
  br label %_ZN9CMyComPtrI14ICompressCoderEaSEPS0_.exit

_ZN9CMyComPtrI14ICompressCoderEaSEPS0_.exit:      ; preds = %bb.c, %bb.d
  store ptr %i.d, ptr %i.a, align 8, !tbaa !14
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 280) #22
  br label %bb.v

bb.f:                                             ; preds = %_ZN9CMyComPtrI14ICompressCoderEaSEPS0_.exit, %bb.a
  br i1 %1, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %bb.t

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr null, ptr %3, align 8, !tbaa !14
  %i.r = invoke noundef i32 @_Z11CreateCoderyR9CMyComPtrI14ICompressCoderEb(i64 noundef 50528515, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.j       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.k, label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %3, align 8, !tbaa !14     ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit.thread, label %bb.m

_ZN9CMyComPtrI14ICompressCoderED2Ev.exit.thread:  ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.u

bb.l:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !23
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 4 dereferenceable(16) @IID_ISequentialOutStream, ptr noundef nonnull %i.o)
          to label %_ZNK9CMyComPtrI14ICompressCoderE14QueryInterfaceI20ISequentialOutStreamEEiRK4GUIDPPT_.exit unwind label %bb.l, !inline_history !27 ; 0 uses

_ZNK9CMyComPtrI14ICompressCoderE14QueryInterfaceI20ISequentialOutStreamEEiRK4GUIDPPT_.exit: ; preds = %bb.m
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.aa = icmp ne ptr %i.z, null                  ; 2 uses
  %. = select i1 %i.aa, i32 0, i32 -2147467263
  br label %bb.n

bb.n:                                             ; preds = %_ZNK9CMyComPtrI14ICompressCoderE14QueryInterfaceI20ISequentialOutStreamEEiRK4GUIDPPT_.exit, %bb.i
  %.110.ph = phi i32 [ %., %_ZNK9CMyComPtrI14ICompressCoderE14QueryInterfaceI20ISequentialOutStreamEEiRK4GUIDPPT_.exit ], [ %i.r, %bb.i ]
  %.1.ph = phi i1 [ %i.aa, %_ZNK9CMyComPtrI14ICompressCoderE14QueryInterfaceI20ISequentialOutStreamEEiRK4GUIDPPT_.exit ], [ false, %bb.i ]
  %.pr = load ptr, ptr %3, align 8, !tbaa !14     ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = load ptr, ptr %.pr, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke noundef i32 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
          to label %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #24
  unreachable

_ZN9CMyComPtrI14ICompressCoderED2Ev.exit:         ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %.1.ph, label %bb.t, label %bb.u

bb.q:                                             ; preds = %bb.l, %bb.j
  %.pn = phi { ptr, i32 } [ %i.v, %bb.l ], [ %i.s, %bb.j ]
  %i.ah = load ptr, ptr %3, align 8, !tbaa !14    ; 3 uses
  %.not.i18 = icmp eq ptr %i.ah, null
  br i1 %.not.i18, label %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit19, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef i32 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit19 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #24
  unreachable

_ZN9CMyComPtrI14ICompressCoderED2Ev.exit19:       ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.v

bb.t:                                             ; preds = %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit, %bb.g, %bb.f
  %i.ao = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !23
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef i32 %i.ar(ptr noundef nonnull align 8 dereferenceable(273) %i.ao, ptr noundef %2)
  br label %bb.u

bb.u:                                             ; preds = %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit.thread, %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit, %bb.t
  %.2 = phi i32 [ %i.as, %bb.t ], [ %.110.ph, %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit ], [ -2147467263, %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit.thread ]
  ret i32 %.2

bb.v:                                             ; preds = %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit19, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit19 ], [ %i.n, %bb.e ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare void @_ZN9NCompress5NLzma8CDecoderC1Ev(ptr noundef nonnull align 8 dereferenceable(273)) unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef i32 @_Z11CreateCoderyR9CMyComPtrI14ICompressCoderEb(i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8NArchive5NLzma8CDecoderD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN8NArchive5NLzma8CDecoder15ReleaseInStreamEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(273) %i.c)
          to label %_ZN8NArchive5NLzma8CDecoder15ReleaseInStreamEv.exit unwind label %bb.g, !inline_history !28 ; 0 uses

_ZN8NArchive5NLzma8CDecoder15ReleaseInStreamEv.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26   ; 3 uses
  %.not.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i1, label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit, label %bb.c

end_hunk_0
