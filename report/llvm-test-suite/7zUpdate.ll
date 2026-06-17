inline.NumInlined: 583
inline.NumDeleted: 227
begin_hunk_0_@_ZN8NArchive3N7z17CFolderOutStream25WriteEPKvjPj:bb.a
.thread.i:                                        ; preds = %bb.r, %bb.q, %bb.p
  %i.cc = phi ptr [ null, %bb.q ], [ %i.bx, %bb.r ], [ null, %bb.p ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !36 ; 3 uses
  %.not6.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not6.i.i.i, label %_ZN8NArchive3N7z17CFolderOutStream28OpenFileEv.exit, label %bb.s

bb.s:                                             ; preds = %.thread.i
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !33
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = call noundef i32 %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.ce), !inline_history !50 ; 0 uses
  br label %_ZN8NArchive3N7z17CFolderOutStream28OpenFileEv.exit

_ZN8NArchive3N7z17CFolderOutStream28OpenFileEv.exit: ; preds = %.thread.i, %bb.s
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !36
  %i.cj = load ptr, ptr %i.e, align 8, !tbaa !46  ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store i64 0, ptr %i.ck, align 8, !tbaa !51
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 36
  store i8 1, ptr %i.cl, align 4, !tbaa !53
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  store i32 -1, ptr %i.cm, align 8, !tbaa !54
  store i8 1, ptr %i.b, align 8, !tbaa !38
  %i.cn = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.co = load i32, ptr %i.h, align 8, !tbaa !31
  %i.cp = load i32, ptr %i.c, align 4, !tbaa !37
  %i.cq = add i32 %i.cp, %i.co
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 176
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !42
  %i.ct = sext i32 %i.cq to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !43
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !44
  store i64 %i.cw, ptr %i.i, align 8, !tbaa !55
  br label %.backedge

.backedge:                                        ; preds = %_ZN8NArchive3N7z17CFolderOutStream28OpenFileEv.exit, %.thread58, %bb.m
  %.029.be = phi i32 [ %i.z, %bb.m ], [ %i.z, %.thread58 ], [ %.02973, %_ZN8NArchive3N7z17CFolderOutStream28OpenFileEv.exit ] ; 2 uses
  %.026.be = phi ptr [ %i.y, %bb.m ], [ %i.y, %.thread58 ], [ %.02674, %_ZN8NArchive3N7z17CFolderOutStream28OpenFileEv.exit ]
  %.not45 = icmp eq i32 %.029.be, 0
  br i1 %.not45, label %.loopexit, label %bb.d, !llvm.loop !64

.loopexit.sink.split:                             ; preds = %_ZN8NArchive3N7z17CFolderOutStream221CloseFileAndSetResultEv.exit, %bb.e, %_ZN8NArchive3N7z17CFolderOutStream221CloseFileAndSetResultEv.exit.thread, %bb.f
  %.7.ph = phi i32 [ 0, %bb.f ], [ 1, %_ZN8NArchive3N7z17CFolderOutStream221CloseFileAndSetResultEv.exit ], [ 1, %_ZN8NArchive3N7z17CFolderOutStream221CloseFileAndSetResultEv.exit.thread ], [ %i.u, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.n, %.backedge, %.loopexit.sink.split, %bb.c
  %.7 = phi i32 [ 0, %bb.c ], [ %.7.ph, %.loopexit.sink.split ], [ -2147467259, %bb.o ], [ 0, %.backedge ], [ 1, %bb.n ]
  ret i32 %.7
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive3N7z14CThreadDecoder7ExecuteEv(ptr noundef nonnull align 8 dereferenceable(536) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !94
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !95
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !96
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.p = load i8, ptr %i.o, align 8, !tbaa !97, !range !48, !noundef !49
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.s = load i32, ptr %i.r, align 4, !tbaa !98
  %i.t = invoke noundef i32 @_ZN8NArchive3N7z8CDecoder6DecodeEP9IInStreamyPKyRKNS0_7CFolderEP20ISequentialOutStreamP21ICompressProgressInfoP22ICryptoGetTextPasswordRbbj(ptr noundef nonnull align 8 dereferenceable(232) %i.b, ptr noundef %i.d, i64 noundef %i.f, ptr noundef %i.h, ptr noundef nonnull align 8 dereferenceable(133) %i.j, ptr noundef %i.l, ptr noundef null, ptr noundef %i.n, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i1 noundef zeroext %i.q, i32 noundef %i.s)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 %i.t, ptr %i.u, align 4, !tbaa !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.x = call ptr @__cxa_begin_catch(ptr %i.w) #17 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  store i32 -2147467259, ptr %i.y, align 4, !tbaa !99
  call void @__cxa_end_catch()
  %.pre = load i32, ptr %i.y, align 4, !tbaa !99
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = phi i32 [ %.pre, %bb.c ], [ %i.t, %bb.b ]
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert2 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.pre3 = load ptr, ptr %.phi.trans.insert2, align 8, !tbaa !100
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !100 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !37
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !39
  %i.ak = icmp eq i32 %i.af, %i.aj
  %i.al = select i1 %i.ak, i32 0, i32 -2147467259
  store i32 %i.al, ptr %i.ab, align 4, !tbaa !99
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.am = phi ptr [ %.pre3, %._crit_edge ], [ %i.ad, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !36 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef i32 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao), !inline_history !101 ; 0 uses
  store ptr null, ptr %i.an, align 8, !tbaa !36
  br label %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit.i

_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit.i: ; preds = %bb.g, %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !46
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !36 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZN8NArchive3N7z17CFolderOutStream216ReleaseOutStreamEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit.i
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef i32 %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw), !inline_history !102 ; 0 uses
  store ptr null, ptr %i.av, align 8, !tbaa !36
  br label %_ZN8NArchive3N7z17CFolderOutStream216ReleaseOutStreamEv.exit

_ZN8NArchive3N7z17CFolderOutStream216ReleaseOutStreamEv.exit: ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit.i, %bb.h
  ret void
}

declare noundef i32 @_ZN8NArchive3N7z8CDecoder6DecodeEP9IInStreamyPKyRKNS0_7CFolderEP20ISequentialOutStreamP21ICompressProgressInfoP22ICryptoGetTextPasswordRbbj(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef, i64 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(133), ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 1 dereferenceable(1), i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147024882, 1) i32 @_ZN8NArchive3N7z22CCryptoGetTextPassword21CryptoGetTextPasswordEPPw(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.c = tail call ptr @SysAllocString(ptr noundef %i.b) ; 2 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !104
  %.not.i = icmp eq ptr %i.c, null
  %i.d = select i1 %.not.i, i32 -2147024882, i32 0
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive3N7z6UpdateEP9IInStreamPKNS0_18CArchiveDatabaseExERK13CObjectVectorINS0_11CUpdateItemEERNS0_11COutArchiveERNS0_16CArchiveDatabaseEP20ISequentialOutStreamP22IArchiveUpdateCallbackRKNS0_14CUpdateOptionsEP22ICryptoGetTextPassword(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(480) %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(43) %7, ptr noundef %8) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"struct.NArchive::N7z::CRefItem", align 8 ; 6 uses
  %10 = alloca %"struct.NArchive::N7z::CRefItem", align 8 ; 5 uses
  %11 = alloca %"struct.NArchive::N7z::CRefItem", align 8 ; 4 uses
  %12 = alloca %"struct.NArchive::N7z::CMethodFull", align 8 ; 15 uses
  %13 = alloca %struct.CProp, align 8             ; 7 uses
  %14 = alloca %struct.CProp, align 8             ; 7 uses
  %15 = alloca %struct.CProp, align 8             ; 7 uses
  %16 = alloca %struct.CProp, align 8             ; 7 uses
  %17 = alloca %struct.CProp, align 8             ; 7 uses
  %18 = alloca %"struct.NArchive::N7z::CMethodFull", align 8 ; 10 uses
  %19 = alloca %"class.NWindows::NFile::NIO::CInFile", align 8 ; 12 uses
  %i.a = alloca [512 x i8], align 16              ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %20 = alloca %class.CRecordVector.12, align 8   ; 15 uses
  %21 = alloca %class.CRecordVector.13, align 8   ; 15 uses
  %i.c = alloca i64, align 8                      ; 10 uses
  %22 = alloca %"class.NArchive::N7z::CThreadDecoder", align 8 ; 21 uses
  %23 = alloca %class.CObjectVector.17, align 8   ; 16 uses
  %24 = alloca %"struct.NArchive::N7z::CSolidGroup", align 8 ; 24 uses
  %25 = alloca %class.CMyComBSTR, align 8         ; 9 uses
  %26 = alloca %"struct.NArchive::N7z::CCompressionMethodMode", align 8 ; 34 uses
  %27 = alloca %"class.NArchive::N7z::CEncoder", align 8 ; 10 uses
  %28 = alloca %class.CStreamBinder, align 16     ; 10 uses
  %29 = alloca %class.CMyComPtr, align 8          ; 10 uses
  %30 = alloca %class.CMyComPtr.21, align 8       ; 8 uses
  %31 = alloca %class.CRecordVector, align 8      ; 12 uses
  %32 = alloca %"struct.NArchive::N7z::CFolder", align 8 ; 26 uses
  %33 = alloca %"struct.NArchive::N7z::CFileItem", align 8 ; 13 uses
  %34 = alloca %"struct.NArchive::N7z::CFileItem2", align 8 ; 6 uses
  %35 = alloca %"struct.NArchive::N7z::CFileItem", align 8 ; 11 uses
  %36 = alloca %class.CRecordVector.22, align 8   ; 14 uses
  %i.d = alloca i8, align 1                       ; 9 uses
  %37 = alloca %"struct.NArchive::N7z::CRefItem", align 8 ; 2 uses
  %38 = alloca %class.CRecordVector.1, align 8    ; 14 uses
  %39 = alloca %class.CStringBase, align 8        ; 9 uses
  %40 = alloca %"struct.NArchive::N7z::CFolder", align 8 ; 26 uses
  %41 = alloca %"struct.NArchive::N7z::CFileItem", align 8 ; 14 uses
  %42 = alloca %"struct.NArchive::N7z::CFileItem2", align 8 ; 8 uses
  %43 = alloca %class.CRecordVector.12, align 8   ; 14 uses
  %44 = alloca %"struct.NArchive::N7z::CFileItem", align 8 ; 9 uses
  %45 = alloca %"struct.NArchive::N7z::CFileItem2", align 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !105  ; 3 uses
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.h = load i64, ptr %i.g, align 8, !tbaa !109  ; 2 uses
  %.not587 = icmp eq i64 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 41
  %i.j = load i8, ptr %i.i, align 1, !range !48
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond675 = select i1 %.not587, i1 true, i1 %i.k
  br i1 %or.cond675, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call fastcc noundef i32 @_ZN8NArchive3N7zL10WriteRangeEP9IInStreamP20ISequentialOutStreamyyP21ICompressProgressInfo(ptr noundef %0, ptr noundef %5, i64 noundef 0, i64 noundef %i.h, ptr noundef null) ; 2 uses
  %.not588 = icmp eq i32 %i.l, 0
  br i1 %.not588, label %.thread, label %bb.oh

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %i.m = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %20, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.n, align 8, !tbaa !118
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIiE, i64 16), ptr %20, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  %i.o = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %21, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store i64 12, ptr %i.p, align 8, !tbaa !118
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIN8NArchive3N7z13CFolderRepackEE, i64 16), ptr %21, align 8, !tbaa !33
  br i1 %.not, label %_ZN13CRecordVectorIN8NArchive3N7z13CFolderRepackEE4SortEPFiPKS2_S5_PvES6_.exit, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 172 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !39
  invoke void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %20, i32 noundef %i.r)
          to label %.preheader966 unwind label %bb.g

.preheader966:                                    ; preds = %bb.d
  %i.s = load i32, ptr %i.q, align 4, !tbaa !39
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %.preheader965

.lr.ph:                                           ; preds = %.preheader966
  %i.u = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %20, i64 12 ; 3 uses
  br label %bb.e

.preheader965:                                    ; preds = %bb.f, %.preheader966
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !39   ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph1446, label %.preheader964

.lr.ph1446:                                       ; preds = %.preheader965
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !42
  %i.ab = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.05241444 = phi i32 [ 0, %.lr.ph ], [ %i.aj, %bb.f ]
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.ae = load i32, ptr %i.v, align 4, !tbaa !39
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.af
  store i32 -1, ptr %i.ag, align 4, !tbaa !4
  %i.ah = load i32, ptr %i.v, align 4, !tbaa !39
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.v, align 4, !tbaa !39
  %i.aj = add nuw nsw i32 %.05241444, 1           ; 2 uses
  %i.ak = load i32, ptr %i.q, align 4, !tbaa !39
  %i.al = icmp slt i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.e, label %.preheader965, !llvm.loop !119

bb.g:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.og

bb.h:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.og

.preheader964:                                    ; preds = %bb.k, %.preheader965
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !39 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph1457, label %._crit_edge1458

.lr.ph1457:                                       ; preds = %.preheader964
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.au = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph1446, %bb.k
  %i.bb = phi i32 [ %i.x, %.lr.ph1446 ], [ %i.bi, %bb.k ]
  %indvars.iv = phi i64 [ 0, %.lr.ph1446 ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !43
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !120 ; 2 uses
  %.not669 = icmp eq i32 %i.be, -1
  br i1 %.not669, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.bf
  %i.bh = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !4
  %.pre = load i32, ptr %i.w, align 4, !tbaa !39
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bi = phi i32 [ %.pre, %bb.j ], [ %i.bb, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %bb.i, label %.preheader964, !llvm.loop !122

bb.l:                                             ; preds = %.lr.ph1457, %._crit_edge.thread
  %i.bl = phi i32 [ %i.ap, %.lr.ph1457 ], [ %i.fx, %._crit_edge.thread ] ; 2 uses
  %indvars.iv1772 = phi i64 [ 0, %.lr.ph1457 ], [ %indvars.iv.next1773, %._crit_edge.thread ] ; 7 uses
  %.05071456 = phi i64 [ 0, %.lr.ph1457 ], [ %.2509, %._crit_edge.thread ] ; 3 uses
  %.05151455 = phi i64 [ 0, %.lr.ph1457 ], [ %.3518, %._crit_edge.thread ] ; 7 uses
  %.05201454 = phi i1 [ false, %.lr.ph1457 ], [ %.2522, %._crit_edge.thread ] ; 7 uses
  %i.bm = load ptr, ptr %i.ar, align 8, !tbaa !42
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv1772
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4  ; 3 uses
  %.not1548 = icmp eq i32 %i.bo, 0
  br i1 %.not1548, label %._crit_edge.thread, label %.lr.ph1451

.lr.ph1451:                                       ; preds = %bb.l
  %i.bp = load ptr, ptr %i.as, align 8, !tbaa !42
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv1772
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.bs = load ptr, ptr %i.at, align 8, !tbaa !42
  %i.bt = load ptr, ptr %i.au, align 8
  %i.bu = load ptr, ptr %i.av, align 8
  br label %bb.m

._crit_edge:                                      ; preds = %bb.q
  %i.bv = icmp eq i32 %.2535, 0
  br i1 %i.bv, label %._crit_edge.thread, label %bb.r

bb.m:                                             ; preds = %.lr.ph1451, %bb.q
  %.05271450 = phi i32 [ 0, %.lr.ph1451 ], [ %.1528, %bb.q ] ; 2 uses
  %.05331449 = phi i32 [ 0, %.lr.ph1451 ], [ %.2535, %bb.q ] ; 4 uses
  %.05361448 = phi i64 [ 0, %.lr.ph1451 ], [ %.2538, %bb.q ] ; 4 uses
  %.05391447 = phi i32 [ %i.br, %.lr.ph1451 ], [ %i.cp, %bb.q ] ; 2 uses
  %i.bw = sext i32 %.05391447 to i64              ; 2 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !43 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !123, !range !48, !noundef !49
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cc = add nuw i32 %.05271450, 1               ; 3 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bw
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !4  ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, -1
  br i1 %i.cf, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cg = zext nneg i32 %i.ce to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !43
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 60
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !124, !range !48, !noundef !49
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = add i32 %.05331449, 1
  %i.cn = load i64, ptr %i.by, align 8, !tbaa !44
  %i.co = add i64 %i.cn, %.05361448
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p, %bb.m
end_hunk_0
begin_hunk_1_@_ZN8NArchive3N7z6UpdateEP9IInStreamPKNS0_18CArchiveDatabaseExERK13CObjectVectorINS0_11CUpdateItemEERNS0_11COutArchiveERNS0_16CArchiveDatabaseEP20ISequentialOutStreamP22IArchiveUpdateCallbackRKNS0_14CUpdateOptionsEP22ICryptoGetTextPassword:bb.a
          to label %.noexc703 unwind label %bb.dh ; 2 uses

.noexc703:                                        ; preds = %bb.cy
  %i.ss = getelementptr inbounds nuw i8, ptr %i.so, i64 28 ; 3 uses
  store ptr %i.sr, ptr %i.sq, align 8, !tbaa !103
  store i32 0, ptr %i.sr, align 4, !tbaa !12
  store i32 4, ptr %i.ss, align 4, !tbaa !174
  %i.st = getelementptr inbounds nuw i8, ptr %22, i64 288 ; 2 uses
  store i32 1, ptr %i.sp, align 8, !tbaa !173
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !96 ; 3 uses
  %.not6.i = icmp eq ptr %i.su, null
  br i1 %.not6.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %.noexc703
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !33
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 16
  %i.sx = load ptr, ptr %i.sw, align 8
  %i.sy = invoke noundef i32 %i.sx(ptr noundef nonnull align 8 dereferenceable(8) %i.su)
          to label %bb.da unwind label %bb.dg, !inline_history !175 ; 0 uses

bb.da:                                            ; preds = %.noexc703, %bb.cz
  store ptr %i.so, ptr %i.st, align 8, !tbaa !96
  %i.sz = load ptr, ptr %7, align 8, !tbaa !158   ; 3 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 68
  %i.tb = load i8, ptr %i.ta, align 4, !tbaa !168, !range !48, !noundef !49
  %i.tc = trunc nuw i8 %i.tb to i1
  br i1 %i.tc, label %bb.db, label %bb.di

bb.db:                                            ; preds = %bb.da
  %i.td = getelementptr inbounds nuw i8, ptr %i.sz, i64 72 ; 2 uses
  %i.te = icmp eq ptr %i.td, %i.sq
  br i1 %i.te, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.tf = getelementptr inbounds nuw i8, ptr %i.so, i64 24 ; 3 uses
  store i32 0, ptr %i.tf, align 8, !tbaa !8
  %i.tg = load ptr, ptr %i.sq, align 8, !tbaa !103 ; 3 uses
  store i32 0, ptr %i.tg, align 4, !tbaa !12
  %i.th = getelementptr inbounds nuw i8, ptr %i.sz, i64 80 ; 2 uses
  %i.ti = load i32, ptr %i.th, align 8, !tbaa !8  ; 2 uses
  %i.tj = add nsw i32 %i.ti, 1                    ; 3 uses
  %i.tk = load i32, ptr %i.ss, align 4, !tbaa !174 ; 2 uses
  %i.tl = icmp eq i32 %i.tj, %i.tk
  br i1 %i.tl, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.tm = zext nneg i32 %i.tj to i64
  %i.tn = icmp slt i32 %i.ti, -1
  %i.to = shl nuw nsw i64 %i.tm, 2
  %i.tp = select i1 %i.tn, i64 -1, i64 %i.to
  %i.tq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.tp) #18
          to label %.noexc706 unwind label %bb.dg ; 3 uses

.noexc706:                                        ; preds = %bb.dd
  %i.tr = icmp sgt i32 %i.tk, 0
  br i1 %i.tr, label %._crit_edge.thread.i.i, label %bb.de

._crit_edge.thread.i.i:                           ; preds = %.noexc706
  call void @_ZdaPv(ptr noundef nonnull %i.tg) #19
  %.pre.i705 = load i32, ptr %i.tf, align 8, !tbaa !8
  %i.ts = sext i32 %.pre.i705 to i64
  br label %bb.de

bb.de:                                            ; preds = %._crit_edge.thread.i.i, %.noexc706
  %i.tt = phi i64 [ %i.ts, %._crit_edge.thread.i.i ], [ 0, %.noexc706 ]
  store ptr %i.tq, ptr %i.sq, align 8, !tbaa !103
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.tq, i64 %i.tt
  store i32 0, ptr %i.tu, align 4, !tbaa !12
  store i32 %i.tj, ptr %i.ss, align 4, !tbaa !174
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.de, %bb.dc
  %i.tv = phi ptr [ %i.tg, %bb.dc ], [ %i.tq, %bb.de ]
  %i.tw = load ptr, ptr %i.td, align 8, !tbaa !103
  br label %bb.df

bb.df:                                            ; preds = %bb.df, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.tw, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.tx, %bb.df ] ; 2 uses
  %.0.i.i = phi ptr [ %i.tv, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.tz, %bb.df ] ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.ty = load i32, ptr %.04.i.i, align 4, !tbaa !12 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.ty, ptr %.0.i.i, align 4, !tbaa !12
  %.not.i.i = icmp eq i32 %i.ty, 0
  br i1 %.not.i.i, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, label %bb.df, !llvm.loop !176

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i:            ; preds = %bb.df
  %i.ua = load i32, ptr %i.th, align 8, !tbaa !8
  store i32 %i.ua, ptr %i.tf, align 8, !tbaa !8
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

bb.dg:                                            ; preds = %bb.dd, %bb.cz, %bb.cx
  %i.ub = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dh:                                            ; preds = %bb.cy
  %i.uc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.so, i64 noundef 32) #19
  br label %.body

bb.di:                                            ; preds = %bb.da
  %.not593 = icmp eq ptr %8, null
  br i1 %.not593, label %.loopexit962, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #17
  store ptr null, ptr %25, align 8, !tbaa !177
  %i.ud = load ptr, ptr %8, align 8, !tbaa !33
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 40
  %i.uf = load ptr, ptr %i.ue, align 8
  %i.ug = invoke noundef i32 %i.uf(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %25)
          to label %bb.dk unwind label %bb.dl     ; 2 uses

bb.dk:                                            ; preds = %bb.dj
  %.not594 = icmp eq i32 %i.ug, 0
  %i.uh = load ptr, ptr %25, align 8, !tbaa !177  ; 2 uses
  br i1 %.not594, label %bb.dm, label %.critedge

bb.dl:                                            ; preds = %bb.dj
  %i.ui = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dm:                                            ; preds = %bb.dk
  %i.uj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEaSEPKw(ptr noundef nonnull align 8 dereferenceable(16) %i.sq, ptr noundef %i.uh)
          to label %bb.dn unwind label %bb.dp     ; 0 uses

bb.dn:                                            ; preds = %bb.dm
  %i.uk = load ptr, ptr %25, align 8, !tbaa !177
  invoke void @SysFreeString(ptr noundef %i.uk)
          to label %_ZN10CMyComBSTRD2Ev.exit unwind label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ul = landingpad { ptr, i32 }
          catch ptr null
  %i.um = extractvalue { ptr, i32 } %i.ul, 0
  call void @__clang_call_terminate(ptr %i.um) #20
  unreachable

_ZN10CMyComBSTRD2Ev.exit:                         ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

bb.dp:                                            ; preds = %bb.dm
  %i.un = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.dl
  %.pn = phi { ptr, i32 } [ %i.un, %bb.dp ], [ %i.ui, %bb.dl ]
  %i.uo = load ptr, ptr %25, align 8, !tbaa !177
  invoke void @SysFreeString(ptr noundef %i.uo)
          to label %_ZN10CMyComBSTRD2Ev.exit707 unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.up = landingpad { ptr, i32 }
          catch ptr null
  %i.uq = extractvalue { ptr, i32 } %i.up, 0
  call void @__clang_call_terminate(ptr %i.uq) #20
  unreachable

_ZN10CMyComBSTRD2Ev.exit707:                      ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  br label %.body

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %_ZN10CMyComBSTRD2Ev.exit, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, %bb.db, %._crit_edge1485
  %.0559 = phi ptr [ null, %._crit_edge1485 ], [ %i.so, %_ZN10CMyComBSTRD2Ev.exit ], [ %i.so, %bb.db ], [ %i.so, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i ] ; 3 uses
  %i.ur = invoke noundef i32 @_ZN8NArchive3N7z11COutArchive6CreateEP20ISequentialOutStreamb(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %5, i1 noundef zeroext false)
          to label %bb.ds unwind label %bb.dt     ; 2 uses

bb.ds:                                            ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit
  %.not596 = icmp eq i32 %i.ur, 0
  br i1 %.not596, label %bb.du, label %.loopexit962

bb.dt:                                            ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit
  %i.us = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.du:                                            ; preds = %bb.ds
  %i.ut = invoke noundef i32 @_ZN8NArchive3N7z11COutArchive23SkipPrefixArchiveHeaderEv(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.dv unwind label %bb.dw     ; 2 uses

bb.dv:                                            ; preds = %bb.du
  %.not597 = icmp eq i32 %i.ut, 0
  br i1 %.not597, label %bb.dx, label %.loopexit962

bb.dw:                                            ; preds = %bb.du
  %i.uu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dx:                                            ; preds = %bb.dv
  %i.uv = getelementptr inbounds nuw i8, ptr %i.oz, i64 40 ; 3 uses
  store i64 0, ptr %i.uv, align 8, !tbaa !179
  %i.uw = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.ux = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.uy = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.uz = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 8 uses
  %i.va = getelementptr inbounds nuw i8, ptr %26, i64 40
  %i.vb = getelementptr inbounds nuw i8, ptr %26, i64 56
  %i.vc = getelementptr inbounds nuw i8, ptr %26, i64 64
  %i.vd = getelementptr inbounds nuw i8, ptr %26, i64 68 ; 4 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %26, i64 72 ; 8 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %26, i64 84 ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %7, i64 17
  %i.vh = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.vj = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.vk = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %18, i64 44
  %i.vm = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %26, i64 48 ; 4 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %26, i64 44 ; 12 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 12 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.vr = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.vs = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 5 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %13, i64 10
  %i.vw = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 5 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 10 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %14, i64 10
  %i.wa = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %15, i64 10
  %i.wc = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %16, i64 10
  %i.we = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 5 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %17, i64 10
  %i.wg = getelementptr inbounds nuw i8, ptr %26, i64 12 ; 4 uses
  %.not598 = icmp eq ptr %.0559, null
  %i.wh = getelementptr inbounds nuw i8, ptr %.0559, i64 16 ; 2 uses
  %i.wi = icmp eq ptr %i.wh, %i.ve
  %i.wj = getelementptr inbounds nuw i8, ptr %26, i64 80 ; 4 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %.0559, i64 24 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.wm = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %28, i64 128 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %28, i64 152 ; 3 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.wr = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.ws = getelementptr inbounds nuw i8, ptr %1, i64 632 ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.wx = getelementptr inbounds nuw i8, ptr %31, i64 12 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %22, i64 248
  %i.wz = getelementptr inbounds nuw i8, ptr %22, i64 240 ; 2 uses
  %.not.i743 = icmp eq ptr %0, null
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %22, i64 280
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %22, i64 264
  %i.xg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %22, i64 272
  %i.xi = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 6 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.xk = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.xl = getelementptr inbounds nuw i8, ptr %32, i64 32 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %32, i64 40
  %i.xn = getelementptr inbounds nuw i8, ptr %32, i64 56
  %i.xo = getelementptr inbounds nuw i8, ptr %32, i64 64 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %32, i64 72
  %i.xq = getelementptr inbounds nuw i8, ptr %32, i64 88
  %i.xr = getelementptr inbounds nuw i8, ptr %32, i64 96 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %32, i64 104
  %i.xt = getelementptr inbounds nuw i8, ptr %32, i64 120
  %i.xu = getelementptr inbounds nuw i8, ptr %32, i64 132
  %i.xv = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 3 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %22, i64 112
  %i.xx = getelementptr inbounds nuw i8, ptr %22, i64 236
  %i.xy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.oz, i64 56 ; 16 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %32, i64 108
  %i.yb = getelementptr inbounds nuw i8, ptr %32, i64 44
  %i.yc = getelementptr inbounds nuw i8, ptr %32, i64 48
  %i.yd = getelementptr inbounds nuw i8, ptr %32, i64 112
  %i.ye = getelementptr inbounds nuw i8, ptr %i.oz, i64 48 ; 4 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %4, i64 108 ; 6 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %4, i64 140 ; 6 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 5 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %33, i64 28 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %33, i64 32 ; 4 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %33, i64 34
  %i.yp = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 3 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %35, i64 32 ; 3 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %35, i64 34
  %i.ys = getelementptr inbounds nuw i8, ptr %33, i64 12
  %i.yt = getelementptr inbounds nuw i8, ptr %35, i64 12
  %i.yu = getelementptr inbounds nuw i8, ptr %33, i64 24 ; 4 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %35, i64 24 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.yx = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.yy = icmp ugt i64 %i.f, 1                    ; 2 uses
  %i.yz = zext i1 %i.yy to i8
  %i.za = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 3 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %36, i64 12 ; 4 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.zd = getelementptr inbounds nuw i8, ptr %38, i64 24
  %i.ze = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 4 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %38, i64 12 ; 3 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.zh = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.zi = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.zj = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.zk = getelementptr inbounds nuw i8, ptr %40, i64 24
  %i.zl = getelementptr inbounds nuw i8, ptr %40, i64 32 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %40, i64 40
  %i.zn = getelementptr inbounds nuw i8, ptr %40, i64 56
  %i.zo = getelementptr inbounds nuw i8, ptr %40, i64 64 ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %40, i64 72
  %i.zq = getelementptr inbounds nuw i8, ptr %40, i64 88
  %i.zr = getelementptr inbounds nuw i8, ptr %40, i64 96 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %40, i64 104
  %i.zt = getelementptr inbounds nuw i8, ptr %40, i64 120
  %i.zu = getelementptr inbounds nuw i8, ptr %40, i64 132
  %i.zv = getelementptr inbounds nuw i8, ptr %40, i64 108
  %i.zw = getelementptr inbounds nuw i8, ptr %40, i64 44
  %i.zx = getelementptr inbounds nuw i8, ptr %40, i64 48
  %i.zy = getelementptr inbounds nuw i8, ptr %40, i64 112
  %i.zz = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 4 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %41, i64 32 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %41, i64 33
  %i.aac = getelementptr inbounds nuw i8, ptr %41, i64 34
  %i.aad = getelementptr inbounds nuw i8, ptr %42, i64 36
  %i.aae = getelementptr inbounds nuw i8, ptr %41, i64 12
  %brmerge = select i1 %.not598, i1 true, i1 %i.wi
  %i.aaf = getelementptr inbounds nuw i8, ptr %41, i64 24
  %scevgep = getelementptr inbounds nuw i8, ptr %i.oz, i64 64 ; 2 uses
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.ms
  %indvars.iv1820 = phi i64 [ 0, %bb.dx ], [ %indvars.iv.next1821, %bb.ms ] ; 5 uses
  %.91540 = phi i32 [ 0, %bb.dx ], [ %.31.jt25, %bb.ms ] ; 2 uses
  %.05601539 = phi i32 [ 0, %bb.dx ], [ %.1561.lcssa, %bb.ms ] ; 3 uses
  %i.aag = load ptr, ptr %i.uw, align 8, !tbaa !42
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %i.aag, i64 %indvars.iv1820
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !43 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ux, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.uy, align 8, !tbaa !118
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE, i64 16), ptr %26, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.va, i8 0, i64 16, i1 false)
  store i64 16, ptr %i.vb, align 8, !tbaa !118
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIN8NArchive3N7z5CBindEE, i64 16), ptr %i.uz, align 8, !tbaa !33
  store i32 1, ptr %i.vc, align 8, !tbaa !186
  store i8 0, ptr %i.vd, align 4, !tbaa !168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ve, i8 0, i64 16, i1 false)
  %i.aaj = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #18
          to label %bb.ea unwind label %bb.dz     ; 2 uses

bb.dz:                                            ; preds = %bb.dy
  %i.aak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.uz) #17
  call void @_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %26) #17
  br label %.body708

bb.ea:                                            ; preds = %bb.dy
  store ptr %i.aaj, ptr %i.ve, align 8, !tbaa !103
  store i32 0, ptr %i.aaj, align 4, !tbaa !12
  store i32 4, ptr %i.vf, align 4, !tbaa !174
  %i.aal = trunc i64 %indvars.iv1820 to i1
  %i.aam = load ptr, ptr %7, align 8, !tbaa !158  ; 2 uses
  br i1 %i.aal, label %bb.eb, label %bb.gf

bb.eb:                                            ; preds = %bb.ea
  %i.aan = load i8, ptr %i.vg, align 1, !tbaa !187, !range !48, !noundef !49
  %i.aao = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZN8NArchive3N7z22CCompressionMethodModeaSERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %26, ptr noundef nonnull align 8 dereferenceable(88) %i.aam)
          to label %.noexc711 unwind label %bb.ge ; 0 uses

.noexc711:                                        ; preds = %bb.eb
  %i.aap = trunc nuw i8 %i.aan to i1
  br i1 %i.aap, label %bb.ec, label %bb.fx

bb.ec:                                            ; preds = %.noexc711
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vq, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.vr, align 8, !tbaa !118
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %i.vp, align 8, !tbaa !33
  store i64 50528539, ptr %12, align 8, !tbaa !188
  store i32 4, ptr %i.vs, align 8, !tbaa !191
  store i32 1, ptr %i.vt, align 4, !tbaa !193
  %i.aaq = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18
          to label %.noexc.i unwind label %bb.fl  ; 7 uses

.noexc.i:                                         ; preds = %bb.ec
  store i64 50528539, ptr %i.aaq, align 8, !tbaa !188
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8 ; 3 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aaq, i64 16
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aaq, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aas, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.aat, align 8, !tbaa !118
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %i.aar, align 8, !tbaa !33
  %i.aau = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN13CObjectVectorI5CPropEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.aar, ptr noundef nonnull align 8 dereferenceable(32) %i.vp)
          to label %bb.ed unwind label %.body.i.i ; 0 uses

.body.i.i:                                        ; preds = %.noexc.i
  %i.aav = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.aar) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.aaq, i64 noundef 48) #19
  br label %.body.i

bb.ed:                                            ; preds = %.noexc.i
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aaq, i64 40
  %i.aax = load i64, ptr %i.vs, align 8
  store i64 %i.aax, ptr %i.aaw, align 8
  invoke void @_ZN17CBaseRecordVector13InsertOneItemEi(ptr noundef nonnull align 8 dereferenceable(88) %26, i32 noundef 0)
          to label %bb.ee unwind label %bb.fl

bb.ee:                                            ; preds = %bb.ed
  %i.aay = load ptr, ptr %i.vm, align 8, !tbaa !42
  store ptr %i.aaq, ptr %i.aay, align 8, !tbaa !43
  store i64 196865, ptr %12, align 8, !tbaa !188
  store i32 1, ptr %i.vs, align 8, !tbaa !191
  store i32 1, ptr %i.vt, align 4, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  store i16 0, ptr %i.vu, align 8, !tbaa !194
  store i16 0, ptr %i.vv, align 2, !tbaa !197
  store i32 12, ptr %13, align 8, !tbaa !198
  %i.aaz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSEj(ptr noundef nonnull align 8 dereferenceable(16) %i.vu, i32 noundef 1)
          to label %bb.ef unwind label %bb.fm     ; 0 uses

bb.ef:                                            ; preds = %bb.ee
  %i.aba = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %.noexc59.i unwind label %bb.fm ; 4 uses

.noexc59.i:                                       ; preds = %bb.ef
  %i.abb = load i32, ptr %13, align 8, !tbaa !198
  store i32 %i.abb, ptr %i.aba, align 8, !tbaa !198
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  invoke void @_ZN8NWindows4NCOM12CPropVariantC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.abc, ptr noundef nonnull align 8 dereferenceable(16) %i.vu)
          to label %_ZN5CPropC2ERKS_.exit.i.i unwind label %bb.eg

_ZN5CPropC2ERKS_.exit.i.i:                        ; preds = %.noexc59.i
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.vp)
          to label %bb.eh unwind label %bb.fm

bb.eg:                                            ; preds = %.noexc59.i
  %i.abd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aba, i64 noundef 24) #19
  br label %.body61.i

bb.eh:                                            ; preds = %_ZN5CPropC2ERKS_.exit.i.i
  %i.abe = load ptr, ptr %i.vw, align 8, !tbaa !42
  %i.abf = load i32, ptr %i.vx, align 4, !tbaa !39 ; 2 uses
  %i.abg = sext i32 %i.abf to i64
  %i.abh = getelementptr inbounds [8 x i8], ptr %i.abe, i64 %i.abg
  store ptr %i.aba, ptr %i.abh, align 8, !tbaa !43
  %i.abi = add nsw i32 %i.abf, 1
  store i32 %i.abi, ptr %i.vx, align 4, !tbaa !39
  %i.abj = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vu)
          to label %bb.ej unwind label %bb.ei     ; 0 uses

bb.ei:                                            ; preds = %bb.eh
  %i.abk = landingpad { ptr, i32 }
          catch ptr null
  %i.abl = extractvalue { ptr, i32 } %i.abk, 0
  call void @__clang_call_terminate(ptr %i.abl) #20
  unreachable

bb.ej:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  store i16 0, ptr %i.vy, align 8, !tbaa !194
  store i16 0, ptr %i.vz, align 2, !tbaa !197
  store i32 9, ptr %14, align 8, !tbaa !198
  %i.abm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSEPKw(ptr noundef nonnull align 8 dereferenceable(16) %i.vy, ptr noundef nonnull @.str.1)
          to label %bb.ek unwind label %bb.fo     ; 0 uses

bb.ek:                                            ; preds = %bb.ej
  %i.abn = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %.noexc64.i unwind label %bb.fo ; 4 uses

.noexc64.i:                                       ; preds = %bb.ek
  %i.abo = load i32, ptr %14, align 8, !tbaa !198
  store i32 %i.abo, ptr %i.abn, align 8, !tbaa !198
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abn, i64 8
  invoke void @_ZN8NWindows4NCOM12CPropVariantC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.abp, ptr noundef nonnull align 8 dereferenceable(16) %i.vy)
          to label %_ZN5CPropC2ERKS_.exit.i63.i unwind label %bb.el

_ZN5CPropC2ERKS_.exit.i63.i:                      ; preds = %.noexc64.i
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.vp)
          to label %bb.em unwind label %bb.fo

bb.el:                                            ; preds = %.noexc64.i
  %i.abq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.abn, i64 noundef 24) #19
  br label %.body66.i

bb.em:                                            ; preds = %_ZN5CPropC2ERKS_.exit.i63.i
  %i.abr = load ptr, ptr %i.vw, align 8, !tbaa !42
  %i.abs = load i32, ptr %i.vx, align 4, !tbaa !39 ; 2 uses
  %i.abt = sext i32 %i.abs to i64
  %i.abu = getelementptr inbounds [8 x i8], ptr %i.abr, i64 %i.abt
  store ptr %i.abn, ptr %i.abu, align 8, !tbaa !43
  %i.abv = add nsw i32 %i.abs, 1
  store i32 %i.abv, ptr %i.vx, align 4, !tbaa !39
  %i.abw = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vy)
          to label %bb.eo unwind label %bb.en     ; 0 uses

bb.en:                                            ; preds = %bb.em
  %i.abx = landingpad { ptr, i32 }
          catch ptr null
  %i.aby = extractvalue { ptr, i32 } %i.abx, 0
  call void @__clang_call_terminate(ptr %i.aby) #20
  unreachable

bb.eo:                                            ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  store i16 0, ptr %i.wa, align 8, !tbaa !194
  store i16 0, ptr %i.wb, align 2, !tbaa !197
  store i32 1, ptr %15, align 8, !tbaa !198
  %i.abz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSEj(ptr noundef nonnull align 8 dereferenceable(16) %i.wa, i32 noundef 1048576)
          to label %bb.ep unwind label %bb.fq     ; 0 uses

bb.ep:                                            ; preds = %bb.eo
  %i.aca = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %.noexc71.i unwind label %bb.fq ; 4 uses

.noexc71.i:                                       ; preds = %bb.ep
  %i.acb = load i32, ptr %15, align 8, !tbaa !198
  store i32 %i.acb, ptr %i.aca, align 8, !tbaa !198
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aca, i64 8
  invoke void @_ZN8NWindows4NCOM12CPropVariantC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.acc, ptr noundef nonnull align 8 dereferenceable(16) %i.wa)
          to label %_ZN5CPropC2ERKS_.exit.i70.i unwind label %bb.eq

_ZN5CPropC2ERKS_.exit.i70.i:                      ; preds = %.noexc71.i
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.vp)
          to label %bb.er unwind label %bb.fq

end_hunk_1
begin_hunk_2_@_ZN8NArchive3N7z6UpdateEP9IInStreamPKNS0_18CArchiveDatabaseExERK13CObjectVectorINS0_11CUpdateItemEERNS0_11COutArchiveERNS0_16CArchiveDatabaseEP20ISequentialOutStreamP22IArchiveUpdateCallbackRKNS0_14CUpdateOptionsEP22ICryptoGetTextPassword:bb.a

bb.fw:                                            ; preds = %bb.fi, %bb.fh, %bb.fg
  %i.agd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.fw, %_ZN5CPropD2Ev.exit113.i, %_ZN5CPropD2Ev.exit112.i, %_ZN5CPropD2Ev.exit111.i, %_ZN5CPropD2Ev.exit110.i, %_ZN5CPropD2Ev.exit109.i, %bb.fl, %.body.i96.i, %.body.i91.i, %.body.i.i
  %.pn55.i = phi { ptr, i32 } [ %i.agd, %bb.fw ], [ %eh.lpad-body62.i, %_ZN5CPropD2Ev.exit109.i ], [ %eh.lpad-body88.i, %_ZN5CPropD2Ev.exit113.i ], [ %eh.lpad-body81.i, %_ZN5CPropD2Ev.exit112.i ], [ %eh.lpad-body74.i, %_ZN5CPropD2Ev.exit111.i ], [ %eh.lpad-body67.i, %_ZN5CPropD2Ev.exit110.i ], [ %i.aav, %.body.i.i ], [ %i.ads, %.body.i91.i ], [ %i.afi, %bb.fl ], [ %i.aeg, %.body.i96.i ]
  call void @_ZN7CMethodD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %.body712

bb.fx:                                            ; preds = %.noexc711
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vi, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.vj, align 8, !tbaa !118
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %i.vh, align 8, !tbaa !33
  store i64 50528515, ptr %18, align 8, !tbaa !188
  store i32 1, ptr %i.vk, align 8, !tbaa !191
  store i32 1, ptr %i.vl, align 4, !tbaa !193
  %i.age = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18
          to label %.noexc115.i unwind label %bb.gc ; 7 uses

.noexc115.i:                                      ; preds = %bb.fx
  store i64 50528515, ptr %i.age, align 8, !tbaa !188
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 8 ; 3 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.age, i64 16
  %i.agh = getelementptr inbounds nuw i8, ptr %i.age, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agg, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.agh, align 8, !tbaa !118
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %i.agf, align 8, !tbaa !33
  %i.agi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN13CObjectVectorI5CPropEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.agf, ptr noundef nonnull align 8 dereferenceable(32) %i.vh)
          to label %bb.fy unwind label %.body.i114.i ; 0 uses

.body.i114.i:                                     ; preds = %.noexc115.i
  %i.agj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.agf) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.age, i64 noundef 48) #19
  br label %.body116.i

bb.fy:                                            ; preds = %.noexc115.i
  %i.agk = getelementptr inbounds nuw i8, ptr %i.age, i64 40
  %i.agl = load i64, ptr %i.vk, align 8
  store i64 %i.agl, ptr %i.agk, align 8
  invoke void @_ZN17CBaseRecordVector13InsertOneItemEi(ptr noundef nonnull align 8 dereferenceable(88) %26, i32 noundef 0)
          to label %bb.fz unwind label %bb.gc

bb.fz:                                            ; preds = %bb.fy
  %i.agm = load ptr, ptr %i.vm, align 8, !tbaa !42
  store ptr %i.age, ptr %i.agm, align 8, !tbaa !43
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.uz)
          to label %bb.ga unwind label %bb.gd

bb.ga:                                            ; preds = %bb.fz
  %i.agn = load ptr, ptr %i.vn, align 8, !tbaa !42
  %i.ago = load i32, ptr %i.vo, align 4, !tbaa !39
  %i.agp = sext i32 %i.ago to i64
  %i.agq = getelementptr inbounds [16 x i8], ptr %i.agn, i64 %i.agp ; 2 uses
  store i64 1, ptr %i.agq, align 4
  %.sroa.2.0..sroa_idx.i120.i = getelementptr inbounds nuw i8, ptr %i.agq, i64 8
  store i64 0, ptr %.sroa.2.0..sroa_idx.i120.i, align 4
  %i.agr = load i32, ptr %i.vo, align 4, !tbaa !39
  %i.ags = add nsw i32 %i.agr, 1
  store i32 %i.ags, ptr %i.vo, align 4, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %i.vh, align 8, !tbaa !33
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.vh)
          to label %_ZN7CMethodD2Ev.exit123.i unwind label %bb.gb, !inline_history !201

bb.gb:                                            ; preds = %bb.ga
  %i.agt = landingpad { ptr, i32 }
          catch ptr null
  %i.agu = extractvalue { ptr, i32 } %i.agt, 0
  call void @__clang_call_terminate(ptr %i.agu) #20, !inline_history !201
  unreachable

_ZN7CMethodD2Ev.exit123.i:                        ; preds = %bb.ga
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.vh) #17, !inline_history !201
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %_ZN8NArchive3N7zL13MakeExeMethodERKNS0_22CCompressionMethodModeEbRS1_.exit

bb.gc:                                            ; preds = %bb.fy, %bb.fx
  %i.agv = landingpad { ptr, i32 }
          cleanup
  br label %.body116.i

bb.gd:                                            ; preds = %bb.fz
  %i.agw = landingpad { ptr, i32 }
          cleanup
  br label %.body116.i

.body116.i:                                       ; preds = %bb.gd, %bb.gc, %.body.i114.i
  %.pn.i710 = phi { ptr, i32 } [ %i.agw, %bb.gd ], [ %i.agv, %bb.gc ], [ %i.agj, %.body.i114.i ]
  call void @_ZN7CMethodD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %.body712

bb.ge:                                            ; preds = %bb.gj, %bb.eb, %bb.gf
  %i.agx = landingpad { ptr, i32 }
          cleanup
  br label %.body712

bb.gf:                                            ; preds = %bb.ea
  %i.agy = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZN8NArchive3N7z22CCompressionMethodModeaSERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %26, ptr noundef nonnull align 8 dereferenceable(88) %i.aam)
          to label %_ZN8NArchive3N7zL13MakeExeMethodERKNS0_22CCompressionMethodModeEbRS1_.exit unwind label %bb.ge ; 0 uses

_ZN8NArchive3N7zL13MakeExeMethodERKNS0_22CCompressionMethodModeEbRS1_.exit: ; preds = %_ZN7CMethodD2Ev.exit123.i, %_ZN7CMethodD2Ev.exit.i, %bb.gf
  %.not938 = icmp samesign ult i64 %indvars.iv1820, 2
  br i1 %.not938, label %bb.gm, label %bb.gg

bb.gg:                                            ; preds = %_ZN8NArchive3N7zL13MakeExeMethodERKNS0_22CCompressionMethodModeEbRS1_.exit
  %i.agz = load i8, ptr %i.vd, align 4, !tbaa !168, !range !48, !noundef !49
  %i.aha = trunc nuw i8 %i.agz to i1
  br i1 %i.aha, label %bb.gn, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  br i1 %brmerge, label %_ZN11CStringBaseIwEaSERKS0_.exit722, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  store i32 0, ptr %i.wj, align 8, !tbaa !8
  %i.ahb = load ptr, ptr %i.ve, align 8, !tbaa !103 ; 3 uses
  store i32 0, ptr %i.ahb, align 4, !tbaa !12
  %i.ahc = load i32, ptr %i.wk, align 8, !tbaa !8 ; 2 uses
  %i.ahd = add nsw i32 %i.ahc, 1                  ; 3 uses
  %i.ahe = load i32, ptr %i.vf, align 4, !tbaa !174 ; 2 uses
  %i.ahf = icmp eq i32 %i.ahd, %i.ahe
  br i1 %i.ahf, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i714, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.ahg = zext nneg i32 %i.ahd to i64
  %i.ahh = icmp slt i32 %i.ahc, -1
  %i.ahi = shl nuw nsw i64 %i.ahg, 2
  %i.ahj = select i1 %i.ahh, i64 -1, i64 %i.ahi
  %i.ahk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ahj) #18
          to label %.noexc721 unwind label %bb.ge ; 3 uses

.noexc721:                                        ; preds = %bb.gj
  %i.ahl = icmp sgt i32 %i.ahe, 0
  br i1 %i.ahl, label %._crit_edge.thread.i.i719, label %bb.gk

._crit_edge.thread.i.i719:                        ; preds = %.noexc721
  call void @_ZdaPv(ptr noundef nonnull %i.ahb) #19
  %.pre.i720 = load i32, ptr %i.wj, align 8, !tbaa !8
  %i.ahm = sext i32 %.pre.i720 to i64
  br label %bb.gk

bb.gk:                                            ; preds = %._crit_edge.thread.i.i719, %.noexc721
  %i.ahn = phi i64 [ %i.ahm, %._crit_edge.thread.i.i719 ], [ 0, %.noexc721 ]
  store ptr %i.ahk, ptr %i.ve, align 8, !tbaa !103
  %i.aho = getelementptr inbounds [4 x i8], ptr %i.ahk, i64 %i.ahn
  store i32 0, ptr %i.aho, align 4, !tbaa !12
  store i32 %i.ahd, ptr %i.vf, align 4, !tbaa !174
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i714

_ZN11CStringBaseIwE11SetCapacityEi.exit.i714:     ; preds = %bb.gk, %bb.gi
  %i.ahp = phi ptr [ %i.ahb, %bb.gi ], [ %i.ahk, %bb.gk ]
  %i.ahq = load ptr, ptr %i.wh, align 8, !tbaa !103
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gl, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i714
  %.04.i.i715 = phi ptr [ %i.ahq, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i714 ], [ %i.ahr, %bb.gl ] ; 2 uses
  %.0.i.i716 = phi ptr [ %i.ahp, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i714 ], [ %i.aht, %bb.gl ] ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %.04.i.i715, i64 4
  %i.ahs = load i32, ptr %.04.i.i715, align 4, !tbaa !12 ; 2 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %.0.i.i716, i64 4
  store i32 %i.ahs, ptr %.0.i.i716, align 4, !tbaa !12
  %.not.i.i717 = icmp eq i32 %i.ahs, 0
  br i1 %.not.i.i717, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i718, label %bb.gl, !llvm.loop !176

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i718:         ; preds = %bb.gl
  %i.ahu = load i32, ptr %i.wk, align 8, !tbaa !8
  store i32 %i.ahu, ptr %i.wj, align 8, !tbaa !8
  br label %_ZN11CStringBaseIwEaSERKS0_.exit722

_ZN11CStringBaseIwEaSERKS0_.exit722:              ; preds = %bb.gh, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i718
  store i8 1, ptr %i.vd, align 4, !tbaa !168
  br label %bb.gn

bb.gm:                                            ; preds = %_ZN8NArchive3N7zL13MakeExeMethodERKNS0_22CCompressionMethodModeEbRS1_.exit
  store i8 0, ptr %i.vd, align 4, !tbaa !168
  store i32 0, ptr %i.wj, align 8, !tbaa !8
  %i.ahv = load ptr, ptr %i.ve, align 8, !tbaa !103
  store i32 0, ptr %i.ahv, align 4, !tbaa !12
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gg, %_ZN11CStringBaseIwEaSERKS0_.exit722, %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #17
  invoke void @_ZN8NArchive3N7z8CEncoderC1ERKNS0_22CCompressionMethodModeE(ptr noundef nonnull align 8 dereferenceable(433) %27, ptr noundef nonnull align 8 dereferenceable(88) %26)
          to label %.preheader955 unwind label %bb.go

.preheader955:                                    ; preds = %bb.gn
  %i.ahw = load i32, ptr %i.pe, align 4, !tbaa !39
  %i.ahx = icmp slt i32 %.05601539, %i.ahw
  br i1 %i.ahx, label %.lr.ph1506.preheader, label %.critedge677

.lr.ph1506.preheader:                             ; preds = %.preheader955
  %i.ahy = sext i32 %.05601539 to i64
  br label %.lr.ph1506

.lr.ph1506:                                       ; preds = %.lr.ph1506.preheader, %._crit_edge1503
  %indvars.iv1789 = phi i64 [ %i.ahy, %.lr.ph1506.preheader ], [ %indvars.iv.next1790, %._crit_edge1503 ] ; 3 uses
  %.101505 = phi i32 [ %.91540, %.lr.ph1506.preheader ], [ %.19, %._crit_edge1503 ] ; 3 uses
  %i.ahz = load ptr, ptr %i.wl, align 8, !tbaa !42
  %i.aia = getelementptr inbounds [12 x i8], ptr %i.ahz, i64 %indvars.iv1789 ; 3 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 4
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !141
  %i.aid = zext i32 %i.aic to i64
  %.not599 = icmp eq i64 %indvars.iv1820, %i.aid
  br i1 %.not599, label %bb.gp, label %.critedge677.loopexit

bb.go:                                            ; preds = %bb.gn
  %i.aie = landingpad { ptr, i32 }
          cleanup
  br label %bb.mu

bb.gp:                                            ; preds = %.lr.ph1506
  %i.aif = load i32, ptr %i.aia, align 4, !tbaa !143
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aia, i64 8 ; 2 uses
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !202
  %i.aii = load ptr, ptr %i.wm, align 8, !tbaa !42
  %i.aij = sext i32 %i.aif to i64                 ; 12 uses
  %i.aik = getelementptr inbounds [4 x i8], ptr %i.aii, i64 %i.aij
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !4
  %i.aim = icmp eq i32 %i.aih, %i.ail
  br i1 %i.aim, label %bb.gq, label %bb.hb

bb.gq:                                            ; preds = %bb.gp
  %i.ain = load ptr, ptr %i.xd, align 8, !tbaa !42
  %i.aio = getelementptr inbounds [4 x i8], ptr %i.ain, i64 %i.aij
  %i.aip = load i32, ptr %i.aio, align 4, !tbaa !4 ; 9 uses
  %i.aiq = load ptr, ptr %i.xa, align 8, !tbaa !42
  %i.air = getelementptr inbounds [8 x i8], ptr %i.aiq, i64 %i.aij
  %i.ais = load ptr, ptr %i.air, align 8, !tbaa !43
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 76
  %i.aiu = load i32, ptr %i.ait, align 4, !tbaa !39 ; 3 uses
  %i.aiv = icmp sgt i32 %i.aiu, 0
  br i1 %i.aiv, label %.lr.ph.i724, label %.loopexit946

.lr.ph.i724:                                      ; preds = %bb.gq
  %i.aiw = load ptr, ptr %i.xg, align 8, !tbaa !42 ; 6 uses
  %wide.trip.count.i725 = zext nneg i32 %i.aiu to i64 ; 6 uses
  %min.iters.check3267 = icmp ult i32 %i.aiu, 10
  br i1 %min.iters.check3267, label %scalar.ph3266.preheader, label %vector.scevcheck3265

vector.scevcheck3265:                             ; preds = %.lr.ph.i724
  %i.aix = add nsw i64 %wide.trip.count.i725, -1  ; 2 uses
  %i.aiy = trunc nsw i64 %i.aix to i32
  %i.aiz = add i32 %i.aip, %i.aiy
  %i.aja = icmp slt i32 %i.aiz, %i.aip
  %i.ajb = icmp ugt i64 %i.aix, 4294967295
  %i.ajc = or i1 %i.aja, %i.ajb
  br i1 %i.ajc, label %scalar.ph3266.preheader, label %vector.ph3268

vector.ph3268:                                    ; preds = %vector.scevcheck3265
  %n.vec3270 = and i64 %wide.trip.count.i725, 2147483644 ; 3 uses
  br label %vector.body3271

vector.body3271:                                  ; preds = %vector.body3271, %vector.ph3268
  %index3272 = phi i64 [ 0, %vector.ph3268 ], [ %index.next3277, %vector.body3271 ] ; 2 uses
  %vec.phi3273 = phi <2 x i64> [ zeroinitializer, %vector.ph3268 ], [ %i.aji, %vector.body3271 ]
  %vec.phi3274 = phi <2 x i64> [ zeroinitializer, %vector.ph3268 ], [ %i.ajj, %vector.body3271 ]
  %i.ajd = trunc nuw nsw i64 %index3272 to i32
  %i.aje = add i32 %i.aip, %i.ajd
  %i.ajf = sext i32 %i.aje to i64
  %i.ajg = getelementptr inbounds [8 x i8], ptr %i.aiw, i64 %i.ajf ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajg, i64 16
  %wide.load3275 = load <2 x i64>, ptr %i.ajg, align 8, !tbaa !132
  %wide.load3276 = load <2 x i64>, ptr %i.ajh, align 8, !tbaa !132
  %i.aji = add <2 x i64> %wide.load3275, %vec.phi3273 ; 2 uses
  %i.ajj = add <2 x i64> %wide.load3276, %vec.phi3274 ; 2 uses
  %index.next3277 = add nuw i64 %index3272, 4     ; 2 uses
  %i.ajk = icmp eq i64 %index.next3277, %n.vec3270
  br i1 %i.ajk, label %middle.block3278, label %vector.body3271, !llvm.loop !203

middle.block3278:                                 ; preds = %vector.body3271
  %bin.rdx3279 = add <2 x i64> %i.ajj, %i.aji
  %i.ajl = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx3279) ; 2 uses
  %cmp.n3280 = icmp eq i64 %n.vec3270, %wide.trip.count.i725
  br i1 %cmp.n3280, label %.loopexit946, label %scalar.ph3266.preheader

scalar.ph3266.preheader:                          ; preds = %vector.scevcheck3265, %.lr.ph.i724, %middle.block3278
  %indvars.iv.i726.ph = phi i64 [ 0, %vector.scevcheck3265 ], [ 0, %.lr.ph.i724 ], [ %n.vec3270, %middle.block3278 ] ; 3 uses
  %.0910.i727.ph = phi i64 [ 0, %vector.scevcheck3265 ], [ 0, %.lr.ph.i724 ], [ %i.ajl, %middle.block3278 ] ; 2 uses
  %xtraiter3539 = and i64 %wide.trip.count.i725, 3 ; 2 uses
  %lcmp.mod3540.not = icmp eq i64 %xtraiter3539, 0
  br i1 %lcmp.mod3540.not, label %scalar.ph3266.prol.loopexit, label %scalar.ph3266.prol

scalar.ph3266.prol:                               ; preds = %scalar.ph3266.preheader, %scalar.ph3266.prol
  %indvars.iv.i726.prol = phi i64 [ %indvars.iv.next.i728.prol, %scalar.ph3266.prol ], [ %indvars.iv.i726.ph, %scalar.ph3266.preheader ] ; 2 uses
  %.0910.i727.prol = phi i64 [ %i.ajr, %scalar.ph3266.prol ], [ %.0910.i727.ph, %scalar.ph3266.preheader ]
  %prol.iter3541 = phi i64 [ %prol.iter3541.next, %scalar.ph3266.prol ], [ 0, %scalar.ph3266.preheader ]
  %i.ajm = trunc nuw nsw i64 %indvars.iv.i726.prol to i32
  %i.ajn = add i32 %i.aip, %i.ajm
  %i.ajo = sext i32 %i.ajn to i64
  %i.ajp = getelementptr inbounds [8 x i8], ptr %i.aiw, i64 %i.ajo
  %i.ajq = load i64, ptr %i.ajp, align 8, !tbaa !132
  %i.ajr = add i64 %i.ajq, %.0910.i727.prol       ; 3 uses
  %indvars.iv.next.i728.prol = add nuw nsw i64 %indvars.iv.i726.prol, 1 ; 2 uses
  %prol.iter3541.next = add i64 %prol.iter3541, 1 ; 2 uses
  %prol.iter3541.cmp.not = icmp eq i64 %prol.iter3541.next, %xtraiter3539
  br i1 %prol.iter3541.cmp.not, label %scalar.ph3266.prol.loopexit, label %scalar.ph3266.prol, !llvm.loop !204

scalar.ph3266.prol.loopexit:                      ; preds = %scalar.ph3266.prol, %scalar.ph3266.preheader
  %.lcssa3313.unr = phi i64 [ poison, %scalar.ph3266.preheader ], [ %i.ajr, %scalar.ph3266.prol ]
  %indvars.iv.i726.unr = phi i64 [ %indvars.iv.i726.ph, %scalar.ph3266.preheader ], [ %indvars.iv.next.i728.prol, %scalar.ph3266.prol ]
  %.0910.i727.unr = phi i64 [ %.0910.i727.ph, %scalar.ph3266.preheader ], [ %i.ajr, %scalar.ph3266.prol ]
  %i.ajs = sub nsw i64 %indvars.iv.i726.ph, %wide.trip.count.i725
  %i.ajt = icmp ugt i64 %i.ajs, -4
  br i1 %i.ajt, label %.loopexit946, label %scalar.ph3266.preheader.new

scalar.ph3266.preheader.new:                      ; preds = %scalar.ph3266.prol.loopexit
  %invariant.op3774 = add i32 1, %i.aip
  %invariant.op3776 = add i32 2, %i.aip
  %invariant.op3778 = add i32 3, %i.aip
  br label %scalar.ph3266

scalar.ph3266:                                    ; preds = %scalar.ph3266, %scalar.ph3266.preheader.new
  %indvars.iv.i726 = phi i64 [ %indvars.iv.i726.unr, %scalar.ph3266.preheader.new ], [ %indvars.iv.next.i728.3, %scalar.ph3266 ] ; 5 uses
  %.0910.i727 = phi i64 [ %.0910.i727.unr, %scalar.ph3266.preheader.new ], [ %i.ako, %scalar.ph3266 ]
  %i.aju = trunc nuw nsw i64 %indvars.iv.i726 to i32
  %i.ajv = add i32 %i.aip, %i.aju
  %i.ajw = sext i32 %i.ajv to i64
  %i.ajx = getelementptr inbounds [8 x i8], ptr %i.aiw, i64 %i.ajw
  %i.ajy = load i64, ptr %i.ajx, align 8, !tbaa !132
  %i.ajz = add i64 %i.ajy, %.0910.i727
  %i.aka = trunc i64 %indvars.iv.i726 to i32
  %.reass3775 = add i32 %i.aka, %invariant.op3774
  %i.akb = sext i32 %.reass3775 to i64
  %i.akc = getelementptr inbounds [8 x i8], ptr %i.aiw, i64 %i.akb
  %i.akd = load i64, ptr %i.akc, align 8, !tbaa !132
  %i.ake = add i64 %i.akd, %i.ajz
  %i.akf = trunc i64 %indvars.iv.i726 to i32
  %.reass3777 = add i32 %i.akf, %invariant.op3776
  %i.akg = sext i32 %.reass3777 to i64
  %i.akh = getelementptr inbounds [8 x i8], ptr %i.aiw, i64 %i.akg
  %i.aki = load i64, ptr %i.akh, align 8, !tbaa !132
  %i.akj = add i64 %i.aki, %i.ake
  %i.akk = trunc i64 %indvars.iv.i726 to i32
  %.reass3779 = add i32 %i.akk, %invariant.op3778
  %i.akl = sext i32 %.reass3779 to i64
  %i.akm = getelementptr inbounds [8 x i8], ptr %i.aiw, i64 %i.akl
  %i.akn = load i64, ptr %i.akm, align 8, !tbaa !132
  %i.ako = add i64 %i.akn, %i.akj                 ; 2 uses
  %indvars.iv.next.i728.3 = add nuw nsw i64 %indvars.iv.i726, 4 ; 2 uses
  %exitcond.not.i729.3 = icmp eq i64 %indvars.iv.next.i728.3, %wide.trip.count.i725
  br i1 %exitcond.not.i729.3, label %.loopexit946, label %scalar.ph3266, !llvm.loop !205

.loopexit946:                                     ; preds = %scalar.ph3266.prol.loopexit, %scalar.ph3266, %middle.block3278, %bb.gq
  %.09.lcssa.i723 = phi i64 [ 0, %bb.gq ], [ %i.ajl, %middle.block3278 ], [ %.lcssa3313.unr, %scalar.ph3266.prol.loopexit ], [ %i.ako, %scalar.ph3266 ] ; 2 uses
  %i.akp = load ptr, ptr %i.xv, align 8, !tbaa !36
  %i.akq = load i64, ptr %i.xc, align 8, !tbaa !206
  %i.akr = load ptr, ptr %i.xe, align 8, !tbaa !42
  %i.aks = sext i32 %i.aip to i64
  %i.akt = getelementptr inbounds [8 x i8], ptr %i.akr, i64 %i.aks
  %i.aku = load i64, ptr %i.akt, align 8, !tbaa !132
  %i.akv = add i64 %i.aku, %i.akq
  %i.akw = invoke fastcc noundef i32 @_ZN8NArchive3N7zL10WriteRangeEP9IInStreamP20ISequentialOutStreamyyP21ICompressProgressInfo(ptr noundef %0, ptr noundef %i.akp, i64 noundef %i.akv, i64 noundef %.09.lcssa.i723, ptr noundef nonnull %i.oz)
          to label %bb.gr unwind label %bb.gt     ; 3 uses

bb.gr:                                            ; preds = %.loopexit946
  %.not612 = icmp eq i32 %i.akw, 0                ; 2 uses
  %.10. = select i1 %.not612, i32 %.101505, i32 %i.akw
  br i1 %.not612, label %bb.gu, label %.critedge677.thread

bb.gs:                                            ; preds = %bb.iw
  %i.akx = landingpad { ptr, i32 }
          cleanup
  br label %.body733

bb.gt:                                            ; preds = %.loopexit946
  %i.aky = landingpad { ptr, i32 }
          cleanup
  br label %.body733

bb.gu:                                            ; preds = %bb.gr
  %i.akz = load i64, ptr %i.uv, align 8, !tbaa !179
  %i.ala = add i64 %i.akz, %.09.lcssa.i723
  store i64 %i.ala, ptr %i.uv, align 8, !tbaa !179
  %i.alb = load ptr, ptr %i.xa, align 8, !tbaa !42
  %i.alc = getelementptr inbounds [8 x i8], ptr %i.alb, i64 %i.aij
  %i.ald = load ptr, ptr %i.alc, align 8, !tbaa !43 ; 2 uses
  %i.ale = load ptr, ptr %i.xd, align 8, !tbaa !42
  %i.alf = getelementptr inbounds [4 x i8], ptr %i.ale, i64 %i.aij
  %i.alg = load i32, ptr %i.alf, align 4, !tbaa !4
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ald, i64 76 ; 2 uses
  %i.ali = load i32, ptr %i.alh, align 4, !tbaa !39
  %i.alj = icmp sgt i32 %i.ali, 0
  br i1 %i.alj, label %.lr.ph1497, label %._crit_edge1498

._crit_edge1498:                                  ; preds = %bb.gz, %bb.gu
  %i.alk = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #18
          to label %.noexc731 unwind label %bb.gx ; 3 uses

.noexc731:                                        ; preds = %._crit_edge1498
  invoke void @_ZN8NArchive3N7z7CFolderC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(133) %i.alk, ptr noundef nonnull align 8 dereferenceable(133) %i.ald)
          to label %bb.gv unwind label %bb.gw

bb.gv:                                            ; preds = %.noexc731
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.yf)
          to label %bb.ha unwind label %bb.gx

bb.gw:                                            ; preds = %.noexc731
  %i.all = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.alk, i64 noundef 136) #19
  br label %.body733

bb.gx:                                            ; preds = %bb.gv, %._crit_edge1498
  %i.alm = landingpad { ptr, i32 }
          cleanup
  br label %.body733

bb.gy:                                            ; preds = %.lr.ph1497
  %i.aln = landingpad { ptr, i32 }
          cleanup
  br label %.body733

.lr.ph1497:                                       ; preds = %bb.gu, %bb.gz
  %indvars.iv1786 = phi i64 [ %indvars.iv.next1787, %bb.gz ], [ 0, %bb.gu ] ; 2 uses
  %i.alo = trunc nuw nsw i64 %indvars.iv1786 to i32
  %i.alp = add i32 %i.alg, %i.alo
  %i.alq = load ptr, ptr %i.xg, align 8, !tbaa !42
  %i.alr = sext i32 %i.alp to i64
  %i.als = getelementptr inbounds [8 x i8], ptr %i.alq, i64 %i.alr
  %i.alt = load i64, ptr %i.als, align 8, !tbaa !132
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.gz unwind label %bb.gy

bb.gz:                                            ; preds = %.lr.ph1497
  %i.alu = load ptr, ptr %i.xy, align 8, !tbaa !42
  %i.alv = load i32, ptr %i.xi, align 4, !tbaa !39 ; 2 uses
  %i.alw = sext i32 %i.alv to i64
  %i.alx = getelementptr inbounds [8 x i8], ptr %i.alu, i64 %i.alw
  store i64 %i.alt, ptr %i.alx, align 8, !tbaa !132
  %i.aly = add nsw i32 %i.alv, 1
  store i32 %i.aly, ptr %i.xi, align 4, !tbaa !39
  %indvars.iv.next1787 = add nuw nsw i64 %indvars.iv1786, 1 ; 2 uses
  %i.alz = load i32, ptr %i.alh, align 4, !tbaa !39
  %i.ama = sext i32 %i.alz to i64
  %i.amb = icmp slt i64 %indvars.iv.next1787, %i.ama
  br i1 %i.amb, label %.lr.ph1497, label %._crit_edge1498, !llvm.loop !207

bb.ha:                                            ; preds = %bb.gv
  %i.amc = load ptr, ptr %i.yg, align 8, !tbaa !42
  %i.amd = load i32, ptr %i.yh, align 4, !tbaa !39 ; 2 uses
  %i.ame = sext i32 %i.amd to i64
  %i.amf = getelementptr inbounds [8 x i8], ptr %i.amc, i64 %i.ame
  store ptr %i.alk, ptr %i.amf, align 8, !tbaa !43
  %i.amg = add nsw i32 %i.amd, 1
  store i32 %i.amg, ptr %i.yh, align 4, !tbaa !39
  br label %bb.iw

bb.hb:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #17
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization21CManualResetEventWFMOE, i64 16), ptr null>, ptr %28, align 16
  store i32 0, ptr %i.wn, align 8, !tbaa !208
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization21CManualResetEventWFMOE, i64 16), ptr null>, ptr %i.wo, align 16
  store ptr null, ptr %i.wp, align 8, !tbaa !209
  %i.amh = invoke noundef i32 @_ZN13CStreamBinder12CreateEventsEv(ptr noundef nonnull align 8 dereferenceable(184) %28)
          to label %bb.hc unwind label %bb.hd     ; 3 uses

bb.hc:                                            ; preds = %bb.hb
  %.not600 = icmp eq i32 %i.amh, 0                ; 2 uses
  %.10.678 = select i1 %.not600, i32 %.101505, i32 %i.amh
  br i1 %.not600, label %bb.he, label %bb.ik

bb.hd:                                            ; preds = %bb.hb
  %i.ami = landingpad { ptr, i32 }
          cleanup
  br label %bb.iv

bb.he:                                            ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #17
  store ptr null, ptr %29, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #17
  store ptr null, ptr %30, align 8, !tbaa !216
  invoke void @_ZN13CStreamBinder13CreateStreamsEPP19ISequentialInStreamPP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(184) %28, ptr noundef nonnull %30, ptr noundef nonnull %29)
          to label %bb.hf unwind label %bb.hi

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wq, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.wr, align 8, !tbaa !118
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIbE, i64 16), ptr %31, align 8, !tbaa !33
  %i.amj = load ptr, ptr %i.wm, align 8, !tbaa !42
  %i.amk = getelementptr inbounds [4 x i8], ptr %i.amj, i64 %i.aij
  %i.aml = load i32, ptr %i.amk, align 4, !tbaa !4 ; 2 uses
  %i.amm = load ptr, ptr %i.ws, align 8, !tbaa !42
  %i.amn = getelementptr inbounds [4 x i8], ptr %i.amm, i64 %i.aij
  %i.amo = load i32, ptr %i.amn, align 4, !tbaa !4 ; 2 uses
  %.not1549 = icmp eq i32 %i.aml, 0
  br i1 %.not1549, label %._crit_edge1490, label %.lr.ph1489

._crit_edge1490.loopexit:                         ; preds = %bb.hn
  %.pre1836 = load ptr, ptr %i.ws, align 8, !tbaa !42
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %.pre1836, i64 %i.aij
  %.pre1837 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !4
  br label %._crit_edge1490

._crit_edge1490:                                  ; preds = %._crit_edge1490.loopexit, %bb.hf
  %i.amp = phi i32 [ %.pre1837, %._crit_edge1490.loopexit ], [ %i.amo, %bb.hf ]
  %i.amq = load ptr, ptr %i.wy, align 8, !tbaa !100 ; 7 uses
  %i.amr = load ptr, ptr %29, align 8, !tbaa !36  ; 4 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amq, i64 32
  store ptr %1, ptr %i.ams, align 8, !tbaa !19
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amq, i64 56
  store i32 %i.amp, ptr %i.amt, align 8, !tbaa !31
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amq, i64 40
  store ptr %31, ptr %i.amu, align 8, !tbaa !32
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amq, i64 48 ; 2 uses
  %.not.i.i736 = icmp eq ptr %i.amr, null
  br i1 %.not.i.i736, label %.noexc737, label %bb.hg

bb.hg:                                            ; preds = %._crit_edge1490
  %i.amw = load ptr, ptr %i.amr, align 8, !tbaa !33
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 8
  %i.amy = load ptr, ptr %i.amx, align 8
  %i.amz = invoke noundef i32 %i.amy(ptr noundef nonnull align 8 dereferenceable(8) %i.amr)
          to label %.noexc737 unwind label %bb.ho, !inline_history !219 ; 0 uses

.noexc737:                                        ; preds = %bb.hg, %._crit_edge1490
  %i.ana = load ptr, ptr %i.amv, align 8, !tbaa !36 ; 3 uses
  %.not6.i.i = icmp eq ptr %i.ana, null
  br i1 %.not6.i.i, label %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit.i, label %bb.hh

bb.hh:                                            ; preds = %.noexc737
  %i.anb = load ptr, ptr %i.ana, align 8, !tbaa !33
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 16
  %i.and = load ptr, ptr %i.anc, align 8
  %i.ane = invoke noundef i32 %i.and(ptr noundef nonnull align 8 dereferenceable(8) %i.ana)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit.i unwind label %bb.ho, !inline_history !219 ; 0 uses

_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit.i: ; preds = %bb.hh, %.noexc737
  store ptr %i.amr, ptr %i.amv, align 8, !tbaa !36
  %i.anf = getelementptr inbounds nuw i8, ptr %i.amq, i64 60
  store i32 0, ptr %i.anf, align 4, !tbaa !37
  %i.ang = getelementptr inbounds nuw i8, ptr %i.amq, i64 64
  store i8 0, ptr %i.ang, align 8, !tbaa !38
  %i.anh = invoke noundef range(i32 0, 2) i32 @_ZN8NArchive3N7z17CFolderOutStream217ProcessEmptyFilesEv(ptr noundef nonnull align 8 dereferenceable(80) %i.amq)
          to label %_ZN8NArchive3N7z17CFolderOutStream24InitEPKNS0_18CArchiveDatabaseExEjPK13CRecordVectorIbEP20ISequentialOutStream.exit unwind label %bb.ho

bb.hi:                                            ; preds = %bb.he
  %i.ani = landingpad { ptr, i32 }
          cleanup
  br label %bb.iq

.lr.ph1489:                                       ; preds = %bb.hf, %bb.hn
  %.05531487 = phi i32 [ %i.aoh, %bb.hn ], [ %i.amo, %bb.hf ] ; 2 uses
  %.05541486 = phi i32 [ %.1555, %bb.hn ], [ 0, %bb.hf ] ; 2 uses
  %i.anj = load ptr, ptr %i.wt, align 8, !tbaa !42
  %i.ank = sext i32 %.05531487 to i64             ; 2 uses
  %i.anl = getelementptr inbounds [8 x i8], ptr %i.anj, i64 %i.ank
  %i.anm = load ptr, ptr %i.anl, align 8, !tbaa !43
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 32
  %i.ano = load i8, ptr %i.ann, align 8, !tbaa !123, !range !48, !noundef !49
  %i.anp = trunc nuw i8 %i.ano to i1
  br i1 %i.anp, label %bb.hj, label %bb.hm

bb.hj:                                            ; preds = %.lr.ph1489
  %i.anq = add nuw i32 %.05541486, 1              ; 2 uses
  %i.anr = load ptr, ptr %i.wu, align 8, !tbaa !42
  %i.ans = getelementptr inbounds [4 x i8], ptr %i.anr, i64 %i.ank
  %i.ant = load i32, ptr %i.ans, align 4, !tbaa !4 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN8NArchive3N7z6UpdateEP9IInStreamPKNS0_18CArchiveDatabaseExERK13CObjectVectorINS0_11CUpdateItemEERNS0_11COutArchiveERNS0_16CArchiveDatabaseEP20ISequentialOutStreamP22IArchiveUpdateCallbackRKNS0_14CUpdateOptionsEP22ICryptoGetTextPassword:bb.a
  store i64 %i.are, ptr %i.xz, align 8, !tbaa !226
  %indvars.iv.next1782.3 = add nsw i64 %indvars.iv1781, 4 ; 2 uses
  %exitcond1785.not.3 = icmp eq i64 %indvars.iv.next1782.3, %wide.trip.count1784
  br i1 %exitcond1785.not.3, label %._crit_edge1493, label %scalar.ph3289, !llvm.loop !234

._crit_edge1493:                                  ; preds = %scalar.ph3289.prol.loopexit, %scalar.ph3289, %middle.block3301, %.preheader947
  %i.arf = load i32, ptr %i.ya, align 4, !tbaa !39 ; 3 uses
  %i.arg = icmp eq i32 %i.arf, 0
  br i1 %i.arg, label %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i: ; preds = %._crit_edge1493
  %i.arh = icmp sgt i32 %i.arf, 0
  br i1 %i.arh, label %.lr.ph.i748, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i

.lr.ph.i748:                                      ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i
  %.0614.i = add nsw i32 %i.arf, -1               ; 2 uses
  %i.ari = load i32, ptr %i.yb, align 4, !tbaa !39 ; 2 uses
  %i.arj = icmp sgt i32 %i.ari, 0
  %i.ark = load ptr, ptr %i.yc, align 8
  %wide.trip.count.i.i = zext nneg i32 %i.ari to i64
  br i1 %i.arj, label %.lr.ph.i.us.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i748, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i
  %.0615.us.i = phi i32 [ %.06.us.i, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i ], [ %.0614.i, %.lr.ph.i748 ] ; 4 uses
  br label %bb.hz

bb.hz:                                            ; preds = %bb.ia, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.ia ] ; 2 uses
  %i.arl = getelementptr inbounds nuw [8 x i8], ptr %i.ark, i64 %indvars.iv.i.us.i
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 4
  %i.arn = load i32, ptr %i.arm, align 4, !tbaa !235
  %i.aro = icmp eq i32 %i.arn, %.0615.us.i
  br i1 %i.aro, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i, label %bb.hz, !llvm.loop !236

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i: ; preds = %bb.hz
  %.06.us.i = add nsw i32 %.0615.us.i, -1
  %i.arp = icmp sgt i32 %.0615.us.i, 0
  br i1 %i.arp, label %.lr.ph.i.us.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i, !llvm.loop !237

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i: ; preds = %bb.ia, %.lr.ph.i748
  %.0613.i = phi i32 [ %.0614.i, %.lr.ph.i748 ], [ %.0615.us.i, %bb.ia ]
  %i.arq = load ptr, ptr %i.yd, align 8, !tbaa !42
  %i.arr = sext i32 %.0613.i to i64
  %i.ars = getelementptr inbounds [8 x i8], ptr %i.arq, i64 %i.arr
  %i.art = load i64, ptr %i.ars, align 8, !tbaa !132
  br label %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i: ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i
  %i.aru = call ptr @__cxa_allocate_exception(i64 4) #17 ; 2 uses
  store i32 1, ptr %i.aru, align 16, !tbaa !4
  invoke void @__cxa_throw(ptr nonnull %i.aru, ptr nonnull @_ZTIi, ptr null) #21
          to label %.noexc749 unwind label %.loopexit.split-lp957

.noexc749:                                        ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i
  unreachable

_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit:  ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i, %._crit_edge1493
  %.1.i = phi i64 [ %i.art, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i ], [ 0, %._crit_edge1493 ]
  %i.arv = load i64, ptr %i.ye, align 8, !tbaa !238
  %i.arw = add i64 %i.arv, %.1.i
  store i64 %i.arw, ptr %i.ye, align 8, !tbaa !238
  %i.arx = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #18
          to label %.noexc750 unwind label %.loopexit956 ; 3 uses

.noexc750:                                        ; preds = %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit
  invoke void @_ZN8NArchive3N7z7CFolderC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(133) %i.arx, ptr noundef nonnull align 8 dereferenceable(133) %32)
          to label %bb.ib unwind label %bb.ic

bb.ib:                                            ; preds = %.noexc750
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.yf)
          to label %_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE3AddERKS2_.exit754 unwind label %.loopexit956

bb.ic:                                            ; preds = %.noexc750
  %i.ary = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.arx, i64 noundef 136) #19
  br label %.body752

_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE3AddERKS2_.exit754: ; preds = %bb.ib
  %i.arz = load ptr, ptr %i.yg, align 8, !tbaa !42
  %i.asa = load i32, ptr %i.yh, align 4, !tbaa !39 ; 2 uses
  %i.asb = sext i32 %i.asa to i64
  %i.asc = getelementptr inbounds [8 x i8], ptr %i.arz, i64 %i.asb
  store ptr %i.arx, ptr %i.asc, align 8, !tbaa !43
  %i.asd = add nsw i32 %i.asa, 1
  store i32 %i.asd, ptr %i.yh, align 4, !tbaa !39
  br label %bb.id

bb.id:                                            ; preds = %_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE3AddERKS2_.exit754, %_ZN11CVirtThread10WaitFinishEv.exit, %bb.hv
  %i.ase = phi i1 [ false, %bb.hv ], [ false, %_ZN11CVirtThread10WaitFinishEv.exit ], [ true, %_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE3AddERKS2_.exit754 ]
  %.16 = phi i32 [ %i.app, %bb.hv ], [ %i.apt, %_ZN11CVirtThread10WaitFinishEv.exit ], [ %.10.678..., %_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE3AddERKS2_.exit754 ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.xr) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.xo) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.xl) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE, i64 16), ptr %32, align 8, !tbaa !33
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(133) %32)
          to label %_ZN8NArchive3N7z7CFolderD2Ev.exit unwind label %bb.ie, !inline_history !239

bb.ie:                                            ; preds = %bb.id
  %i.asf = landingpad { ptr, i32 }
          catch ptr null
  %i.asg = extractvalue { ptr, i32 } %i.asf, 0
  call void @__clang_call_terminate(ptr %i.asg) #20, !inline_history !239
  unreachable

_ZN8NArchive3N7z7CFolderD2Ev.exit:                ; preds = %bb.id
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(133) %32) #17, !inline_history !239
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #17
  br label %bb.if

bb.if:                                            ; preds = %_ZN8NArchive3N7z17CFolderOutStream24InitEPKNS0_18CArchiveDatabaseExEjPK13CRecordVectorIbEP20ISequentialOutStream.exit, %_ZN8NArchive3N7z7CFolderD2Ev.exit
  %.14399 = phi i1 [ %i.ase, %_ZN8NArchive3N7z7CFolderD2Ev.exit ], [ false, %_ZN8NArchive3N7z17CFolderOutStream24InitEPKNS0_18CArchiveDatabaseExEjPK13CRecordVectorIbEP20ISequentialOutStream.exit ]
  %.17 = phi i32 [ %.16, %_ZN8NArchive3N7z7CFolderD2Ev.exit ], [ 1, %_ZN8NArchive3N7z17CFolderOutStream24InitEPKNS0_18CArchiveDatabaseExEjPK13CRecordVectorIbEP20ISequentialOutStream.exit ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %31) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #17
  %i.ash = load ptr, ptr %30, align 8, !tbaa !216 ; 3 uses
  %.not.i755 = icmp eq ptr %i.ash, null
  br i1 %.not.i755, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.asi = load ptr, ptr %i.ash, align 8, !tbaa !33
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 16
  %i.ask = load ptr, ptr %i.asj, align 8
  %i.asl = invoke noundef i32 %i.ask(ptr noundef nonnull align 8 dereferenceable(8) %i.ash)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit unwind label %bb.ih ; 0 uses

bb.ih:                                            ; preds = %bb.ig
  %i.asm = landingpad { ptr, i32 }
          catch ptr null
  %i.asn = extractvalue { ptr, i32 } %i.asm, 0
  call void @__clang_call_terminate(ptr %i.asn) #20
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit:    ; preds = %bb.if, %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17
  %i.aso = load ptr, ptr %29, align 8, !tbaa !36  ; 3 uses
  %.not.i756 = icmp eq ptr %i.aso, null
  br i1 %.not.i756, label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit, label %bb.ii

bb.ii:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !33
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 16
  %i.asr = load ptr, ptr %i.asq, align 8
  %i.ass = invoke noundef i32 %i.asr(ptr noundef nonnull align 8 dereferenceable(8) %i.aso)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit unwind label %bb.ij ; 0 uses

bb.ij:                                            ; preds = %bb.ii
  %i.ast = landingpad { ptr, i32 }
          catch ptr null
  %i.asu = extractvalue { ptr, i32 } %i.ast, 0
  call void @__clang_call_terminate(ptr %i.asu) #20
  unreachable

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit:   ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit, %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #17
  br label %bb.ik

bb.ik:                                            ; preds = %bb.hc, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit
  %.15400 = phi i1 [ %.14399, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit ], [ false, %bb.hc ]
  %.18 = phi i32 [ %.17, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit ], [ %i.amh, %bb.hc ] ; 2 uses
  %i.asv = load ptr, ptr %i.wp, align 8, !tbaa !209 ; 5 uses
  %.not.i757 = icmp eq ptr %i.asv, null
  br i1 %.not.i757, label %bb.in, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 88
  %i.asx = load i8, ptr %i.asw, align 8, !tbaa !240, !range !48, !noundef !49
  %i.asy = trunc nuw i8 %i.asx to i1
  br i1 %i.asy, label %bb.im, label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i

bb.im:                                            ; preds = %bb.il
  %i.asz = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(89) %i.asv) #17 ; 0 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asv, i64 40
  %i.atb = call i32 @pthread_cond_destroy(ptr noundef nonnull %i.ata) #17 ; 0 uses
  br label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i

_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i: ; preds = %bb.im, %bb.il
  call void @_ZdlPvm(ptr noundef nonnull %i.asv, i64 noundef 96) #19
  br label %bb.in

bb.in:                                            ; preds = %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i, %bb.ik
  store ptr null, ptr %i.wp, align 8, !tbaa !209
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE, i64 16), ptr null>, ptr %i.wo, align 16
  %i.atc = invoke noundef i32 @Event_Close(ptr noundef nonnull align 8 dereferenceable(104) %i.wn)
          to label %_ZN13CStreamBinderD2Ev.exit unwind label %bb.io ; 0 uses

bb.io:                                            ; preds = %bb.in
  %i.atd = landingpad { ptr, i32 }
          catch ptr null
  %i.ate = extractvalue { ptr, i32 } %i.atd, 0
  call void @__clang_call_terminate(ptr %i.ate) #20
  unreachable

_ZN13CStreamBinderD2Ev.exit:                      ; preds = %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17
  br i1 %.15400, label %bb.iw, label %.critedge677.thread

.body752:                                         ; preds = %.loopexit956, %.loopexit.split-lp957, %bb.ic, %bb.hx
  %.pn604 = phi { ptr, i32 } [ %i.apr, %bb.hx ], [ %i.ary, %bb.ic ], [ %lpad.loopexit958, %.loopexit956 ], [ %lpad.loopexit.split-lp959, %.loopexit.split-lp957 ]
  call void @_ZN8NArchive3N7z7CFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(133) dereferenceable(133) %32) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #17
  br label %bb.ip

bb.ip:                                            ; preds = %.body752, %bb.hw, %bb.ho, %bb.hl
  %.pn607 = phi { ptr, i32 } [ %i.aob, %bb.hl ], [ %.pn604, %.body752 ], [ %i.apq, %bb.hw ], [ %i.aoj, %bb.ho ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %31) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #17
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.hi
  %.pn607.pn = phi { ptr, i32 } [ %.pn607, %bb.ip ], [ %i.ani, %bb.hi ]
  %i.atf = load ptr, ptr %30, align 8, !tbaa !216 ; 3 uses
  %.not.i758 = icmp eq ptr %i.atf, null
  br i1 %.not.i758, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit759, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.atg = load ptr, ptr %i.atf, align 8, !tbaa !33
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 16
  %i.ati = load ptr, ptr %i.ath, align 8
  %i.atj = invoke noundef i32 %i.ati(ptr noundef nonnull align 8 dereferenceable(8) %i.atf)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit759 unwind label %bb.is ; 0 uses

bb.is:                                            ; preds = %bb.ir
  %i.atk = landingpad { ptr, i32 }
          catch ptr null
  %i.atl = extractvalue { ptr, i32 } %i.atk, 0
  call void @__clang_call_terminate(ptr %i.atl) #20
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit759: ; preds = %bb.iq, %bb.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17
  %i.atm = load ptr, ptr %29, align 8, !tbaa !36  ; 3 uses
  %.not.i760 = icmp eq ptr %i.atm, null
  br i1 %.not.i760, label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit761, label %bb.it

bb.it:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit759
  %i.atn = load ptr, ptr %i.atm, align 8, !tbaa !33
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atn, i64 16
  %i.atp = load ptr, ptr %i.ato, align 8
  %i.atq = invoke noundef i32 %i.atp(ptr noundef nonnull align 8 dereferenceable(8) %i.atm)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit761 unwind label %bb.iu ; 0 uses

bb.iu:                                            ; preds = %bb.it
  %i.atr = landingpad { ptr, i32 }
          catch ptr null
  %i.ats = extractvalue { ptr, i32 } %i.atr, 0
  call void @__clang_call_terminate(ptr %i.ats) #20
  unreachable

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit761: ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit759, %bb.it
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #17
  br label %bb.iv

bb.iv:                                            ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit761, %bb.hd
  %.pn607.pn.pn = phi { ptr, i32 } [ %.pn607.pn, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit761 ], [ %i.ami, %bb.hd ]
  call void @_ZN13CStreamBinderD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %28) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17
  br label %.body733

bb.iw:                                            ; preds = %bb.ha, %_ZN13CStreamBinderD2Ev.exit
  %.19 = phi i32 [ %.10., %bb.ha ], [ %.18, %_ZN13CStreamBinderD2Ev.exit ] ; 2 uses
  %i.att = load i32, ptr %i.aig, align 4, !tbaa !202
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.yi)
          to label %bb.ix unwind label %bb.gs

bb.ix:                                            ; preds = %bb.iw
  %i.atu = load ptr, ptr %i.yj, align 8, !tbaa !42
  %i.atv = load i32, ptr %i.yk, align 4, !tbaa !39
  %i.atw = sext i32 %i.atv to i64
  %i.atx = getelementptr inbounds [4 x i8], ptr %i.atu, i64 %i.atw
  store i32 %i.att, ptr %i.atx, align 4, !tbaa !4
  %i.aty = load i32, ptr %i.yk, align 4, !tbaa !39
  %i.atz = add nsw i32 %i.aty, 1
  store i32 %i.atz, ptr %i.yk, align 4, !tbaa !39
  %i.aua = load ptr, ptr %i.wm, align 8, !tbaa !42
  %i.aub = getelementptr inbounds [4 x i8], ptr %i.aua, i64 %i.aij
  %i.auc = load i32, ptr %i.aub, align 4, !tbaa !4 ; 2 uses
  %.not1550 = icmp eq i32 %i.auc, 0
  br i1 %.not1550, label %._crit_edge1503, label %.lr.ph1502.preheader

.lr.ph1502.preheader:                             ; preds = %bb.ix
  %i.aud = load ptr, ptr %i.ws, align 8, !tbaa !42
  %i.aue = getelementptr inbounds [4 x i8], ptr %i.aud, i64 %i.aij
  %i.auf = load i32, ptr %i.aue, align 4, !tbaa !4
  br label %.lr.ph1502

.lr.ph1502:                                       ; preds = %.lr.ph1502.preheader, %_ZN8NArchive3N7z9CFileItemD2Ev.exit769
  %.05291500 = phi i32 [ %i.awi, %_ZN8NArchive3N7z9CFileItemD2Ev.exit769 ], [ %i.auf, %.lr.ph1502.preheader ] ; 3 uses
  %.05301499 = phi i32 [ %.2532, %_ZN8NArchive3N7z9CFileItemD2Ev.exit769 ], [ 0, %.lr.ph1502.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #17
  store i64 17179869184, ptr %i.yu, align 8
  %i.aug = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #18
          to label %bb.iy unwind label %bb.jc     ; 2 uses

bb.iy:                                            ; preds = %.lr.ph1502
  store ptr %i.aug, ptr %i.yl, align 8, !tbaa !103
  store i32 0, ptr %i.aug, align 4, !tbaa !12
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.yn, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #17
  invoke void @_ZNK8NArchive3N7z16CArchiveDatabase7GetFileEiRNS0_9CFileItemERNS0_10CFileItem2E(ptr noundef nonnull align 8 dereferenceable(480) %1, i32 noundef %.05291500, ptr noundef nonnull align 8 dereferenceable(36) %33, ptr noundef nonnull align 8 dereferenceable(40) %34)
          to label %bb.iz unwind label %bb.jd

bb.iz:                                            ; preds = %bb.iy
  %i.auh = load i8, ptr %i.yn, align 8, !tbaa !123, !range !48, !noundef !49
  %i.aui = trunc nuw i8 %i.auh to i1
  br i1 %i.aui, label %bb.ja, label %.critedge682

bb.ja:                                            ; preds = %bb.iz
  %i.auj = add nuw i32 %.05301499, 1              ; 3 uses
  %i.auk = load ptr, ptr %i.wu, align 8, !tbaa !42
  %i.aul = sext i32 %.05291500 to i64
  %i.aum = getelementptr inbounds [4 x i8], ptr %i.auk, i64 %i.aul
  %i.aun = load i32, ptr %i.aum, align 4, !tbaa !4 ; 2 uses
  %i.auo = icmp sgt i32 %i.aun, -1
  br i1 %i.auo, label %bb.jb, label %.critedge682

bb.jb:                                            ; preds = %bb.ja
  %i.aup = load ptr, ptr %i.wv, align 8, !tbaa !42
  %i.auq = zext nneg i32 %i.aun to i64
  %i.aur = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %i.auq
  %i.aus = load ptr, ptr %i.aur, align 8, !tbaa !43 ; 3 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aus, i64 60
  %i.auu = load i8, ptr %i.aut, align 4, !tbaa !124, !range !48, !noundef !49
  %i.auv = trunc nuw i8 %i.auu to i1
  br i1 %i.auv, label %.critedge682, label %bb.jf

bb.jc:                                            ; preds = %.lr.ph1502
  %i.auw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8NArchive3N7z9CFileItemD2Ev.exit770

bb.jd:                                            ; preds = %bb.iy
  %i.aux = landingpad { ptr, i32 }
          cleanup
  br label %bb.jt

bb.je:                                            ; preds = %bb.jr
  %i.auy = landingpad { ptr, i32 }
          cleanup
  br label %bb.jt

bb.jf:                                            ; preds = %bb.jb
  %i.auz = getelementptr inbounds nuw i8, ptr %i.aus, i64 61
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !242, !range !48, !noundef !49
  %i.avb = trunc nuw i8 %i.ava to i1
  br i1 %i.avb, label %bb.jg, label %bb.jr

bb.jg:                                            ; preds = %bb.jf
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #17
  store i64 17179869184, ptr %i.yv, align 8
  %i.avc = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #18
          to label %bb.jh unwind label %bb.jo     ; 2 uses

bb.jh:                                            ; preds = %bb.jg
  store ptr %i.avc, ptr %i.yp, align 8, !tbaa !103
  store i32 0, ptr %i.avc, align 4, !tbaa !12
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.yq, align 8, !tbaa !47
  invoke fastcc void @_ZN8NArchive3N7zL24FromUpdateItemToFileItemERKNS0_11CUpdateItemERNS0_9CFileItemERNS0_10CFileItem2E(ptr noundef nonnull align 8 dereferenceable(68) %i.aus, ptr noundef nonnull align 8 dereferenceable(36) %35, ptr noundef nonnull align 8 dereferenceable(40) %34)
          to label %bb.ji unwind label %bb.jp

bb.ji:                                            ; preds = %bb.jh
  %i.avd = load i64, ptr %33, align 8, !tbaa !44
  store i64 %i.avd, ptr %35, align 8, !tbaa !44
  %i.ave = load i32, ptr %i.ys, align 4, !tbaa !59
  store i32 %i.ave, ptr %i.yt, align 4, !tbaa !59
  %i.avf = load i8, ptr %i.yo, align 2, !tbaa !58, !range !48, !noundef !49
  store i8 %i.avf, ptr %i.yr, align 2, !tbaa !58
  %i.avg = load i8, ptr %i.yn, align 8, !tbaa !123, !range !48, !noundef !49
  store i8 %i.avg, ptr %i.yq, align 8, !tbaa !123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %33, ptr noundef nonnull align 8 dereferenceable(36) %35, i64 16, i1 false)
  store i32 0, ptr %i.yu, align 8, !tbaa !8
  %i.avh = load ptr, ptr %i.yl, align 8, !tbaa !103 ; 3 uses
  store i32 0, ptr %i.avh, align 4, !tbaa !12
  %i.avi = load i32, ptr %i.yv, align 8, !tbaa !8 ; 3 uses
  %i.avj = add nsw i32 %i.avi, 1                  ; 3 uses
  %i.avk = load i32, ptr %i.ym, align 4, !tbaa !174 ; 2 uses
  %i.avl = icmp eq i32 %i.avj, %i.avk
  br i1 %i.avl, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.avm = zext nneg i32 %i.avj to i64
  %i.avn = icmp slt i32 %i.avi, -1
  %i.avo = shl nuw nsw i64 %i.avm, 2
  %i.avp = select i1 %i.avn, i64 -1, i64 %i.avo
  %i.avq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.avp) #18
          to label %.noexc767 unwind label %bb.jp ; 3 uses

.noexc767:                                        ; preds = %bb.jj
  %i.avr = icmp sgt i32 %i.avk, 0
  br i1 %i.avr, label %._crit_edge.thread.i.i.i, label %bb.jk

._crit_edge.thread.i.i.i:                         ; preds = %.noexc767
  call void @_ZdaPv(ptr noundef nonnull %i.avh) #19
  %.pre.i.i = load i32, ptr %i.yu, align 8, !tbaa !8
  %i.avs = sext i32 %.pre.i.i to i64
  br label %bb.jk

bb.jk:                                            ; preds = %._crit_edge.thread.i.i.i, %.noexc767
  %i.avt = phi i64 [ %i.avs, %._crit_edge.thread.i.i.i ], [ 0, %.noexc767 ]
  store ptr %i.avq, ptr %i.yl, align 8, !tbaa !103
  %i.avu = getelementptr inbounds [4 x i8], ptr %i.avq, i64 %i.avt
  store i32 0, ptr %i.avu, align 4, !tbaa !12
  store i32 %i.avj, ptr %i.ym, align 4, !tbaa !174
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %bb.jk, %bb.ji
  %i.avv = phi ptr [ %i.avh, %bb.ji ], [ %i.avq, %bb.jk ]
  %i.avw = load ptr, ptr %i.yp, align 8, !tbaa !103 ; 3 uses
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jl, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.avw, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.avx, %bb.jl ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.avv, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.avz, %bb.jl ] ; 2 uses
  %i.avx = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  %i.avy = load i32, ptr %.04.i.i.i, align 4, !tbaa !12 ; 2 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  store i32 %i.avy, ptr %.0.i.i.i, align 4, !tbaa !12
  %.not.i.i.i = icmp eq i32 %i.avy, 0
  br i1 %.not.i.i.i, label %bb.jm, label %bb.jl, !llvm.loop !176

bb.jm:                                            ; preds = %bb.jl
  store i32 %i.avi, ptr %i.yu, align 8, !tbaa !8
  %i.awa = load i32, ptr %i.yq, align 8
  store i32 %i.awa, ptr %i.yn, align 8
  %i.awb = icmp eq ptr %i.avw, null
  br i1 %i.awb, label %_ZN8NArchive3N7z9CFileItemD2Ev.exit, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  call void @_ZdaPv(ptr noundef nonnull %i.avw) #19
  br label %_ZN8NArchive3N7z9CFileItemD2Ev.exit

_ZN8NArchive3N7z9CFileItemD2Ev.exit:              ; preds = %bb.jm, %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #17
  br label %bb.jr

bb.jo:                                            ; preds = %bb.jg
  %i.awc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8NArchive3N7z9CFileItemD2Ev.exit768

bb.jp:                                            ; preds = %bb.jj, %bb.jh
  %i.awd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.awe = load ptr, ptr %i.yp, align 8, !tbaa !103 ; 2 uses
  %i.awf = icmp eq ptr %i.awe, null
  br i1 %i.awf, label %_ZN8NArchive3N7z9CFileItemD2Ev.exit768, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  call void @_ZdaPv(ptr noundef nonnull %i.awe) #19
  br label %_ZN8NArchive3N7z9CFileItemD2Ev.exit768

_ZN8NArchive3N7z9CFileItemD2Ev.exit768:           ; preds = %bb.jq, %bb.jp, %bb.jo
  %.pn613 = phi { ptr, i32 } [ %i.awc, %bb.jo ], [ %i.awd, %bb.jp ], [ %i.awd, %bb.jq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #17
  br label %bb.jt

bb.jr:                                            ; preds = %_ZN8NArchive3N7z9CFileItemD2Ev.exit, %bb.jf
  invoke void @_ZN8NArchive3N7z16CArchiveDatabase7AddFileERKNS0_9CFileItemERKNS0_10CFileItem2E(ptr noundef nonnull align 8 dereferenceable(480) %4, ptr noundef nonnull align 8 dereferenceable(36) %33, ptr noundef nonnull align 8 dereferenceable(40) %34)
          to label %.critedge682 unwind label %bb.je

.critedge682:                                     ; preds = %bb.jr, %bb.jb, %bb.ja, %bb.iz
  %.2532 = phi i32 [ %.05301499, %bb.iz ], [ %i.auj, %bb.jb ], [ %i.auj, %bb.ja ], [ %i.auj, %bb.jr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #17
  %i.awg = load ptr, ptr %i.yl, align 8, !tbaa !103 ; 2 uses
  %i.awh = icmp eq ptr %i.awg, null
  br i1 %i.awh, label %_ZN8NArchive3N7z9CFileItemD2Ev.exit769, label %bb.js

bb.js:                                            ; preds = %.critedge682
  call void @_ZdaPv(ptr noundef nonnull %i.awg) #19
  br label %_ZN8NArchive3N7z9CFileItemD2Ev.exit769

_ZN8NArchive3N7z9CFileItemD2Ev.exit769:           ; preds = %.critedge682, %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #17
  %i.awi = add i32 %.05291500, 1
  %i.awj = icmp ult i32 %.2532, %i.auc
  br i1 %i.awj, label %.lr.ph1502, label %._crit_edge1503, !llvm.loop !243

bb.jt:                                            ; preds = %bb.je, %_ZN8NArchive3N7z9CFileItemD2Ev.exit768, %bb.jd
  %.pn615.pn = phi { ptr, i32 } [ %i.aux, %bb.jd ], [ %i.auy, %bb.je ], [ %.pn613, %_ZN8NArchive3N7z9CFileItemD2Ev.exit768 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #17
  %i.awk = load ptr, ptr %i.yl, align 8, !tbaa !103 ; 2 uses
  %i.awl = icmp eq ptr %i.awk, null
  br i1 %i.awl, label %_ZN8NArchive3N7z9CFileItemD2Ev.exit770, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  call void @_ZdaPv(ptr noundef nonnull %i.awk) #19
  br label %_ZN8NArchive3N7z9CFileItemD2Ev.exit770

_ZN8NArchive3N7z9CFileItemD2Ev.exit770:           ; preds = %bb.ju, %bb.jt, %bb.jc
  %.pn615.pn.pn = phi { ptr, i32 } [ %i.auw, %bb.jc ], [ %.pn615.pn, %bb.jt ], [ %.pn615.pn, %bb.ju ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #17
  br label %.body733

._crit_edge1503:                                  ; preds = %_ZN8NArchive3N7z9CFileItemD2Ev.exit769, %bb.ix
  %indvars.iv.next1790 = add nsw i64 %indvars.iv1789, 1 ; 3 uses
  %i.awm = load i32, ptr %i.pe, align 4, !tbaa !39
  %i.awn = sext i32 %i.awm to i64
  %i.awo = icmp slt i64 %indvars.iv.next1790, %i.awn
  br i1 %i.awo, label %.lr.ph1506, label %.critedge677.loopexit, !llvm.loop !244

.critedge677.loopexit:                            ; preds = %._crit_edge1503, %.lr.ph1506
  %indvars.iv.next1790.lcssa.sink = phi i64 [ %indvars.iv1789, %.lr.ph1506 ], [ %indvars.iv.next1790, %._crit_edge1503 ]
  %.10.lcssa.ph = phi i32 [ %.101505, %.lr.ph1506 ], [ %.19, %._crit_edge1503 ]
  %indvars.le = trunc i64 %indvars.iv.next1790.lcssa.sink to i32
  br label %.critedge677

.critedge677:                                     ; preds = %.critedge677.loopexit, %.preheader955
  %.1561.lcssa = phi i32 [ %.05601539, %.preheader955 ], [ %indvars.le, %.critedge677.loopexit ] ; 2 uses
  %.10.lcssa = phi i32 [ %.91540, %.preheader955 ], [ %.10.lcssa.ph, %.critedge677.loopexit ] ; 2 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %i.aai, i64 12
  %i.awq = load i32, ptr %i.awp, align 4, !tbaa !39 ; 8 uses
  %i.awr = icmp eq i32 %i.awq, 0
  br i1 %i.awr, label %.critedge677.thread.jt25, label %bb.jv

bb.jv:                                            ; preds = %.critedge677
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yw, i8 0, i64 16, i1 false)
  store i64 24, ptr %i.yx, align 8, !tbaa !118
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIN8NArchive3N7z8CRefItemEE, i64 16), ptr %36, align 8, !tbaa !33
  invoke void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %36, i32 noundef %i.awq)
          to label %bb.jw unwind label %bb.ka

bb.jw:                                            ; preds = %bb.jv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i8 %i.yz, ptr %i.d, align 1, !tbaa !47
  %i.aws = icmp sgt i32 %i.awq, 0                 ; 2 uses
  br i1 %i.aws, label %.lr.ph1514, label %.._crit_edge1515_crit_edge

.._crit_edge1515_crit_edge:                       ; preds = %bb.jw
  %.pre1838 = load i32, ptr %i.zb, align 4, !tbaa !39
  br label %._crit_edge1515

.lr.ph1514:                                       ; preds = %bb.jw
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aai, i64 16
  %wide.trip.count1796 = zext nneg i32 %i.awq to i64
  br label %bb.jx

bb.jx:                                            ; preds = %.lr.ph1514, %bb.jz
  %indvars.iv1792 = phi i64 [ 0, %.lr.ph1514 ], [ %indvars.iv.next1793, %bb.jz ] ; 2 uses
  %i.awu = load ptr, ptr %i.awt, align 8, !tbaa !42
  %i.awv = getelementptr inbounds nuw [4 x i8], ptr %i.awu, i64 %indvars.iv1792
  %i.aww = load i32, ptr %i.awv, align 4, !tbaa !4 ; 2 uses
  %i.awx = load ptr, ptr %i.wv, align 8, !tbaa !42
  %i.awy = sext i32 %i.aww to i64
  %i.awz = getelementptr inbounds [8 x i8], ptr %i.awx, i64 %i.awy
  %i.axa = load ptr, ptr %i.awz, align 8, !tbaa !43
  invoke void @_ZN8NArchive3N7z8CRefItemC2EjRKNS0_11CUpdateItemEb(ptr noundef nonnull align 8 dereferenceable(24) %37, i32 noundef %i.aww, ptr noundef nonnull align 8 dereferenceable(68) %i.axa, i1 noundef zeroext %i.yy)
          to label %bb.jy unwind label %.loopexit.split-lp.loopexit.split-lp

bb.jy:                                            ; preds = %bb.jx
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %37, i64 24, i1 false)
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %bb.jz unwind label %.loopexit.split-lp.loopexit.split-lp

bb.jz:                                            ; preds = %bb.jy
  %i.axb = load ptr, ptr %i.za, align 8, !tbaa !42
  %i.axc = load i32, ptr %i.zb, align 4, !tbaa !39
  %i.axd = sext i32 %i.axc to i64
  %i.axe = getelementptr inbounds [24 x i8], ptr %i.axb, i64 %i.axd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.axe, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !245
  %i.axf = load i32, ptr %i.zb, align 4, !tbaa !39
  %i.axg = add nsw i32 %i.axf, 1                  ; 2 uses
  store i32 %i.axg, ptr %i.zb, align 4, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %indvars.iv.next1793 = add nuw nsw i64 %indvars.iv1792, 1 ; 2 uses
  %exitcond1797.not = icmp eq i64 %indvars.iv.next1793, %wide.trip.count1796
  br i1 %exitcond1797.not, label %._crit_edge1515, label %bb.jx, !llvm.loop !248

bb.ka:                                            ; preds = %bb.jv
  %i.axh = landingpad { ptr, i32 }
          cleanup
  br label %bb.mt

.loopexit942:                                     ; preds = %bb.kg, %bb.kh
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.ke, %bb.kd
  %lpad.loopexit943 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.jy, %bb.jx
  %lpad.loopexit.split-lp944 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

._crit_edge1515:                                  ; preds = %bb.jz, %.._crit_edge1515_crit_edge
  %i.axi = phi i32 [ %.pre1838, %.._crit_edge1515_crit_edge ], [ %i.axg, %bb.jz ] ; 6 uses
  %i.axj = icmp slt i32 %i.axi, 2
  br i1 %i.axj, label %_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEE4SortEPFiPKS2_S5_PvES6_.exit, label %bb.kb

bb.kb:                                            ; preds = %._crit_edge1515
  %i.axk = load ptr, ptr %i.za, align 8, !tbaa !42 ; 5 uses
  %i.axl = getelementptr inbounds i8, ptr %i.axk, i64 -24 ; 11 uses
  %i.axm = zext nneg i32 %i.axi to i64            ; 3 uses
  %i.axn = lshr i64 %i.axm, 1
  br label %bb.kc

bb.kc:                                            ; preds = %_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEE11SortRefDownEPS2_iiPFiPKS2_S6_PvES7_.exit.i, %bb.kb
  %indvars.iv.i772 = phi i64 [ %indvars.iv.next.i777, %_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEE11SortRefDownEPS2_iiPFiPKS2_S6_PvES7_.exit.i ], [ %i.axn, %bb.kb ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.axo = getelementptr inbounds nuw [24 x i8], ptr %i.axl, i64 %indvars.iv.i772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.axo, i64 24, i1 false), !tbaa.struct !245
  %i.axp = trunc nuw nsw i64 %indvars.iv.i772 to i32 ; 2 uses
  %i.axq = shl nuw nsw i32 %i.axp, 1              ; 2 uses
  %i.axr = icmp sgt i32 %i.axq, %i.axi
  br i1 %i.axr, label %_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEE11SortRefDownEPS2_iiPFiPKS2_S6_PvES7_.exit.i, label %.lr.ph.i.i773

.lr.ph.i.i773:                                    ; preds = %bb.kc, %bb.kf
  %i.axs = phi i32 [ %i.ayf, %bb.kf ], [ %i.axq, %bb.kc ] ; 4 uses
  %.02632.i.i774 = phi i32 [ %.025.i.i775, %bb.kf ], [ %i.axp, %bb.kc ]
  %i.axt = icmp slt i32 %i.axs, %i.axi
  br i1 %i.axt, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %.lr.ph.i.i773
  %i.axu = sext i32 %i.axs to i64
  %i.axv = getelementptr inbounds [24 x i8], ptr %i.axl, i64 %i.axu ; 2 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 24
  %i.axx = invoke fastcc noundef i32 @_ZN8NArchive3N7zL18CompareUpdateItemsEPKNS0_8CRefItemES3_Pv(ptr noundef nonnull %i.axw, ptr noundef nonnull %i.axv, ptr noundef nonnull %i.d)
          to label %.noexc794 unwind label %.loopexit.split-lp.loopexit, !inline_history !249

.noexc794:                                        ; preds = %bb.kd
  %i.axy = icmp sgt i32 %i.axx, 0
  %i.axz = zext i1 %i.axy to i32
  %spec.select.i.i793 = or disjoint i32 %i.axs, %i.axz
  br label %bb.ke

bb.ke:                                            ; preds = %.noexc794, %.lr.ph.i.i773
  %.025.i.i775 = phi i32 [ %i.axs, %.lr.ph.i.i773 ], [ %spec.select.i.i793, %.noexc794 ] ; 3 uses
  %i.aya = sext i32 %.025.i.i775 to i64           ; 2 uses
  %i.ayb = getelementptr inbounds [24 x i8], ptr %i.axl, i64 %i.aya ; 2 uses
  %i.ayc = invoke fastcc noundef i32 @_ZN8NArchive3N7zL18CompareUpdateItemsEPKNS0_8CRefItemES3_Pv(ptr noundef nonnull %10, ptr noundef nonnull %i.ayb, ptr noundef nonnull %i.d)
          to label %.noexc795 unwind label %.loopexit.split-lp.loopexit, !inline_history !249

.noexc795:                                        ; preds = %bb.ke
  %i.ayd = icmp sgt i32 %i.ayc, -1
  %.pre35.i.i792 = sext i32 %.02632.i.i774 to i64 ; 2 uses
  br i1 %i.ayd, label %_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEE11SortRefDownEPS2_iiPFiPKS2_S6_PvES7_.exit.i, label %bb.kf

bb.kf:                                            ; preds = %.noexc795
  %i.aye = getelementptr inbounds [24 x i8], ptr %i.axl, i64 %.pre35.i.i792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aye, ptr noundef nonnull align 8 dereferenceable(24) %i.ayb, i64 24, i1 false), !tbaa.struct !245
  %i.ayf = shl i32 %.025.i.i775, 1                ; 2 uses
  %i.ayg = icmp sgt i32 %i.ayf, %i.axi
  br i1 %i.ayg, label %_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEE11SortRefDownEPS2_iiPFiPKS2_S6_PvES7_.exit.i, label %.lr.ph.i.i773

_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEE11SortRefDownEPS2_iiPFiPKS2_S6_PvES7_.exit.i: ; preds = %bb.kf, %.noexc795, %bb.kc
  %.pre-phi.i.i776 = phi i64 [ %indvars.iv.i772, %bb.kc ], [ %i.aya, %bb.kf ], [ %.pre35.i.i792, %.noexc795 ]
  %i.ayh = getelementptr inbounds [24 x i8], ptr %i.axl, i64 %.pre-phi.i.i776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ayh, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !245
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %indvars.iv.next.i777 = add nsw i64 %indvars.iv.i772, -1 ; 2 uses
  %i.ayi = icmp eq i64 %indvars.iv.next.i777, 0
  br i1 %i.ayi, label %.preheader.i778.preheader, label %bb.kc, !llvm.loop !250

.preheader.i778.preheader:                        ; preds = %_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEE11SortRefDownEPS2_iiPFiPKS2_S6_PvES7_.exit.i
  %i.ayj = getelementptr inbounds nuw [24 x i8], ptr %i.axl, i64 %i.axm ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.ayj, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ayj, ptr noundef nonnull align 8 dereferenceable(24) %i.axk, i64 24, i1 false), !tbaa.struct !245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.axk, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.ayk = icmp eq i32 %i.axi, 2
  br i1 %i.ayk, label %_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEE4SortEPFiPKS2_S5_PvES6_.exit, label %.lr.ph.i21.i781.preheader

.lr.ph.i21.i781.preheader:                        ; preds = %.preheader.i778.preheader, %_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEE11SortRefDownEPS2_iiPFiPKS2_S6_PvES7_.exit28.i
  %indvars.iv39.i7792451 = phi i64 [ %indvars.iv.next40.i7802452, %_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEE11SortRefDownEPS2_iiPFiPKS2_S6_PvES7_.exit28.i ], [ %i.axm, %.preheader.i778.preheader ] ; 3 uses
  %indvars.iv.next40.i7802452 = add nsw i64 %indvars.iv39.i7792451, -1 ; 3 uses
  br label %.lr.ph.i21.i781

.lr.ph.i21.i781:                                  ; preds = %.lr.ph.i21.i781.preheader, %bb.ki
  %i.ayl = phi i32 [ %i.ayx, %bb.ki ], [ 2, %.lr.ph.i21.i781.preheader ] ; 3 uses
  %.02632.i22.i782 = phi i32 [ %.025.i23.i784, %bb.ki ], [ 1, %.lr.ph.i21.i781.preheader ]
  %i.aym = sext i32 %i.ayl to i64                 ; 3 uses
  %i.ayn = icmp sgt i64 %indvars.iv.next40.i7802452, %i.aym
  br i1 %i.ayn, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %.lr.ph.i21.i781
  %i.ayo = getelementptr inbounds [24 x i8], ptr %i.axl, i64 %i.aym ; 2 uses
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayo, i64 24
  %i.ayq = invoke fastcc noundef i32 @_ZN8NArchive3N7zL18CompareUpdateItemsEPKNS0_8CRefItemES3_Pv(ptr noundef nonnull %i.ayp, ptr noundef nonnull %i.ayo, ptr noundef nonnull %i.d)
          to label %.noexc796 unwind label %.loopexit942, !inline_history !249

.noexc796:                                        ; preds = %bb.kg
  %i.ayr = icmp sgt i32 %i.ayq, 0
  %i.ays = zext i1 %i.ayr to i32
  %spec.select.i27.i789 = or disjoint i32 %i.ayl, %i.ays ; 2 uses
  %.pre.i790 = sext i32 %spec.select.i27.i789 to i64
  br label %bb.kh

bb.kh:                                            ; preds = %.noexc796, %.lr.ph.i21.i781
  %.pre-phi.i783 = phi i64 [ %.pre.i790, %.noexc796 ], [ %i.aym, %.lr.ph.i21.i781 ] ; 2 uses
  %.025.i23.i784 = phi i32 [ %spec.select.i27.i789, %.noexc796 ], [ %i.ayl, %.lr.ph.i21.i781 ] ; 2 uses
  %i.ayt = getelementptr inbounds [24 x i8], ptr %i.axl, i64 %.pre-phi.i783 ; 2 uses
  %i.ayu = invoke fastcc noundef i32 @_ZN8NArchive3N7zL18CompareUpdateItemsEPKNS0_8CRefItemES3_Pv(ptr noundef nonnull %9, ptr noundef nonnull %i.ayt, ptr noundef nonnull %i.d)
          to label %.noexc797 unwind label %.loopexit942

.noexc797:                                        ; preds = %bb.kh
  %i.ayv = icmp sgt i32 %i.ayu, -1
  %.pre35.i26.i788 = sext i32 %.02632.i22.i782 to i64 ; 2 uses
  br i1 %i.ayv, label %_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEE11SortRefDownEPS2_iiPFiPKS2_S6_PvES7_.exit28.i, label %bb.ki

bb.ki:                                            ; preds = %.noexc797
  %i.ayw = getelementptr inbounds [24 x i8], ptr %i.axl, i64 %.pre35.i26.i788
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ayw, ptr noundef nonnull align 8 dereferenceable(24) %i.ayt, i64 24, i1 false), !tbaa.struct !245
  %i.ayx = shl i32 %.025.i23.i784, 1              ; 2 uses
  %i.ayy = sext i32 %i.ayx to i64
  %.not30.i785 = icmp sgt i64 %indvars.iv39.i7792451, %i.ayy
  br i1 %.not30.i785, label %.lr.ph.i21.i781, label %_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEE11SortRefDownEPS2_iiPFiPKS2_S6_PvES7_.exit28.i

_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEE11SortRefDownEPS2_iiPFiPKS2_S6_PvES7_.exit28.i: ; preds = %bb.ki, %.noexc797
  %.pre-phi.i24.i786 = phi i64 [ %.pre35.i26.i788, %.noexc797 ], [ %.pre-phi.i783, %bb.ki ]
end_hunk_3
begin_hunk_4_@_ZN8NArchive3N7z6UpdateEP9IInStreamPKNS0_18CArchiveDatabaseExERK13CObjectVectorINS0_11CUpdateItemEERNS0_11COutArchiveERNS0_16CArchiveDatabaseEP20ISequentialOutStreamP22IArchiveUpdateCallbackRKNS0_14CUpdateOptionsEP22ICryptoGetTextPassword:bb.a
  %i.bcz = getelementptr inbounds nuw i8, ptr %gep3781, i64 16
  %wide.load3257 = load <2 x i64>, ptr %gep3781, align 8, !tbaa !132, !alias.scope !262
  %wide.load3258 = load <2 x i64>, ptr %i.bcz, align 8, !tbaa !132, !alias.scope !262
  %i.bda = add <2 x i64> %wide.load3257, %vec.phi3255 ; 2 uses
  %i.bdb = add <2 x i64> %wide.load3258, %vec.phi3256 ; 2 uses
  %index.next3259 = add nuw i64 %index3254, 4     ; 2 uses
  %i.bdc = icmp eq i64 %index.next3259, %n.vec3252
  br i1 %i.bdc, label %middle.block3260, label %vector.body3253, !llvm.loop !265

middle.block3260:                                 ; preds = %vector.body3253
  %bin.rdx3261 = add <2 x i64> %i.bdb, %i.bda
  %i.bdd = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx3261) ; 2 uses
  store i64 %i.bdd, ptr %i.xz, align 8, !tbaa !226, !alias.scope !266, !noalias !262
  %cmp.n3262 = icmp eq i64 %i.bcu, %n.vec3252
  br i1 %cmp.n3262, label %._crit_edge1532, label %scalar.ph3248.preheader

scalar.ph3248.preheader:                          ; preds = %vector.memcheck, %.lr.ph1531, %middle.block3260
  %indvars.iv1808.ph = phi i64 [ %i.bct, %vector.memcheck ], [ %i.bct, %.lr.ph1531 ], [ %i.bcx, %middle.block3260 ] ; 4 uses
  %.ph = phi i64 [ %.promoted1533, %vector.memcheck ], [ %.promoted1533, %.lr.ph1531 ], [ %i.bdd, %middle.block3260 ] ; 2 uses
  %i.bde = sub nsw i64 %wide.trip.count1812, %indvars.iv1808.ph
  %xtraiter3542 = and i64 %i.bde, 3               ; 2 uses
  %lcmp.mod3543.not = icmp eq i64 %xtraiter3542, 0
  br i1 %lcmp.mod3543.not, label %scalar.ph3248.prol.loopexit, label %scalar.ph3248.prol

scalar.ph3248.prol:                               ; preds = %scalar.ph3248.preheader, %scalar.ph3248.prol
  %indvars.iv1808.prol = phi i64 [ %indvars.iv.next1809.prol, %scalar.ph3248.prol ], [ %indvars.iv1808.ph, %scalar.ph3248.preheader ] ; 2 uses
  %i.bdf = phi i64 [ %i.bdi, %scalar.ph3248.prol ], [ %.ph, %scalar.ph3248.preheader ]
  %prol.iter3544 = phi i64 [ %prol.iter3544.next, %scalar.ph3248.prol ], [ 0, %scalar.ph3248.preheader ]
  %i.bdg = getelementptr inbounds [8 x i8], ptr %i.bcs, i64 %indvars.iv1808.prol
  %i.bdh = load i64, ptr %i.bdg, align 8, !tbaa !132
  %i.bdi = add i64 %i.bdh, %i.bdf                 ; 3 uses
  store i64 %i.bdi, ptr %i.xz, align 8, !tbaa !226
  %indvars.iv.next1809.prol = add nsw i64 %indvars.iv1808.prol, 1 ; 2 uses
  %prol.iter3544.next = add i64 %prol.iter3544, 1 ; 2 uses
  %prol.iter3544.cmp.not = icmp eq i64 %prol.iter3544.next, %xtraiter3542
  br i1 %prol.iter3544.cmp.not, label %scalar.ph3248.prol.loopexit, label %scalar.ph3248.prol, !llvm.loop !268

scalar.ph3248.prol.loopexit:                      ; preds = %scalar.ph3248.prol, %scalar.ph3248.preheader
  %indvars.iv1808.unr = phi i64 [ %indvars.iv1808.ph, %scalar.ph3248.preheader ], [ %indvars.iv.next1809.prol, %scalar.ph3248.prol ]
  %.unr3545 = phi i64 [ %.ph, %scalar.ph3248.preheader ], [ %i.bdi, %scalar.ph3248.prol ]
  %i.bdj = sub nsw i64 %indvars.iv1808.ph, %wide.trip.count1812
  %i.bdk = icmp ugt i64 %i.bdj, -4
  br i1 %i.bdk, label %._crit_edge1532, label %scalar.ph3248

bb.ll:                                            ; preds = %.thread916
  %i.bdl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit852

bb.lm:                                            ; preds = %bb.lh
  %i.bdm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bcg, i64 noundef 184) #19
  br label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit852

bb.ln:                                            ; preds = %bb.li
  %i.bdn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit852

bb.lo:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEC2EPS0_.exit
  %i.bdo = landingpad { ptr, i32 }
          cleanup
  br label %bb.mn

.loopexit950:                                     ; preds = %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit835, %bb.ls
  %lpad.loopexit952 = landingpad { ptr, i32 }
          cleanup
  br label %.body838

.loopexit.split-lp951:                            ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i820
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body838

bb.lp:                                            ; preds = %bb.lj
  %i.bdp = landingpad { ptr, i32 }
          cleanup
  br label %.body838

scalar.ph3248:                                    ; preds = %scalar.ph3248.prol.loopexit, %scalar.ph3248
  %indvars.iv1808 = phi i64 [ %indvars.iv.next1809.3, %scalar.ph3248 ], [ %indvars.iv1808.unr, %scalar.ph3248.prol.loopexit ] ; 5 uses
  %i.bdq = phi i64 [ %i.bef, %scalar.ph3248 ], [ %.unr3545, %scalar.ph3248.prol.loopexit ]
  %i.bdr = getelementptr inbounds [8 x i8], ptr %i.bcs, i64 %indvars.iv1808
  %i.bds = load i64, ptr %i.bdr, align 8, !tbaa !132
  %i.bdt = add i64 %i.bds, %i.bdq                 ; 2 uses
  store i64 %i.bdt, ptr %i.xz, align 8, !tbaa !226
  %i.bdu = getelementptr [8 x i8], ptr %i.bcs, i64 %indvars.iv1808
  %i.bdv = getelementptr i8, ptr %i.bdu, i64 8
  %i.bdw = load i64, ptr %i.bdv, align 8, !tbaa !132
  %i.bdx = add i64 %i.bdw, %i.bdt                 ; 2 uses
  store i64 %i.bdx, ptr %i.xz, align 8, !tbaa !226
  %i.bdy = getelementptr [8 x i8], ptr %i.bcs, i64 %indvars.iv1808
  %i.bdz = getelementptr i8, ptr %i.bdy, i64 16
  %i.bea = load i64, ptr %i.bdz, align 8, !tbaa !132
  %i.beb = add i64 %i.bea, %i.bdx                 ; 2 uses
  store i64 %i.beb, ptr %i.xz, align 8, !tbaa !226
  %i.bec = getelementptr [8 x i8], ptr %i.bcs, i64 %indvars.iv1808
  %i.bed = getelementptr i8, ptr %i.bec, i64 24
  %i.bee = load i64, ptr %i.bed, align 8, !tbaa !132
  %i.bef = add i64 %i.bee, %i.beb                 ; 2 uses
  store i64 %i.bef, ptr %i.xz, align 8, !tbaa !226
  %indvars.iv.next1809.3 = add nsw i64 %indvars.iv1808, 4 ; 2 uses
  %exitcond1813.not.3 = icmp eq i64 %indvars.iv.next1809.3, %wide.trip.count1812
  br i1 %exitcond1813.not.3, label %._crit_edge1532, label %scalar.ph3248, !llvm.loop !269

._crit_edge1532:                                  ; preds = %scalar.ph3248.prol.loopexit, %scalar.ph3248, %middle.block3260, %.preheader941
  %i.beg = load i32, ptr %i.zv, align 4, !tbaa !39 ; 3 uses
  %i.beh = icmp eq i32 %i.beg, 0
  br i1 %i.beh, label %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit835, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i819

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i819: ; preds = %._crit_edge1532
  %i.bei = icmp sgt i32 %i.beg, 0
  br i1 %i.bei, label %.lr.ph.i821, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i820

.lr.ph.i821:                                      ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i819
  %.0614.i822 = add nsw i32 %i.beg, -1            ; 2 uses
  %i.bej = load i32, ptr %i.zw, align 4, !tbaa !39 ; 2 uses
  %i.bek = icmp sgt i32 %i.bej, 0
  %i.bel = load ptr, ptr %i.zx, align 8
  %wide.trip.count.i.i823 = zext nneg i32 %i.bej to i64
  br i1 %i.bek, label %.lr.ph.i.us.i827, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i824

.lr.ph.i.us.i827:                                 ; preds = %.lr.ph.i821, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i832
  %.0615.us.i828 = phi i32 [ %.06.us.i833, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i832 ], [ %.0614.i822, %.lr.ph.i821 ] ; 4 uses
  br label %bb.lq

bb.lq:                                            ; preds = %bb.lr, %.lr.ph.i.us.i827
  %indvars.iv.i.us.i829 = phi i64 [ 0, %.lr.ph.i.us.i827 ], [ %indvars.iv.next.i.us.i830, %bb.lr ] ; 2 uses
  %i.bem = getelementptr inbounds nuw [8 x i8], ptr %i.bel, i64 %indvars.iv.i.us.i829
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bem, i64 4
  %i.beo = load i32, ptr %i.ben, align 4, !tbaa !235
  %i.bep = icmp eq i32 %i.beo, %.0615.us.i828
  br i1 %i.bep, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i832, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %indvars.iv.next.i.us.i830 = add nuw nsw i64 %indvars.iv.i.us.i829, 1 ; 2 uses
  %exitcond.not.i.us.i831 = icmp eq i64 %indvars.iv.next.i.us.i830, %wide.trip.count.i.i823
  br i1 %exitcond.not.i.us.i831, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i824, label %bb.lq, !llvm.loop !236

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i832: ; preds = %bb.lq
  %.06.us.i833 = add nsw i32 %.0615.us.i828, -1
  %i.beq = icmp sgt i32 %.0615.us.i828, 0
  br i1 %i.beq, label %.lr.ph.i.us.i827, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i820, !llvm.loop !237

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i824: ; preds = %bb.lr, %.lr.ph.i821
  %.0613.i825 = phi i32 [ %.0614.i822, %.lr.ph.i821 ], [ %.0615.us.i828, %bb.lr ]
  %i.ber = load ptr, ptr %i.zy, align 8, !tbaa !42
  %i.bes = sext i32 %.0613.i825 to i64
  %i.bet = getelementptr inbounds [8 x i8], ptr %i.ber, i64 %i.bes
  %i.beu = load i64, ptr %i.bet, align 8, !tbaa !132
  br label %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit835

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i820: ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i819, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i832
  %i.bev = call ptr @__cxa_allocate_exception(i64 4) #17 ; 2 uses
  store i32 1, ptr %i.bev, align 16, !tbaa !4
  invoke void @__cxa_throw(ptr nonnull %i.bev, ptr nonnull @_ZTIi, ptr null) #21
          to label %.noexc834 unwind label %.loopexit.split-lp951

.noexc834:                                        ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i820
  unreachable

_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit835: ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i824, %._crit_edge1532
  %.1.i826 = phi i64 [ %i.beu, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i824 ], [ 0, %._crit_edge1532 ]
  %i.bew = load i64, ptr %i.ye, align 8, !tbaa !238
  %i.bex = add i64 %i.bew, %.1.i826
  store i64 %i.bex, ptr %i.ye, align 8, !tbaa !238
  %i.bey = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #18
          to label %.noexc836 unwind label %.loopexit950 ; 3 uses

.noexc836:                                        ; preds = %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit835
  invoke void @_ZN8NArchive3N7z7CFolderC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(133) %i.bey, ptr noundef nonnull align 8 dereferenceable(133) %40)
          to label %bb.ls unwind label %bb.lt

bb.ls:                                            ; preds = %.noexc836
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.yf)
          to label %_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE3AddERKS2_.exit840 unwind label %.loopexit950

bb.lt:                                            ; preds = %.noexc836
  %i.bez = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bey, i64 noundef 136) #19
  br label %.body838

_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE3AddERKS2_.exit840: ; preds = %bb.ls
  %i.bfa = load ptr, ptr %i.yg, align 8, !tbaa !42
  %i.bfb = load i32, ptr %i.yh, align 4, !tbaa !39 ; 2 uses
  %i.bfc = sext i32 %i.bfb to i64
  %i.bfd = getelementptr inbounds [8 x i8], ptr %i.bfa, i64 %i.bfc
  store ptr %i.bey, ptr %i.bfd, align 8, !tbaa !43
  %i.bfe = add nsw i32 %i.bfb, 1
  store i32 %i.bfe, ptr %i.yh, align 4, !tbaa !39
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bcg, i64 104
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bcg, i64 136
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bcg, i64 168
  %wide.trip.count1818 = zext i32 %spec.store.select21 to i64
  br label %bb.lu

bb.lu:                                            ; preds = %_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE3AddERKS2_.exit840, %bb.mg
  %indvars.iv1814 = phi i64 [ 0, %_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE3AddERKS2_.exit840 ], [ %indvars.iv.next1815, %bb.mg ] ; 5 uses
  %.04171534 = phi i32 [ 0, %_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE3AddERKS2_.exit840 ], [ %.2419.jt57, %bb.mg ] ; 2 uses
  %i.bfi = load ptr, ptr %i.ze, align 8, !tbaa !42
  %i.bfj = getelementptr [4 x i8], ptr %i.bfi, i64 %indvars.iv1814
  %i.bfk = getelementptr [4 x i8], ptr %i.bfj, i64 %i.azr
  %i.bfl = load i32, ptr %i.bfk, align 4, !tbaa !4
  %i.bfm = load ptr, ptr %i.wv, align 8, !tbaa !42
  %i.bfn = sext i32 %i.bfl to i64
  %i.bfo = getelementptr inbounds [8 x i8], ptr %i.bfm, i64 %i.bfn
  %i.bfp = load ptr, ptr %i.bfo, align 8, !tbaa !43 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #17
  store i64 17179869184, ptr %i.aaf, align 8
  %i.bfq = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #18
          to label %bb.lv unwind label %bb.lx     ; 2 uses

bb.lv:                                            ; preds = %bb.lu
  store ptr %i.bfq, ptr %i.zz, align 8, !tbaa !103
  store i32 0, ptr %i.bfq, align 4, !tbaa !12
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.aaa, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #17
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfp, i64 61
  %i.bfs = load i8, ptr %i.bfr, align 1, !tbaa !242, !range !48, !noundef !49
  %i.bft = trunc nuw i8 %i.bfs to i1
  br i1 %i.bft, label %bb.lw, label %bb.ma

bb.lw:                                            ; preds = %bb.lv
  invoke fastcc void @_ZN8NArchive3N7zL24FromUpdateItemToFileItemERKNS0_11CUpdateItemERNS0_9CFileItemERNS0_10CFileItem2E(ptr noundef nonnull align 8 dereferenceable(68) %i.bfp, ptr noundef nonnull align 8 dereferenceable(36) %41, ptr noundef nonnull align 8 dereferenceable(40) %42)
          to label %bb.mb unwind label %bb.ly

bb.lx:                                            ; preds = %bb.lu
  %i.bfu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8NArchive3N7z9CFileItemD2Ev.exit843

bb.ly:                                            ; preds = %bb.md, %bb.ma, %bb.lw
  %i.bfv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #17
  %i.bfw = load ptr, ptr %i.zz, align 8, !tbaa !103 ; 2 uses
  %i.bfx = icmp eq ptr %i.bfw, null
  br i1 %i.bfx, label %_ZN8NArchive3N7z9CFileItemD2Ev.exit843, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  call void @_ZdaPv(ptr noundef nonnull %i.bfw) #19
  br label %_ZN8NArchive3N7z9CFileItemD2Ev.exit843

bb.ma:                                            ; preds = %bb.lv
  %i.bfy = load i32, ptr %i.bfp, align 8, !tbaa !120
  invoke void @_ZNK8NArchive3N7z16CArchiveDatabase7GetFileEiRNS0_9CFileItemERNS0_10CFileItem2E(ptr noundef nonnull align 8 dereferenceable(480) %1, i32 noundef %i.bfy, ptr noundef nonnull align 8 dereferenceable(36) %41, ptr noundef nonnull align 8 dereferenceable(40) %42)
          to label %bb.mb unwind label %bb.ly

bb.mb:                                            ; preds = %bb.ma, %bb.lw
  %i.bfz = load i8, ptr %i.aad, align 4, !tbaa !270, !range !48, !noundef !49
  %i.bga = trunc nuw i8 %i.bfz to i1
  %i.bgb = load i8, ptr %i.aab, align 1, !range !48
  %i.bgc = trunc nuw i8 %i.bgb to i1
  %or.cond = select i1 %i.bga, i1 true, i1 %i.bgc
  br i1 %or.cond, label %46, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.bgd = load ptr, ptr %i.bff, align 8, !tbaa !42
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bgd, i64 %indvars.iv1814
  %i.bgf = load i8, ptr %i.bge, align 1, !tbaa !47, !range !48, !noundef !49
  %i.bgg = trunc nuw i8 %i.bgf to i1
  br i1 %i.bgg, label %bb.md, label %bb.me

bb.md:                                            ; preds = %bb.mc
  %i.bgh = load ptr, ptr %i.bfg, align 8, !tbaa !42
  %i.bgi = getelementptr inbounds nuw [4 x i8], ptr %i.bgh, i64 %indvars.iv1814
  %i.bgj = load i32, ptr %i.bgi, align 4, !tbaa !4
  store i32 %i.bgj, ptr %i.aae, align 4, !tbaa !59
  %i.bgk = load ptr, ptr %i.bfh, align 8, !tbaa !42
  %i.bgl = getelementptr inbounds nuw [8 x i8], ptr %i.bgk, i64 %indvars.iv1814
  %i.bgm = load i64, ptr %i.bgl, align 8, !tbaa !132 ; 2 uses
  store i64 %i.bgm, ptr %41, align 8, !tbaa !44
  %.not627 = icmp ne i64 %i.bgm, 0                ; 2 uses
  %spec.select2167 = zext i1 %.not627 to i8       ; 2 uses
  %i.bgn = zext i1 %.not627 to i32
  %spec.select2168 = add i32 %.04171534, %i.bgn
  store i8 %spec.select2167, ptr %i.aac, align 2, !tbaa !58
  store i8 %spec.select2167, ptr %i.aaa, align 8, !tbaa !123
  invoke void @_ZN8NArchive3N7z16CArchiveDatabase7AddFileERKNS0_9CFileItemERKNS0_10CFileItem2E(ptr noundef nonnull align 8 dereferenceable(480) %4, ptr noundef nonnull align 8 dereferenceable(36) %41, ptr noundef nonnull align 8 dereferenceable(40) %42)
          to label %bb.me unwind label %bb.ly

bb.me:                                            ; preds = %bb.md, %bb.mc
  %.2419.jt57 = phi i32 [ %spec.select2168, %bb.md ], [ %.04171534, %bb.mc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #17
  %i.bgo = load ptr, ptr %i.zz, align 8, !tbaa !103 ; 2 uses
  %i.bgp = icmp eq ptr %i.bgo, null
  br i1 %i.bgp, label %bb.mg, label %bb.mf

46:                                               ; preds = %bb.mb
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #17
  %47 = load ptr, ptr %i.zz, align 8, !tbaa !103  ; 2 uses
  %48 = icmp eq ptr %47, null
  br i1 %48, label %_ZN8NArchive3N7z9CFileItemD2Ev.exit844.jt1, label %_ZN8NArchive3N7z9CFileItemD2Ev.exit844

bb.mf:                                            ; preds = %bb.me
  call void @_ZdaPv(ptr noundef nonnull %i.bgo) #19
  br label %bb.mg

_ZN8NArchive3N7z9CFileItemD2Ev.exit844:           ; preds = %46
  call void @_ZdaPv(ptr noundef nonnull %47) #19
  br label %_ZN8NArchive3N7z9CFileItemD2Ev.exit844.jt1

bb.mg:                                            ; preds = %bb.mf, %bb.me
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #17
  %indvars.iv.next1815 = add nuw nsw i64 %indvars.iv1814, 1 ; 2 uses
  %exitcond1819.not = icmp eq i64 %indvars.iv.next1815, %wide.trip.count1818
  br i1 %exitcond1819.not, label %bb.mh, label %bb.lu, !llvm.loop !272

_ZN8NArchive3N7z9CFileItemD2Ev.exit844.jt1:       ; preds = %_ZN8NArchive3N7z9CFileItemD2Ev.exit844, %46
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #17
  br label %.loopexit

_ZN8NArchive3N7z9CFileItemD2Ev.exit843:           ; preds = %bb.lz, %bb.ly, %bb.lx
  %.pn628 = phi { ptr, i32 } [ %i.bfu, %bb.lx ], [ %i.bfv, %bb.ly ], [ %i.bfv, %bb.lz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #17
  br label %.body838

bb.mh:                                            ; preds = %bb.mg
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.yi)
          to label %bb.mi unwind label %bb.mm

bb.mi:                                            ; preds = %bb.mh
  %i.bgq = load ptr, ptr %i.yj, align 8, !tbaa !42
  %i.bgr = load i32, ptr %i.yk, align 4, !tbaa !39
  %i.bgs = sext i32 %i.bgr to i64
  %i.bgt = getelementptr inbounds [4 x i8], ptr %i.bgq, i64 %i.bgs
  store i32 %.2419.jt57, ptr %i.bgt, align 4, !tbaa !4
  %i.bgu = load i32, ptr %i.yk, align 4, !tbaa !39
  %i.bgv = add nsw i32 %i.bgu, 1
  store i32 %i.bgv, ptr %i.yk, align 4, !tbaa !39
  %i.bgw = add nsw i32 %spec.store.select21, %.5546
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8NArchive3N7z9CFileItemD2Ev.exit844.jt1, %bb.mi, %bb.lk
  %.7548 = phi i32 [ %.5546, %bb.lk ], [ %i.bgw, %bb.mi ], [ %.5546, %_ZN8NArchive3N7z9CFileItemD2Ev.exit844.jt1 ]
  %cond6 = phi i1 [ false, %bb.lk ], [ true, %bb.mi ], [ false, %_ZN8NArchive3N7z9CFileItemD2Ev.exit844.jt1 ]
  %.28 = phi i32 [ %i.bcp, %bb.lk ], [ %.23., %bb.mi ], [ -2147467259, %_ZN8NArchive3N7z9CFileItemD2Ev.exit844.jt1 ] ; 2 uses
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.zr) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.zo) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.zl) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE, i64 16), ptr %40, align 8, !tbaa !33
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(133) %40)
          to label %bb.mk unwind label %bb.mj, !inline_history !239

bb.mj:                                            ; preds = %.loopexit
  %i.bgx = landingpad { ptr, i32 }
          catch ptr null
  %i.bgy = extractvalue { ptr, i32 } %i.bgx, 0
  call void @__clang_call_terminate(ptr %i.bgy) #20, !inline_history !239
  unreachable

bb.mk:                                            ; preds = %.loopexit
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(133) %40) #17, !inline_history !239
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #17
  %i.bgz = load ptr, ptr %i.bcg, align 8, !tbaa !33
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgz, i64 16
  %i.bhb = load ptr, ptr %i.bha, align 8
  %i.bhc = invoke noundef i32 %i.bhb(ptr noundef nonnull align 8 dereferenceable(8) %i.bcg)
          to label %_ZN11CStringBaseIwED2Ev.exit850 unwind label %bb.ml ; 0 uses

bb.ml:                                            ; preds = %bb.mk
  %i.bhd = landingpad { ptr, i32 }
          catch ptr null
  %i.bhe = extractvalue { ptr, i32 } %i.bhd, 0
  call void @__clang_call_terminate(ptr %i.bhe) #20
  unreachable

_ZN11CStringBaseIwED2Ev.exit850:                  ; preds = %bb.mk
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0875.5.ph) #19
  br i1 %cond6, label %bb.km, label %.critedge677.thread.loopexit, !llvm.loop !273

bb.mm:                                            ; preds = %bb.mh
  %i.bhf = landingpad { ptr, i32 }
          cleanup
  br label %.body838

.body838:                                         ; preds = %.loopexit950, %.loopexit.split-lp951, %bb.lt, %_ZN8NArchive3N7z9CFileItemD2Ev.exit843, %bb.mm, %bb.lp
  %.pn630.pn = phi { ptr, i32 } [ %i.bdp, %bb.lp ], [ %.pn628, %_ZN8NArchive3N7z9CFileItemD2Ev.exit843 ], [ %i.bhf, %bb.mm ], [ %i.bez, %bb.lt ], [ %lpad.loopexit952, %.loopexit950 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp951 ]
  call void @_ZN8NArchive3N7z7CFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(133) dereferenceable(133) %40) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #17
  br label %bb.mn

bb.mn:                                            ; preds = %bb.lo, %.body838
  %.pn630.pn.pn.pn = phi { ptr, i32 } [ %.pn630.pn, %.body838 ], [ %i.bdo, %bb.lo ]
  %i.bhg = load ptr, ptr %i.bcg, align 8, !tbaa !33
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bhg, i64 16
  %i.bhi = load ptr, ptr %i.bhh, align 8
  %i.bhj = invoke noundef i32 %i.bhi(ptr noundef nonnull align 8 dereferenceable(8) %i.bcg)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit852 unwind label %bb.mo ; 0 uses

bb.mo:                                            ; preds = %bb.mn
  %i.bhk = landingpad { ptr, i32 }
          catch ptr null
  %i.bhl = extractvalue { ptr, i32 } %i.bhk, 0
  call void @__clang_call_terminate(ptr %i.bhl) #20
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit852: ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.lm, %bb.ll, %bb.mn, %bb.ln
  %.sroa.0875.6 = phi ptr [ %.sroa.0875.01519, %_ZN11CStringBaseIwED2Ev.exit ], [ %.sroa.0875.5.ph, %bb.lm ], [ %.sroa.0875.5.ph, %bb.ll ], [ %.sroa.0875.5.ph, %bb.mn ], [ %.sroa.0875.5.ph, %bb.ln ]
  %.pn630.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn624, %_ZN11CStringBaseIwED2Ev.exit ], [ %i.bdm, %bb.lm ], [ %i.bdl, %bb.ll ], [ %.pn630.pn.pn.pn, %bb.mn ], [ %i.bdn, %bb.ln ]
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0875.6) #19
  br label %_ZN11CStringBaseIwED2Ev.exit853

bb.mp:                                            ; preds = %bb.km
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %38) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %36) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #17
  br label %.critedge677.thread.jt25

.critedge677.thread.loopexit:                     ; preds = %_ZN11CStringBaseIwED2Ev.exit850
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %38) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %36) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #17
  br label %.critedge677.thread

.critedge677.thread:                              ; preds = %_ZN13CStreamBinderD2Ev.exit, %bb.gr, %.critedge677.thread.loopexit
  %.31 = phi i32 [ %.28, %.critedge677.thread.loopexit ], [ %i.akw, %bb.gr ], [ %.18, %_ZN13CStreamBinderD2Ev.exit ]
  call void @_ZN8NArchive3N7z8CEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(433) dereferenceable(433) %27) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  %i.bhm = load ptr, ptr %i.ve, align 8, !tbaa !103 ; 2 uses
  %i.bhn = icmp eq ptr %i.bhm, null
  br i1 %i.bhn, label %_ZN11CStringBaseIwED2Ev.exit.i.jt1, label %51

.critedge677.thread.jt25:                         ; preds = %bb.mp, %.critedge677
  %.31.jt25 = phi i32 [ %.10.lcssa, %.critedge677 ], [ %.23, %bb.mp ]
  call void @_ZN8NArchive3N7z8CEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(433) dereferenceable(433) %27) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  %49 = load ptr, ptr %i.ve, align 8, !tbaa !103  ; 2 uses
  %50 = icmp eq ptr %49, null
  br i1 %50, label %_ZN11CStringBaseIwED2Ev.exit.i, label %bb.mq

51:                                               ; preds = %.critedge677.thread
  call void @_ZdaPv(ptr noundef nonnull %i.bhm) #19
  br label %_ZN11CStringBaseIwED2Ev.exit.i.jt1

bb.mq:                                            ; preds = %.critedge677.thread.jt25
  call void @_ZdaPv(ptr noundef nonnull %49) #19
  br label %_ZN11CStringBaseIwED2Ev.exit.i

_ZN11CStringBaseIwED2Ev.exit.i.jt1:               ; preds = %51, %.critedge677.thread
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.uz) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE, i64 16), ptr %26, align 8, !tbaa !33
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(88) %26)
          to label %_ZN8NArchive3N7z22CCompressionMethodModeD2Ev.exit unwind label %.loopexit.split-lp2781, !inline_history !274

_ZN11CStringBaseIwED2Ev.exit.i:                   ; preds = %bb.mq, %.critedge677.thread.jt25
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.uz) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE, i64 16), ptr %26, align 8, !tbaa !33
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(88) %26)
          to label %bb.ms unwind label %.loopexit2780, !inline_history !274

.loopexit2780:                                    ; preds = %_ZN11CStringBaseIwED2Ev.exit.i
  %lpad.loopexit2782 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.mr

.loopexit.split-lp2781:                           ; preds = %_ZN11CStringBaseIwED2Ev.exit.i.jt1
  %lpad.loopexit.split-lp2783 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.mr

bb.mr:                                            ; preds = %.loopexit.split-lp2781, %.loopexit2780
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit2782, %.loopexit2780 ], [ %lpad.loopexit.split-lp2783, %.loopexit.split-lp2781 ]
  %i.bho = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.bho) #20, !inline_history !274
  unreachable

_ZN8NArchive3N7z22CCompressionMethodModeD2Ev.exit: ; preds = %_ZN11CStringBaseIwED2Ev.exit.i.jt1
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %26) #17, !inline_history !274
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  br label %.loopexit962

bb.ms:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %26) #17, !inline_history !274
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  %indvars.iv.next1821 = add nuw nsw i64 %indvars.iv1820, 1 ; 2 uses
  %exitcond1824.not = icmp eq i64 %indvars.iv.next1821, 4
  br i1 %exitcond1824.not, label %bb.mv, label %bb.dy, !llvm.loop !275

_ZN11CStringBaseIwED2Ev.exit853:                  ; preds = %bb.ko, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit852, %bb.kl, %bb.kk
  %.pn639 = phi { ptr, i32 } [ %i.azo, %bb.kl ], [ %i.azn, %bb.kk ], [ %i.baf, %bb.ko ], [ %.pn630.pn.pn.pn.pn.pn.pn, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit852 ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %38) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #17
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit942, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZN11CStringBaseIwED2Ev.exit853
  %.pn641 = phi { ptr, i32 } [ %.pn639, %_ZN11CStringBaseIwED2Ev.exit853 ], [ %lpad.loopexit, %.loopexit942 ], [ %lpad.loopexit943, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp944, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %bb.mt

bb.mt:                                            ; preds = %.loopexit.split-lp, %bb.ka
  %.pn641.pn = phi { ptr, i32 } [ %.pn641, %.loopexit.split-lp ], [ %i.axh, %bb.ka ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %36) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #17
  br label %.body733

.body733:                                         ; preds = %bb.gx, %bb.gw, %bb.gs, %bb.iv, %_ZN8NArchive3N7z9CFileItemD2Ev.exit770, %bb.gy, %bb.gt, %bb.mt
  %.pn641.pn.pn = phi { ptr, i32 } [ %.pn641.pn, %bb.mt ], [ %.pn607.pn.pn, %bb.iv ], [ %.pn615.pn.pn, %_ZN8NArchive3N7z9CFileItemD2Ev.exit770 ], [ %i.akx, %bb.gs ], [ %i.all, %bb.gw ], [ %i.aky, %bb.gt ], [ %i.aln, %bb.gy ], [ %i.alm, %bb.gx ]
  call void @_ZN8NArchive3N7z8CEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(433) dereferenceable(433) %27) #17
  br label %bb.mu

bb.mu:                                            ; preds = %.body733, %bb.go
  %.pn641.pn.pn.pn = phi { ptr, i32 } [ %.pn641.pn.pn, %.body733 ], [ %i.aie, %bb.go ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  br label %.body712

.body712:                                         ; preds = %bb.ge, %.body116.i, %.body.i, %bb.mu
  %.pn641.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn641.pn.pn.pn, %bb.mu ], [ %i.agx, %bb.ge ], [ %.pn55.i, %.body.i ], [ %.pn.i710, %.body116.i ]
  call void @_ZN8NArchive3N7z22CCompressionMethodModeD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %26) #17
  br label %.body708

.body708:                                         ; preds = %bb.dz, %.body712
  %.pn641.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn641.pn.pn.pn.pn, %.body712 ], [ %i.aak, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  br label %.body

bb.mv:                                            ; preds = %bb.ms
  %i.bhp = load i32, ptr %i.pe, align 4, !tbaa !39
  %.not649 = icmp eq i32 %.1561.lcssa, %i.bhp
  br i1 %.not649, label %bb.mx, label %.loopexit962

bb.mw:                                            ; preds = %._crit_edge1547
  %i.bhq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.mx:                                            ; preds = %bb.mv
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #17
  %i.bhr = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.bhs = getelementptr inbounds nuw i8, ptr %43, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bhr, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.bhs, align 8, !tbaa !118
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIiE, i64 16), ptr %43, align 8, !tbaa !33
  %i.bht = load i32, ptr %i.nb, align 4, !tbaa !39 ; 2 uses
  %i.bhu = icmp sgt i32 %i.bht, 0
  br i1 %i.bhu, label %.lr.ph1543, label %._crit_edge1544

.lr.ph1543:                                       ; preds = %bb.mx
  %i.bhv = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.bhw = getelementptr inbounds nuw i8, ptr %43, i64 12 ; 3 uses
  br label %bb.my

bb.my:                                            ; preds = %.lr.ph1543, %bb.nf
  %i.bhx = phi i32 [ %i.bht, %.lr.ph1543 ], [ %i.bje, %bb.nf ] ; 2 uses
  %indvars.iv1825 = phi i64 [ 0, %.lr.ph1543 ], [ %indvars.iv.next1826, %bb.nf ] ; 3 uses
  %i.bhy = load ptr, ptr %i.wv, align 8, !tbaa !42
  %i.bhz = getelementptr inbounds nuw [8 x i8], ptr %i.bhy, i64 %indvars.iv1825
  %i.bia = load ptr, ptr %i.bhz, align 8, !tbaa !43 ; 5 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bia, i64 60
  %i.bic = load i8, ptr %i.bib, align 4, !tbaa !124, !range !48, !noundef !49
  %i.bid = trunc nuw i8 %i.bic to i1
  br i1 %i.bid, label %bb.mz, label %bb.nc

bb.mz:                                            ; preds = %bb.my
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bia, i64 63
  %i.bif = load i8, ptr %i.bie, align 1, !tbaa !160, !range !48, !noundef !49
  %i.big = trunc nuw i8 %i.bif to i1
  %i.bih = getelementptr inbounds nuw i8, ptr %i.bia, i64 62
  %i.bii = load i8, ptr %i.bih, align 2, !range !48
  %i.bij = trunc nuw i8 %i.bii to i1
  %or.cond.i854 = select i1 %i.big, i1 true, i1 %i.bij
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bia, i64 32
  %i.bil = load i64, ptr %i.bik, align 8
  %i.bim = icmp eq i64 %i.bil, 0
  %.not937 = select i1 %or.cond.i854, i1 true, i1 %i.bim
  br i1 %.not937, label %bb.ne, label %bb.nf

bb.na:                                            ; preds = %._crit_edge1544
  %i.bin = landingpad { ptr, i32 }
          cleanup
  br label %bb.nq

bb.nb:                                            ; preds = %bb.ne
  %i.bio = landingpad { ptr, i32 }
          cleanup
  br label %bb.nq

bb.nc:                                            ; preds = %bb.my
  %i.bip = load i32, ptr %i.bia, align 8, !tbaa !120 ; 2 uses
  %.not652 = icmp eq i32 %i.bip, -1
  br i1 %.not652, label %bb.ne, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  %i.biq = load ptr, ptr %i.wt, align 8, !tbaa !42
  %i.bir = sext i32 %i.bip to i64
  %i.bis = getelementptr inbounds [8 x i8], ptr %i.biq, i64 %i.bir
  %i.bit = load ptr, ptr %i.bis, align 8, !tbaa !43
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bit, i64 32
  %i.biv = load i8, ptr %i.biu, align 8, !tbaa !123, !range !48, !noundef !49
  %i.biw = trunc nuw i8 %i.biv to i1
  br i1 %i.biw, label %bb.nf, label %bb.ne

bb.ne:                                            ; preds = %bb.nc, %bb.nd, %bb.mz
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %43)
          to label %_ZN13CRecordVectorIiE3AddEi.exit857 unwind label %bb.nb

_ZN13CRecordVectorIiE3AddEi.exit857:              ; preds = %bb.ne
  %i.bix = load ptr, ptr %i.bhv, align 8, !tbaa !42
  %i.biy = load i32, ptr %i.bhw, align 4, !tbaa !39
  %i.biz = sext i32 %i.biy to i64
  %i.bja = getelementptr inbounds [4 x i8], ptr %i.bix, i64 %i.biz
  %i.bjb = trunc nuw nsw i64 %indvars.iv1825 to i32
  store i32 %i.bjb, ptr %i.bja, align 4, !tbaa !4
  %i.bjc = load i32, ptr %i.bhw, align 4, !tbaa !39
  %i.bjd = add nsw i32 %i.bjc, 1
  store i32 %i.bjd, ptr %i.bhw, align 4, !tbaa !39
  %.pre1840 = load i32, ptr %i.nb, align 4, !tbaa !39
  br label %bb.nf

bb.nf:                                            ; preds = %_ZN13CRecordVectorIiE3AddEi.exit857, %bb.nd, %bb.mz
  %i.bje = phi i32 [ %.pre1840, %_ZN13CRecordVectorIiE3AddEi.exit857 ], [ %i.bhx, %bb.nd ], [ %i.bhx, %bb.mz ] ; 2 uses
  %indvars.iv.next1826 = add nuw nsw i64 %indvars.iv1825, 1 ; 2 uses
  %i.bjf = sext i32 %i.bje to i64
  %i.bjg = icmp slt i64 %indvars.iv.next1826, %i.bjf
  br i1 %i.bjg, label %bb.my, label %._crit_edge1544, !llvm.loop !276

._crit_edge1544:                                  ; preds = %bb.nf, %bb.mx
  invoke void @_ZN13CRecordVectorIiE4SortEPFiPKiS2_PvES3_(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull @_ZN8NArchive3N7zL17CompareEmptyItemsEPKiS2_Pv, ptr noundef nonnull %2)
          to label %.preheader unwind label %bb.na

.preheader:                                       ; preds = %._crit_edge1544
  %i.bjh = getelementptr inbounds nuw i8, ptr %43, i64 12 ; 2 uses
  %i.bji = load i32, ptr %i.bjh, align 4, !tbaa !39
  %i.bjj = icmp sgt i32 %i.bji, 0
  br i1 %i.bjj, label %.lr.ph1546, label %._crit_edge1547

.lr.ph1546:                                       ; preds = %.preheader
  %i.bjk = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.bjl = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 3 uses
  %i.bjm = getelementptr inbounds nuw i8, ptr %44, i64 32
  %i.bjn = getelementptr inbounds nuw i8, ptr %44, i64 24
  br label %bb.ng

bb.ng:                                            ; preds = %.lr.ph1546, %_ZN8NArchive3N7z9CFileItemD2Ev.exit863
  %indvars.iv1829 = phi i64 [ 0, %.lr.ph1546 ], [ %indvars.iv.next1830, %_ZN8NArchive3N7z9CFileItemD2Ev.exit863 ] ; 2 uses
  %i.bjo = load ptr, ptr %i.bjk, align 8, !tbaa !42
  %i.bjp = getelementptr inbounds nuw [4 x i8], ptr %i.bjo, i64 %indvars.iv1829
  %i.bjq = load i32, ptr %i.bjp, align 4, !tbaa !4
  %i.bjr = load ptr, ptr %i.wv, align 8, !tbaa !42
  %i.bjs = sext i32 %i.bjq to i64
  %i.bjt = getelementptr inbounds [8 x i8], ptr %i.bjr, i64 %i.bjs
  %i.bju = load ptr, ptr %i.bjt, align 8, !tbaa !43 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #17
  store i64 17179869184, ptr %i.bjn, align 8
  %i.bjv = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #18
          to label %bb.nh unwind label %bb.nj     ; 2 uses

bb.nh:                                            ; preds = %bb.ng
  store ptr %i.bjv, ptr %i.bjl, align 8, !tbaa !103
  store i32 0, ptr %i.bjv, align 4, !tbaa !12
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.bjm, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #17
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bju, i64 61
  %i.bjx = load i8, ptr %i.bjw, align 1, !tbaa !242, !range !48, !noundef !49
  %i.bjy = trunc nuw i8 %i.bjx to i1
  br i1 %i.bjy, label %bb.ni, label %bb.nm

bb.ni:                                            ; preds = %bb.nh
  invoke fastcc void @_ZN8NArchive3N7zL24FromUpdateItemToFileItemERKNS0_11CUpdateItemERNS0_9CFileItemERNS0_10CFileItem2E(ptr noundef nonnull align 8 dereferenceable(68) %i.bju, ptr noundef nonnull align 8 dereferenceable(36) %44, ptr noundef nonnull align 8 dereferenceable(40) %45)
          to label %bb.nn unwind label %bb.nk

bb.nj:                                            ; preds = %bb.ng
  %i.bjz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8NArchive3N7z9CFileItemD2Ev.exit861

bb.nk:                                            ; preds = %bb.nn, %bb.nm, %bb.ni
  %i.bka = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #17
  %i.bkb = load ptr, ptr %i.bjl, align 8, !tbaa !103 ; 2 uses
  %i.bkc = icmp eq ptr %i.bkb, null
  br i1 %i.bkc, label %_ZN8NArchive3N7z9CFileItemD2Ev.exit861, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  call void @_ZdaPv(ptr noundef nonnull %i.bkb) #19
  br label %_ZN8NArchive3N7z9CFileItemD2Ev.exit861

bb.nm:                                            ; preds = %bb.nh
  %i.bkd = load i32, ptr %i.bju, align 8, !tbaa !120
  invoke void @_ZNK8NArchive3N7z16CArchiveDatabase7GetFileEiRNS0_9CFileItemERNS0_10CFileItem2E(ptr noundef nonnull align 8 dereferenceable(480) %1, i32 noundef %i.bkd, ptr noundef nonnull align 8 dereferenceable(36) %44, ptr noundef nonnull align 8 dereferenceable(40) %45)
          to label %bb.nn unwind label %bb.nk

bb.nn:                                            ; preds = %bb.nm, %bb.ni
  invoke void @_ZN8NArchive3N7z16CArchiveDatabase7AddFileERKNS0_9CFileItemERKNS0_10CFileItem2E(ptr noundef nonnull align 8 dereferenceable(480) %4, ptr noundef nonnull align 8 dereferenceable(36) %44, ptr noundef nonnull align 8 dereferenceable(40) %45)
          to label %bb.no unwind label %bb.nk

bb.no:                                            ; preds = %bb.nn
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #17
  %i.bke = load ptr, ptr %i.bjl, align 8, !tbaa !103 ; 2 uses
  %i.bkf = icmp eq ptr %i.bke, null
  br i1 %i.bkf, label %_ZN8NArchive3N7z9CFileItemD2Ev.exit863, label %bb.np

bb.np:                                            ; preds = %bb.no
  call void @_ZdaPv(ptr noundef nonnull %i.bke) #19
  br label %_ZN8NArchive3N7z9CFileItemD2Ev.exit863

_ZN8NArchive3N7z9CFileItemD2Ev.exit863:           ; preds = %bb.no, %bb.np
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #17
  %indvars.iv.next1830 = add nuw nsw i64 %indvars.iv1829, 1 ; 2 uses
  %i.bkg = load i32, ptr %i.bjh, align 4, !tbaa !39
  %i.bkh = sext i32 %i.bkg to i64
  %i.bki = icmp slt i64 %indvars.iv.next1830, %i.bkh
  br i1 %i.bki, label %bb.ng, label %._crit_edge1547, !llvm.loop !277

_ZN8NArchive3N7z9CFileItemD2Ev.exit861:           ; preds = %bb.nl, %bb.nk, %bb.nj
  %.pn650 = phi { ptr, i32 } [ %i.bjz, %bb.nj ], [ %i.bka, %bb.nk ], [ %i.bka, %bb.nl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #17
  br label %bb.nq

._crit_edge1547:                                  ; preds = %_ZN8NArchive3N7z9CFileItemD2Ev.exit863, %.preheader
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %43) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #17
  invoke void @_ZN8NArchive3N7z16CArchiveDatabase11ReserveDownEv(ptr noundef nonnull align 8 dereferenceable(480) %4)
          to label %.loopexit962 unwind label %bb.mw

bb.nq:                                            ; preds = %_ZN8NArchive3N7z9CFileItemD2Ev.exit861, %bb.nb, %bb.na
  %.pn653 = phi { ptr, i32 } [ %i.bio, %bb.nb ], [ %.pn650, %_ZN8NArchive3N7z9CFileItemD2Ev.exit861 ], [ %i.bin, %bb.na ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %43) #17
end_hunk_4
