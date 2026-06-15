inline.NumInlined: 583
inline.NumDeleted: 227
begin_hunk_0_@_ZN11CStringBaseIwEaSEPKw:bb.a
  store i32 %i.c, ptr %i.a, align 8, !tbaa !8
  ret ptr %0
}

declare noundef i32 @_ZN8NArchive3N7z11COutArchive6CreateEP20ISequentialOutStreamb(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare noundef i32 @_ZN8NArchive3N7z11COutArchive23SkipPrefixArchiveHeaderEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(88) ptr @_ZN8NArchive3N7z22CCompressionMethodModeaSERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.a = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEEpLERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !39   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39
  %i.g = add nsw i32 %i.f, %i.d
  tail call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef %i.g)
  %i.h = icmp sgt i32 %i.d, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZN13CRecordVectorIN8NArchive3N7z5CBindEEaSERKS3_.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count.i.i = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.m = load <2 x i64>, ptr %i.l, align 4
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.o = load i32, ptr %i.e, align 4, !tbaa !39
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.p
  store <2 x i64> %i.m, ptr %i.q, align 4
  %i.r = load i32, ptr %i.e, align 4, !tbaa !39
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.e, align 4, !tbaa !39
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN13CRecordVectorIN8NArchive3N7z5CBindEEaSERKS3_.exit, label %bb.b, !llvm.loop !293

_ZN13CRecordVectorIN8NArchive3N7z5CBindEEaSERKS3_.exit: ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.t, ptr noundef nonnull align 8 dereferenceable(5) %i.u, i64 5, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = icmp eq ptr %1, %0
  br i1 %i.x, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN13CRecordVectorIN8NArchive3N7z5CBindEEaSERKS3_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store i32 0, ptr %i.y, align 8, !tbaa !8
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !103  ; 3 uses
  store i32 0, ptr %i.z, align 4, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !8  ; 2 uses
  %i.ac = add nsw i32 %i.ab, 1                    ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !174 ; 2 uses
  %i.af = icmp eq i32 %i.ac, %i.ae
  br i1 %i.af, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = zext nneg i32 %i.ac to i64
  %i.ah = icmp slt i32 %i.ab, -1
  %i.ai = shl nuw nsw i64 %i.ag, 2
  %i.aj = select i1 %i.ah, i64 -1, i64 %i.ai
  %i.ak = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aj) #18 ; 3 uses
  %i.al = icmp sgt i32 %i.ae, 0
  br i1 %i.al, label %._crit_edge.thread.i.i, label %bb.e

._crit_edge.thread.i.i:                           ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.z) #19
  %.pre.i = load i32, ptr %i.y, align 8, !tbaa !8
  %i.am = sext i32 %.pre.i to i64
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i, %bb.d
  %i.an = phi i64 [ %i.am, %._crit_edge.thread.i.i ], [ 0, %bb.d ]
  store ptr %i.ak, ptr %i.v, align 8, !tbaa !103
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.an
  store i32 0, ptr %i.ao, align 4, !tbaa !12
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !174
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.e, %bb.c
  %i.ap = phi ptr [ %i.z, %bb.c ], [ %i.ak, %bb.e ]
  %i.aq = load ptr, ptr %i.w, align 8, !tbaa !103
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.aq, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.ar, %bb.f ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ap, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.at, %bb.f ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.as = load i32, ptr %.04.i.i, align 4, !tbaa !12 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.as, ptr %.0.i.i, align 4, !tbaa !12
  %.not.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, label %bb.f, !llvm.loop !176

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i:            ; preds = %bb.f
  %i.au = load i32, ptr %i.aa, align 8, !tbaa !8
  store i32 %i.au, ptr %i.y, align 8, !tbaa !8
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %_ZN13CRecordVectorIN8NArchive3N7z5CBindEEaSERKS3_.exit, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
  ret ptr %0
}

declare void @_ZN8NArchive3N7z8CEncoderC1ERKNS0_22CCompressionMethodModeE(ptr noundef nonnull align 8 dereferenceable(433), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #3

declare noundef i32 @_ZN13CStreamBinder12CreateEventsEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #3

declare void @_ZN13CStreamBinder13CreateStreamsEPP19ISequentialInStreamPP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN11CVirtThread5StartEv(ptr noundef nonnull align 8 dereferenceable(233)) local_unnamed_addr #3

declare noundef i32 @_ZN8NArchive3N7z8CEncoder6EncodeEP19ISequentialInStreamPKyS5_RNS0_7CFolderEP20ISequentialOutStreamR13CRecordVectorIyEP21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(433), ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(133), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8NArchive3N7z7CFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(133) dereferenceable(133) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.c) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE, i64 16), ptr %0, align 8, !tbaa !33
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev.exit unwind label %bb.b, !inline_history !239

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #20, !inline_history !239
  unreachable

_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17, !inline_history !239
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CStreamBinderD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !209  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load i8, ptr %i.c, align 8, !tbaa !240, !range !48, !noundef !49
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(89) %i.b) #17 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.g) #17 ; 0 uses
  br label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit

_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #19
  br label %bb.d

bb.d:                                             ; preds = %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !209
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE, i64 16), ptr %i.i, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr null, ptr %i.j, align 8, !tbaa !294
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = invoke noundef i32 @Event_Close(ptr noundef nonnull align 8 dereferenceable(104) %i.k)
          to label %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #20
  unreachable

_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit: ; preds = %bb.d
  ret void
}

declare void @_ZNK8NArchive3N7z16CArchiveDatabase7GetFileEiRNS0_9CFileItemERNS0_10CFileItem2E(ptr noundef nonnull align 8 dereferenceable(480), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8NArchive3N7zL24FromUpdateItemToFileItemERKNS0_11CUpdateItemERNS0_9CFileItemERNS0_10CFileItem2E(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(36) initializes((24, 28)) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CStringBase, align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZN8NArchive9NItemName13MakeLegalNameERK11CStringBaseIwE(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !8
  %i.b = load ptr, ptr %5, align 8, !tbaa !103    ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !8    ; 2 uses
  %i.e = add nsw i32 %i.d, 1                      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !174  ; 2 uses
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = zext nneg i32 %i.e to i64
  %i.j = icmp slt i32 %i.d, -1
  %i.k = shl nuw nsw i64 %i.i, 2
  %i.l = select i1 %i.j, i64 -1, i64 %i.k
  %i.m = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #18
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %bb.b
  %i.n = icmp sgt i32 %i.g, 0
  br i1 %i.n, label %._crit_edge.thread.i.i, label %bb.c

._crit_edge.thread.i.i:                           ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %i.b) #19
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !8
  %i.o = sext i32 %.pre.i to i64
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i.i, %.noexc
  %i.p = phi i64 [ %i.o, %._crit_edge.thread.i.i ], [ 0, %.noexc ]
  store ptr %i.m, ptr %5, align 8, !tbaa !103
  %i.q = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.p
  store i32 0, ptr %i.q, align 4, !tbaa !12
  store i32 %i.e, ptr %i.f, align 4, !tbaa !174
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.c, %bb.a
  %i.r = phi ptr [ %i.b, %bb.a ], [ %i.m, %bb.c ]
  %i.s = load ptr, ptr %3, align 8, !tbaa !103    ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.s, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.t, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %i.r, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.v, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.u = load i32, ptr %.04.i.i, align 4, !tbaa !12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.u, ptr %.0.i.i, align 4, !tbaa !12
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.d, !llvm.loop !176

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %bb.d
  %6 = load i32, ptr %i.c, align 8, !tbaa !8
  store i32 %6, ptr %i.a, align 8, !tbaa !8
  %i.w = icmp eq ptr %i.s, null
  br i1 %i.w, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.s) #19
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load i8, ptr %i.x, align 8, !tbaa !295, !range !48, !noundef !49
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !161
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 35
  store i8 1, ptr %i.ac, align 1, !tbaa !296
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ab, ptr %i.ad, align 8, !tbaa !297
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %3, align 8, !tbaa !103   ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN11CStringBaseIwED2Ev.exit27, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.af) #19
  br label %_ZN11CStringBaseIwED2Ev.exit27

_ZN11CStringBaseIwED2Ev.exit27:                   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %i.ae

bb.i:                                             ; preds = %bb.f, %_ZN11CStringBaseIwED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !298, !range !48, !noundef !49
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 %i.aj, ptr %i.ak, align 8, !tbaa !299
  %i.al = load <2 x i64>, ptr %i.ah, align 8, !tbaa !132
  store <2 x i64> %i.al, ptr %2, align 8, !tbaa !132
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.an = load i8, ptr %i.am, align 2, !tbaa !300, !range !48, !noundef !49
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !301
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !302
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !303
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 67
  %i.at = load i8, ptr %i.as, align 1, !tbaa !304, !range !48, !noundef !49
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 34
  store i8 %i.at, ptr %i.au, align 2, !tbaa !305
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 2, !tbaa !306, !range !48, !noundef !49
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i8 %i.aw, ptr %i.ax, align 4, !tbaa !270
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 35
  store i8 0, ptr %i.ay, align 1, !tbaa !307
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !155
  store i64 %i.ba, ptr %1, align 8, !tbaa !44
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !160, !range !48, !noundef !49 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !57
  %i.be = trunc nuw i8 %i.bc to i1
  %i.bf = load i8, ptr %i.av, align 2, !range !48
  %i.bg = trunc nuw i8 %i.bf to i1
  %or.cond.i = select i1 %i.be, i1 true, i1 %i.bg
  %i.bh = load i64, ptr %i.az, align 8
  %i.bi = icmp ne i64 %i.bh, 0
  %not.or.cond.i = xor i1 %or.cond.i, true
  %i.bj = select i1 %not.or.cond.i, i1 %i.bi, i1 false
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bl = zext i1 %i.bj to i8
  store i8 %i.bl, ptr %i.bk, align 8, !tbaa !123
  ret void
}

declare void @_ZN8NArchive3N7z16CArchiveDatabase7AddFileERKNS0_9CFileItemERKNS0_10CFileItem2E(ptr noundef nonnull align 8 dereferenceable(480), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8NArchive3N7z8CRefItemC2EjRKNS0_11CUpdateItemEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(68) %2, i1 noundef zeroext %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.CStringBase, align 8         ; 10 uses
  store ptr %2, ptr %0, align 8, !tbaa !308
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !252
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !309
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !310
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !311
  br i1 %3, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %.val = load ptr, ptr %i.e, align 8             ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.val32 = load i32, ptr %i.f, align 8, !tbaa !8 ; 4 uses
  %i.g = icmp eq i32 %.val32, 0
  br i1 %i.g, label %_ZN8NArchive3N7zL18GetReverseSlashPosERK11CStringBaseIwE.exit.thread, label %bb.c

_ZN8NArchive3N7zL18GetReverseSlashPosERK11CStringBaseIwE.exit.thread: ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !310
  br label %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = sext i32 %.val32 to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.h ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i.i = phi ptr [ %i.i, %bb.c ], [ %.0.i.i, %bb.f ]
  %.0.i.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -4 ; 4 uses
  %i.j = load i32, ptr %.0.i.i, align 4, !tbaa !12
  %i.k = icmp eq i32 %i.j, 47
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = ptrtoint ptr %.0.i.i to i64
  %i.m = ptrtoint ptr %.val to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 2
  %i.p = trunc i64 %i.o to i32
  br label %_ZN8NArchive3N7zL18GetReverseSlashPosERK11CStringBaseIwE.exit

bb.f:                                             ; preds = %bb.d
  %i.q = icmp eq ptr %.0.i.i, %.val
  br i1 %i.q, label %_ZN8NArchive3N7zL18GetReverseSlashPosERK11CStringBaseIwE.exit, label %bb.d, !llvm.loop !14

_ZN8NArchive3N7zL18GetReverseSlashPosERK11CStringBaseIwE.exit: ; preds = %bb.f, %bb.e
  %.1.i.i = phi i32 [ %i.p, %bb.e ], [ -1, %bb.f ] ; 2 uses
  %i.r = tail call i32 @llvm.smax.i32(i32 %.1.i.i, i32 -1)
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.c, align 8, !tbaa !310
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %_ZN8NArchive3N7zL18GetReverseSlashPosERK11CStringBaseIwE.exit
  %.pn.i = phi ptr [ %i.i, %_ZN8NArchive3N7zL18GetReverseSlashPosERK11CStringBaseIwE.exit ], [ %.0.i, %bb.h ]
  %.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -4 ; 4 uses
  %i.t = load i32, ptr %.0.i, align 4, !tbaa !12
  %i.u = icmp eq i32 %i.t, 46
  br i1 %i.u, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %.0.i, %.val
  br i1 %i.v, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread, label %bb.g, !llvm.loop !14

_ZNK11CStringBaseIwE11ReverseFindEw.exit:         ; preds = %bb.g
  %i.w = ptrtoint ptr %.0.i to i64
  %i.x = ptrtoint ptr %.val to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = lshr exact i64 %i.y, 2
  %i.aa = trunc i64 %i.z to i32                   ; 3 uses
  %i.ab = icmp slt i32 %i.aa, 0
  %i.ac = icmp sgt i32 %.1.i.i, %i.aa
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread, label %bb.i

_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread:  ; preds = %bb.h, %_ZN8NArchive3N7zL18GetReverseSlashPosERK11CStringBaseIwE.exit.thread, %_ZNK11CStringBaseIwE11ReverseFindEw.exit
  store i32 %.val32, ptr %i.b, align 4, !tbaa !309
  br label %bb.x

bb.i:                                             ; preds = %_ZNK11CStringBaseIwE11ReverseFindEw.exit
  %i.ad = add nuw nsw i32 %i.aa, 1                ; 3 uses
  store i32 %i.ad, ptr %i.b, align 4, !tbaa !309
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.ae = sub nsw i32 %.val32, %i.ad
  call void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %i.ad, i32 noundef %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !8
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_ZN11CStringBaseIcED2Ev.exit35, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %4, align 8, !tbaa !103
  %i.aj = invoke noundef ptr @_Z13MyStringLowerPw(ptr noundef %i.ai)
          to label %_ZN11CStringBaseIwE9MakeLowerEv.exit unwind label %bb.k ; 0 uses

_ZN11CStringBaseIwE9MakeLowerEv.exit:             ; preds = %bb.j
  %i.ak = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #18
          to label %_ZN11CStringBaseIcEC2Ev.exit unwind label %bb.l ; 4 uses

_ZN11CStringBaseIcEC2Ev.exit:                     ; preds = %_ZN11CStringBaseIwE9MakeLowerEv.exit
  store i8 0, ptr %i.ak, align 1, !tbaa !16
  %i.al = load i32, ptr %i.af, align 8, !tbaa !8  ; 3 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN11CStringBaseIcEC2Ev.exit
  %i.an = load ptr, ptr %4, align 8, !tbaa !103
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !12 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 127
  br i1 %i.ap, label %._crit_edge, label %.lr.ph138

.lr.ph:                                           ; preds = %bb.q
  %i.aq = load ptr, ptr %4, align 8, !tbaa !103
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !12 ; 2 uses
  %i.at = icmp sgt i32 %i.as, 127
  %i.au = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  br i1 %i.at, label %._crit_edge, label %.lr.ph138, !llvm.loop !312

bb.k:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit

bb.l:                                             ; preds = %_ZN11CStringBaseIwE9MakeLowerEv.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit

bb.m:                                             ; preds = %bb.o
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.070137) #19
  br label %_ZN11CStringBaseIcED2Ev.exit

.lr.ph138:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ay = phi i32 [ %i.au, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.az = phi i32 [ %i.as, %.lr.ph ], [ %i.ao, %.lr.ph.preheader ]
  %.sroa.0.070137 = phi ptr [ %.sroa.0.3, %.lr.ph ], [ %i.ak, %.lr.ph.preheader ] ; 12 uses
  %.sroa.16.072136 = phi i32 [ %.sroa.16.2, %.lr.ph ], [ 4, %.lr.ph.preheader ] ; 9 uses
  %indvars.iv133 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 14 uses
  %.sroa.0.070137141 = ptrtoaddr ptr %.sroa.0.070137 to i64
  %i.ba = trunc i32 %i.az to i8
  %i.bb = xor i32 %i.ay, -1
end_hunk_0
