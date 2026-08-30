Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/7zFolderOutStream?download=true
inline.NumInlined: 62
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN8NArchive3N7z16CFolderOutStreamC2Ev:bb.a
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
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.b

bb.b:                                             ; preds = %_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEv.exit, %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !39
  %i.l = icmp slt i32 %i.h, %i.k
  br i1 %i.l, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.n = load i32, ptr %i.d, align 4, !tbaa !32
  %i.o = add i32 %i.n, %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.u = load i64, ptr %i.t, align 8, !tbaa !44
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.w = tail call noundef i32 @_ZN8NArchive3N7z16CFolderOutStream8OpenFileEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %.not.not = icmp eq i32 %i.w, 0
  br i1 %.not.not, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.y = load i32, ptr %i.d, align 4, !tbaa !32
  %i.z = load i32, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.aa = add i32 %i.z, %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 176
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.ad = sext i32 %i.aa to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !43 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 33
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !48, !range !49, !noundef !50
  %i.ai = trunc nuw i8 %i.ah to i1
  %.not.i = xor i1 %i.ai, true
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 34
  %i.ak = load i8, ptr %i.aj, align 2, !range !49
  %i.al = trunc nuw i8 %i.ak to i1
  %or.cond.i = select i1 %.not.i, i1 %i.al, i1 false
  %i.am = load i8, ptr %i.e, align 1, !range !49
  %i.an = trunc nuw i8 %i.am to i1
  %or.cond8.i = select i1 %or.cond.i, i1 %i.an, i1 false
  br i1 %or.cond8.i, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !19
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !51
  %i.aq = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !19 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !52
  %i.at = xor i32 %i.as, %i.ap
  %i.au = icmp eq i32 %i.at, -1
  %i.av = select i1 %i.au, i32 0, i32 3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.aw = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.aq, %bb.f ]
  %i.ax = phi i32 [ 0, %._crit_edge.i ], [ %i.av, %bb.f ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !12 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i, label %_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef i32 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.az), !inline_history !54 ; 0 uses
  store ptr null, ptr %i.ay, align 8, !tbaa !12
  %.pre9.i = load i32, ptr %i.b, align 8, !tbaa !37
  br label %_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEv.exit

_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEv.exit: ; preds = %bb.g, %bb.h
  %i.be = phi i32 [ %i.z, %bb.g ], [ %.pre9.i, %bb.h ]
  store i8 0, ptr %i.f, align 2, !tbaa !38
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.b, align 8, !tbaa !37
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !16  ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !10
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef i32 %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, i32 noundef %i.ax), !inline_history !55 ; 2 uses
  %.not11.not = icmp eq i32 %i.bk, 0
  br i1 %.not11.not, label %bb.b, label %.critedge

.critedge:                                        ; preds = %_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEv.exit, %bb.d, %bb.c, %bb.b
  %.3 = phi i32 [ %i.bk, %_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEv.exit ], [ %i.w, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ]
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
  %narrow = select i1 %i.j, i8 %i.l, i8 2         ; 2 uses
  %2 = zext nneg i8 %narrow to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store ptr null, ptr %1, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.n = load i32, ptr %i.m, align 4, !tbaa !32
  %i.o = add i32 %i.n, %i.d                       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i32, ptr %i.r, align 8, !tbaa !31
  %i.t = add i32 %i.s, %i.o
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i32 noundef %i.t, ptr noundef nonnull %1, i32 noundef %2)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.d, label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19
  %i.ab = load ptr, ptr %1, align 8, !tbaa !12    ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = invoke noundef i32 %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.noexc unwind label %bb.j, !inline_history !57 ; 0 uses

.noexc:                                           ; preds = %bb.e, %bb.d
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !12 ; 3 uses
  %.not6.i.i = icmp eq ptr %i.ah, null
  br i1 %.not6.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef i32 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %bb.g unwind label %bb.j, !inline_history !57 ; 0 uses

bb.g:                                             ; preds = %bb.f, %.noexc
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !12
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !19  ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !36, !range !49, !noundef !50
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 0, ptr %i.ap, align 8, !tbaa !58
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  store i8 %i.ao, ptr %i.aq, align 4, !tbaa !59
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i32 -1, ptr %i.ar, align 8, !tbaa !52
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i8 1, ptr %i.as, align 2, !tbaa !38
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !30 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 176
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !42
  %i.ax = sext i32 %i.o to i64                    ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !43 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !44
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !60
  %i.bc = icmp eq i8 %narrow, 0
  br i1 %i.bc, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %1, align 8, !tbaa !12
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 460
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !39
  %i.bh = icmp slt i32 %i.o, %i.bg
  br i1 %i.bh, label %_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit, label %_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit.thread

_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit: ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 464
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !42
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %i.ax
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !56, !range !49, !noundef !50
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.l, label %_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit.thread

_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit.thread: ; preds = %bb.i, %_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 33
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !48, !range !49, !noundef !50
  %i.bp = trunc nuw i8 %i.bo to i1
  %spec.select = select i1 %i.bp, i32 0, i32 2
  br label %bb.l

bb.j:                                             ; preds = %bb.f, %bb.e
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.k:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit.thread, %_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit, %bb.h, %bb.g
  %.016 = phi i32 [ 0, %_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit ], [ %spec.select, %_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit.thread ], [ %2, %bb.g ], [ 0, %bb.h ]
  %i.bs = load ptr, ptr %i.p, align 8, !tbaa !16  ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = invoke noundef i32 %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, i32 noundef %.016)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l, %bb.b
  %.1 = phi i32 [ %i.x, %bb.b ], [ %i.bw, %bb.l ]
  %i.bx = load ptr, ptr %1, align 8, !tbaa !12    ; 3 uses
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !10
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = invoke noundef i32 %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #13
  unreachable

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit:   ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret i32 %.1

bb.p:                                             ; preds = %bb.k, %bb.j, %bb.c
  %.pn = phi { ptr, i32 } [ %i.br, %bb.k ], [ %i.bq, %bb.j ], [ %i.y, %bb.c ]
  %i.ce = load ptr, ptr %1, align 8, !tbaa !12    ; 3 uses
  %.not.i22 = icmp eq ptr %i.ce, null
  br i1 %.not.i22, label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit23, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !10
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = invoke noundef i32 %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.ce)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit23 unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #13
  unreachable

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit23: ; preds = %bb.p, %bb.q
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
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 33
  %i.n = load i8, ptr %i.m, align 1, !tbaa !48, !range !49, !noundef !50
  %i.o = trunc nuw i8 %i.n to i1
  %.not = xor i1 %i.o, true
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 34
  %i.q = load i8, ptr %i.p, align 2, !range !49
  %i.r = trunc nuw i8 %i.q to i1
  %or.cond = select i1 %.not, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.t = load i8, ptr %i.s, align 1, !range !49
  %i.u = trunc nuw i8 %i.t to i1
  %or.cond8 = select i1 %or.cond, i1 %i.u, i1 false
  br i1 %or.cond8, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !52
  %i.ab = xor i32 %i.aa, %i.w
  %i.ac = icmp eq i32 %i.ab, -1
  %i.ad = select i1 %i.ac, i32 0, i32 3
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.ae = phi ptr [ %.pre, %._crit_edge ], [ %i.y, %bb.b ]
  %i.af = phi i32 [ 0, %._crit_edge ], [ %i.ad, %bb.b ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !12 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef i32 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah), !inline_history !62 ; 0 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !12
  %.pre9 = load i32, ptr %i.e, align 8, !tbaa !37
  br label %_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEi.exit

_ZN8NArchive3N7z16CFolderOutStream21CloseFileAndSetResultEi.exit: ; preds = %bb.c, %bb.d
  %i.am = phi i32 [ %i.f, %bb.c ], [ %.pre9, %bb.d ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i8 0, ptr %i.an, align 2, !tbaa !38
  %i.ao = add nsw i32 %i.am, 1
  store i32 %i.ao, ptr %i.e, align 8, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !10
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i32 noundef %i.af), !inline_history !63
  ret i32 %i.au
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
  %.not5477 = icmp eq i32 %2, 0
  br i1 %.not5477, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 78 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 77
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_0
