Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/usprep?download=true
inline.NumInlined: 88
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@usprep_open_78:bb.a
  %i.j = load i32, ptr %2, align 4, !tbaa !9
  store i32 %i.j, ptr getelementptr inbounds nuw (i8, ptr @_ZL19gSharedDataInitOnce, i64 4), align 4, !tbaa !45
  tail call void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZL19gSharedDataInitOnce)
  br label %_ZL9initCacheP10UErrorCode.exit.i

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL19gSharedDataInitOnce, i64 4), align 4, !tbaa !45 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %_ZL9initCacheP10UErrorCode.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.k, ptr %2, align 4, !tbaa !9
  br label %_ZL17usprep_getProfilePKcS0_P10UErrorCode.exit

_ZL9initCacheP10UErrorCode.exit.i:                ; preds = %bb.f, %bb.e
  %.pr.i = load i32, ptr %2, align 4, !tbaa !9
  %i.m = icmp slt i32 %.pr.i, 1
  br i1 %i.m, label %bb.h, label %_ZL17usprep_getProfilePKcS0_P10UErrorCode.exit

bb.h:                                             ; preds = %_ZL9initCacheP10UErrorCode.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %1, ptr %4, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.n, align 8, !tbaa !14
  tail call void @umtx_lock_78(ptr noundef nonnull @_ZL11usprepMutex)
  %i.o = load ptr, ptr @_ZL21SHARED_DATA_HASHTABLE, align 8, !tbaa !16
  %i.p = call ptr @uhash_get_78(ptr noundef %i.o, ptr noundef nonnull %4) ; 3 uses
  %.not48.i = icmp eq ptr %i.p, null
  br i1 %.not48.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 120 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !22
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !22
  call void @umtx_unlock_78(ptr noundef nonnull @_ZL11usprepMutex)
  br label %_ZN6icu_7811LocalMemoryI18UStringPrepProfileED2Ev.exit83.i

bb.j:                                             ; preds = %bb.h
  call void @umtx_unlock_78(ptr noundef nonnull @_ZL11usprepMutex)
  %i.t = invoke noalias dereferenceable_or_null(128) ptr @uprv_malloc_78(i64 noundef 128) #16
          to label %.noexc.i unwind label %bb.m   ; 36 uses

.noexc.i:                                         ; preds = %bb.j
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.t, i8 0, i64 128, i1 false)
  invoke void @uprv_free_78(ptr noundef null)
          to label %_ZN6icu_7811LocalMemoryI18UStringPrepProfileE23allocateInsteadAndResetEi.exit.i unwind label %bb.m

bb.l:                                             ; preds = %.noexc.i
  store i32 7, ptr %2, align 4, !tbaa !9
  br label %.critedge.i

bb.m:                                             ; preds = %bb.w, %.invoke.i, %.noexc66.i, %.noexc65.i, %bb.r, %bb.p, %.noexc61.i, %bb.o, %bb.n, %bb.k, %bb.j
  %.sroa.091.0.i = phi ptr [ %i.t, %bb.w ], [ %i.t, %.invoke.i ], [ null, %bb.j ], [ %i.t, %.noexc66.i ], [ %i.t, %.noexc65.i ], [ %i.t, %bb.r ], [ %i.t, %bb.p ], [ null, %bb.k ], [ %i.t, %.noexc61.i ], [ %i.t, %bb.o ], [ %i.t, %bb.n ]
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7811LocalMemoryI14UStringPrepKeyED2Ev.exit81.i

_ZN6icu_7811LocalMemoryI18UStringPrepProfileE23allocateInsteadAndResetEi.exit.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.v = load i32, ptr %2, align 4, !tbaa !9
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %bb.n, label %.thread107.i

bb.n:                                             ; preds = %_ZN6icu_7811LocalMemoryI18UStringPrepProfileE23allocateInsteadAndResetEi.exit.i
  %i.x = invoke ptr @udata_openChoice_78(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef nonnull @_ZL17isSPrepAcceptablePvPKcS1_PK9UDataInfo, ptr noundef null, ptr noundef nonnull %2)
          to label %.noexc60.i unwind label %bb.m ; 4 uses

.noexc60.i:                                       ; preds = %bb.n
  %i.y = load i32, ptr %2, align 4, !tbaa !9
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %bb.o, label %.thread107.i

bb.o:                                             ; preds = %.noexc60.i
  %i.aa = invoke ptr @udata_getMemory_78(ptr noundef %i.x)
          to label %.noexc61.i unwind label %bb.m ; 4 uses

.noexc61.i:                                       ; preds = %bb.o
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !23
  %i.ad = invoke i32 @utrie_unserialize_78(ptr noundef nonnull %3, ptr noundef nonnull %i.ab, i32 noundef %i.ac, ptr noundef nonnull %2)
          to label %.noexc62.i unwind label %bb.m ; 0 uses

.noexc62.i:                                       ; preds = %.noexc61.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @_ZL21getSPrepFoldingOffsetj, ptr %i.ae, align 8, !tbaa !46
  %i.af = load i32, ptr %2, align 4, !tbaa !9
  %i.ag = icmp slt i32 %i.af, 1
  br i1 %i.ag, label %bb.p, label %.invoke.i

bb.p:                                             ; preds = %.noexc62.i
  invoke void @umtx_lock_78(ptr noundef nonnull @_ZL11usprepMutex)
          to label %.noexc64.i unwind label %bb.m

.noexc64.i:                                       ; preds = %bb.p
  %i.ah = getelementptr i8, ptr %i.t, i64 112     ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc64.i
  store ptr %i.x, ptr %i.ah, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 4 dereferenceable(64) %i.aa, i64 64, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  br label %.noexc65.i

bb.r:                                             ; preds = %.noexc64.i
  %i.al = invoke ptr @udata_getMemory_78(ptr noundef nonnull %i.ai)
          to label %.noexc65.i unwind label %bb.m

.noexc65.i:                                       ; preds = %bb.r, %bb.q
  %.038.i.i = phi ptr [ null, %bb.q ], [ %i.x, %bb.r ] ; 4 uses
  %.0.i59.i = phi ptr [ %i.aa, %bb.q ], [ %i.al, %bb.r ]
  invoke void @umtx_unlock_78(ptr noundef nonnull @_ZL11usprepMutex)
          to label %.noexc66.i unwind label %bb.m

.noexc66.i:                                       ; preds = %.noexc65.i
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i59.i, i64 64
  %i.an = load i32, ptr %i.t, align 8, !tbaa !23
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !25
  invoke void @u_getUnicodeVersion_78(ptr noundef nonnull %i.a)
          to label %.noexc67.i unwind label %bb.m

.noexc67.i:                                       ; preds = %.noexc66.i
  %i.ar = load i32, ptr %2, align 4, !tbaa !9
  %i.as = icmp slt i32 %i.ar, 1
  br i1 %i.as, label %bb.s, label %.invoke.i

bb.s:                                             ; preds = %.noexc67.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !23
  %i.av = load i32, ptr %i.a, align 4
  %i.aw = call i32 @llvm.bswap.i32(i32 %i.av)     ; 2 uses
  %i.ax = load i32, ptr @_ZL11dataVersion, align 4
  %i.ay = call i32 @llvm.bswap.i32(i32 %i.ax)
  %i.az = icmp slt i32 %i.aw, %i.ay
  %i.ba = icmp slt i32 %i.aw, %i.au
  %or.cond.i.i = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond.i.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !23
  %i.bd = and i32 %i.bc, 1
  %.not46.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not46.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 3, ptr %2, align 4, !tbaa !9
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.u, %.noexc67.i, %.noexc62.i
  %i.be = phi ptr [ %.038.i.i, %bb.u ], [ %i.x, %.noexc62.i ], [ %.038.i.i, %.noexc67.i ]
  invoke void @udata_close_78(ptr noundef %i.be)
          to label %.thread107.i unwind label %bb.m

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %i.t, i64 124 ; 2 uses
  store i8 1, ptr %i.bf, align 4, !tbaa !47
  %.not47.i.i = icmp eq ptr %.038.i.i, null
  br i1 %.not47.i.i, label %.thread.i, label %bb.w

.thread.i:                                        ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.z

bb.w:                                             ; preds = %bb.v
  invoke void @udata_close_78(ptr noundef nonnull %.038.i.i)
          to label %bb.x unwind label %bb.m

.thread107.i:                                     ; preds = %.invoke.i, %.noexc60.i, %_ZN6icu_7811LocalMemoryI18UStringPrepProfileE23allocateInsteadAndResetEi.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %.critedge.i

bb.x:                                             ; preds = %bb.w
  %.pre.i.i = load i8, ptr %i.bf, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %.not49.i = icmp eq i8 %.pre.i.i, 0
  br i1 %.not49.i, label %.critedge.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.pre.i = load i32, ptr %2, align 4, !tbaa !9
  %i.bg = icmp slt i32 %.pre.i, 1
  br i1 %i.bg, label %bb.z, label %.critedge.i

bb.z:                                             ; preds = %bb.y, %.thread.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !23
  %i.bj = trunc i32 %i.bi to i8                   ; 2 uses
  %i.bk = and i8 %i.bj, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.t, i64 125
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !26
  %7 = lshr i8 %i.bj, 1
  %i.bm = and i8 %7, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 126
  store i8 %i.bm, ptr %i.bn, align 2, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr null, ptr %5, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr null, ptr %6, align 8, !tbaa !29
  %i.bo = invoke noalias dereferenceable_or_null(16) ptr @uprv_malloc_78(i64 noundef 16) #16
          to label %.noexc73.i unwind label %bb.af ; 13 uses

.noexc73.i:                                       ; preds = %bb.z
  %.not.i71.i = icmp eq ptr %i.bo, null
  br i1 %.not.i71.i, label %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %.noexc73.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  invoke void @uprv_free_78(ptr noundef null)
          to label %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.i unwind label %bb.af

_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.i: ; preds = %bb.aa
  %i.bp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %i.bq = trunc i64 %i.bp to i32
  %i.br = add i32 %i.bq, 1
  %i.bs = invoke noundef ptr @_ZN6icu_7811LocalMemoryIcE22allocateInsteadAndCopyEii(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %i.br, i32 noundef 0)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.i
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not51.i = icmp eq ptr %0, null                ; 2 uses
  br i1 %.not51.i, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = add i32 %i.bv, 1
  %i.bx = invoke noundef ptr @_ZN6icu_7811LocalMemoryIcE22allocateInsteadAndCopyEii(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %i.bw, i32 noundef 0)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.thread.i, label %bb.ah

_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.thread.i: ; preds = %bb.ae, %bb.ab, %.noexc73.i
  store i32 7, ptr %2, align 4, !tbaa !9
  %.val57.i = load ptr, ptr %i.ah, align 8, !tbaa !24
  invoke void @udata_close_78(ptr noundef %.val57.i)
          to label %_ZL13usprep_unloadP18UStringPrepProfile.exit.i unwind label %bb.af

bb.af:                                            ; preds = %_ZL13usprep_unloadP18UStringPrepProfile.exit77.i, %bb.an, %bb.ak, %bb.ai, %bb.ah, %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.thread.i, %bb.ad, %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.i, %bb.aa, %bb.z
  %.sroa.091.1.i = phi ptr [ %i.t, %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.thread.i ], [ %.sroa.091.2.i, %_ZL13usprep_unloadP18UStringPrepProfile.exit77.i ], [ null, %bb.an ], [ %i.t, %bb.ak ], [ %i.t, %bb.ai ], [ %i.t, %bb.ah ], [ %i.t, %bb.ad ], [ %i.t, %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.i ], [ %i.t, %bb.aa ], [ %i.t, %bb.z ]
  %.sroa.0.0.i = phi ptr [ %i.bo, %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.thread.i ], [ %.sroa.0.1.i, %_ZL13usprep_unloadP18UStringPrepProfile.exit77.i ], [ null, %bb.an ], [ %i.bo, %bb.ak ], [ %i.bo, %bb.ai ], [ %i.bo, %bb.ah ], [ %i.bo, %bb.ad ], [ %i.bo, %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.i ], [ null, %bb.aa ], [ null, %bb.z ]
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %6, align 8, !tbaa !29
  invoke void @uprv_free_78(ptr noundef %i.ca)
          to label %_ZN6icu_7811LocalMemoryIcED2Ev.exit.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #18
  unreachable

bb.ah:                                            ; preds = %bb.ae, %bb.ac
  invoke void @umtx_lock_78(ptr noundef nonnull @_ZL11usprepMutex)
          to label %bb.ai unwind label %bb.af

bb.ai:                                            ; preds = %bb.ah
  %i.cd = load ptr, ptr @_ZL21SHARED_DATA_HASHTABLE, align 8, !tbaa !16
  %i.ce = invoke ptr @uhash_get_78(ptr noundef %i.cd, ptr noundef nonnull %4)
          to label %bb.aj unwind label %bb.af     ; 3 uses

bb.aj:                                            ; preds = %bb.ai
  %.not52.i = icmp eq ptr %i.ce, null
  br i1 %.not52.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 120 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !22
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 8, !tbaa !22
  %.val.i = load ptr, ptr %i.ah, align 8, !tbaa !24
  invoke void @udata_close_78(ptr noundef %.val.i)
          to label %_ZL13usprep_unloadP18UStringPrepProfile.exit77.i unwind label %bb.af

bb.al:                                            ; preds = %bb.aj
  %i.ci = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  store ptr null, ptr %5, align 8, !tbaa !29
  store ptr %i.ci, ptr %i.bo, align 8, !tbaa !13
  %i.cj = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ci, ptr noundef nonnull dereferenceable(1) %1) #15 ; 0 uses
  br i1 %.not51.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ck = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  store ptr null, ptr %6, align 8, !tbaa !29
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !14
  %i.cm = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ck, ptr noundef nonnull dereferenceable(1) %0) #15 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cn = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  store i32 1, ptr %i.cn, align 8, !tbaa !22
  %i.co = load ptr, ptr @_ZL21SHARED_DATA_HASHTABLE, align 8, !tbaa !16
  %i.cp = invoke ptr @uhash_put_78(ptr noundef %i.co, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.t, ptr noundef nonnull %2)
          to label %_ZL13usprep_unloadP18UStringPrepProfile.exit77.i unwind label %bb.af ; 0 uses

_ZL13usprep_unloadP18UStringPrepProfile.exit77.i: ; preds = %bb.an, %bb.ak
  %.sroa.091.2.i = phi ptr [ null, %bb.an ], [ %i.t, %bb.ak ] ; 2 uses
  %.sroa.0.1.i = phi ptr [ null, %bb.an ], [ %i.bo, %bb.ak ] ; 2 uses
  %.034.i = phi ptr [ %i.t, %bb.an ], [ %i.ce, %bb.ak ]
  invoke void @umtx_unlock_78(ptr noundef nonnull @_ZL11usprepMutex)
          to label %_ZL13usprep_unloadP18UStringPrepProfile.exit.i unwind label %bb.af

_ZL13usprep_unloadP18UStringPrepProfile.exit.i:   ; preds = %_ZL13usprep_unloadP18UStringPrepProfile.exit77.i, %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.thread.i
  %.sroa.091.3.i = phi ptr [ %.sroa.091.2.i, %_ZL13usprep_unloadP18UStringPrepProfile.exit77.i ], [ %i.t, %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.thread.i ]
  %.sroa.0.2.i = phi ptr [ %.sroa.0.1.i, %_ZL13usprep_unloadP18UStringPrepProfile.exit77.i ], [ %i.bo, %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.thread.i ]
  %spec.select.i = phi ptr [ %.034.i, %_ZL13usprep_unloadP18UStringPrepProfile.exit77.i ], [ null, %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.thread.i ]
  %i.cq = load ptr, ptr %6, align 8, !tbaa !29
  invoke void @uprv_free_78(ptr noundef %i.cq)
          to label %_ZN6icu_7811LocalMemoryIcED2Ev.exit78.i unwind label %bb.ao

bb.ao:                                            ; preds = %_ZL13usprep_unloadP18UStringPrepProfile.exit.i
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #18
  unreachable

_ZN6icu_7811LocalMemoryIcED2Ev.exit78.i:          ; preds = %_ZL13usprep_unloadP18UStringPrepProfile.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.ct = load ptr, ptr %5, align 8, !tbaa !29
  invoke void @uprv_free_78(ptr noundef %i.ct)
          to label %_ZN6icu_7811LocalMemoryIcED2Ev.exit79.i unwind label %bb.ap

bb.ap:                                            ; preds = %_ZN6icu_7811LocalMemoryIcED2Ev.exit78.i
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #18
  unreachable

_ZN6icu_7811LocalMemoryIcED2Ev.exit79.i:          ; preds = %_ZN6icu_7811LocalMemoryIcED2Ev.exit78.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  invoke void @uprv_free_78(ptr noundef %.sroa.0.2.i)
          to label %_ZN6icu_7811LocalMemoryI14UStringPrepKeyED2Ev.exit.i unwind label %bb.aq

bb.aq:                                            ; preds = %_ZN6icu_7811LocalMemoryIcED2Ev.exit79.i
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #18
  unreachable

_ZN6icu_7811LocalMemoryI14UStringPrepKeyED2Ev.exit.i: ; preds = %_ZN6icu_7811LocalMemoryIcED2Ev.exit79.i
  invoke void @uprv_free_78(ptr noundef %.sroa.091.3.i)
          to label %_ZN6icu_7811LocalMemoryI18UStringPrepProfileED2Ev.exit83.i unwind label %bb.ar

bb.ar:                                            ; preds = %_ZN6icu_7811LocalMemoryI14UStringPrepKeyED2Ev.exit.i
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #18
  unreachable

_ZN6icu_7811LocalMemoryIcED2Ev.exit.i:            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.da = load ptr, ptr %5, align 8, !tbaa !29
  invoke void @uprv_free_78(ptr noundef %i.da)
          to label %_ZN6icu_7811LocalMemoryIcED2Ev.exit80.i unwind label %bb.as

bb.as:                                            ; preds = %_ZN6icu_7811LocalMemoryIcED2Ev.exit.i
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  call void @__clang_call_terminate(ptr %i.dc) #18
  unreachable

_ZN6icu_7811LocalMemoryIcED2Ev.exit80.i:          ; preds = %_ZN6icu_7811LocalMemoryIcED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  invoke void @uprv_free_78(ptr noundef %.sroa.0.0.i)
          to label %_ZN6icu_7811LocalMemoryI14UStringPrepKeyED2Ev.exit81.i unwind label %bb.at

bb.at:                                            ; preds = %_ZN6icu_7811LocalMemoryIcED2Ev.exit80.i
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #18
  unreachable

_ZN6icu_7811LocalMemoryI14UStringPrepKeyED2Ev.exit81.i: ; preds = %_ZN6icu_7811LocalMemoryIcED2Ev.exit80.i, %bb.m
  %.sroa.091.4.i = phi ptr [ %.sroa.091.0.i, %bb.m ], [ %.sroa.091.1.i, %_ZN6icu_7811LocalMemoryIcED2Ev.exit80.i ]
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.u, %bb.m ], [ %i.bz, %_ZN6icu_7811LocalMemoryIcED2Ev.exit80.i ]
  invoke void @uprv_free_78(ptr noundef %.sroa.091.4.i)
          to label %_ZN6icu_7811LocalMemoryI18UStringPrepProfileED2Ev.exit82.i unwind label %bb.au

bb.au:                                            ; preds = %_ZN6icu_7811LocalMemoryI14UStringPrepKeyED2Ev.exit81.i
end_hunk_0
