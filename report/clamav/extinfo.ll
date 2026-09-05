Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/extinfo?download=true
inline.NumInlined: 51
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z21IsRelativeSymlinkSafeP11CommandDataPKwS2_S2_:bb.a
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
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 22379
  %i.af = select i1 %i.ad, ptr %i.ae, ptr null
  %i.ag = call noundef zeroext i1 @_ZN8DataHash3CmpEP9HashValuePh(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull %i.y, ptr noundef %i.af)
  br i1 %i.ag, label %bb.f, label %_ZL17ExtractUnixLink30P11CommandDataR11ComprDataIOR7ArchivePKwRb.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.ah = call noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef 2048)
  br i1 %i.ah, label %bb.g, label %_ZL14SafeCharToWidePKcPwm.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.ai = load i32, ptr %i.d, align 16, !tbaa !80 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZL14SafeCharToWidePKcPwm.exit.thread.i, label %.preheader30.i.i

.preheader30.i.i:                                 ; preds = %bb.g, %bb.i
  %.024.i.i = phi i32 [ %.125.i.i, %bb.i ], [ 0, %bb.g ] ; 3 uses
  %.022.i.i = phi i32 [ %6, %bb.i ], [ 0, %bb.g ] ; 2 uses
  %5 = zext i32 %.022.i.i to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 %5
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !81
  switch i8 %i.al, label %bb.i [
    i8 0, label %.preheader.i.i
    i8 47, label %bb.h
    i8 46, label %bb.h
  ]

bb.h:                                             ; preds = %.preheader30.i.i, %.preheader30.i.i
  %i.am = add i32 %.024.i.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader30.i.i
  %.125.i.i = phi i32 [ %i.am, %bb.h ], [ %.024.i.i, %.preheader30.i.i ]
  %6 = add i32 %.022.i.i, 1
  br label %.preheader30.i.i, !llvm.loop !102

.preheader.i.i:                                   ; preds = %.preheader30.i.i, %bb.k
  %i.an = phi i32 [ %.pre.i.i, %bb.k ], [ %i.ai, %.preheader30.i.i ]
  %.023.i.i = phi i32 [ %.1.i.i, %bb.k ], [ 0, %.preheader30.i.i ] ; 3 uses
  %.0.i.i = phi i32 [ %i.ap, %bb.k ], [ 0, %.preheader30.i.i ]
  switch i32 %i.an, label %bb.k [
    i32 0, label %_ZL14SafeCharToWidePKcPwm.exit.i
    i32 47, label %bb.j
    i32 46, label %bb.j
  ]

bb.j:                                             ; preds = %.preheader.i.i, %.preheader.i.i
  %i.ao = add i32 %.023.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader.i.i
  %.1.i.i = phi i32 [ %i.ao, %bb.j ], [ %.023.i.i, %.preheader.i.i ]
  %i.ap = add i32 %.0.i.i, 1                      ; 2 uses
  %.phi.trans.insert.i.i = zext i32 %i.ap to i64
  %.phi.trans.insert31.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.phi.trans.insert.i.i
  %.pre.i.i = load i32, ptr %.phi.trans.insert31.i.i, align 4, !tbaa !80
  br label %.preheader.i.i, !llvm.loop !103

_ZL14SafeCharToWidePKcPwm.exit.i:                 ; preds = %.preheader.i.i
  %i.aq = icmp eq i32 %.024.i.i, %.023.i.i
  br i1 %i.aq, label %bb.l, label %_ZL14SafeCharToWidePKcPwm.exit.thread.i

bb.l:                                             ; preds = %_ZL14SafeCharToWidePKcPwm.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 57491
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !109, !range !32, !noundef !33
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = call noundef zeroext i1 @_Z10IsFullPathPKw(ptr noundef nonnull %i.d)
  br i1 %i.au, label %_ZL14SafeCharToWidePKcPwm.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 14016
  %i.aw = call noundef zeroext i1 @_Z21IsRelativeSymlinkSafeP11CommandDataPKwS2_S2_(ptr noundef nonnull %0, ptr noundef nonnull %i.av, ptr noundef %3, ptr noundef nonnull %i.d)
  br i1 %i.aw, label %bb.o, label %_ZL14SafeCharToWidePKcPwm.exit.thread.i

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.ax = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.2) #13
  %i.ay = icmp ne ptr %i.ax, null
  %i.az = zext i1 %i.ay to i8
  store i8 %i.az, ptr %4, align 1, !tbaa !104
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 22240
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 22256
  %i.bc = getelementptr i8, ptr %0, i64 57431
  %.val.i = load i8, ptr %i.bc, align 1, !tbaa !31, !range !32, !noundef !33
  %i.bd = call fastcc noundef zeroext i1 @_ZL11UnixSymlinkP11CommandDataPKcPKwP7RarTimeS6_(i8 %.val.i, ptr noundef %i.c, ptr noundef %3, ptr noundef %i.ba, ptr noundef %i.bb)
  br label %_ZL14SafeCharToWidePKcPwm.exit.thread.i

_ZL14SafeCharToWidePKcPwm.exit.thread.i:          ; preds = %bb.o, %bb.n, %bb.m, %_ZL14SafeCharToWidePKcPwm.exit.i, %bb.g, %bb.f
  %.0.i = phi i1 [ %i.bd, %bb.o ], [ false, %_ZL14SafeCharToWidePKcPwm.exit.i ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.g ], [ false, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %_ZL17ExtractUnixLink30P11CommandDataR11ComprDataIOR7ArchivePKwRb.exit

_ZL17ExtractUnixLink30P11CommandDataR11ComprDataIOR7ArchivePKwRb.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %_ZL14SafeCharToWidePKcPwm.exit.thread.i
  %.2.i = phi i1 [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ %.0.i, %_ZL14SafeCharToWidePKcPwm.exit.thread.i ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.ab

bb.p:                                             ; preds = %.thread
  %lhsv.i = load i32, ptr %i.a, align 16
  switch i32 %lhsv.i, label %bb.q [
    i32 1547648860, label %_ZL17ExtractUnixLink50P11CommandDataPKwP10FileHeader.exit
    i32 792674095, label %_ZL17ExtractUnixLink50P11CommandDataPKwP10FileHeader.exit
  ]

bb.q:                                             ; preds = %bb.p
  call void @_Z14DosSlashToUnixPKcPcm(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef 2048)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.be = call noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef 2048)
  br i1 %i.be, label %bb.s, label %_ZL14SafeCharToWidePKcPwm.exit.thread.i16

bb.s:                                             ; preds = %bb.r
  %i.bf = load i32, ptr %i.b, align 16, !tbaa !80 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZL14SafeCharToWidePKcPwm.exit.thread.i16, label %.preheader30.i.i18

.preheader30.i.i18:                               ; preds = %bb.s, %bb.u
  %.024.i.i19 = phi i32 [ %.125.i.i21, %bb.u ], [ 0, %bb.s ] ; 3 uses
  %.022.i.i20 = phi i32 [ %8, %bb.u ], [ 0, %bb.s ] ; 2 uses
  %7 = zext i32 %.022.i.i20 to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %7
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !81
  switch i8 %i.bi, label %bb.u [
    i8 0, label %.preheader.i.i23
    i8 47, label %bb.t
    i8 46, label %bb.t
  ]

bb.t:                                             ; preds = %.preheader30.i.i18, %.preheader30.i.i18
  %i.bj = add i32 %.024.i.i19, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.preheader30.i.i18
  %.125.i.i21 = phi i32 [ %i.bj, %bb.t ], [ %.024.i.i19, %.preheader30.i.i18 ]
  %8 = add i32 %.022.i.i20, 1
  br label %.preheader30.i.i18, !llvm.loop !102

.preheader.i.i23:                                 ; preds = %.preheader30.i.i18, %bb.w
  %i.bk = phi i32 [ %.pre.i.i29, %bb.w ], [ %i.bf, %.preheader30.i.i18 ]
  %.023.i.i24 = phi i32 [ %.1.i.i26, %bb.w ], [ 0, %.preheader30.i.i18 ] ; 3 uses
  %.0.i.i25 = phi i32 [ %i.bm, %bb.w ], [ 0, %.preheader30.i.i18 ]
  switch i32 %i.bk, label %bb.w [
    i32 0, label %_ZL14SafeCharToWidePKcPwm.exit.i30
    i32 47, label %bb.v
    i32 46, label %bb.v
  ]

bb.v:                                             ; preds = %.preheader.i.i23, %.preheader.i.i23
  %i.bl = add i32 %.023.i.i24, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.preheader.i.i23
  %.1.i.i26 = phi i32 [ %i.bl, %bb.v ], [ %.023.i.i24, %.preheader.i.i23 ]
  %i.bm = add i32 %.0.i.i25, 1                    ; 2 uses
  %.phi.trans.insert.i.i27 = zext i32 %i.bm to i64
  %.phi.trans.insert31.i.i28 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.phi.trans.insert.i.i27
  %.pre.i.i29 = load i32, ptr %.phi.trans.insert31.i.i28, align 4, !tbaa !80
  br label %.preheader.i.i23, !llvm.loop !103

_ZL14SafeCharToWidePKcPwm.exit.i30:               ; preds = %.preheader.i.i23
  %i.bn = icmp eq i32 %.024.i.i19, %.023.i.i24
  br i1 %i.bn, label %bb.x, label %_ZL14SafeCharToWidePKcPwm.exit.thread.i16

bb.x:                                             ; preds = %_ZL14SafeCharToWidePKcPwm.exit.i30
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 57491
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !109, !range !32, !noundef !33
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = call noundef zeroext i1 @_Z10IsFullPathPKw(ptr noundef nonnull %i.b)
  br i1 %i.br, label %_ZL14SafeCharToWidePKcPwm.exit.thread.i16, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 14016
  %i.bt = call noundef zeroext i1 @_Z21IsRelativeSymlinkSafeP11CommandDataPKwS2_S2_(ptr noundef nonnull %0, ptr noundef nonnull %i.bs, ptr noundef %3, ptr noundef nonnull %i.b)
  br i1 %i.bt, label %bb.aa, label %_ZL14SafeCharToWidePKcPwm.exit.thread.i16

bb.aa:                                            ; preds = %bb.z, %bb.x
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 22240
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 22256
  %i.bw = getelementptr i8, ptr %0, i64 57431
  %.val.i31 = load i8, ptr %i.bw, align 1, !tbaa !31, !range !32, !noundef !33
  %i.bx = call fastcc noundef zeroext i1 @_ZL11UnixSymlinkP11CommandDataPKcPKwP7RarTimeS6_(i8 %.val.i31, ptr noundef %i.a, ptr noundef %3, ptr noundef %i.bu, ptr noundef %i.bv)
  br label %_ZL14SafeCharToWidePKcPwm.exit.thread.i16

_ZL14SafeCharToWidePKcPwm.exit.thread.i16:        ; preds = %bb.aa, %bb.z, %bb.y, %_ZL14SafeCharToWidePKcPwm.exit.i30, %bb.s, %bb.r
  %.0.i17 = phi i1 [ %i.bx, %bb.aa ], [ false, %_ZL14SafeCharToWidePKcPwm.exit.i30 ], [ false, %bb.z ], [ false, %bb.y ], [ false, %bb.s ], [ false, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %_ZL17ExtractUnixLink50P11CommandDataPKwP10FileHeader.exit

_ZL17ExtractUnixLink50P11CommandDataPKwP10FileHeader.exit: ; preds = %bb.p, %bb.p, %_ZL14SafeCharToWidePKcPwm.exit.thread.i16
  %.1.i = phi i1 [ %.0.i17, %_ZL14SafeCharToWidePKcPwm.exit.thread.i16 ], [ false, %bb.p ], [ false, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %_ZL17ExtractUnixLink50P11CommandDataPKwP10FileHeader.exit, %_ZL17ExtractUnixLink30P11CommandDataR11ComprDataIOR7ArchivePKwRb.exit
  %.0 = phi i1 [ %.2.i, %_ZL17ExtractUnixLink30P11CommandDataR11ComprDataIOR7ArchivePKwRb.exit ], [ %.1.i, %_ZL17ExtractUnixLink50P11CommandDataPKwP10FileHeader.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @wcsstr(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcscmp(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @_Z8wcsncpyzPwPKwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN8FindFile8FastFindEPKwP8FindDatab(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef zeroext i1 @_Z6IsLinkj(i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN11ComprDataIO7UnpReadEPhm(ptr noundef nonnull align 8 dereferenceable(266), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN8DataHash4InitE9HASH_TYPEj(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN8DataHash6UpdateEPKvm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN8DataHash6ResultEP9HashValue(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN8DataHash3CmpEP9HashValuePh(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_Z10IsFullPathPKw(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL11UnixSymlinkP11CommandDataPKcPKwP7RarTimeS6_(i8 %.57431.val, ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %class.uiMsgStore, align 8          ; 11 uses
  %5 = alloca %class.uiMsgStore, align 8          ; 11 uses
  %i.a = alloca [2048 x i8], align 16             ; 5 uses
  %6 = alloca [2 x %struct.timespec], align 16    ; 7 uses
  %i.b = trunc nuw i8 %.57431.val to i1
  %i.c = tail call noundef zeroext i1 @_Z10CreatePathPKwbb(ptr noundef %1, i1 noundef zeroext true, i1 noundef zeroext %i.b) ; 0 uses
  %i.d = tail call noundef zeroext i1 @_Z7DelFilePKw(ptr noundef %1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.e = call noundef zeroext i1 @_Z10WideToCharPKwPcm(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef 2048) ; 0 uses
  %i.f = call i32 @symlink(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12
  %i.g = icmp ne i32 %i.f, -1                     ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__errno_location() #14
  %i.i = load i32, ptr %i.h, align 4, !tbaa !110
  %i.j = icmp eq i32 %i.i, 17
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <4 x ptr> <ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3>, ptr %i.k, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @.str.3, ptr %i.l, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr @.str.3, ptr %i.m, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr @.str.3, ptr %i.n, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, i8 0, i64 40, i1 false)
  store i32 94, ptr %i.p, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i32 1, ptr %i.q, align 8, !tbaa !14
  store ptr %1, ptr %5, align 8, !tbaa !10
  call void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x ptr> <ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3>, ptr %i.s, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr @.str.3, ptr %i.t, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr @.str.3, ptr %i.u, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, i8 0, i64 40, i1 false)
  store i32 21, ptr %i.w, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 96
  store ptr null, ptr %4, align 8, !tbaa !10
  store i32 2, ptr %i.x, align 8, !tbaa !14
  store ptr %1, ptr %i.r, align 8, !tbaa !10
  call void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @_ZN12ErrorHandler12SetErrorCodeE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 1)
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.y = call noundef i64 @_ZN7RarTime7GetUnixEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  store i64 %i.y, ptr %6, align 16, !tbaa !112
  %i.z = load i64, ptr %3, align 8, !tbaa !113
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = call noundef i64 @_ZN7RarTime9GetUnixNSEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ab = urem i64 %i.aa, 1000000000
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ac = phi i64 [ %i.ab, %bb.f ], [ 1073741823, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !114
  %i.ae = call noundef i64 @_ZN7RarTime7GetUnixEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.ae, ptr %i.af, align 16, !tbaa !112
  %i.ag = load i64, ptr %2, align 8, !tbaa !113
  %.not5 = icmp eq i64 %i.ag, 0
  br i1 %.not5, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = call noundef i64 @_ZN7RarTime9GetUnixNSEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.ai = urem i64 %i.ah, 1000000000
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.aj = phi i64 [ %i.ai, %bb.h ], [ 1073741823, %bb.g ]
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !114
  %i.al = call i32 @utimensat(i32 noundef -100, ptr noundef nonnull %i.a, ptr noundef nonnull %6, i32 noundef 256) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.d, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i1 %i.g
}

declare noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_Z7DelFilePKw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @symlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

declare noundef i64 @_ZN7RarTime7GetUnixEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef i64 @_ZN7RarTime9GetUnixNSEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @utimensat(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare void @_Z14DosSlashToUnixPKcPcm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11
end_hunk_0
