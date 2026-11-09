Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/extinfo?download=true
inline.NumInlined: 51
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z12SetUnixOwnerR7ArchivePKw:bb.a
bb.h:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !87
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 31156
  store i32 %i.am, ptr %i.an, align 4, !tbaa !93
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 31152
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !91
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 31156
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !93
  %i.as = call i32 @lchown(ptr noundef nonnull %i.a, i32 noundef %i.ap, i32 noundef %i.ar) #12
  %.not23 = icmp eq i32 %i.as, 0
  br i1 %.not23, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x ptr> <ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3>, ptr %i.av, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr @.str.3, ptr %i.aw, align 8, !tbaa !10
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @.str.3, ptr %i.ax, align 8, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i8 0, i64 40, i1 false)
  store i32 92, ptr %i.az, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr %i.at, ptr %2, align 8, !tbaa !10
  store i32 2, ptr %i.ba, align 8, !tbaa !14
  store ptr %1, ptr %i.au, align 8, !tbaa !10
  call void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %.critedge25, %bb.j
  %.sink = phi i32 [ 9, %bb.j ], [ 1, %.critedge25 ], [ 1, %.critedge ]
  call void @_ZN12ErrorHandler12SetErrorCodeE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef %.sink)
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_Z14SetExtraInfo20P11CommandDataR7ArchivePw(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(57108) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z12SetExtraInfoP11CommandDataR7ArchivePw(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(57108) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 58617
  %i.b = load i8, ptr %i.a, align 1, !tbaa !94, !range !32, !noundef !33
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 57488
  %i.e = load i8, ptr %i.d, align 8, !tbaa !88, !range !32, !noundef !33
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48840
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 2
  %or.cond = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 31264
  %i.k = tail call i32 @wcscmp(ptr noundef nonnull %i.j, ptr noundef nonnull @.str) #13
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_Z18ExtractUnixOwner30R7ArchivePKw(ptr noundef nonnull align 8 dereferenceable(57108) %1, ptr noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z18SetFileHeaderExtraP11CommandDataR7ArchivePw(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(57108) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 57488
  %i.b = load i8, ptr %i.a, align 8, !tbaa !88, !range !32, !noundef !33
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48840
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 3
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 30637
  %i.h = load i8, ptr %i.g, align 1, !range !32
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond9 = select i1 %or.cond, i1 %i.i, i1 false
  br i1 %or.cond9, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z12SetUnixOwnerR7ArchivePKw(ptr noundef nonnull align 8 dereferenceable(57108) %1, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z21IsRelativeSymlinkSafeP11CommandDataPKwS2_S2_(ptr nofree noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 8 uses
  %4 = alloca %struct.FindData, align 8           ; 7 uses
  %i.b = tail call noundef zeroext i1 @_Z14IsFullRootPathPKw(ptr noundef %1)
  br i1 %i.b, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_Z14IsFullRootPathPKw(ptr noundef %3)
  br i1 %i.c, label %bb.t, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.d = load i32, ptr %3, align 4, !tbaa !80     ; 2 uses
  switch i32 %i.d, label %.preheader.preheader46 [
    i32 0, label %.loopexit42.thread
    i32 46, label %bb.c
  ]

bb.c:                                             ; preds = %.preheader.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !80
  %i.g = icmp eq i32 %i.f, 46
  br i1 %i.g, label %bb.d, label %.preheader.preheader46

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !80
  %i.j = tail call noundef zeroext i1 @_Z9IsPathDivi(i32 noundef %i.i)
  br i1 %i.j, label %.thread39.peel, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %i.h, align 4, !tbaa !80
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.thread39.peel, label %.preheader.preheader46

.thread39.peel:                                   ; preds = %bb.d, %bb.e
  br label %.preheader.preheader46

.preheader.preheader46:                           ; preds = %.thread39.peel, %bb.e, %bb.c, %.preheader.preheader
  %.031.ph = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ 1, %.thread39.peel ], [ 0, %.preheader.preheader ]
  br label %.preheader.outer

.preheader.outer:                                 ; preds = %.preheader.preheader46, %bb.i
  %.033.pn.ph = phi ptr [ %3, %.preheader.preheader46 ], [ %.033, %bb.i ]
  %.031.ph47 = phi i32 [ %.031.ph, %.preheader.preheader46 ], [ %spec.select, %bb.i ] ; 4 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.outer
  %.033.pn = phi ptr [ %.033.pn.ph, %.preheader.outer ], [ %.033, %.preheader.backedge ] ; 4 uses
  %.033 = getelementptr inbounds nuw i8, ptr %.033.pn, i64 4 ; 3 uses
  %i.m = load i32, ptr %.033, align 4, !tbaa !80
  switch i32 %i.m, label %.preheader.backedge [
    i32 0, label %.loopexit42
    i32 46, label %bb.f
  ]

.preheader.backedge:                              ; preds = %.preheader, %bb.f, %bb.h
  br label %.preheader, !llvm.loop !95

.loopexit42:                                      ; preds = %.preheader
  %.not = icmp eq i32 %.031.ph47, 0
  br i1 %.not, label %.loopexit42.thread, label %bb.j

bb.f:                                             ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %.033.pn, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !80
  %i.p = icmp eq i32 %i.o, 46
  br i1 %i.p, label %bb.g, label %.preheader.backedge

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.033.pn, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !80
  %i.s = tail call noundef zeroext i1 @_Z9IsPathDivi(i32 noundef %i.r)
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load i32, ptr %i.q, align 4, !tbaa !80
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.i, label %.preheader.backedge

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.v = load i32, ptr %.033.pn, align 4, !tbaa !80
  %i.w = tail call noundef zeroext i1 @_Z9IsPathDivi(i32 noundef %i.v)
  %i.x = zext i1 %i.w to i32
  %spec.select = add nuw nsw i32 %.031.ph47, %i.x
  br label %.preheader.outer, !llvm.loop !95

bb.j:                                             ; preds = %.loopexit42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.y = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %2) #13
  %i.z = icmp ugt i64 %i.y, 2047
  br i1 %i.z, label %_ZL10LinkInPathPKw.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.a, ptr noundef nonnull %2, i64 noundef 2048)
  %i.aa = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.a) #13 ; 2 uses
  %.not1517.i = icmp ugt i64 %i.aa, 1
  br i1 %.not1517.i, label %.lr.ph.i, label %_ZL10LinkInPathPKw.exit

.lr.ph.i:                                         ; preds = %bb.k
  %.idx.i = shl nuw nsw i64 %i.aa, 2
  %i.ab = getelementptr i8, ptr %i.a, i64 %.idx.i
  %.016.i = getelementptr i8, ptr %i.ab, i64 -4
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8208
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8205
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8204
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.i
  %.018.i = phi ptr [ %.016.i, %.lr.ph.i ], [ %.0.i, %bb.p ] ; 3 uses
  %i.af = load i32, ptr %.018.i, align 4, !tbaa !80
  %i.ag = call noundef zeroext i1 @_Z9IsPathDivi(i32 noundef %i.af)
  br i1 %i.ag, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %.018.i, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %i.ah = call noundef zeroext i1 @_ZN8FindFile8FastFindEPKwP8FindDatab(ptr noundef nonnull %i.a, ptr noundef nonnull %4, i1 noundef zeroext true)
  br i1 %i.ah, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %bb.m
  %i.ai = load i8, ptr %i.ad, align 1, !tbaa !100, !range !32, !noundef !33
  %i.aj = trunc nuw i8 %i.ai to i1
  %.not.i = xor i1 %i.aj, true
  %i.ak = load i8, ptr %i.ae, align 4, !range !32
  %i.al = trunc nuw i8 %i.ak to i1
  %or.cond.i = select i1 %.not.i, i1 %i.al, i1 false
  br i1 %or.cond.i, label %.critedge.i, label %bb.o

.critedge.i:                                      ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZL10LinkInPathPKw.exit.thread

bb.p:                                             ; preds = %.critedge.i, %bb.l
  %.0.i = getelementptr inbounds i8, ptr %.018.i, i64 -4 ; 2 uses
  %.not15.i = icmp ugt ptr %.0.i, %i.a
  br i1 %.not15.i, label %bb.l, label %_ZL10LinkInPathPKw.exit, !llvm.loop !96

_ZL10LinkInPathPKw.exit.thread:                   ; preds = %bb.j, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.t

_ZL10LinkInPathPKw.exit:                          ; preds = %bb.p, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit42.thread

.loopexit42.thread:                               ; preds = %.preheader.preheader, %_ZL10LinkInPathPKw.exit, %.loopexit42
  %.031.lcssa45 = phi i32 [ %.031.ph47, %.loopexit42 ], [ %.031.ph47, %_ZL10LinkInPathPKw.exit ], [ %i.d, %.preheader.preheader ] ; 2 uses
  %i.am = call fastcc noundef i32 @_ZL16CalcAllowedDepthPKw(ptr noundef %1)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16416 ; 2 uses
  %i.ao = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.an) #13 ; 3 uses
  %.not38 = icmp eq i64 %i.ao, 0
  br i1 %.not38, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %.loopexit42.thread
  %i.ap = call i32 @wcsncmp(ptr noundef %2, ptr noundef nonnull %i.an, i64 noundef %i.ao) #13
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ao
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.034 = phi ptr [ %i.ar, %bb.r ], [ %i.au, %bb.s ] ; 3 uses
  %i.as = load i32, ptr %.034, align 4, !tbaa !80
  %i.at = call noundef zeroext i1 @_Z9IsPathDivi(i32 noundef %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %.034, i64 4
  br i1 %i.at, label %bb.s, label %.loopexit, !llvm.loop !97

.loopexit:                                        ; preds = %bb.s, %bb.q, %.loopexit42.thread
  %.135 = phi ptr [ %2, %.loopexit42.thread ], [ %2, %bb.q ], [ %.034, %bb.s ]
  %i.av = call fastcc noundef i32 @_ZL16CalcAllowedDepthPKw(ptr noundef %.135)
  %i.aw = icmp sge i32 %i.am, %.031.lcssa45
  %i.ax = icmp sge i32 %i.av, %.031.lcssa45
  %i.ay = and i1 %i.aw, %i.ax
  br label %bb.t

bb.t:                                             ; preds = %_ZL10LinkInPathPKw.exit.thread, %.loopexit, %bb.a, %bb.b
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.ay, %.loopexit ], [ false, %_ZL10LinkInPathPKw.exit.thread ]
  ret i1 %.1
}

declare noundef zeroext i1 @_Z14IsFullRootPathPKw(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_Z9IsPathDivi(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, -2147483648) i32 @_ZL16CalcAllowedDepthPKw(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !80     ; 2 uses
  %.not27 = icmp eq i32 %i.a, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.k
  %i.b = phi i32 [ %i.aa, %bb.k ], [ %i.a, %bb.a ]
  %.029 = phi i32 [ %.2, %bb.k ], [ 0, %bb.a ]    ; 6 uses
  %.01928 = phi ptr [ %i.z, %bb.k ], [ %0, %bb.a ] ; 4 uses
  %i.c = tail call noundef zeroext i1 @_Z9IsPathDivi(i32 noundef %i.b)
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.01928, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !80   ; 2 uses
  %.not22 = icmp eq i32 %i.e, 0
  br i1 %.not22, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_Z9IsPathDivi(i32 noundef %i.e)
  br i1 %i.f, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.d, align 4, !tbaa !80
  %i.h = icmp eq i32 %i.g, 46
  br i1 %i.h, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.01928, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !80
  %i.k = tail call noundef zeroext i1 @_Z9IsPathDivi(i32 noundef %i.j)
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.i, align 4, !tbaa !80
  %i.m = icmp eq i32 %i.l, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.ph = phi i1 [ %i.m, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %.pr = load i32, ptr %i.d, align 4, !tbaa !80
  %i.n = icmp eq i32 %.pr, 46
  br i1 %i.n, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.o = load i32, ptr %i.i, align 4, !tbaa !80
  %i.p = icmp eq i32 %i.o, 46
  br i1 %i.p, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %.01928, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !80
  %i.s = tail call noundef zeroext i1 @_Z9IsPathDivi(i32 noundef %i.r)
  br i1 %i.s, label %.thread25, label %.split

.thread25:                                        ; preds = %bb.i
  %i.t = add nsw i32 %.029, -1
  br label %bb.k

.split:                                           ; preds = %bb.i
  %i.u = load i32, ptr %i.q, align 4, !tbaa !80
  %.fr = freeze i32 %i.u
  %i.v = icmp eq i32 %.fr, 0                      ; 2 uses
  %i.w = or i1 %.ph, %i.v
  %i.x = sext i1 %i.v to i32
  br i1 %i.w, label %bb.j, label %.critedge

.thread:                                          ; preds = %bb.h, %bb.g
  br i1 %.ph, label %bb.j, label %.critedge

.critedge:                                        ; preds = %.split, %bb.d, %.thread
  %i.y = add nsw i32 %.029, 1
  br label %bb.k

bb.j:                                             ; preds = %.split, %.thread
  %cond.fr32 = phi i32 [ %i.x, %.split ], [ 0, %.thread ]
  %spec.select = add nsw i32 %cond.fr32, %.029
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread25, %.critedge, %bb.c, %bb.b, %.lr.ph
  %.2 = phi i32 [ %.029, %bb.c ], [ %.029, %.lr.ph ], [ %.029, %bb.b ], [ %i.y, %.critedge ], [ %spec.select, %bb.j ], [ %i.t, %.thread25 ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01928, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !80  ; 2 uses
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !101

._crit_edge.loopexit:                             ; preds = %bb.k
  %i.ab = tail call i32 @llvm.smax.i32(i32 %.2, i32 0)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.ab, %._crit_edge.loopexit ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcsncmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z14ExtractSymlinkP11CommandDataR11ComprDataIOR7ArchivePKwRb(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(266) %1, ptr noundef nonnull align 8 dereferenceable(57108) %2, ptr noundef %3, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 9 uses
  %i.b = alloca [2048 x i32], align 16            ; 7 uses
  %i.c = alloca [2048 x i8], align 16             ; 10 uses
  %i.d = alloca [2048 x i32], align 16            ; 7 uses
  store i8 1, ptr %4, align 1, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48840
  %i.f = load i32, ptr %i.e, align 8, !tbaa !79
  switch i32 %i.f, label %bb.ab [
    i32 3, label %.thread
    i32 2, label %bb.b
  ]

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 22444 ; 2 uses
  %i.h = tail call ptr @wcsstr(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.1) #13
  %i.i = icmp ne ptr %i.h, null
  %i.j = zext i1 %i.i to i8
  store i8 %i.j, ptr %4, align 1, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.k = call noundef zeroext i1 @_Z10WideToCharPKwPcm(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, i64 noundef 2048) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 22440
  %i.m = load i32, ptr %i.l, align 8, !tbaa !105
  %i.n = and i32 %i.m, -2
  %switch.i = icmp eq i32 %i.n, 2
  br i1 %switch.i, label %bb.p, label %bb.r

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 14012
  %i.p = load i32, ptr %i.o, align 4, !tbaa !81
  %i.q = tail call noundef zeroext i1 @_Z6IsLinkj(i32 noundef %i.p)
  br i1 %i.q, label %bb.c, label %_ZL17ExtractUnixLink30P11CommandDataR11ComprDataIOR7ArchivePKwRb.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 22264
  %i.s = load i64, ptr %i.r, align 8, !tbaa !106  ; 4 uses
  %i.t = icmp ugt i64 %i.s, 2047
  br i1 %i.t, label %_ZL17ExtractUnixLink30P11CommandDataR11ComprDataIOR7ArchivePKwRb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = call noundef i32 @_ZN11ComprDataIO7UnpReadEPhm(ptr noundef nonnull align 8 dereferenceable(266) %1, ptr noundef nonnull %i.c, i64 noundef %i.s)
  %i.v = sext i32 %i.u to i64
  %.not.i = icmp eq i64 %i.s, %i.v
  br i1 %.not.i, label %bb.e, label %_ZL17ExtractUnixLink30P11CommandDataR11ComprDataIOR7ArchivePKwRb.exit

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.s
  store i8 0, ptr %i.w, align 1, !tbaa !81
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 22288 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !107
  call void @_ZN8DataHash4InitE9HASH_TYPEj(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i32 noundef %i.z, i32 noundef 1)
  %i.aa = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #13
  call void @_ZN8DataHash6UpdateEPKvm(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull %i.c, i64 noundef %i.aa)
  call void @_ZN8DataHash6ResultEP9HashValue(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull %i.y)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 22378
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !108, !range !32, !noundef !33
  %i.ad = trunc nuw i8 %i.ac to i1
end_hunk_0
