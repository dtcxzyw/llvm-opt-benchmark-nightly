inline.NumInlined: 89
inline.NumDeleted: 50
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tagSTATPROPSTG = type { ptr, i32, i16 }
%struct.ISzAlloc = type { ptr, ptr }
%struct.GUID = type { i32, i16, i16, [8 x i8] }
%"class.NWindows::NCOM::CPropVariant" = type { %struct.tagPROPVARIANT }
%struct.tagPROPVARIANT = type { i16, i16, i16, i16, %union.anon }
%union.anon = type { %struct.LARGE_INTEGER }
%struct.LARGE_INTEGER = type { i64 }
%class.CStringBase.0 = type { ptr, i32, i32 }
%struct._FILETIME = type { i32, i32 }
%class.CStringBase = type { ptr, i32, i32 }
%class.CMyComPtr.1 = type { ptr }
%struct.CByteInBufWrap = type { %struct.IByteIn, ptr, ptr, ptr, i32, ptr, i64, i8, i32 }
%struct.IByteIn = type { ptr }
%"struct.NArchive::NPpmd::CPpmdCpp" = type { i32, %"struct.NArchive::NPpmd::CRangeDecoder", %struct.CPpmd7, %struct.CPpmd8 }
%"struct.NArchive::NPpmd::CRangeDecoder" = type { %struct.IPpmd7_RangeDec, i32, i32, i32, ptr }
%struct.IPpmd7_RangeDec = type { ptr, ptr, ptr }
%struct.CPpmd7 = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, [38 x i8], [128 x i8], [38 x i32], [256 x i8], [256 x i8], [256 x i8], %struct.CPpmd_See, [25 x [16 x %struct.CPpmd_See]], [128 x [64 x i16]] }
%struct.CPpmd_See = type { i16, i8, i8 }
%struct.CPpmd8 = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.4, [38 x i8], [128 x i8], [38 x i32], [38 x i32], [256 x i8], [260 x i8], %struct.CPpmd_See, [24 x [32 x %struct.CPpmd_See]], [25 x [64 x i16]] }
%union.anon.4 = type { ptr }

$_ZN8NArchive5NPpmd8CPpmdCppC2Ej = comdat any

$_ZN8NArchive5NPpmd8CPpmdCpp5AllocEj = comdat any

$_ZN8NArchive5NPpmd8CPpmdCpp4InitEjj = comdat any

$_ZN8NArchive5NPpmd8CPpmdCpp6InitRcEP14CByteInBufWrap = comdat any

$_ZN8NArchive5NPpmd8CPpmdCppD2Ev = comdat any

$_ZN8NArchive5NPpmd8CHandler14QueryInterfaceERK4GUIDPPv = comdat any

$_ZN8NArchive5NPpmd8CHandler6AddRefEv = comdat any

$_ZN8NArchive5NPpmd8CHandler7ReleaseEv = comdat any

$_ZN8NArchive5NPpmd8CHandlerD2Ev = comdat any

$_ZN8NArchive5NPpmd8CHandlerD0Ev = comdat any

$_ZThn8_N8NArchive5NPpmd8CHandler14QueryInterfaceERK4GUIDPPv = comdat any

$_ZThn8_N8NArchive5NPpmd8CHandler6AddRefEv = comdat any

$_ZThn8_N8NArchive5NPpmd8CHandler7ReleaseEv = comdat any

$_ZThn8_N8NArchive5NPpmd8CHandlerD1Ev = comdat any

$_ZThn8_N8NArchive5NPpmd8CHandlerD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11CStringBaseIcEpLEPKc = comdat any

$_ZN8NArchive5NPpmd13CRangeDecoder4InitEv = comdat any

$_ZTI10IInArchive = comdat any

$_ZTS10IInArchive = comdat any

$_ZTI8IUnknown = comdat any

$_ZTS8IUnknown = comdat any

$_ZTI15IArchiveOpenSeq = comdat any

$_ZTS15IArchiveOpenSeq = comdat any

$_ZTI13CMyUnknownImp = comdat any

$_ZTS13CMyUnknownImp = comdat any

@_ZN8NArchive5NPpmd6kPropsE = dso_local local_unnamed_addr global [4 x %struct.tagSTATPROPSTG] [%struct.tagSTATPROPSTG { ptr null, i32 3, i16 8 }, %struct.tagSTATPROPSTG { ptr null, i32 12, i16 64 }, %struct.tagSTATPROPSTG { ptr null, i32 9, i16 19 }, %struct.tagSTATPROPSTG { ptr null, i32 22, i16 8 }], align 16
@_ZTIPKc = external constant ptr
@.str = private unnamed_addr constant [5 x i8] c"PPMd\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c":o\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c":mem\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c":r\00", align 1
@_ZTVN8NArchive5NPpmd8CHandlerE = dso_local unnamed_addr constant { [18 x ptr], [8 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN8NArchive5NPpmd8CHandlerE, ptr @_ZN8NArchive5NPpmd8CHandler14QueryInterfaceERK4GUIDPPv, ptr @_ZN8NArchive5NPpmd8CHandler6AddRefEv, ptr @_ZN8NArchive5NPpmd8CHandler7ReleaseEv, ptr @_ZN8NArchive5NPpmd8CHandlerD2Ev, ptr @_ZN8NArchive5NPpmd8CHandlerD0Ev, ptr @_ZN8NArchive5NPpmd8CHandler4OpenEP9IInStreamPKyP20IArchiveOpenCallback, ptr @_ZN8NArchive5NPpmd8CHandler5CloseEv, ptr @_ZN8NArchive5NPpmd8CHandler16GetNumberOfItemsEPj, ptr @_ZN8NArchive5NPpmd8CHandler11GetPropertyEjjP14tagPROPVARIANT, ptr @_ZN8NArchive5NPpmd8CHandler7ExtractEPKjjiP23IArchiveExtractCallback, ptr @_ZN8NArchive5NPpmd8CHandler18GetArchivePropertyEjP14tagPROPVARIANT, ptr @_ZN8NArchive5NPpmd8CHandler21GetNumberOfPropertiesEPj, ptr @_ZN8NArchive5NPpmd8CHandler15GetPropertyInfoEjPPwPjPt, ptr @_ZN8NArchive5NPpmd8CHandler28GetNumberOfArchivePropertiesEPj, ptr @_ZN8NArchive5NPpmd8CHandler22GetArchivePropertyInfoEjPPwPjPt, ptr @_ZN8NArchive5NPpmd8CHandler7OpenSeqEP19ISequentialInStream], [8 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN8NArchive5NPpmd8CHandlerE, ptr @_ZThn8_N8NArchive5NPpmd8CHandler14QueryInterfaceERK4GUIDPPv, ptr @_ZThn8_N8NArchive5NPpmd8CHandler6AddRefEv, ptr @_ZThn8_N8NArchive5NPpmd8CHandler7ReleaseEv, ptr @_ZThn8_N8NArchive5NPpmd8CHandlerD1Ev, ptr @_ZThn8_N8NArchive5NPpmd8CHandlerD0Ev, ptr @_ZThn8_N8NArchive5NPpmd8CHandler7OpenSeqEP19ISequentialInStream] }, align 8
@_ZTIN8NArchive5NPpmd8CHandlerE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN8NArchive5NPpmd8CHandlerE, i32 1, i32 3, ptr @_ZTI10IInArchive, i64 2, ptr @_ZTI15IArchiveOpenSeq, i64 2050, ptr @_ZTI13CMyUnknownImp, i64 4098 }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN8NArchive5NPpmd8CHandlerE = dso_local constant [27 x i8] c"N8NArchive5NPpmd8CHandlerE\00", align 1
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
@_ZN8NArchive5NPpmdL10g_BigAllocE = internal global %struct.ISzAlloc { ptr @_ZN8NArchive5NPpmdL10SzBigAllocEPvm, ptr @_ZN8NArchive5NPpmdL9SzBigFreeEPvS1_ }, align 8
@.str.4 = private unnamed_addr constant [5 x i32] [i32 80, i32 112, i32 109, i32 100, i32 0], align 4
@.str.5 = private unnamed_addr constant [4 x i32] [i32 112, i32 109, i32 100, i32 0], align 4
@_ZN8NArchive5NPpmdL9g_ArcInfoE = internal global { ptr, ptr, ptr, i8, <{ i8, i8, i8, i8, [24 x i8] }>, i32, i8, ptr, ptr } { ptr @.str.4, ptr @.str.5, ptr null, i8 13, <{ i8, i8, i8, i8, [24 x i8] }> <{ i8 -113, i8 -81, i8 -84, i8 -124, [24 x i8] zeroinitializer }>, i32 4, i8 0, ptr @_ZN8NArchive5NPpmdL9CreateArcEv, ptr null }, align 8
@IID_IUnknown = external local_unnamed_addr global %struct.GUID, align 4
@IID_IInArchive = external local_unnamed_addr global %struct.GUID, align 4
@IID_IArchiveOpenSeq = external local_unnamed_addr global %struct.GUID, align 4
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_PpmdHandler.cpp, ptr null }]

@_ZN8NArchive5NPpmd13CRangeDecoderC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN8NArchive5NPpmd13CRangeDecoderC2Ev

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive5NPpmd5CItem10ReadHeaderEP19ISequentialInStreamRj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = call noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef 16) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 16, !tbaa !4
  %.not22 = icmp eq i32 %i.c, -2069057649
  br i1 %.not22, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  store i32 %i.e, ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.g, ptr %i.h, align 4, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i16, ptr %i.i, align 8, !tbaa !14   ; 2 uses
  %i.k = zext i16 %i.j to i32                     ; 3 uses
  %i.l = and i32 %i.k, 15
  %i.m = add nuw nsw i32 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.m, ptr %i.n, align 8, !tbaa !16
  %i.o = lshr i32 %i.k, 4
  %i.p = and i32 %i.o, 255
  %i.q = add nuw nsw i32 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.q, ptr %i.r, align 4, !tbaa !17
  %i.s = lshr i32 %i.k, 12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.s, ptr %i.t, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.v = load i16, ptr %i.u, align 2, !tbaa !14
  %i.w = zext i16 %i.v to i32                     ; 3 uses
  %i.x = lshr i32 %i.w, 14                        ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.x, ptr %i.y, align 4, !tbaa !19
  %i.z = icmp eq i32 %i.x, 3
  br i1 %i.z, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp slt i16 %i.j, 0
  %i.ab = and i32 %i.w, 16383
  %spec.select = select i1 %i.aa, i32 %i.ab, i32 %i.w ; 5 uses
  %i.ac = icmp samesign ugt i32 %spec.select, 512
  br i1 %i.ac, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ae = add nuw nsw i32 %spec.select, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !20 ; 3 uses
  %.not.i = icmp slt i32 %i.ae, %i.ag
  br i1 %.not.i, label %_ZN11CStringBaseIcE9GetBufferEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %3 = add nuw nsw i32 %spec.select, 2            ; 3 uses
  %4 = icmp eq i32 %3, %i.ag
  br i1 %4, label %_ZN11CStringBaseIcE9GetBufferEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = zext nneg i32 %3 to i64
  %i.ai = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ah) #20 ; 10 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = icmp sgt i32 %i.ag, 0
  br i1 %i.ak, label %.preheader.i.i, label %bb.h

.preheader.i.i:                                   ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !21 ; 4 uses
  %i.an = icmp sgt i32 %i.am, 0
  %.pre.i.i = load ptr, ptr %i.ad, align 8, !tbaa !22 ; 10 uses
  br i1 %i.an, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.preheader.i.i
  %.pre.i.i26 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %i.am to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %i.am, 4
  %i.ao = sub i64 %i.aj, %.pre.i.i26
  %diff.check = icmp ult i64 %i.ao, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check27 = icmp ult i32 %i.am, 32
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <16 x i8>, ptr %i.ap, align 1, !tbaa !23
  %wide.load28 = load <16 x i8>, ptr %i.aq, align 1, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <16 x i8> %wide.load, ptr %i.ar, align 1, !tbaa !23
  store <16 x i8> %wide.load28, ptr %i.as, align 1, !tbaa !23
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index31 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index31
  %wide.load32 = load <4 x i8>, ptr %i.au, align 1, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index31
  store <4 x i8> %wide.load32, ptr %i.av, align 1, !tbaa !23
  %index.next33 = add nuw i64 %index31, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next33, %n.vec30
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n34 = icmp eq i64 %n.vec30, %wide.trip.count.i.i
  br i1 %cmp.n34, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec30, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !23
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.i.i.prol
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !23
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !30

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.ba = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.bc = icmp eq ptr %.pre.i.i, null
  br i1 %i.bc, label %bb.h, label %._crit_edge.thread.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.i.i
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !23
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !23
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.next.i.i
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !23
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !23
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.next.i.i.1
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !23
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !23
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.next.i.i.2
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !23
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph, !llvm.loop !32

._crit_edge.thread.i.i:                           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #21
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.g
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !22
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !21
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %i.ai, i64 %i.br
  store i8 0, ptr %i.bs, align 1, !tbaa !23
  store i32 %3, ptr %i.af, align 4, !tbaa !20
  br label %_ZN11CStringBaseIcE9GetBufferEi.exit

_ZN11CStringBaseIcE9GetBufferEi.exit:             ; preds = %bb.e, %bb.f, %bb.h
  %5 = load ptr, ptr %i.ad, align 8, !tbaa !22    ; 2 uses
  %i.bt = zext nneg i32 %spec.select to i64       ; 2 uses
  %i.bu = call noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef %1, ptr noundef %5, i64 noundef %i.bt)
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 %i.bt
  store i8 0, ptr %i.bv, align 1, !tbaa !23
  %i.bw = add nuw nsw i32 %spec.select, 16
  store i32 %i.bw, ptr %2, align 4, !tbaa !4
  %i.bx = load ptr, ptr %i.ad, align 8, !tbaa !22 ; 2 uses
  %strlen.i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bx) ; 2 uses
  %i.by = trunc i64 %strlen.i.i to i32
  %sext.i = shl i64 %strlen.i.i, 32
  %i.bz = ashr exact i64 %sext.i, 32
  %i.ca = getelementptr inbounds i8, ptr %i.bx, i64 %i.bz
  store i8 0, ptr %i.ca, align 1, !tbaa !23
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.by, ptr %i.cb, align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %_ZN11CStringBaseIcE9GetBufferEi.exit, %bb.c, %bb.d, %bb.b, %bb.a
  %.2 = phi i32 [ %i.b, %bb.a ], [ 1, %bb.b ], [ %i.bu, %_ZN11CStringBaseIcE9GetBufferEi.exit ], [ 1, %bb.c ], [ 1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @_ZN8NArchive5NPpmd8CHandler21GetNumberOfPropertiesEPj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) unnamed_addr #3 align 2 {
bb.a:
  store i32 4, ptr %1, align 4, !tbaa !4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 -2147024809, 1) i32 @_ZN8NArchive5NPpmd8CHandler15GetPropertyInfoEjPPwPjPt(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ugt i32 %1, 3
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr inbounds nuw [16 x i8], ptr @_ZN8NArchive5NPpmd6kPropsE, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !33
  store i32 %i.e, ptr %3, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.g = load i16, ptr %i.f, align 4, !tbaa !36
  store i16 %i.g, ptr %4, align 2, !tbaa !14
  store ptr null, ptr %2, align 8, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2147024809, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @_ZN8NArchive5NPpmd8CHandler28GetNumberOfArchivePropertiesEPj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) unnamed_addr #3 align 2 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN8NArchive5NPpmd8CHandler22GetArchivePropertyInfoEjPPwPjPt(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #5 align 2 {
bb.a:
  ret i32 -2147467263
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive5NPpmd8CHandler18GetArchivePropertyEjP14tagPROPVARIANT(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.NWindows::NCOM::CPropVariant", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i16 0, ptr %3, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 0, ptr %i.a, align 2, !tbaa !40
  %cond = icmp eq i32 %1, 44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load i8, ptr %i.b, align 8, !range !41
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %cond, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !42
  %i.g = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSEy(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.f)
          to label %bb.e unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #22
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit:         ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.l = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant6DetachEP14tagPROPVARIANT(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2)
          to label %bb.f unwind label %bb.c       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.m = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit6 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #22
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit6:        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSEy(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare noundef i32 @_ZN8NWindows4NCOM12CPropVariant6DetachEP14tagPROPVARIANT(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @_ZN8NArchive5NPpmd8CHandler16GetNumberOfItemsEPj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) unnamed_addr #3 align 2 {
bb.a:
  store i32 1, ptr %1, align 4, !tbaa !4
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147024882, 1) i32 @_ZN8NArchive5NPpmd8CHandler11GetPropertyEjjP14tagPROPVARIANT(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %4 = alloca %"class.NWindows::NCOM::CPropVariant", align 8 ; 13 uses
  %5 = alloca %class.CStringBase.0, align 8       ; 7 uses
  %6 = alloca %struct._FILETIME, align 4          ; 5 uses
  %7 = alloca %class.CStringBase, align 8         ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i16 0, ptr %4, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 0, ptr %i.d, align 2, !tbaa !40
  switch i32 %2, label %bb.ai [
    i32 3, label %bb.b
    i32 12, label %bb.i
    i32 9, label %bb.n
    i32 8, label %bb.p
    i32 22, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_Z24MultiByteToUnicodeStringRK11CStringBaseIcEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.0) align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef 0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %5, align 8, !tbaa !52
  %i.g = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSEPKw(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.f)
          to label %bb.d unwind label %bb.g       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %5, align 8, !tbaa !52     ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.h) #21
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ai

bb.f:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN11CStringBaseIwED2Ev.exit19

bb.g:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null                          ; 2 uses
  %i.l = load ptr, ptr %5, align 8, !tbaa !52     ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN11CStringBaseIwED2Ev.exit19, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.l) #21
  br label %_ZN11CStringBaseIwED2Ev.exit19

_ZN11CStringBaseIwED2Ev.exit19:                   ; preds = %bb.h, %bb.g, %bb.f
  %.pn15 = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.k, %bb.g ], [ %i.k, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.al

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !54
  %i.p = invoke noundef zeroext i1 @_ZN8NWindows5NTime17DosTimeToFileTimeEjR9_FILETIME(i32 noundef %i.o, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  br i1 %i.p, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.q = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSERK9_FILETIME(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %bb.m unwind label %bb.l       ; 0 uses

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.r = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.al

bb.m:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ai

bb.n:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !55
  %i.u = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSEj(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.t)
          to label %bb.ai unwind label %bb.o      ; 0 uses

bb.o:                                             ; preds = %bb.ai, %bb.q, %bb.n
  %i.v = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %bb.al

bb.p:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load i8, ptr %i.w, align 8, !tbaa !56, !range !41, !noundef !57
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.q, label %bb.ai

bb.q:                                             ; preds = %bb.p
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !42
  %i.ab = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSEy(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.aa)
          to label %bb.ai unwind label %bb.o      ; 0 uses

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.ac = invoke noalias noundef nonnull dereferenceable(5) ptr @_Znam(i64 noundef 5) #20
          to label %bb.s unwind label %bb.ac      ; 3 uses

bb.s:                                             ; preds = %bb.r
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 4 uses
  store ptr %i.ac, ptr %7, align 8, !tbaa !22
  store i32 5, ptr %i.ad, align 4, !tbaa !20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ac, ptr noundef nonnull align 1 dereferenceable(5) @.str, i64 5, i1 false), !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i32 4, ptr %i.ae, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !58
  %i.ah = invoke noalias noundef nonnull dereferenceable(10) ptr @_Znam(i64 noundef 10) #20
          to label %bb.t unwind label %bb.ad      ; 4 uses

bb.t:                                             ; preds = %bb.s
  %i.ai = trunc i32 %i.ag to i8
  %i.aj = add i8 %i.ai, 65
  store <4 x i8> <i8 80, i8 80, i8 77, i8 100>, ptr %i.ah, align 1, !tbaa !23
  tail call void @_ZdaPv(ptr noundef nonnull %i.ac) #21
  store ptr %i.ah, ptr %7, align 8, !tbaa !22
  store i32 10, ptr %i.ad, align 4, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !23
  store i32 5, ptr %i.ae, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 5
  store i8 0, ptr %i.al, align 1, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load i32, ptr %i.am, align 8, !tbaa !59
  %i.ao = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIcEpLEPKc(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.1)
          to label %.noexc23 unwind label %bb.ad  ; 0 uses

.noexc23:                                         ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  invoke void @_Z21ConvertUInt32ToStringjPc(i32 noundef %i.an, ptr noundef nonnull %i.c)
          to label %.noexc24 unwind label %bb.ad

.noexc24:                                         ; preds = %.noexc23
  %i.ap = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIcEpLEPKc(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.c)
          to label %bb.u unwind label %bb.ad      ; 0 uses

bb.u:                                             ; preds = %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !60
  %i.as = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIcEpLEPKc(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.2)
          to label %.noexc26 unwind label %bb.ad  ; 0 uses

.noexc26:                                         ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  invoke void @_Z21ConvertUInt32ToStringjPc(i32 noundef %i.ar, ptr noundef nonnull %i.b)
          to label %.noexc27 unwind label %bb.ad

.noexc27:                                         ; preds = %.noexc26
  %i.at = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIcEpLEPKc(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.b)
          to label %bb.v unwind label %bb.ad      ; 0 uses

bb.v:                                             ; preds = %.noexc27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.au = load i32, ptr %i.ad, align 4, !tbaa !20 ; 7 uses
  %i.av = load i32, ptr %i.ae, align 8, !tbaa !21 ; 9 uses
  %i.aw = xor i32 %i.av, -1
  %i.ax = add i32 %i.au, %i.aw                    ; 3 uses
  %.not.i.i30 = icmp slt i32 %i.ax, 1
  br i1 %.not.i.i30, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ay = icmp sgt i32 %i.au, 64
  %i.az = lshr i32 %i.au, 1
  %i.ba = icmp sgt i32 %i.au, 8
  %..i.i31 = select i1 %i.ba, i32 16, i32 4
  %.0.i.i32 = select i1 %i.ay, i32 %i.az, i32 %..i.i31 ; 2 uses
  %i.bb = add nsw i32 %.0.i.i32, %i.ax
  %i.bc = icmp slt i32 %i.bb, 1
  %i.bd = sub nsw i32 1, %i.ax
  %.1.i.i33 = select i1 %i.bc, i32 %i.bd, i32 %.0.i.i32
  %i.be = add i32 %i.au, 1
  %i.bf = add i32 %i.be, %.1.i.i33                ; 3 uses
  %i.bg = icmp eq i32 %i.bf, %i.au
  br i1 %i.bg, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = sext i32 %i.bf to i64
  %i.bi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bh) #20
          to label %.noexc44 unwind label %bb.ad  ; 10 uses

.noexc44:                                         ; preds = %bb.x
  %i.bj = ptrtoaddr ptr %i.bi to i64
  %i.bk = icmp sgt i32 %i.au, 0
  br i1 %i.bk, label %.preheader.i.i.i34, label %bb.y

.preheader.i.i.i34:                               ; preds = %.noexc44
  %i.bl = icmp sgt i32 %i.av, 0
  %.pre.i.i.i35 = load ptr, ptr %7, align 8, !tbaa !22 ; 10 uses
  br i1 %i.bl, label %iter.check, label %._crit_edge.i.i.i36

iter.check:                                       ; preds = %.preheader.i.i.i34
  %.pre.i.i.i3561 = ptrtoaddr ptr %.pre.i.i.i35 to i64
  %wide.trip.count.i.i.i40 = zext nneg i32 %i.av to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %i.av, 4
  %i.bm = sub i64 %i.bj, %.pre.i.i.i3561
  %diff.check = icmp ult i64 %i.bm, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check62 = icmp ult i32 %i.av, 32
  br i1 %min.iters.check62, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i.i.i40, 28
  %n.vec = and i64 %wide.trip.count.i.i.i40, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.pre.i.i.i35, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load = load <16 x i8>, ptr %i.bn, align 1, !tbaa !23
  %wide.load63 = load <16 x i8>, ptr %i.bo, align 1, !tbaa !23
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <16 x i8> %wide.load, ptr %i.bp, align 1, !tbaa !23
  store <16 x i8> %wide.load63, ptr %i.bq, align 1, !tbaa !23
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i40
  br i1 %cmp.n, label %._crit_edge.thread.i.i.i37, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %wide.trip.count.i.i.i40, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next68, %vec.epilog.vector.body ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre.i.i.i35, i64 %index66
  %wide.load67 = load <4 x i8>, ptr %i.bs, align 1, !tbaa !23
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 %index66
  store <4 x i8> %wide.load67, ptr %i.bt, align 1, !tbaa !23
  %index.next68 = add nuw i64 %index66, 4         ; 2 uses
  %i.bu = icmp eq i64 %index.next68, %n.vec65
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !62

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n69 = icmp eq i64 %n.vec65, %wide.trip.count.i.i.i40
  br i1 %cmp.n69, label %._crit_edge.thread.i.i.i37, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i41.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec65, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i40, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.i41.prol = phi i64 [ %indvars.iv.next.i.i.i42.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.i41.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre.i.i.i35, i64 %indvars.iv.i.i.i41.prol
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !23
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv.i.i.i41.prol
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !23
  %indvars.iv.next.i.i.i42.prol = add nuw nsw i64 %indvars.iv.i.i.i41.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !63

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.i41.unr = phi i64 [ %indvars.iv.i.i.i41.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i42.prol, %vec.epilog.scalar.ph.prol ]
  %i.by = sub nsw i64 %indvars.iv.i.i.i41.ph, %wide.trip.count.i.i.i40
  %i.bz = icmp ugt i64 %i.by, -4
  br i1 %i.bz, label %._crit_edge.thread.i.i.i37, label %vec.epilog.scalar.ph

._crit_edge.i.i.i36:                              ; preds = %.preheader.i.i.i34
  %i.ca = icmp eq ptr %.pre.i.i.i35, null
  br i1 %i.ca, label %bb.y, label %._crit_edge.thread.i.i.i37

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i41 = phi i64 [ %indvars.iv.next.i.i.i42.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i41.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre.i.i.i35, i64 %indvars.iv.i.i.i41
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !23
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv.i.i.i41
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !23
  %indvars.iv.next.i.i.i42 = add nuw nsw i64 %indvars.iv.i.i.i41, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre.i.i.i35, i64 %indvars.iv.next.i.i.i42
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !23
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv.next.i.i.i42
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !23
  %indvars.iv.next.i.i.i42.1 = add nuw nsw i64 %indvars.iv.i.i.i41, 2 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.pre.i.i.i35, i64 %indvars.iv.next.i.i.i42.1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !23
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv.next.i.i.i42.1
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !23
  %indvars.iv.next.i.i.i42.2 = add nuw nsw i64 %indvars.iv.i.i.i41, 3 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.pre.i.i.i35, i64 %indvars.iv.next.i.i.i42.2
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !23
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv.next.i.i.i42.2
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !23
  %indvars.iv.next.i.i.i42.3 = add nuw nsw i64 %indvars.iv.i.i.i41, 4 ; 2 uses
  %exitcond.not.i.i.i43.3 = icmp eq i64 %indvars.iv.next.i.i.i42.3, %wide.trip.count.i.i.i40
  br i1 %exitcond.not.i.i.i43.3, label %._crit_edge.thread.i.i.i37, label %vec.epilog.scalar.ph, !llvm.loop !64

._crit_edge.thread.i.i.i37:                       ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i.i36
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i35) #21
  %.pre.i.i38 = load i32, ptr %i.ae, align 8, !tbaa !21
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge.thread.i.i.i37, %._crit_edge.i.i.i36, %.noexc44
  %i.cn = phi i32 [ %.pre.i.i38, %._crit_edge.thread.i.i.i37 ], [ %i.av, %._crit_edge.i.i.i36 ], [ %i.av, %.noexc44 ] ; 2 uses
  store ptr %i.bi, ptr %7, align 8, !tbaa !22
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %i.bi, i64 %i.co
  store i8 0, ptr %i.cp, align 1, !tbaa !23
  store i32 %i.bf, ptr %i.ad, align 4, !tbaa !20
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.v
  %i.cq = phi i32 [ %i.av, %bb.v ], [ %i.av, %bb.w ], [ %i.cn, %bb.y ]
  %i.cr = load ptr, ptr %7, align 8, !tbaa !22
  %i.cs = sext i32 %i.cq to i64
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 %i.cs
  store i8 109, ptr %i.ct, align 1, !tbaa !23
  %i.cu = load ptr, ptr %7, align 8, !tbaa !22
  %i.cv = load i32, ptr %i.ae, align 8, !tbaa !21
  %i.cw = add nsw i32 %i.cv, 1                    ; 2 uses
  store i32 %i.cw, ptr %i.ae, align 8, !tbaa !21
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %i.cu, i64 %i.cx
  store i8 0, ptr %i.cy, align 1, !tbaa !23
  %i.cz = load i32, ptr %i.af, align 8, !tbaa !58
  %i.da = icmp ugt i32 %i.cz, 7
  br i1 %i.da, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !65 ; 2 uses
  %.not = icmp eq i32 %i.dc, 0
  br i1 %.not, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIcEpLEPKc(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.3)
          to label %.noexc46 unwind label %bb.ad  ; 0 uses

.noexc46:                                         ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  invoke void @_Z21ConvertUInt32ToStringjPc(i32 noundef %i.dc, ptr noundef nonnull %i.a)
          to label %.noexc47 unwind label %bb.ad

.noexc47:                                         ; preds = %.noexc46
  %i.de = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIcEpLEPKc(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.a)
          to label %_ZN8NArchive5NPpmdL12UIntToStringER11CStringBaseIcEPKcj.exit49 unwind label %bb.ad ; 0 uses

_ZN8NArchive5NPpmdL12UIntToStringER11CStringBaseIcEPKcj.exit49: ; preds = %.noexc47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.af

bb.ac:                                            ; preds = %bb.r
  %i.df = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN11CStringBaseIcED2Ev.exit

bb.ad:                                            ; preds = %.noexc47, %.noexc46, %bb.ab, %bb.x, %.noexc27, %.noexc26, %bb.u, %.noexc24, %.noexc23, %bb.t, %bb.s, %bb.af
  %i.dg = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null                          ; 2 uses
  %i.dh = load ptr, ptr %7, align 8, !tbaa !22    ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZdaPv(ptr noundef nonnull %i.dh) #21
  br label %_ZN11CStringBaseIcED2Ev.exit

bb.af:                                            ; preds = %_ZN8NArchive5NPpmdL12UIntToStringER11CStringBaseIcEPKcj.exit49, %bb.aa, %bb.z
  %i.dj = load ptr, ptr %7, align 8, !tbaa !22
  %i.dk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSEPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.dj)
          to label %bb.ag unwind label %bb.ad     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.dl = load ptr, ptr %7, align 8, !tbaa !22    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %_ZN11CStringBaseIcED2Ev.exit50, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.dl) #21
  br label %_ZN11CStringBaseIcED2Ev.exit50

_ZN11CStringBaseIcED2Ev.exit50:                   ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.ai

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %bb.ae, %bb.ad, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.df, %bb.ac ], [ %i.dg, %bb.ad ], [ %i.dg, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.al

bb.ai:                                            ; preds = %bb.p, %bb.q, %bb.n, %_ZN11CStringBaseIcED2Ev.exit50, %bb.m, %_ZN11CStringBaseIwED2Ev.exit, %bb.a
  %i.dn = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant6DetachEP14tagPROPVARIANT(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %3)
          to label %bb.aj unwind label %bb.o      ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.do = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #22
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit:         ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.aq

bb.al:                                            ; preds = %_ZN11CStringBaseIcED2Ev.exit, %bb.o, %bb.l, %_ZN11CStringBaseIwED2Ev.exit19
  %.pn17 = phi { ptr, i32 } [ %i.v, %bb.o ], [ %.pn15, %_ZN11CStringBaseIwED2Ev.exit19 ], [ %i.r, %bb.l ], [ %.pn, %_ZN11CStringBaseIcED2Ev.exit ] ; 2 uses
  %i.dr = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit51 unwind label %bb.am ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #22
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit51:       ; preds = %bb.al
  %.212 = extractvalue { ptr, i32 } %.pn17, 0
  %.2 = extractvalue { ptr, i32 } %.pn17, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.du = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIPKc) #19
  %i.dv = icmp eq i32 %.2, %i.du
  %i.dw = call ptr @__cxa_begin_catch(ptr %.212) #19
  br i1 %i.dv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit51
  %i.dx = call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr %i.dw, ptr %i.dx, align 16, !tbaa !66
  invoke void @__cxa_throw(ptr nonnull %i.dx, ptr nonnull @_ZTIPKc, ptr null) #23
          to label %bb.ar unwind label %bb.ap

bb.ao:                                            ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit51
  call void @__cxa_end_catch()
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #19
  resume { ptr, i32 } %i.dy

bb.aq:                                            ; preds = %bb.ao, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit
  %.0 = phi i32 [ 0, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit ], [ -2147024882, %bb.ao ]
  ret i32 %.0

bb.ar:                                            ; preds = %bb.an
  unreachable
}

declare void @_Z24MultiByteToUnicodeStringRK11CStringBaseIcEj(ptr dead_on_unwind writable sret(%class.CStringBase.0) align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSEPKw(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN8NWindows5NTime17DosTimeToFileTimeEjR9_FILETIME(i32 noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSERK9_FILETIME(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSEj(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSEPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #6

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive5NPpmd8CHandler4OpenEP9IInStreamPKyP20IArchiveOpenCallback(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1)
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive5NPpmd8CHandler7OpenSeqEP19ISequentialInStream(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = invoke noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = invoke noundef i32 @_ZN8NArchive5NPpmd5CItem10ReadHeaderEP19ISequentialInStreamRj(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.i) #19 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %.thread unwind label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %i.g, 0
  br i1 %i.k, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %.noexc, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %1, align 8, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc unwind label %bb.h, !inline_history !69 ; 0 uses

.noexc:                                           ; preds = %bb.f, %bb.e
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !70   ; 3 uses
  %.not6.i = icmp eq ptr %i.q, null
  br i1 %.not6.i, label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit, label %bb.g

bb.g:                                             ; preds = %.noexc
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit unwind label %bb.h, !inline_history !69 ; 0 uses

_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit: ; preds = %bb.g, %.noexc
  store ptr %1, ptr %i.l, align 8, !tbaa !70
  br label %bb.l

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread, %bb.c
  %i.v = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null                          ; 2 uses
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  %i.x = extractvalue { ptr, i32 } %i.v, 1
  %i.y = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIPKc) #19
  %i.z = icmp eq i32 %i.x, %i.y
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.w) #19
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 16, !tbaa !66
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTIPKc, ptr null) #23
          to label %bb.m unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @__cxa_end_catch()
  br label %bb.l

.thread:                                          ; preds = %bb.c, %bb.d
  %.01215 = phi i32 [ %i.g, %bb.d ], [ 1, %bb.c ]
  %i.ac = load ptr, ptr %0, align 8, !tbaa !67
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = invoke noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.l unwind label %bb.h       ; 0 uses

bb.k:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN8NArchive5NPpmd8CHandler14QueryInterfaceERK4GUIDPPv:bb.a
bb.ac:                                            ; preds = %bb.ab
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !23
  %i.cl = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IInArchive, i64 14), align 2, !tbaa !23
  %.not.14.i23 = icmp eq i8 %i.ck, %i.cl
  br i1 %.not.14.i23, label %_ZeqRK4GUIDS1_.exit26, label %_ZeqRK4GUIDS1_.exit26.thread

_ZeqRK4GUIDS1_.exit26:                            ; preds = %bb.ac
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !23
  %i.co = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IInArchive, i64 15), align 1, !tbaa !23
  %.not.15.i24.not = icmp eq i8 %i.cn, %i.co
  br i1 %.not.15.i24.not, label %_ZeqRK4GUIDS1_.exit44.thread.sink.split, label %_ZeqRK4GUIDS1_.exit26.thread

_ZeqRK4GUIDS1_.exit26.thread:                     ; preds = %bb.aa, %bb.v, %bb.z, %bb.u, %bb.ab, %bb.t, %bb.x, %bb.s, %bb.ac, %bb.r, %bb.y, %bb.q, %bb.p, %bb.w, %_ZeqRK4GUIDS1_.exit.thread, %_ZeqRK4GUIDS1_.exit26
  %i.cp = load i8, ptr @IID_IArchiveOpenSeq, align 4, !tbaa !23
  %.not.i27 = icmp eq i8 %i.a, %i.cp
  br i1 %.not.i27, label %bb.ad, label %_ZeqRK4GUIDS1_.exit44.thread

bb.ad:                                            ; preds = %_ZeqRK4GUIDS1_.exit26.thread
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !23
  %i.cs = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IArchiveOpenSeq, i64 1), align 1, !tbaa !23
  %.not.1.i28 = icmp eq i8 %i.cr, %i.cs
  br i1 %.not.1.i28, label %bb.ae, label %_ZeqRK4GUIDS1_.exit44.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cu = load i8, ptr %i.ct, align 2, !tbaa !23
  %i.cv = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IArchiveOpenSeq, i64 2), align 2, !tbaa !23
  %.not.2.i29 = icmp eq i8 %i.cu, %i.cv
  br i1 %.not.2.i29, label %bb.af, label %_ZeqRK4GUIDS1_.exit44.thread

bb.af:                                            ; preds = %bb.ae
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !23
  %i.cy = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IArchiveOpenSeq, i64 3), align 1, !tbaa !23
  %.not.3.i30 = icmp eq i8 %i.cx, %i.cy
  br i1 %.not.3.i30, label %bb.ag, label %_ZeqRK4GUIDS1_.exit44.thread

bb.ag:                                            ; preds = %bb.af
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.da = load i8, ptr %i.cz, align 4, !tbaa !23
  %i.db = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IArchiveOpenSeq, i64 4), align 4, !tbaa !23
  %.not.4.i31 = icmp eq i8 %i.da, %i.db
  br i1 %.not.4.i31, label %bb.ah, label %_ZeqRK4GUIDS1_.exit44.thread

bb.ah:                                            ; preds = %bb.ag
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !23
  %i.de = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IArchiveOpenSeq, i64 5), align 1, !tbaa !23
  %.not.5.i32 = icmp eq i8 %i.dd, %i.de
  br i1 %.not.5.i32, label %bb.ai, label %_ZeqRK4GUIDS1_.exit44.thread

bb.ai:                                            ; preds = %bb.ah
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.dg = load i8, ptr %i.df, align 2, !tbaa !23
  %i.dh = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IArchiveOpenSeq, i64 6), align 2, !tbaa !23
  %.not.6.i33 = icmp eq i8 %i.dg, %i.dh
  br i1 %.not.6.i33, label %bb.aj, label %_ZeqRK4GUIDS1_.exit44.thread

bb.aj:                                            ; preds = %bb.ai
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !23
  %i.dk = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IArchiveOpenSeq, i64 7), align 1, !tbaa !23
  %.not.7.i34 = icmp eq i8 %i.dj, %i.dk
  br i1 %.not.7.i34, label %bb.ak, label %_ZeqRK4GUIDS1_.exit44.thread

bb.ak:                                            ; preds = %bb.aj
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dm = load i8, ptr %i.dl, align 4, !tbaa !23
  %i.dn = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IArchiveOpenSeq, i64 8), align 4, !tbaa !23
  %.not.8.i35 = icmp eq i8 %i.dm, %i.dn
  br i1 %.not.8.i35, label %bb.al, label %_ZeqRK4GUIDS1_.exit44.thread

bb.al:                                            ; preds = %bb.ak
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !23
  %i.dq = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IArchiveOpenSeq, i64 9), align 1, !tbaa !23
  %.not.9.i36 = icmp eq i8 %i.dp, %i.dq
  br i1 %.not.9.i36, label %bb.am, label %_ZeqRK4GUIDS1_.exit44.thread

bb.am:                                            ; preds = %bb.al
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ds = load i8, ptr %i.dr, align 2, !tbaa !23
  %i.dt = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IArchiveOpenSeq, i64 10), align 2, !tbaa !23
  %.not.10.i37 = icmp eq i8 %i.ds, %i.dt
  br i1 %.not.10.i37, label %bb.an, label %_ZeqRK4GUIDS1_.exit44.thread

bb.an:                                            ; preds = %bb.am
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !23
  %i.dw = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IArchiveOpenSeq, i64 11), align 1, !tbaa !23
  %.not.11.i38 = icmp eq i8 %i.dv, %i.dw
  br i1 %.not.11.i38, label %bb.ao, label %_ZeqRK4GUIDS1_.exit44.thread

bb.ao:                                            ; preds = %bb.an
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dy = load i8, ptr %i.dx, align 4, !tbaa !23
  %i.dz = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IArchiveOpenSeq, i64 12), align 4, !tbaa !23
  %.not.12.i39 = icmp eq i8 %i.dy, %i.dz
  br i1 %.not.12.i39, label %bb.ap, label %_ZeqRK4GUIDS1_.exit44.thread

bb.ap:                                            ; preds = %bb.ao
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !23
  %i.ec = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IArchiveOpenSeq, i64 13), align 1, !tbaa !23
  %.not.13.i40 = icmp eq i8 %i.eb, %i.ec
  br i1 %.not.13.i40, label %bb.aq, label %_ZeqRK4GUIDS1_.exit44.thread

bb.aq:                                            ; preds = %bb.ap
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ee = load i8, ptr %i.ed, align 2, !tbaa !23
  %i.ef = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IArchiveOpenSeq, i64 14), align 2, !tbaa !23
  %.not.14.i41 = icmp eq i8 %i.ee, %i.ef
  br i1 %.not.14.i41, label %_ZeqRK4GUIDS1_.exit44, label %_ZeqRK4GUIDS1_.exit44.thread

_ZeqRK4GUIDS1_.exit44:                            ; preds = %bb.aq
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !23
  %i.ei = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IArchiveOpenSeq, i64 15), align 1, !tbaa !23
  %.not.15.i42.not = icmp eq i8 %i.eh, %i.ei
  br i1 %.not.15.i42.not, label %bb.ar, label %_ZeqRK4GUIDS1_.exit44.thread

bb.ar:                                            ; preds = %_ZeqRK4GUIDS1_.exit44
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZeqRK4GUIDS1_.exit44.thread.sink.split

_ZeqRK4GUIDS1_.exit44.thread.sink.split:          ; preds = %_ZeqRK4GUIDS1_.exit26, %_ZeqRK4GUIDS1_.exit, %bb.ar
  %.sink = phi ptr [ %i.ej, %bb.ar ], [ %0, %_ZeqRK4GUIDS1_.exit ], [ %0, %_ZeqRK4GUIDS1_.exit26 ]
  store ptr %.sink, ptr %2, align 8, !tbaa !117
  %i.ek = load ptr, ptr %0, align 8, !tbaa !67
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = tail call noundef i32 %i.em(ptr noundef nonnull align 8 dereferenceable(96) %0) ; 0 uses
  br label %_ZeqRK4GUIDS1_.exit44.thread

_ZeqRK4GUIDS1_.exit44.thread:                     ; preds = %_ZeqRK4GUIDS1_.exit44.thread.sink.split, %bb.ao, %bb.aj, %bb.an, %bb.ai, %bb.ap, %bb.ah, %bb.al, %bb.ag, %bb.aq, %bb.af, %bb.am, %bb.ae, %bb.ad, %bb.ak, %_ZeqRK4GUIDS1_.exit26.thread, %_ZeqRK4GUIDS1_.exit44
  %.0 = phi i32 [ -2147467262, %bb.an ], [ -2147467262, %bb.aj ], [ -2147467262, %bb.ao ], [ -2147467262, %_ZeqRK4GUIDS1_.exit44 ], [ -2147467262, %_ZeqRK4GUIDS1_.exit26.thread ], [ -2147467262, %bb.ak ], [ -2147467262, %bb.ad ], [ -2147467262, %bb.ae ], [ -2147467262, %bb.am ], [ -2147467262, %bb.af ], [ -2147467262, %bb.aq ], [ -2147467262, %bb.ag ], [ -2147467262, %bb.al ], [ -2147467262, %bb.ah ], [ -2147467262, %bb.ap ], [ -2147467262, %bb.ai ], [ 0, %_ZeqRK4GUIDS1_.exit44.thread.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN8NArchive5NPpmd8CHandler6AddRefEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !118
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !118
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN8NArchive5NPpmd8CHandler7ReleaseEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !118
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !118
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(96) %0) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8NArchive5NPpmd8CHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN8NArchive5NPpmd8CHandlerE, i64 16), ptr %0, align 8, !tbaa !67
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8NArchive5NPpmd8CHandlerE, i64 160), ptr %i.a, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #22
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN8NArchive5NPpmd5CItemD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #21
  br label %_ZN8NArchive5NPpmd5CItemD2Ev.exit

_ZN8NArchive5NPpmd5CItemD2Ev.exit:                ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8NArchive5NPpmd8CHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN8NArchive5NPpmd8CHandlerE, i64 16), ptr %0, align 8, !tbaa !67
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8NArchive5NPpmd8CHandlerE, i64 160), ptr %i.a, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i unwind label %bb.c, !inline_history !119 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #22, !inline_history !119
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i:  ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN8NArchive5NPpmd8CHandlerD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #21, !inline_history !119
  br label %_ZN8NArchive5NPpmd8CHandlerD2Ev.exit

_ZN8NArchive5NPpmd8CHandlerD2Ev.exit:             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #21
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N8NArchive5NPpmd8CHandler14QueryInterfaceERK4GUIDPPv(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = tail call noundef i32 @_ZN8NArchive5NPpmd8CHandler14QueryInterfaceERK4GUIDPPv(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2)
  ret i32 %i.b
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N8NArchive5NPpmd8CHandler6AddRefEv(ptr noundef %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !118
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !118
  ret i32 %i.c
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N8NArchive5NPpmd8CHandler7ReleaseEv(ptr noundef %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !118
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !118
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZN8NArchive5NPpmd8CHandler7ReleaseEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(96) %i.d) #19, !inline_history !120
  br label %_ZN8NArchive5NPpmd8CHandler7ReleaseEv.exit

_ZN8NArchive5NPpmd8CHandler7ReleaseEv.exit:       ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn8_N8NArchive5NPpmd8CHandlerD1Ev(ptr noundef %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN8NArchive5NPpmd8CHandlerE, i64 16), ptr %i.a, align 8, !tbaa !67
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8NArchive5NPpmd8CHandlerE, i64 160), ptr %0, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i unwind label %bb.c, !inline_history !119 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #22, !inline_history !119
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i:  ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN8NArchive5NPpmd8CHandlerD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #21, !inline_history !119
  br label %_ZN8NArchive5NPpmd8CHandlerD2Ev.exit

_ZN8NArchive5NPpmd8CHandlerD2Ev.exit:             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn8_N8NArchive5NPpmd8CHandlerD0Ev(ptr noundef %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN8NArchive5NPpmd8CHandlerE, i64 16), ptr %i.a, align 8, !tbaa !67
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8NArchive5NPpmd8CHandlerE, i64 160), ptr %0, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i.i unwind label %bb.c, !inline_history !121 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #22, !inline_history !121
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN8NArchive5NPpmd8CHandlerD0Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #21, !inline_history !121
  br label %_ZN8NArchive5NPpmd8CHandlerD0Ev.exit

_ZN8NArchive5NPpmd8CHandlerD0Ev.exit:             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 noundef 96) #21, !inline_history !122
  ret void
}

declare noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIcEpLEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %strlen.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %i.a = trunc i64 %strlen.i to i32               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !20   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 9 uses
  %i.f = xor i32 %i.e, -1
  %i.g = add i32 %i.c, %i.f                       ; 3 uses
  %.not.i = icmp slt i32 %i.g, %i.a
  br i1 %.not.i, label %bb.b, label %_ZN11CStringBaseIcE10GrowLengthEi.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %i.c, 64
  %i.i = lshr i32 %i.c, 1
  %i.j = icmp sgt i32 %i.c, 8
  %..i = select i1 %i.j, i32 16, i32 4
  %.0.i = select i1 %i.h, i32 %i.i, i32 %..i      ; 2 uses
  %i.k = add nsw i32 %.0.i, %i.g
  %i.l = icmp slt i32 %i.k, %i.a
  %i.m = sub nsw i32 %i.a, %i.g
  %.1.i = select i1 %i.l, i32 %i.m, i32 %.0.i
  %i.n = add i32 %i.c, 1
  %i.o = add i32 %i.n, %.1.i                      ; 3 uses
  %i.p = icmp eq i32 %i.o, %i.c
  br i1 %i.p, label %_ZN11CStringBaseIcE10GrowLengthEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = sext i32 %i.o to i64
  %i.r = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #20 ; 10 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = icmp sgt i32 %i.c, 0
  br i1 %i.t, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %bb.c
  %i.u = icmp sgt i32 %i.e, 0
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !22 ; 10 uses
  br i1 %i.u, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.preheader.i.i
  %.pre.i.i10 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %i.e to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %i.e, 4
  %i.v = sub i64 %i.s, %.pre.i.i10
  %diff.check = icmp ult i64 %i.v, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check11 = icmp ult i32 %i.e, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <16 x i8>, ptr %i.w, align 1, !tbaa !23
  %wide.load12 = load <16 x i8>, ptr %i.x, align 1, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <16 x i8> %wide.load, ptr %i.y, align 1, !tbaa !23
  store <16 x i8> %wide.load12, ptr %i.z, align 1, !tbaa !23
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index15
  %wide.load16 = load <4 x i8>, ptr %i.ab, align 1, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 %index15
  store <4 x i8> %wide.load16, ptr %i.ac, align 1, !tbaa !23
  %index.next17 = add nuw i64 %index15, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next17, %n.vec14
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !124

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %n.vec14, %wide.trip.count.i.i
  br i1 %cmp.n18, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !23
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.i.i.prol
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !23
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !125

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.ah = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.aj = icmp eq ptr %.pre.i.i, null
  br i1 %i.aj, label %bb.d, label %._crit_edge.thread.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.i.i
  store i8 %i.al, ptr %i.am, align 1, !tbaa !23
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.next.i.i
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !23
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.next.i.i.1
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !23
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.next.i.i.2
  store i8 %i.au, ptr %i.av, align 1, !tbaa !23
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph, !llvm.loop !126

._crit_edge.thread.i.i:                           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #21
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.c
  %i.aw = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %i.e, %._crit_edge.i.i ], [ %i.e, %bb.c ] ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !22
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.r, i64 %i.ax
  store i8 0, ptr %i.ay, align 1, !tbaa !23
  store i32 %i.o, ptr %i.b, align 4, !tbaa !20
  br label %_ZN11CStringBaseIcE10GrowLengthEi.exit

_ZN11CStringBaseIcE10GrowLengthEi.exit:           ; preds = %bb.a, %bb.b, %bb.d
  %i.az = phi i32 [ %i.e, %bb.a ], [ %i.e, %bb.b ], [ %i.aw, %bb.d ]
  %i.ba = load ptr, ptr %0, align 8, !tbaa !22
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIcE10GrowLengthEi.exit
  %.04.i = phi ptr [ %1, %_ZN11CStringBaseIcE10GrowLengthEi.exit ], [ %i.bd, %bb.e ] ; 2 uses
  %.0.i4 = phi ptr [ %i.bc, %_ZN11CStringBaseIcE10GrowLengthEi.exit ], [ %i.bf, %bb.e ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.04.i, i64 1
  %i.be = load i8, ptr %.04.i, align 1, !tbaa !23 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i4, i64 1
  store i8 %i.be, ptr %.0.i4, align 1, !tbaa !23
  %.not.i5 = icmp eq i8 %i.be, 0
  br i1 %.not.i5, label %_Z12MyStringCopyIcEPT_S1_PKS0_.exit, label %bb.e, !llvm.loop !127

_Z12MyStringCopyIcEPT_S1_PKS0_.exit:              ; preds = %bb.e
  %i.bg = load i32, ptr %i.d, align 8, !tbaa !21
  %i.bh = add nsw i32 %i.bg, %i.a
  store i32 %i.bh, ptr %i.d, align 8, !tbaa !21
  ret ptr %0
}

declare void @_Z21ConvertUInt32ToStringjPc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

declare noundef zeroext i8 @_ZN14CByteInBufWrap20ReadByteFromNewBlockEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare ptr @MidAlloc(i64 noundef) local_unnamed_addr #2

declare void @Ppmd7_Construct(ptr noundef) local_unnamed_addr #2

declare void @Ppmd8_Construct(ptr noundef) local_unnamed_addr #2

declare i32 @Ppmd7_Alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Ppmd8_Alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN8NArchive5NPpmdL10SzBigAllocEPvm(ptr nofree readnone captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @BigAlloc(i64 noundef %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN8NArchive5NPpmdL9SzBigFreeEPvS1_(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  tail call void @BigFree(ptr noundef %1)
  ret void
}

declare ptr @BigAlloc(i64 noundef) local_unnamed_addr #2

declare void @BigFree(ptr noundef) local_unnamed_addr #2

declare void @Ppmd7_Init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Ppmd8_Init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8NArchive5NPpmd13CRangeDecoder4InitEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  store i32 0, ptr %i.a, align 4, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.b, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.c, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !82   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !85   ; 2 uses
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  store ptr %i.j, ptr %i.f, align 8, !tbaa !82
  %i.k = load i8, ptr %i.g, align 1, !tbaa !23
  br label %_ZN14CByteInBufWrap8ReadByteEv.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i8 @_ZN14CByteInBufWrap20ReadByteFromNewBlockEv(ptr noundef nonnull align 8 dereferenceable(64) %i.e)
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !81  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre3 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !82
  %.phi.trans.insert4 = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre5 = load ptr, ptr %.phi.trans.insert4, align 8, !tbaa !85
  br label %_ZN14CByteInBufWrap8ReadByteEv.exit

_ZN14CByteInBufWrap8ReadByteEv.exit:              ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %i.i, %bb.b ], [ %.pre5, %bb.c ] ; 2 uses
  %i.n = phi ptr [ %i.j, %bb.b ], [ %.pre3, %bb.c ] ; 3 uses
  %i.o = phi ptr [ %i.e, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %.0.i = phi i8 [ %i.k, %bb.b ], [ %i.l, %bb.c ]
  %i.p = zext i8 %.0.i to i32                     ; 2 uses
  store i32 %i.p, ptr %i.a, align 4, !tbaa !78
  %i.q = shl nuw nsw i32 %i.p, 8
  %.not.i.1 = icmp eq ptr %i.n, %i.m
  br i1 %.not.i.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN14CByteInBufWrap8ReadByteEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !82
  %i.t = load i8, ptr %i.n, align 1, !tbaa !23
  br label %_ZN14CByteInBufWrap8ReadByteEv.exit.1

bb.e:                                             ; preds = %_ZN14CByteInBufWrap8ReadByteEv.exit
  %i.u = tail call noundef zeroext i8 @_ZN14CByteInBufWrap20ReadByteFromNewBlockEv(ptr noundef nonnull align 8 dereferenceable(64) %i.o)
  %.pre6 = load ptr, ptr %i.d, align 8, !tbaa !81 ; 3 uses
  %.phi.trans.insert7 = getelementptr inbounds nuw i8, ptr %.pre6, i64 8
  %.pre8 = load ptr, ptr %.phi.trans.insert7, align 8, !tbaa !82
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %.pre6, i64 16
  %.pre10 = load ptr, ptr %.phi.trans.insert9, align 8, !tbaa !85
  br label %_ZN14CByteInBufWrap8ReadByteEv.exit.1

_ZN14CByteInBufWrap8ReadByteEv.exit.1:            ; preds = %bb.e, %bb.d
  %i.v = phi ptr [ %i.m, %bb.d ], [ %.pre10, %bb.e ] ; 2 uses
  %i.w = phi ptr [ %i.s, %bb.d ], [ %.pre8, %bb.e ] ; 3 uses
  %i.x = phi ptr [ %i.o, %bb.d ], [ %.pre6, %bb.e ] ; 3 uses
  %.0.i.1 = phi i8 [ %i.t, %bb.d ], [ %i.u, %bb.e ]
  %i.y = zext i8 %.0.i.1 to i32
  %i.z = or disjoint i32 %i.q, %i.y               ; 2 uses
  store i32 %i.z, ptr %i.a, align 4, !tbaa !78
  %i.aa = shl nuw nsw i32 %i.z, 8
  %.not.i.2 = icmp eq ptr %i.w, %i.v
  br i1 %.not.i.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN14CByteInBufWrap8ReadByteEv.exit.1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !82
  %i.ad = load i8, ptr %i.w, align 1, !tbaa !23
  br label %_ZN14CByteInBufWrap8ReadByteEv.exit.2

bb.g:                                             ; preds = %_ZN14CByteInBufWrap8ReadByteEv.exit.1
  %i.ae = tail call noundef zeroext i8 @_ZN14CByteInBufWrap20ReadByteFromNewBlockEv(ptr noundef nonnull align 8 dereferenceable(64) %i.x)
  %.pre11 = load ptr, ptr %i.d, align 8, !tbaa !81 ; 3 uses
  %.phi.trans.insert12 = getelementptr inbounds nuw i8, ptr %.pre11, i64 8
  %.pre13 = load ptr, ptr %.phi.trans.insert12, align 8, !tbaa !82
  %.phi.trans.insert14 = getelementptr inbounds nuw i8, ptr %.pre11, i64 16
  %.pre15 = load ptr, ptr %.phi.trans.insert14, align 8, !tbaa !85
  br label %_ZN14CByteInBufWrap8ReadByteEv.exit.2

_ZN14CByteInBufWrap8ReadByteEv.exit.2:            ; preds = %bb.g, %bb.f
  %i.af = phi ptr [ %i.v, %bb.f ], [ %.pre15, %bb.g ]
  %i.ag = phi ptr [ %i.ac, %bb.f ], [ %.pre13, %bb.g ] ; 3 uses
  %i.ah = phi ptr [ %i.x, %bb.f ], [ %.pre11, %bb.g ] ; 2 uses
  %.0.i.2 = phi i8 [ %i.ad, %bb.f ], [ %i.ae, %bb.g ]
  %i.ai = zext i8 %.0.i.2 to i32
  %i.aj = or disjoint i32 %i.aa, %i.ai            ; 2 uses
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !78
  %.not.i.3 = icmp eq ptr %i.ag, %i.af
  br i1 %.not.i.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN14CByteInBufWrap8ReadByteEv.exit.2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !82
  %i.am = load i8, ptr %i.ag, align 1, !tbaa !23
  br label %_ZN14CByteInBufWrap8ReadByteEv.exit.3

bb.i:                                             ; preds = %_ZN14CByteInBufWrap8ReadByteEv.exit.2
  %i.an = tail call noundef zeroext i8 @_ZN14CByteInBufWrap20ReadByteFromNewBlockEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ah)
  br label %_ZN14CByteInBufWrap8ReadByteEv.exit.3

_ZN14CByteInBufWrap8ReadByteEv.exit.3:            ; preds = %bb.i, %bb.h
  %.0.i.3 = phi i8 [ %i.am, %bb.h ], [ %i.an, %bb.i ]
  %i.ao = shl nuw i32 %i.aj, 8
  %i.ap = zext i8 %.0.i.3 to i32
  %i.aq = or disjoint i32 %i.ao, %i.ap            ; 2 uses
  store i32 %i.aq, ptr %i.a, align 4, !tbaa !78
  %i.ar = icmp ne i32 %i.aq, -1
  ret i1 %i.ar
}

declare i32 @Ppmd8_RangeDec_Init(ptr noundef) local_unnamed_addr #2

declare void @Ppmd7_Free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Ppmd8_Free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @MidFree(ptr noundef) local_unnamed_addr #2

declare void @_ZN14CByteInBufWrap4FreeEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare void @_Z11RegisterArcPK8CArcInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN8NArchive5NPpmdL9CreateArcEv() #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #20 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.c, align 4, !tbaa !118
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN8NArchive5NPpmd8CHandlerE, i64 16), ptr %i.a, align 8, !tbaa !67
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8NArchive5NPpmd8CHandlerE, i64 160), ptr %i.b, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #20
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store ptr %i.e, ptr %i.d, align 8, !tbaa !22
  store i8 0, ptr %i.e, align 1, !tbaa !23
  store i32 4, ptr %i.f, align 4, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr null, ptr %i.g, align 8, !tbaa !70
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #21
  resume { ptr, i32 } %i.h
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_PpmdHandler.cpp() #8 section ".text.startup" {
bb.a:
  tail call void @_Z11RegisterArcPK8CArcInfo(ptr noundef nonnull @_ZN8NArchive5NPpmdL9g_ArcInfoE)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind memory(none) }
attributes #7 = { cold noreturn }
attributes #8 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"_ZTSN8NArchive5NPpmd5CItemE", !5, i64 0, !5, i64 4, !10, i64 8, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36}
!10 = !{!"_ZTS11CStringBaseIcE", !11, i64 0, !5, i64 8, !5, i64 12}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!9, !5, i64 4}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !6, i64 0}
!16 = !{!9, !5, i64 24}
!17 = !{!9, !5, i64 28}
!18 = !{!9, !5, i64 32}
!19 = !{!9, !5, i64 36}
!20 = !{!10, !5, i64 12}
!21 = !{!10, !5, i64 8}
!22 = !{!10, !11, i64 0}
!23 = !{!6, !6, i64 0}
!24 = distinct !{!24, !25, !26, !27}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"branch_weights", i32 4, i32 28}
!29 = distinct !{!29, !25, !26, !27}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !25, !26}
!33 = !{!34, !5, i64 8}
!34 = !{!"_ZTS14tagSTATPROPSTG", !35, i64 0, !5, i64 8, !15, i64 12}
!35 = !{!"p1 wchar_t", !12, i64 0}
!36 = !{!34, !15, i64 12}
!37 = !{!35, !35, i64 0}
!38 = !{!39, !15, i64 0}
!39 = !{!"_ZTS14tagPROPVARIANT", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6, !6, i64 8}
!40 = !{!39, !15, i64 2}
!41 = !{i8 0, i8 2}
!42 = !{!43, !48, i64 72}
!43 = !{!"_ZTSN8NArchive5NPpmd8CHandlerE", !44, i64 0, !46, i64 8, !47, i64 16, !9, i64 24, !5, i64 64, !48, i64 72, !49, i64 80, !50, i64 88}
!44 = !{!"_ZTS10IInArchive", !45, i64 0}
!45 = !{!"_ZTS8IUnknown"}
!46 = !{!"_ZTS15IArchiveOpenSeq", !45, i64 0}
!47 = !{!"_ZTS13CMyUnknownImp", !5, i64 0}
!48 = !{!"long long", !6, i64 0}
!49 = !{!"bool", !6, i64 0}
!50 = !{!"_ZTS9CMyComPtrI19ISequentialInStreamE", !51, i64 0}
!51 = !{!"p1 _ZTS19ISequentialInStream", !12, i64 0}
!52 = !{!53, !35, i64 0}
!53 = !{!"_ZTS11CStringBaseIwE", !35, i64 0, !5, i64 8, !5, i64 12}
!54 = !{!43, !5, i64 28}
!55 = !{!43, !5, i64 24}
!56 = !{!43, !49, i64 80}
!57 = !{}
!58 = !{!43, !5, i64 56}
!59 = !{!43, !5, i64 48}
!60 = !{!43, !5, i64 52}
!61 = distinct !{!61, !25, !26, !27}
!62 = distinct !{!62, !25, !26, !27}
!63 = distinct !{!63, !31}
!64 = distinct !{!64, !25, !26}
!65 = !{!43, !5, i64 60}
!66 = !{!11, !11, i64 0}
!67 = !{!68, !68, i64 0}
!68 = !{!"vtable pointer", !7, i64 0}
!69 = distinct !{null}
!70 = !{!50, !51, i64 0}
!71 = distinct !{null}
!72 = !{!73, !12, i64 0}
!73 = !{!"_ZTSN8NArchive5NPpmd13CRangeDecoderE", !74, i64 0, !5, i64 24, !5, i64 28, !5, i64 32, !75, i64 40}
!74 = !{!"_ZTS15IPpmd7_RangeDec", !12, i64 0, !12, i64 8, !12, i64 16}
!75 = !{!"p1 _ZTS14CByteInBufWrap", !12, i64 0}
!76 = !{!73, !12, i64 8}
!77 = !{!73, !12, i64 16}
!78 = !{!73, !5, i64 28}
!79 = !{!73, !5, i64 24}
!80 = !{!73, !5, i64 32}
!81 = !{!73, !75, i64 40}
!82 = !{!83, !11, i64 8}
!83 = !{!"_ZTS14CByteInBufWrap", !84, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !5, i64 32, !51, i64 40, !48, i64 48, !49, i64 56, !5, i64 60}
!84 = !{!"_ZTS7IByteIn", !12, i64 0}
!85 = !{!83, !11, i64 16}
!86 = distinct !{!86, !25}
!87 = !{!48, !48, i64 0}
!88 = !{!89, !90, i64 0}
!89 = !{!"_ZTS9CMyComPtrI20ISequentialOutStreamE", !90, i64 0}
!90 = !{!"p1 _ZTS20ISequentialOutStream", !12, i64 0}
!91 = !{!83, !51, i64 40}
!92 = distinct !{null}
!93 = !{!83, !11, i64 24}
!94 = !{!83, !48, i64 48}
!95 = !{!83, !49, i64 56}
!96 = !{!83, !5, i64 60}
!97 = !{!98, !48, i64 48}
!98 = !{!"_ZTS14CLocalProgress", !99, i64 0, !47, i64 8, !100, i64 16, !102, i64 24, !49, i64 32, !48, i64 40, !48, i64 48, !48, i64 56, !49, i64 64, !49, i64 65}
!99 = !{!"_ZTS21ICompressProgressInfo", !45, i64 0}
!100 = !{!"_ZTS9CMyComPtrI9IProgressE", !101, i64 0}
!101 = !{!"p1 _ZTS9IProgress", !12, i64 0}
!102 = !{!"_ZTS9CMyComPtrI21ICompressProgressInfoE", !103, i64 0}
!103 = !{!"p1 _ZTS21ICompressProgressInfo", !12, i64 0}
!104 = !{!98, !48, i64 56}
!105 = !{!106, !5, i64 0}
!106 = !{!"_ZTSN8NArchive5NPpmd8CPpmdCppE", !5, i64 0, !73, i64 8, !107, i64 56, !110, i64 19240}
!107 = !{!"_ZTS6CPpmd7", !108, i64 0, !108, i64 8, !12, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !5, i64 104, !6, i64 108, !6, i64 146, !6, i64 276, !6, i64 428, !6, i64 684, !6, i64 940, !109, i64 1196, !6, i64 1200, !6, i64 2800}
!108 = !{!"p1 _ZTS15CPpmd7_Context_", !12, i64 0}
!109 = !{!"_ZTS9CPpmd_See", !15, i64 0, !6, i64 2, !6, i64 3}
!110 = !{!"_ZTS6CPpmd8", !111, i64 0, !111, i64 8, !12, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !6, i64 120, !6, i64 128, !6, i64 166, !6, i64 296, !6, i64 448, !6, i64 600, !6, i64 856, !109, i64 1116, !6, i64 1120, !6, i64 4192}
!111 = !{!"p1 _ZTS15CPpmd8_Context_", !12, i64 0}
!112 = distinct !{!112, !25}
!113 = distinct !{!113, !25}
!114 = !{!43, !5, i64 64}
!115 = distinct !{null}
!116 = !{!106, !75, i64 48}
!117 = !{!12, !12, i64 0}
!118 = !{!47, !5, i64 0}
!119 = !{ptr @_ZN8NArchive5NPpmd8CHandlerD2Ev}
!120 = !{ptr @_ZN8NArchive5NPpmd8CHandler7ReleaseEv}
!121 = !{ptr @_ZN8NArchive5NPpmd8CHandlerD0Ev, ptr @_ZN8NArchive5NPpmd8CHandlerD2Ev}
!122 = !{ptr @_ZN8NArchive5NPpmd8CHandlerD0Ev}
!123 = distinct !{!123, !25, !26, !27}
!124 = distinct !{!124, !25, !26, !27}
!125 = distinct !{!125, !31}
!126 = distinct !{!126, !25, !26}
!127 = distinct !{!127, !25}
end_hunk_1
