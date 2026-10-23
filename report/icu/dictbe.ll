Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/dictbe?download=true
inline.NumInlined: 278
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK6icu_7814CjkBreakEngine23divideUpDictionaryRangeEP5UTextiiRNS_9UVector32EaR10UErrorCode:bb.a

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i434: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i437, %bb.bn
  %i.jt = phi i32 [ %.pre.i438, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i437 ], [ %i.jn, %bb.bn ]
  %i.ju = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !41
  %i.jw = sext i32 %i.jt to i64
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %i.jw
  store i32 0, ptr %i.jx, align 4, !tbaa !16
  %i.jy = load i32, ptr %i.jm, align 8, !tbaa !40
  %i.jz = add nsw i32 %i.jy, 1
  store i32 %i.jz, ptr %i.jm, align 8, !tbaa !40
  br label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit440

_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit440: ; preds = %.noexc439, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i434
  %.not347642 = icmp slt i32 %i.hq, 1
  br i1 %.not347642, label %._crit_edge645, label %.lr.ph644

.lr.ph644:                                        ; preds = %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit440
  %i.ka = getelementptr inbounds nuw i8, ptr %13, i64 24
  br label %bb.bp

._crit_edge645:                                   ; preds = %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit449, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit440
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  invoke void @_ZN6icu_789UVector32C1EiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef %i.jl, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %.preheader592 unwind label %bb.bq

.preheader592:                                    ; preds = %._crit_edge645
  %.not348646 = icmp slt i32 %i.hq, 0
  br i1 %.not348646, label %._crit_edge649, label %.lr.ph648

.lr.ph648:                                        ; preds = %.preheader592
  %i.kb = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.kd = getelementptr inbounds nuw i8, ptr %14, i64 24
  br label %bb.br

bb.bo:                                            ; preds = %.loopexit603
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.bp:                                            ; preds = %.lr.ph644, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit449
  %.0248643 = phi i32 [ 1, %.lr.ph644 ], [ %i.kq, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit449 ] ; 2 uses
  %i.kf = load i32, ptr %i.jm, align 8, !tbaa !40 ; 4 uses
  %i.kg = icmp slt i32 %i.kf, -1
  %i.kh = load i32, ptr %i.jp, align 4
  %.not.i.i441 = icmp sle i32 %i.kh, %i.kf
  %or.cond.i.i442 = select i1 %i.kg, i1 true, i1 %.not.i.i441
  br i1 %or.cond.i.i442, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i444, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i443

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i444: ; preds = %bb.bp
  %i.ki = add nsw i32 %i.kf, 1
  %i.kj = invoke noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef %i.ki, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %.noexc448 unwind label %.loopexit.split-lp594.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc448:                                        ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i444
  %.not.i445 = icmp eq i8 %i.kj, 0
  br i1 %.not.i445, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit449, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i446

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i446: ; preds = %.noexc448
  %.pre.i447 = load i32, ptr %i.jm, align 8, !tbaa !40
  br label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i443

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i443: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i446, %bb.bp
  %i.kk = phi i32 [ %.pre.i447, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i446 ], [ %i.kf, %bb.bp ]
  %i.kl = load ptr, ptr %i.ka, align 8, !tbaa !41
  %i.km = sext i32 %i.kk to i64
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %i.km
  store i32 -1, ptr %i.kn, align 4, !tbaa !16
  %i.ko = load i32, ptr %i.jm, align 8, !tbaa !40
  %i.kp = add nsw i32 %i.ko, 1
  store i32 %i.kp, ptr %i.jm, align 8, !tbaa !40
  br label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit449

_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit449: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i443, %.noexc448
  %i.kq = add nuw i32 %.0248643, 1
  %exitcond.not = icmp eq i32 %.0248643, %i.hq
  br i1 %exitcond.not, label %._crit_edge645, label %bb.bp, !llvm.loop !89

.loopexit.split-lp594.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i444, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i435
  %lpad.loopexit.split-lp873 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp594

._crit_edge649:                                   ; preds = %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit458, %.preheader592
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  invoke void @_ZN6icu_789UVector32C1EiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef %i.hq, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.bt unwind label %bb.bx

bb.bq:                                            ; preds = %._crit_edge645
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.br:                                            ; preds = %.lr.ph648, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit458
  %.0247647 = phi i32 [ 0, %.lr.ph648 ], [ %i.ld, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit458 ] ; 2 uses
  %i.ks = load i32, ptr %i.kb, align 8, !tbaa !40 ; 4 uses
  %i.kt = icmp slt i32 %i.ks, -1
  %i.ku = load i32, ptr %i.kc, align 4
  %.not.i.i450 = icmp sle i32 %i.ku, %i.ks
  %or.cond.i.i451 = select i1 %i.kt, i1 true, i1 %.not.i.i450
  br i1 %or.cond.i.i451, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i453, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i452

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i453: ; preds = %bb.br
  %i.kv = add nsw i32 %i.ks, 1
  %i.kw = invoke noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef %i.kv, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %.noexc457 unwind label %bb.bs

.noexc457:                                        ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i453
  %.not.i454 = icmp eq i8 %i.kw, 0
  br i1 %.not.i454, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit458, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i455

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i455: ; preds = %.noexc457
  %.pre.i456 = load i32, ptr %i.kb, align 8, !tbaa !40
  br label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i452

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i452: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i455, %bb.br
  %i.kx = phi i32 [ %.pre.i456, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i455 ], [ %i.ks, %bb.br ]
  %i.ky = load ptr, ptr %i.kd, align 8, !tbaa !41
  %i.kz = sext i32 %i.kx to i64
  %i.la = getelementptr inbounds [4 x i8], ptr %i.ky, i64 %i.kz
  store i32 -1, ptr %i.la, align 4, !tbaa !16
  %i.lb = load i32, ptr %i.kb, align 8, !tbaa !40
  %i.lc = add nsw i32 %i.lb, 1
  store i32 %i.lc, ptr %i.kb, align 8, !tbaa !40
  br label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit458

_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit458: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i452, %.noexc457
  %i.ld = add nuw i32 %.0247647, 1
  %exitcond726.not = icmp eq i32 %.0247647, %i.hq
  br i1 %exitcond726.not, label %._crit_edge649, label %bb.br, !llvm.loop !90

bb.bs:                                            ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i453
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.bt:                                            ; preds = %._crit_edge649
  invoke void @_ZN6icu_789UVector327setSizeEi(ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef %i.hq)
          to label %bb.bu unwind label %bb.by

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  invoke void @_ZN6icu_789UVector32C1EiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef %i.hq, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.bv unwind label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN6icu_789UVector327setSizeEi(ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef %i.hq)
          to label %bb.bw unwind label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %17, i8 0, i64 144, i1 false)
  store i32 878368812, ptr %17, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 144, ptr %i.lf, align 4
  %i.lg = invoke ptr @utext_openUnicodeString_78(ptr noundef nonnull %17, ptr noundef nonnull %7, ptr noundef nonnull %6)
          to label %.preheader588 unwind label %.loopexit.split-lp581.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader588:                                    ; preds = %bb.bw
  %i.lh = icmp sgt i32 %i.hq, 0                   ; 2 uses
  br i1 %i.lh, label %.lr.ph663, label %._crit_edge664

.lr.ph663:                                        ; preds = %.preheader588
  %i.li = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 5 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.lk = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.lo = getelementptr inbounds nuw i8, ptr %15, i64 8
  %wide.trip.count731 = zext nneg i32 %i.hq to i64
  br label %bb.cb

._crit_edge664:                                   ; preds = %bb.cy, %.preheader588
  %i.lp = invoke ptr @utext_close_78(ptr noundef nonnull %17)
          to label %bb.cz unwind label %.loopexit.split-lp581.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bx:                                            ; preds = %._crit_edge649
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.by:                                            ; preds = %bb.bt
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.bz:                                            ; preds = %bb.bu
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.ca:                                            ; preds = %bb.bv
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.cb:                                            ; preds = %.lr.ph663, %bb.cy
  %indvars.iv729 = phi i64 [ 0, %.lr.ph663 ], [ %indvars.iv.next730, %bb.cy ] ; 9 uses
  %.0244660 = phi i8 [ 0, %.lr.ph663 ], [ %.1245, %bb.cy ] ; 2 uses
  %.0246659 = phi i32 [ 0, %.lr.ph663 ], [ %i.pw, %bb.cy ] ; 5 uses
  %i.lu = load i32, ptr %i.jm, align 8
  %i.lv = sext i32 %i.lu to i64
  %i.lw = icmp slt i64 %indvars.iv729, %i.lv
  br i1 %i.lw, label %_ZNK6icu_789UVector3210elementAtiEi.exit460, label %_ZNK6icu_789UVector3210elementAtiEi.exit460.thread

_ZNK6icu_789UVector3210elementAtiEi.exit460:      ; preds = %bb.cb
  %i.lx = load ptr, ptr %i.li, align 8, !tbaa !41
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %indvars.iv729
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !16
  %i.ma = icmp eq i32 %i.lz, -1
  br i1 %i.ma, label %_ZNK6icu_789UVector3210elementAtiEi.exit477.thread, label %_ZNK6icu_789UVector3210elementAtiEi.exit460.thread

_ZNK6icu_789UVector3210elementAtiEi.exit460.thread: ; preds = %bb.cb, %_ZNK6icu_789UVector3210elementAtiEi.exit460
  %i.mb = sext i32 %.0246659 to i64
  invoke void @utext_setNativeIndex_78(ptr noundef nonnull %17, i64 noundef %i.mb)
          to label %bb.cc unwind label %.loopexit.split-lp581.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cc:                                            ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit460.thread
  %i.mc = load ptr, ptr %i.lj, align 8, !tbaa !57 ; 2 uses
  %i.md = load ptr, ptr %i.lk, align 8, !tbaa !41
  %i.me = load ptr, ptr %i.ll, align 8, !tbaa !41
  %i.mf = load ptr, ptr %i.mc, align 8, !tbaa !9
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mh = load ptr, ptr %i.mg, align 8
  %i.mi = invoke noundef i32 %i.mh(ptr noundef nonnull align 8 dereferenceable(8) %i.mc, ptr noundef nonnull %17, i32 noundef 20, i32 noundef %i.hq, ptr noundef null, ptr noundef %i.md, ptr noundef %i.me, ptr noundef null)
          to label %bb.cd unwind label %.loopexit.split-lp581.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

bb.cd:                                            ; preds = %bb.cc
  %i.mj = icmp ne i32 %i.mi, 0
  %i.mk = load i32, ptr %i.lm, align 8
  %i.ml = icmp sgt i32 %i.mk, 0
  %or.cond566 = select i1 %i.mj, i1 %i.ml, i1 false
  br i1 %or.cond566, label %_ZNK6icu_789UVector3210elementAtiEi.exit462, label %_ZNK6icu_789UVector3210elementAtiEi.exit462.thread

_ZNK6icu_789UVector3210elementAtiEi.exit462:      ; preds = %bb.cd
  %i.mm = load ptr, ptr %i.lk, align 8, !tbaa !41
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !16
  %.not366 = icmp eq i32 %i.mn, 1
  br i1 %.not366, label %bb.ci, label %_ZNK6icu_789UVector3210elementAtiEi.exit462.thread

_ZNK6icu_789UVector3210elementAtiEi.exit462.thread: ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit462, %bb.cd
  %i.mo = invoke noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %.0246659)
          to label %bb.ce unwind label %.loopexit.split-lp581.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ce:                                            ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit462.thread
  %i.mp = invoke noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.ln, i32 noundef %i.mo)
          to label %bb.cf unwind label %.loopexit.split-lp581.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cf:                                            ; preds = %bb.ce
  %.not367 = icmp eq i8 %i.mp, 0
  br i1 %.not367, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 255, i32 noundef %i.mi)
          to label %bb.ch unwind label %.loopexit.split-lp581.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ch:                                            ; preds = %bb.cg
  %i.mq = add nsw i32 %i.mi, 1
  invoke void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef 1, i32 noundef %i.mi)
          to label %bb.ci unwind label %.loopexit.split-lp581.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ci:                                            ; preds = %bb.ch, %bb.cf, %_ZNK6icu_789UVector3210elementAtiEi.exit462
  %.0242 = phi i32 [ %i.mi, %bb.cf ], [ %i.mq, %bb.ch ], [ %i.mi, %_ZNK6icu_789UVector3210elementAtiEi.exit462 ] ; 2 uses
  %i.mr = icmp sgt i32 %.0242, 0
  br i1 %i.mr, label %.lr.ph652, label %._crit_edge653

.lr.ph652:                                        ; preds = %bb.ci
  %wide.trip.count = zext nneg i32 %.0242 to i64
  %i.ms = trunc nuw nsw i64 %indvars.iv729 to i32 ; 2 uses
  br label %bb.cj

._crit_edge653:                                   ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit470.thread, %bb.ci
  %i.mt = invoke noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %.0246659)
          to label %bb.cp unwind label %.loopexit.split-lp581.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.cj:                                            ; preds = %.lr.ph652, %_ZNK6icu_789UVector3210elementAtiEi.exit470.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph652 ], [ %indvars.iv.next, %_ZNK6icu_789UVector3210elementAtiEi.exit470.thread ] ; 5 uses
  %i.mu = load i32, ptr %i.jm, align 8            ; 2 uses
  %i.mv = sext i32 %i.mu to i64
  %i.mw = icmp slt i64 %indvars.iv729, %i.mv
  br i1 %i.mw, label %bb.ck, label %_ZNK6icu_789UVector3210elementAtiEi.exit464

bb.ck:                                            ; preds = %bb.cj
  %i.mx = load ptr, ptr %i.li, align 8, !tbaa !41
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv729
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !16
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit464

_ZNK6icu_789UVector3210elementAtiEi.exit464:      ; preds = %bb.cj, %bb.ck
  %i.na = phi i32 [ %i.mz, %bb.ck ], [ 0, %bb.cj ]
  %i.nb = load i32, ptr %i.lo, align 8
  %i.nc = sext i32 %i.nb to i64
  %i.nd = icmp slt i64 %indvars.iv, %i.nc
  br i1 %i.nd, label %bb.cl, label %_ZNK6icu_789UVector3210elementAtiEi.exit466

bb.cl:                                            ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit464
  %i.ne = load ptr, ptr %i.ll, align 8, !tbaa !41
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %indvars.iv
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !16
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit466

_ZNK6icu_789UVector3210elementAtiEi.exit466:      ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit464, %bb.cl
  %i.nh = phi i32 [ %i.ng, %bb.cl ], [ 0, %_ZNK6icu_789UVector3210elementAtiEi.exit464 ]
  %i.ni = add i32 %i.nh, %i.na                    ; 2 uses
  %i.nj = load i32, ptr %i.lm, align 8
  %i.nk = sext i32 %i.nj to i64
  %i.nl = icmp slt i64 %indvars.iv, %i.nk
  br i1 %i.nl, label %bb.cm, label %_ZNK6icu_789UVector3210elementAtiEi.exit468

bb.cm:                                            ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit466
  %i.nm = load ptr, ptr %i.lk, align 8, !tbaa !41
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %indvars.iv
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !16
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit468

_ZNK6icu_789UVector3210elementAtiEi.exit468:      ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit466, %bb.cm
  %i.np = phi i32 [ %i.no, %bb.cm ], [ 0, %_ZNK6icu_789UVector3210elementAtiEi.exit466 ]
  %i.nq = add nsw i32 %i.np, %i.ms                ; 5 uses
  %i.nr = icmp sgt i32 %i.nq, -1
  %i.ns = icmp sgt i32 %i.mu, %i.nq
  %or.cond.i469 = and i1 %i.nr, %i.ns
  br i1 %or.cond.i469, label %_ZNK6icu_789UVector3210elementAtiEi.exit470, label %_ZNK6icu_789UVector3210elementAtiEi.exit470.thread

_ZNK6icu_789UVector3210elementAtiEi.exit470:      ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit468
  %i.nt = load ptr, ptr %i.li, align 8, !tbaa !41
  %i.nu = zext nneg i32 %i.nq to i64
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %i.nu
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !16
  %i.nx = icmp ult i32 %i.ni, %i.nw
  br i1 %i.nx, label %bb.cn, label %_ZNK6icu_789UVector3210elementAtiEi.exit470.thread

bb.cn:                                            ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit470
  invoke void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef %i.ni, i32 noundef %i.nq)
          to label %bb.co unwind label %.loopexit.split-lp581.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef %i.ms, i32 noundef %i.nq)
          to label %_ZNK6icu_789UVector3210elementAtiEi.exit470.thread unwind label %.loopexit.split-lp581.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6icu_789UVector3210elementAtiEi.exit470.thread: ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit468, %bb.co, %_ZNK6icu_789UVector3210elementAtiEi.exit470
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond728.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond728.not, label %._crit_edge653, label %bb.cj, !llvm.loop !91

bb.cp:                                            ; preds = %._crit_edge653
  %i.ny = add i32 %i.mt, -12449
  %or.cond.i471 = icmp ult i32 %i.ny, 94
  %i.nz = icmp ne i32 %i.mt, 12539
  %or.cond3.i = and i1 %i.nz, %or.cond.i471
  %i.oa = add i32 %i.mt, -65382
  %i.ob = icmp ult i32 %i.oa, 58
  %i.oc = or i1 %i.ob, %or.cond3.i                ; 2 uses
  %20 = zext i1 %i.oc to i8                       ; 5 uses
  %.not = icmp eq i8 %.0244660, 0
  %or.cond = and i1 %.not, %i.oc
  br i1 %or.cond, label %bb.cq, label %_ZNK6icu_789UVector3210elementAtiEi.exit477.thread

bb.cq:                                            ; preds = %bb.cp
  %i.od = invoke noundef i32 @_ZNK6icu_7813UnicodeString11moveIndex32Eii(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %.0246659, i32 noundef 1)
          to label %.preheader579 unwind label %.loopexit.split-lp581.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader579:                                    ; preds = %bb.cq
  %i.oe = load i16, ptr %i.c, align 8, !tbaa !35  ; 2 uses
  %i.of = icmp slt i16 %i.oe, 0
  %i.og = ashr i16 %i.oe, 5
  %i.oh = sext i16 %i.og to i32
  %i.oi = load i32, ptr %i.hv, align 4
  %i.oj = select i1 %i.of, i32 %i.oi, i32 %i.oh
  %i.ok = icmp slt i32 %i.od, %i.oj
  br i1 %i.ok, label %.lr.ph656, label %.critedge.thread

.lr.ph656:                                        ; preds = %.preheader579, %bb.ct
  %.0239655 = phi i32 [ %i.or, %bb.ct ], [ %i.od, %.preheader579 ] ; 2 uses
  %.0240654 = phi i32 [ %i.os, %bb.ct ], [ 1, %.preheader579 ] ; 3 uses
  %i.ol = invoke noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %.0239655)
          to label %bb.cr unwind label %.loopexit.split-lp581.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.cr:                                            ; preds = %.lr.ph656
  %i.om = add i32 %i.ol, -12449
  %or.cond.i472 = icmp ult i32 %i.om, 94
  %i.on = icmp ne i32 %i.ol, 12539
  %or.cond3.i473 = and i1 %i.on, %or.cond.i472
  %i.oo = add i32 %i.ol, -65382
  %i.op = icmp ult i32 %i.oo, 58
  %i.oq = or i1 %i.op, %or.cond3.i473
  br i1 %i.oq, label %bb.cs, label %.critedge.thread

bb.cs:                                            ; preds = %bb.cr
  %i.or = invoke noundef i32 @_ZNK6icu_7813UnicodeString11moveIndex32Eii(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %.0239655, i32 noundef 1)
          to label %bb.ct unwind label %.loopexit.split-lp581.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ct:                                            ; preds = %bb.cs
  %i.os = add nuw nsw i32 %.0240654, 1            ; 2 uses
  %i.ot = load i16, ptr %i.c, align 8, !tbaa !35  ; 2 uses
  %i.ou = icmp slt i16 %i.ot, 0
  %i.ov = ashr i16 %i.ot, 5
  %i.ow = sext i16 %i.ov to i32
  %i.ox = load i32, ptr %i.hv, align 4
  %i.oy = select i1 %i.ou, i32 %i.ox, i32 %i.ow
  %i.oz = icmp slt i32 %i.or, %i.oy
  %i.pa = icmp samesign ult i32 %.0240654, 19     ; 2 uses
  %or.cond5 = select i1 %i.oz, i1 %i.pa, i1 false
  br i1 %or.cond5, label %.lr.ph656, label %.critedge, !llvm.loop !92

.critedge:                                        ; preds = %bb.ct
  br i1 %i.pa, label %.critedge.thread, label %_ZNK6icu_789UVector3210elementAtiEi.exit477.thread

.critedge.thread:                                 ; preds = %bb.cr, %.preheader579, %.critedge
  %.0240634 = phi i32 [ %i.os, %.critedge ], [ 1, %.preheader579 ], [ %.0240654, %bb.cr ] ; 3 uses
  %i.pb = load i32, ptr %i.jm, align 8            ; 2 uses
  %i.pc = sext i32 %i.pb to i64
  %i.pd = icmp slt i64 %indvars.iv729, %i.pc
  br i1 %i.pd, label %bb.cu, label %_ZNK6icu_789UVector3210elementAtiEi.exit475

bb.cu:                                            ; preds = %.critedge.thread
  %i.pe = load ptr, ptr %i.li, align 8, !tbaa !41
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %indvars.iv729
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !16
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit475

_ZNK6icu_789UVector3210elementAtiEi.exit475:      ; preds = %.critedge.thread, %bb.cu
  %i.ph = phi i32 [ %i.pg, %bb.cu ], [ 0, %.critedge.thread ]
  %i.pi = icmp samesign ugt i32 %.0240634, 8
  br i1 %i.pi, label %_ZN6icu_78L15getKatakanaCostEi.exit, label %bb.cv

bb.cv:                                            ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit475
  %i.pj = zext nneg i32 %.0240634 to i64
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6icu_78L15getKatakanaCostEiE12katakanaCost, i64 %i.pj
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !16
  br label %_ZN6icu_78L15getKatakanaCostEi.exit

_ZN6icu_78L15getKatakanaCostEi.exit:              ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit475, %bb.cv
  %i.pm = phi i32 [ %i.pl, %bb.cv ], [ 8192, %_ZNK6icu_789UVector3210elementAtiEi.exit475 ]
  %i.pn = add i32 %i.pm, %i.ph                    ; 2 uses
  %i.po = trunc nuw nsw i64 %indvars.iv729 to i32 ; 2 uses
  %i.pp = add nuw nsw i32 %.0240634, %i.po        ; 4 uses
  %i.pq = icmp sgt i32 %i.pb, %i.pp
  br i1 %i.pq, label %_ZNK6icu_789UVector3210elementAtiEi.exit477, label %_ZNK6icu_789UVector3210elementAtiEi.exit477.thread

_ZNK6icu_789UVector3210elementAtiEi.exit477:      ; preds = %_ZN6icu_78L15getKatakanaCostEi.exit
  %i.pr = load ptr, ptr %i.li, align 8, !tbaa !41
  %i.ps = zext nneg i32 %i.pp to i64
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %i.ps
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !16
  %i.pv = icmp ult i32 %i.pn, %i.pu
  br i1 %i.pv, label %bb.cw, label %_ZNK6icu_789UVector3210elementAtiEi.exit477.thread

bb.cw:                                            ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit477
  invoke void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef %i.pn, i32 noundef %i.pp)
          to label %bb.cx unwind label %.loopexit.split-lp581.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef %i.po, i32 noundef %i.pp)
          to label %_ZNK6icu_789UVector3210elementAtiEi.exit477.thread unwind label %.loopexit.split-lp581.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp581.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.co, %bb.cn, %bb.cs, %.lr.ph656, %._crit_edge653, %bb.ch, %bb.cg, %bb.ce, %_ZNK6icu_789UVector3210elementAtiEi.exit462.thread, %bb.cc, %_ZNK6icu_789UVector3210elementAtiEi.exit460.thread, %_ZNK6icu_789UVector3210elementAtiEi.exit477.thread, %bb.cq, %bb.cx, %bb.cw, %bb.bw, %._crit_edge664
  %lpad.loopexit.split-lp866 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp581

_ZNK6icu_789UVector3210elementAtiEi.exit477.thread: ; preds = %_ZN6icu_78L15getKatakanaCostEi.exit, %bb.cp, %_ZNK6icu_789UVector3210elementAtiEi.exit477, %bb.cx, %.critedge, %_ZNK6icu_789UVector3210elementAtiEi.exit460
  %.1245 = phi i8 [ %.0244660, %_ZNK6icu_789UVector3210elementAtiEi.exit460 ], [ %20, %.critedge ], [ %20, %bb.cx ], [ %20, %_ZNK6icu_789UVector3210elementAtiEi.exit477 ], [ %20, %bb.cp ], [ %20, %_ZN6icu_78L15getKatakanaCostEi.exit ]
  %i.pw = invoke noundef i32 @_ZNK6icu_7813UnicodeString11moveIndex32Eii(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %.0246659, i32 noundef 1)
          to label %bb.cy unwind label %.loopexit.split-lp581.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cy:                                            ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit477.thread
  %indvars.iv.next730 = add nuw nsw i64 %indvars.iv729, 1 ; 2 uses
  %exitcond732.not = icmp eq i64 %indvars.iv.next730, %wide.trip.count731
  br i1 %exitcond732.not, label %._crit_edge664, label %bb.cb, !llvm.loop !93

bb.cz:                                            ; preds = %._crit_edge664
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #12
  invoke void @_ZN6icu_789UVector32C1EiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef %i.jl, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.da unwind label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.px = icmp sgt i32 %i.hq, -1                  ; 2 uses
  %i.py = load i32, ptr %i.jm, align 8
  %i.pz = icmp sgt i32 %i.py, %i.hq
  %or.cond.i478 = select i1 %i.px, i1 %i.pz, i1 false
  br i1 %or.cond.i478, label %_ZNK6icu_789UVector3210elementAtiEi.exit479, label %_ZNK6icu_789UVector3210elementAtiEi.exit479.thread

_ZNK6icu_789UVector3210elementAtiEi.exit479:      ; preds = %bb.da
  %i.qa = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !41
  %i.qc = zext nneg i32 %i.hq to i64
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.qb, i64 %i.qc
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !16
  %i.qf = icmp eq i32 %i.qe, -1
  br i1 %i.qf, label %bb.db, label %_ZNK6icu_789UVector3210elementAtiEi.exit479.thread

bb.db:                                            ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit479
  %i.qg = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  %i.qh = load i32, ptr %i.qg, align 8, !tbaa !40 ; 4 uses
  %i.qi = icmp slt i32 %i.qh, -1
  %i.qj = getelementptr inbounds nuw i8, ptr %18, i64 12
  %i.qk = load i32, ptr %i.qj, align 4
  %.not.i.i480 = icmp sle i32 %i.qk, %i.qh
  %or.cond.i.i481 = select i1 %i.qi, i1 true, i1 %.not.i.i480
  br i1 %or.cond.i.i481, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i483, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i482

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i483: ; preds = %bb.db
  %i.ql = add nsw i32 %i.qh, 1
  %i.qm = invoke noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef %i.ql, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %.noexc487 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc487:                                        ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i483
  %.not.i484 = icmp eq i8 %i.qm, 0
  br i1 %.not.i484, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit488, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i485

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i485: ; preds = %.noexc487
  %.pre.i486 = load i32, ptr %i.qg, align 8, !tbaa !40
  br label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i482

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i482: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i485, %bb.db
  %i.qn = phi i32 [ %.pre.i486, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i485 ], [ %i.qh, %bb.db ]
  %i.qo = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !41
  %i.qq = sext i32 %i.qn to i64
  %i.qr = getelementptr inbounds [4 x i8], ptr %i.qp, i64 %i.qq
  store i32 %i.hq, ptr %i.qr, align 4, !tbaa !16
  %i.qs = load i32, ptr %i.qg, align 8, !tbaa !40
  %i.qt = add nsw i32 %i.qs, 1
  store i32 %i.qt, ptr %i.qg, align 8, !tbaa !40
  br label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit488

bb.dc:                                            ; preds = %bb.cz
  %i.qu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

_ZNK6icu_789UVector3210elementAtiEi.exit479.thread: ; preds = %bb.da, %_ZNK6icu_789UVector3210elementAtiEi.exit479
  %.not349 = icmp eq i8 %5, 0
  br i1 %.not349, label %.preheader, label %bb.dd

.preheader:                                       ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit479.thread
  br i1 %i.lh, label %.lr.ph672, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit488

.lr.ph672:                                        ; preds = %.preheader
  %i.qv = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %18, i64 12
  %i.qx = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.qy = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.qz = getelementptr inbounds nuw i8, ptr %14, i64 24
  br label %bb.dt

bb.dd:                                            ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit479.thread
  %i.ra = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 8 uses
  %i.rb = load i32, ptr %i.ra, align 8, !tbaa !40 ; 4 uses
  %i.rc = icmp slt i32 %i.rb, -1
  %i.rd = getelementptr inbounds nuw i8, ptr %18, i64 12 ; 2 uses
  %i.re = load i32, ptr %i.rd, align 4
  %.not.i.i489 = icmp sle i32 %i.re, %i.rb
  %or.cond.i.i490 = select i1 %i.rc, i1 true, i1 %.not.i.i489
  br i1 %or.cond.i.i490, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i492, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i491

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i492: ; preds = %bb.dd
  %i.rf = add nsw i32 %i.rb, 1
  %i.rg = invoke noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef %i.rf, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %.noexc496 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc496:                                        ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i492
  %.not.i493 = icmp eq i8 %i.rg, 0
  br i1 %.not.i493, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit497, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i494

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i494: ; preds = %.noexc496
  %.pre.i495 = load i32, ptr %i.ra, align 8, !tbaa !40
  br label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i491

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i491: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i494, %bb.dd
  %i.rh = phi i32 [ %.pre.i495, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i494 ], [ %i.rb, %bb.dd ]
  %i.ri = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !41
  %i.rk = sext i32 %i.rh to i64
  %i.rl = getelementptr inbounds [4 x i8], ptr %i.rj, i64 %i.rk
  store i32 %i.hq, ptr %i.rl, align 4, !tbaa !16
  %i.rm = load i32, ptr %i.ra, align 8, !tbaa !40
  %i.rn = add nsw i32 %i.rm, 1
  store i32 %i.rn, ptr %i.ra, align 8, !tbaa !40
  br label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit497

_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit497: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i491, %.noexc496
  %i.ro = load i32, ptr %6, align 4, !tbaa !11
  %i.rp = icmp sgt i32 %i.ro, 0
  br i1 %i.rp, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit488, label %bb.de

bb.de:                                            ; preds = %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit497
  %i.rq = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.rr = load i32, ptr %i.rq, align 8
  %i.rs = icmp sgt i32 %i.rr, %i.hq
  %or.cond.i498 = select i1 %i.px, i1 %i.rs, i1 false
  br i1 %or.cond.i498, label %_ZNK6icu_789UVector3210elementAtiEi.exit499, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit488

_ZNK6icu_789UVector3210elementAtiEi.exit499:      ; preds = %bb.de
  %i.rt = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !41
  %i.rv = zext nneg i32 %i.hq to i64
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %i.rv
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !16 ; 2 uses
  %i.ry = icmp sgt i32 %i.rx, 0
  br i1 %i.ry, label %.lr.ph668, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit488

.lr.ph668:                                        ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit499
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.sa = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.sb = getelementptr inbounds nuw i8, ptr %14, i64 24
  br label %bb.df

bb.df:                                            ; preds = %.lr.ph668, %_ZNK6icu_789UVector3210elementAtiEi.exit515
  %.0234667 = phi i32 [ %i.rx, %.lr.ph668 ], [ %i.tn, %_ZNK6icu_789UVector3210elementAtiEi.exit515 ] ; 5 uses
  %.0235666 = phi i32 [ %i.hq, %.lr.ph668 ], [ %.0234667, %_ZNK6icu_789UVector3210elementAtiEi.exit515 ]
  %.0236665 = phi i32 [ 1, %.lr.ph668 ], [ %.1237, %_ZNK6icu_789UVector3210elementAtiEi.exit515 ] ; 3 uses
  %i.sc = invoke noundef i32 @_ZNK6icu_7813UnicodeString11moveIndex32Eii(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef 0, i32 noundef %.0234667)
          to label %bb.dg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.dg:                                            ; preds = %bb.df
  %i.sd = invoke noundef i32 @_ZNK6icu_7813UnicodeString11moveIndex32Eii(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef 0, i32 noundef %.0235666)
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dh:                                            ; preds = %bb.dg
  %i.se = sub nsw i32 %i.sd, %i.sc
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #12
  invoke void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %19, ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %i.sc, i32 noundef %i.se)
          to label %bb.di unwind label %bb.dp

bb.di:                                            ; preds = %bb.dh
  %i.sf = load ptr, ptr %i.rz, align 8, !tbaa !58
  %i.sg = invoke noundef signext i8 @uhash_containsKey_78(ptr noundef %i.sf, ptr noundef nonnull align 8 dereferenceable(64) %19)
          to label %_ZNK6icu_789Hashtable11containsKeyERKNS_13UnicodeStringE.exit unwind label %bb.dq

_ZNK6icu_789Hashtable11containsKeyERKNS_13UnicodeStringE.exit: ; preds = %bb.di
  %.not351 = icmp eq i8 %i.sg, 0
  br i1 %.not351, label %bb.dj, label %.critedge7

bb.dj:                                            ; preds = %_ZNK6icu_789Hashtable11containsKeyERKNS_13UnicodeStringE.exit
  %i.sh = invoke noundef i32 @_ZNK6icu_7813UnicodeString11moveIndex32Eii(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %i.sc, i32 noundef -1)
          to label %bb.dk unwind label %bb.dq

bb.dk:                                            ; preds = %bb.dj
  %i.si = invoke noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %i.sh)
          to label %bb.dl unwind label %bb.dq     ; 3 uses

bb.dl:                                            ; preds = %bb.dk
  %i.sj = add i32 %i.si, -12449
  %or.cond.i501 = icmp ult i32 %i.sj, 94
  %i.sk = icmp ne i32 %i.si, 12539
  %or.cond3.i502 = and i1 %i.sk, %or.cond.i501
  %i.sl = add i32 %i.si, -65382
  %i.sm = icmp ult i32 %i.sl, 58
  %i.sn = or i1 %i.sm, %or.cond3.i502
  br i1 %i.sn, label %bb.dm, label %.critedge9

bb.dm:                                            ; preds = %bb.dl
  %i.so = invoke noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %i.sc)
          to label %bb.dn unwind label %bb.dq     ; 3 uses

bb.dn:                                            ; preds = %bb.dm
  %i.sp = add i32 %i.so, -12449
  %or.cond.i503 = icmp ult i32 %i.sp, 94
  %i.sq = icmp ne i32 %i.so, 12539
  %or.cond3.i504 = and i1 %i.sq, %or.cond.i503
  %i.sr = add i32 %i.so, -65382
end_hunk_0
