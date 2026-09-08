Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmImageCodec?download=true
inline.NumInlined: 433
inline.NumDeleted: 234
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4gdcm10ImageCodec5DoYBRERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEERNS1_13basic_ostreamIcS4_EE:bb.a
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.g = tail call { i64, i64 } @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.h = extractvalue { i64, i64 } %i.g, 1        ; 3 uses
  %i.i = and i64 %i.h, 4294967295
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #28
  %i.k = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.j, i64 noundef %i.h) ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.n = urem i64 %i.h, 3
  %.not = icmp eq i64 %i.n, 0
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 6 uses
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 148, ptr noundef nonnull @.str.2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #31
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 153, ptr noundef nonnull @.str.2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #31
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.d
  %.sink = phi ptr [ %i.o, %bb.h ], [ %i.o, %bb.k ], [ %i.d, %bb.d ]
  %.pn.pn = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.q, %bb.k ], [ %i.e, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm10ImageCodec12DoYBRFull422ERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEERNS1_13basic_ostreamIcS4_EE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { i64, i64 } @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = extractvalue { i64, i64 } %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 197, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #31
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.g = tail call { i64, i64 } @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.h = extractvalue { i64, i64 } %i.g, 1        ; 5 uses
  %i.i = mul i64 %i.h, 3
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #28 ; 3 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.k, i64 noundef %i.h) ; 0 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.o = urem i64 %i.j, 3
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 206, ptr noundef nonnull @.str.2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #31
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %bb.e
  %i.r = and i64 %i.h, 1
  %.not41 = icmp eq i64 %i.r, 0
  br i1 %.not41, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 207, ptr noundef nonnull @.str.2)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #31
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.u = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #28 ; 3 uses
  %i.v = lshr i64 %i.h, 2                         ; 2 uses
  %.not48 = icmp eq i64 %i.v, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.m
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.u, i64 noundef %i.j) ; 0 uses
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #29
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #29
  ret i1 true

.lr.ph:                                           ; preds = %bb.m, %.lr.ph
  %.04047 = phi i64 [ %i.ai, %.lr.ph ], [ 0, %bb.m ] ; 3 uses
  %i.x = shl nuw i64 %.04047, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.x ; 4 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !44
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !44  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !44  ; 2 uses
  %i.ag = mul i64 %.04047, 6
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ag ; 6 uses
  store i8 %i.z, ptr %i.ah, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 %i.ad, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i8 %i.af, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  store i8 %i.ab, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i8 %i.ad, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 5
  store i8 %i.af, ptr %.sroa.8.0..sroa_idx, align 1
  %i.ai = add nuw nsw i64 %.04047, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !75

bb.n:                                             ; preds = %bb.h, %bb.l, %bb.d
  %.sink = phi ptr [ %i.p, %bb.h ], [ %i.s, %bb.l ], [ %i.d, %bb.d ]
  %.pn.pn = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.t, %bb.l ], [ %i.e, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm10ImageCodec21DoPlanarConfigurationERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEERNS1_13basic_ostreamIcS4_EE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { i64, i64 } @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = extractvalue { i64, i64 } %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 254, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #31
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.g = tail call { i64, i64 } @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.h = extractvalue { i64, i64 } %i.g, 1        ; 7 uses
  %i.i = and i64 %i.h, 4294967295                 ; 2 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #28 ; 5 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.j, i64 noundef %i.h) ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.n = urem i64 %i.h, 3
  %i.o = udiv i64 %i.h, 3                         ; 5 uses
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 266, ptr noundef nonnull @.str.2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #31
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #28 ; 4 uses
  %.not = icmp ult i64 %i.h, 3
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.o ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o ; 2 uses
  %xtraiter = and i64 %i.o, 1
  %.off = add i64 %i.h, -3
  %3 = icmp ult i64 %.off, 3
  br i1 %3, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.o, 9223372036854775806
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03447 = phi ptr [ %i.s, %.lr.ph.preheader.new ], [ %i.am, %.lr.ph ] ; 7 uses
  %.03546 = phi ptr [ %i.u, %.lr.ph.preheader.new ], [ %i.ak, %.lr.ph ] ; 3 uses
  %.03645 = phi ptr [ %i.t, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ] ; 3 uses
  %.03744 = phi ptr [ %i.j, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.v = getelementptr inbounds nuw i8, ptr %.03744, i64 1
  %i.w = load i8, ptr %.03744, align 1, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %.03447, i64 1
  store i8 %i.w, ptr %.03447, align 1, !tbaa !44
  %i.y = getelementptr inbounds nuw i8, ptr %.03645, i64 1
  %i.z = load i8, ptr %.03645, align 1, !tbaa !44
  %i.aa = getelementptr inbounds nuw i8, ptr %.03447, i64 2
  store i8 %i.z, ptr %i.x, align 1, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %.03546, i64 1
  %i.ac = load i8, ptr %.03546, align 1, !tbaa !44
  %i.ad = getelementptr inbounds nuw i8, ptr %.03447, i64 3
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %.03744, i64 2 ; 2 uses
  %i.af = load i8, ptr %i.v, align 1, !tbaa !44
  %i.ag = getelementptr inbounds nuw i8, ptr %.03447, i64 4
  store i8 %i.af, ptr %i.ad, align 1, !tbaa !44
  %i.ah = getelementptr inbounds nuw i8, ptr %.03645, i64 2 ; 2 uses
  %i.ai = load i8, ptr %i.y, align 1, !tbaa !44
  %i.aj = getelementptr inbounds nuw i8, ptr %.03447, i64 5
  store i8 %i.ai, ptr %i.ag, align 1, !tbaa !44
  %i.ak = getelementptr inbounds nuw i8, ptr %.03546, i64 2 ; 2 uses
  %i.al = load i8, ptr %i.ab, align 1, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %.03447, i64 6 ; 2 uses
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !44
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !76

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.03447.epil.init = phi ptr [ %i.s, %.lr.ph.preheader ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.03546.epil.init = phi ptr [ %i.u, %.lr.ph.preheader ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ]
  %.03645.epil.init = phi ptr [ %i.t, %.lr.ph.preheader ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ]
  %.03744.epil.init = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod49 = trunc i64 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod49)
  %i.an = load i8, ptr %.03744.epil.init, align 1, !tbaa !44
  %i.ao = getelementptr inbounds nuw i8, ptr %.03447.epil.init, i64 1
  store i8 %i.an, ptr %.03447.epil.init, align 1, !tbaa !44
  %i.ap = load i8, ptr %.03645.epil.init, align 1, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %.03447.epil.init, i64 2
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !44
  %i.ar = load i8, ptr %.03546.epil.init, align 1, !tbaa !44
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !44
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #29
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.s, i64 noundef %i.h) ; 0 uses
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #29
  ret i1 true

bb.j:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.q, %bb.h ], [ %i.d, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.e, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm10ImageCodec12DoSimpleCopyERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEERNS1_13basic_ostreamIcS4_EE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { i64, i64 } @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = extractvalue { i64, i64 } %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 293, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #31
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #30
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.g = tail call { i64, i64 } @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.h = extractvalue { i64, i64 } %i.g, 1        ; 3 uses
  %i.i = and i64 %i.h, 4294967295
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #28 ; 3 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.j, i64 noundef %i.h) ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.j, i64 noundef %i.h) ; 0 uses
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #29
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm10ImageCodec26DoPaddedCompositePixelCodeERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEERNS1_13basic_ostreamIcS4_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { i64, i64 } @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = extractvalue { i64, i64 } %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 316, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #31
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.g = tail call { i64, i64 } @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.h = extractvalue { i64, i64 } %i.g, 1        ; 10 uses
  %i.i = and i64 %i.h, 4294967295
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #28 ; 4 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.j, i64 noundef %i.h) ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.n = and i64 %i.h, 1
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 326, ptr noundef nonnull @.str.2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #31
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.i:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.r = load i16, ptr %i.q, align 2, !tbaa !39
  switch i16 %i.r, label %.loopexit [
    i16 16, label %.preheader
    i16 32, label %bb.j
  ]

.preheader:                                       ; preds = %bb.i
  %i.s = lshr exact i64 %i.h, 1                   ; 2 uses
  %.not62 = icmp eq i64 %i.h, 0
  br i1 %.not62, label %.loopexit, label %.lr.ph60

.lr.ph60:                                         ; preds = %.preheader, %.lr.ph60
  %.04359 = phi i64 [ %i.x, %.lr.ph60 ], [ 0, %.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %.04359 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.u, i64 noundef 1) ; 0 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.t, i64 noundef 1) ; 0 uses
  %i.x = add nuw nsw i64 %.04359, 1               ; 2 uses
  %exitcond64.not = icmp eq i64 %i.x, %i.s
  br i1 %exitcond64.not, label %.loopexit, label %.lr.ph60, !llvm.loop !77

bb.j:                                             ; preds = %bb.i
  %i.y = and i64 %i.h, 2
  %.not50 = icmp eq i64 %i.y, 0
  br i1 %.not50, label %.preheader56, label %bb.k

.preheader56:                                     ; preds = %bb.j
  %i.z = lshr exact i64 %i.h, 2                   ; 2 uses
  %.not61 = icmp eq i64 %i.h, 0
  br i1 %.not61, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader56
  %i.aa = mul i64 %i.h, 3
  %i.ab = lshr exact i64 %i.aa, 2
  %i.ac = lshr exact i64 %i.h, 1
  %i.ad = and i64 %i.ac, 4611686018427387902
  br label %bb.n

end_hunk_0
