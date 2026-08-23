Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/alphaindex?download=true
inline.NumInlined: 330
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK6icu_7815AlphabeticIndex16createBucketListER10UErrorCode:bb.a
bb.bp:                                            ; preds = %bb.bo, %_ZNK6icu_789UVector6410elementAtiEi.exit.i
  %.2.i = phi i8 [ %.01927.i, %_ZNK6icu_789UVector6410elementAtiEi.exit.i ], [ 1, %bb.bo ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge, label %_ZNK6icu_789UVector6410elementAtiEi.exit.i, !llvm.loop !72

bb.bq:                                            ; preds = %bb.bo
  %i.hn = load i16, ptr %i.fi, align 8, !tbaa !42 ; 3 uses
  %i.ho = icmp slt i16 %i.hn, 0
  %i.hp = ashr i16 %i.hn, 5
  %i.hq = sext i16 %i.hp to i32
  %i.hr = load i32, ptr %i.fn, align 4
  %i.hs = select i1 %i.ho, i32 %i.hr, i32 %i.hq   ; 2 uses
  %.not = icmp eq i32 %i.hs, 0
  br i1 %.not, label %_ZNK6icu_7813UnicodeString6charAtEi.exit323.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit323

_ZNK6icu_7813UnicodeString6charAtEi.exit323.thread: ; preds = %bb.bq
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #16, !srcloc !64
  br label %.thread428

_ZNK6icu_7813UnicodeString6charAtEi.exit323:      ; preds = %bb.bq
  %i.ht = and i16 %i.hn, 2
  %.not.i.i.i322 = icmp eq i16 %i.ht, 0
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ay, i64 10
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = select i1 %.not.i.i.i322, ptr %i.hw, ptr %i.hu
  %i.hy = sext i32 %i.hs to i64
  %i.hz = getelementptr [2 x i8], ptr %i.hx, i64 %i.hy
  %i.ia = getelementptr i8, ptr %i.hz, i64 -2
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !46
  %.not253 = icmp eq i16 %i.ib, -1
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #16, !srcloc !64
  br i1 %.not253, label %.thread428, label %bb.br

bb.br:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit323
  %i.ic = load i32, ptr %i.au, align 8, !tbaa !21
  %i.id = add nsw i32 %i.ic, -2
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit339, %bb.br
  %.0207 = phi i32 [ %i.id, %bb.br ], [ %i.jk, %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit339 ] ; 2 uses
  %i.ie = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i32 noundef %.0207)
          to label %_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit unwind label %.loopexit480 ; 4 uses

_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit: ; preds = %bb.bs
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 136
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !73
  %.not254 = icmp eq i32 %i.ig, 0
  br i1 %.not254, label %bb.bu, label %.thread428

bb.bt:                                            ; preds = %.noexc319.a, %bb.bn, %.thread408
  %i.ih = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #16, !srcloc !64
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit350

.loopexit480:                                     ; preds = %bb.bs, %bb.bv, %.noexc337.a
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit350

.loopexit.split-lp:                               ; preds = %bb.ch
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit350

bb.bu:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 144
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !27
  %i.ik = icmp eq ptr %i.ij, null
  br i1 %i.ik, label %bb.bv, label %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit339

bb.bv:                                            ; preds = %bb.bu
  %i.il = load ptr, ptr %i.l, align 8, !tbaa !49
  invoke void @_ZN6icu_789UVector6417removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc337.a unwind label %.loopexit480

.noexc337.a:                                      ; preds = %bb.bv
  %i.im = getelementptr inbounds nuw i8, ptr %i.ie, i64 72
  invoke void @_ZNK6icu_7817RuleBasedCollator14internalGetCEsERKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.il, ptr noundef nonnull align 8 dereferenceable(64) %i.im, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %.noexc338 unwind label %.loopexit480

.noexc338:                                        ; preds = %.noexc337.a
  %i.in = load i32, ptr %1, align 4, !tbaa !43
  %i.io = icmp slt i32 %i.in, 1
  br i1 %i.io, label %.preheader.i326, label %.loopexit479

.preheader.i326:                                  ; preds = %.noexc338
  %i.ip = load i32, ptr %i.aw, align 8, !tbaa !66 ; 2 uses
  %.not2526.i327 = icmp sgt i32 %i.ip, 0
  br i1 %.not2526.i327, label %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i328, label %.loopexit479

_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i328: ; preds = %.preheader.i326
  %i.iq = load ptr, ptr %i.ax, align 8, !tbaa !69
  %wide.trip.count.i329 = zext nneg i32 %i.ip to i64
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit.i330

_ZNK6icu_789UVector6410elementAtiEi.exit.i330:    ; preds = %bb.bx, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i328
  %indvars.iv.i331 = phi i64 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i328 ], [ %indvars.iv.next.i334, %bb.bx ] ; 2 uses
  %.01927.i332 = phi i8 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i328 ], [ %.2.i333, %bb.bx ] ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv.i331
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !70
  %i.it = lshr i64 %i.is, 32
  %i.iu = trunc nuw i64 %i.it to i32
  %i.iv = icmp ult i32 %.0194, %i.iu
  br i1 %i.iv, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit.i330
  %.not24.i336 = icmp eq i8 %.01927.i332, 0
  br i1 %.not24.i336, label %bb.bx, label %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit339

bb.bx:                                            ; preds = %bb.bw, %_ZNK6icu_789UVector6410elementAtiEi.exit.i330
  %.2.i333 = phi i8 [ %.01927.i332, %_ZNK6icu_789UVector6410elementAtiEi.exit.i330 ], [ 1, %bb.bw ]
  %indvars.iv.next.i334 = add nuw nsw i64 %indvars.iv.i331, 1 ; 2 uses
  %exitcond.not.i335 = icmp eq i64 %indvars.iv.next.i334, %wide.trip.count.i329
  br i1 %exitcond.not.i335, label %.loopexit479, label %_ZNK6icu_789UVector6410elementAtiEi.exit.i330, !llvm.loop !72

.loopexit479:                                     ; preds = %.noexc338, %.preheader.i326, %bb.bx
  %i.iw = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 168) #16 ; 4 uses
  %.not258 = icmp eq ptr %i.iw, null
  br i1 %.not258, label %.critedge294, label %bb.by

bb.by:                                            ; preds = %.loopexit479
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %i.ay)
          to label %bb.bz unwind label %bb.ce

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 -1, ptr %i.a, align 2, !tbaa !46
  %i.ix = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1)
          to label %bb.ca unwind label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN6icu_7815AlphabeticIndex6BucketC1ERKNS_13UnicodeStringES4_25UAlphabeticIndexLabelType(ptr noundef nonnull align 8 dereferenceable(168) %i.iw, ptr noundef nonnull align 8 dereferenceable(64) %i.aq, ptr noundef nonnull align 8 dereferenceable(64) %i.ix, i32 noundef 0)
          to label %.critedge296 unwind label %bb.cf

.critedge294:                                     ; preds = %.loopexit479
  %i.iy = load i32, ptr %1, align 4, !tbaa !43
  %i.iz = icmp sgt i32 %i.iy, 0
  br i1 %i.iz, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %.critedge294
  %i.ja = load ptr, ptr %4, align 8, !tbaa !59    ; 3 uses
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jc = load ptr, ptr %i.ja, align 8, !tbaa !8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(168) %i.ja) #16, !inline_history !63
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  store ptr null, ptr %4, align 8, !tbaa !59
  store i32 7, ptr %1, align 4, !tbaa !43
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

.critedge296:                                     ; preds = %bb.ca
  call void @_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.iw, ptr noundef nonnull align 4 dereferenceable(4) %1)
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %.pre607 = load i32, ptr %1, align 4, !tbaa !43
  %i.jf = icmp slt i32 %.pre607, 1
  br i1 %i.jf, label %bb.ch, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

bb.ce:                                            ; preds = %bb.by
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cf:                                            ; preds = %bb.bz, %bb.ca
  %i.jh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #16
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ce, %bb.cf
  %.pn256 = phi { ptr, i32 } [ %i.jh, %bb.cf ], [ %i.jg, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.iw) #16
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit350

bb.ch:                                            ; preds = %.critedge296
  %i.ji = load ptr, ptr %4, align 8, !tbaa !59    ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 144
  store ptr %i.ie, ptr %i.jj, align 8, !tbaa !27
  store ptr null, ptr %4, align 8, !tbaa !59
  invoke void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull %i.ji, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.ci unwind label %.loopexit.split-lp

_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit339: ; preds = %bb.bw, %bb.bu
  %i.jk = add nsw i32 %.0207, -1
  br label %bb.bs, !llvm.loop !74

bb.ci:                                            ; preds = %bb.ch
  %i.jl = load i32, ptr %1, align 4, !tbaa !43
  %i.jm = icmp slt i32 %i.jl, 1
  br i1 %i.jm, label %.thread428, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

.critedge:                                        ; preds = %bb.bp, %.preheader.i, %.noexc320, %_ZNK6icu_7813UnicodeString10startsWithENS_14ConstChar16PtrEi.exit318
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #16, !srcloc !64
  br label %.thread428

.thread428:                                       ; preds = %_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit, %bb.ci, %.critedge, %_ZNK6icu_7813UnicodeString6charAtEi.exit323, %_ZNK6icu_7813UnicodeString6charAtEi.exit323.thread
  %.4201.ph = phi i8 [ 1, %bb.ci ], [ %.0197555, %.critedge ], [ %.0197555, %_ZNK6icu_7813UnicodeString6charAtEi.exit323.thread ], [ %.0197555, %_ZNK6icu_7813UnicodeString6charAtEi.exit323 ], [ %.0197555, %_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit ] ; 2 uses
  %i.jn = add nuw nsw i32 %.0216553, 1            ; 2 uses
  %i.jo = load i32, ptr %i.ar, align 8, !tbaa !21
  %.not265 = icmp slt i32 %i.jn, %i.jo
  br i1 %.not265, label %bb.z, label %.thread452, !llvm.loop !75

.thread452:                                       ; preds = %.thread428
  %.pre608 = load i32, ptr %1, align 4, !tbaa !43
  %i.jp = icmp slt i32 %.pre608, 1
  %i.jq = icmp eq i8 %.1212, 0
  br i1 %i.jp, label %.thread452.thread, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

bb.cj:                                            ; preds = %bb.cr
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit350

.thread452.thread:                                ; preds = %bb.y, %.thread452
  %.0197.lcssa673 = phi i8 [ %.4201.ph, %.thread452 ], [ 0, %bb.y ] ; 2 uses
  %.0211.lcssa672 = phi i1 [ %i.jq, %.thread452 ], [ true, %bb.y ]
  %.0217.lcssa671 = phi ptr [ %.1218, %.thread452 ], [ %i.aq, %bb.y ]
  %i.js = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !21
  %i.ju = icmp eq i32 %i.jt, 1
  br i1 %i.ju, label %bb.ck, label %bb.co

bb.ck:                                            ; preds = %.thread452.thread
  %i.jv = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 24) #16 ; 4 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZN6icu_7810BucketListC2EPNS_7UVectorES2_(ptr noundef nonnull align 8 dereferenceable(24) %i.jv, ptr noundef nonnull %i.t, ptr noundef nonnull %i.t)
          to label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit unwind label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  store i32 7, ptr %1, align 4, !tbaa !43
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

bb.cn:                                            ; preds = %bb.cl
  %i.jx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.jv) #16
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit350

bb.co:                                            ; preds = %.thread452.thread
  %i.jy = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 168) #16 ; 4 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ka = load ptr, ptr %0, align 8, !tbaa !8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 64
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = invoke noundef nonnull align 8 dereferenceable(64) ptr %i.kc(ptr noundef nonnull align 8 dereferenceable(400) %0)
          to label %bb.cq unwind label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZN6icu_7815AlphabeticIndex6BucketC1ERKNS_13UnicodeStringES4_25UAlphabeticIndexLabelType(ptr noundef nonnull align 8 dereferenceable(168) %i.jy, ptr noundef nonnull align 8 dereferenceable(64) %i.kd, ptr noundef nonnull align 8 dereferenceable(64) %.0217.lcssa671, i32 noundef 3)
          to label %bb.cr unwind label %bb.ct

bb.cr:                                            ; preds = %bb.cq, %bb.co
  call void @_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.jy, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.ke = load ptr, ptr %4, align 8, !tbaa !59
  store ptr null, ptr %4, align 8, !tbaa !59
  invoke void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef %i.ke, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.cs unwind label %bb.cj

bb.cs:                                            ; preds = %bb.cr
  %i.kf = load i32, ptr %1, align 4, !tbaa !43
  %i.kg = icmp slt i32 %i.kf, 1
  br i1 %i.kg, label %bb.cu, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

bb.ct:                                            ; preds = %bb.cq, %bb.cp
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.jy) #16
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit350

bb.cu:                                            ; preds = %bb.cs
  br i1 %.0211.lcssa672, label %.loopexit, label %.preheader478.preheader

.preheader478.preheader:                          ; preds = %bb.cu
  %i.ki = load ptr, ptr %i.f, align 16, !tbaa !65 ; 3 uses
  %i.kj = load ptr, ptr %i.g, align 16, !tbaa !65 ; 2 uses
  %i.kk = icmp ne ptr %i.kj, null
  %i.kl = icmp ne ptr %i.ki, null
  %or.cond8 = select i1 %i.kk, i1 %i.kl, i1 false
  br i1 %or.cond8, label %bb.cv, label %.preheader478.1

bb.cv:                                            ; preds = %.preheader478.preheader
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 144
  store ptr %i.ki, ptr %i.km, align 8, !tbaa !27
  br label %.preheader478.1

.preheader478.1:                                  ; preds = %.preheader478.preheader, %bb.cv
  %.8205 = phi i8 [ 1, %bb.cv ], [ %.0197.lcssa673, %.preheader478.preheader ]
  %i.kn = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !65 ; 2 uses
  %.not280.1 = icmp eq ptr %i.ko, null
  %spec.select298.1 = select i1 %.not280.1, ptr %i.ki, ptr %i.ko ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !65 ; 2 uses
  %i.kr = icmp ne ptr %i.kq, null
  %i.ks = icmp ne ptr %spec.select298.1, null
  %or.cond8.1 = select i1 %i.kr, i1 %i.ks, i1 false
  br i1 %or.cond8.1, label %bb.cw, label %.preheader478.2

bb.cw:                                            ; preds = %.preheader478.1
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 144
  store ptr %spec.select298.1, ptr %i.kt, align 8, !tbaa !27
  br label %.preheader478.2

.preheader478.2:                                  ; preds = %bb.cw, %.preheader478.1
  %.8205.1 = phi i8 [ 1, %bb.cw ], [ %.8205, %.preheader478.1 ]
  %i.ku = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.kv = load ptr, ptr %i.ku, align 16, !tbaa !65 ; 2 uses
  %.not280.2 = icmp eq ptr %i.kv, null
  %spec.select298.2 = select i1 %.not280.2, ptr %spec.select298.1, ptr %i.kv ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.kx = load ptr, ptr %i.kw, align 16, !tbaa !65 ; 2 uses
  %i.ky = icmp ne ptr %i.kx, null
  %i.kz = icmp ne ptr %spec.select298.2, null
  %or.cond8.2 = select i1 %i.ky, i1 %i.kz, i1 false
  br i1 %or.cond8.2, label %bb.cx, label %.preheader478.3

bb.cx:                                            ; preds = %.preheader478.2
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 144
  store ptr %spec.select298.2, ptr %i.la, align 8, !tbaa !27
  br label %.preheader478.3

.preheader478.3:                                  ; preds = %bb.cx, %.preheader478.2
  %.8205.2 = phi i8 [ 1, %bb.cx ], [ %.8205.1, %.preheader478.2 ]
  %i.lb = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !65 ; 2 uses
  %.not280.3 = icmp eq ptr %i.lc, null
  %spec.select298.3 = select i1 %.not280.3, ptr %spec.select298.2, ptr %i.lc ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !65 ; 2 uses
  %i.lf = icmp ne ptr %i.le, null
  %i.lg = icmp ne ptr %spec.select298.3, null
  %or.cond8.3 = select i1 %i.lf, i1 %i.lg, i1 false
  br i1 %or.cond8.3, label %bb.cy, label %.preheader478.4

bb.cy:                                            ; preds = %.preheader478.3
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 144
  store ptr %spec.select298.3, ptr %i.lh, align 8, !tbaa !27
  br label %.preheader478.4

.preheader478.4:                                  ; preds = %bb.cy, %.preheader478.3
  %.8205.3 = phi i8 [ 1, %bb.cy ], [ %.8205.2, %.preheader478.3 ]
  %i.li = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.lj = load ptr, ptr %i.li, align 16, !tbaa !65 ; 2 uses
  %.not280.4 = icmp eq ptr %i.lj, null
  %spec.select298.4 = select i1 %.not280.4, ptr %spec.select298.3, ptr %i.lj ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ll = load ptr, ptr %i.lk, align 16, !tbaa !65 ; 2 uses
  %i.lm = icmp ne ptr %i.ll, null
  %i.ln = icmp ne ptr %spec.select298.4, null
  %or.cond8.4 = select i1 %i.lm, i1 %i.ln, i1 false
  br i1 %or.cond8.4, label %bb.cz, label %.preheader478.5

bb.cz:                                            ; preds = %.preheader478.4
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 144
  store ptr %spec.select298.4, ptr %i.lo, align 8, !tbaa !27
  br label %.preheader478.5

.preheader478.5:                                  ; preds = %bb.cz, %.preheader478.4
  %.8205.4 = phi i8 [ 1, %bb.cz ], [ %.8205.3, %.preheader478.4 ]
  %i.lp = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !65 ; 2 uses
  %.not280.5 = icmp eq ptr %i.lq, null
  %spec.select298.5 = select i1 %.not280.5, ptr %spec.select298.4, ptr %i.lq ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !65 ; 2 uses
  %i.lt = icmp ne ptr %i.ls, null
  %i.lu = icmp ne ptr %spec.select298.5, null
  %or.cond8.5 = select i1 %i.lt, i1 %i.lu, i1 false
  br i1 %or.cond8.5, label %bb.da, label %.preheader478.6

bb.da:                                            ; preds = %.preheader478.5
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 144
  store ptr %spec.select298.5, ptr %i.lv, align 8, !tbaa !27
  br label %.preheader478.6

.preheader478.6:                                  ; preds = %bb.da, %.preheader478.5
  %.8205.5 = phi i8 [ 1, %bb.da ], [ %.8205.4, %.preheader478.5 ]
  %i.lw = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.lx = load ptr, ptr %i.lw, align 16, !tbaa !65 ; 2 uses
  %.not280.6 = icmp eq ptr %i.lx, null
  %spec.select298.6 = select i1 %.not280.6, ptr %spec.select298.5, ptr %i.lx ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.lz = load ptr, ptr %i.ly, align 16, !tbaa !65 ; 2 uses
  %i.ma = icmp ne ptr %i.lz, null
  %i.mb = icmp ne ptr %spec.select298.6, null
  %or.cond8.6 = select i1 %i.ma, i1 %i.mb, i1 false
  br i1 %or.cond8.6, label %bb.db, label %.preheader478.7

bb.db:                                            ; preds = %.preheader478.6
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 144
  store ptr %spec.select298.6, ptr %i.mc, align 8, !tbaa !27
end_hunk_0
