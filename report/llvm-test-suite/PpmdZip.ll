inline.NumInlined: 30
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN9NCompress8NPpmdZip8CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj:bb.a
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ugt i32 %i.g, 1
  br i1 %i.j, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.g, ptr %i.c, align 8, !tbaa !50
  br label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.k = add i32 %i.g, -268435457
  %or.cond = icmp ult i32 %i.k, -267386881
  br i1 %or.cond, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = lshr i32 %i.g, 20
  store i32 %i.l, ptr %i.b, align 8, !tbaa !56
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.m = add i32 %i.g, -17
  %or.cond3 = icmp ult i32 %i.m, -15
  br i1 %or.cond3, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.g, ptr %i.a, align 4, !tbaa !57
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.g, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !58

.critedge:                                        ; preds = %bb.j, %bb.d, %bb.c, %bb.f, %bb.h, %bb.b, %bb.a
  %i.n = phi i32 [ 0, %bb.a ], [ -2147024809, %bb.d ], [ -2147024809, %bb.c ], [ -2147024809, %bb.f ], [ -2147024809, %bb.h ], [ -2147024809, %bb.b ], [ 0, %bb.j ]
  ret i32 %i.n
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9NCompress8NPpmdZip8CEncoderC2Ev(ptr noundef nonnull align 8 dereferenceable(7492) initializes((0, 12)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN9NCompress8NPpmdZip8CEncoderE, i64 16), ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @_ZN15CByteOutBufWrapC1Ev(ptr noundef nonnull align 8 dereferenceable(60) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 7480
  store i32 16, ptr %i.d, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 7484
  store i32 6, ptr %i.e, align 4, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7488
  store i32 0, ptr %i.f, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.b, ptr %i.h, align 8, !tbaa !29
  invoke void @Ppmd8_Construct(ptr noundef nonnull %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN9NCompress8NPpmdZip4CBufD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #9
  invoke void @_ZN15CByteOutBufWrap4FreeEv(ptr noundef nonnull align 8 dereferenceable(60) %i.b)
          to label %_ZN15CByteOutBufWrapD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #10
  unreachable

_ZN15CByteOutBufWrapD2Ev.exit:                    ; preds = %bb.c
  resume { ptr, i32 } %i.i
}

declare void @_ZN15CByteOutBufWrapC1Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress8NPpmdZip8CEncoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(7492) %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 13 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN9NCompress8NPpmdZip4CBuf5AllocEv.exit, label %_ZN9NCompress8NPpmdZip4CBuf5AllocEv.exit.thread

_ZN9NCompress8NPpmdZip4CBuf5AllocEv.exit:         ; preds = %bb.a
  %i.f = tail call ptr @MidAlloc(i64 noundef 1048576) ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !12
  %.not53 = icmp eq ptr %i.f, null
  br i1 %.not53, label %bb.i, label %_ZN9NCompress8NPpmdZip4CBuf5AllocEv.exit.thread

_ZN9NCompress8NPpmdZip4CBuf5AllocEv.exit.thread:  ; preds = %bb.a, %_ZN9NCompress8NPpmdZip4CBuf5AllocEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = tail call noundef zeroext i1 @_ZN15CByteOutBufWrap5AllocEm(ptr noundef nonnull align 8 dereferenceable(60) %i.g, i64 noundef 1048576)
  br i1 %i.h, label %bb.b, label %bb.i

bb.b:                                             ; preds = %_ZN9NCompress8NPpmdZip4CBuf5AllocEv.exit.thread
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 7480 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !56
  %i.l = shl i32 %i.k, 20
  %i.m = tail call i32 @Ppmd8_Alloc(ptr noundef nonnull %i.i, i32 noundef %i.l, ptr noundef nonnull @_ZN9NCompress8NPpmdZipL10g_BigAllocE)
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %2, ptr %i.n, align 8, !tbaa !59
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !60   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !61
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i64 0, ptr %i.v, align 8, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  store i32 0, ptr %i.w, align 8, !tbaa !65
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.x, align 8, !tbaa !66
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 -1, ptr %i.y, align 8, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 7484 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !57
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 7488 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !50
  tail call void @Ppmd8_Init(ptr noundef nonnull %i.i, i32 noundef %i.aa, i32 noundef %i.ac)
  %i.ad = load i32, ptr %i.z, align 4, !tbaa !57
  %i.ae = load i32, ptr %i.j, align 8, !tbaa !56
  %i.af = shl i32 %i.ae, 4
  %i.ag = add i32 %i.ad, -17
  %i.ah = add i32 %i.ag, %i.af                    ; 2 uses
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !50
  %i.aj = shl i32 %i.ai, 12
  %i.ak = add i32 %i.ah, %i.aj
  %i.al = trunc i32 %i.ah to i8
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !61  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store ptr %i.an, ptr %i.q, align 8, !tbaa !61
  store i8 %i.al, ptr %i.am, align 1, !tbaa !29
  %i.ao = load ptr, ptr %i.q, align 8, !tbaa !61  ; 2 uses
  %i.ap = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.d, label %_ZN15CByteOutBufWrap9WriteByteEh.exit

bb.d:                                             ; preds = %bb.c
  %i.ar = tail call noundef i32 @_ZN15CByteOutBufWrap5FlushEv(ptr noundef nonnull align 8 dereferenceable(60) %i.g) ; 0 uses
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !61
  br label %_ZN15CByteOutBufWrap9WriteByteEh.exit

_ZN15CByteOutBufWrap9WriteByteEh.exit:            ; preds = %bb.c, %bb.d
  %i.as = phi ptr [ %i.ao, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.at = lshr i32 %i.ak, 8
  %i.au = trunc i32 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store ptr %i.av, ptr %i.q, align 8, !tbaa !61
  store i8 %i.au, ptr %i.as, align 1, !tbaa !29
  %i.aw = load ptr, ptr %i.q, align 8, !tbaa !61
  %i.ax = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.e, label %_ZN15CByteOutBufWrap9WriteByteEh.exit47

bb.e:                                             ; preds = %_ZN15CByteOutBufWrap9WriteByteEh.exit
  %i.az = tail call noundef i32 @_ZN15CByteOutBufWrap5FlushEv(ptr noundef nonnull align 8 dereferenceable(60) %i.g) ; 0 uses
  br label %_ZN15CByteOutBufWrap9WriteByteEh.exit47

_ZN15CByteOutBufWrap9WriteByteEh.exit47:          ; preds = %_ZN15CByteOutBufWrap9WriteByteEh.exit, %bb.e
  %i.ba = load i32, ptr %i.w, align 8, !tbaa !68  ; 2 uses
  %.not41 = icmp eq i32 %i.ba, 0
  br i1 %.not41, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN15CByteOutBufWrap9WriteByteEh.exit47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 0, ptr %i.a, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.bc = load ptr, ptr %1, align 8, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef i32 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bb, i32 noundef 1048576, ptr noundef nonnull %i.b) ; 2 uses
  %.not4262 = icmp eq i32 %i.bf, 0
  br i1 %.not4262, label %.lr.ph64, label %.thread49

.lr.ph64:                                         ; preds = %bb.f
  %.not45 = icmp eq ptr %5, null
  br i1 %.not45, label %.lr.ph64.split.us, label %.lr.ph64.split

.lr.ph64.split.us:                                ; preds = %.lr.ph64, %.lr.ph.us
  %i.bg = phi i64 [ %11, %.lr.ph.us ], [ 0, %.lr.ph64 ]
  %i.bh = load i32, ptr %i.b, align 4, !tbaa !4
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %.split.us, label %.backedge.us.a

bb.g:                                             ; preds = %.backedge.us.a
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.bj = load i32, ptr %i.b, align 4, !tbaa !4
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %.not44.us = icmp samesign ult i64 %indvars.iv.next79, %i.bk
  br i1 %.not44.us, label %.backedge.us.a, label %.lr.ph.us, !llvm.loop !70

.backedge.us.a:                                   ; preds = %.lr.ph64.split.us, %bb.g
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %bb.g ], [ 0, %.lr.ph64.split.us ] ; 2 uses
  %6 = load ptr, ptr %i.d, align 8, !tbaa !69
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv78
  %8 = load i8, ptr %7, align 1, !tbaa !29
  %9 = zext i8 %8 to i32
  call void @Ppmd8_EncodeSymbol(ptr noundef nonnull %i.i, i32 noundef %9)
  %10 = load i32, ptr %i.w, align 8, !tbaa !68    ; 2 uses
  %.not42.us.a = icmp eq i32 %10, 0
  br i1 %.not42.us.a, label %bb.g, label %.thread49

.lr.ph.us:                                        ; preds = %bb.g
  %11 = add i64 %i.bg, %i.bk                      ; 2 uses
  store i64 %11, ptr %i.a, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %12 = load ptr, ptr %i.d, align 8, !tbaa !69
  %13 = load ptr, ptr %1, align 8, !tbaa !10
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 40
  %15 = load ptr, ptr %14, align 8
  %16 = call noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %12, i32 noundef 1048576, ptr noundef nonnull %i.b) ; 2 uses
  %.not43.us = icmp eq i32 %16, 0
  br i1 %.not43.us, label %.lr.ph64.split.us, label %.thread49, !llvm.loop !71

.lr.ph64.split:                                   ; preds = %.lr.ph64, %.backedge
  %i.bl = load i32, ptr %i.b, align 4, !tbaa !4
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %.split.us, label %.lr.ph

.split.us:                                        ; preds = %.lr.ph64.split, %.lr.ph64.split.us
  call void @Ppmd8_EncodeSymbol(ptr noundef nonnull %i.i, i32 noundef -1)
  call void @Ppmd8_RangeEnc_FlushData(ptr noundef nonnull %i.i)
  %i.bn = call noundef i32 @_ZN15CByteOutBufWrap5FlushEv(ptr noundef nonnull align 8 dereferenceable(60) %i.g)
  br label %.thread49

bb.h:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bo = load i32, ptr %i.b, align 4, !tbaa !4
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %.not44 = icmp samesign ult i64 %indvars.iv.next, %i.bp
  br i1 %.not44, label %.lr.ph, label %._crit_edge, !llvm.loop !70

.lr.ph:                                           ; preds = %.lr.ph64.split, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.lr.ph64.split ] ; 2 uses
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %indvars.iv
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !29
  %i.bt = zext i8 %i.bs to i32
  call void @Ppmd8_EncodeSymbol(ptr noundef nonnull %i.i, i32 noundef %i.bt)
  %i.bu = load i32, ptr %i.w, align 8, !tbaa !68  ; 2 uses
  %.not43 = icmp eq i32 %i.bu, 0
  br i1 %.not43, label %bb.h, label %.thread49

._crit_edge:                                      ; preds = %bb.h
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !41
  %i.bw = add i64 %i.bv, %i.bp
  store i64 %i.bw, ptr %i.a, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.bx = load i64, ptr %i.v, align 8, !tbaa !64
  %i.by = load ptr, ptr %i.q, align 8, !tbaa !61
  %i.bz = load ptr, ptr %i.o, align 8, !tbaa !60
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = add i64 %i.bx, %i.ca
  %i.cd = sub i64 %i.cc, %i.cb
  store i64 %i.cd, ptr %i.c, align 8, !tbaa !41
  %i.ce = load ptr, ptr %5, align 8, !tbaa !10
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call noundef i32 %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) ; 2 uses
  %.not46 = icmp eq i32 %i.ch, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br i1 %.not46, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.ci = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.cj = load ptr, ptr %1, align 8, !tbaa !10
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ci, i32 noundef 1048576, ptr noundef nonnull %i.b) ; 2 uses
  %.not42 = icmp eq i32 %i.cm, 0
  br i1 %.not42, label %.lr.ph64.split, label %.thread49, !llvm.loop !71

.thread49:                                        ; preds = %.backedge, %.lr.ph, %.lr.ph.us, %.backedge.us.a, %bb.f, %.split.us
  %.8.ph = phi i32 [ %i.bn, %.split.us ], [ %10, %.backedge.us.a ], [ %16, %.lr.ph.us ], [ %i.bf, %bb.f ], [ %i.bu, %.lr.ph ], [ %i.cm, %.backedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.thread49
  %.852 = phi i32 [ %.8.ph, %.thread49 ], [ %i.ch, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %_ZN15CByteOutBufWrap9WriteByteEh.exit47, %bb.b, %_ZN9NCompress8NPpmdZip4CBuf5AllocEv.exit.thread, %_ZN9NCompress8NPpmdZip4CBuf5AllocEv.exit
  %.10 = phi i32 [ -2147024882, %bb.b ], [ -2147024882, %_ZN9NCompress8NPpmdZip4CBuf5AllocEv.exit.thread ], [ -2147024882, %_ZN9NCompress8NPpmdZip4CBuf5AllocEv.exit ], [ %.852, %.loopexit ], [ %i.ba, %_ZN15CByteOutBufWrap9WriteByteEh.exit47 ]
  ret i32 %.10
}

declare noundef zeroext i1 @_ZN15CByteOutBufWrap5AllocEm(ptr noundef nonnull align 8 dereferenceable(60), i64 noundef) local_unnamed_addr #1

declare void @Ppmd8_EncodeSymbol(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Ppmd8_RangeEnc_FlushData(ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZN15CByteOutBufWrap5FlushEv(ptr noundef nonnull align 8 dereferenceable(60)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN9NCompress8NPpmdZip8CDecoder14QueryInterfaceERK4GUIDPPv(ptr noundef nonnull align 8 dereferenceable(7481) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 4, !tbaa !29
  %i.b = load i8, ptr @IID_IUnknown, align 4, !tbaa !29
  %.not.i = icmp eq i8 %i.a, %i.b
  br i1 %.not.i, label %bb.b, label %_ZeqRK4GUIDS1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !29
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 1), align 1, !tbaa !29
  %.not.1.i = icmp eq i8 %i.d, %i.e
  br i1 %.not.1.i, label %bb.c, label %_ZeqRK4GUIDS1_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 2, !tbaa !29
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 2), align 2, !tbaa !29
  %.not.2.i = icmp eq i8 %i.g, %i.h
  br i1 %.not.2.i, label %bb.d, label %_ZeqRK4GUIDS1_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !29
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 3), align 1, !tbaa !29
  %.not.3.i = icmp eq i8 %i.j, %i.k
  br i1 %.not.3.i, label %bb.e, label %_ZeqRK4GUIDS1_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i8, ptr %i.l, align 4, !tbaa !29
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 4), align 4, !tbaa !29
  %.not.4.i = icmp eq i8 %i.m, %i.n
  br i1 %.not.4.i, label %bb.f, label %_ZeqRK4GUIDS1_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !29
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 5), align 1, !tbaa !29
  %.not.5.i = icmp eq i8 %i.p, %i.q
  br i1 %.not.5.i, label %bb.g, label %_ZeqRK4GUIDS1_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.s = load i8, ptr %i.r, align 2, !tbaa !29
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 6), align 2, !tbaa !29
  %.not.6.i = icmp eq i8 %i.s, %i.t
  br i1 %.not.6.i, label %bb.h, label %_ZeqRK4GUIDS1_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.v = load i8, ptr %i.u, align 1, !tbaa !29
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 7), align 1, !tbaa !29
  %.not.7.i = icmp eq i8 %i.v, %i.w
  br i1 %.not.7.i, label %bb.i, label %_ZeqRK4GUIDS1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i8, ptr %i.x, align 4, !tbaa !29
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 8), align 4, !tbaa !29
  %.not.8.i = icmp eq i8 %i.y, %i.z
  br i1 %.not.8.i, label %bb.j, label %_ZeqRK4GUIDS1_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !29
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 9), align 1, !tbaa !29
  %.not.9.i = icmp eq i8 %i.ab, %i.ac
  br i1 %.not.9.i, label %bb.k, label %_ZeqRK4GUIDS1_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !29
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 10), align 2, !tbaa !29
  %.not.10.i = icmp eq i8 %i.ae, %i.af
  br i1 %.not.10.i, label %bb.l, label %_ZeqRK4GUIDS1_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !29
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 11), align 1, !tbaa !29
  %.not.11.i = icmp eq i8 %i.ah, %i.ai
  br i1 %.not.11.i, label %bb.m, label %_ZeqRK4GUIDS1_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !29
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 12), align 4, !tbaa !29
  %.not.12.i = icmp eq i8 %i.ak, %i.al
  br i1 %.not.12.i, label %bb.n, label %_ZeqRK4GUIDS1_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.an = load i8, ptr %i.am, align 1, !tbaa !29
  %i.ao = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 13), align 1, !tbaa !29
  %.not.13.i = icmp eq i8 %i.an, %i.ao
  br i1 %.not.13.i, label %bb.o, label %_ZeqRK4GUIDS1_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !29
  %i.ar = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 14), align 2, !tbaa !29
  %.not.14.i = icmp eq i8 %i.aq, %i.ar
  br i1 %.not.14.i, label %_ZeqRK4GUIDS1_.exit, label %_ZeqRK4GUIDS1_.exit.thread

_ZeqRK4GUIDS1_.exit:                              ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.at = load i8, ptr %i.as, align 1, !tbaa !29
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 15), align 1, !tbaa !29
  %.not.15.i.not = icmp eq i8 %i.at, %i.au
  br i1 %.not.15.i.not, label %bb.p, label %_ZeqRK4GUIDS1_.exit.thread

bb.p:                                             ; preds = %_ZeqRK4GUIDS1_.exit
  store ptr %0, ptr %2, align 8, !tbaa !72
  %i.av = load ptr, ptr %0, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(7481) %0) ; 0 uses
  br label %_ZeqRK4GUIDS1_.exit.thread

_ZeqRK4GUIDS1_.exit.thread:                       ; preds = %bb.m, %bb.h, %bb.l, %bb.g, %bb.n, %bb.f, %bb.j, %bb.e, %bb.o, %bb.d, %bb.k, %bb.c, %bb.b, %bb.i, %bb.a, %_ZeqRK4GUIDS1_.exit, %bb.p
  %.0 = phi i32 [ 0, %bb.p ], [ -2147467262, %_ZeqRK4GUIDS1_.exit ], [ -2147467262, %bb.a ], [ -2147467262, %bb.i ], [ -2147467262, %bb.b ], [ -2147467262, %bb.c ], [ -2147467262, %bb.k ], [ -2147467262, %bb.d ], [ -2147467262, %bb.o ], [ -2147467262, %bb.e ], [ -2147467262, %bb.j ], [ -2147467262, %bb.f ], [ -2147467262, %bb.n ], [ -2147467262, %bb.g ], [ -2147467262, %bb.l ], [ -2147467262, %bb.h ], [ -2147467262, %bb.m ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9NCompress8NPpmdZip8CDecoder6AddRefEv(ptr noundef nonnull align 8 dereferenceable(7481) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !8
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9NCompress8NPpmdZip8CDecoder7ReleaseEv(ptr noundef nonnull align 8 dereferenceable(7481) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(7481) %0) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN9NCompress8NPpmdZip8CEncoder14QueryInterfaceERK4GUIDPPv(ptr noundef nonnull align 8 dereferenceable(7492) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 4, !tbaa !29
  %i.b = load i8, ptr @IID_IUnknown, align 4, !tbaa !29
  %.not.i = icmp eq i8 %i.a, %i.b
  br i1 %.not.i, label %bb.b, label %_ZeqRK4GUIDS1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !29
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 1), align 1, !tbaa !29
  %.not.1.i = icmp eq i8 %i.d, %i.e
  br i1 %.not.1.i, label %bb.c, label %_ZeqRK4GUIDS1_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 2, !tbaa !29
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 2), align 2, !tbaa !29
  %.not.2.i = icmp eq i8 %i.g, %i.h
  br i1 %.not.2.i, label %bb.d, label %_ZeqRK4GUIDS1_.exit.thread

end_hunk_0
