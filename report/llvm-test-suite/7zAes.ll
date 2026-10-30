Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/7zAes?download=true
inline.NumInlined: 113
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
$_ZTS13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE = comdat any

$_ZTI13CRecordVectorIPvE = comdat any

$_ZTS13CRecordVectorIPvE = comdat any

$_ZTV7CBufferIhE = comdat any

$_ZTI7CBufferIhE = comdat any

$_ZTS7CBufferIhE = comdat any

@_ZN7NCrypto7NSevenZL16g_GlobalKeyCacheE = internal global %"class.NCrypto::NSevenZ::CKeyInfoCache" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN7NCrypto7NSevenZL31g_GlobalKeyCacheCriticalSectionE = internal global %"class.NWindows::NSynchronization::CCriticalSection" zeroinitializer, align 8
@g_RandomGenerator = external global %class.CRandomGenerator, align 1
@IID_ICryptoProperties = external global %struct.GUID, align 4
@_ZTVN7NCrypto7NSevenZ8CEncoderE = dso_local unnamed_addr constant { [13 x ptr], [8 x ptr], [8 x ptr], [8 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN7NCrypto7NSevenZ8CEncoderE, ptr @_ZN7NCrypto7NSevenZ8CEncoder14QueryInterfaceERK4GUIDPPv, ptr @_ZN7NCrypto7NSevenZ8CEncoder6AddRefEv, ptr @_ZN7NCrypto7NSevenZ8CEncoder7ReleaseEv, ptr @_ZN7NCrypto7NSevenZ8CEncoderD2Ev, ptr @_ZN7NCrypto7NSevenZ8CEncoderD0Ev, ptr @_ZN7NCrypto7NSevenZ10CBaseCoder4InitEv, ptr @_ZN7NCrypto7NSevenZ10CBaseCoder6FilterEPhj, ptr @_ZN7NCrypto7NSevenZ8CEncoder12CreateFilterEv, ptr @_ZN7NCrypto7NSevenZ10CBaseCoder17CryptoSetPasswordEPKhj, ptr @_ZN7NCrypto7NSevenZ8CEncoder20WriteCoderPropertiesEP20ISequentialOutStream, ptr @_ZN7NCrypto7NSevenZ8CEncoder15ResetInitVectorEv], [8 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN7NCrypto7NSevenZ8CEncoderE, ptr @_ZThn8_N7NCrypto7NSevenZ8CEncoder14QueryInterfaceERK4GUIDPPv, ptr @_ZThn8_N7NCrypto7NSevenZ8CEncoder6AddRefEv, ptr @_ZThn8_N7NCrypto7NSevenZ8CEncoder7ReleaseEv, ptr @_ZThn8_N7NCrypto7NSevenZ8CEncoderD1Ev, ptr @_ZThn8_N7NCrypto7NSevenZ8CEncoderD0Ev, ptr @_ZThn8_N7NCrypto7NSevenZ10CBaseCoder17CryptoSetPasswordEPKhj], [8 x ptr] [ptr inttoptr (i64 -176 to ptr), ptr @_ZTIN7NCrypto7NSevenZ8CEncoderE, ptr @_ZThn176_N7NCrypto7NSevenZ8CEncoder14QueryInterfaceERK4GUIDPPv, ptr @_ZThn176_N7NCrypto7NSevenZ8CEncoder6AddRefEv, ptr @_ZThn176_N7NCrypto7NSevenZ8CEncoder7ReleaseEv, ptr @_ZThn176_N7NCrypto7NSevenZ8CEncoderD1Ev, ptr @_ZThn176_N7NCrypto7NSevenZ8CEncoderD0Ev, ptr @_ZThn176_N7NCrypto7NSevenZ8CEncoder20WriteCoderPropertiesEP20ISequentialOutStream], [8 x ptr] [ptr inttoptr (i64 -184 to ptr), ptr @_ZTIN7NCrypto7NSevenZ8CEncoderE, ptr @_ZThn184_N7NCrypto7NSevenZ8CEncoder14QueryInterfaceERK4GUIDPPv, ptr @_ZThn184_N7NCrypto7NSevenZ8CEncoder6AddRefEv, ptr @_ZThn184_N7NCrypto7NSevenZ8CEncoder7ReleaseEv, ptr @_ZThn184_N7NCrypto7NSevenZ8CEncoderD1Ev, ptr @_ZThn184_N7NCrypto7NSevenZ8CEncoderD0Ev, ptr @_ZThn184_N7NCrypto7NSevenZ8CEncoder15ResetInitVectorEv] }, align 8
@_ZTIN7NCrypto7NSevenZ8CEncoderE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN7NCrypto7NSevenZ8CEncoderE, i32 1, i32 3, ptr @_ZTIN7NCrypto7NSevenZ10CBaseCoderE, i64 2, ptr @_ZTI29ICompressWriteCoderProperties, i64 45058, ptr @_ZTI22ICryptoResetInitVector, i64 47106 }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN7NCrypto7NSevenZ8CEncoderE = dso_local constant [28 x i8] c"N7NCrypto7NSevenZ8CEncoderE\00", align 1
@_ZTIN7NCrypto7NSevenZ10CBaseCoderE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN7NCrypto7NSevenZ10CBaseCoderE, i32 1, i32 4, ptr @_ZTI15ICompressFilter, i64 2, ptr @_ZTI18ICryptoSetPassword, i64 2050, ptr @_ZTI13CMyUnknownImp, i64 4098, ptr @_ZTIN7NCrypto7NSevenZ5CBaseE, i64 6146 }, align 8
@_ZTSN7NCrypto7NSevenZ10CBaseCoderE = dso_local constant [31 x i8] c"N7NCrypto7NSevenZ10CBaseCoderE\00", align 1
@_ZTI15ICompressFilter = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15ICompressFilter, ptr @_ZTI8IUnknown }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS15ICompressFilter = linkonce_odr dso_local constant [18 x i8] c"15ICompressFilter\00", comdat, align 1
@_ZTI8IUnknown = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS8IUnknown }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS8IUnknown = linkonce_odr dso_local constant [10 x i8] c"8IUnknown\00", comdat, align 1
@_ZTI18ICryptoSetPassword = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS18ICryptoSetPassword, ptr @_ZTI8IUnknown }, comdat, align 8
@_ZTS18ICryptoSetPassword = linkonce_odr dso_local constant [21 x i8] c"18ICryptoSetPassword\00", comdat, align 1
@_ZTI13CMyUnknownImp = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13CMyUnknownImp }, comdat, align 8
@_ZTS13CMyUnknownImp = linkonce_odr dso_local constant [16 x i8] c"13CMyUnknownImp\00", comdat, align 1
@_ZTIN7NCrypto7NSevenZ5CBaseE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7NCrypto7NSevenZ5CBaseE }, comdat, align 8
@_ZTSN7NCrypto7NSevenZ5CBaseE = linkonce_odr dso_local constant [25 x i8] c"N7NCrypto7NSevenZ5CBaseE\00", comdat, align 1
@_ZTI29ICompressWriteCoderProperties = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS29ICompressWriteCoderProperties, ptr @_ZTI8IUnknown }, comdat, align 8
@_ZTS29ICompressWriteCoderProperties = linkonce_odr dso_local constant [32 x i8] c"29ICompressWriteCoderProperties\00", comdat, align 1
@_ZTI22ICryptoResetInitVector = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS22ICryptoResetInitVector, ptr @_ZTI8IUnknown }, comdat, align 8
@_ZTS22ICryptoResetInitVector = linkonce_odr dso_local constant [25 x i8] c"22ICryptoResetInitVector\00", comdat, align 1
@_ZTVN7NCrypto7NSevenZ10CBaseCoderE = dso_local unnamed_addr constant { [11 x ptr], [8 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN7NCrypto7NSevenZ10CBaseCoderE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN7NCrypto7NSevenZ10CBaseCoderD2Ev, ptr @_ZN7NCrypto7NSevenZ10CBaseCoderD0Ev, ptr @_ZN7NCrypto7NSevenZ10CBaseCoder4InitEv, ptr @_ZN7NCrypto7NSevenZ10CBaseCoder6FilterEPhj, ptr @__cxa_pure_virtual, ptr @_ZN7NCrypto7NSevenZ10CBaseCoder17CryptoSetPasswordEPKhj], [8 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN7NCrypto7NSevenZ10CBaseCoderE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZThn8_N7NCrypto7NSevenZ10CBaseCoderD1Ev, ptr @_ZThn8_N7NCrypto7NSevenZ10CBaseCoderD0Ev, ptr @_ZThn8_N7NCrypto7NSevenZ10CBaseCoder17CryptoSetPasswordEPKhj] }, align 8
@_ZTVN7NCrypto7NSevenZ8CDecoderE = dso_local unnamed_addr constant { [12 x ptr], [8 x ptr], [8 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN7NCrypto7NSevenZ8CDecoderE, ptr @_ZN7NCrypto7NSevenZ8CDecoder14QueryInterfaceERK4GUIDPPv, ptr @_ZN7NCrypto7NSevenZ8CDecoder6AddRefEv, ptr @_ZN7NCrypto7NSevenZ8CDecoder7ReleaseEv, ptr @_ZN7NCrypto7NSevenZ8CDecoderD2Ev, ptr @_ZN7NCrypto7NSevenZ8CDecoderD0Ev, ptr @_ZN7NCrypto7NSevenZ10CBaseCoder4InitEv, ptr @_ZN7NCrypto7NSevenZ10CBaseCoder6FilterEPhj, ptr @_ZN7NCrypto7NSevenZ8CDecoder12CreateFilterEv, ptr @_ZN7NCrypto7NSevenZ10CBaseCoder17CryptoSetPasswordEPKhj, ptr @_ZN7NCrypto7NSevenZ8CDecoder21SetDecoderProperties2EPKhj], [8 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN7NCrypto7NSevenZ8CDecoderE, ptr @_ZThn8_N7NCrypto7NSevenZ8CDecoder14QueryInterfaceERK4GUIDPPv, ptr @_ZThn8_N7NCrypto7NSevenZ8CDecoder6AddRefEv, ptr @_ZThn8_N7NCrypto7NSevenZ8CDecoder7ReleaseEv, ptr @_ZThn8_N7NCrypto7NSevenZ8CDecoderD1Ev, ptr @_ZThn8_N7NCrypto7NSevenZ8CDecoderD0Ev, ptr @_ZThn8_N7NCrypto7NSevenZ10CBaseCoder17CryptoSetPasswordEPKhj], [8 x ptr] [ptr inttoptr (i64 -176 to ptr), ptr @_ZTIN7NCrypto7NSevenZ8CDecoderE, ptr @_ZThn176_N7NCrypto7NSevenZ8CDecoder14QueryInterfaceERK4GUIDPPv, ptr @_ZThn176_N7NCrypto7NSevenZ8CDecoder6AddRefEv, ptr @_ZThn176_N7NCrypto7NSevenZ8CDecoder7ReleaseEv, ptr @_ZThn176_N7NCrypto7NSevenZ8CDecoderD1Ev, ptr @_ZThn176_N7NCrypto7NSevenZ8CDecoderD0Ev, ptr @_ZThn176_N7NCrypto7NSevenZ8CDecoder21SetDecoderProperties2EPKhj] }, align 8
@_ZTIN7NCrypto7NSevenZ8CDecoderE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN7NCrypto7NSevenZ8CDecoderE, i32 1, i32 2, ptr @_ZTIN7NCrypto7NSevenZ10CBaseCoderE, i64 2, ptr @_ZTI30ICompressSetDecoderProperties2, i64 45058 }, align 8
@_ZTSN7NCrypto7NSevenZ8CDecoderE = dso_local constant [28 x i8] c"N7NCrypto7NSevenZ8CDecoderE\00", align 1
@_ZTI30ICompressSetDecoderProperties2 = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS30ICompressSetDecoderProperties2, ptr @_ZTI8IUnknown }, comdat, align 8
@_ZTS30ICompressSetDecoderProperties2 = linkonce_odr dso_local constant [33 x i8] c"30ICompressSetDecoderProperties2\00", comdat, align 1
@_ZTV13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE, ptr @_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEED2Ev, ptr @_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEED0Ev, ptr @_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6DeleteEii] }, comdat, align 8
@_ZTI13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE, ptr @_ZTI13CRecordVectorIPvE }, comdat, align 8
@_ZTS13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE = linkonce_odr dso_local constant [45 x i8] c"13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE\00", comdat, align 1
@_ZTI13CRecordVectorIPvE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13CRecordVectorIPvE, ptr @_ZTI17CBaseRecordVector }, comdat, align 8
@_ZTS13CRecordVectorIPvE = linkonce_odr dso_local constant [20 x i8] c"13CRecordVectorIPvE\00", comdat, align 1
@_ZTI17CBaseRecordVector = external constant ptr
@_ZTV7CBufferIhE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI7CBufferIhE, ptr @_ZN7CBufferIhED2Ev, ptr @_ZN7CBufferIhED0Ev] }, comdat, align 8
@_ZTI7CBufferIhE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS7CBufferIhE }, comdat, align 8
@_ZTS7CBufferIhE = linkonce_odr dso_local constant [12 x i8] c"7CBufferIhE\00", comdat, align 1
@IID_IUnknown = external local_unnamed_addr global %struct.GUID, align 4
@IID_ICryptoSetPassword = external local_unnamed_addr global %struct.GUID, align 4
@IID_ICompressWriteCoderProperties = external local_unnamed_addr global %struct.GUID, align 4
@IID_ICryptoResetInitVector = external local_unnamed_addr global %struct.GUID, align 4
@IID_ICompressSetDecoderProperties2 = external local_unnamed_addr global %struct.GUID, align 4
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_7zAes.cpp, ptr null }]

@_ZN7NCrypto7NSevenZ5CBaseC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7NCrypto7NSevenZ5CBaseC2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %_ZeqIhEbRK7CBufferIT_ES4_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !18
  %i.f = load i32, ptr %1, align 8, !tbaa !18
  %.not12 = icmp eq i32 %i.e, %i.f
  br i1 %.not12, label %.preheader, label %_ZeqIhEbRK7CBufferIT_ES4_.exit

.preheader:                                       ; preds = %bb.b
  %.not17 = icmp eq i32 %i.b, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %wide.trip.count = zext i32 %i.b to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !0

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv
  %i.l = load i8, ptr %i.k, align 1, !tbaa !20
  %.not13 = icmp eq i8 %i.j, %i.l
  br i1 %.not13, label %bb.c, label %_ZeqIhEbRK7CBufferIT_ES4_.exit

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !21
  %.not.i = icmp eq i64 %i.n, %i.p
  br i1 %.not.i, label %.preheader.i, label %_ZeqIhEbRK7CBufferIT_ES4_.exit

.preheader.i:                                     ; preds = %._crit_edge
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %_ZeqIhEbRK7CBufferIT_ES4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.01013.i = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %bb.e ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.01013.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.01013.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !20
  %.not12.i = icmp eq i8 %i.w, %i.y               ; 2 uses
  %i.z = add nuw i64 %.01013.i, 1                 ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.z, %i.n
  %or.cond.not = select i1 %.not12.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %bb.e, label %_ZeqIhEbRK7CBufferIT_ES4_.exit, !llvm.loop !1

_ZeqIhEbRK7CBufferIT_ES4_.exit:                   ; preds = %bb.d, %bb.e, %.preheader.i, %._crit_edge, %bb.a, %bb.b
  %.1 = phi i1 [ false, %bb.a ], [ %.not12.i, %bb.e ], [ false, %bb.b ], [ false, %._crit_edge ], [ true, %.preheader.i ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7NCrypto7NSevenZ8CKeyInfo15CalculateDigestEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %1 = alloca %struct.CSha256, align 8            ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 13 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !18
  %i.d = icmp eq i32 %i.c, 63
  br i1 %i.d, label %.preheader23, label %bb.b

.preheader23:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17   ; 6 uses
  %.not33 = icmp eq i32 %i.f, 0
  br i1 %.not33, label %.preheader22, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %wide.trip.count = zext i32 %i.f to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %i.f, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %index
  %wide.load = load <8 x i8>, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %index
  store <8 x i8> %wide.load, ptr %i.j, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader22, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv36.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader22:                                     ; preds = %scalar.ph, %middle.block, %.preheader23
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21   ; 3 uses
  %i.n = icmp ne i64 %i.m, 0
  %i.o = icmp ult i32 %i.f, 32
  %i.p = and i1 %i.n, %i.o
  br i1 %i.p, label %iter.check, label %.preheader

iter.check:                                       ; preds = %.preheader22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.t = zext nneg i32 %i.f to i64                ; 8 uses
  %i.u = add i64 %i.m, -1
  %i.v = sub nuw nsw i64 31, %i.t
  %umin = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.v) ; 3 uses
  %i.w = add nuw nsw i64 %umin, 1                 ; 5 uses
  %min.iters.check51 = icmp samesign ult i64 %umin, 3
  br i1 %min.iters.check51, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.x = ptrtoaddr ptr %i.r to i64
  %i.y = add i64 %i.a, %i.t
  %i.z = sub i64 %i.y, %i.x
  %i.aa = add i64 %i.z, 47
  %diff.check = icmp ult i64 %i.aa, 15
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check52 = icmp samesign ult i64 %umin, 15
  br i1 %min.iters.check52, label %vec.epilog.ph, label %vector.ph53

vector.ph53:                                      ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.w, 12
  %n.vec54 = and i64 %i.w, 48                     ; 5 uses
  %i.ac = add nuw nsw i64 %n.vec54, %i.t          ; 2 uses
  %invariant.gep.a = getelementptr i8, ptr %i.s, i64 %i.t
  br label %vector.body55

vector.body55:                                    ; preds = %vector.ph53, %vector.body55
  %index56 = phi i64 [ 0, %vector.ph53 ], [ %index.next58, %vector.body55 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %index56
  %wide.load57.a = load <16 x i8>, ptr %i.ad, align 1, !tbaa !20
  %gep.a = getelementptr i8, ptr %invariant.gep.a, i64 %index56
  store <16 x i8> %wide.load57.a, ptr %gep.a, align 1, !tbaa !20
  %index.next58 = add nuw i64 %index56, 16        ; 2 uses
  %2 = icmp eq i64 %index.next58, %n.vec54
  br i1 %2, label %middle.block59, label %vector.body55, !llvm.loop !54

middle.block59:                                   ; preds = %vector.body55
  %cmp.n60 = icmp eq i64 %i.w, %n.vec54
  br i1 %cmp.n60, label %.preheader.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block59
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec54, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec61 = and i64 %i.w, 60                     ; 4 uses
  %i.ae = add nuw nsw i64 %n.vec61, %i.t          ; 2 uses
  %invariant.gep70 = getelementptr i8, ptr %i.s, i64 %i.t
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index62 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next64, %vec.epilog.vector.body ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 %index62
  %wide.load63 = load <4 x i8>, ptr %i.af, align 1, !tbaa !20
  %gep71 = getelementptr i8, ptr %invariant.gep70, i64 %index62
  store <4 x i8> %wide.load63, ptr %gep71, align 1, !tbaa !20
  %index.next64 = add nuw i64 %index62, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next64, %n.vec61
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !55

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n65 = icmp eq i64 %i.w, %n.vec61
  br i1 %cmp.n65, label %.preheader.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv41.ph = phi i64 [ %i.t, %iter.check ], [ %i.t, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  %indvars.iv39.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec54, %vec.epilog.iter.check ], [ %n.vec61, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %scalar.ph ], [ %indvars.iv36.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv36
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv36
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !20
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count
  br i1 %exitcond.not, label %.preheader22, label %scalar.ph, !llvm.loop !56

.preheader.loopexit:                              ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block59
  %indvars.iv.next42.lcssa = phi i64 [ %i.ae, %vec.epilog.middle.block ], [ %i.ac, %middle.block59 ], [ %indvars.iv.next42, %vec.epilog.scalar.ph ]
  %i.ak = trunc nuw nsw i64 %indvars.iv.next42.lcssa to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader22
  %.1.lcssa = phi i32 [ %i.f, %.preheader22 ], [ %i.ak, %.preheader.loopexit ] ; 3 uses
  %i.al = icmp ult i32 %.1.lcssa, 32
  br i1 %i.al, label %.lr.ph32, label %.loopexit

.lr.ph32:                                         ; preds = %.preheader
  %i.am = zext nneg i32 %.1.lcssa to i64
  %i.an = getelementptr i8, ptr %0, i64 %i.am
  %scevgep = getelementptr i8, ptr %i.an, i64 48
  %narrow = sub nuw nsw i32 32, %.1.lcssa
  %i.ao = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.ao, i1 false), !tbaa !20
  br label %.loopexit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %vec.epilog.scalar.ph ], [ %indvars.iv41.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %vec.epilog.scalar.ph ], [ %indvars.iv39.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv39
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !20
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv41
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !20
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.as = icmp ugt i64 %i.m, %indvars.iv.next40
  %i.at = icmp samesign ult i64 %indvars.iv41, 31
  %i.au = and i1 %i.as, %i.at
  br i1 %i.au, label %vec.epilog.scalar.ph, label %.preheader.loopexit, !llvm.loop !57

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @Sha256_Init(ptr noundef nonnull %1)
  %i.av = load i32, ptr %0, align 8, !tbaa !18
  %i.aw = zext nneg i32 %i.av to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 0, ptr %i.b, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 6 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 7 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @Sha256_Final(ptr noundef nonnull %1, ptr noundef nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %.loopexit

bb.d:                                             ; preds = %bb.b, %bb.l
  %.01825 = phi i64 [ 0, %bb.b ], [ %i.cd, %bb.l ]
  %i.bj = load i32, ptr %i.ay, align 4, !tbaa !17
  %i.bk = zext i32 %i.bj to i64
  call void @Sha256_Update(ptr noundef nonnull %1, ptr noundef nonnull %i.ax, i64 noundef %i.bk)
  %i.bl = load ptr, ptr %i.az, align 8, !tbaa !22
  %i.bm = load i64, ptr %i.ba, align 8, !tbaa !21
  call void @Sha256_Update(ptr noundef nonnull %1, ptr noundef %i.bl, i64 noundef %i.bm)
  call void @Sha256_Update(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i64 noundef 8)
  %i.bn = load i8, ptr %i.b, align 8, !tbaa !20
  %i.bo = add i8 %i.bn, 1                         ; 2 uses
  store i8 %i.bo, ptr %i.b, align 8, !tbaa !20
  %.not = icmp eq i8 %i.bo, 0
  br i1 %.not, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.bp = load i8, ptr %i.bb, align 1, !tbaa !20
  %i.bq = add i8 %i.bp, 1                         ; 2 uses
  store i8 %i.bq, ptr %i.bb, align 1, !tbaa !20
  %.not.1 = icmp eq i8 %i.bq, 0
  br i1 %.not.1, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.br = load i8, ptr %i.bc, align 2, !tbaa !20
  %i.bs = add i8 %i.br, 1                         ; 2 uses
  store i8 %i.bs, ptr %i.bc, align 2, !tbaa !20
  %.not.2 = icmp eq i8 %i.bs, 0
  br i1 %.not.2, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.bt = load i8, ptr %i.bd, align 1, !tbaa !20
  %i.bu = add i8 %i.bt, 1                         ; 2 uses
  store i8 %i.bu, ptr %i.bd, align 1, !tbaa !20
  %.not.3 = icmp eq i8 %i.bu, 0
  br i1 %.not.3, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.bv = load i8, ptr %i.be, align 4, !tbaa !20
  %i.bw = add i8 %i.bv, 1                         ; 2 uses
  store i8 %i.bw, ptr %i.be, align 4, !tbaa !20
  %.not.4 = icmp eq i8 %i.bw, 0
  br i1 %.not.4, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bx = load i8, ptr %i.bf, align 1, !tbaa !20
  %i.by = add i8 %i.bx, 1                         ; 2 uses
  store i8 %i.by, ptr %i.bf, align 1, !tbaa !20
  %.not.5 = icmp eq i8 %i.by, 0
  br i1 %.not.5, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bz = load i8, ptr %i.bg, align 2, !tbaa !20
  %i.ca = add i8 %i.bz, 1                         ; 2 uses
  store i8 %i.ca, ptr %i.bg, align 2, !tbaa !20
  %.not.6 = icmp eq i8 %i.ca, 0
  br i1 %.not.6, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cb = load i8, ptr %i.bh, align 1, !tbaa !20
  %i.cc = add i8 %i.cb, 1
  store i8 %i.cc, ptr %i.bh, align 1, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.cd = add i64 %.01825, 1                      ; 2 uses
  %.018.highbits = lshr i64 %i.cd, %i.aw
  %i.ce = icmp eq i64 %.018.highbits, 0
  br i1 %i.ce, label %bb.d, label %bb.c, !llvm.loop !58

.loopexit:                                        ; preds = %.lr.ph32, %.preheader, %bb.c
  ret void
}

declare void @Sha256_Init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @Sha256_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @Sha256_Final(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN7NCrypto7NSevenZ13CKeyInfoCache4FindERNS0_8CKeyInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !27   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !17
  %.fr82 = freeze i32 %i.h                        ; 4 uses
  %i.i = load i32, ptr %1, align 8                ; 4 uses
  %.not17.i = icmp eq i32 %.fr82, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %wide.trip.count.i = zext i32 %.fr82 to i64     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8
  %.fr83 = freeze i64 %i.l                        ; 5 uses
  %i.m = icmp eq i64 %.fr83, 0                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %wide.trip.count115 = zext nneg i32 %i.c to i64 ; 4 uses
  br i1 %.not17.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.m, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %.critedge.us.us
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %.critedge.us.us ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !17
  %.not.i.us.us = icmp eq i32 %i.s, 0
  br i1 %.not.i.us.us, label %bb.b, label %.critedge.us.us

bb.b:                                             ; preds = %.lr.ph.split.us.split.us
  %i.t = load i32, ptr %i.q, align 8, !tbaa !18
  %.not12.i.us.us = icmp eq i32 %i.i, %i.t
  br i1 %.not12.i.us.us, label %.preheader.i.us.us, label %.critedge.us.us

.preheader.i.us.us:                               ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !21
  %.not.i.i.us.us = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.us.us, label %_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit, label %.critedge.us.us

.critedge.us.us:                                  ; preds = %.preheader.i.us.us, %bb.b, %.lr.ph.split.us.split.us
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count115
  br i1 %exitcond116.not, label %.thread, label %.lr.ph.split.us.split.us, !llvm.loop !59

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %.critedge.us
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %.critedge.us ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv107
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !17
  %.not.i.us = icmp eq i32 %i.z, 0
  br i1 %.not.i.us, label %bb.c, label %.critedge.us

bb.c:                                             ; preds = %.lr.ph.split.us.split
  %i.aa = load i32, ptr %i.x, align 8, !tbaa !18
  %.not12.i.us = icmp eq i32 %i.i, %i.aa
  br i1 %.not12.i.us, label %.preheader.i.us, label %.critedge.us

.preheader.i.us:                                  ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !21
  %.not.i.i.us = icmp eq i64 %.fr83, %i.ac
  br i1 %.not.i.i.us, label %.preheader.i.i.us, label %.critedge.us

.preheader.i.i.us:                                ; preds = %.preheader.i.us
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader.i.i.us
  %.01013.i.i.us = phi i64 [ 0, %.preheader.i.i.us ], [ %i.aj, %bb.e ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 %.01013.i.i.us
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.01013.i.i.us
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !20
  %.not12.i.i.us = icmp eq i8 %i.ag, %i.ai
  br i1 %.not12.i.i.us, label %bb.e, label %.critedge.us

bb.e:                                             ; preds = %bb.d
  %i.aj = add nuw i64 %.01013.i.i.us, 1           ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.aj, %.fr83
  br i1 %exitcond.not.i.i.us, label %_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit, label %bb.d, !llvm.loop !1

.critedge.us:                                     ; preds = %bb.d, %.preheader.i.us, %bb.c, %.lr.ph.split.us.split
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count115
  br i1 %exitcond111.not, label %.thread, label %.lr.ph.split.us.split, !llvm.loop !59

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.m, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %.critedge.us57
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %.critedge.us57 ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv102
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !29 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !17
  %.not.i.us52 = icmp eq i32 %.fr82, %i.an
  br i1 %.not.i.us52, label %bb.f, label %.critedge.us57

bb.f:                                             ; preds = %.lr.ph.split.split.us
  %i.ao = load i32, ptr %i.al, align 8, !tbaa !18
  %.not12.i.us53 = icmp eq i32 %i.i, %i.ao
  br i1 %.not12.i.us53, label %.preheader.i.us54, label %.critedge.us57

.preheader.i.us54:                                ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.preheader.i.us54
  %indvars.iv.i.us = phi i64 [ 0, %.preheader.i.us54 ], [ %indvars.iv.next.i.us, %bb.h ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.us
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i.us
  %i.at = load i8, ptr %i.as, align 1, !tbaa !20
  %.not13.i.us = icmp eq i8 %i.ar, %i.at
  br i1 %.not13.i.us, label %bb.h, label %.critedge.us57

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %._crit_edge.i.loopexit.us, label %bb.g, !llvm.loop !0

._crit_edge.i.loopexit.us:                        ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.av = load i64, ptr %i.au, align 8, !tbaa !21
  %.not.i.i.us55 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.us55, label %_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit, label %.critedge.us57

.critedge.us57:                                   ; preds = %bb.g, %._crit_edge.i.loopexit.us, %bb.f, %.lr.ph.split.split.us
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count115
  br i1 %exitcond106.not, label %.thread, label %.lr.ph.split.split.us, !llvm.loop !59

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %.critedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !29 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !17
  %.not.i = icmp eq i32 %.fr82, %i.az
  br i1 %.not.i, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.lr.ph.split.split
  %i.ba = load i32, ptr %i.ax, align 8, !tbaa !18
  %.not12.i = icmp eq i32 %i.i, %i.ba
  br i1 %.not12.i, label %.preheader.i, label %.critedge

.preheader.i:                                     ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i.loopexit, label %bb.k, !llvm.loop !0

bb.k:                                             ; preds = %bb.j, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !20
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !20
  %.not13.i = icmp eq i8 %i.bd, %i.bf
  br i1 %.not13.i, label %bb.j, label %.critedge

._crit_edge.i.loopexit:                           ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !21
  %.not.i.i = icmp eq i64 %.fr83, %i.bh
  br i1 %.not.i.i, label %.preheader.i.i, label %.critedge

.preheader.i.i:                                   ; preds = %._crit_edge.i.loopexit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !22
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %i.bk = add nuw i64 %.01013.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bk, %.fr83
  br i1 %exitcond.not.i.i, label %_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit, label %bb.m, !llvm.loop !1

bb.m:                                             ; preds = %bb.l, %.preheader.i.i
  %.01013.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.bk, %bb.l ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.o, i64 %.01013.i.i
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.01013.i.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !20
  %.not12.i.i = icmp eq i8 %i.bm, %i.bo
  br i1 %.not12.i.i, label %bb.l, label %.critedge

_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit: ; preds = %bb.l, %._crit_edge.i.loopexit.us, %bb.e, %.preheader.i.us.us
  %i.bp = phi ptr [ %i.q, %.preheader.i.us.us ], [ %i.x, %bb.e ], [ %i.al, %._crit_edge.i.loopexit.us ], [ %i.ax, %bb.l ] ; 36 uses
  %.01839.in = phi i64 [ %indvars.iv112, %.preheader.i.us.us ], [ %indvars.iv107, %bb.e ], [ %indvars.iv102, %._crit_edge.i.loopexit.us ], [ %indvars.iv, %bb.l ]
  %i.bq = ptrtoaddr ptr %i.bp to i64              ; 2 uses
  %i.br = add nuw i64 %i.bq, 48
  %i.bs = add i64 %i.bq, 80
  %i.bt = add nuw i64 %i.a, 48
  %i.bu = add nuw i64 %i.a, 80
  %rt.bound0 = icmp ult i64 %i.bt, %i.bs
  %rt.bound1 = icmp ult i64 %i.br, %i.bu
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit.rtscalar, label %_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit.rtvec, !prof !60

bb.n:                                             ; preds = %_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit.rtcont
  tail call void @_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6InsertEiRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %.rtmerge, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(80) %i.bp)
  %i.bv = add nuw nsw i32 %.01839.rtmerge, 1      ; 3 uses
  %i.bw = add nuw nsw i32 %.01839.rtmerge, 2
  %i.bx = load i32, ptr %i.b, align 4, !tbaa !27  ; 2 uses
  %i.by = icmp sgt i32 %i.bw, %i.bx
  %i.bz = sub nsw i32 %i.bx, %i.bv
  %spec.select.i = select i1 %i.by, i32 %i.bz, i32 1 ; 3 uses
  %i.ca = icmp sgt i32 %spec.select.i, 0
  br i1 %i.ca, label %.lr.ph.i22, label %_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6DeleteEii.exit

.lr.ph.i22:                                       ; preds = %bb.n
  %i.cb = zext nneg i32 %i.bv to i64
  %i.cc = zext nneg i32 %spec.select.i to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %.lr.ph.i22
  %indvars.iv.i23 = phi i64 [ 0, %.lr.ph.i22 ], [ %indvars.iv.next.i24, %bb.r ] ; 2 uses
  %i.cd = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %indvars.iv.i23
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %i.cb
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !29 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.ci, align 8, !tbaa !31
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !22 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZN7NCrypto7NSevenZ8CKeyInfoD2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZdaPv(ptr noundef nonnull %i.ck) #21, !inline_history !32
  br label %_ZN7NCrypto7NSevenZ8CKeyInfoD2Ev.exit.i

_ZN7NCrypto7NSevenZ8CKeyInfoD2Ev.exit.i:          ; preds = %bb.q, %bb.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef 80) #21
  br label %bb.r

bb.r:                                             ; preds = %_ZN7NCrypto7NSevenZ8CKeyInfoD2Ev.exit.i, %bb.o
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next.i24, %i.cc
  br i1 %exitcond121.not, label %_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6DeleteEii.exit, label %bb.o, !llvm.loop !2

_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6DeleteEii.exit: ; preds = %bb.r, %bb.n
  tail call void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %.rtmerge, i32 noundef %i.bv, i32 noundef %spec.select.i)
  br label %.thread

.critedge:                                        ; preds = %bb.k, %bb.m, %.lr.ph.split.split, %bb.i, %._crit_edge.i.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count115
  br i1 %exitcond.not, label %.thread, label %.lr.ph.split.split, !llvm.loop !59

.thread:                                          ; preds = %.critedge, %.critedge.us57, %.critedge.us, %.critedge.us.us, %bb.a, %_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6DeleteEii.exit, %_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit.rtcont
  %i.cm = phi i1 [ true, %_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit.rtcont ], [ true, %_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6DeleteEii.exit ], [ false, %bb.a ], [ false, %.critedge.us57 ], [ false, %.critedge.us ], [ false, %.critedge.us.us ], [ false, %.critedge ]
  ret i1 %i.cm

_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit.rtvec: ; preds = %_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cp = load <16 x i8>, ptr %i.cn, align 1, !tbaa !20
  store <16 x i8> %i.cp, ptr %i.co, align 8, !tbaa !20
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cs = load <16 x i8>, ptr %i.cq, align 1, !tbaa !20
  store <16 x i8> %i.cs, ptr %i.cr, align 8, !tbaa !20
  br label %_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit.rtcont

_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit.rtscalar: ; preds = %_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !20
  store i8 %i.cv, ptr %i.cu, align 8, !tbaa !20
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bp, i64 49
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !20
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !20
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bp, i64 50
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !20
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 50
  store i8 %i.da, ptr %i.db, align 2, !tbaa !20
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bp, i64 51
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !20
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 51
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !20
  %i.df = getelementptr inbounds nuw i8, ptr %i.bp, i64 52
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !20
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i8 %i.dg, ptr %i.dh, align 4, !tbaa !20
  %i.di = getelementptr inbounds nuw i8, ptr %i.bp, i64 53
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !20
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 53
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !20
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bp, i64 54
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !20
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 54
  store i8 %i.dm, ptr %i.dn, align 2, !tbaa !20
  %i.do = getelementptr inbounds nuw i8, ptr %i.bp, i64 55
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !20
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 55
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !20
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !20
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %i.ds, ptr %i.dt, align 8, !tbaa !20
  %i.du = getelementptr inbounds nuw i8, ptr %i.bp, i64 57
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !20
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 57
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !20
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bp, i64 58
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !20
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 58
  store i8 %i.dy, ptr %i.dz, align 2, !tbaa !20
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bp, i64 59
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !20
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 59
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !20
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bp, i64 60
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !20
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i8 %i.ee, ptr %i.ef, align 4, !tbaa !20
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bp, i64 61
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !20
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 61
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !20
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bp, i64 62
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !20
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 62
  store i8 %i.ek, ptr %i.el, align 2, !tbaa !20
  %i.em = getelementptr inbounds nuw i8, ptr %i.bp, i64 63
  %i.en = load i8, ptr %i.em, align 1, !tbaa !20
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 63
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !20
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !20
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i8 %i.eq, ptr %i.er, align 8, !tbaa !20
  %i.es = getelementptr inbounds nuw i8, ptr %i.bp, i64 65
  %i.et = load i8, ptr %i.es, align 1, !tbaa !20
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 65
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !20
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bp, i64 66
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !20
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 66
  store i8 %i.ew, ptr %i.ex, align 2, !tbaa !20
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bp, i64 67
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !20
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 67
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !20
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bp, i64 68
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !20
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i8 %i.fc, ptr %i.fd, align 4, !tbaa !20
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bp, i64 69
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !20
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 69
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !20
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bp, i64 70
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !20
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 70
  store i8 %i.fi, ptr %i.fj, align 2, !tbaa !20
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bp, i64 71
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !20
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 71
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !20
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !20
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i8 %i.fo, ptr %i.fp, align 8, !tbaa !20
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bp, i64 73
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !20
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 73
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !20
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bp, i64 74
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !20
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 74
  store i8 %i.fu, ptr %i.fv, align 2, !tbaa !20
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bp, i64 75
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !20
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 75
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !20
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bp, i64 76
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !20
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i8 %i.ga, ptr %i.gb, align 4, !tbaa !20
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bp, i64 77
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !20
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 77
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !20
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bp, i64 78
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !20
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 78
  store i8 %i.gg, ptr %i.gh, align 2, !tbaa !20
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bp, i64 79
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !20
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 79
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !20
  br label %_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit.rtcont

_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit.rtcont: ; preds = %_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit.rtscalar, %_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit.rtvec
  %.01839.rtmerge = trunc i64 %.01839.in to i32   ; 3 uses
  %.not.rtmerge = icmp eq i32 %.01839.rtmerge, 0
  %.rtmerge = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not.rtmerge, label %.thread, label %bb.n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6InsertEiRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #22 ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21   ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #22
          to label %.noexc unwind label %bb.f     ; 3 uses

.noexc:                                           ; preds = %bb.b
  %i.h = load i64, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %.not10.i.i.i.i = icmp eq i64 %i.h, 0
  %.pr.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !22 ; 3 uses
  br i1 %.not10.i.i.i.i, label %thread-pre-split.i.i.i, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.h, i64 %i.f)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.g, ptr align 1 %.pr.i.i.i, i64 %i.i, i1 false)
  br label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %bb.c, %.noexc
  %i.j = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.j, label %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pr.i.i.i) #21
  br label %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i

_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i:         ; preds = %bb.d, %thread-pre-split.i.i.i
  store ptr %i.g, ptr %i.d, align 8, !tbaa !22
  store i64 %i.f, ptr %i.c, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22
  %i.m = load i64, ptr %i.e, align 8, !tbaa !21
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.g, ptr align 1 %i.l, i64 %i.m, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !tbaa.struct !61
  tail call void @_ZN17CBaseRecordVector13InsertOneItemEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !28
  %i.r = sext i32 %1 to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.r
  store ptr %i.a, ptr %i.s, align 8, !tbaa !29
  ret void

bb.f:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #21
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 {
_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit:
  %i.a = add nsw i32 %2, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !27   ; 2 uses
  %i.d = icmp sgt i32 %i.a, %i.c
  %i.e = sub nsw i32 %i.c, %1
  %spec.select = select i1 %i.d, i32 %i.e, i32 %2 ; 3 uses
  %i.f = icmp sgt i32 %spec.select, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = sext i32 %1 to i64
  %i.i = zext nneg i32 %spec.select to i64
  br label %bb.a

._crit_edge:                                      ; preds = %bb.d, %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  tail call void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %spec.select)
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29   ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.o, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN7NCrypto7NSevenZ8CKeyInfoD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #21, !inline_history !32
  br label %_ZN7NCrypto7NSevenZ8CKeyInfoD2Ev.exit

_ZN7NCrypto7NSevenZ8CKeyInfoD2Ev.exit:            ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 80) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN7NCrypto7NSevenZ8CKeyInfoD2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.s, label %bb.a, label %._crit_edge, !llvm.loop !2
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7NCrypto7NSevenZ13CKeyInfoCache3AddERNS0_8CKeyInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN7NCrypto7NSevenZ13CKeyInfoCache4FindERNS0_8CKeyInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !27
  %i.e = load i32, ptr %0, align 8, !tbaa !36
  %.not = icmp slt i32 %i.d, %i.e
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN17CBaseRecordVector10DeleteBackEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6InsertEiRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @_ZN17CBaseRecordVector10DeleteBackEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7NCrypto7NSevenZ13CKeyInfoCacheD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE, i64 16), ptr %i.a, align 8, !tbaa !31
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEED2Ev.exit unwind label %bb.b, !inline_history !37

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #23, !inline_history !37
  unreachable

_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #20, !inline_history !37
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8NWindows16NSynchronization16CCriticalSectionD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %0) #20 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN7NCrypto7NSevenZ5CBaseC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(140) initializes((0, 4), (8, 88), (120, 140)) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 16, ptr %0, align 8, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.c, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE, i64 16), ptr %i.a, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i8 0, i64 20, i1 false)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7NCrypto7NSevenZ5CBase15CalculateDigestEv(ptr noundef nonnull align 8 dereferenceable(140) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN7NCrypto7NSevenZL31g_GlobalKeyCacheCriticalSectionE) #20 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.c = invoke noundef zeroext i1 @_ZN7NCrypto7NSevenZ13CKeyInfoCache4FindERNS0_8CKeyInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef zeroext i1 @_ZN7NCrypto7NSevenZ13CKeyInfoCache4FindERNS0_8CKeyInfoE(ptr noundef nonnull align 8 dereferenceable(40) @_ZN7NCrypto7NSevenZL16g_GlobalKeyCacheE, ptr noundef nonnull align 8 dereferenceable(80) %i.b)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  br i1 %i.d, label %_ZN7NCrypto7NSevenZ13CKeyInfoCache3AddERNS0_8CKeyInfoE.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN7NCrypto7NSevenZL16g_GlobalKeyCacheE, i64 20), align 4, !tbaa !27
  %i.f = load i32, ptr @_ZN7NCrypto7NSevenZL16g_GlobalKeyCacheE, align 8, !tbaa !36
  %.not.i = icmp slt i32 %i.e, %i.f
  br i1 %.not.i, label %.noexc11.invoke, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN17CBaseRecordVector10DeleteBackEv(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN7NCrypto7NSevenZL16g_GlobalKeyCacheE, i64 8))
          to label %.noexc11.invoke unwind label %bb.f

bb.f:                                             ; preds = %.noexc11.invoke, %bb.n, %_ZN7NCrypto7NSevenZ13CKeyInfoCache3AddERNS0_8CKeyInfoE.exit8, %.noexc6, %bb.l, %bb.j, %bb.e, %bb.c, %bb.i, %bb.g, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN7NCrypto7NSevenZL31g_GlobalKeyCacheCriticalSectionE) #20 ; 0 uses
  resume { ptr, i32 } %i.g

bb.g:                                             ; preds = %bb.b
  %i.i = invoke noundef zeroext i1 @_ZN7NCrypto7NSevenZ13CKeyInfoCache4FindERNS0_8CKeyInfoE(ptr noundef nonnull align 8 dereferenceable(40) @_ZN7NCrypto7NSevenZL16g_GlobalKeyCacheE, ptr noundef nonnull align 8 dereferenceable(80) %i.b)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  br i1 %i.i, label %_ZN7NCrypto7NSevenZ13CKeyInfoCache3AddERNS0_8CKeyInfoE.exit8, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN7NCrypto7NSevenZ8CKeyInfo15CalculateDigestEv(ptr noundef nonnull align 8 dereferenceable(80) %i.b)
          to label %bb.j unwind label %bb.f

bb.j:                                             ; preds = %bb.i
  %i.j = invoke noundef zeroext i1 @_ZN7NCrypto7NSevenZ13CKeyInfoCache4FindERNS0_8CKeyInfoE(ptr noundef nonnull align 8 dereferenceable(40) @_ZN7NCrypto7NSevenZL16g_GlobalKeyCacheE, ptr noundef nonnull align 8 dereferenceable(80) %i.b)
          to label %.noexc5 unwind label %bb.f

.noexc5:                                          ; preds = %bb.j
  br i1 %i.j, label %_ZN7NCrypto7NSevenZ13CKeyInfoCache3AddERNS0_8CKeyInfoE.exit8, label %bb.k
end_hunk_0
begin_hunk_1_@_ZN7NCrypto7NSevenZ8CEncoder20WriteCoderPropertiesEP20ISequentialOutStream:bb.a
  %or.cond = select i1 %i.v, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = shl i32 %i.u, 4
  %i.x = add i32 %i.w, 240
  %i.y = select i1 %i.v, i32 0, i32 %i.x
  %i.z = call i32 @llvm.usub.sat.i32(i32 %i.i, i32 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.aa = or i32 %i.y, %i.z
  %i.ab = trunc i32 %i.aa to i8
  store i8 %i.ab, ptr %i.b, align 1, !tbaa !20
  %i.ac = load ptr, ptr %1, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i32 noundef 1, ptr noundef null) ; 2 uses
  %.not45 = icmp eq i32 %i.af, 0
  br i1 %.not45, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.ag = load i32, ptr %i.k, align 4, !tbaa !42  ; 2 uses
  %.not46 = icmp eq i32 %i.ag, 0
  br i1 %.not46, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = zext i32 %i.ag to i64
  %i.aj = call noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef nonnull %1, ptr noundef nonnull %i.ah, i64 noundef %i.ai) ; 2 uses
  %.not47 = icmp eq i32 %i.aj, 0
  br i1 %.not47, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.al = zext i32 %i.i to i64
  %i.am = call noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef nonnull %1, ptr noundef nonnull %i.ak, i64 noundef %i.al) ; 2 uses
  %.not49 = icmp eq i32 %i.am, 0
  br i1 %.not49, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.c, %bb.h
  %.5 = phi i32 [ 0, %bb.h ], [ %i.am, %bb.g ], [ %i.aj, %bb.e ], [ %i.af, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %._crit_edge, %bb.i
  %.6 = phi i32 [ %i.t, %._crit_edge ], [ %.5, %bb.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.6
}

declare noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local noundef i32 @_ZThn176_N7NCrypto7NSevenZ8CEncoder20WriteCoderPropertiesEP20ISequentialOutStream(ptr noundef initializes((-112, -108)) %0, ptr noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -176
  %i.b = tail call noundef i32 @_ZN7NCrypto7NSevenZ8CEncoder20WriteCoderPropertiesEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(192) %i.a, ptr noundef %1)
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN7NCrypto7NSevenZ8CEncoder12CreateFilterEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(328) ptr @_Znwm(i64 noundef 328) #22 ; 5 uses
  invoke void @_ZN7NCrypto14CAesCbcEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(328) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !3 ; 0 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !45   ; 3 uses
  %.not6.i = icmp eq ptr %i.g, null
  br i1 %.not6.i, label %_ZN9CMyComPtrI15ICompressFilterEaSEPS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g), !inline_history !3 ; 0 uses
  br label %_ZN9CMyComPtrI15ICompressFilterEaSEPS0_.exit

_ZN9CMyComPtrI15ICompressFilterEaSEPS0_.exit:     ; preds = %bb.b, %bb.c
  store ptr %i.a, ptr %i.b, align 8, !tbaa !45
  ret i32 0

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 328) #21
  resume { ptr, i32 } %i.l
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare void @_ZN7NCrypto14CAesCbcEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(328)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 -2147467263, 1) i32 @_ZN7NCrypto7NSevenZ8CDecoder21SetDecoderProperties2EPKhj(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(184) initializes((64, 88), (144, 160)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #12 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !tbaa !20
  %i.e = icmp eq i32 %2, 0
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %1, align 1, !tbaa !20      ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 3 uses
  %i.h = and i32 %i.g, 63                         ; 2 uses
  store i32 %i.h, ptr %i.c, align 8, !tbaa !41
  %i.i = icmp ult i8 %i.f, 64
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i32 %i.g, 7                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store i32 %i.j, ptr %i.k, align 4, !tbaa !42
  %i.l = icmp eq i32 %2, 1
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i32 %i.g, 6
  %i.n = and i32 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !20
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = lshr i32 %i.q, 4
  %i.s = add nuw nsw i32 %i.r, %i.j               ; 6 uses
  store i32 %i.s, ptr %i.k, align 4, !tbaa !42
  %i.t = and i32 %i.q, 15
  %i.u = add nuw nsw i32 %i.t, %i.n               ; 5 uses
  %i.v = add nuw nsw i32 %i.s, 2
  %i.w = add nuw nsw i32 %i.v, %i.u
  %i.x = icmp ugt i32 %i.w, %2
  br i1 %i.x, label %bb.e, label %.preheader39

.preheader39:                                     ; preds = %bb.d
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %.preheader, label %iter.check

iter.check:                                       ; preds = %.preheader39
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.s to i64    ; 6 uses
  %min.iters.check = icmp samesign ult i32 %i.s, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.z = sub i64 %i.a, %i.b
  %i.aa = add i64 %i.z, 69
  %diff.check = icmp ult i64 %i.aa, 15
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check64 = icmp samesign ult i32 %i.s, 16
  br i1 %min.iters.check64, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %wide.trip.count, 16           ; 4 uses
  %i.ab = or disjoint i64 %n.vec, 2               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 2
  %wide.load = load <16 x i8>, ptr %i.ac, align 1, !tbaa !20
  store <16 x i8> %wide.load, ptr %i.y, align 8, !tbaa !20
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %i.ad = and i64 %wide.trip.count, 12
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %wide.trip.count, 28         ; 4 uses
  %i.ae = or disjoint i64 %n.vec65, 2             ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next, %vec.epilog.vector.body ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %wide.load66 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 %index
  store <4 x i8> %wide.load66, ptr %i.ah, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec65
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !62

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n67 = icmp eq i64 %n.vec65, %wide.trip.count
  br i1 %cmp.n67, label %.preheader, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv48.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec65, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 2, %iter.check ], [ 2, %vector.memcheck ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader:                                       ; preds = %vec.epilog.scalar.ph, %vector.ph, %vec.epilog.middle.block, %.preheader39
  %.0.lcssa = phi i64 [ 2, %.preheader39 ], [ %i.ae, %vec.epilog.middle.block ], [ %i.ab, %vector.ph ], [ %indvars.iv.next, %vec.epilog.scalar.ph ] ; 7 uses
  %.not46 = icmp eq i32 %i.u, 0
  br i1 %.not46, label %._crit_edge, label %iter.check82

iter.check82:                                     ; preds = %.preheader
  %wide.trip.count60 = zext nneg i32 %i.u to i64  ; 6 uses
  %min.iters.check71 = icmp samesign ult i32 %i.u, 4
  br i1 %min.iters.check71, label %vec.epilog.scalar.ph84.preheader, label %vector.memcheck72

vector.memcheck72:                                ; preds = %iter.check82
  %i.aj = add i64 %.0.lcssa, %i.b
  %i.ak = sub i64 %i.a, %i.aj
  %i.al = add i64 %i.ak, 143
  %diff.check73 = icmp ult i64 %i.al, 15
  br i1 %diff.check73, label %vec.epilog.scalar.ph84.preheader, label %vector.main.loop.iter.check74

vector.main.loop.iter.check74:                    ; preds = %vector.memcheck72
  %min.iters.check75 = icmp samesign ult i32 %i.u, 16
  br i1 %min.iters.check75, label %vec.epilog.ph86, label %vector.ph76

vector.ph76:                                      ; preds = %vector.main.loop.iter.check74
  %n.vec77 = and i64 %wide.trip.count60, 16       ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa
  %wide.load79 = load <16 x i8>, ptr %i.am, align 1, !tbaa !20
  store <16 x i8> %wide.load79, ptr %i.d, align 8, !tbaa !20
  %cmp.n81 = icmp eq i64 %n.vec77, %wide.trip.count60
  br i1 %cmp.n81, label %._crit_edge, label %vec.epilog.iter.check83

vec.epilog.iter.check83:                          ; preds = %vector.ph76
  %i.an = add i64 %.0.lcssa, %n.vec77
  %i.ao = and i64 %wide.trip.count60, 12
  %min.epilog.iters.check85 = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check85, label %vec.epilog.scalar.ph84.preheader, label %vec.epilog.ph86, !prof !25

vec.epilog.ph86:                                  ; preds = %vector.main.loop.iter.check74, %vec.epilog.iter.check83
  %vec.epilog.resume.val87 = phi i64 [ %n.vec77, %vec.epilog.iter.check83 ], [ 0, %vector.main.loop.iter.check74 ]
  %n.vec88 = and i64 %wide.trip.count60, 28       ; 4 uses
  %i.ap = add i64 %.0.lcssa, %n.vec88
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa
  br label %vec.epilog.vector.body89

vec.epilog.vector.body89:                         ; preds = %vec.epilog.vector.body89, %vec.epilog.ph86
  %index90 = phi i64 [ %vec.epilog.resume.val87, %vec.epilog.ph86 ], [ %index.next92, %vec.epilog.vector.body89 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index90
  %wide.load91 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 %index90
  store <4 x i8> %wide.load91, ptr %i.as, align 4, !tbaa !20
  %index.next92 = add nuw i64 %index90, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next92, %n.vec88
  br i1 %i.at, label %vec.epilog.middle.block93, label %vec.epilog.vector.body89, !llvm.loop !63

vec.epilog.middle.block93:                        ; preds = %vec.epilog.vector.body89
  %cmp.n94 = icmp eq i64 %n.vec88, %wide.trip.count60
  br i1 %cmp.n94, label %._crit_edge, label %vec.epilog.scalar.ph84.preheader

vec.epilog.scalar.ph84.preheader:                 ; preds = %iter.check82, %vector.memcheck72, %vec.epilog.iter.check83, %vec.epilog.middle.block93
  %indvars.iv55.ph = phi i64 [ 0, %iter.check82 ], [ 0, %vector.memcheck72 ], [ %n.vec77, %vec.epilog.iter.check83 ], [ %n.vec88, %vec.epilog.middle.block93 ]
  %indvars.iv53.ph = phi i64 [ %.0.lcssa, %iter.check82 ], [ %.0.lcssa, %vector.memcheck72 ], [ %i.an, %vec.epilog.iter.check83 ], [ %i.ap, %vec.epilog.middle.block93 ]
  br label %vec.epilog.scalar.ph84

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %vec.epilog.scalar.ph ], [ %indvars.iv48.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.av = load i8, ptr %i.au, align 1, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv48
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !20
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next49, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %vec.epilog.scalar.ph, !llvm.loop !64

vec.epilog.scalar.ph84:                           ; preds = %vec.epilog.scalar.ph84.preheader, %vec.epilog.scalar.ph84
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %vec.epilog.scalar.ph84 ], [ %indvars.iv55.ph, %vec.epilog.scalar.ph84.preheader ] ; 2 uses
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %vec.epilog.scalar.ph84 ], [ %indvars.iv53.ph, %vec.epilog.scalar.ph84.preheader ] ; 2 uses
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv53
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv55
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !20
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count60
  br i1 %exitcond61.not, label %._crit_edge, label %vec.epilog.scalar.ph84, !llvm.loop !65

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph84, %vector.ph76, %vec.epilog.middle.block93, %.preheader
  %i.ba = icmp samesign ult i32 %i.h, 25
  %i.bb = select i1 %i.ba, i32 0, i32 -2147467263
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %._crit_edge, %bb.d, %bb.c, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ -2147024809, %bb.c ], [ %i.bb, %._crit_edge ], [ -2147024809, %bb.d ]
  ret i32 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 -2147467263, 1) i32 @_ZThn176_N7NCrypto7NSevenZ8CDecoder21SetDecoderProperties2EPKhj(ptr nofree noundef writeonly captures(none) initializes((-112, -88), (-32, -16)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #13 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 -112 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds i8, ptr %0, i64 -32 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !tbaa !20
  %i.e = icmp eq i32 %2, 0
  br i1 %i.e, label %_ZN7NCrypto7NSevenZ8CDecoder21SetDecoderProperties2EPKhj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %1, align 1, !tbaa !20      ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 3 uses
  %i.h = and i32 %i.g, 63                         ; 2 uses
  store i32 %i.h, ptr %i.c, align 8, !tbaa !41
  %i.i = icmp ult i8 %i.f, 64
  br i1 %i.i, label %_ZN7NCrypto7NSevenZ8CDecoder21SetDecoderProperties2EPKhj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i32 %i.g, 7                         ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %0, i64 -108 ; 2 uses
  store i32 %i.j, ptr %i.k, align 4, !tbaa !42
  %i.l = icmp eq i32 %2, 1
  br i1 %i.l, label %_ZN7NCrypto7NSevenZ8CDecoder21SetDecoderProperties2EPKhj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i32 %i.g, 6
  %i.n = and i32 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !20
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = lshr i32 %i.q, 4
  %i.s = add nuw nsw i32 %i.r, %i.j               ; 6 uses
  store i32 %i.s, ptr %i.k, align 4, !tbaa !42
  %i.t = and i32 %i.q, 15
  %i.u = add nuw nsw i32 %i.t, %i.n               ; 5 uses
  %i.v = add nuw nsw i32 %i.s, 2
  %i.w = add nuw nsw i32 %i.v, %i.u
  %i.x = icmp ugt i32 %i.w, %2
  br i1 %i.x, label %_ZN7NCrypto7NSevenZ8CDecoder21SetDecoderProperties2EPKhj.exit, label %.preheader39.i

.preheader39.i:                                   ; preds = %bb.d
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %.preheader.i, label %iter.check

iter.check:                                       ; preds = %.preheader39.i
  %i.y = getelementptr inbounds i8, ptr %0, i64 -104 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.s to i64  ; 6 uses
  %min.iters.check = icmp samesign ult i32 %i.s, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.z = sub i64 %i.a, %i.b
  %i.aa = add i64 %i.z, -107
  %diff.check = icmp ult i64 %i.aa, 15
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp samesign ult i32 %i.s, 16
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %wide.trip.count.i, 16         ; 4 uses
  %i.ab = or disjoint i64 %n.vec, 2               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 2
  %wide.load = load <16 x i8>, ptr %i.ac, align 1, !tbaa !20
  store <16 x i8> %wide.load, ptr %i.y, align 8, !tbaa !20
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %i.ad = and i64 %wide.trip.count.i, 12
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5 = and i64 %wide.trip.count.i, 28        ; 4 uses
  %i.ae = or disjoint i64 %n.vec5, 2              ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next, %vec.epilog.vector.body ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %wide.load6 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 %index
  store <4 x i8> %wide.load6, ptr %i.ah, align 1, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec5
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !66

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n7 = icmp eq i64 %n.vec5, %wide.trip.count.i
  br i1 %cmp.n7, label %.preheader.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv48.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %indvars.iv.i.ph = phi i64 [ 2, %iter.check ], [ 2, %vector.memcheck ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader.i:                                     ; preds = %vec.epilog.scalar.ph, %vector.ph, %vec.epilog.middle.block, %.preheader39.i
  %.0.lcssa.i = phi i64 [ 2, %.preheader39.i ], [ %i.ae, %vec.epilog.middle.block ], [ %i.ab, %vector.ph ], [ %indvars.iv.next.i, %vec.epilog.scalar.ph ] ; 7 uses
  %.not46.i = icmp eq i32 %i.u, 0
  br i1 %.not46.i, label %._crit_edge.i, label %iter.check22

iter.check22:                                     ; preds = %.preheader.i
  %wide.trip.count60.i = zext nneg i32 %i.u to i64 ; 6 uses
  %min.iters.check11 = icmp samesign ult i32 %i.u, 4
  br i1 %min.iters.check11, label %vec.epilog.scalar.ph24.preheader, label %vector.memcheck12

vector.memcheck12:                                ; preds = %iter.check22
  %i.aj = add i64 %.0.lcssa.i, %i.b
  %i.ak = sub i64 %i.a, %i.aj
  %i.al = add i64 %i.ak, -33
  %diff.check13 = icmp ult i64 %i.al, 15
  br i1 %diff.check13, label %vec.epilog.scalar.ph24.preheader, label %vector.main.loop.iter.check14

vector.main.loop.iter.check14:                    ; preds = %vector.memcheck12
  %min.iters.check15 = icmp samesign ult i32 %i.u, 16
  br i1 %min.iters.check15, label %vec.epilog.ph26, label %vector.ph16

vector.ph16:                                      ; preds = %vector.main.loop.iter.check14
  %n.vec17 = and i64 %wide.trip.count60.i, 16     ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa.i
  %wide.load19 = load <16 x i8>, ptr %i.am, align 1, !tbaa !20
  store <16 x i8> %wide.load19, ptr %i.d, align 8, !tbaa !20
  %cmp.n21 = icmp eq i64 %n.vec17, %wide.trip.count60.i
  br i1 %cmp.n21, label %._crit_edge.i, label %vec.epilog.iter.check23

vec.epilog.iter.check23:                          ; preds = %vector.ph16
  %i.an = add i64 %.0.lcssa.i, %n.vec17
  %i.ao = and i64 %wide.trip.count60.i, 12
  %min.epilog.iters.check25 = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check25, label %vec.epilog.scalar.ph24.preheader, label %vec.epilog.ph26, !prof !25

vec.epilog.ph26:                                  ; preds = %vector.main.loop.iter.check14, %vec.epilog.iter.check23
  %vec.epilog.resume.val27 = phi i64 [ %n.vec17, %vec.epilog.iter.check23 ], [ 0, %vector.main.loop.iter.check14 ]
  %n.vec28 = and i64 %wide.trip.count60.i, 28     ; 4 uses
  %i.ap = add i64 %.0.lcssa.i, %n.vec28
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa.i
  br label %vec.epilog.vector.body29

vec.epilog.vector.body29:                         ; preds = %vec.epilog.vector.body29, %vec.epilog.ph26
  %index30 = phi i64 [ %vec.epilog.resume.val27, %vec.epilog.ph26 ], [ %index.next32, %vec.epilog.vector.body29 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index30
  %wide.load31 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 %index30
  store <4 x i8> %wide.load31, ptr %i.as, align 1, !tbaa !20
  %index.next32 = add nuw i64 %index30, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next32, %n.vec28
  br i1 %i.at, label %vec.epilog.middle.block33, label %vec.epilog.vector.body29, !llvm.loop !67

vec.epilog.middle.block33:                        ; preds = %vec.epilog.vector.body29
  %cmp.n34 = icmp eq i64 %n.vec28, %wide.trip.count60.i
  br i1 %cmp.n34, label %._crit_edge.i, label %vec.epilog.scalar.ph24.preheader

vec.epilog.scalar.ph24.preheader:                 ; preds = %iter.check22, %vector.memcheck12, %vec.epilog.iter.check23, %vec.epilog.middle.block33
  %indvars.iv55.i.ph = phi i64 [ 0, %iter.check22 ], [ 0, %vector.memcheck12 ], [ %n.vec17, %vec.epilog.iter.check23 ], [ %n.vec28, %vec.epilog.middle.block33 ]
  %indvars.iv53.i.ph = phi i64 [ %.0.lcssa.i, %iter.check22 ], [ %.0.lcssa.i, %vector.memcheck12 ], [ %i.an, %vec.epilog.iter.check23 ], [ %i.ap, %vec.epilog.middle.block33 ]
  br label %vec.epilog.scalar.ph24

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %vec.epilog.scalar.ph ], [ %indvars.iv48.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv48.i
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !20
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %vec.epilog.scalar.ph, !llvm.loop !68

vec.epilog.scalar.ph24:                           ; preds = %vec.epilog.scalar.ph24.preheader, %vec.epilog.scalar.ph24
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i, %vec.epilog.scalar.ph24 ], [ %indvars.iv55.i.ph, %vec.epilog.scalar.ph24.preheader ] ; 2 uses
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %vec.epilog.scalar.ph24 ], [ %indvars.iv53.i.ph, %vec.epilog.scalar.ph24.preheader ] ; 2 uses
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv53.i
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv55.i
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !20
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond61.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count60.i
  br i1 %exitcond61.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph24, !llvm.loop !69

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph24, %vector.ph16, %vec.epilog.middle.block33, %.preheader.i
  %i.ba = icmp samesign ult i32 %i.h, 25
  %i.bb = select i1 %i.ba, i32 0, i32 -2147467263
  br label %_ZN7NCrypto7NSevenZ8CDecoder21SetDecoderProperties2EPKhj.exit

_ZN7NCrypto7NSevenZ8CDecoder21SetDecoderProperties2EPKhj.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %._crit_edge.i
  %.3.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ -2147024809, %bb.c ], [ %i.bb, %._crit_edge.i ], [ -2147024809, %bb.d ]
  ret i32 %.3.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN7NCrypto7NSevenZ10CBaseCoder17CryptoSetPasswordEPKhj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !21
  %i.d = icmp eq i64 %i.c, %i.a
  br i1 %i.d, label %._ZN7CBufferIhE11SetCapacityEm.exit_crit_edge, label %bb.b

._ZN7CBufferIhE11SetCapacityEm.exit_crit_edge:    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !22
  br label %_ZN7CBufferIhE11SetCapacityEm.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.a) #22 ; 3 uses
  %i.f = load i64, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %.not10.i = icmp eq i64 %i.f, 0
  br i1 %.not10.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.a)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.e, ptr align 1 %i.h, i64 %i.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0.i = phi ptr [ %i.e, %bb.d ], [ %i.e, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %.0.i, ptr %i.j, align 8, !tbaa !22
  store i64 %i.a, ptr %i.b, align 8, !tbaa !21
  br label %_ZN7CBufferIhE11SetCapacityEm.exit

_ZN7CBufferIhE11SetCapacityEm.exit:               ; preds = %._ZN7CBufferIhE11SetCapacityEm.exit_crit_edge, %bb.g
  %i.m = phi ptr [ %.pre, %._ZN7CBufferIhE11SetCapacityEm.exit_crit_edge ], [ %.0.i, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %1, i64 %i.a, i1 false)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: uwtable
define dso_local noundef i32 @_ZThn8_N7NCrypto7NSevenZ10CBaseCoder17CryptoSetPasswordEPKhj(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !21
  %i.d = icmp eq i64 %i.c, %i.a
  br i1 %i.d, label %._ZN7CBufferIhE11SetCapacityEm.exit_crit_edge.i, label %bb.b

._ZN7CBufferIhE11SetCapacityEm.exit_crit_edge.i:  ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !22
  br label %_ZN7NCrypto7NSevenZ10CBaseCoder17CryptoSetPasswordEPKhj.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.a) #22 ; 3 uses
  %i.f = load i64, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %.not10.i.i = icmp eq i64 %i.f, 0
  br i1 %.not10.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.a)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.e, ptr align 1 %i.h, i64 %i.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.e, %bb.d ], [ %i.e, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %.0.i.i, ptr %i.j, align 8, !tbaa !22
  store i64 %i.a, ptr %i.b, align 8, !tbaa !21
  br label %_ZN7NCrypto7NSevenZ10CBaseCoder17CryptoSetPasswordEPKhj.exit

_ZN7NCrypto7NSevenZ10CBaseCoder17CryptoSetPasswordEPKhj.exit: ; preds = %._ZN7CBufferIhE11SetCapacityEm.exit_crit_edge.i, %bb.g
  %i.m = phi ptr [ %.pre.i, %._ZN7CBufferIhE11SetCapacityEm.exit_crit_edge.i ], [ %.0.i.i, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr readonly align 1 %1, i64 %i.a, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN7NCrypto7NSevenZ10CBaseCoder4InitEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.CMyComPtr.0, align 8         ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN7NCrypto7NSevenZ5CBase15CalculateDigestEv(ptr noundef nonnull align 8 dereferenceable(140) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(176) %0) ; 2 uses
  %.not.not = icmp eq i32 %i.h, 0
  br i1 %.not.not, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !45
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.i = phi ptr [ %.pre, %._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store ptr null, ptr %1, align 8, !tbaa !73
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 4 dereferenceable(16) @IID_ICryptoProperties, ptr noundef nonnull %1)
          to label %_ZNK9CMyComPtrI15ICompressFilterE14QueryInterfaceI17ICryptoPropertiesEEiRK4GUIDPPT_.exit unwind label %bb.g, !inline_history !70 ; 2 uses

_ZNK9CMyComPtrI15ICompressFilterE14QueryInterfaceI17ICryptoPropertiesEEiRK4GUIDPPT_.exit: ; preds = %bb.c
  %.not26 = icmp eq i32 %i.l, 0
  br i1 %.not26, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZNK9CMyComPtrI15ICompressFilterE14QueryInterfaceI17ICryptoPropertiesEEiRK4GUIDPPT_.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !73     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.n, i32 noundef 32)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not27 = icmp eq i32 %i.r, 0
  br i1 %.not27, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %1, align 8, !tbaa !73     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %i.t, i32 noundef 16)
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %1, align 8, !tbaa !73     ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZN9CMyComPtrI17ICryptoPropertiesED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_ZN9CMyComPtrI17ICryptoPropertiesED2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #23
  unreachable

_ZN9CMyComPtrI17ICryptoPropertiesED2Ev.exit:      ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %i.y

bb.j:                                             ; preds = %bb.f, %bb.e, %_ZNK9CMyComPtrI15ICompressFilterE14QueryInterfaceI17ICryptoPropertiesEEiRK4GUIDPPT_.exit
  %.5 = phi i32 [ %i.l, %_ZNK9CMyComPtrI15ICompressFilterE14QueryInterfaceI17ICryptoPropertiesEEiRK4GUIDPPT_.exit ], [ %i.r, %bb.e ], [ %i.x, %bb.f ]
  %i.ag = load ptr, ptr %1, align 8, !tbaa !73    ; 3 uses
  %.not.i30 = icmp eq ptr %i.ag, null
  br i1 %.not.i30, label %_ZN9CMyComPtrI17ICryptoPropertiesED2Ev.exit31, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef i32 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %_ZN9CMyComPtrI17ICryptoPropertiesED2Ev.exit31 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #23
  unreachable

_ZN9CMyComPtrI17ICryptoPropertiesED2Ev.exit31:    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %_ZN9CMyComPtrI17ICryptoPropertiesED2Ev.exit31
  %.6 = phi i32 [ %.5, %_ZN9CMyComPtrI17ICryptoPropertiesED2Ev.exit31 ], [ %i.h, %bb.b ]
  ret i32 %.6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN7NCrypto7NSevenZ10CBaseCoder6FilterEPhj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %1, i32 noundef %2)
  ret i32 %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN7NCrypto7NSevenZ8CDecoder12CreateFilterEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(328) ptr @_Znwm(i64 noundef 328) #22 ; 5 uses
  invoke void @_ZN7NCrypto14CAesCbcDecoderC1Ev(ptr noundef nonnull align 8 dereferenceable(328) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !3 ; 0 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !45   ; 3 uses
  %.not6.i = icmp eq ptr %i.g, null
  br i1 %.not6.i, label %_ZN9CMyComPtrI15ICompressFilterEaSEPS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g), !inline_history !3 ; 0 uses
  br label %_ZN9CMyComPtrI15ICompressFilterEaSEPS0_.exit

_ZN9CMyComPtrI15ICompressFilterEaSEPS0_.exit:     ; preds = %bb.b, %bb.c
  store ptr %i.a, ptr %i.b, align 8, !tbaa !45
  ret i32 0

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 328) #21
  resume { ptr, i32 } %i.l
}

declare void @_ZN7NCrypto14CAesCbcDecoderC1Ev(ptr noundef nonnull align 8 dereferenceable(328)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7NCrypto7NSevenZ8CEncoder14QueryInterfaceERK4GUIDPPv(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 4, !tbaa !20      ; 4 uses
  %i.b = load i8, ptr @IID_IUnknown, align 4, !tbaa !20
  %.not.i = icmp eq i8 %i.a, %i.b
  br i1 %.not.i, label %bb.b, label %_ZeqRK4GUIDS1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !20
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 1), align 1, !tbaa !20
  %.not.1.i = icmp eq i8 %i.d, %i.e
  br i1 %.not.1.i, label %bb.c, label %_ZeqRK4GUIDS1_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 2, !tbaa !20
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 2), align 2, !tbaa !20
  %.not.2.i = icmp eq i8 %i.g, %i.h
  br i1 %.not.2.i, label %bb.d, label %_ZeqRK4GUIDS1_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !20
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 3), align 1, !tbaa !20
  %.not.3.i = icmp eq i8 %i.j, %i.k
  br i1 %.not.3.i, label %bb.e, label %_ZeqRK4GUIDS1_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i8, ptr %i.l, align 4, !tbaa !20
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 4), align 4, !tbaa !20
  %.not.4.i = icmp eq i8 %i.m, %i.n
  br i1 %.not.4.i, label %bb.f, label %_ZeqRK4GUIDS1_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !20
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 5), align 1, !tbaa !20
  %.not.5.i = icmp eq i8 %i.p, %i.q
  br i1 %.not.5.i, label %bb.g, label %_ZeqRK4GUIDS1_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.s = load i8, ptr %i.r, align 2, !tbaa !20
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 6), align 2, !tbaa !20
  %.not.6.i = icmp eq i8 %i.s, %i.t
  br i1 %.not.6.i, label %bb.h, label %_ZeqRK4GUIDS1_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.v = load i8, ptr %i.u, align 1, !tbaa !20
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 7), align 1, !tbaa !20
  %.not.7.i = icmp eq i8 %i.v, %i.w
  br i1 %.not.7.i, label %bb.i, label %_ZeqRK4GUIDS1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i8, ptr %i.x, align 4, !tbaa !20
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 8), align 4, !tbaa !20
  %.not.8.i = icmp eq i8 %i.y, %i.z
  br i1 %.not.8.i, label %bb.j, label %_ZeqRK4GUIDS1_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !20
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 9), align 1, !tbaa !20
  %.not.9.i = icmp eq i8 %i.ab, %i.ac
  br i1 %.not.9.i, label %bb.k, label %_ZeqRK4GUIDS1_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !20
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 10), align 2, !tbaa !20
  %.not.10.i = icmp eq i8 %i.ae, %i.af
  br i1 %.not.10.i, label %bb.l, label %_ZeqRK4GUIDS1_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !20
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 11), align 1, !tbaa !20
  %.not.11.i = icmp eq i8 %i.ah, %i.ai
  br i1 %.not.11.i, label %bb.m, label %_ZeqRK4GUIDS1_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !20
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 12), align 4, !tbaa !20
  %.not.12.i = icmp eq i8 %i.ak, %i.al
  br i1 %.not.12.i, label %bb.n, label %_ZeqRK4GUIDS1_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.an = load i8, ptr %i.am, align 1, !tbaa !20
  %i.ao = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 13), align 1, !tbaa !20
  %.not.13.i = icmp eq i8 %i.an, %i.ao
  br i1 %.not.13.i, label %bb.o, label %_ZeqRK4GUIDS1_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !20
  %i.ar = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 14), align 2, !tbaa !20
  %.not.14.i = icmp eq i8 %i.aq, %i.ar
  br i1 %.not.14.i, label %_ZeqRK4GUIDS1_.exit, label %_ZeqRK4GUIDS1_.exit.thread

_ZeqRK4GUIDS1_.exit:                              ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.at = load i8, ptr %i.as, align 1, !tbaa !20
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 15), align 1, !tbaa !20
  %.not.15.i.not = icmp eq i8 %i.at, %i.au
  br i1 %.not.15.i.not, label %_ZeqRK4GUIDS1_.exit65.thread.sink.split, label %_ZeqRK4GUIDS1_.exit.thread

_ZeqRK4GUIDS1_.exit.thread:                       ; preds = %bb.m, %bb.h, %bb.l, %bb.g, %bb.n, %bb.f, %bb.j, %bb.e, %bb.o, %bb.d, %bb.k, %bb.c, %bb.b, %bb.i, %bb.a, %_ZeqRK4GUIDS1_.exit
  %i.av = load i8, ptr @IID_ICryptoSetPassword, align 4, !tbaa !20
  %.not.i12 = icmp eq i8 %i.a, %i.av
  br i1 %.not.i12, label %bb.p, label %_ZeqRK4GUIDS1_.exit29.thread

bb.p:                                             ; preds = %_ZeqRK4GUIDS1_.exit.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !20
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICryptoSetPassword, i64 1), align 1, !tbaa !20
  %.not.1.i13 = icmp eq i8 %i.ax, %i.ay
  br i1 %.not.1.i13, label %bb.q, label %_ZeqRK4GUIDS1_.exit29.thread

end_hunk_1
begin_hunk_2_@_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEED0Ev:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE, i64 16), ptr %0, align 8, !tbaa !31
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEED2Ev.exit unwind label %bb.b, !inline_history !37

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #23, !inline_history !37
  unreachable

_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #20, !inline_history !37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #21
  ret void
}

; Function Attrs: nounwind
declare void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #15

declare void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #3

declare void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #17

declare i32 @CriticalSection_Init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7CBufferIhED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7CBufferIhED0Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN7CBufferIhED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #21, !inline_history !32
  br label %_ZN7CBufferIhED2Ev.exit

_ZN7CBufferIhED2Ev.exit:                          ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #15

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #18

declare void @_ZN17CBaseRecordVector13InsertOneItemEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_7zAes.cpp() #9 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 32, ptr @_ZN7NCrypto7NSevenZL16g_GlobalKeyCacheE, align 8, !tbaa !36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN7NCrypto7NSevenZL16g_GlobalKeyCacheE, i64 16), i8 0, i64 16, i1 false)
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7NCrypto7NSevenZL16g_GlobalKeyCacheE, i64 32), align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN7NCrypto7NSevenZL16g_GlobalKeyCacheE, i64 8), align 8, !tbaa !31
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7NCrypto7NSevenZ13CKeyInfoCacheD2Ev, ptr nonnull @_ZN7NCrypto7NSevenZL16g_GlobalKeyCacheE, ptr nonnull @__dso_handle) #20 ; 0 uses
  %i.b = tail call i32 @CriticalSection_Init(ptr noundef nonnull @_ZN7NCrypto7NSevenZL31g_GlobalKeyCacheCriticalSectionE) ; 0 uses
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZN8NWindows16NSynchronization16CCriticalSectionD2Ev, ptr nonnull @_ZN7NCrypto7NSevenZL31g_GlobalKeyCacheCriticalSectionE, ptr nonnull @__dso_handle) #20 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { noreturn nounwind }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !19}
!1 = distinct !{!1, !19}
!2 = distinct !{!2, !19}
!3 = distinct !{null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTS7CBufferIhE", !12, i64 8, !14, i64 16}
!16 = !{!"_ZTSN7NCrypto7NSevenZ8CKeyInfoE", !10, i64 0, !10, i64 4, !9, i64 8, !15, i64 24, !9, i64 48}
!17 = !{!16, !10, i64 4}
!18 = !{!16, !10, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!9, !9, i64 0}
!21 = !{!15, !12, i64 8}
!22 = !{!15, !14, i64 16}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!"branch_weights", i32 4, i32 12}
!26 = !{!"_ZTS17CBaseRecordVector", !10, i64 8, !10, i64 12, !13, i64 16, !12, i64 24}
!27 = !{!26, !10, i64 12}
!28 = !{!26, !13, i64 16}
!29 = !{!13, !13, i64 0}
!30 = !{!"vtable pointer", !8, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{ptr @_ZN7CBufferIhED2Ev}
!33 = !{!"_ZTS13CRecordVectorIPvE", !26, i64 0}
!34 = !{!"_ZTS13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE", !33, i64 0}
!35 = !{!"_ZTSN7NCrypto7NSevenZ13CKeyInfoCacheE", !10, i64 0, !34, i64 8}
!36 = !{!35, !10, i64 0}
!37 = !{ptr @_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEED2Ev}
!38 = !{!26, !12, i64 24}
!39 = !{!"_ZTSN7NCrypto7NSevenZ5CBaseE", !35, i64 0, !16, i64 40, !9, i64 120, !10, i64 136}
!40 = !{!39, !10, i64 136}
!41 = !{!39, !10, i64 40}
!42 = !{!39, !10, i64 44}
!43 = !{!"p1 _ZTS15ICompressFilter", !13, i64 0}
!44 = !{!"_ZTS9CMyComPtrI15ICompressFilterE", !43, i64 0}
!45 = !{!44, !43, i64 0}
!46 = !{!"_ZTS13CMyUnknownImp", !10, i64 0}
!47 = !{!46, !10, i64 0}
!48 = !{ptr @_ZN7NCrypto7NSevenZ10CBaseCoderD2Ev}
!49 = !{ptr @_ZN7NCrypto7NSevenZ10CBaseCoderD2Ev, ptr @_ZN7CBufferIhED2Ev}
!50 = !{ptr @_ZN7NCrypto7NSevenZ10CBaseCoderD2Ev, ptr @_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEED2Ev}
!51 = !{ptr @_ZN7NCrypto7NSevenZ8CEncoder7ReleaseEv}
!52 = !{ptr @_ZN7NCrypto7NSevenZ8CDecoder7ReleaseEv}
!53 = distinct !{!53, !19, !23, !24}
!54 = distinct !{!54, !19, !23, !24}
!55 = distinct !{!55, !19, !23, !24}
!56 = distinct !{!56, !19, !24, !23}
!57 = distinct !{!57, !19, !23}
!58 = distinct !{!58, !19}
!59 = distinct !{!59, !19}
!60 = !{!"branch_weights", i32 1, i32 1048575}
!61 = !{i64 0, i64 32, !20}
!62 = distinct !{!62, !19, !23, !24}
!63 = distinct !{!63, !19, !23, !24}
!64 = distinct !{!64, !19, !23}
!65 = distinct !{!65, !19, !23}
!66 = distinct !{!66, !19, !23, !24}
!67 = distinct !{!67, !19, !23, !24}
!68 = distinct !{!68, !19, !23}
!69 = distinct !{!69, !19, !23}
!70 = distinct !{null}
!71 = !{!"p1 _ZTS17ICryptoProperties", !13, i64 0}
!72 = !{!"_ZTS9CMyComPtrI17ICryptoPropertiesE", !71, i64 0}
!73 = !{!72, !71, i64 0}
end_hunk_2
