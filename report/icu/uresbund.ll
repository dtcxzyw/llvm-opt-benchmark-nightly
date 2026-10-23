Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/uresbund?download=true
inline.NumInlined: 552
inline.NumDeleted: 90
begin_hunk_0_@ures_getByKeyWithFallback_78:bb.a
  %i.d = alloca ptr, align 8                      ; 8 uses
  %6 = alloca %"class.icu_78::CharString", align 8 ; 16 uses
  %i.e = alloca ptr, align 8                      ; 9 uses
  %i.f = icmp eq ptr %3, null
  br i1 %i.f, label %bb.ax, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %3, align 4, !tbaa !32
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.ax

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %0, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %3, align 4, !tbaa !32
  br label %bb.ax

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.k = load i32, ptr %i.j, align 4, !tbaa !34   ; 6 uses
  %.mask = and i32 %i.k, -268435456
  %i.l = icmp eq i32 %.mask, 536870912
  %i.m = and i32 %i.k, -536870912
  %i.n = icmp eq i32 %i.m, 1073741824
  %or.cond4 = or i1 %i.l, %i.n
  br i1 %or.cond4, label %bb.f, label %bb.av

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !29   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 13 ; 2 uses
  store ptr %i.v, ptr %4, align 8, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 40, ptr %i.w, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i8 0, ptr %i.x, align 4, !tbaa !44
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i32 0, ptr %i.y, align 8, !tbaa !46
  store i8 0, ptr %i.v, align 1, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !32
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef %1)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %5, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef %i.z, i32 noundef %i.ab, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit.i unwind label %bb.j ; 0 uses

_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit.i: ; preds = %bb.g
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !32
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit.i
  %i.af = load ptr, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !33
  %.not = icmp eq i8 %i.ag, 0
  br i1 %.not, label %.critedge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.h
  %.031.mask.i201 = and i32 %i.k, 1879048192
  %i.ah = icmp eq i32 %.031.mask.i201, 536870912
  %i.ai = and i32 %i.k, 1610612736
  %i.aj = icmp eq i32 %i.ai, 1073741824
  %or.cond5.i202 = or i1 %i.ah, %i.aj
  br i1 %or.cond5.i202, label %.critedge7.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.m
  %.031.mask.i = and i32 %i.ar, -268435456
  %i.ak = icmp eq i32 %.031.mask.i, 536870912
  %i.al = and i32 %i.ar, -536870912
  %i.am = icmp eq i32 %i.al, 1073741824
  %or.cond5.i = or i1 %i.ak, %i.am
  %i.an = icmp slt i32 %i.ar, -1610612736
  %or.cond44.i = or i1 %i.an, %or.cond5.i
  br i1 %or.cond44.i, label %.critedge7.i, label %.critedge.i, !llvm.loop !79

.critedge7.i:                                     ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.03648.i205 = phi i32 [ %i.ar, %.lr.ph.i ], [ %i.k, %.lr.ph.i.preheader ]
  %.03249.i204 = phi ptr [ %.0.i, %.lr.ph.i ], [ %i.af, %.lr.ph.i.preheader ] ; 4 uses
  %i.ao = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.03249.i204, i32 noundef 47) #25 ; 3 uses
  %.not41.i = icmp eq ptr %i.ao, null
  br i1 %.not41.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.critedge7.i
  store i8 0, ptr %i.ao, align 1, !tbaa !33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  br label %bb.l

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.k:                                             ; preds = %.critedge7.i
  %strlen.i = call i64 @strlen(ptr nonnull dereferenceable(1) %.03249.i204)
  %strchr.i = getelementptr inbounds i8, ptr %.03249.i204, i64 %strlen.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.0.i = phi ptr [ %i.ap, %bb.i ], [ %strchr.i, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store ptr %.03249.i204, ptr %i.c, align 8, !tbaa !39
  %i.ar = invoke i32 @res_getTableItemByKey_78(ptr noundef nonnull %i.u, i32 noundef %.03648.i205, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
          to label %bb.m unwind label %bb.n       ; 6 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.as = load i8, ptr %.0.i, align 1, !tbaa !33
  %i.at = icmp ne i8 %i.as, 0                     ; 2 uses
  %i.au = icmp ne i32 %i.ar, -1
  %or.cond.i = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %..critedge.i.loopexit_crit_edge, !llvm.loop !79

bb.n:                                             ; preds = %bb.l
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.q

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.m
  %i.aw = select i1 %i.at, i32 -1, i32 %i.ar
  br label %.critedge.i, !llvm.loop !79

.critedge.i:                                      ; preds = %.lr.ph.i, %bb.h, %..critedge.i.loopexit_crit_edge, %.lr.ph.i.preheader, %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit.i
  %.138.i = phi i32 [ -1, %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit.i ], [ %i.k, %bb.h ], [ %i.aw, %..critedge.i.loopexit_crit_edge ], [ -1, %.lr.ph.i.preheader ], [ -1, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ax = load i8, ptr %i.x, align 4, !tbaa !44
  %.not.i.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i, label %_ZL21getTableItemByKeyPathPK12ResourceDatajPKc.exit, label %bb.o

bb.o:                                             ; preds = %.critedge.i
  %i.ay = load ptr, ptr %4, align 8, !tbaa !42
  invoke void @uprv_free_78(ptr noundef %i.ay)
          to label %_ZL21getTableItemByKeyPathPK12ResourceDatajPKc.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #21
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %bb.q ], [ %lpad.loopexit.split-lp279, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.n, %bb.j
  %.pn.pn.i = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.av, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume

_ZL21getTableItemByKeyPathPK12ResourceDatajPKc.exit: ; preds = %.critedge.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store ptr %1, ptr %i.d, align 8, !tbaa !39
  %i.bb = icmp eq i32 %.138.i, -1
  %i.bc = load ptr, ptr %i.s, align 8, !tbaa !17  ; 2 uses
  br i1 %i.bb, label %bb.r, label %bb.at

bb.r:                                             ; preds = %_ZL21getTableItemByKeyPathPK12ResourceDatajPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 13 ; 2 uses
  store ptr %i.bd, ptr %6, align 8, !tbaa !42
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 40, ptr %i.be, align 8, !tbaa !43
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i8 0, ptr %i.bf, align 4, !tbaa !44
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store i32 0, ptr %i.bg, align 8, !tbaa !46
  store i8 0, ptr %i.bd, align 1, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store ptr null, ptr %i.e, align 8, !tbaa !39
  %i.bh = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.bi = load i32, ptr %i.q, align 8, !tbaa !29
  %i.bj = getelementptr i8, ptr %0, i64 24        ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit176
  %.0108213 = phi i32 [ %i.bi, %bb.r ], [ %.3, %.loopexit176 ] ; 3 uses
  %.0109212 = phi ptr [ %i.bh, %bb.r ], [ %.3112, %.loopexit176 ] ; 3 uses
  %.0113211 = phi ptr [ %i.bc, %bb.r ], [ %.4, %.loopexit176 ] ; 2 uses
  %.0117210 = phi i1 [ false, %bb.r ], [ %..0117, %.loopexit176 ] ; 2 uses
  %.0121209 = phi ptr [ null, %bb.r ], [ %.3124, %.loopexit176 ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0113211, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !24 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null                 ; 3 uses
  %.not150.a = select i1 %i.bm, i1 %.0117210, i1 false
  br i1 %.not150.a, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %..0117 = select i1 %i.bm, i1 true, i1 %.0117210
  %.0113. = select i1 %i.bm, ptr %.0113211, ptr %i.bl ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0113., i64 72
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !47
  %i.bp = getelementptr inbounds nuw i8, ptr %.0113., i64 112
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !48
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.u, label %.loopexit176

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_ZL10createPathPKciS0_iS0_RN6icu_7810CharStringEP10UErrorCode(ptr noundef %i.p, i32 noundef %i.r, ptr noundef %.0109212, i32 noundef %.0108213, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(60) %6, ptr noundef %3)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  %i.bs = load i32, ptr %3, align 4, !tbaa !32
  %i.bt = icmp slt i32 %i.bs, 1
  br i1 %i.bt, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @_ZL16ures_closeBundleP15UResourceBundlea(ptr noundef %.0121209, i8 noundef signext 1)
          to label %.critedge164.critedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.v
  %i.bu = load ptr, ptr %6, align 8, !tbaa !42
  store ptr %i.bu, ptr %i.e, align 8, !tbaa !39
  store ptr %1, ptr %i.d, align 8, !tbaa !39
  br label %bb.y

bb.y:                                             ; preds = %.thread, %bb.x
  %.0126 = phi i32 [ %i.bo, %bb.x ], [ %.1127, %.thread ] ; 3 uses
  %.1122 = phi ptr [ %.0121209, %bb.x ], [ %.2123, %.thread ] ; 4 uses
  %.2115 = phi ptr [ %.0113., %bb.x ], [ %.3116, %.thread ] ; 6 uses
  %.1110 = phi ptr [ %.0109212, %bb.x ], [ %.2111, %.thread ] ; 4 uses
  %.1 = phi i32 [ %.0108213, %bb.x ], [ %.2, %.thread ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.2115, i64 40
  %i.bw = invoke i32 @res_findResource_78(ptr noundef nonnull %i.bv, i32 noundef %.0126, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.z:                                             ; preds = %bb.y
  %.mask158 = and i32 %i.bw, -268435456
  %i.bx = icmp eq i32 %.mask158, 805306368
  br i1 %i.bx, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.by = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !33
  %.not159.a = icmp eq i8 %i.bz, 0
  br i1 %.not159.a, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val169 = load ptr, ptr %i.bj, align 8, !tbaa !40
  %.val170 = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.ca = invoke fastcc noundef ptr @_ZN12_GLOBAL__N_116init_resb_resultEP18UResourceDataEntryjPKciS1_S3_iP15UResourceBundleP10UErrorCode(ptr noundef nonnull %.2115, i32 noundef %i.bw, ptr noundef null, i32 noundef -1, ptr noundef %.val169, ptr noundef %.val170, i32 noundef 0, ptr noundef %.1122, ptr noundef nonnull %3)
          to label %_ZN12_GLOBAL__N_116init_resb_resultEP18UResourceDataEntryjPKciPK15UResourceBundlePS4_P10UErrorCode.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

_ZN12_GLOBAL__N_116init_resb_resultEP18UResourceDataEntryjPKciPK15UResourceBundlePS4_P10UErrorCode.exit: ; preds = %bb.ab
  %.not160 = icmp eq ptr %i.ca, null
  br i1 %.not160, label %.loopexit176.thread, label %bb.ac

bb.ac:                                            ; preds = %_ZN12_GLOBAL__N_116init_resb_resultEP18UResourceDataEntryjPKciPK15UResourceBundlePS4_P10UErrorCode.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 108
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !34
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !28
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 104
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !29
  br label %.thread

bb.ad:                                            ; preds = %bb.z
  %i.cj = icmp eq i32 %i.bw, -1
  br i1 %i.cj, label %.loopexit176, label %.thread

.thread:                                          ; preds = %bb.aa, %bb.ac, %bb.ad
  %.1127 = phi i32 [ %i.ce, %bb.ac ], [ %.0126, %bb.ad ], [ %.0126, %bb.aa ]
  %.2123 = phi ptr [ %i.ca, %bb.ac ], [ %.1122, %bb.ad ], [ %.1122, %bb.aa ] ; 2 uses
  %.3116 = phi ptr [ %i.cc, %bb.ac ], [ %.2115, %bb.ad ], [ %.2115, %bb.aa ] ; 2 uses
  %.2111 = phi ptr [ %i.cg, %bb.ac ], [ %.1110, %bb.ad ], [ %.1110, %bb.aa ] ; 2 uses
  %.2 = phi i32 [ %i.ci, %bb.ac ], [ %.1, %bb.ad ], [ %.1, %bb.aa ] ; 2 uses
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !33
  %.not161 = icmp eq i8 %i.cl, 0
  br i1 %.not161, label %.loopexit176, label %bb.y, !llvm.loop !80

.loopexit176:                                     ; preds = %.thread, %bb.ad, %bb.t
  %.1129 = phi i32 [ -1, %bb.t ], [ -1, %bb.ad ], [ %i.bw, %.thread ] ; 2 uses
  %.3124 = phi ptr [ %.0121209, %bb.t ], [ %.1122, %bb.ad ], [ %.2123, %.thread ] ; 2 uses
  %.4 = phi ptr [ %.0113., %bb.t ], [ %.2115, %bb.ad ], [ %.3116, %.thread ] ; 2 uses
  %.3112 = phi ptr [ %.0109212, %bb.t ], [ %.1110, %bb.ad ], [ %.2111, %.thread ] ; 2 uses
  %.3 = phi i32 [ %.0108213, %bb.t ], [ %.1, %bb.ad ], [ %.2, %.thread ] ; 2 uses
  %cond = icmp eq i32 %.1129, -1
  br i1 %cond, label %bb.s, label %.loopexit176.thread, !llvm.loop !81

.loopexit176.thread:                              ; preds = %.loopexit176, %_ZN12_GLOBAL__N_116init_resb_resultEP18UResourceDataEntryjPKciPK15UResourceBundlePS4_P10UErrorCode.exit
  %.3242 = phi i32 [ %.1, %_ZN12_GLOBAL__N_116init_resb_resultEP18UResourceDataEntryjPKciPK15UResourceBundlePS4_P10UErrorCode.exit ], [ %.3, %.loopexit176 ]
  %.3112241 = phi ptr [ %.1110, %_ZN12_GLOBAL__N_116init_resb_resultEP18UResourceDataEntryjPKciPK15UResourceBundlePS4_P10UErrorCode.exit ], [ %.3112, %.loopexit176 ] ; 2 uses
  %.4240 = phi ptr [ %.2115, %_ZN12_GLOBAL__N_116init_resb_resultEP18UResourceDataEntryjPKciPK15UResourceBundlePS4_P10UErrorCode.exit ], [ %.4, %.loopexit176 ] ; 3 uses
  %.3124239 = phi ptr [ null, %_ZN12_GLOBAL__N_116init_resb_resultEP18UResourceDataEntryjPKciPK15UResourceBundlePS4_P10UErrorCode.exit ], [ %.3124, %.loopexit176 ] ; 2 uses
  %.1129238 = phi i32 [ %i.bw, %_ZN12_GLOBAL__N_116init_resb_resultEP18UResourceDataEntryjPKciPK15UResourceBundlePS4_P10UErrorCode.exit ], [ %.1129, %.loopexit176 ]
  %i.cm = load ptr, ptr %.4240, align 8, !tbaa !49
  %i.cn = invoke ptr @uloc_getDefault_78()
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %.loopexit176.thread
  %i.co = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cm, ptr noundef nonnull dereferenceable(1) %i.cn) #25
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cq = load ptr, ptr %.4240, align 8, !tbaa !49
  %i.cr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cq, ptr noundef nonnull dereferenceable(5) @.str) #25
  %i.cs = icmp eq i32 %i.cr, 0
  %spec.select = select i1 %i.cs, i32 -127, i32 -128
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %storemerge = phi i32 [ -127, %bb.ae ], [ %spec.select, %bb.af ]
  store i32 %storemerge, ptr %3, align 4, !tbaa !32
  %i.ct = load ptr, ptr %i.d, align 8, !tbaa !39
  %.val167 = load ptr, ptr %i.bj, align 8, !tbaa !40
  %.val168 = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.cu = invoke fastcc noundef ptr @_ZN12_GLOBAL__N_116init_resb_resultEP18UResourceDataEntryjPKciS1_S3_iP15UResourceBundleP10UErrorCode(ptr noundef nonnull %.4240, i32 noundef %.1129238, ptr noundef %i.ct, i32 noundef -1, ptr noundef %.val167, ptr noundef %.val168, i32 noundef 0, ptr noundef %2, ptr noundef nonnull %3)
          to label %_ZN12_GLOBAL__N_116init_resb_resultEP18UResourceDataEntryjPKciPK15UResourceBundlePS4_P10UErrorCode.exit171 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

_ZN12_GLOBAL__N_116init_resb_resultEP18UResourceDataEntryjPKciPK15UResourceBundlePS4_P10UErrorCode.exit171: ; preds = %bb.ag
  %.not152.a = icmp eq ptr %.3112241, null
  br i1 %.not152.a, label %bb.ah, label %.invoke

.invoke:                                          ; preds = %_ZN12_GLOBAL__N_116init_resb_resultEP18UResourceDataEntryjPKciPK15UResourceBundlePS4_P10UErrorCode.exit171, %bb.ai, %bb.aj, %bb.ah, %bb.ak
  %i.cv = phi ptr [ @.str.1, %bb.ai ], [ %i.cy, %bb.ak ], [ @.str.1, %bb.ah ], [ @.str.1, %bb.aj ], [ %.3112241, %_ZN12_GLOBAL__N_116init_resb_resultEP18UResourceDataEntryjPKciPK15UResourceBundlePS4_P10UErrorCode.exit171 ]
  %i.cw = phi i32 [ 0, %bb.ai ], [ %i.dd, %bb.ak ], [ 0, %bb.ah ], [ 0, %bb.aj ], [ %.3242, %_ZN12_GLOBAL__N_116init_resb_resultEP18UResourceDataEntryjPKciPK15UResourceBundlePS4_P10UErrorCode.exit171 ]
  invoke fastcc void @_ZL10createPathPKciS0_iS0_RN6icu_7810CharStringEP10UErrorCode(ptr noundef %i.p, i32 noundef %i.r, ptr noundef nonnull %i.cv, i32 noundef %i.cw, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(60) %6, ptr noundef %3)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %_ZN12_GLOBAL__N_116init_resb_resultEP18UResourceDataEntryjPKciPK15UResourceBundlePS4_P10UErrorCode.exit171
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !28 ; 4 uses
  %.not153.a = icmp eq ptr %i.cy, null
  br i1 %.not153.a, label %.invoke, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cz = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.cy, i32 noundef 47) #25 ; 2 uses
  %.not154.a = icmp eq ptr %i.cz, null
  br i1 %.not154.a, label %.invoke, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !33
  %.not155 = icmp eq i8 %i.db, 0
  br i1 %.not155, label %.invoke, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cy) #25
  %i.dd = trunc i64 %i.dc to i32
  br label %.invoke

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.y, %bb.ab, %bb.u, %.invoke, %bb.am, %bb.ag, %bb.w, %.loopexit176.thread, %bb.an, %bb.ap
  %lpad.loopexit.split-lp279 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %common.resume

bb.al:                                            ; preds = %.invoke
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 32 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !28 ; 3 uses
  %.not.i = icmp eq ptr %i.df, null
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %.not6.i = icmp eq ptr %i.df, %i.dg
  %or.cond.i172 = select i1 %.not.i, i1 true, i1 %.not6.i
  br i1 %or.cond.i172, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @uprv_free_78(ptr noundef nonnull %i.df)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.am, %bb.al
  store ptr null, ptr %i.de, align 8, !tbaa !28
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cu, i64 104 ; 2 uses
  store i32 0, ptr %i.dh, align 8, !tbaa !29
  %i.di = load ptr, ptr %6, align 8, !tbaa !42
  %i.dj = load i32, ptr %i.bg, align 8, !tbaa !46
  invoke fastcc void @_ZL18ures_appendResPathP15UResourceBundlePKciP10UErrorCode(ptr noundef nonnull %i.cu, ptr noundef %i.di, i32 noundef %i.dj, ptr noundef nonnull %3)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  %i.dk = load ptr, ptr %i.de, align 8, !tbaa !28
  %i.dl = load i32, ptr %i.dh, align 8, !tbaa !29
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr i8, ptr %i.dk, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 -1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !33
  %.not156 = icmp eq i8 %i.dp, 47
  br i1 %.not156, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke fastcc void @_ZL18ures_appendResPathP15UResourceBundlePKciP10UErrorCode(ptr noundef nonnull %i.cu, ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef nonnull %3)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_0
