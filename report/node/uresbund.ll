inline.NumInlined: 562
inline.NumDeleted: 93
begin_hunk_0_@_ZL17ures_openWithTypeP15UResourceBundlePKcS2_12UResOpenTypeP10UErrorCode:bb.a
bb.v:                                             ; preds = %bb.t
  %.old11.i = load i8, ptr %i.f, align 1
  %.old12.not.i = icmp eq i8 %.old11.i, 0
  br i1 %.old12.not.i, label %bb.w, label %.critedge.i

bb.w:                                             ; preds = %bb.v, %_ZL13mayHaveParentPc.exit104.i
  %i.aw = call fastcc noundef signext i8 @_ZL21loadParentsExceptRootRP18UResourceDataEntryPciaS2_P10UErrorCode(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.h, ptr noundef nonnull %4)
  %.not92.i = icmp eq i8 %i.aw, 0
  br i1 %.not92.i, label %.critedge.i, label %.threadthread-pre-split.i

bb.x:                                             ; preds = %_ZL13mayHaveParentPc.exit.thread.i
  br i1 %.not84.i, label %.thread111.i, label %.threadthread-pre-split.i

.thread111.i:                                     ; preds = %bb.x, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.h, ptr noundef nonnull align 1 dereferenceable(5) @.str, i64 5, i1 false) #17
  %i.ax = call fastcc noundef ptr @_ZL17findFirstExistingPKcPcS0_12UResOpenTypePaS3_S3_P10UErrorCode(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.z, i32 noundef range(i32 0, 2) %3, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.e, ptr noundef %i.c) ; 5 uses
  %i.ay = load i32, ptr %i.c, align 4
  %i.az = icmp eq i32 %i.ay, 7
  br i1 %i.az, label %.critedge.thread.sink.split.i, label %bb.y

bb.y:                                             ; preds = %.thread111.i
  %.not98.i = icmp eq ptr %i.ax, null
  br i1 %.not98.i, label %.critedge.thread.sink.split.i, label %.thread.thread.i

.threadthread-pre-split.i:                        ; preds = %bb.x, %bb.w, %bb.u
  %.pr.i = phi i8 [ %.pr.pre.i, %bb.u ], [ 0, %bb.w ], [ %i.ai, %bb.x ]
  %.4110.ph.i = phi ptr [ %i.ap, %bb.u ], [ %i.ap, %bb.w ], [ %i.aa, %bb.x ]
  %.169109.ph.i = phi i8 [ 1, %bb.u ], [ 1, %bb.w ], [ %.068.i, %bb.x ]
  %i.ba = icmp eq i8 %.169109.ph.i, 0
  br label %.thread.i

.thread.i:                                        ; preds = %.threadthread-pre-split.i, %_ZL13mayHaveParentPc.exit104.i
  %i.bb = phi i8 [ %.pr.i, %.threadthread-pre-split.i ], [ %.pr.pre.i, %_ZL13mayHaveParentPc.exit104.i ]
  %.4110.i = phi ptr [ %.4110.ph.i, %.threadthread-pre-split.i ], [ %i.ap, %_ZL13mayHaveParentPc.exit104.i ] ; 5 uses
  %.169109.i = phi i1 [ %i.ba, %.threadthread-pre-split.i ], [ false, %_ZL13mayHaveParentPc.exit104.i ]
  %.not93.i = icmp eq i8 %i.bb, 0
  br i1 %.not93.i, label %bb.z, label %.critedge.i

bb.z:                                             ; preds = %.thread.i
  %i.bc = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bd, ptr noundef nonnull dereferenceable(5) @.str) #20
  %.not94.i = icmp eq i32 %i.be, 0
  br i1 %.not94.i, label %.thread.thread.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.ab, label %.thread.thread.thread.i

bb.ab:                                            ; preds = %bb.aa
  %i.bi = getelementptr inbounds nuw i8, ptr %.4110.i, i64 96
  %i.bj = load i8, ptr %i.bi, align 8
  %.not95.i = icmp eq i8 %i.bj, 0
  br i1 %.not95.i, label %bb.ac, label %.thread.thread.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.bk = call fastcc noundef signext i8 @_ZL16insertRootBundleRP18UResourceDataEntryP10UErrorCode(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %4)
  %.not96.i = icmp eq i8 %i.bk, 0
  br i1 %.not96.i, label %.critedge.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %.169109.i, label %bb.ae, label %.thread.thread.thread.i

bb.ae:                                            ; preds = %bb.ad
  %i.bl = getelementptr inbounds nuw i8, ptr %.4110.i, i64 112
  store i32 -127, ptr %i.bl, align 8
  br label %.thread.thread.thread.i

.thread.thread.thread.i:                          ; preds = %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.z
  %.promoted139.i = load ptr, ptr %i.d, align 8
  br label %.lr.ph.split.us.i

.thread.thread.i:                                 ; preds = %bb.y
  store ptr %i.ax, ptr %i.d, align 8
  store i32 -127, ptr %i.c, align 4
  %.pre127.i = load i8, ptr %i.f, align 1
  %i.bm = icmp eq i8 %.pre127.i, 0
  br i1 %i.bm, label %.lr.ph.split.us.i, label %.critedge.i

.lr.ph.split.us.i:                                ; preds = %.thread.thread.i, %.thread.thread.thread.i
  %.promoted142.i = phi ptr [ %.promoted139.i, %.thread.thread.thread.i ], [ %i.ax, %.thread.thread.i ]
  %.5141.i = phi ptr [ %.4110.i, %.thread.thread.thread.i ], [ %i.ax, %.thread.thread.i ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.promoted142.i, i64 16 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not100.us120.i = icmp eq ptr %i.bo, null
  br i1 %.not100.us120.i, label %.critedge.i, label %.lr.ph121.i

.lr.ph121.i:                                      ; preds = %.lr.ph.split.us.i, %.lr.ph121.i
  %i.bp = phi ptr [ %i.bw, %.lr.ph121.i ], [ %i.bo, %.lr.ph.split.us.i ]
  %i.bq = phi ptr [ %i.bv, %.lr.ph121.i ], [ %i.bn, %.lr.ph.split.us.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 108 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4
  %i.bu = load ptr, ptr %i.bq, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not100.us.i = icmp eq ptr %i.bw, null
  br i1 %.not100.us.i, label %.critedge.i, label %.lr.ph121.i

.critedge.i:                                      ; preds = %.lr.ph121.i, %.lr.ph.split.us.i, %.thread.thread.i, %bb.ac, %.thread.i, %bb.w, %bb.v, %bb.q
  %.6.ph.i = phi ptr [ %i.ap, %bb.w ], [ %.4110.i, %bb.ac ], [ %i.aa, %bb.q ], [ %i.ax, %.thread.thread.i ], [ %.5141.i, %.lr.ph.split.us.i ], [ %.4110.i, %.thread.i ], [ %i.ap, %bb.v ], [ %.5141.i, %.lr.ph121.i ] ; 2 uses
  %.pr148.i = load i32, ptr %4, align 4
  %i.bx = icmp sgt i32 %.pr148.i, 0
  br i1 %i.bx, label %.critedge.thread.i, label %bb.af

bb.af:                                            ; preds = %.critedge.i
  %i.by = load i32, ptr %i.c, align 4             ; 2 uses
  %.not102.i = icmp eq i32 %i.by, 0
  br i1 %.not102.i, label %.critedge.thread.i, label %.critedge.thread.sink.split.i

.critedge.thread.sink.split.i:                    ; preds = %bb.af, %bb.y, %.thread111.i, %bb.r, %bb.l
  %.sink.i = phi i32 [ 2, %bb.y ], [ 7, %bb.l ], [ 7, %bb.r ], [ 7, %.thread111.i ], [ %i.by, %bb.af ]
  %.0.ph.i = phi ptr [ null, %bb.y ], [ null, %bb.l ], [ null, %bb.r ], [ null, %.thread111.i ], [ %.6.ph.i, %bb.af ]
  store i32 %.sink.i, ptr %4, align 4
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.thread.sink.split.i, %bb.af, %.critedge.i
  %.0.i = phi ptr [ %.6.ph.i, %bb.af ], [ null, %.critedge.i ], [ %.0.ph.i, %.critedge.thread.sink.split.i ]
  call void @umtx_unlock_78(ptr noundef nonnull @_ZL9resbMutex) #17
  br label %_ZL9entryOpenPKcS0_12UResOpenTypeP10UErrorCode.exit

_ZL9entryOpenPKcS0_12UResOpenTypeP10UErrorCode.exit: ; preds = %bb.k, %_ZL9initCacheP10UErrorCode.exit.i, %.critedge.thread.i
  %.1.i = phi ptr [ %.0.i, %.critedge.thread.i ], [ null, %_ZL9initCacheP10UErrorCode.exit.i ], [ null, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.ag

bb.ag:                                            ; preds = %_ZL9entryOpenPKcS0_12UResOpenTypeP10UErrorCode.exit, %bb.f
  %.042 = phi ptr [ undef, %bb.f ], [ %.1.i, %_ZL9entryOpenPKcS0_12UResOpenTypeP10UErrorCode.exit ]
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ca = load i8, ptr %i.bz, align 4
  %.not.i.i.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cb = load ptr, ptr %5, align 8
  call void @uprv_free_78(ptr noundef %i.cb) #17
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br i1 %i.o, label %_ZL15entryOpenDirectPKcS0_P10UErrorCode.exit, label %_ZL15entryOpenDirectPKcS0_P10UErrorCode.exit.thread

bb.ai:                                            ; preds = %bb.b
  %i.cc = load atomic i32, ptr @_ZL14gCacheInitOnce acquire, align 4
  %.not11.i.i.i55 = icmp eq i32 %i.cc, 2
  br i1 %.not11.i.i.i55, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cd = tail call noundef signext i8 @_ZN6icu_7820umtx_initImplPreInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZL14gCacheInitOnce) #17
  %.not12.i.i.i56 = icmp eq i8 %i.cd, 0
  br i1 %.not12.i.i.i56, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ce = tail call ptr @uhash_open_78(ptr noundef nonnull @_ZL9hashEntry8UElement, ptr noundef nonnull @_ZL14compareEntries8UElementS_, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %4) #17
  store ptr %i.ce, ptr @_ZL5cache, align 8
  tail call void @ucln_common_registerCleanup_78(i32 noundef 27, ptr noundef nonnull @_ZL12ures_cleanupv) #17
  %i.cf = load i32, ptr %4, align 4
  store i32 %i.cf, ptr getelementptr inbounds nuw (i8, ptr @_ZL14gCacheInitOnce, i64 4), align 4
  tail call void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZL14gCacheInitOnce) #17
  br label %_ZL9initCacheP10UErrorCode.exit.i57

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.cg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL14gCacheInitOnce, i64 4), align 4 ; 2 uses
  %i.ch = icmp slt i32 %i.cg, 1
  br i1 %i.ch, label %_ZL9initCacheP10UErrorCode.exit.i57, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 %i.cg, ptr %4, align 4
  br label %_ZL15entryOpenDirectPKcS0_P10UErrorCode.exit.thread

_ZL9initCacheP10UErrorCode.exit.i57:              ; preds = %bb.al, %bb.ak
  %.pr.i58 = load i32, ptr %4, align 4
  %i.ci = icmp slt i32 %.pr.i58, 1
  br i1 %i.ci, label %bb.an, label %_ZL15entryOpenDirectPKcS0_P10UErrorCode.exit.thread

bb.an:                                            ; preds = %_ZL9initCacheP10UErrorCode.exit.i57
  %i.cj = icmp eq ptr %2, null
  br i1 %i.cj, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ck = tail call ptr @uloc_getDefault_78() #17
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.cl = load i8, ptr %2, align 1
  %i.cm = icmp eq i8 %i.cl, 0
  %spec.store.select.i = select i1 %i.cm, ptr @.str, ptr %2
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.024.i = phi ptr [ %i.ck, %bb.ao ], [ %spec.store.select.i, %bb.ap ] ; 4 uses
  tail call void @umtx_lock_78(ptr noundef nonnull @_ZL9resbMutex) #17
  %i.cn = tail call fastcc noundef ptr @_ZL10init_entryPKcS0_P10UErrorCode(ptr noundef %.024.i, ptr noundef %1, ptr noundef nonnull %4) ; 13 uses
  %i.co = load i32, ptr %4, align 4
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.thread.i59, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 112
  %i.cr = load i32, ptr %i.cq, align 8
  %.not28.i = icmp eq i32 %i.cr, 0
  br i1 %.not28.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 108 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = add i32 %i.ct, -1
  store i32 %i.cu, ptr %i.cs, align 4
  br label %.thread.i59

.thread.i59:                                      ; preds = %bb.as, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  br label %.thread43.i

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %i.cn, ptr %i.a, align 8
  %i.cv = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.024.i, ptr noundef nonnull dereferenceable(5) @.str) #20
  %.not30.i = icmp eq i32 %i.cv, 0
  br i1 %.not30.i, label %select.unfold.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.av, label %select.unfold.i

bb.av:                                            ; preds = %bb.au
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 96
  %i.da = load i8, ptr %i.cz, align 8
  %.not31.i = icmp eq i8 %i.da, 0
  br i1 %.not31.i, label %bb.aw, label %select.unfold.i

bb.aw:                                            ; preds = %bb.av
  %i.db = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.024.i) #20
  %i.dc = icmp ult i64 %i.db, 157
  br i1 %i.dc, label %bb.ax, label %select.unfold.i

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.dd = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %.024.i) #17 ; 0 uses
  %i.de = call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 95) #20 ; 2 uses
  %.not.i.i60 = icmp eq ptr %i.de, null
  br i1 %.not.i.i60, label %_ZL10chopLocalePc.exit.thread.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i8 0, ptr %i.de, align 1
  %i.df = load i32, ptr %i.b, align 16
  %i.dg = xor i32 %i.df, 1953460082
  %i.dh = getelementptr i8, ptr %i.b, i64 4
  %i.di = load i8, ptr %i.dh, align 4
  %i.dj = zext i8 %i.di to i32
  %i.dk = or i32 %i.dg, %i.dj
  %i.dl = icmp ne i32 %i.dk, 0
  %i.dm = zext i1 %i.dl to i32
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %_ZL10chopLocalePc.exit.thread.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.do = call fastcc noundef signext i8 @_ZL21loadParentsExceptRootRP18UResourceDataEntryPciaS2_P10UErrorCode(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.b, ptr noundef nonnull %4)
  %.not33.i = icmp eq i8 %i.do, 0
  br i1 %.not33.i, label %bb.bc, label %._ZL10chopLocalePc.exit.thread_crit_edge.i

._ZL10chopLocalePc.exit.thread_crit_edge.i:       ; preds = %bb.az
  %.pre.i61 = load ptr, ptr %i.a, align 8
  br label %_ZL10chopLocalePc.exit.thread.i

_ZL10chopLocalePc.exit.thread.i:                  ; preds = %._ZL10chopLocalePc.exit.thread_crit_edge.i, %bb.ay, %bb.ax
  %6 = phi ptr [ %.pre.i61, %._ZL10chopLocalePc.exit.thread_crit_edge.i ], [ %i.cn, %bb.ax ], [ %i.cn, %bb.ay ] ; 2 uses
  %i.dp = load ptr, ptr %6, align 8
  %i.dq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dp, ptr noundef nonnull dereferenceable(5) @.str) #20
  %.not34.i = icmp eq i32 %i.dq, 0
  br i1 %.not34.i, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %_ZL10chopLocalePc.exit.thread.i
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.du = call fastcc noundef signext i8 @_ZL16insertRootBundleRP18UResourceDataEntryP10UErrorCode(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %4) ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %_ZL10chopLocalePc.exit.thread.i, %bb.az
  %i.dv = load i32, ptr %4, align 4
  %i.dw = icmp slt i32 %i.dv, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br i1 %i.dw, label %.select.unfold_crit_edge.i, label %.thread43.i

.select.unfold_crit_edge.i:                       ; preds = %bb.bc
  %.promoted.pre.i = load ptr, ptr %i.a, align 8
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %.select.unfold_crit_edge.i, %bb.aw, %bb.av, %bb.au, %bb.at
  %.promoted.i = phi ptr [ %.promoted.pre.i, %.select.unfold_crit_edge.i ], [ %i.cn, %bb.aw ], [ %i.cn, %bb.av ], [ %i.cn, %bb.au ], [ %i.cn, %bb.at ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 16 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8            ; 2 uses
  %.not3747.i = icmp eq ptr %i.dy, null
  br i1 %.not3747.i, label %.thread43.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %select.unfold.i, %.lr.ph.i
  %i.dz = phi ptr [ %i.eg, %.lr.ph.i ], [ %i.dy, %select.unfold.i ]
  %i.ea = phi ptr [ %i.ef, %.lr.ph.i ], [ %i.dx, %select.unfold.i ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 108 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 4
  %i.ee = load ptr, ptr %i.ea, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  %.not37.i = icmp eq ptr %i.eg, null
  br i1 %.not37.i, label %.thread43.i, label %.lr.ph.i, !llvm.loop !19

.thread43.i:                                      ; preds = %.lr.ph.i, %select.unfold.i, %bb.bc, %.thread.i59
  %.246.i = phi ptr [ null, %.thread.i59 ], [ null, %bb.bc ], [ %i.cn, %select.unfold.i ], [ %i.cn, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @umtx_unlock_78(ptr noundef nonnull @_ZL9resbMutex) #17
  br label %_ZL15entryOpenDirectPKcS0_P10UErrorCode.exit

_ZL15entryOpenDirectPKcS0_P10UErrorCode.exit:     ; preds = %.thread43.i, %_ZN6icu_7810CharStringD2Ev.exit
  %.1.ph = phi ptr [ %.246.i, %.thread43.i ], [ %.042, %_ZN6icu_7810CharStringD2Ev.exit ] ; 7 uses
  %.pr = load i32, ptr %4, align 4
  %i.eh = icmp slt i32 %.pr, 1
  br i1 %i.eh, label %bb.bd, label %_ZL15entryOpenDirectPKcS0_P10UErrorCode.exit.thread

bb.bd:                                            ; preds = %_ZL15entryOpenDirectPKcS0_P10UErrorCode.exit
  %i.ei = icmp eq ptr %.1.ph, null
  br i1 %i.ei, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 2, ptr %4, align 4
  br label %_ZL15entryOpenDirectPKcS0_P10UErrorCode.exit.thread

bb.bf:                                            ; preds = %bb.bd
  %i.ej = icmp eq ptr %0, null
  br i1 %i.ej, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.ek = call noalias dereferenceable_or_null(136) ptr @uprv_malloc_78(i64 noundef 136) #18 ; 3 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.bh, label %.thread

.thread:                                          ; preds = %bb.bg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ek, i8 0, i64 136, i1 false)
  br label %bb.bq

bb.bh:                                            ; preds = %bb.bg
  call fastcc void @_ZL10entryCloseP18UResourceDataEntry(ptr noundef %.1.ph)
  store i32 7, ptr %4, align 4
  br label %_ZL15entryOpenDirectPKcS0_P10UErrorCode.exit.thread

bb.bi:                                            ; preds = %bb.bf
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = icmp eq i32 %i.en, 19700503
  br i1 %i.eo, label %bb.bj, label %_ZL18ures_isStackObjectPK15UResourceBundle.exit

bb.bj:                                            ; preds = %bb.bi
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.eq = load i32, ptr %i.ep, align 8
  %.fr = freeze i32 %i.eq
  %.not = icmp eq i32 %.fr, 19641227
  br label %_ZL18ures_isStackObjectPK15UResourceBundle.exit

_ZL18ures_isStackObjectPK15UResourceBundle.exit:  ; preds = %bb.bj, %bb.bi
  %not..i = phi i1 [ false, %bb.bi ], [ %.not, %bb.bj ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %.not11.i = icmp eq ptr %i.es, null
  br i1 %.not11.i, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %_ZL18ures_isStackObjectPK15UResourceBundle.exit
  call void @umtx_lock_78(ptr noundef nonnull @_ZL9resbMutex) #17
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %bb.bk
  %.05.i.i.i = phi ptr [ %i.es, %bb.bk ], [ %i.eu, %bb.bl ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.eu = load ptr, ptr %i.et, align 8            ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 108 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = add i32 %i.ew, -1
  store i32 %i.ex, ptr %i.ev, align 4
  %.not.i.i.i63 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i63, label %_ZL10entryCloseP18UResourceDataEntry.exit.i, label %bb.bl, !llvm.loop !5

_ZL10entryCloseP18UResourceDataEntry.exit.i:      ; preds = %bb.bl
  call void @umtx_unlock_78(ptr noundef nonnull @_ZL9resbMutex) #17
  br label %bb.bm

bb.bm:                                            ; preds = %_ZL10entryCloseP18UResourceDataEntry.exit.i, %_ZL18ures_isStackObjectPK15UResourceBundle.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8            ; 2 uses
  %.not12.i = icmp eq ptr %i.ez, null
  br i1 %.not12.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @uprv_free_78(ptr noundef nonnull %i.ez) #17
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8            ; 3 uses
  %.not.i.i64 = icmp eq ptr %i.fb, null
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.not6.i.i = icmp eq ptr %i.fb, %i.fc
  %or.cond.i.i = select i1 %.not.i.i64, i1 true, i1 %.not6.i.i
  br i1 %or.cond.i.i, label %_ZL16ures_closeBundleP15UResourceBundlea.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @uprv_free_78(ptr noundef nonnull %i.fb) #17
  br label %_ZL16ures_closeBundleP15UResourceBundlea.exit

_ZL16ures_closeBundleP15UResourceBundlea.exit:    ; preds = %bb.bo, %bb.bp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  %spec.select = select i1 %not..i, i32 19700503, i32 0
  %spec.select101 = select i1 %not..i, i32 19641227, i32 0
  br label %bb.bq

bb.bq:                                            ; preds = %_ZL16ures_closeBundleP15UResourceBundlea.exit, %.thread
  %i.fd = phi i32 [ %spec.select, %_ZL16ures_closeBundleP15UResourceBundlea.exit ], [ 19700503, %.thread ]
  %.0459098 = phi ptr [ %0, %_ZL16ures_closeBundleP15UResourceBundlea.exit ], [ %i.ek, %.thread ] ; 10 uses
  %i.fe = phi i32 [ %spec.select101, %_ZL16ures_closeBundleP15UResourceBundlea.exit ], [ 19641227, %.thread ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.0459098, i64 116
  store i32 %i.fd, ptr %i.ff, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %.0459098, i64 120
  store i32 %i.fe, ptr %i.fg, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %.0459098, i64 8
  store ptr %.1.ph, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %.0459098, i64 24
  store ptr %.1.ph, ptr %i.fi, align 8
  br i1 %.not51, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fj = getelementptr inbounds nuw i8, ptr %.1.ph, i64 96
  %i.fk = load i8, ptr %i.fj, align 8
  %.not54 = icmp eq i8 %i.fk, 0
  %i.fl = zext i1 %.not54 to i8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.fm = phi i8 [ 0, %bb.bq ], [ %i.fl, %bb.br ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.0459098, i64 112
  store i8 %i.fm, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %.0459098, i64 113
  store i8 1, ptr %i.fo, align 1
  %i.fp = getelementptr inbounds nuw i8, ptr %.1.ph, i64 40
  %i.fq = getelementptr inbounds nuw i8, ptr %.1.ph, i64 72
  %i.fr = load i32, ptr %i.fq, align 8            ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0459098, i64 108
  store i32 %i.fr, ptr %i.fs, align 4
  %i.ft = call i32 @res_countArrayItems_78(ptr noundef nonnull %i.fp, i32 noundef %i.fr) #17
  %i.fu = getelementptr inbounds nuw i8, ptr %.0459098, i64 128
  store i32 %i.ft, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.0459098, i64 124
  store i32 -1, ptr %i.fv, align 4
  br label %_ZL15entryOpenDirectPKcS0_P10UErrorCode.exit.thread

_ZL15entryOpenDirectPKcS0_P10UErrorCode.exit.thread: ; preds = %bb.am, %_ZL9initCacheP10UErrorCode.exit.i57, %bb.be, %_ZN6icu_7810CharStringD2Ev.exit, %_ZL15entryOpenDirectPKcS0_P10UErrorCode.exit, %bb.bs, %bb.bh, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %_ZN6icu_7810CharStringD2Ev.exit ], [ null, %bb.be ], [ null, %_ZL15entryOpenDirectPKcS0_P10UErrorCode.exit ], [ null, %bb.bh ], [ %.0459098, %bb.bs ], [ null, %_ZL9initCacheP10UErrorCode.exit.i57 ], [ null, %bb.am ]
  ret ptr %.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @ures_openNoDefault_78(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL17ures_openWithTypeP15UResourceBundlePKcS2_12UResOpenTypeP10UErrorCode(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef %2)
  ret ptr %i.a
end_hunk_0
