inline.NumInlined: 205
inline.NumDeleted: 71
begin_hunk_0_@_ZN11CStringBaseIwEpLERKS0_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.c
  %i.ax = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %i.f, %._crit_edge.i.i ], [ %i.f, %bb.c ] ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !61
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ay
  store i32 0, ptr %i.az, align 4, !tbaa !62
  store i32 %i.p, ptr %i.c, align 4, !tbaa !64
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit

_ZN11CStringBaseIwE10GrowLengthEi.exit:           ; preds = %bb.a, %bb.b, %bb.d
  %i.ba = phi i32 [ %i.f, %bb.a ], [ %i.f, %bb.b ], [ %i.ax, %bb.d ] ; 2 uses
  %i.bb = load ptr, ptr %0, align 8, !tbaa !61
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load ptr, ptr %1, align 8, !tbaa !61
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE10GrowLengthEi.exit
  %.04.i = phi ptr [ %i.be, %_ZN11CStringBaseIwE10GrowLengthEi.exit ], [ %i.bf, %bb.e ] ; 2 uses
  %.0.i4 = phi ptr [ %i.bd, %_ZN11CStringBaseIwE10GrowLengthEi.exit ], [ %i.bh, %bb.e ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.04.i, i64 4
  %i.bg = load i32, ptr %.04.i, align 4, !tbaa !62 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i4, i64 4
  store i32 %i.bg, ptr %.0.i4, align 4, !tbaa !62
  %.not.i5 = icmp eq i32 %i.bg, 0
  br i1 %.not.i5, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit, label %bb.e, !llvm.loop !65

_Z12MyStringCopyIwEPT_S1_PKS0_.exit:              ; preds = %bb.e
  %i.bi = load i32, ptr %i.a, align 8, !tbaa !60
  %i.bj = add nsw i32 %i.bi, %i.ba
  store i32 %i.bj, ptr %i.e, align 8, !tbaa !60
  ret ptr %0
}

declare noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory17MyCreateDirectoryEPKw(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN23CArchiveExtractCallback7GetTimeEijR9_FILETIMERb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(332) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.NWindows::NCOM::CPropVariant", align 8 ; 10 uses
  store i8 0, ptr %4, align 1, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i16 0, ptr %5, align 8, !tbaa !90
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 0, ptr %i.a, align 2, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #23
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit:         ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %bb.b
  %i.m = load i16, ptr %5, align 8, !tbaa !90
  switch i16 %i.m, label %bb.h [
    i16 64, label %bb.f
    i16 0, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  store i64 %i.o, ptr %3, align 4
  %narrow = icmp ne i64 %i.o, 0
  %i.p = zext i1 %narrow to i8
  store i8 %i.p, ptr %4, align 1, !tbaa !89
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.b, %bb.g
  %.1 = phi i32 [ 0, %bb.g ], [ %i.h, %bb.b ], [ -2147467259, %bb.e ]
  %i.q = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit17 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #23
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit17:       ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN23CArchiveExtractCallback13GetUnpackSizeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(332) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.NWindows::NCOM::CPropVariant", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i16 0, ptr %1, align 8, !tbaa !90
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 0, ptr %i.a, align 2, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.f = load i32, ptr %i.e, align 4, !tbaa !97
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %i.f, i32 noundef 7, ptr noundef nonnull %1)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.l = load i16, ptr %1, align 8, !tbaa !90
  %i.m = icmp ne i16 %i.l, 0                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.o = zext i1 %i.m to i8
  store i8 %i.o, ptr %i.n, align 8, !tbaa !98
  br i1 %i.m, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.p = invoke noundef i64 @_Z26ConvertPropVariantToUInt64RK14tagPROPVARIANT(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.p, ptr %i.q, align 8, !tbaa !99
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.b
  %i.s = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #23
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit:         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i32 %i.j

bb.j:                                             ; preds = %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.k, %bb.c ]
  %i.v = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit10 unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #23
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit10:       ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %.pn
}

declare noundef i64 @_Z26ConvertPropVariantToUInt64RK14tagPROPVARIANT(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN23CArchiveExtractCallback9GetStreamEjPP20ISequentialOutStreami(ptr noundef nonnull align 8 dereferenceable(332) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.CStringBase, align 8         ; 14 uses
  %5 = alloca %"class.NWindows::NCOM::CPropVariant", align 8 ; 10 uses
  %6 = alloca %"class.NWindows::NCOM::CPropVariant", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 10 uses
  %7 = alloca %class.CObjectVector, align 8       ; 18 uses
  %8 = alloca %class.CStringBase, align 8         ; 7 uses
  %9 = alloca %class.CStringBase, align 8         ; 10 uses
  %10 = alloca %class.CStringBase, align 8        ; 20 uses
  %11 = alloca %"class.NWindows::NFile::NFind::CFileInfoW", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %12 = alloca %class.CStringBase, align 8        ; 7 uses
  %13 = alloca %class.CStringBase, align 8        ; 7 uses
  %14 = alloca %class.CStringBase, align 8        ; 8 uses
  %15 = alloca %class.CStringBase, align 8        ; 7 uses
  %16 = alloca %class.CStringBase, align 8        ; 7 uses
  %17 = alloca %class.CStringBase, align 8        ; 7 uses
  %18 = alloca %class.CStringBase, align 8        ; 7 uses
  %19 = alloca %class.CStringBase, align 8        ; 7 uses
  %20 = alloca %class.CStringBase, align 8        ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100  ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc unwind label %bb.f, !inline_history !101 ; 0 uses

.noexc:                                           ; preds = %bb.b
  store ptr null, ptr %i.c, align 8, !tbaa !100
  br label %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit

_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit: ; preds = %.noexc, %bb.a
  store ptr null, ptr %2, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !100  ; 3 uses
  %.not.i308 = icmp eq ptr %i.j, null
  br i1 %.not.i308, label %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit310, label %bb.c

bb.c:                                             ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %.noexc309 unwind label %bb.f, !inline_history !101 ; 0 uses

.noexc309:                                        ; preds = %bb.c
  store ptr null, ptr %i.i, align 8, !tbaa !100
  br label %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit310

_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit310: ; preds = %.noexc309, %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 141 ; 2 uses
  store i8 0, ptr %i.o, align 1, !tbaa !103
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  store i8 0, ptr %i.p, align 8, !tbaa !104
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store i64 0, ptr %i.q, align 8, !tbaa !99
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store i8 0, ptr %i.r, align 8, !tbaa !98
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %1, ptr %i.s, align 4, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.t, align 8
  %i.u = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit310
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 12
  store ptr %i.u, ptr %4, align 8, !tbaa !61
  store i32 0, ptr %i.u, align 4, !tbaa !62
  store i32 4, ptr %i.v, align 4, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !59   ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !94   ; 6 uses
  %i.z = invoke noundef i32 @_ZNK4CArc11GetItemPathEjR11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(80) %i.x, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.e unwind label %bb.i       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.j, label %bb.hk

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.aa = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %bb.hn

bb.g:                                             ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit310
  %i.ab = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN11CStringBaseIwED2Ev.exit375

bb.h:                                             ; preds = %bb.gz, %bb.gy, %bb.n, %bb.gx, %bb.af
  %i.ac = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit371

bb.i:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit371

bb.j:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.ag = invoke noundef i32 @_Z19IsArchiveItemFolderP10IInArchivejRb(ptr noundef %i.y, i32 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %i.af)
          to label %bb.k unwind label %bb.l       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %.not232 = icmp eq i32 %i.ag, 0
  br i1 %.not232, label %bb.m, label %bb.hk

bb.l:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit371

bb.m:                                             ; preds = %bb.k
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !60
  %i.aj = load ptr, ptr %21, align 8, !tbaa !61   ; 3 uses
  store i32 0, ptr %i.aj, align 4, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !60 ; 2 uses
  %i.am = add nsw i32 %i.al, 1                    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !64 ; 2 uses
  %i.ap = icmp eq i32 %i.am, %i.ao
  br i1 %i.ap, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = zext nneg i32 %i.am to i64
  %i.ar = icmp slt i32 %i.al, -1
  %i.as = shl nuw nsw i64 %i.aq, 2
  %i.at = select i1 %i.ar, i64 -1, i64 %i.as
  %i.au = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #19
          to label %.noexc312 unwind label %bb.h  ; 3 uses

.noexc312:                                        ; preds = %bb.n
  %i.av = icmp sgt i32 %i.ao, 0
  br i1 %i.av, label %._crit_edge.thread.i.i, label %bb.o

._crit_edge.thread.i.i:                           ; preds = %.noexc312
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #20
  %.pre.i = load i32, ptr %i.ai, align 8, !tbaa !60
  %i.aw = sext i32 %.pre.i to i64
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.thread.i.i, %.noexc312
  %i.ax = phi i64 [ %i.aw, %._crit_edge.thread.i.i ], [ 0, %.noexc312 ]
  store ptr %i.au, ptr %21, align 8, !tbaa !61
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ax
  store i32 0, ptr %i.ay, align 4, !tbaa !62
  store i32 %i.am, ptr %i.an, align 4, !tbaa !64
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.o, %bb.m
  %i.az = phi ptr [ %i.aj, %bb.m ], [ %i.au, %bb.o ]
  %i.ba = load ptr, ptr %4, align 8, !tbaa !61
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.ba, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.bb, %bb.p ] ; 2 uses
  %.0.i.i = phi ptr [ %i.az, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.bd, %bb.p ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.bc = load i32, ptr %.04.i.i, align 4, !tbaa !62 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.bc, ptr %.0.i.i, align 4, !tbaa !62
  %.not.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.p, !llvm.loop !65

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %bb.p
  %22 = load i32, ptr %i.ak, align 8, !tbaa !60
  store i32 %22, ptr %i.ai, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i16 0, ptr %5, align 8, !tbaa !90
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 0, ptr %i.be, align 2, !tbaa !93
  %i.bf = load ptr, ptr %i.y, align 8, !tbaa !47
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = invoke noundef i32 %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i32 noundef %1, i32 noundef 29, ptr noundef nonnull %5)
          to label %bb.q unwind label %bb.r       ; 2 uses

bb.q:                                             ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit
  %.not233 = icmp eq i32 %i.bi, 0
  br i1 %.not233, label %bb.t, label %bb.w

bb.r:                                             ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit
  %i.bj = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  %i.bk = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #23
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit:         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit371

bb.t:                                             ; preds = %bb.q
  %i.bn = load i16, ptr %5, align 8, !tbaa !90
  switch i16 %i.bn, label %bb.w [
    i16 0, label %bb.v
    i16 21, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !105
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !106
  store i8 1, ptr %i.p, align 8, !tbaa !104
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.q, %bb.v
  %cond3 = phi i1 [ false, %bb.q ], [ true, %bb.v ], [ false, %bb.t ]
  %.3 = phi i32 [ %i.bi, %bb.q ], [ 0, %bb.v ], [ -2147467259, %bb.t ] ; 2 uses
  %i.br = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit313 unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #23
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit313:      ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %cond3, label %bb.y, label %bb.hk

bb.y:                                             ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit313
  %i.bu = invoke noundef i32 @_Z22GetArchiveItemBoolPropP10IInArchivejjRb(ptr noundef nonnull %i.y, i32 noundef %1, i32 noundef 15, ptr noundef nonnull align 1 dereferenceable(1) %i.o)
          to label %bb.z unwind label %bb.aa      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %.not236 = icmp eq i32 %i.bu, 0
  br i1 %.not236, label %bb.ab, label %bb.hk

bb.aa:                                            ; preds = %bb.y
  %i.bv = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit371

bb.ab:                                            ; preds = %bb.z
  %i.bw = invoke noundef i32 @_ZN23CArchiveExtractCallback13GetUnpackSizeEv(ptr noundef nonnull align 8 dereferenceable(332) %0)
          to label %bb.ac unwind label %bb.ad     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %.not237 = icmp eq i32 %i.bw, 0
  br i1 %.not237, label %bb.ae, label %bb.hk

bb.ad:                                            ; preds = %bb.ab
  %i.bx = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit371

bb.ae:                                            ; preds = %bb.ac
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !8  ; 2 uses
  %.not238 = icmp eq ptr %i.bz, null
  br i1 %.not238, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ca = load i8, ptr %i.af, align 8, !tbaa !107, !range !68, !noundef !69
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = xor i1 %i.cb, true
  %i.cd = invoke noundef zeroext i1 @_ZNK9NWildcard11CCensorNode9CheckPathERK11CStringBaseIwEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext %i.cc)
          to label %bb.ag unwind label %bb.h

bb.ag:                                            ; preds = %bb.af
  br i1 %i.cd, label %bb.ah, label %bb.hk

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %i.ce = icmp ne i32 %3, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 265
  %i.cg = load i8, ptr %i.cf, align 1, !range !68
  %i.ch = trunc nuw i8 %i.cg to i1
  %or.cond = select i1 %i.ce, i1 true, i1 %i.ch
  br i1 %or.cond, label %bb.gv, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !42, !range !68, !noundef !69
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.cl = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19
          to label %bb.ak unwind label %bb.al     ; 4 uses

bb.ak:                                            ; preds = %bb.aj
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i32 0, ptr %i.cm, align 4, !tbaa !108
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV17CStdOutFileStream, i64 16), ptr %i.cl, align 8, !tbaa !47
  %i.cn = load ptr, ptr getelementptr inbounds nuw inrange(-24, 40) (i8, ptr @_ZTV17CStdOutFileStream, i64 24), align 8
  %i.co = invoke noundef i32 %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.cl)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit unwind label %bb.al, !inline_history !109 ; 0 uses

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit:   ; preds = %bb.ak
  store ptr %i.cl, ptr %2, align 8, !tbaa !102
  br label %bb.hk

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.cp = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit371

bb.am:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i16 0, ptr %6, align 8, !tbaa !90
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 0, ptr %i.cq, align 2, !tbaa !93
  %i.cr = load ptr, ptr %i.y, align 8, !tbaa !47
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = invoke noundef i32 %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i32 noundef %1, i32 noundef 9, ptr noundef nonnull %6)
          to label %bb.an unwind label %bb.ao     ; 2 uses

bb.an:                                            ; preds = %bb.am
  %.not239 = icmp eq i32 %i.cu, 0
  br i1 %.not239, label %bb.aq, label %bb.as

bb.ao:                                            ; preds = %bb.am
  %i.cv = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  %i.cw = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit317 unwind label %bb.ap ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #23
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit317:      ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit371

bb.aq:                                            ; preds = %bb.an
  %i.cz = load i16, ptr %6, align 8, !tbaa !90
  switch i16 %i.cz, label %bb.as [
    i16 19, label %bb.ar
    i16 0, label %.sink.split
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.db = load i32, ptr %i.da, align 8, !tbaa !105
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.db, ptr %i.dc, align 8, !tbaa !110
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aq, %bb.ar
  %.sink = phi i8 [ 1, %bb.ar ], [ 0, %bb.aq ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 175
  store i8 %.sink, ptr %i.dd, align 1, !tbaa !111
  br label %bb.as

end_hunk_0
