inline.NumInlined: 200
inline.NumDeleted: 87
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.CRecordVector.13 = type { %class.CBaseRecordVector }
%class.CBaseRecordVector = type { ptr, i32, i32, ptr, i64 }
%class.CStringBase = type { ptr, i32, i32 }
%class.CObjectVector.1 = type { %class.CRecordVector.0 }
%class.CRecordVector.0 = type { %class.CBaseRecordVector }
%"class.NWindows::NCOM::CPropVariant" = type { %struct.tagPROPVARIANT }
%struct.tagPROPVARIANT = type { i16, i16, i16, i16, %union.anon }
%union.anon = type { %struct.LARGE_INTEGER }
%struct.LARGE_INTEGER = type { i64 }
%class.CRecordVector = type { %class.CBaseRecordVector }
%"class.NWindows::NFile::NFind::CFileInfoW" = type { %"class.NWindows::NFile::NFind::CFileInfoBase", %class.CStringBase }
%"class.NWindows::NFile::NFind::CFileInfoBase" = type { i64, %struct._FILETIME, %struct._FILETIME, %struct._FILETIME, i32, i8 }
%struct._FILETIME = type { i32, i32 }
%struct.CArchiveLink = type <{ %class.CObjectVector.6, %class.CObjectVector.1, i64, i8, [7 x i8] }>
%class.CObjectVector.6 = type { %class.CRecordVector.0 }
%class.CRecordVector.7 = type { %class.CBaseRecordVector }

$_ZN23CArchiveExtractCallbackC2Ev = comdat any

$_ZN12CArchiveLinkD2Ev = comdat any

$_ZN13CObjectVectorI11CStringBaseIwEED2Ev = comdat any

$_ZN13CObjectVectorI11CStringBaseIwEED0Ev = comdat any

$_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii = comdat any

$__clang_call_terminate = comdat any

$_ZN13CObjectVectorI4CArcED2Ev = comdat any

$_ZN13CObjectVectorI4CArcED0Ev = comdat any

$_ZN13CObjectVectorI4CArcE6DeleteEii = comdat any

$_ZN11CStringBaseIwE7ReplaceERKS0_S2_ = comdat any

$_ZN13CRecordVectorIjED0Ev = comdat any

$_ZN11CStringBaseIwE11InsertSpaceERii = comdat any

$_ZN13CRecordVectorIyED0Ev = comdat any

$_ZN13CRecordVectorIiED0Ev = comdat any

$_ZNK11CStringBaseIwE3MidEii = comdat any

$_ZTV13CObjectVectorI11CStringBaseIwEE = comdat any

$_ZTI13CObjectVectorI11CStringBaseIwEE = comdat any

$_ZTS13CObjectVectorI11CStringBaseIwEE = comdat any

$_ZTI13CRecordVectorIPvE = comdat any

$_ZTS13CRecordVectorIPvE = comdat any

$_ZTV13CObjectVectorI4CArcE = comdat any

$_ZTI13CObjectVectorI4CArcE = comdat any

$_ZTS13CObjectVectorI4CArcE = comdat any

$_ZTV13CRecordVectorIjE = comdat any

$_ZTI13CRecordVectorIjE = comdat any

$_ZTS13CRecordVectorIjE = comdat any

$_ZTV13CRecordVectorIyE = comdat any

$_ZTI13CRecordVectorIyE = comdat any

$_ZTS13CRecordVectorIyE = comdat any

$_ZTV13CRecordVectorIiE = comdat any

$_ZTI13CRecordVectorIiE = comdat any

$_ZTS13CRecordVectorIiE = comdat any

@.str = private unnamed_addr constant [25 x i8] c"there is no such archive\00", align 1
@_ZTIPKc = external constant ptr
@.str.1 = private unnamed_addr constant [24 x i8] c"can't decompress folder\00", align 1
@.str.2 = private unnamed_addr constant [4 x i32] [i32 48, i32 48, i32 49, i32 0], align 4
@.str.3 = private unnamed_addr constant [4 x i32] [i32 114, i32 97, i32 114, i32 0], align 4
@_ZTV23CArchiveExtractCallback = external unnamed_addr constant { [14 x ptr], [8 x ptr], [8 x ptr] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTV13CObjectVectorI11CStringBaseIwEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI13CObjectVectorI11CStringBaseIwEE, ptr @_ZN13CObjectVectorI11CStringBaseIwEED2Ev, ptr @_ZN13CObjectVectorI11CStringBaseIwEED0Ev, ptr @_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii] }, comdat, align 8
@_ZTI13CObjectVectorI11CStringBaseIwEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13CObjectVectorI11CStringBaseIwEE, ptr @_ZTI13CRecordVectorIPvE }, comdat, align 8
@_ZTS13CObjectVectorI11CStringBaseIwEE = linkonce_odr dso_local constant [34 x i8] c"13CObjectVectorI11CStringBaseIwEE\00", comdat, align 1
@_ZTI13CRecordVectorIPvE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13CRecordVectorIPvE, ptr @_ZTI17CBaseRecordVector }, comdat, align 8
@_ZTS13CRecordVectorIPvE = linkonce_odr dso_local constant [20 x i8] c"13CRecordVectorIPvE\00", comdat, align 1
@_ZTI17CBaseRecordVector = external constant ptr
@_ZTV13CObjectVectorI4CArcE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI13CObjectVectorI4CArcE, ptr @_ZN13CObjectVectorI4CArcED2Ev, ptr @_ZN13CObjectVectorI4CArcED0Ev, ptr @_ZN13CObjectVectorI4CArcE6DeleteEii] }, comdat, align 8
@_ZTI13CObjectVectorI4CArcE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13CObjectVectorI4CArcE, ptr @_ZTI13CRecordVectorIPvE }, comdat, align 8
@_ZTS13CObjectVectorI4CArcE = linkonce_odr dso_local constant [23 x i8] c"13CObjectVectorI4CArcE\00", comdat, align 1
@.str.5 = private unnamed_addr constant [33 x i32] [i32 67, i32 97, i32 110, i32 32, i32 110, i32 111, i32 116, i32 32, i32 99, i32 114, i32 101, i32 97, i32 116, i32 101, i32 32, i32 111, i32 117, i32 116, i32 112, i32 117, i32 116, i32 32, i32 100, i32 105, i32 114, i32 101, i32 99, i32 116, i32 111, i32 114, i32 121, i32 32, i32 0], align 4
@_ZTV13CRecordVectorIjE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI13CRecordVectorIjE, ptr @_ZN17CBaseRecordVectorD2Ev, ptr @_ZN13CRecordVectorIjED0Ev, ptr @_ZN17CBaseRecordVector6DeleteEii] }, comdat, align 8
@_ZTI13CRecordVectorIjE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13CRecordVectorIjE, ptr @_ZTI17CBaseRecordVector }, comdat, align 8
@_ZTS13CRecordVectorIjE = linkonce_odr dso_local constant [19 x i8] c"13CRecordVectorIjE\00", comdat, align 1
@_ZTV13CRecordVectorIyE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI13CRecordVectorIyE, ptr @_ZN17CBaseRecordVectorD2Ev, ptr @_ZN13CRecordVectorIyED0Ev, ptr @_ZN17CBaseRecordVector6DeleteEii] }, comdat, align 8
@_ZTI13CRecordVectorIyE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13CRecordVectorIyE, ptr @_ZTI17CBaseRecordVector }, comdat, align 8
@_ZTS13CRecordVectorIyE = linkonce_odr dso_local constant [19 x i8] c"13CRecordVectorIyE\00", comdat, align 1
@_ZTV13CRecordVectorIiE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI13CRecordVectorIiE, ptr @_ZN17CBaseRecordVectorD2Ev, ptr @_ZN13CRecordVectorIiED0Ev, ptr @_ZN17CBaseRecordVector6DeleteEii] }, comdat, align 8
@_ZTI13CRecordVectorIiE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13CRecordVectorIiE, ptr @_ZTI17CBaseRecordVector }, comdat, align 8
@_ZTS13CRecordVectorIiE = linkonce_odr dso_local constant [19 x i8] c"13CRecordVectorIiE\00", comdat, align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z18DecompressArchivesP7CCodecsRK13CRecordVectorIiER13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeERK15CExtractOptionsP15IOpenCallbackUIP18IExtractCallbackUIRS7_R15CDecompressStat(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %8, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 44)) %9) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %class.CRecordVector.13, align 8   ; 11 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %11 = alloca %class.CStringBase, align 8        ; 9 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %12 = alloca %class.CObjectVector.1, align 8    ; 11 uses
  %13 = alloca %class.CStringBase, align 8        ; 13 uses
  %14 = alloca %class.CStringBase, align 8        ; 9 uses
  %15 = alloca %class.CStringBase, align 8        ; 7 uses
  %16 = alloca %"class.NWindows::NCOM::CPropVariant", align 8 ; 10 uses
  %17 = alloca %class.CRecordVector, align 8      ; 13 uses
  %18 = alloca %"class.NWindows::NFile::NFind::CFileInfoW", align 8 ; 11 uses
  %19 = alloca %"class.NWindows::NFile::NFind::CFileInfoW", align 8 ; 13 uses
  %20 = alloca %struct.CArchiveLink, align 8      ; 18 uses
  %21 = alloca %class.CRecordVector.7, align 8    ; 16 uses
  %22 = alloca %class.CStringBase, align 8        ; 15 uses
  %23 = alloca %class.CStringBase, align 8        ; 7 uses
  %24 = alloca %class.CStringBase, align 8        ; 7 uses
  %25 = alloca %class.CStringBase, align 8        ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 44, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  %i.c = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %17, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.d, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIyE, i64 16), ptr %17, align 8, !tbaa !12
  %i.e = load i8, ptr %5, align 8, !tbaa !14, !range !23, !noundef !24
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = select i1 %i.f, i32 1, i32 %i.h          ; 4 uses
  %i.j = icmp sgt i32 %i.i, 0                     ; 2 uses
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %18, i64 52
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %17, i64 12 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %18, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit ] ; 2 uses
  %.0151418 = phi i64 [ 0, %.lr.ph ], [ %i.ak, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  store i64 0, ptr %i.q, align 8
  %i.r = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #15
          to label %bb.c unwind label %bb.f       ; 2 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.r, ptr %i.k, align 8, !tbaa !25
  store i32 0, ptr %i.r, align 4, !tbaa !26
  store i32 4, ptr %i.l, align 4, !tbaa !28
  store i64 0, ptr %18, align 8, !tbaa !29
  %i.s = load i8, ptr %5, align 8, !tbaa !14, !range !23, !noundef !24
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !25
  %i.y = invoke noundef zeroext i1 @_ZN8NWindows5NFile5NFind10CFileInfoW4FindEPKw(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef %i.x)
          to label %bb.e unwind label %.loopexit339

bb.e:                                             ; preds = %bb.d
  br i1 %i.y, label %bb.g, label %.invoke

.invoke:                                          ; preds = %bb.e, %bb.g
  %.str.1.sink = phi ptr [ @.str.1, %bb.g ], [ @.str, %bb.e ]
  %i.z = call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr %.str.1.sink, ptr %i.z, align 16, !tbaa !35
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTIPKc, ptr null) #16
          to label %.cont unwind label %.loopexit.split-lp340

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit279

.loopexit339:                                     ; preds = %bb.d
  %lpad.loopexit341 = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp340:                            ; preds = %.invoke
  %lpad.loopexit.split-lp342 = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.ab = load i32, ptr %i.n, align 8, !tbaa !37
  %i.ac = and i32 %i.ab, 16
  %.not331 = icmp eq i32 %i.ac, 0
  br i1 %.not331, label %._crit_edge470, label %.invoke

._crit_edge470:                                   ; preds = %bb.g
  %.pre = load i64, ptr %18, align 8, !tbaa !29
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge470, %bb.c
  %i.ad = phi i64 [ %.pre, %._crit_edge470 ], [ 0, %bb.c ]
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.af = load i32, ptr %i.p, align 4, !tbaa !38  ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ag
  store i64 %i.ad, ptr %i.ah, align 8, !tbaa !39
  %i.ai = add nsw i32 %i.af, 1
  store i32 %i.ai, ptr %i.p, align 4, !tbaa !38
  %i.aj = load i64, ptr %18, align 8, !tbaa !29
  %i.ak = add i64 %i.aj, %.0151418                ; 2 uses
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !25  ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.al) #17
  br label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit

_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit:    ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !40

bb.k:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit339, %.loopexit.split-lp340, %bb.k
  %.pn275 = phi { ptr, i32 } [ %i.an, %bb.k ], [ %lpad.loopexit341, %.loopexit339 ], [ %lpad.loopexit.split-lp342, %.loopexit.split-lp340 ] ; 2 uses
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !25  ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit279, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.ao) #17
  br label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit279

_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit279: ; preds = %bb.m, %bb.l, %bb.f
  %.pn275.pn = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %.pn275, %bb.l ], [ %.pn275, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  br label %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit316

._crit_edge:                                      ; preds = %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit, %bb.a
  %.0151.lcssa = phi i64 [ 0, %bb.a ], [ %i.ak, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit ] ; 2 uses
  %i.aq = invoke noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #15
          to label %bb.n unwind label %bb.r       ; 19 uses

bb.n:                                             ; preds = %._crit_edge
  invoke void @_ZN23CArchiveExtractCallbackC2Ev(ptr noundef nonnull align 8 dereferenceable(332) %i.aq)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %_ZN9CMyComPtrI23IArchiveExtractCallbackEC2EPS0_.exit unwind label %bb.t, !inline_history !42 ; 0 uses

_ZN9CMyComPtrI23IArchiveExtractCallbackEC2EPS0_.exit: ; preds = %bb.o
  %i.av = icmp sgt i32 %i.i, 1                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ax = zext i1 %i.av to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 267
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.ba = load <2 x i32>, ptr %i.aw, align 8, !tbaa !66
  store <2 x i32> %i.ba, ptr %i.az, align 8, !tbaa !66
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 304 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bb, i8 0, i64 28, i1 false)
  br i1 %i.av, label %bb.p, label %bb.v

bb.p:                                             ; preds = %_ZN9CMyComPtrI23IArchiveExtractCallbackEC2EPS0_.exit
  %i.bc = load ptr, ptr %7, align 8, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = invoke noundef i32 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %.0151.lcssa)
          to label %bb.q unwind label %bb.u       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %.not = icmp eq i32 %i.bf, 0
  br i1 %.not, label %.lr.ph439, label %.loopexit338

bb.r:                                             ; preds = %._crit_edge
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit316

bb.s:                                             ; preds = %bb.n
  %i.bh = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_Z18DecompressArchivesP7CCodecsRK13CRecordVectorIiER13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeERK15CExtractOptionsP15IOpenCallbackUIP18IExtractCallbackUIRS7_R15CDecompressStat:bb.a
  %i.kk = sub i64 %.2153422, %i.kj
  %i.kl = load i32, ptr %i.g, align 4, !tbaa !38
  br label %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread

.loopexit:                                        ; preds = %.lr.ph.i, %bb.cc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.cd, %bb.ce, %bb.cf
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread: ; preds = %.noexc299, %.lr.ph423, %bb.cg, %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit
  %.2162 = phi i32 [ %i.kl, %bb.cg ], [ %.1161421, %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit ], [ %.1161421, %.lr.ph423 ], [ %.1161421, %.noexc299 ] ; 2 uses
  %.3154 = phi i64 [ %i.kk, %bb.cg ], [ %.2153422, %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit ], [ %.2153422, %.lr.ph423 ], [ %.2153422, %.noexc299 ] ; 2 uses
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, 1 ; 2 uses
  %i.km = load i32, ptr %i.ce, align 4, !tbaa !38 ; 2 uses
  %i.kn = sext i32 %i.km to i64
  %i.ko = icmp slt i64 %indvars.iv.next462, %i.kn
  br i1 %i.ko, label %.lr.ph423, label %.loopexit332, !llvm.loop !76

.loopexit332:                                     ; preds = %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread, %bb.cb
  %i.kp = phi i32 [ %i.jd, %bb.cb ], [ %i.km, %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread ]
  %.3163 = phi i32 [ %.0160431, %bb.cb ], [ %.2162, %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread ] ; 2 uses
  %.4155 = phi i64 [ %.1152432, %bb.cb ], [ %.3154, %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread ] ; 2 uses
  %.not254 = icmp eq i32 %i.kp, 0
  br i1 %.not254, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %.loopexit332
  %i.kq = load i64, ptr %i.bt, align 8, !tbaa !67
  %i.kr = add i64 %i.kq, %.4155                   ; 3 uses
  %i.ks = load ptr, ptr %7, align 8, !tbaa !12
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 40
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = invoke noundef i32 %i.ku(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.kr)
          to label %bb.ci unwind label %bb.cj     ; 2 uses

bb.ci:                                            ; preds = %bb.ch
  %.not255 = icmp eq i32 %i.kv, 0
  br i1 %.not255, label %bb.ck, label %bb.fw

bb.cj:                                            ; preds = %bb.ch
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ck:                                            ; preds = %bb.ci, %.loopexit332
  %.5156 = phi i64 [ %i.kr, %bb.ci ], [ %.4155, %.loopexit332 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #14
  store i64 0, ptr %i.dm, align 8
  %i.kx = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #15
          to label %bb.cl unwind label %bb.cn     ; 2 uses

bb.cl:                                            ; preds = %bb.ck
  store ptr %i.kx, ptr %25, align 8, !tbaa !25
  store i32 0, ptr %i.kx, align 4, !tbaa !26
  store i32 4, ptr %i.cj, align 4, !tbaa !28
  %i.ky = load ptr, ptr %6, align 8, !tbaa !12
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  %i.la = load ptr, ptr %i.kz, align 8
  %i.lb = invoke noundef i32 %i.la(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(16) %25)
          to label %bb.cm unwind label %bb.co     ; 2 uses

bb.cm:                                            ; preds = %bb.cl
  %.not256 = icmp eq i32 %i.lb, 0
  br i1 %.not256, label %bb.cp, label %.thread327

bb.cn:                                            ; preds = %bb.ck
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit311

bb.co:                                            ; preds = %bb.cl
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %.body306

bb.cp:                                            ; preds = %bb.cm
  %i.le = load i32, ptr %i.ck, align 8, !tbaa !72
  %i.lf = icmp eq i32 %i.le, 0
  br i1 %i.lf, label %bb.ct, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lg = load ptr, ptr %7, align 8, !tbaa !12
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 120
  %i.li = load ptr, ptr %i.lh, align 8
  %i.lj = invoke noundef i32 %i.li(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(16) %25)
          to label %bb.cr unwind label %bb.cs     ; 2 uses

bb.cr:                                            ; preds = %bb.cq
  %.not257 = icmp eq i32 %i.lj, 0
  br i1 %.not257, label %bb.ct, label %.thread327

bb.cs:                                            ; preds = %bb.cq
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %.body306

bb.ct:                                            ; preds = %bb.cr, %bb.cp
  %i.ll = load i32, ptr %i.cl, align 4, !tbaa !38 ; 3 uses
  %.not259426 = icmp sgt i32 %i.ll, 0
  br i1 %.not259426, label %.lr.ph429, label %.._crit_edge430_crit_edge

.._crit_edge430_crit_edge:                        ; preds = %bb.ct
  %.pre472 = sext i32 %i.ll to i64
  br label %._crit_edge430

.lr.ph429:                                        ; preds = %bb.ct, %.thread
  %i.lm = phi i32 [ %i.ma, %.thread ], [ %i.ll, %bb.ct ]
  %indvars.iv464 = phi i64 [ %indvars.iv.next465, %.thread ], [ 0, %bb.ct ] ; 2 uses
  %i.ln = load ptr, ptr %i.cm, align 8, !tbaa !33
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv464
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !34 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 72
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !72
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %.thread, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph429
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 64
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !25
  %i.lv = load ptr, ptr %7, align 8, !tbaa !12
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 72
  %i.lx = load ptr, ptr %i.lw, align 8
  %i.ly = invoke noundef i32 %i.lx(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.lu)
          to label %bb.cw unwind label %bb.cv     ; 2 uses

bb.cv:                                            ; preds = %bb.cu
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %.body306

bb.cw:                                            ; preds = %bb.cu
  %.not258 = icmp eq i32 %i.ly, 0
  br i1 %.not258, label %..thread_crit_edge, label %.thread327

..thread_crit_edge:                               ; preds = %bb.cw
  %.pre471 = load i32, ptr %i.cl, align 4, !tbaa !38
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %.lr.ph429
  %i.ma = phi i32 [ %.pre471, %..thread_crit_edge ], [ %i.lm, %.lr.ph429 ] ; 2 uses
  %indvars.iv.next465 = add nuw nsw i64 %indvars.iv464, 1 ; 2 uses
  %i.mb = sext i32 %i.ma to i64                   ; 2 uses
  %.not259 = icmp slt i64 %indvars.iv.next465, %i.mb
  br i1 %.not259, label %.lr.ph429, label %._crit_edge430, !llvm.loop !77

._crit_edge430:                                   ; preds = %.thread, %.._crit_edge430_crit_edge
  %.pre-phi = phi i64 [ %.pre472, %.._crit_edge430_crit_edge ], [ %i.mb, %.thread ]
  %i.mc = load ptr, ptr %i.cm, align 8, !tbaa !33
  %i.md = getelementptr [8 x i8], ptr %i.mc, i64 %.pre-phi
  %i.me = getelementptr i8, ptr %i.md, i64 -8
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !34 ; 6 uses
  %i.mg = load i8, ptr %5, align 8, !tbaa !14, !range !23, !noundef !24
  %i.mh = trunc nuw i8 %i.mg to i1
  %i.mi = load i8, ptr %i.cn, align 4, !range !23
  %i.mj = xor i8 %i.mi, 1
  %i.mk = select i1 %i.mh, i8 0, i8 %i.mj
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mf, i64 56
  store i8 %i.mk, ptr %i.ml, align 8, !tbaa !78
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mf, i64 48
  %i.mn = load i64, ptr %i.co, align 8
  store i64 %i.mn, ptr %i.mm, align 8
  %i.mo = load i64, ptr %19, align 8, !tbaa !29
  %i.mp = load i64, ptr %i.bt, align 8, !tbaa !67
  %i.mq = add i64 %i.mp, %i.mo
  %i.mr = load ptr, ptr %i.mf, align 8, !tbaa !82 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.cq, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %10, align 8, !tbaa !12
  %i.ms = load i8, ptr %5, align 8, !tbaa !14, !range !23, !noundef !24
  %i.mt = trunc nuw i8 %i.ms to i1
  br i1 %i.mt, label %bb.dv, label %bb.cx

bb.cx:                                            ; preds = %._crit_edge430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.mu = load ptr, ptr %i.mr, align 8, !tbaa !12
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 56
  %i.mw = load ptr, ptr %i.mv, align 8
  %i.mx = invoke noundef i32 %i.mw(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, ptr noundef nonnull %i.a)
          to label %bb.cy unwind label %bb.cz     ; 2 uses

bb.cy:                                            ; preds = %bb.cx
  %.not.i302 = icmp eq i32 %i.mx, 0
  br i1 %.not.i302, label %.preheader.i, label %.thread173.i

.preheader.i:                                     ; preds = %bb.cy
  %i.my = load i32, ptr %i.a, align 4, !tbaa !4
  %.not184.i = icmp eq i32 %i.my, 0
  br i1 %.not184.i, label %._crit_edge.i, label %.lr.ph.i303

bb.cz:                                            ; preds = %bb.cx
  %i.mz = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

.lr.ph.i303:                                      ; preds = %.preheader.i, %bb.do
  %.1183.i = phi i32 [ %.4.i, %bb.do ], [ 0, %.preheader.i ]
  %.0100181.i = phi i32 [ %i.nt, %bb.do ], [ 0, %.preheader.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  store i64 17179869184, ptr %i.ct, align 8
  %i.na = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #15
          to label %bb.da unwind label %bb.dc     ; 2 uses

bb.da:                                            ; preds = %.lr.ph.i303
  store ptr %i.na, ptr %11, align 8, !tbaa !25
  store i32 0, ptr %i.na, align 4, !tbaa !26
  %i.nb = invoke noundef i32 @_ZNK4CArc11GetItemPathEjR11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(80) %i.mf, i32 noundef %.0100181.i, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.db unwind label %bb.dd     ; 2 uses

bb.db:                                            ; preds = %bb.da
  %.not103.i = icmp eq i32 %i.nb, 0
  br i1 %.not103.i, label %bb.de, label %bb.dm

bb.dc:                                            ; preds = %.lr.ph.i303
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit123.i

bb.dd:                                            ; preds = %bb.da
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.de:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.ne = invoke noundef i32 @_Z19IsArchiveItemFolderP10IInArchivejRb(ptr noundef nonnull %i.mr, i32 noundef %.0100181.i, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.df unwind label %bb.dg     ; 2 uses

bb.df:                                            ; preds = %bb.de
  %.not104.i = icmp eq i32 %i.ne, 0               ; 2 uses
  %.1...i = select i1 %.not104.i, i32 %.1183.i, i32 %i.ne
  br i1 %.not104.i, label %bb.dh, label %bb.dl

bb.dg:                                            ; preds = %bb.de
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dh:                                            ; preds = %bb.df
  %i.ng = load i8, ptr %i.b, align 1, !tbaa !83, !range !23, !noundef !24
  %i.nh = trunc nuw i8 %i.ng to i1
  %i.ni = xor i1 %i.nh, true
  %i.nj = invoke noundef zeroext i1 @_ZNK9NWildcard11CCensorNode9CheckPathERK11CStringBaseIwEb(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(16) %11, i1 noundef zeroext %i.ni)
          to label %bb.di unwind label %bb.dj

bb.di:                                            ; preds = %bb.dh
  br i1 %i.nj, label %bb.dk, label %bb.dl

bb.dj:                                            ; preds = %bb.dk, %bb.dh
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dk:                                            ; preds = %bb.di
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZN13CRecordVectorIjE3AddEj.exit.i unwind label %bb.dj

_ZN13CRecordVectorIjE3AddEj.exit.i:               ; preds = %bb.dk
  %i.nl = load ptr, ptr %i.cr, align 8, !tbaa !33
  %i.nm = load i32, ptr %i.cs, align 4, !tbaa !38
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds [4 x i8], ptr %i.nl, i64 %i.nn
  store i32 %.0100181.i, ptr %i.no, align 4, !tbaa !4
  %i.np = load i32, ptr %i.cs, align 4, !tbaa !38
  %i.nq = add nsw i32 %i.np, 1
  store i32 %i.nq, ptr %i.cs, align 4, !tbaa !38
  br label %bb.dl

bb.dl:                                            ; preds = %_ZN13CRecordVectorIjE3AddEj.exit.i, %bb.di, %bb.df
  %.395.i = phi i32 [ 4, %bb.di ], [ 1, %bb.df ], [ 0, %_ZN13CRecordVectorIjE3AddEj.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.db
  %.496.i = phi i32 [ %.395.i, %bb.dl ], [ 1, %bb.db ]
  %.4.i = phi i32 [ %.1...i, %bb.dl ], [ %i.nb, %bb.db ] ; 2 uses
  %i.nr = load ptr, ptr %11, align 8, !tbaa !25   ; 2 uses
  %i.ns = icmp eq ptr %i.nr, null
  br i1 %i.ns, label %_ZN11CStringBaseIwED2Ev.exit.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @_ZdaPv(ptr noundef nonnull %i.nr) #17
  br label %_ZN11CStringBaseIwED2Ev.exit.i

_ZN11CStringBaseIwED2Ev.exit.i:                   ; preds = %bb.dn, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  switch i32 %.496.i, label %26 [
    i32 0, label %bb.do
    i32 4, label %bb.do
  ]

bb.do:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit.i, %_ZN11CStringBaseIwED2Ev.exit.i
  %i.nt = add nuw i32 %.0100181.i, 1              ; 2 uses
  %i.nu = load i32, ptr %i.a, align 4, !tbaa !4
  %i.nv = icmp ult i32 %i.nt, %i.nu
  br i1 %i.nv, label %.lr.ph.i303, label %._crit_edge.i, !llvm.loop !84

bb.dp:                                            ; preds = %bb.dj, %bb.dg
  %.pn.i305 = phi { ptr, i32 } [ %i.nk, %bb.dj ], [ %i.nf, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.dd
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i305, %bb.dp ], [ %i.nd, %bb.dd ] ; 2 uses
  %i.nw = load ptr, ptr %11, align 8, !tbaa !25   ; 2 uses
  %i.nx = icmp eq ptr %i.nw, null
  br i1 %i.nx, label %_ZN11CStringBaseIwED2Ev.exit123.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @_ZdaPv(ptr noundef nonnull %i.nw) #17
  br label %_ZN11CStringBaseIwED2Ev.exit123.i

_ZN11CStringBaseIwED2Ev.exit123.i:                ; preds = %bb.dr, %bb.dq, %bb.dc
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.nc, %bb.dc ], [ %.pn.pn.i, %bb.dq ], [ %.pn.pn.i, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %bb.du

._crit_edge.i:                                    ; preds = %bb.do, %.preheader.i
  %i.ny = load i32, ptr %i.cs, align 4, !tbaa !38
  %i.nz = icmp eq i32 %i.ny, 0
  br i1 %i.nz, label %bb.ds, label %.thread177.i

.thread177.i:                                     ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.dv

bb.ds:                                            ; preds = %._crit_edge.i
  %i.oa = load ptr, ptr %7, align 8, !tbaa !12
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 104
  %i.oc = load ptr, ptr %i.ob, align 8
  %i.od = invoke noundef i32 %i.oc(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.thread173.i unwind label %bb.dt ; 0 uses

bb.dt:                                            ; preds = %bb.ds
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

.thread173.i:                                     ; preds = %bb.ds, %bb.cy
  %.6.ph.i = phi i32 [ 0, %bb.ds ], [ %i.mx, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.ft

26:                                               ; preds = %_ZN11CStringBaseIwED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.ft

bb.du:                                            ; preds = %bb.dt, %_ZN11CStringBaseIwED2Ev.exit123.i, %bb.cz
  %.pn108.i = phi { ptr, i32 } [ %i.oe, %bb.dt ], [ %.pn.pn.pn.i, %_ZN11CStringBaseIwED2Ev.exit123.i ], [ %i.mz, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.fs

bb.dv:                                            ; preds = %.thread177.i, %._crit_edge430
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.cv, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %12, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.of = load i32, ptr %i.cx, align 8, !tbaa !72 ; 3 uses
  %i.og = add nsw i32 %i.of, 1                    ; 3 uses
  %i.oh = icmp eq i32 %i.og, 0
  br i1 %i.oh, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.oi = zext nneg i32 %i.og to i64
  %i.oj = icmp slt i32 %i.of, -1
  %i.ok = shl nuw nsw i64 %i.oi, 2
  %i.ol = select i1 %i.oj, i64 -1, i64 %i.ok
  %i.om = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ol) #15
          to label %.noexc.i304 unwind label %bb.eg ; 3 uses

.noexc.i304:                                      ; preds = %bb.dw
  store ptr %i.om, ptr %13, align 8, !tbaa !25
  store i32 0, ptr %i.om, align 4, !tbaa !26
  store i32 %i.og, ptr %i.cy, align 4, !tbaa !28
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %.noexc.i304, %bb.dv
  %i.on = phi ptr [ null, %bb.dv ], [ %i.om, %.noexc.i304 ]
  %i.oo = load ptr, ptr %i.cw, align 8, !tbaa !25
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dx, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.oo, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.op, %bb.dx ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.on, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.or, %bb.dx ] ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  %i.oq = load i32, ptr %.04.i.i.i, align 4, !tbaa !26 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  store i32 %i.oq, ptr %.0.i.i.i, align 4, !tbaa !26
  %.not.i.i.i = icmp eq i32 %i.oq, 0
  br i1 %.not.i.i.i, label %bb.dy, label %bb.dx, !llvm.loop !74

bb.dy:                                            ; preds = %bb.dx
  store i32 %i.of, ptr %i.cz, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  %i.os = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #15
          to label %.noexc128.i unwind label %bb.eh ; 2 uses

.noexc128.i:                                      ; preds = %bb.dy
  store ptr %i.os, ptr %14, align 8, !tbaa !25
  store i32 2, ptr %i.da, align 4, !tbaa !28
  store i64 42, ptr %i.os, align 4, !tbaa !26
  store i32 1, ptr %i.db, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  %i.ot = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  invoke void @_Z16GetCorrectFsPathRK11CStringBaseIwE(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %i.ot)
          to label %bb.dz unwind label %bb.ei

bb.dz:                                            ; preds = %.noexc128.i
  %i.ou = invoke noundef i32 @_ZN11CStringBaseIwE7ReplaceERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.ea unwind label %bb.ej     ; 0 uses

bb.ea:                                            ; preds = %bb.dz
  %i.ov = load ptr, ptr %15, align 8, !tbaa !25   ; 2 uses
  %i.ow = icmp eq ptr %i.ov, null
  br i1 %i.ow, label %_ZN11CStringBaseIwED2Ev.exit129.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @_ZdaPv(ptr noundef nonnull %i.ov) #17
  br label %_ZN11CStringBaseIwED2Ev.exit129.i

_ZN11CStringBaseIwED2Ev.exit129.i:                ; preds = %bb.eb, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  %i.ox = load ptr, ptr %14, align 8, !tbaa !25   ; 2 uses
  %i.oy = icmp eq ptr %i.ox, null
  br i1 %i.oy, label %_ZN11CStringBaseIwED2Ev.exit130.i, label %bb.ec

bb.ec:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit129.i
  call void @_ZdaPv(ptr noundef nonnull %i.ox) #17
  br label %_ZN11CStringBaseIwED2Ev.exit130.i

_ZN11CStringBaseIwED2Ev.exit130.i:                ; preds = %bb.ec, %_ZN11CStringBaseIwED2Ev.exit129.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  %i.oz = load i32, ptr %i.cz, align 8, !tbaa !72
  %i.pa = icmp eq i32 %i.oz, 0
  br i1 %i.pa, label %bb.ey, label %bb.ed

bb.ed:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit130.i
  %i.pb = load ptr, ptr %13, align 8, !tbaa !25
  %i.pc = invoke noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory22CreateComplexDirectoryEPKw(ptr noundef %i.pb)
          to label %bb.ee unwind label %bb.em

bb.ee:                                            ; preds = %bb.ed
  br i1 %i.pc, label %bb.ey, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.pd = tail call ptr @__errno_location() #18
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !4  ; 2 uses
  %i.pf = icmp eq i32 %i.pe, 0
  %spec.store.select.i = select i1 %i.pf, i32 -2147467259, i32 %i.pe
  %i.pg = invoke noalias noundef nonnull dereferenceable(132) ptr @_Znam(i64 noundef 132) #15
          to label %.noexc136.i unwind label %bb.ev ; 4 uses

.noexc136.i:                                      ; preds = %bb.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(132) %i.pg, ptr noundef nonnull align 4 dereferenceable(132) @.str.5, i64 132, i1 false), !tbaa !26
  %i.ph = invoke noalias noundef nonnull dereferenceable(132) ptr @_Znam(i64 noundef 132) #15
          to label %.noexc140.i unwind label %bb.ew ; 6 uses

bb.eg:                                            ; preds = %bb.dw
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit152.i

bb.eh:                                            ; preds = %bb.dy
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit139.i

bb.ei:                                            ; preds = %.noexc128.i
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit138.i

bb.ej:                                            ; preds = %bb.dz
  %i.pl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pm = load ptr, ptr %15, align 8, !tbaa !25   ; 2 uses
  %i.pn = icmp eq ptr %i.pm, null
  br i1 %i.pn, label %_ZN11CStringBaseIwED2Ev.exit138.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void @_ZdaPv(ptr noundef nonnull %i.pm) #17
  br label %_ZN11CStringBaseIwED2Ev.exit138.i

_ZN11CStringBaseIwED2Ev.exit138.i:                ; preds = %bb.ek, %bb.ej, %bb.ei
  %.pn110.i = phi { ptr, i32 } [ %i.pk, %bb.ei ], [ %i.pl, %bb.ej ], [ %i.pl, %bb.ek ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  %i.po = load ptr, ptr %14, align 8, !tbaa !25   ; 2 uses
  %i.pp = icmp eq ptr %i.po, null
  br i1 %i.pp, label %_ZN11CStringBaseIwED2Ev.exit139.i, label %bb.el

bb.el:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit138.i
  call void @_ZdaPv(ptr noundef nonnull %i.po) #17
  br label %_ZN11CStringBaseIwED2Ev.exit139.i

_ZN11CStringBaseIwED2Ev.exit139.i:                ; preds = %bb.el, %_ZN11CStringBaseIwED2Ev.exit138.i, %bb.eh
  %.pn110.pn.i = phi { ptr, i32 } [ %i.pj, %bb.eh ], [ %.pn110.i, %_ZN11CStringBaseIwED2Ev.exit138.i ], [ %.pn110.i, %bb.el ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  br label %_ZN11CStringBaseIwED2Ev.exit149.i

bb.em:                                            ; preds = %bb.ey, %bb.ed
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit149.i

.noexc140.i:                                      ; preds = %.noexc136.i
  store i32 0, ptr %i.ph, align 4, !tbaa !26, !noalias !85
  br label %bb.en

bb.en:                                            ; preds = %bb.en, %.noexc140.i
  %.04.i.i.i.i = phi ptr [ %i.pg, %.noexc140.i ], [ %i.pr, %bb.en ] ; 2 uses
  %.0.i.i.i.i = phi ptr [ %i.ph, %.noexc140.i ], [ %i.pt, %bb.en ] ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 4
  %i.ps = load i32, ptr %.04.i.i.i.i, align 4, !tbaa !26, !noalias !85 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 4
  store i32 %i.ps, ptr %.0.i.i.i.i, align 4, !tbaa !26, !noalias !85
  %.not.i.i.i.i = icmp eq i32 %i.ps, 0
  br i1 %.not.i.i.i.i, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i.i, label %bb.en, !llvm.loop !74

_ZN11CStringBaseIwEC2ERKS0_.exit.i.i:             ; preds = %bb.en
  %i.pu = load i32, ptr %i.cz, align 8, !tbaa !72 ; 2 uses
  %.not.i.i153.i = icmp sgt i32 %i.pu, 0
  br i1 %.not.i.i153.i, label %bb.eo, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i.i

bb.eo:                                            ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i.i
  %i.pv = call i32 @llvm.umax.i32(i32 %i.pu, i32 16)
  %i.pw = add nuw nsw i32 %i.pv, 34
  %i.px = zext nneg i32 %i.pw to i64
  %i.py = shl nuw nsw i64 %i.px, 2
  %i.pz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.py) #15
          to label %.lr.ph.i.i.i.preheader.i unwind label %bb.eq ; 3 uses

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.eo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.pz, ptr noundef nonnull align 4 dereferenceable(128) %i.ph, i64 128, i1 false), !tbaa !26
  call void @_ZdaPv(ptr noundef nonnull %i.ph) #17
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 128
  store i32 0, ptr %i.qa, align 4, !tbaa !26
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i.i

_ZN11CStringBaseIwE10GrowLengthEi.exit.i.i:       ; preds = %.lr.ph.i.i.i.preheader.i, %_ZN11CStringBaseIwEC2ERKS0_.exit.i.i
  %.sroa.0159.1.i = phi ptr [ %i.ph, %_ZN11CStringBaseIwEC2ERKS0_.exit.i.i ], [ %i.pz, %.lr.ph.i.i.i.preheader.i ] ; 4 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.0159.1.i, i64 128
  %i.qc = load ptr, ptr %13, align 8, !tbaa !25
  br label %bb.ep

bb.ep:                                            ; preds = %bb.ep, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i.i
end_hunk_1
begin_hunk_2_@_Z18DecompressArchivesP7CCodecsRK13CRecordVectorIiER13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeERK15CExtractOptionsP15IOpenCallbackUIP18IExtractCallbackUIRS7_R15CDecompressStat:bb.a
  br label %_ZN11CStringBaseIwED2Ev.exit147.i

bb.ev:                                            ; preds = %bb.ef
  %i.qz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit149.i

bb.ew:                                            ; preds = %.noexc136.i
  %i.ra = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ex:                                            ; preds = %bb.es
  %i.rb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0159.1.i) #17
  br label %.body.i

.body.i:                                          ; preds = %bb.ex, %bb.ew, %bb.eq
  %.pn113.i = phi { ptr, i32 } [ %i.rb, %bb.ex ], [ %i.ra, %bb.ew ], [ %i.qg, %bb.eq ]
  call void @_ZdaPv(ptr noundef nonnull %i.pg) #17
  br label %_ZN11CStringBaseIwED2Ev.exit149.i

bb.ey:                                            ; preds = %bb.ee, %_ZN11CStringBaseIwED2Ev.exit130.i
  %i.rc = load i8, ptr %5, align 8, !tbaa !14, !range !23, !noundef !24
  %i.rd = trunc nuw i8 %i.rc to i1
  %i.re = select i1 %i.rd, ptr %4, ptr null
  %i.rf = load i8, ptr %i.de, align 1, !tbaa !88, !range !23, !noundef !24
  %i.rg = trunc nuw i8 %i.rf to i1
  %i.rh = load i8, ptr %i.df, align 1, !tbaa !89, !range !23, !noundef !24
  %i.ri = trunc nuw i8 %i.rh to i1
  %i.rj = load i8, ptr %i.dg, align 4, !tbaa !90, !range !23, !noundef !24
  %i.rk = trunc nuw i8 %i.rj to i1
  invoke void @_ZN23CArchiveExtractCallback4InitEPKN9NWildcard11CCensorNodeEPK4CArcP29IFolderArchiveExtractCallbackbbbRK11CStringBaseIwERK13CObjectVectorISA_Ey(ptr noundef nonnull align 8 dereferenceable(332) %i.aq, ptr noundef %i.re, ptr noundef nonnull align 8 dereferenceable(80) %i.mf, ptr noundef nonnull %7, i1 noundef zeroext %i.rg, i1 noundef zeroext %i.ri, i1 noundef zeroext %i.rk, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.mq)
          to label %bb.ez unwind label %bb.em

bb.ez:                                            ; preds = %bb.ey
  %i.rl = invoke noundef i32 @_Z13SetPropertiesP8IUnknownRK13CObjectVectorI9CPropertyE(ptr noundef %i.mr, ptr noundef nonnull align 8 dereferenceable(32) %i.dh)
          to label %bb.fa unwind label %bb.fb     ; 2 uses

bb.fa:                                            ; preds = %bb.ez
  %.not116.i = icmp eq i32 %i.rl, 0
  br i1 %.not116.i, label %bb.fc, label %_ZN11CStringBaseIwED2Ev.exit147.i

bb.fb:                                            ; preds = %bb.ez
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit149.i

bb.fc:                                            ; preds = %bb.fa
  %i.rn = load i8, ptr %i.df, align 1, !tbaa !89, !range !23, !noundef !24
  %i.ro = trunc nuw i8 %i.rn to i1
  %i.rp = load i8, ptr %i.dg, align 4, !range !23
  %i.rq = xor i8 %i.rp, 1
  %i.rr = zext nneg i8 %i.rq to i32
  %i.rs = select i1 %i.ro, i32 %i.rr, i32 0       ; 2 uses
  %i.rt = load i8, ptr %5, align 8, !tbaa !14, !range !23, !noundef !24
  %i.ru = trunc nuw i8 %i.rt to i1
  br i1 %i.ru, label %bb.fd, label %bb.fn

bb.fd:                                            ; preds = %bb.fc
  %i.rv = load ptr, ptr %i.mr, align 8, !tbaa !12
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 72
  %i.rx = load ptr, ptr %i.rw, align 8
  %i.ry = invoke noundef i32 %i.rx(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, ptr noundef null, i32 noundef -1, i32 noundef %i.rs, ptr noundef nonnull %i.aq)
          to label %bb.fe unwind label %bb.fi

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  store i16 0, ptr %16, align 8, !tbaa !91
  store i16 0, ptr %i.di, align 2, !tbaa !94
  %i.rz = load ptr, ptr %i.mr, align 8, !tbaa !12
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 80
  %i.sb = load ptr, ptr %i.sa, align 8
  %i.sc = invoke noundef i32 %i.sb(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, i32 noundef 44, ptr noundef nonnull %16)
          to label %bb.ff unwind label %bb.fj

bb.ff:                                            ; preds = %bb.fe
  %i.sd = icmp eq i32 %i.sc, 0
  br i1 %i.sd, label %bb.fg, label %bb.fl

bb.fg:                                            ; preds = %bb.ff
  %i.se = load i16, ptr %16, align 8, !tbaa !91
  switch i16 %i.se, label %bb.fl [
    i16 21, label %bb.fh
    i16 19, label %bb.fh
  ]

bb.fh:                                            ; preds = %bb.fg, %bb.fg
  %i.sf = invoke noundef i64 @_Z26ConvertPropVariantToUInt64RK14tagPROPVARIANT(ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.fl unwind label %bb.fj

bb.fi:                                            ; preds = %bb.fo, %bb.fn, %bb.fd
  %i.sg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit149.i

bb.fj:                                            ; preds = %bb.fh, %bb.fe
  %i.sh = landingpad { ptr, i32 }
          cleanup
  %i.si = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit.i unwind label %bb.fk ; 0 uses

bb.fk:                                            ; preds = %bb.fj
  %i.sj = landingpad { ptr, i32 }
          catch ptr null
  %i.sk = extractvalue { ptr, i32 } %i.sj, 0
  call void @__clang_call_terminate(ptr %i.sk) #19
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit.i:       ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  br label %_ZN11CStringBaseIwED2Ev.exit149.i

bb.fl:                                            ; preds = %bb.fh, %bb.fg, %bb.ff
  %.3 = phi i64 [ 0, %bb.fg ], [ 0, %bb.ff ], [ %i.sf, %bb.fh ]
  %i.sl = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit150.i unwind label %bb.fm ; 0 uses

bb.fm:                                            ; preds = %bb.fl
  %i.sm = landingpad { ptr, i32 }
          catch ptr null
  %i.sn = extractvalue { ptr, i32 } %i.sm, 0
  call void @__clang_call_terminate(ptr %i.sn) #19
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit150.i:    ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  br label %bb.fo

bb.fn:                                            ; preds = %bb.fc
  %i.so = load ptr, ptr %i.cr, align 8, !tbaa !33
  %i.sp = load i32, ptr %i.cs, align 4, !tbaa !38
  %i.sq = load ptr, ptr %i.mr, align 8, !tbaa !12
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 72
  %i.ss = load ptr, ptr %i.sr, align 8
  %i.st = invoke noundef i32 %i.ss(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, ptr noundef nonnull %i.so, i32 noundef %i.sp, i32 noundef %i.rs, ptr noundef nonnull %i.aq)
          to label %bb.fo unwind label %bb.fi

bb.fo:                                            ; preds = %bb.fn, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit150.i
  %.2319 = phi i64 [ %.3, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit150.i ], [ 0, %bb.fn ]
  %.067.i = phi i32 [ %i.ry, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit150.i ], [ %i.st, %bb.fn ]
  %i.su = load ptr, ptr %7, align 8, !tbaa !12
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 112
  %i.sw = load ptr, ptr %i.sv, align 8
  %i.sx = invoke noundef i32 %i.sw(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %.067.i)
          to label %_ZN11CStringBaseIwED2Ev.exit147.i unwind label %bb.fi

_ZN11CStringBaseIwED2Ev.exit147.i:                ; preds = %bb.fo, %bb.fa, %bb.eu
  %.1318 = phi i64 [ %.2319, %bb.fo ], [ 0, %bb.fa ], [ 0, %bb.eu ]
  %.9.i = phi i32 [ %i.sx, %bb.fo ], [ %i.rl, %bb.fa ], [ %spec.store.select.i, %bb.eu ]
  %i.sy = load ptr, ptr %13, align 8, !tbaa !25   ; 2 uses
  %i.sz = icmp eq ptr %i.sy, null
  br i1 %i.sz, label %_ZN11CStringBaseIwED2Ev.exit151.i, label %bb.fp

bb.fp:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit147.i
  call void @_ZdaPv(ptr noundef nonnull %i.sy) #17
  br label %_ZN11CStringBaseIwED2Ev.exit151.i

_ZN11CStringBaseIwED2Ev.exit151.i:                ; preds = %bb.fp, %_ZN11CStringBaseIwED2Ev.exit147.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %12, align 8, !tbaa !12
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit.i unwind label %bb.fq, !inline_history !95

bb.fq:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit151.i
  %i.ta = landingpad { ptr, i32 }
          catch ptr null
  %i.tb = extractvalue { ptr, i32 } %i.ta, 0
  call void @__clang_call_terminate(ptr %i.tb) #19, !inline_history !95
  unreachable

_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit.i:  ; preds = %_ZN11CStringBaseIwED2Ev.exit151.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #14, !inline_history !95
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.ft

_ZN11CStringBaseIwED2Ev.exit149.i:                ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit.i, %bb.fi, %bb.fb, %.body.i, %bb.ev, %bb.em, %_ZN11CStringBaseIwED2Ev.exit139.i
  %.pn117.pn.i = phi { ptr, i32 } [ %.pn110.pn.i, %_ZN11CStringBaseIwED2Ev.exit139.i ], [ %i.rm, %bb.fb ], [ %i.pq, %bb.em ], [ %i.sh, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit.i ], [ %i.sg, %bb.fi ], [ %i.qz, %bb.ev ], [ %.pn113.i, %.body.i ] ; 2 uses
  %i.tc = load ptr, ptr %13, align 8, !tbaa !25   ; 2 uses
  %i.td = icmp eq ptr %i.tc, null
  br i1 %i.td, label %_ZN11CStringBaseIwED2Ev.exit152.i, label %bb.fr

bb.fr:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit149.i
  call void @_ZdaPv(ptr noundef nonnull %i.tc) #17
  br label %_ZN11CStringBaseIwED2Ev.exit152.i

_ZN11CStringBaseIwED2Ev.exit152.i:                ; preds = %bb.fr, %_ZN11CStringBaseIwED2Ev.exit149.i, %bb.eg
  %.pn117.pn.pn.i = phi { ptr, i32 } [ %i.pi, %bb.eg ], [ %.pn117.pn.i, %_ZN11CStringBaseIwED2Ev.exit149.i ], [ %.pn117.pn.i, %bb.fr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @_ZN13CObjectVectorI11CStringBaseIwEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.fs

bb.fs:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit152.i, %bb.du
  %.pn117.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn117.pn.pn.i, %_ZN11CStringBaseIwED2Ev.exit152.i ], [ %.pn108.i, %bb.du ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %.body306

bb.ft:                                            ; preds = %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit.i, %26, %.thread173.i
  %.4 = phi i64 [ %.1318, %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit.i ], [ 0, %.thread173.i ], [ 0, %26 ]
  %.10.i = phi i32 [ %.9.i, %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit.i ], [ %.6.ph.i, %.thread173.i ], [ %.4.i, %26 ] ; 2 uses
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %.not274 = icmp eq i32 %.10.i, 0
  br i1 %.not274, label %bb.fu, label %.thread327

bb.fu:                                            ; preds = %bb.ft
  %i.te = load i8, ptr %5, align 8, !tbaa !14, !range !23, !noundef !24
  %i.tf = trunc nuw i8 %i.te to i1
  %i.tg = load i64, ptr %19, align 8
  %i.th = load i64, ptr %i.bt, align 8
  %i.ti = add i64 %i.th, %i.tg
  %.0 = select i1 %i.tf, i64 %.4, i64 %i.ti
  %i.tj = load ptr, ptr %i.dj, align 8, !tbaa !96 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 48 ; 2 uses
  %i.tl = load i64, ptr %i.tk, align 8, !tbaa !97
  %i.tm = add i64 %i.tl, %.0
  store i64 %i.tm, ptr %i.tk, align 8, !tbaa !97
  %i.tn = load i64, ptr %i.dk, align 8, !tbaa !101
  %i.to = getelementptr inbounds nuw i8, ptr %i.tj, i64 56
  store i64 %i.tn, ptr %i.to, align 8, !tbaa !102
  %i.tp = load i32, ptr %i.dc, align 8, !tbaa !72
  %i.tq = icmp ne i32 %i.tp, 0                    ; 2 uses
  %. = zext i1 %i.tq to i32
  %.14.. = select i1 %i.tq, i32 -2147467259, i32 %.2..
  br label %.thread327

.thread327:                                       ; preds = %bb.cw, %bb.ft, %bb.fu, %bb.cr, %bb.cm
  %.11223 = phi i32 [ 1, %bb.cm ], [ %., %bb.fu ], [ 1, %bb.cr ], [ 1, %bb.ft ], [ 1, %bb.cw ]
  %.17 = phi i32 [ %i.lb, %bb.cm ], [ %.14.., %bb.fu ], [ %i.lj, %bb.cr ], [ %.10.i, %bb.ft ], [ %i.ly, %bb.cw ]
  %i.tr = load ptr, ptr %25, align 8, !tbaa !25   ; 2 uses
  %i.ts = icmp eq ptr %i.tr, null
  br i1 %i.ts, label %_ZN11CStringBaseIwED2Ev.exit308, label %bb.fv

bb.fv:                                            ; preds = %.thread327
  call void @_ZdaPv(ptr noundef nonnull %i.tr) #17
  br label %_ZN11CStringBaseIwED2Ev.exit308

_ZN11CStringBaseIwED2Ev.exit308:                  ; preds = %.thread327, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  br label %bb.fw

bb.fw:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit308, %bb.bx, %bb.ci, %bb.ca, %bb.bt
  %.13225 = phi i32 [ 1, %bb.bt ], [ 1, %bb.bx ], [ %.11223, %_ZN11CStringBaseIwED2Ev.exit308 ], [ 1, %bb.ci ], [ 7, %bb.ca ]
  %.5165 = phi i32 [ %.0160431, %bb.bt ], [ %.0160431, %bb.bx ], [ %.3163, %_ZN11CStringBaseIwED2Ev.exit308 ], [ %.3163, %bb.ci ], [ %.0160431, %bb.ca ]
  %.7158 = phi i64 [ %.1152432, %bb.bt ], [ %.1152432, %bb.bx ], [ %.5156, %_ZN11CStringBaseIwED2Ev.exit308 ], [ %i.kr, %bb.ci ], [ %.1152432, %bb.ca ]
  %.19 = phi i32 [ -2147467260, %bb.bt ], [ %i.iy, %bb.bx ], [ %.17, %_ZN11CStringBaseIwED2Ev.exit308 ], [ %i.kv, %bb.ci ], [ %.2., %bb.ca ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %21) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  call void @_ZN12CArchiveLinkD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %20) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  br label %bb.fx

bb.fx:                                            ; preds = %bb.ag, %bb.fw
  %.14226 = phi i32 [ %.13225, %bb.fw ], [ 1, %bb.ag ]
  %.6166 = phi i32 [ %.5165, %bb.fw ], [ %.0160431, %bb.ag ] ; 2 uses
  %.8159 = phi i64 [ %.7158, %bb.fw ], [ %.1152432, %bb.ag ]
  %.20 = phi i32 [ %.19, %bb.fw ], [ %i.eg, %bb.ag ] ; 2 uses
  %i.tt = load ptr, ptr %i.bl, align 8, !tbaa !25 ; 2 uses
  %i.tu = icmp eq ptr %i.tt, null
  br i1 %i.tu, label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit310, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  call void @_ZdaPv(ptr noundef nonnull %i.tt) #17
  br label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit310

_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit310: ; preds = %bb.fx, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  switch i32 %.14226, label %.loopexit338 [
    i32 0, label %bb.fz
    i32 7, label %bb.fz
  ]

bb.fz:                                            ; preds = %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit310, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit310
  %indvars.iv.next468 = add nuw nsw i64 %indvars.iv467, 1 ; 2 uses
  %i.tv = sext i32 %.6166 to i64
  %i.tw = icmp slt i64 %indvars.iv.next468, %i.tv
  br i1 %i.tw, label %bb.w, label %._crit_edge440, !llvm.loop !103

.body306:                                         ; preds = %bb.fs, %bb.cv, %bb.cs, %bb.co
  %.pn260 = phi { ptr, i32 } [ %i.ld, %bb.co ], [ %i.lz, %bb.cv ], [ %i.lk, %bb.cs ], [ %.pn117.pn.pn.pn.pn.i, %bb.fs ] ; 2 uses
  %i.tx = load ptr, ptr %25, align 8, !tbaa !25   ; 2 uses
  %i.ty = icmp eq ptr %i.tx, null
  br i1 %i.ty, label %_ZN11CStringBaseIwED2Ev.exit311, label %bb.ga

bb.ga:                                            ; preds = %.body306
  call void @_ZdaPv(ptr noundef nonnull %i.tx) #17
  br label %_ZN11CStringBaseIwED2Ev.exit311

_ZN11CStringBaseIwED2Ev.exit311:                  ; preds = %bb.ga, %.body306, %bb.cn
  %.pn260.pn = phi { ptr, i32 } [ %i.lc, %bb.cn ], [ %.pn260, %.body306 ], [ %.pn260, %bb.ga ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  br label %.body

.body:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit297, %bb.by, %bb.bz, %bb.cj, %_ZN11CStringBaseIwED2Ev.exit311, %bb.bu, %.loopexit.split-lp, %.loopexit, %.loopexit.i, %.loopexit.split-lp.i
  %.pn260.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %i.iz, %bb.by ], [ %.pn247.pn.pn, %_ZN11CStringBaseIwED2Ev.exit297 ], [ %i.ip, %bb.bu ], [ %.pn260.pn, %_ZN11CStringBaseIwED2Ev.exit311 ], [ %i.kw, %bb.cj ], [ %i.ja, %bb.bz ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %21) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  call void @_ZN12CArchiveLinkD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %20) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  br label %bb.gb

bb.gb:                                            ; preds = %.loopexit333, %.loopexit.split-lp334, %.body, %bb.ah
  %.pn260.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn260.pn.pn.pn.pn.pn, %.body ], [ %i.eh, %bb.ah ], [ %lpad.loopexit335, %.loopexit333 ], [ %lpad.loopexit.split-lp336, %.loopexit.split-lp334 ] ; 2 uses
  %i.tz = load ptr, ptr %i.bl, align 8, !tbaa !25 ; 2 uses
  %i.ua = icmp eq ptr %i.tz, null
  br i1 %i.ua, label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit313, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @_ZdaPv(ptr noundef nonnull %i.tz) #17
  br label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit313

_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit313: ; preds = %bb.gc, %bb.gb, %bb.z
  %.pn260.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dt, %bb.z ], [ %.pn260.pn.pn.pn.pn.pn.pn.pn, %bb.gb ], [ %.pn260.pn.pn.pn.pn.pn.pn.pn, %bb.gc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  br label %bb.ge

._crit_edge440:                                   ; preds = %bb.fz, %bb.v
  %i.ub = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.uc = load <2 x i64>, ptr %i.bb, align 8, !tbaa !39
  store <2 x i64> %i.uc, ptr %i.ub, align 8, !tbaa !39
  %i.ud = getelementptr inbounds nuw i8, ptr %i.aq, i64 320
  %i.ue = load i64, ptr %i.ud, align 8, !tbaa !101
  %i.uf = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.ue, ptr %i.uf, align 8, !tbaa !104
  %i.ug = getelementptr inbounds nuw i8, ptr %i.aq, i64 328
  %i.uh = load i32, ptr %i.ug, align 8, !tbaa !106
  %i.ui = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 %i.uh, ptr %i.ui, align 8, !tbaa !107
  %i.uj = load i32, ptr %i.g, align 4, !tbaa !38
  %i.uk = sext i32 %i.uj to i64
  store i64 %i.uk, ptr %9, align 8, !tbaa !108
  %i.ul = getelementptr inbounds nuw i8, ptr %i.aq, i64 296
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !96
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 48
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !97
  %i.up = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.uo, ptr %i.up, align 8, !tbaa !109
  br label %.loopexit338

.loopexit338:                                     ; preds = %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit310, %._crit_edge440, %bb.q
  %.21 = phi i32 [ %i.bf, %bb.q ], [ 0, %._crit_edge440 ], [ %.20, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit310 ]
  %i.uq = load ptr, ptr %i.aq, align 8, !tbaa !12
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 16
  %i.us = load ptr, ptr %i.ur, align 8
  %i.ut = invoke noundef i32 %i.us(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit unwind label %bb.gd ; 0 uses

bb.gd:                                            ; preds = %.loopexit338
  %i.uu = landingpad { ptr, i32 }
          catch ptr null
  %i.uv = extractvalue { ptr, i32 } %i.uu, 0
  call void @__clang_call_terminate(ptr %i.uv) #19
  unreachable

_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit: ; preds = %.loopexit338
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  ret i32 %.21

bb.ge:                                            ; preds = %bb.u, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit313
  %.pn260.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.u ], [ %.pn260.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit313 ]
  %i.uw = load ptr, ptr %i.aq, align 8, !tbaa !12
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 16
  %i.uy = load ptr, ptr %i.ux, align 8
  %i.uz = invoke noundef i32 %i.uy(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit316 unwind label %bb.gf ; 0 uses

bb.gf:                                            ; preds = %bb.ge
  %i.va = landingpad { ptr, i32 }
          catch ptr null
  %i.vb = extractvalue { ptr, i32 } %i.va, 0
  call void @__clang_call_terminate(ptr %i.vb) #19
  unreachable

_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit316: ; preds = %bb.t, %bb.ge, %bb.r, %bb.s, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit279
  %.pn275.pn.pn = phi { ptr, i32 } [ %.pn275.pn, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit279 ], [ %i.bg, %bb.r ], [ %i.bh, %bb.s ], [ %i.bi, %bb.t ], [ %.pn260.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ge ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  resume { ptr, i32 } %.pn275.pn.pn

bb.gg:                                            ; preds = %bb.ad
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i1 @_ZN8NWindows5NFile5NFind10CFileInfoW4FindEPKw(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN23CArchiveExtractCallbackC2Ev(ptr noundef nonnull align 8 dereferenceable(332) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !110
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV23CArchiveExtractCallback, i64 16), ptr %0, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV23CArchiveExtractCallback, i64 128), ptr %i.a, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV23CArchiveExtractCallback, i64 192), ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  %i.h = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #15
          to label %bb.b unwind label %_ZN11CStringBaseIwED2Ev.exit19.thread ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  store ptr %i.h, ptr %i.g, align 8, !tbaa !25
  store i32 0, ptr %i.h, align 4, !tbaa !26
  store i32 4, ptr %i.i, align 4, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #15
          to label %bb.c unwind label %bb.i       ; 2 uses
end_hunk_2
