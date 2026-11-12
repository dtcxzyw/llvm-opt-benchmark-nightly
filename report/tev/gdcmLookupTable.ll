Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmLookupTable?download=true
inline.NumInlined: 486
inline.NumDeleted: 279
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK4gdcm11LookupTable7Decode8EPcmPKcm:bb.a
bb.h:                                             ; preds = %bb.g
  %i.w = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.4, i32 noundef 583, ptr noundef nonnull @.str.5)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #23
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.k:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.pre74, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !50
  %i.aa = icmp ugt i32 %i.z, %i.t
  br i1 %i.aa, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.4, i32 noundef 584, ptr noundef nonnull @.str.5)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #23
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.o:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre74, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !50
  %i.af = icmp ugt i32 %i.ae, %i.t
  br i1 %i.af, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.4, i32 noundef 585, ptr noundef nonnull @.str.5)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #23
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.s:                                             ; preds = %bb.o, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre74, i64 24
  %i.aj = zext i8 %.pre75 to i64
  %i.ak = mul nuw nsw i64 %i.aj, 3
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  %i.an = load i8, ptr %i.am, align 1, !tbaa !49
  store i8 %i.an, ptr %.05170, align 1, !tbaa !49
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load i8, ptr %.05071, align 1, !tbaa !49
  %i.ar = zext i8 %i.aq to i64
  %i.as = mul nuw nsw i64 %i.ar, 3
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !49
  %i.ax = getelementptr inbounds nuw i8, ptr %.05170, i64 1
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !49
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load i8, ptr %.05071, align 1, !tbaa !49
  %i.bb = zext i8 %i.ba to i64
  %i.bc = mul nuw nsw i64 %i.bb, 3
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !25
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !49
  %i.bh = getelementptr inbounds nuw i8, ptr %.05170, i64 2
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !49
  %i.bi = getelementptr inbounds nuw i8, ptr %.05170, i64 3
  %i.bj = getelementptr inbounds nuw i8, ptr %.05071, i64 1 ; 2 uses
  %.not61 = icmp eq ptr %i.bj, %i.p
  br i1 %.not61, label %_ZNK4gdcm11LookupTable11InitializedEv.exit.thread, label %bb.f, !llvm.loop !74

bb.t:                                             ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !25 ; 3 uses
  %i.bm = and i64 %4, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.bo, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.4, i32 noundef 597, ptr noundef nonnull @.str.5)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @__cxa_throw(ptr nonnull %i.bo, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #23
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.x:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %.not66 = icmp samesign eq i64 %4, 0
  br i1 %.not66, label %_ZNK4gdcm11LookupTable11InitializedEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 26
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.al
  %.068 = phi ptr [ %3, %.lr.ph ], [ %i.da, %bb.al ] ; 4 uses
  %.04467 = phi ptr [ %1, %.lr.ph ], [ %i.cz, %bb.al ] ; 4 uses
  %i.bs = load i8, ptr %i.br, align 2
  %i.bt = trunc i8 %i.bs to i1
  %.pre = load i16, ptr %.068, align 2, !tbaa !28 ; 2 uses
  br i1 %i.bt, label %bb.z, label %bb.al

bb.z:                                             ; preds = %bb.y
  %i.bu = zext i16 %.pre to i32                   ; 3 uses
  %i.bv = load ptr, ptr %i.e, align 8, !tbaa !19  ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !50
  %i.bx = icmp ugt i32 %i.bw, %i.bu
  br i1 %i.bx, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.by = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.by, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.4, i32 noundef 604, ptr noundef nonnull @.str.5)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @__cxa_throw(ptr nonnull %i.by, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #23
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ad:                                            ; preds = %bb.z
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !50
  %i.cc = icmp ugt i32 %i.cb, %i.bu
  br i1 %i.cc, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cd = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.cd, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.4, i32 noundef 605, ptr noundef nonnull @.str.5)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void @__cxa_throw(ptr nonnull %i.cd, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #23
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ah:                                            ; preds = %bb.ad
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !50
  %i.ch = icmp ugt i32 %i.cg, %i.bu
  br i1 %i.ch, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ci = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ci, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.4, i32 noundef 606, ptr noundef nonnull @.str.5)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @__cxa_throw(ptr nonnull %i.ci, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #23
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.ah, %bb.y
  %i.ck = zext i16 %.pre to i64
  %.idx = mul nuw nsw i64 %i.ck, 6
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !28
  %i.cn = lshr i16 %i.cm, 8
  %i.co = trunc nuw i16 %i.cn to i8
  store i8 %i.co, ptr %.04467, align 1, !tbaa !49
  %i.cp = load i16, ptr %.068, align 2, !tbaa !28
  %i.cq = zext i16 %i.cp to i64
  %.idx59 = mul nuw nsw i64 %i.cq, 6
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx59
  %i.cs = getelementptr i8, ptr %i.cr, i64 3
  %5 = load i8, ptr %i.cs, align 1, !tbaa !28
  %i.ct = getelementptr inbounds nuw i8, ptr %.04467, i64 1
  store i8 %5, ptr %i.ct, align 1, !tbaa !49
  %i.cu = load i16, ptr %.068, align 2, !tbaa !28
  %i.cv = zext i16 %i.cu to i64
  %.idx60 = mul nuw nsw i64 %i.cv, 6
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx60
  %i.cx = getelementptr i8, ptr %i.cw, i64 5
  %6 = load i8, ptr %i.cx, align 1, !tbaa !28
  %i.cy = getelementptr inbounds nuw i8, ptr %.04467, i64 2
  store i8 %6, ptr %i.cy, align 1, !tbaa !49
  %i.cz = getelementptr inbounds nuw i8, ptr %.04467, i64 3
  %i.da = getelementptr inbounds nuw i8, ptr %.068, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.da, %i.bq
  br i1 %.not, label %_ZNK4gdcm11LookupTable11InitializedEv.exit.thread, label %bb.y, !llvm.loop !75

_ZNK4gdcm11LookupTable11InitializedEv.exit.thread: ; preds = %bb.al, %bb.s, %bb.x, %bb.e, %bb.b, %bb.c, %bb.d, %_ZNK4gdcm11LookupTable11InitializedEv.exit, %bb.a
  %.053 = phi i1 [ false, %bb.a ], [ false, %_ZNK4gdcm11LookupTable11InitializedEv.exit ], [ false, %bb.d ], [ false, %bb.b ], [ true, %bb.e ], [ false, %bb.c ], [ true, %bb.x ], [ true, %bb.s ], [ true, %bb.al ]
  ret i1 %.053

bb.am:                                            ; preds = %bb.w, %bb.ak, %bb.ag, %bb.ac, %bb.j, %bb.n, %bb.r
  %.sink = phi ptr [ %i.bo, %bb.w ], [ %i.ci, %bb.ak ], [ %i.cd, %bb.ag ], [ %i.by, %bb.ac ], [ %i.w, %bb.j ], [ %i.ab, %bb.n ], [ %i.ag, %bb.r ]
  %.pn62.pn = phi { ptr, i32 } [ %i.bp, %bb.w ], [ %i.cj, %bb.ak ], [ %i.ce, %bb.ag ], [ %i.bz, %bb.ac ], [ %i.x, %bb.j ], [ %i.ac, %bb.n ], [ %i.ah, %bb.r ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #22
  resume { ptr, i32 } %.pn62.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK4gdcm11LookupTable10GetPointerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(27) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i16, ptr %i.a, align 8, !tbaa !20
  %i.c = icmp eq i16 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4gdcm11LookupTable15GetBufferAsRGBAEPh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(27) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i16, ptr %i.a, align 8, !tbaa !20
  switch i16 %i.b, label %.loopexit [
    i16 8, label %bb.b
    i16 16, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %.not35 = icmp eq ptr %i.f, %i.h
  br i1 %.not35, label %.loopexit, label %.lr.ph38

.lr.ph38:                                         ; preds = %bb.b, %.lr.ph38
  %.02237 = phi ptr [ %i.r, %.lr.ph38 ], [ %1, %bb.b ] ; 5 uses
  %.sroa.030.036 = phi ptr [ %i.o, %.lr.ph38 ], [ %i.f, %bb.b ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.030.036, i64 1
  %i.j = load i8, ptr %.sroa.030.036, align 1, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %.02237, i64 1
  store i8 %i.j, ptr %.02237, align 1, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.030.036, i64 2
  %i.m = load i8, ptr %i.i, align 1, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %.02237, i64 2
  store i8 %i.m, ptr %i.k, align 1, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.030.036, i64 3 ; 2 uses
  %i.p = load i8, ptr %i.l, align 1, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %.02237, i64 3
  store i8 %i.p, ptr %i.n, align 1, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %.02237, i64 4
  store i8 -1, ptr %i.q, align 1, !tbaa !49
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26
  %.not = icmp eq ptr %i.o, %i.u
  br i1 %.not, label %.loopexit, label %.lr.ph38, !llvm.loop !76

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  %i.ae = udiv i64 %i.ad, 6                       ; 3 uses
  %i.af = shl i64 %i.ad, 2
  %i.ag = udiv i64 %i.af, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.ag, i1 false)
  %.not39 = icmp ult i64 %i.ad, 6
  br i1 %.not39, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %xtraiter = and i64 %i.ae, 1
  %.off = add i64 %i.ad, -6
  %i.ah = icmp ult i64 %.off, 6
  br i1 %i.ah, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ae, 4611686018427387902
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01933 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.bb, %.lr.ph ] ; 9 uses
  %.02032 = phi ptr [ %i.y, %.lr.ph.preheader.new ], [ %i.ay, %.lr.ph ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.02032, i64 2
  %i.aj = load i16, ptr %.02032, align 2, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %.01933, i64 2
  store i16 %i.aj, ptr %.01933, align 2, !tbaa !28
  %i.al = getelementptr inbounds nuw i8, ptr %.02032, i64 4
  %i.am = load i16, ptr %i.ai, align 2, !tbaa !28
  %i.an = getelementptr inbounds nuw i8, ptr %.01933, i64 4
  store i16 %i.am, ptr %i.ak, align 2, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %.02032, i64 6
  %i.ap = load i16, ptr %i.al, align 2, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %.01933, i64 6
  store i16 %i.ap, ptr %i.an, align 2, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %.01933, i64 8
  store i16 -511, ptr %i.aq, align 2, !tbaa !28
  %i.as = getelementptr inbounds nuw i8, ptr %.02032, i64 8
  %i.at = load i16, ptr %i.ao, align 2, !tbaa !28
  %i.au = getelementptr inbounds nuw i8, ptr %.01933, i64 10
  store i16 %i.at, ptr %i.ar, align 2, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %.02032, i64 10
  %i.aw = load i16, ptr %i.as, align 2, !tbaa !28
  %i.ax = getelementptr inbounds nuw i8, ptr %.01933, i64 12
  store i16 %i.aw, ptr %i.au, align 2, !tbaa !28
  %i.ay = getelementptr inbounds nuw i8, ptr %.02032, i64 12 ; 2 uses
  %i.az = load i16, ptr %i.av, align 2, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %.01933, i64 14
  store i16 %i.az, ptr %i.ax, align 2, !tbaa !28
  %i.bb = getelementptr inbounds nuw i8, ptr %.01933, i64 16 ; 2 uses
  store i16 -511, ptr %i.ba, align 2, !tbaa !28
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit43.unr-lcssa, label %.lr.ph, !llvm.loop !77

.loopexit.loopexit43.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit43.unr-lcssa, %.lr.ph.preheader
  %.01933.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.bb, %.loopexit.loopexit43.unr-lcssa ] ; 4 uses
  %.02032.epil.init = phi ptr [ %i.y, %.lr.ph.preheader ], [ %i.ay, %.loopexit.loopexit43.unr-lcssa ] ; 3 uses
  %lcmp.mod44 = trunc i64 %i.ae to i1
  tail call void @llvm.assume(i1 %lcmp.mod44)
  %i.bc = getelementptr inbounds nuw i8, ptr %.02032.epil.init, i64 2
  %i.bd = load i16, ptr %.02032.epil.init, align 2, !tbaa !28
  %i.be = getelementptr inbounds nuw i8, ptr %.01933.epil.init, i64 2
  store i16 %i.bd, ptr %.01933.epil.init, align 2, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %.02032.epil.init, i64 4
  %i.bg = load i16, ptr %i.bc, align 2, !tbaa !28
  %i.bh = getelementptr inbounds nuw i8, ptr %.01933.epil.init, i64 4
  store i16 %i.bg, ptr %i.be, align 2, !tbaa !28
  %i.bi = load i16, ptr %i.bf, align 2, !tbaa !28
  %i.bj = getelementptr inbounds nuw i8, ptr %.01933.epil.init, i64 6
  store i16 %i.bi, ptr %i.bh, align 2, !tbaa !28
  store i16 -511, ptr %i.bj, align 2, !tbaa !28
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit43.unr-lcssa, %.lr.ph38, %bb.c, %bb.b, %bb.a
  %.021 = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ true, %bb.c ], [ true, %.lr.ph38 ], [ true, %.loopexit.loopexit43.unr-lcssa ], [ true, %.lr.ph.epil.preheader ]
  ret i1 %.021
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm11LookupTable17WriteBufferAsRGBAEPKh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(27) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i16, ptr %i.a, align 8, !tbaa !20
  switch i16 %i.b, label %.loopexit [
    i16 8, label %bb.b
    i16 16, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %.not37 = icmp eq ptr %i.f, %i.h
  br i1 %.not37, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.02139 = phi ptr [ %i.q, %.lr.ph ], [ %1, %bb.b ] ; 4 uses
  %.sroa.032.038 = phi ptr [ %i.p, %.lr.ph ], [ %i.f, %bb.b ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.02139, i64 1
  %i.j = load i8, ptr %.02139, align 1, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.032.038, i64 1
  store i8 %i.j, ptr %.sroa.032.038, align 1, !tbaa !49
end_hunk_0
