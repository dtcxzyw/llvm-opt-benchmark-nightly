inline.NumInlined: 62
inline.NumDeleted: 27
begin_hunk_0
@_ZTV17COutStreamWithCRC = external unnamed_addr constant { [8 x ptr] }, align 8
@IID_IUnknown = external local_unnamed_addr global %struct.GUID, align 4
@IID_ICompressGetSubStreamSize = external local_unnamed_addr global %struct.GUID, align 4

@_ZN8NArchive3N7z16CFolderOutStreamC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN8NArchive3N7z16CFolderOutStreamC2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive3N7z16CFolderOutStreamC2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) initializes((0, 20), (32, 40), (56, 64)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.b, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN8NArchive3N7z16CFolderOutStreamE, i64 16), ptr %0, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8NArchive3N7z16CFolderOutStreamE, i64 88), ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !16
  %i.e = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #12
          to label %bb.b unwind label %bb.e       ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 0, ptr %i.f, align 4, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV17COutStreamWithCRC, i64 16), ptr %i.e, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.h, align 8, !tbaa !19
  %i.i = load ptr, ptr getelementptr inbounds nuw inrange(-24, 40) (i8, ptr @_ZTV17COutStreamWithCRC, i64 24), align 8
  %i.j = invoke noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc unwind label %bb.e, !inline_history !29 ; 0 uses

.noexc:                                           ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !12   ; 3 uses
  %.not6.i = icmp eq ptr %i.k, null
  br i1 %.not6.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.d unwind label %bb.e, !inline_history !29 ; 0 uses

bb.d:                                             ; preds = %.noexc, %bb.c
  store ptr %i.e, ptr %i.c, align 8, !tbaa !12
  ret void

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #13
  unreachable

_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit: ; preds = %bb.e, %bb.f
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !12   ; 3 uses
  %.not.i5 = icmp eq ptr %i.x, null
  br i1 %.not.i5, label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #13
  unreachable

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit:   ; preds = %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit, %bb.h
  resume { ptr, i32 } %i.p
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive3N7z16CFolderOutStream4InitEPKNS0_18CArchiveDatabaseExEjjPK13CRecordVectorIbEP23IArchiveExtractCallbackbb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) initializes((40, 56), (64, 79)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.a, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %2, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %3, ptr %i.c, align 4, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %4, ptr %i.d, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not.i = icmp eq ptr %5, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %5, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %5), !inline_history !34 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !16   ; 3 uses
  %.not6.i = icmp eq ptr %i.j, null
  br i1 %.not6.i, label %_ZN9CMyComPtrI23IArchiveExtractCallbackEaSEPS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j), !inline_history !34 ; 0 uses
  br label %_ZN9CMyComPtrI23IArchiveExtractCallbackEaSEPS0_.exit

_ZN9CMyComPtrI23IArchiveExtractCallbackEaSEPS0_.exit: ; preds = %bb.c, %bb.d
  %i.o = zext i1 %7 to i8
  %i.p = zext i1 %6 to i8
  store ptr %5, ptr %i.e, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 %i.p, ptr %i.q, align 4, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 77
  store i8 %i.o, ptr %i.r, align 1, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.s, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i8 0, ptr %i.t, align 2, !tbaa !38
  %i.u = tail call noundef i32 @_ZN8NArchive3N7z16CFolderOutStream17ProcessEmptyFilesEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  ret i32 %i.u
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive3N7z16CFolderOutStream17ProcessEmptyFilesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.b

bb.b:                                             ; preds = %_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEv.exit, %bb.a
  %i.i = load i32, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !39
  %i.m = icmp slt i32 %i.i, %i.l
  br i1 %i.m, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.o = load i32, ptr %i.d, align 4, !tbaa !32
  %i.p = add i32 %i.o, %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.v = load i64, ptr %i.u, align 8, !tbaa !44
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.x = tail call noundef i32 @_ZN8NArchive3N7z16CFolderOutStream8OpenFileEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %.not.not = icmp eq i32 %i.x, 0
  br i1 %.not.not, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.z = load i32, ptr %i.d, align 4, !tbaa !32
  %i.aa = load i32, ptr %i.b, align 8, !tbaa !37  ; 2 uses
  %i.ab = add i32 %i.aa, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 176
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !43 ; 3 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.ag, i64 33
  %2 = load i8, ptr %1, align 1, !tbaa !48, !range !49, !noundef !50
  %3 = trunc nuw i8 %2 to i1
  %.not.i = xor i1 %3, true
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 34
  %4 = load i8, ptr %i.ah, align 2, !range !49
  %5 = trunc nuw i8 %4 to i1
  %or.cond.i = select i1 %.not.i, i1 %5, i1 false
  %i.ai = load i8, ptr %i.e, align 1, !range !49
  %i.aj = trunc nuw i8 %i.ai to i1
  %or.cond8.i = select i1 %or.cond.i, i1 %i.aj, i1 false
  br i1 %or.cond8.i, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !19
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !51
  %6 = load ptr, ptr %i.f, align 8, !tbaa !19     ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !52
  %i.ao = xor i32 %i.an, %i.al
  %i.ap = icmp eq i32 %i.ao, -1
  %i.aq = select i1 %i.ap, i32 0, i32 3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %7 = phi ptr [ %.pre, %._crit_edge ], [ %6, %bb.f ]
  %8 = phi i32 [ 0, %._crit_edge ], [ %i.aq, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !12 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef i32 %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.as), !inline_history !54 ; 0 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !12
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !37
  br label %_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEv.exit

_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEv.exit: ; preds = %bb.g, %bb.h
  %i.ax = phi i32 [ %i.aa, %bb.g ], [ %.pre.i, %bb.h ]
  store i8 0, ptr %i.g, align 2, !tbaa !38
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.b, align 8, !tbaa !37
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !16  ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef i32 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.az, i32 noundef %8), !inline_history !55 ; 2 uses
  %.not11.not = icmp eq i32 %i.bd, 0
  br i1 %.not11.not, label %bb.b, label %.critedge

.critedge:                                        ; preds = %_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEv.exit, %bb.d, %bb.c, %bb.b
  %.3 = phi i32 [ %i.bd, %_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEv.exit ], [ %i.x, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive3N7z16CFolderOutStream8OpenFileEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.CMyComPtr, align 8           ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.g = sext i32 %i.d to i64
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !56, !range !49, !noundef !50
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.l = load i8, ptr %i.k, align 4, !range !49
  %i.m = zext nneg i8 %i.l to i32
  %i.n = select i1 %i.j, i32 %i.m, i32 2          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store ptr null, ptr %1, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !32
  %i.q = add i32 %i.p, %i.d                       ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !16   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !31
  %i.v = add i32 %i.u, %i.q
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = invoke noundef i32 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i32 noundef %i.v, ptr noundef nonnull %1, i32 noundef %i.n)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.d, label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19
  %i.ad = load ptr, ptr %1, align 8, !tbaa !12    ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef i32 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %.noexc unwind label %bb.j, !inline_history !57 ; 0 uses

.noexc:                                           ; preds = %bb.e, %bb.d
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !12 ; 3 uses
  %.not6.i.i = icmp eq ptr %i.aj, null
  br i1 %.not6.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = invoke noundef i32 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %bb.g unwind label %bb.j, !inline_history !57 ; 0 uses

bb.g:                                             ; preds = %bb.f, %.noexc
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !12
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !19 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !36, !range !49, !noundef !50
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 0, ptr %i.ar, align 8, !tbaa !58
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 36
  store i8 %i.aq, ptr %i.as, align 4, !tbaa !59
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i32 -1, ptr %i.at, align 8, !tbaa !52
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i8 1, ptr %i.au, align 2, !tbaa !38
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !30 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 176
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !42
  %i.az = sext i32 %i.q to i64                    ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !43 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !44
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !60
  %i.be = icmp eq i32 %i.n, 0
  br i1 %i.be, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr %1, align 8, !tbaa !12
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 460
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !39
  %i.bj = icmp slt i32 %i.q, %i.bi
  br i1 %i.bj, label %_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit, label %_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit.thread

_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit: ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 464
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !42
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.az
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !56, !range !49, !noundef !50
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.l, label %_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit.thread

_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit.thread: ; preds = %bb.i, %_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 33
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !48, !range !49, !noundef !50
  %i.br = trunc nuw i8 %i.bq to i1
  %spec.select = select i1 %i.br, i32 0, i32 2
  br label %bb.l

bb.j:                                             ; preds = %bb.f, %bb.e
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.k:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit.thread, %_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit, %bb.h, %bb.g
  %.017 = phi i32 [ 0, %_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit ], [ %spec.select, %_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit.thread ], [ %i.n, %bb.g ], [ 0, %bb.h ]
  %i.bu = load ptr, ptr %i.r, align 8, !tbaa !16  ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !10
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = invoke noundef i32 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i32 noundef %.017)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l, %bb.b
  %.1 = phi i32 [ %i.z, %bb.b ], [ %i.by, %bb.l ]
  %i.bz = load ptr, ptr %1, align 8, !tbaa !12    ; 3 uses
  %.not.i = icmp eq ptr %i.bz, null
  br i1 %.not.i, label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !10
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = invoke noundef i32 %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #13
  unreachable

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit:   ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret i32 %.1

bb.p:                                             ; preds = %bb.k, %bb.j, %bb.c
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.k ], [ %i.bs, %bb.j ], [ %i.aa, %bb.c ]
  %i.cg = load ptr, ptr %1, align 8, !tbaa !12    ; 3 uses
  %.not.i21 = icmp eq ptr %i.cg, null
  br i1 %.not.i21, label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit22, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !10
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = invoke noundef i32 %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit22 unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #13
  unreachable

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit22: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) initializes((78, 79)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN17COutStreamWithCRC13ReleaseStreamEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !61 ; 0 uses
  store ptr null, ptr %i.c, align 8, !tbaa !12
  br label %_ZN17COutStreamWithCRC13ReleaseStreamEv.exit

_ZN17COutStreamWithCRC13ReleaseStreamEv.exit:     ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i8 0, ptr %i.i, align 2, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !37
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef %1)
  ret i32 %i.r
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) initializes((78, 79)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = load i32, ptr %i.c, align 4, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %i.g = add i32 %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.j = sext i32 %i.g to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43   ; 3 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.l, i64 33
  %2 = load i8, ptr %1, align 1, !tbaa !48, !range !49, !noundef !50
  %3 = trunc nuw i8 %2 to i1
  %.not = xor i1 %3, true
  %4 = getelementptr inbounds nuw i8, ptr %i.l, i64 34
  %5 = load i8, ptr %4, align 2, !range !49
  %6 = trunc nuw i8 %5 to i1
  %or.cond = select i1 %.not, i1 %6, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.n = load i8, ptr %i.m, align 1, !range !49
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond8 = select i1 %or.cond, i1 %i.o, i1 false
  br i1 %or.cond8, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !52
  %i.w = xor i32 %i.v, %i.r
  %i.x = icmp eq i32 %i.w, -1
  %i.y = select i1 %i.x, i32 0, i32 3
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %7 = phi ptr [ %.pre, %bb.b ], [ %i.t, %bb.c ]
  %8 = phi i32 [ 0, %bb.b ], [ %i.y, %bb.c ]
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !12  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef i32 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa), !inline_history !62 ; 0 uses
  store ptr null, ptr %i.z, align 8, !tbaa !12
  %.pre.a = load i32, ptr %i.e, align 8, !tbaa !37
  br label %_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEi.exit

_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEi.exit: ; preds = %bb.d, %bb.e
  %i.af = phi i32 [ %i.f, %bb.d ], [ %.pre.a, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i8 0, ptr %i.ag, align 2, !tbaa !38
  %i.ah = add nsw i32 %i.af, 1
  store i32 %i.ah, ptr %i.e, align 8, !tbaa !37
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef i32 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i32 noundef %8), !inline_history !63
  ret i32 %i.an
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive3N7z16CFolderOutStream5WriteEPKvjPj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %.not = icmp eq ptr %3, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %3, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not5478 = icmp eq i32 %2, 0
  br i1 %.not5478, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 78 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.backedge
  %.03280 = phi ptr [ %1, %.lr.ph ], [ %.032.be, %.backedge ] ; 3 uses
  %.03579 = phi i32 [ %2, %.lr.ph ], [ %.035.be, %.backedge ] ; 4 uses
  %i.l = load i8, ptr %i.b, align 2, !tbaa !38, !range !49, !noundef !50
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.n = zext i32 %.03579 to i64
  %i.o = load i64, ptr %i.e, align 8, !tbaa !60
  %i.p = call i64 @llvm.umin.i64(i64 %i.o, i64 %i.n)
  %i.q = trunc nuw i64 %i.p to i32                ; 2 uses
  store i32 %i.q, ptr %i.a, align 4, !tbaa !4
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !12   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %.03280, i32 noundef %i.q, ptr noundef nonnull %i.a) ; 2 uses
  %.not57 = icmp eq i32 %i.v, 0
  br i1 %.not57, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.a, align 4, !tbaa !4    ; 4 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.thread70, label %bb.g

.thread70:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.y = zext i32 %i.w to i64                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.03280, i64 %i.y
  %i.aa = sub i32 %.03579, %i.w
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !60  ; 2 uses
  %i.ac = sub i64 %i.ab, %i.y
  store i64 %i.ac, ptr %i.e, align 8, !tbaa !60
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load i32, ptr %3, align 4, !tbaa !4
  %i.ae = add i32 %i.ad, %i.w
  store i32 %i.ae, ptr %3, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.af = icmp eq i64 %i.ab, %i.y
  br i1 %i.af, label %bb.j, label %.backedge.sink.split

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.ah = load i32, ptr %i.h, align 4, !tbaa !32
  %i.ai = load i32, ptr %i.c, align 8, !tbaa !37  ; 2 uses
  %i.aj = add i32 %i.ai, %i.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 176
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !42
  %i.am = sext i32 %i.aj to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !43 ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.ao, i64 33
  %5 = load i8, ptr %4, align 1, !tbaa !48, !range !49, !noundef !50
  %6 = trunc nuw i8 %5 to i1
  %.not.i = xor i1 %6, true
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 34
  %7 = load i8, ptr %i.ap, align 2, !range !49
  %8 = trunc nuw i8 %7 to i1
  %or.cond.i = select i1 %.not.i, i1 %8, i1 false
  %i.aq = load i8, ptr %i.i, align 1, !range !49
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond8.i = select i1 %or.cond.i, i1 %i.ar, i1 false
  br i1 %or.cond8.i, label %bb.k, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !19
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !51
  %9 = load ptr, ptr %i.j, align 8, !tbaa !19     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !52
  %i.aw = xor i32 %i.av, %i.at
  %i.ax = icmp eq i32 %i.aw, -1
  %i.ay = select i1 %i.ax, i32 0, i32 3
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %10 = phi ptr [ %.pre, %._crit_edge ], [ %9, %bb.k ]
  %11 = phi i32 [ 0, %._crit_edge ], [ %i.ay, %bb.k ]
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !12 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i, label %_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef i32 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ba), !inline_history !54 ; 0 uses
  store ptr null, ptr %i.az, align 8, !tbaa !12
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !37
  br label %_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEv.exit

_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEv.exit: ; preds = %bb.l, %bb.m
  %i.bf = phi i32 [ %i.ai, %bb.l ], [ %.pre.i, %bb.m ]
  store i8 0, ptr %i.b, align 2, !tbaa !38
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.c, align 8, !tbaa !37
  %i.bh = load ptr, ptr %i.k, align 8, !tbaa !16  ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !10
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call noundef i32 %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i32 noundef %11), !inline_history !55 ; 2 uses
  %.not58 = icmp eq i32 %i.bl, 0
  br i1 %.not58, label %bb.n, label %.thread

bb.n:                                             ; preds = %_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEv.exit
  %i.bm = call noundef i32 @_ZN8NArchive3N7z16CFolderOutStream17ProcessEmptyFilesEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %.not59 = icmp eq i32 %i.bm, 0
  br i1 %.not59, label %.backedge.sink.split, label %.thread

.thread:                                          ; preds = %bb.e, %bb.n, %_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEv.exit
  %.4.ph = phi i32 [ %i.bl, %_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEv.exit ], [ %i.bm, %bb.n ], [ %i.v, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.loopexit

bb.o:                                             ; preds = %bb.d
  %i.bn = call noundef i32 @_ZN8NArchive3N7z16CFolderOutStream17ProcessEmptyFilesEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %.not55.not = icmp eq i32 %i.bn, 0
  br i1 %.not55.not, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.bo = load i32, ptr %i.c, align 8, !tbaa !37
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !39
  %i.bs = icmp eq i32 %i.bo, %i.br
  br i1 %i.bs, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  br i1 %.not, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = load i32, ptr %3, align 4, !tbaa !4
  %i.bu = add i32 %i.bt, %.03579
  store i32 %i.bu, ptr %3, align 4, !tbaa !4
  br label %.loopexit

bb.s:                                             ; preds = %bb.p
  %i.bv = call noundef i32 @_ZN8NArchive3N7z16CFolderOutStream8OpenFileEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %.not56.not = icmp eq i32 %i.bv, 0
  br i1 %.not56.not, label %.backedge, label %.loopexit

.backedge.sink.split:                             ; preds = %bb.n, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %bb.s
  %.035.be = phi i32 [ %.03579, %bb.s ], [ %i.aa, %.backedge.sink.split ] ; 2 uses
  %.032.be = phi ptr [ %.03280, %bb.s ], [ %i.z, %.backedge.sink.split ]
  %.not54 = icmp eq i32 %.035.be, 0
  br i1 %.not54, label %.loopexit, label %bb.d, !llvm.loop !64

.loopexit:                                        ; preds = %bb.o, %bb.s, %.backedge, %bb.c, %bb.r, %bb.q, %.thread70, %.thread
  %.8 = phi i32 [ %.4.ph, %.thread ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %.thread70 ], [ 0, %bb.c ], [ %i.bv, %bb.s ], [ %i.bn, %bb.o ], [ 0, %.backedge ]
  ret i32 %.8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN8NArchive3N7z16CFolderOutStream16GetSubStreamSizeEyPy(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #4 align 2 {
bb.a:
  store i64 0, ptr %2, align 8, !tbaa !66
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !39
  %.not = icmp sgt i32 %i.e, %i.a
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !32
  %i.j = add i32 %i.i, %i.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.p = load i64, ptr %i.o, align 8, !tbaa !44
  store i64 %i.p, ptr %2, align 8, !tbaa !66
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZThn8_N8NArchive3N7z16CFolderOutStream16GetSubStreamSizeEyPy(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #4 align 2 {
bb.a:
  store i64 0, ptr %2, align 8, !tbaa !66
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !39
  %.not.i = icmp sgt i32 %i.e, %i.a
  br i1 %.not.i, label %bb.b, label %_ZN8NArchive3N7z16CFolderOutStream16GetSubStreamSizeEyPy.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !32
  %i.j = add i32 %i.i, %i.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.p = load i64, ptr %i.o, align 8, !tbaa !44
  store i64 %i.p, ptr %2, align 8, !tbaa !66
  br label %_ZN8NArchive3N7z16CFolderOutStream16GetSubStreamSizeEyPy.exit

_ZN8NArchive3N7z16CFolderOutStream16GetSubStreamSizeEyPy.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive3N7z16CFolderOutStream14FlushCorruptedEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i32, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39
  %i.g = icmp slt i32 %i.c, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 78 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.k = phi i32 [ %i.c, %.lr.ph ], [ %i.ac, %bb.f ]
  %i.l = load i8, ptr %i.h, align 2, !tbaa !38, !range !49, !noundef !50
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p), !inline_history !62 ; 0 uses
  store ptr null, ptr %i.o, align 8, !tbaa !12
  %.pre = load i32, ptr %i.a, align 8, !tbaa !37
  br label %_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEi.exit

_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEi.exit: ; preds = %bb.c, %bb.d
  %i.u = phi i32 [ %i.k, %bb.c ], [ %.pre, %bb.d ]
  store i8 0, ptr %i.h, align 2, !tbaa !38
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.a, align 8, !tbaa !37
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !16   ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i32 noundef %1), !inline_history !63 ; 2 uses
  %.not12.not = icmp eq i32 %i.aa, 0
  br i1 %.not12.not, label %bb.f, label %._crit_edge

bb.e:                                             ; preds = %bb.b
  %i.ab = tail call noundef i32 @_ZN8NArchive3N7z16CFolderOutStream8OpenFileEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %.not.not = icmp eq i32 %i.ab, 0
  br i1 %.not.not, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e, %_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEi.exit
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !39
  %i.ag = icmp slt i32 %i.ac, %i.af
  br i1 %i.ag, label %bb.b, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %bb.f, %_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEi.exit, %bb.e, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ %i.ab, %bb.e ], [ %i.aa, %_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEi.exit ], [ 0, %bb.f ]
  ret i32 %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN8NArchive3N7z16CFolderOutStream14QueryInterfaceERK4GUIDPPv(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 4, !tbaa !68      ; 2 uses
  %i.b = load i8, ptr @IID_IUnknown, align 4, !tbaa !68
  %.not.i = icmp eq i8 %i.a, %i.b
  br i1 %.not.i, label %bb.b, label %_ZeqRK4GUIDS1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !68
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 1), align 1, !tbaa !68
  %.not.1.i = icmp eq i8 %i.d, %i.e
  br i1 %.not.1.i, label %bb.c, label %_ZeqRK4GUIDS1_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 2, !tbaa !68
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 2), align 2, !tbaa !68
  %.not.2.i = icmp eq i8 %i.g, %i.h
  br i1 %.not.2.i, label %bb.d, label %_ZeqRK4GUIDS1_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !68
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 3), align 1, !tbaa !68
  %.not.3.i = icmp eq i8 %i.j, %i.k
  br i1 %.not.3.i, label %bb.e, label %_ZeqRK4GUIDS1_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i8, ptr %i.l, align 4, !tbaa !68
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 4), align 4, !tbaa !68
  %.not.4.i = icmp eq i8 %i.m, %i.n
  br i1 %.not.4.i, label %bb.f, label %_ZeqRK4GUIDS1_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !68
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 5), align 1, !tbaa !68
  %.not.5.i = icmp eq i8 %i.p, %i.q
  br i1 %.not.5.i, label %bb.g, label %_ZeqRK4GUIDS1_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.s = load i8, ptr %i.r, align 2, !tbaa !68
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 6), align 2, !tbaa !68
  %.not.6.i = icmp eq i8 %i.s, %i.t
  br i1 %.not.6.i, label %bb.h, label %_ZeqRK4GUIDS1_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.v = load i8, ptr %i.u, align 1, !tbaa !68
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 7), align 1, !tbaa !68
  %.not.7.i = icmp eq i8 %i.v, %i.w
  br i1 %.not.7.i, label %bb.i, label %_ZeqRK4GUIDS1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i8, ptr %i.x, align 4, !tbaa !68
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 8), align 4, !tbaa !68
  %.not.8.i = icmp eq i8 %i.y, %i.z
  br i1 %.not.8.i, label %bb.j, label %_ZeqRK4GUIDS1_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !68
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 9), align 1, !tbaa !68
  %.not.9.i = icmp eq i8 %i.ab, %i.ac
  br i1 %.not.9.i, label %bb.k, label %_ZeqRK4GUIDS1_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !68
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 10), align 2, !tbaa !68
  %.not.10.i = icmp eq i8 %i.ae, %i.af
  br i1 %.not.10.i, label %bb.l, label %_ZeqRK4GUIDS1_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !68
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 11), align 1, !tbaa !68
  %.not.11.i = icmp eq i8 %i.ah, %i.ai
  br i1 %.not.11.i, label %bb.m, label %_ZeqRK4GUIDS1_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !68
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 12), align 4, !tbaa !68
  %.not.12.i = icmp eq i8 %i.ak, %i.al
  br i1 %.not.12.i, label %bb.n, label %_ZeqRK4GUIDS1_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.an = load i8, ptr %i.am, align 1, !tbaa !68
  %i.ao = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 13), align 1, !tbaa !68
  %.not.13.i = icmp eq i8 %i.an, %i.ao
  br i1 %.not.13.i, label %bb.o, label %_ZeqRK4GUIDS1_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !68
  %i.ar = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 14), align 2, !tbaa !68
  %.not.14.i = icmp eq i8 %i.aq, %i.ar
  br i1 %.not.14.i, label %_ZeqRK4GUIDS1_.exit, label %_ZeqRK4GUIDS1_.exit.thread

_ZeqRK4GUIDS1_.exit:                              ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.at = load i8, ptr %i.as, align 1, !tbaa !68
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 15), align 1, !tbaa !68
  %.not.15.i.not = icmp eq i8 %i.at, %i.au
  br i1 %.not.15.i.not, label %_ZeqRK4GUIDS1_.exit23.thread.sink.split, label %_ZeqRK4GUIDS1_.exit.thread

_ZeqRK4GUIDS1_.exit.thread:                       ; preds = %bb.m, %bb.h, %bb.l, %bb.g, %bb.n, %bb.f, %bb.j, %bb.e, %bb.o, %bb.d, %bb.k, %bb.c, %bb.b, %bb.i, %bb.a, %_ZeqRK4GUIDS1_.exit
  %i.av = load i8, ptr @IID_ICompressGetSubStreamSize, align 4, !tbaa !68
  %.not.i6 = icmp eq i8 %i.a, %i.av
  br i1 %.not.i6, label %bb.p, label %_ZeqRK4GUIDS1_.exit23.thread

bb.p:                                             ; preds = %_ZeqRK4GUIDS1_.exit.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !68
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressGetSubStreamSize, i64 1), align 1, !tbaa !68
  %.not.1.i7 = icmp eq i8 %i.ax, %i.ay
  br i1 %.not.1.i7, label %bb.q, label %_ZeqRK4GUIDS1_.exit23.thread

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !68
  %i.bb = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressGetSubStreamSize, i64 2), align 2, !tbaa !68
  %.not.2.i8 = icmp eq i8 %i.ba, %i.bb
  br i1 %.not.2.i8, label %bb.r, label %_ZeqRK4GUIDS1_.exit23.thread

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !68
  %i.be = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressGetSubStreamSize, i64 3), align 1, !tbaa !68
  %.not.3.i9 = icmp eq i8 %i.bd, %i.be
  br i1 %.not.3.i9, label %bb.s, label %_ZeqRK4GUIDS1_.exit23.thread

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !68
  %i.bh = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressGetSubStreamSize, i64 4), align 4, !tbaa !68
  %.not.4.i10 = icmp eq i8 %i.bg, %i.bh
  br i1 %.not.4.i10, label %bb.t, label %_ZeqRK4GUIDS1_.exit23.thread

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !68
  %i.bk = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressGetSubStreamSize, i64 5), align 1, !tbaa !68
  %.not.5.i11 = icmp eq i8 %i.bj, %i.bk
  br i1 %.not.5.i11, label %bb.u, label %_ZeqRK4GUIDS1_.exit23.thread

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !68
  %i.bn = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressGetSubStreamSize, i64 6), align 2, !tbaa !68
  %.not.6.i12 = icmp eq i8 %i.bm, %i.bn
  br i1 %.not.6.i12, label %bb.v, label %_ZeqRK4GUIDS1_.exit23.thread

bb.v:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !68
  %i.bq = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressGetSubStreamSize, i64 7), align 1, !tbaa !68
  %.not.7.i13 = icmp eq i8 %i.bp, %i.bq
  br i1 %.not.7.i13, label %bb.w, label %_ZeqRK4GUIDS1_.exit23.thread

bb.w:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !68
  %i.bt = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressGetSubStreamSize, i64 8), align 4, !tbaa !68
  %.not.8.i14 = icmp eq i8 %i.bs, %i.bt
  br i1 %.not.8.i14, label %bb.x, label %_ZeqRK4GUIDS1_.exit23.thread

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !68
  %i.bw = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressGetSubStreamSize, i64 9), align 1, !tbaa !68
  %.not.9.i15 = icmp eq i8 %i.bv, %i.bw
  br i1 %.not.9.i15, label %bb.y, label %_ZeqRK4GUIDS1_.exit23.thread

bb.y:                                             ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !68
  %i.bz = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressGetSubStreamSize, i64 10), align 2, !tbaa !68
  %.not.10.i16 = icmp eq i8 %i.by, %i.bz
  br i1 %.not.10.i16, label %bb.z, label %_ZeqRK4GUIDS1_.exit23.thread

bb.z:                                             ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !68
  %i.cc = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressGetSubStreamSize, i64 11), align 1, !tbaa !68
  %.not.11.i17 = icmp eq i8 %i.cb, %i.cc
  br i1 %.not.11.i17, label %bb.aa, label %_ZeqRK4GUIDS1_.exit23.thread

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !68
  %i.cf = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressGetSubStreamSize, i64 12), align 4, !tbaa !68
  %.not.12.i18 = icmp eq i8 %i.ce, %i.cf
  br i1 %.not.12.i18, label %bb.ab, label %_ZeqRK4GUIDS1_.exit23.thread

bb.ab:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !68
  %i.ci = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressGetSubStreamSize, i64 13), align 1, !tbaa !68
  %.not.13.i19 = icmp eq i8 %i.ch, %i.ci
  br i1 %.not.13.i19, label %bb.ac, label %_ZeqRK4GUIDS1_.exit23.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !68
  %i.cl = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressGetSubStreamSize, i64 14), align 2, !tbaa !68
  %.not.14.i20 = icmp eq i8 %i.ck, %i.cl
  br i1 %.not.14.i20, label %_ZeqRK4GUIDS1_.exit23, label %_ZeqRK4GUIDS1_.exit23.thread

_ZeqRK4GUIDS1_.exit23:                            ; preds = %bb.ac
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !68
  %i.co = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressGetSubStreamSize, i64 15), align 1, !tbaa !68
  %.not.15.i21.not = icmp eq i8 %i.cn, %i.co
  br i1 %.not.15.i21.not, label %_ZeqRK4GUIDS1_.exit23.thread.sink.split, label %_ZeqRK4GUIDS1_.exit23.thread

_ZeqRK4GUIDS1_.exit23.thread.sink.split:          ; preds = %_ZeqRK4GUIDS1_.exit23, %_ZeqRK4GUIDS1_.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cp, ptr %2, align 8, !tbaa !43
  %i.cq = load ptr, ptr %0, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef i32 %i.cs(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 0 uses
  br label %_ZeqRK4GUIDS1_.exit23.thread

_ZeqRK4GUIDS1_.exit23.thread:                     ; preds = %_ZeqRK4GUIDS1_.exit23.thread.sink.split, %bb.aa, %bb.v, %bb.z, %bb.u, %bb.ab, %bb.t, %bb.x, %bb.s, %bb.ac, %bb.r, %bb.y, %bb.q, %bb.p, %bb.w, %_ZeqRK4GUIDS1_.exit.thread, %_ZeqRK4GUIDS1_.exit23
  %.0 = phi i32 [ -2147467262, %bb.v ], [ -2147467262, %bb.aa ], [ -2147467262, %_ZeqRK4GUIDS1_.exit23 ], [ -2147467262, %_ZeqRK4GUIDS1_.exit.thread ], [ -2147467262, %bb.w ], [ -2147467262, %bb.p ], [ -2147467262, %bb.q ], [ -2147467262, %bb.y ], [ -2147467262, %bb.r ], [ -2147467262, %bb.ac ], [ -2147467262, %bb.s ], [ -2147467262, %bb.x ], [ -2147467262, %bb.t ], [ -2147467262, %bb.ab ], [ -2147467262, %bb.u ], [ -2147467262, %bb.z ], [ 0, %_ZeqRK4GUIDS1_.exit23.thread.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN8NArchive3N7z16CFolderOutStream6AddRefEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !8
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN8NArchive3N7z16CFolderOutStream7ReleaseEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8NArchive3N7z16CFolderOutStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN8NArchive3N7z16CFolderOutStreamE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8NArchive3N7z16CFolderOutStreamE, i64 88), ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #13
  unreachable

_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 3 uses
  %.not.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i1, label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #13
  unreachable

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit:   ; preds = %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8NArchive3N7z16CFolderOutStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN8NArchive3N7z16CFolderOutStreamE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8NArchive3N7z16CFolderOutStreamE, i64 88), ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit.i unwind label %bb.c, !inline_history !69 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #13, !inline_history !69
  unreachable

_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 3 uses
  %.not.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i1.i, label %_ZN8NArchive3N7z16CFolderOutStreamD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_ZN8NArchive3N7z16CFolderOutStreamD2Ev.exit unwind label %bb.e, !inline_history !69 ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #13, !inline_history !69
  unreachable

_ZN8NArchive3N7z16CFolderOutStreamD2Ev.exit:      ; preds = %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #15
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N8NArchive3N7z16CFolderOutStream14QueryInterfaceERK4GUIDPPv(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = tail call noundef i32 @_ZN8NArchive3N7z16CFolderOutStream14QueryInterfaceERK4GUIDPPv(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2)
  ret i32 %i.b
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N8NArchive3N7z16CFolderOutStream6AddRefEv(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !8
  ret i32 %i.c
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N8NArchive3N7z16CFolderOutStream7ReleaseEv(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !8
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZN8NArchive3N7z16CFolderOutStream7ReleaseEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(88) %i.d) #14, !inline_history !70
  br label %_ZN8NArchive3N7z16CFolderOutStream7ReleaseEv.exit

_ZN8NArchive3N7z16CFolderOutStream7ReleaseEv.exit: ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn8_N8NArchive3N7z16CFolderOutStreamD1Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN8NArchive3N7z16CFolderOutStreamE, i64 16), ptr %i.a, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8NArchive3N7z16CFolderOutStreamE, i64 88), ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit.i unwind label %bb.c, !inline_history !69 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #13, !inline_history !69
  unreachable

_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 3 uses
  %.not.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i1.i, label %_ZN8NArchive3N7z16CFolderOutStreamD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_ZN8NArchive3N7z16CFolderOutStreamD2Ev.exit unwind label %bb.e, !inline_history !69 ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #13, !inline_history !69
  unreachable

_ZN8NArchive3N7z16CFolderOutStreamD2Ev.exit:      ; preds = %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn8_N8NArchive3N7z16CFolderOutStreamD0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN8NArchive3N7z16CFolderOutStreamE, i64 16), ptr %i.a, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8NArchive3N7z16CFolderOutStreamE, i64 88), ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit.i.i unwind label %bb.c, !inline_history !71 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #13, !inline_history !71
  unreachable

_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 3 uses
  %.not.i1.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i1.i.i, label %_ZN8NArchive3N7z16CFolderOutStreamD0Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_ZN8NArchive3N7z16CFolderOutStreamD0Ev.exit unwind label %bb.e, !inline_history !71 ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #13, !inline_history !71
  unreachable

_ZN8NArchive3N7z16CFolderOutStreamD0Ev.exit:      ; preds = %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 noundef 88) #15, !inline_history !72
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { builtin allocsize(0) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }

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
!9 = !{!"_ZTS13CMyUnknownImp", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"vtable pointer", !7, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTS9CMyComPtrI20ISequentialOutStreamE", !14, i64 0}
!14 = !{!"p1 _ZTS20ISequentialOutStream", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTS9CMyComPtrI23IArchiveExtractCallbackE", !18, i64 0}
!18 = !{!"p1 _ZTS23IArchiveExtractCallback", !15, i64 0}
!19 = !{!20, !24, i64 24}
!20 = !{!"_ZTSN8NArchive3N7z16CFolderOutStreamE", !21, i64 0, !23, i64 8, !9, i64 16, !24, i64 24, !13, i64 32, !25, i64 40, !26, i64 48, !17, i64 56, !5, i64 64, !5, i64 68, !5, i64 72, !27, i64 76, !27, i64 77, !27, i64 78, !28, i64 80}
!21 = !{!"_ZTS20ISequentialOutStream", !22, i64 0}
!22 = !{!"_ZTS8IUnknown"}
!23 = !{!"_ZTS25ICompressGetSubStreamSize", !22, i64 0}
!24 = !{!"p1 _ZTS17COutStreamWithCRC", !15, i64 0}
!25 = !{!"p1 _ZTSN8NArchive3N7z18CArchiveDatabaseExE", !15, i64 0}
!26 = !{!"p1 _ZTS13CRecordVectorIbE", !15, i64 0}
!27 = !{!"bool", !6, i64 0}
!28 = !{!"long long", !6, i64 0}
!29 = distinct !{null}
!30 = !{!20, !25, i64 40}
!31 = !{!20, !5, i64 64}
!32 = !{!20, !5, i64 68}
!33 = !{!20, !26, i64 48}
!34 = distinct !{null}
!35 = !{!20, !27, i64 76}
!36 = !{!20, !27, i64 77}
!37 = !{!20, !5, i64 72}
!38 = !{!20, !27, i64 78}
!39 = !{!40, !5, i64 12}
!40 = !{!"_ZTS17CBaseRecordVector", !5, i64 8, !5, i64 12, !15, i64 16, !41, i64 24}
!41 = !{!"long", !6, i64 0}
!42 = !{!40, !15, i64 16}
!43 = !{!15, !15, i64 0}
!44 = !{!45, !28, i64 0}
!45 = !{!"_ZTSN8NArchive3N7z9CFileItemE", !28, i64 0, !5, i64 8, !5, i64 12, !46, i64 16, !27, i64 32, !27, i64 33, !27, i64 34, !27, i64 35}
!46 = !{!"_ZTS11CStringBaseIwE", !47, i64 0, !5, i64 8, !5, i64 12}
!47 = !{!"p1 wchar_t", !15, i64 0}
!48 = !{!45, !27, i64 33}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!45, !5, i64 12}
!52 = !{!53, !5, i64 32}
!53 = !{!"_ZTS17COutStreamWithCRC", !21, i64 0, !9, i64 8, !13, i64 16, !28, i64 24, !5, i64 32, !27, i64 36}
!54 = distinct !{ptr @_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEv, ptr @_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEi, null, null}
!55 = !{ptr @_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEv, ptr @_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEi}
!56 = !{!27, !27, i64 0}
!57 = distinct !{null}
!58 = !{!53, !28, i64 24}
!59 = !{!53, !27, i64 36}
!60 = !{!20, !28, i64 80}
!61 = distinct !{null, null}
!62 = distinct !{ptr @_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEi, null, null}
!63 = !{ptr @_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEi}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!28, !28, i64 0}
!67 = distinct !{!67, !65}
!68 = !{!6, !6, i64 0}
!69 = !{ptr @_ZN8NArchive3N7z16CFolderOutStreamD2Ev}
!70 = !{ptr @_ZN8NArchive3N7z16CFolderOutStream7ReleaseEv}
!71 = !{ptr @_ZN8NArchive3N7z16CFolderOutStreamD0Ev, ptr @_ZN8NArchive3N7z16CFolderOutStreamD2Ev}
!72 = !{ptr @_ZN8NArchive3N7z16CFolderOutStreamD0Ev}
end_hunk_0
