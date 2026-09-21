Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/chat_room?download=true
inline.NumInlined: 36272
inline.NumDeleted: 14368
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEEC2Em:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  store atomic i64 0, ptr %i.m monotonic, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  store atomic i64 0, ptr %i.n monotonic, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  store atomic i64 0, ptr %i.o monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  store atomic i64 0, ptr %i.p monotonic, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  store atomic i64 0, ptr %i.q monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  store atomic i64 0, ptr %i.r monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  store atomic i64 0, ptr %i.s monotonic, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  store atomic i64 0, ptr %i.t monotonic, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232
  store atomic i64 0, ptr %i.u monotonic, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  store atomic i64 0, ptr %i.v monotonic, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264
  store atomic i64 0, ptr %i.w monotonic, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 280
  store atomic i64 0, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 296
  store atomic i64 0, ptr %i.y monotonic, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 312
  store atomic i64 0, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 328
  store atomic i64 0, ptr %i.aa monotonic, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 344
  store atomic i64 0, ptr %i.ab monotonic, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 360
  store atomic i64 0, ptr %i.ac monotonic, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 376
  store atomic i64 0, ptr %i.ad monotonic, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 392
  store atomic i64 0, ptr %i.ae monotonic, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 408
  store atomic i64 0, ptr %i.af monotonic, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 424
  store atomic i64 0, ptr %i.ag monotonic, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 440
  store atomic i64 0, ptr %i.ah monotonic, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 456
  store atomic i64 0, ptr %i.ai monotonic, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 472
  store atomic i64 0, ptr %i.aj monotonic, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 488
  store atomic i64 0, ptr %i.ak monotonic, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 504
  store atomic i64 0, ptr %i.al monotonic, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 520
  store atomic i64 0, ptr %i.am monotonic, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 536
  store atomic i64 0, ptr %i.an monotonic, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 552
  store atomic i64 0, ptr %i.ao monotonic, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 568
  store atomic i64 0, ptr %i.ap monotonic, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 584
  store atomic i64 0, ptr %i.aq monotonic, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.ar, align 8, !tbaa !856
  store atomic ptr %i.k, ptr %i.d monotonic, align 8
  %i.as = lshr i64 %1, 5                          ; 2 uses
  %i.at = and i64 %1, 31
  %i.au = icmp ne i64 %i.at, 0
  %i.av = zext i1 %i.au to i64                    ; 2 uses
  %i.aw = add nuw nsw i64 %i.as, %i.av            ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !868
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.az, align 8, !tbaa !869
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit

bb.c:                                             ; preds = %bb.a
  %i.ba = mul i64 %i.aw, 2632
  %i.bb = tail call noalias noundef ptr @malloc(i64 noundef %i.ba) #62 ; 16 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.thread.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.bd = add nuw nsw i64 %i.as, %i.av            ; 2 uses
  %xtraiter = and i64 %i.aw, 3                    ; 3 uses
  %i.be = icmp samesign ult i64 %i.bd, 4
  br i1 %i.be, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.aw, 1152921504606846972
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.011.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.bv, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.bf = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.011.i.i ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2560
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 2616
  store ptr null, ptr %i.bh, align 8, !tbaa !870
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 2624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bg, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.bi, align 8, !tbaa !872
  %i.bj = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.011.i.i ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 5192
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 5248
  store ptr null, ptr %i.bl, align 8, !tbaa !870
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 5256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bk, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.bm, align 8, !tbaa !872
  %i.bn = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.011.i.i ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 7824
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 7880
  store ptr null, ptr %i.bp, align 8, !tbaa !870
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 7888
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bo, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.bq, align 8, !tbaa !872
  %i.br = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.011.i.i ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 10456
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 10512
  store ptr null, ptr %i.bt, align 8, !tbaa !870
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 10520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bs, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.bu, align 8, !tbaa !872
  %i.bv = add nuw i64 %.011.i.i, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !3851

.thread.i:                                        ; preds = %bb.c
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit

.lr.ph.preheader.i.unr-lcssa:                     ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.lr.ph.preheader.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.011.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.bv, %.lr.ph.preheader.i.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.011.i.i.epil = phi i64 [ %i.cb, %.lr.ph.i.i.epil ], [ %.011.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.bx = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.011.i.i.epil ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 2560
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 2616
  store ptr null, ptr %i.bz, align 8, !tbaa !870
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 2624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.by, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.ca, align 8, !tbaa !872
  %i.cb = add nuw i64 %.011.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader.i, label %.lr.ph.i.i.epil, !llvm.loop !3852

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i.i.epil, %.lr.ph.preheader.i.unr-lcssa
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bb, ptr %i.cc, align 8, !tbaa !869
  %xtraiter4 = and i64 %i.aw, 7                   ; 3 uses
  %i.cd = icmp samesign ult i64 %i.bd, 8
  br i1 %i.cd, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter8 = and i64 %i.aw, 1152921504606846968
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.06.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.cu, %.lr.ph.i ] ; 9 uses
  %niter9 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter9.next.7, %.lr.ph.i ]
  %i.ce = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2624
  store i8 0, ptr %i.cf, align 8, !tbaa !872
  %i.cg = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 5256
  store i8 0, ptr %i.ch, align 8, !tbaa !872
  %i.ci = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 7888
  store i8 0, ptr %i.cj, align 8, !tbaa !872
  %i.ck = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 10520
  store i8 0, ptr %i.cl, align 8, !tbaa !872
  %i.cm = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 13152
  store i8 0, ptr %i.cn, align 8, !tbaa !872
  %i.co = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 15784
  store i8 0, ptr %i.cp, align 8, !tbaa !872
  %i.cq = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 18416
  store i8 0, ptr %i.cr, align 8, !tbaa !872
  %i.cs = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 21048
  store i8 0, ptr %i.ct, align 8, !tbaa !872
  %i.cu = add nuw i64 %.06.i, 8                   ; 2 uses
  %niter9.next.7 = add i64 %niter9, 8             ; 2 uses
  %niter9.ncmp.7 = icmp eq i64 %niter9.next.7, %unroll_iter8
  br i1 %niter9.ncmp.7, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !3853

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod6.not = icmp eq i64 %xtraiter4, 0
  br i1 %lcmp.mod6.not, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.06.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.cu, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter4, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.06.i.epil = phi i64 [ %i.cx, %.lr.ph.i.epil ], [ %.06.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter5 = phi i64 [ %epil.iter5.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.cv = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i.epil
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 2624
  store i8 0, ptr %i.cw, align 8, !tbaa !872
  %i.cx = add nuw i64 %.06.i.epil, 1
  %epil.iter5.next = add i64 %epil.iter5, 1       ; 2 uses
  %epil.iter5.cmp.not = icmp eq i64 %epil.iter5.next, %xtraiter4
  br i1 %epil.iter5.cmp.not, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit, label %.lr.ph.i.epil, !llvm.loop !3854

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit: ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b, %.thread.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #9 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #13

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #32

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7easylog8appenderD2Ev(ptr noundef nonnull align 8 dead_on_return(1361) dereferenceable(1361) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 4 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !285
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZN7easylog8appender4stopEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #43 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.c) #55
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 2 uses
  %i.e = load atomic i8, ptr %i.d seq_cst, align 8, !range !294, !noundef !295
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  store atomic i8 1, ptr %i.d seq_cst, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1312
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g) #43
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.h = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #43 ; 0 uses
  %.sroa.0.0.copyload.i1.i = load i64, ptr %i.a, align 8, !tbaa !285
  %.not2.i = icmp eq i64 %.sroa.0.0.copyload.i1.i, 0
  br i1 %.not2.i, label %_ZN7easylog8appender4stopEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN7easylog8appender4stopEv.exit unwind label %bb.h

_ZN7easylog8appender4stopEv.exit:                 ; preds = %bb.e, %bb.a, %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1312
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.i) #43
  %.sroa.0.0.copyload.i.i2 = load i64, ptr %i.a, align 8, !tbaa !285
  %.not.i3 = icmp eq i64 %.sroa.0.0.copyload.i.i2, 0
  br i1 %.not.i3, label %_ZNSt6threadD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7easylog8appender4stopEv.exit
  tail call void @_ZSt9terminatev() #53
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %_ZN7easylog8appender4stopEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 688
  tail call void @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEED2Ev(ptr noundef nonnull align 8 dead_on_return(612) dereferenceable(612) %i.j) #43
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %i.k) #43
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !230  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6threadD2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !221
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6threadD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #53
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEED2Ev(ptr noundef nonnull align 8 dead_on_return(612) dereferenceable(612) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr %0 monotonic, align 8 ; 2 uses
  %.not29 = icmp eq ptr %i.a, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE7destroyINS6_12ProducerBaseEEEvPT_.exit
  %.02130 = phi ptr [ %i.e, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE7destroyINS6_12ProducerBaseEEEvPT_.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.02130, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !877  ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.f = getelementptr inbounds nuw i8, ptr %.02130, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3858 ; 2 uses
  %.not27 = icmp eq ptr %i.g, null
  br i1 %.not27, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE7destroyINS6_12ProducerBaseEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store ptr null, ptr %i.g, align 8, !tbaa !3860
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE7destroyINS6_12ProducerBaseEEEvPT_.exit

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE7destroyINS6_12ProducerBaseEEEvPT_.exit: ; preds = %bb.b, %.lr.ph
  %i.h = load ptr, ptr %.02130, align 8, !tbaa !205
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.02130) #43, !inline_history !3856
  tail call void @free(ptr noundef nonnull %.02130) #43
  br i1 %i.d, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE7destroyINS6_12ProducerBaseEEEvPT_.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load atomic ptr, ptr %i.j monotonic, align 8 ; 3 uses
  %.not2331 = icmp eq ptr %i.k, null
  br i1 %.not2331, label %._crit_edge35, label %.lr.ph34.preheader

.lr.ph34.preheader:                               ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !856  ; 2 uses
  %cond47 = icmp eq ptr %i.m, null
  br i1 %cond47, label %._crit_edge35, label %.preheader

.preheader:                                       ; preds = %.lr.ph34.preheader, %.preheader
  %i.n = phi ptr [ %i.p, %.preheader ], [ %i.m, %.lr.ph34.preheader ] ; 2 uses
  %.0203248 = phi ptr [ %i.n, %.preheader ], [ %i.k, %.lr.ph34.preheader ]
  tail call void @free(ptr noundef nonnull %.0203248) #43
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !856  ; 2 uses
  %cond = icmp eq ptr %i.p, null
  br i1 %cond, label %._crit_edge35, label %.preheader

._crit_edge35:                                    ; preds = %.preheader, %.lr.ph34.preheader, %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load atomic ptr, ptr %i.q monotonic, align 8 ; 2 uses
  %.not2436 = icmp eq ptr %i.r, null
  br i1 %.not2436, label %._crit_edge40, label %.lr.ph39

.lr.ph39:                                         ; preds = %._crit_edge35, %bb.d
  %.037 = phi ptr [ %i.t, %bb.d ], [ %i.r, %._crit_edge35 ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.037, i64 2616
  %i.t = load atomic ptr, ptr %i.s monotonic, align 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.037, i64 2624
  %i.v = load i8, ptr %i.u, align 8, !tbaa !872, !range !294, !noundef !295
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph39
  tail call void @free(ptr noundef nonnull %.037) #43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph39
  %.not24 = icmp eq ptr %i.t, null
  br i1 %.not24, label %._crit_edge40, label %.lr.ph39, !llvm.loop !3857

._crit_edge40:                                    ; preds = %bb.d, %._crit_edge35
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !869  ; 2 uses
  %.not.i28 = icmp eq ptr %i.y, null
  br i1 %.not.i28, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE13destroy_arrayINS6_5BlockEEEvPT_m.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %._crit_edge40
  tail call void @free(ptr noundef nonnull %i.y) #43
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE13destroy_arrayINS6_5BlockEEEvPT_m.exit

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE13destroy_arrayINS6_5BlockEEEvPT_m.exit: ; preds = %._crit_edge40, %.preheader.preheader.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #13

end_hunk_0
begin_hunk_1_@_ZN7cinatra10radix_tree11coro_insertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFN12async_simple4coro4LazyIvEERNS_17coro_http_requestERNS_18coro_http_responseEEERS6_:bb.a
  %i.ta = invoke noundef zeroext i1 %i.sz(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %21, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit343 unwind label %bb.ez ; 0 uses

bb.ez:                                            ; preds = %bb.ey
  %i.tb = landingpad { ptr, i32 }
          catch ptr null
  %i.tc = extractvalue { ptr, i32 } %i.tb, 0
  call void @__clang_call_terminate(ptr %i.tc) #53
  unreachable

.loopexit453:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i248
  %lpad.loopexit455 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

.loopexit.split-lp454:                            ; preds = %bb.cr, %.noexc10.i.i250, %.noexc11.i.i249
  %lpad.loopexit.split-lp456 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

bb.fa:                                            ; preds = %bb.cw
  %i.td = landingpad { ptr, i32 }
          cleanup
  br label %.body258

bb.fb:                                            ; preds = %bb.cx
  %i.te = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7cinatra15radix_tree_nodeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #43
  br label %.body258

.body258:                                         ; preds = %bb.fa, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7cinatra15radix_tree_nodeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i256, %bb.fb
  %.pn = phi { ptr, i32 } [ %i.te, %bb.fb ], [ %i.td, %bb.fa ], [ %i.nc, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7cinatra15radix_tree_nodeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i256 ] ; 2 uses
  %i.tf = load ptr, ptr %17, align 8, !tbaa !230  ; 2 uses
  %i.tg = icmp eq ptr %i.tf, %i.ae
  br i1 %i.tg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %.body258
  %i.th = load i64, ptr %i.ae, align 8, !tbaa !221
  %i.ti = add i64 %i.th, 1
  call void @_ZdlPvm(ptr noundef %i.tf, i64 noundef %i.ti) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328: ; preds = %.body258, %.loopexit453, %.loopexit.split-lp454, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326 ], [ %lpad.loopexit.split-lp456, %.loopexit.split-lp454 ], [ %lpad.loopexit455, %.loopexit453 ], [ %.pn, %.body258 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #43
  br label %.body240

.loopexit458:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i287
  %lpad.loopexit460 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

.loopexit.split-lp459:                            ; preds = %bb.dr, %.noexc10.i.i289, %.noexc11.i.i288
  %lpad.loopexit.split-lp461 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

bb.fc:                                            ; preds = %bb.dw
  %i.tj = landingpad { ptr, i32 }
          cleanup
  br label %.body297

bb.fd:                                            ; preds = %bb.dx
  %i.tk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7cinatra15radix_tree_nodeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #43
  br label %.body297

.body297:                                         ; preds = %bb.fc, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7cinatra15radix_tree_nodeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i295, %bb.fd
  %.pn136 = phi { ptr, i32 } [ %i.tk, %bb.fd ], [ %i.tj, %bb.fc ], [ %i.qm, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7cinatra15radix_tree_nodeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i295 ] ; 2 uses
  %i.tl = load ptr, ptr %20, align 8, !tbaa !230  ; 2 uses
  %i.tm = icmp eq ptr %i.tl, %i.ai
  br i1 %i.tm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329: ; preds = %.body297
  %i.tn = load i64, ptr %i.ai, align 8, !tbaa !221
  %i.to = add i64 %i.tn, 1
  call void @_ZdlPvm(ptr noundef %i.tl, i64 noundef %i.to) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331: ; preds = %.body297, %.loopexit458, %.loopexit.split-lp459, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329
  %.pn136.pn = phi { ptr, i32 } [ %.pn136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329 ], [ %lpad.loopexit.split-lp461, %.loopexit.split-lp459 ], [ %lpad.loopexit460, %.loopexit458 ], [ %.pn136, %.body297 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #43
  br label %.body240

bb.fe:                                            ; preds = %_ZNSt8functionIFN12async_simple4coro4LazyIvEERN7cinatra17coro_http_requestERNS4_18coro_http_responseEEEC2ERKSA_.exit323
  %i.tp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tq = load ptr, ptr %i.am, align 8, !tbaa !254 ; 2 uses
  %.not.i332 = icmp eq ptr %i.tq, null
  br i1 %.not.i332, label %.body240, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.tr = invoke noundef zeroext i1 %i.tq(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %21, i32 noundef 3)
          to label %.body240 unwind label %bb.fg  ; 0 uses

bb.fg:                                            ; preds = %bb.ff
  %i.ts = landingpad { ptr, i32 }
          catch ptr null
  %i.tt = extractvalue { ptr, i32 } %i.ts, 0
  call void @__clang_call_terminate(ptr %i.tt) #53
  unreachable

bb.fh:                                            ; preds = %_ZN7cinatra15radix_tree_node9get_childEc.exit
  store ptr %i.eo, ptr %5, align 16, !tbaa !1640
  %i.tu = load ptr, ptr %i.o, align 8, !tbaa !280 ; 4 uses
  %i.tv = load ptr, ptr %i.a, align 8, !tbaa !280 ; 3 uses
  %.not.i.i.i334 = icmp eq ptr %i.tu, %i.tv
  br i1 %.not.i.i.i334, label %_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %.not7.i.i.i = icmp eq ptr %i.tu, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tu, i64 8 ; 3 uses
  %i.tx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !221
  %.not.i.i.i.i335 = icmp eq i8 %i.tx, 0
  br i1 %.not.i.i.i.i335, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ty = load i32, ptr %i.tw, align 4, !tbaa !222
  %i.tz = add nsw i32 %i.ty, 1
  store i32 %i.tz, ptr %i.tw, align 4, !tbaa !222
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.fl:                                            ; preds = %bb.fj
  %i.ua = atomicrmw volatile add ptr %i.tw, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !280
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.fl, %bb.fk, %bb.fi
  %i.ub = phi ptr [ %i.tv, %bb.fi ], [ %i.tv, %bb.fk ], [ %.pr.pre.i.i.i, %bb.fl ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.ub, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.fm

bb.fm:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8 ; 4 uses
  %i.ud = load atomic i64, ptr %i.uc acquire, align 8 ; 2 uses
  %i.ue = icmp eq i64 %i.ud, 4294967297
  %i.uf = trunc i64 %i.ud to i32                  ; 2 uses
  br i1 %i.ue, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  store i32 0, ptr %i.uc, align 8, !tbaa !283
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ub, i64 12
  store i32 0, ptr %i.ug, align 4, !tbaa !284
  %i.uh = load ptr, ptr %i.ub, align 8, !tbaa !205
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  %i.uj = load ptr, ptr %i.ui, align 8
  call void %i.uj(ptr noundef nonnull align 8 dereferenceable(16) %i.ub) #43, !inline_history !109
  %i.uk = load ptr, ptr %i.ub, align 8, !tbaa !205
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 24
  %i.um = load ptr, ptr %i.ul, align 8
  call void %i.um(ptr noundef nonnull align 8 dereferenceable(16) %i.ub) #43, !inline_history !109
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.fo:                                            ; preds = %bb.fm
  %i.un = load i8, ptr @__libc_single_threaded, align 1, !tbaa !221
  %.not.i9.i.i.i = icmp eq i8 %i.un, 0
  br i1 %.not.i9.i.i.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.uo = add nsw i32 %i.uf, -1
  store i32 %i.uo, ptr %i.uc, align 8, !tbaa !222
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.fq:                                            ; preds = %bb.fo
  %i.up = atomicrmw volatile add ptr %i.uc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.fq, %bb.fp
  %.0.i.i.i.i.i = phi i32 [ %i.uf, %bb.fp ], [ %i.up, %bb.fq ]
  %i.uq = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.uq, label %bb.fr, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !227

bb.fr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ub) #43
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.fr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.fn, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.tu, ptr %i.a, align 8, !tbaa !280
  br label %_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit

_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit: ; preds = %bb.fh, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ur = load ptr, ptr %1, align 8, !tbaa !230   ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 %.pre-phi1149
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !221
  %i.uu = icmp eq i8 %i.ut, 58
  br i1 %i.uu, label %bb.fs, label %bb.gf

bb.fs:                                            ; preds = %_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit
  %i.uv = add nsw i32 %.0120, 1                   ; 3 uses
  %i.uw = load ptr, ptr %5, align 16, !tbaa !1640 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !231
  %i.uz = trunc i64 %i.uy to i32
  %i.va = add i32 %.0, 1
  %i.vb = add i32 %i.va, %i.uz                    ; 2 uses
  %i.vc = icmp eq i32 %i.vb, %i.l
  br i1 %i.vc, label %bb.ft, label %_ZNSt14_Function_baseD2Ev.exit343

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %22, i8 0, i64 32, i1 false)
  %i.vd = load ptr, ptr %i.ac, align 8, !tbaa !254 ; 2 uses
  %.not.i.i.not.i336 = icmp eq ptr %i.vd, null
  br i1 %.not.i.i.not.i336, label %_ZNSt8functionIFN12async_simple4coro4LazyIvEERN7cinatra17coro_http_requestERNS4_18coro_http_responseEEEC2ERKSA_.exit341, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.ve = invoke noundef zeroext i1 %i.vd(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.fv unwind label %bb.fw     ; 0 uses

bb.fv:                                            ; preds = %bb.fu
  %i.vf = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !260
  store <2 x ptr> %i.vf, ptr %i.ad, align 8, !tbaa !260
  br label %_ZNSt8functionIFN12async_simple4coro4LazyIvEERN7cinatra17coro_http_requestERNS4_18coro_http_responseEEEC2ERKSA_.exit341

bb.fw:                                            ; preds = %bb.fu
  %i.vg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vh = load ptr, ptr %i.ad, align 8, !tbaa !254 ; 2 uses
  %.not.i.i337 = icmp eq ptr %i.vh, null
  br i1 %.not.i.i337, label %.body240, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.vi = invoke noundef zeroext i1 %i.vh(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %22, i32 noundef 3)
          to label %.body240 unwind label %bb.fy  ; 0 uses

bb.fy:                                            ; preds = %bb.fx
  %i.vj = landingpad { ptr, i32 }
          catch ptr null
  %i.vk = extractvalue { ptr, i32 } %i.vj, 0
  call void @__clang_call_terminate(ptr %i.vk) #53
  unreachable

_ZNSt8functionIFN12async_simple4coro4LazyIvEERN7cinatra17coro_http_requestERNS4_18coro_http_responseEEEC2ERKSA_.exit341: ; preds = %bb.fv, %bb.ft
  %i.vl = invoke noundef i32 @_ZN7cinatra15radix_tree_node16add_coro_handlerESt8functionIFN12async_simple4coro4LazyIvEERNS_17coro_http_requestERNS_18coro_http_responseEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(220) %i.uw, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.fz unwind label %bb.gc     ; 2 uses

bb.fz:                                            ; preds = %_ZNSt8functionIFN12async_simple4coro4LazyIvEERN7cinatra17coro_http_requestERNS4_18coro_http_responseEEEC2ERKSA_.exit341
  %i.vm = load ptr, ptr %i.ad, align 8, !tbaa !254 ; 2 uses
  %.not.i342 = icmp eq ptr %i.vm, null
  br i1 %.not.i342, label %_ZNSt14_Function_baseD2Ev.exit343, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.vn = invoke noundef zeroext i1 %i.vm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %22, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit343 unwind label %bb.gb ; 0 uses

bb.gb:                                            ; preds = %bb.ga
  %i.vo = landingpad { ptr, i32 }
          catch ptr null
  %i.vp = extractvalue { ptr, i32 } %i.vo, 0
  call void @__clang_call_terminate(ptr %i.vp) #53
  unreachable

bb.gc:                                            ; preds = %_ZNSt8functionIFN12async_simple4coro4LazyIvEERN7cinatra17coro_http_requestERNS4_18coro_http_responseEEEC2ERKSA_.exit341
  %i.vq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vr = load ptr, ptr %i.ad, align 8, !tbaa !254 ; 2 uses
  %.not.i344 = icmp eq ptr %i.vr, null
  br i1 %.not.i344, label %.body240, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.vs = invoke noundef zeroext i1 %i.vr(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %22, i32 noundef 3)
          to label %.body240 unwind label %bb.ge  ; 0 uses

bb.ge:                                            ; preds = %bb.gd
  %i.vt = landingpad { ptr, i32 }
          catch ptr null
  %i.vu = extractvalue { ptr, i32 } %i.vt, 0
  call void @__clang_call_terminate(ptr %i.vu) #53
  unreachable

bb.gf:                                            ; preds = %_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit
  %i.vv = load ptr, ptr %5, align 16, !tbaa !1640 ; 15 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 8 ; 6 uses
  %i.vx = load i64, ptr %i.vw, align 8, !tbaa !231 ; 2 uses
  %.not1146 = icmp eq i64 %i.vx, 0
  br i1 %.not1146, label %.critedge.thread1163, label %.lr.ph

.lr.ph:                                           ; preds = %bb.gf
  %i.vy = load ptr, ptr %i.vv, align 8, !tbaa !230
  br label %bb.gg

bb.gg:                                            ; preds = %.lr.ph, %bb.gh
  %indvars.iv = phi i64 [ %.pre-phi1149, %.lr.ph ], [ %indvars.iv.next, %bb.gh ] ; 3 uses
  %.2800 = phi i32 [ %.0, %.lr.ph ], [ %i.we, %bb.gh ]
  %.087799 = phi i64 [ 0, %.lr.ph ], [ %i.wf, %bb.gh ] ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.ur, i64 %indvars.iv
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !221
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vy, i64 %.087799
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !221
  %i.wd = icmp eq i8 %i.wa, %i.wc
  br i1 %i.wd, label %bb.gh, label %.critedge.thread.loopexit

bb.gh:                                            ; preds = %bb.gg
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.we = add nsw i32 %.2800, 1                   ; 3 uses
  %i.wf = add nuw nsw i64 %.087799, 1             ; 3 uses
  %i.wg = icmp slt i64 %indvars.iv.next, %i.aw
  %i.wh = icmp ult i64 %i.wf, %i.vx               ; 2 uses
  %or.cond = select i1 %i.wg, i1 %i.wh, i1 false
  br i1 %or.cond, label %bb.gg, label %.critedge, !llvm.loop !6381

.critedge:                                        ; preds = %bb.gh
  br i1 %i.wh, label %.critedge.thread, label %.critedge.thread1163

.critedge.thread.loopexit:                        ; preds = %bb.gg
  %i.wi = trunc nsw i64 %indvars.iv to i32
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.loopexit, %.critedge
  %.2.lcssa1162 = phi i32 [ %i.we, %.critedge ], [ %i.wi, %.critedge.thread.loopexit ]
  %.087.lcssa1160 = phi i64 [ %i.wf, %.critedge ], [ %.087799, %.critedge.thread.loopexit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !6399)
  %i.wj = load i64, ptr %i.vw, align 8, !tbaa !231, !noalias !6399 ; 3 uses
  %i.wk = icmp ugt i64 %.087.lcssa1160, %i.wj
  br i1 %i.wk, label %bb.gi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i346

bb.gi:                                            ; preds = %.critedge.thread
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.936, ptr noundef nonnull @.str.967, i64 noundef %.087.lcssa1160, i64 noundef %i.wj) #55
          to label %.noexc352 unwind label %.loopexit.split-lp444

.noexc352:                                        ; preds = %bb.gi
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i346: ; preds = %.critedge.thread
  store ptr %i.p, ptr %24, align 8, !tbaa !226, !alias.scope !6399
  %i.wl = load ptr, ptr %i.vv, align 8, !tbaa !230, !noalias !6399
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 %.087.lcssa1160 ; 2 uses
  %i.wn = sub nuw i64 %i.wj, %.087.lcssa1160      ; 8 uses
  %i.wo = icmp ugt i64 %i.wn, 15
  br i1 %i.wo, label %bb.gj, label %._crit_edge.i.i.i348

bb.gj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i346
  %i.wp = icmp slt i64 %i.wn, 0
  br i1 %i.wp, label %.noexc10.i.i351, label %bb.gk

.noexc10.i.i351:                                  ; preds = %bb.gj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.914) #55
          to label %.noexc353 unwind label %.loopexit.split-lp444

.noexc353:                                        ; preds = %.noexc10.i.i351
  unreachable

bb.gk:                                            ; preds = %bb.gj
  %i.wq = add nuw i64 %i.wn, 1                    ; 2 uses
  %i.wr = icmp slt i64 %i.wq, 0
  br i1 %i.wr, label %.noexc11.i.i350, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i349, !prof !227

.noexc11.i.i350:                                  ; preds = %bb.gk
  invoke void @_ZSt17__throw_bad_allocv() #55
          to label %.noexc354 unwind label %.loopexit.split-lp444

.noexc354:                                        ; preds = %.noexc11.i.i350
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i349: ; preds = %bb.gk
  %i.ws = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wq) #56
          to label %.noexc355 unwind label %.loopexit443 ; 2 uses

.noexc355:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i349
  store ptr %i.ws, ptr %24, align 8, !tbaa !230, !alias.scope !6399
  store i64 %i.wn, ptr %i.p, align 8, !tbaa !221, !alias.scope !6399
  br label %._crit_edge.i.i.i348

._crit_edge.i.i.i348:                             ; preds = %.noexc355, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i346
  %i.wt = phi ptr [ %i.ws, %.noexc355 ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i346 ] ; 3 uses
  switch i64 %i.wn, label %bb.gm [
    i64 1, label %bb.gl
    i64 0, label %bb.gn
  ]

bb.gl:                                            ; preds = %._crit_edge.i.i.i348
  %i.wu = load i8, ptr %i.wm, align 1, !tbaa !221
  store i8 %i.wu, ptr %i.wt, align 1, !tbaa !221
  br label %bb.gn

bb.gm:                                            ; preds = %._crit_edge.i.i.i348
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wt, ptr align 1 %i.wm, i64 %i.wn, i1 false)
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl, %._crit_edge.i.i.i348
  store i64 %i.wn, ptr %i.q, align 8, !tbaa !231, !alias.scope !6399
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wt, i64 %i.wn
  store i8 0, ptr %i.wv, align 1, !tbaa !221
  call void @llvm.experimental.noalias.scope.decl(metadata !6400)
  %i.ww = invoke noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #56
          to label %.noexc358 unwind label %bb.ia ; 11 uses

.noexc358:                                        ; preds = %bb.gn
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 8
  store i32 1, ptr %i.wx, align 8, !tbaa !283, !noalias !6400
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ww, i64 12
  store i32 1, ptr %i.wy, align 4, !tbaa !284, !noalias !6400
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN7cinatra15radix_tree_nodeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ww, align 8, !tbaa !205, !noalias !6400
end_hunk_1
