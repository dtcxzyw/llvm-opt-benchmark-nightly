Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/src?download=true
inline.NumInlined: 7232
inline.NumDeleted: 1432
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 62
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost4json6detail10write_trueERNS1_6writerERNS1_6streamE:bb.a

_ZN5boost4json6detail13write_literalILNS1_8literalsE1EEEbRNS1_6writerERNS1_6streamE.exit: ; preds = %bb.b, %bb.c
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5boost4json6detail11write_falseERNS1_6writerERNS1_6streamE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !266
  %i.d = load ptr, ptr %1, align 8, !tbaa !265    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %i.h = icmp ugt i64 %i.g, 4                     ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c, !prof !251

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.d, ptr noundef nonnull align 1 dereferenceable(5) @.str.128, i64 5, i1 false)
  %i.i = load ptr, ptr %1, align 8, !tbaa !265
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  store ptr %i.j, ptr %1, align 8, !tbaa !265
  br label %_ZN5boost4json6detail13write_literalILNS1_8literalsE2EEEbRNS1_6writerERNS1_6streamE.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 @.str.128, i64 %i.g, i1 false)
  %i.k = load ptr, ptr %1, align 8, !tbaa !265
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  store ptr %i.l, ptr %1, align 8, !tbaa !265
  %i.m = getelementptr inbounds nuw i8, ptr @.str.128, i64 %i.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.m, ptr %i.n, align 8, !tbaa !191
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw (i8, ptr @.str.128, i64 5), ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 9, ptr %i.a, align 1, !tbaa !272
  call void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5boost4json6detail13write_literalILNS1_8literalsE2EEEbRNS1_6writerERNS1_6streamE.exit

_ZN5boost4json6detail13write_literalILNS1_8literalsE2EEEbRNS1_6writerERNS1_6streamE.exit: ; preds = %bb.b, %bb.c
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5boost4json6detail10write_nullERNS1_6writerERNS1_6streamE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !266
  %i.d = load ptr, ptr %1, align 8, !tbaa !265    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %i.h = icmp ugt i64 %i.g, 3                     ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c, !prof !251

bb.b:                                             ; preds = %bb.a
  store i32 1819047278, ptr %i.d, align 1
  %i.i = load ptr, ptr %1, align 8, !tbaa !265
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store ptr %i.j, ptr %1, align 8, !tbaa !265
  br label %_ZN5boost4json6detail13write_literalILNS1_8literalsE0EEEbRNS1_6writerERNS1_6streamE.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 @.str.55, i64 %i.g, i1 false)
  %i.k = load ptr, ptr %1, align 8, !tbaa !265
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  store ptr %i.l, ptr %1, align 8, !tbaa !265
  %i.m = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.m, ptr %i.n, align 8, !tbaa !191
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw (i8, ptr @.str.55, i64 4), ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 9, ptr %i.a, align 1, !tbaa !272
  call void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5boost4json6detail13write_literalILNS1_8literalsE0EEEbRNS1_6writerERNS1_6streamE.exit

_ZN5boost4json6detail13write_literalILNS1_8literalsE0EEEbRNS1_6writerERNS1_6streamE.exit: ; preds = %bb.b, %bb.c
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5boost4json6detail11write_int64ERNS1_6writerERNS1_6streamEl(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !191 ; 7 uses
  %.sroa.13.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.13.0.copyload22.i = load ptr, ptr %.sroa.13.0..sroa_idx21.i, align 8, !tbaa !191
  %i.b = ptrtoint ptr %.sroa.13.0.copyload22.i to i64
  %i.c = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = icmp ugt i64 %i.d, 26
  br i1 %i.e, label %bb.b, label %bb.c, !prof !251

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN5boost4json6detail12format_int64EPcl(ptr noundef %.sroa.0.0.copyload.i, i64 noundef %2) #46
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.g
  br label %_ZN5boost4json6detail12write_bufferINS1_15int64_formatterEEEbRNS1_6writerERNS1_6streamET_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.j = tail call noundef i32 @_ZN5boost4json6detail12format_int64EPcl(ptr noundef nonnull %i.i, i64 noundef %2) #46
  %i.k = zext i32 %i.j to i64                     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.i, ptr %i.m, align 8, !tbaa !191
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !191
  %i.n = icmp samesign ult i64 %i.d, %i.k
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.copyload.i, ptr nonnull align 8 %i.i, i64 %i.d, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.d ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !273
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.d
  store ptr %i.q, ptr %i.m, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 9, ptr %i.a, align 1, !tbaa !272
  invoke void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit.i unwind label %.body.i

_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5boost4json6detail12write_bufferINS1_15int64_formatterEEEbRNS1_6writerERNS1_6streamET_.exit

.body.i:                                          ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  store ptr %i.o, ptr %1, align 8, !tbaa !265
  resume { ptr, i32 } %i.r

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.copyload.i, ptr nonnull align 8 %i.i, i64 %i.k, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.k
  br label %_ZN5boost4json6detail12write_bufferINS1_15int64_formatterEEEbRNS1_6writerERNS1_6streamET_.exit

_ZN5boost4json6detail12write_bufferINS1_15int64_formatterEEEbRNS1_6writerERNS1_6streamET_.exit: ; preds = %bb.b, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit.i, %bb.e
  %.sroa.0.0.i = phi ptr [ %i.h, %bb.b ], [ %i.o, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit.i ], [ %i.s, %bb.e ]
  %.0.i = phi i1 [ true, %bb.b ], [ false, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit.i ], [ true, %bb.e ]
  store ptr %.sroa.0.0.i, ptr %1, align 8, !tbaa !265
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5boost4json6detail12write_uint64ERNS1_6writerERNS1_6streamEm(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5boost4json6detail12write_bufferINS1_16uint64_formatterEEEbRNS1_6writerERNS1_6streamET_(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %2)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost4json6detail12write_bufferINS1_16uint64_formatterEEEbRNS1_6writerERNS1_6streamET_(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [24 x i8], align 16               ; 3 uses
  %3 = alloca %"struct.boost::json::detail::uint64_formatter", align 8 ; 2 uses
  store i64 %2, ptr %3, align 8
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !191 ; 8 uses
  %.sroa.13.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.13.0.copyload20 = load ptr, ptr %.sroa.13.0..sroa_idx19, align 8, !tbaa !191
  %i.c = ptrtoint ptr %.sroa.13.0.copyload20 to i64
  %i.d = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.e = sub i64 %i.c, %i.d                       ; 5 uses
  %i.f = icmp ugt i64 %i.e, 26
  br i1 %i.f, label %bb.b, label %bb.h, !prof !251

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i64 %2, 10
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = trunc nuw nsw i64 %2 to i8
  %i.i = or disjoint i8 %i.h, 48
  store i8 %i.i, ptr %.sroa.0.0.copyload, align 1, !tbaa !93
  br label %_ZNK5boost4json6detail16uint64_formatterclEPc.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.k = icmp ugt i64 %2, 999
  br i1 %i.k, label %.lr.ph.i.i, label %._crit_edge.thread.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.02234.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.j, %bb.d ] ; 2 uses
  %.02333.i.i = phi i64 [ %i.y, %.lr.ph.i.i ], [ %2, %bb.d ] ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %.02234.i.i, i64 -4 ; 4 uses
  %i.m = urem i64 %.02333.i.i, 10000
  %i.n = getelementptr inbounds i8, ptr %.02234.i.i, i64 -2
  %.lhs.trunc.i.i = trunc nuw nsw i64 %i.m to i16 ; 2 uses
  %i.o = urem i16 %.lhs.trunc.i.i, 100
  %i.p = shl nuw nsw i16 %i.o, 1
  %i.q = zext nneg i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @.str.108, i64 %i.q
  %i.s = load i16, ptr %i.r, align 1
  store i16 %i.s, ptr %i.n, align 1
  %i.t = udiv i16 %.lhs.trunc.i.i, 100
  %i.u = shl nuw nsw i16 %i.t, 1
  %i.v = zext nneg i16 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @.str.108, i64 %i.v
  %i.x = load i16, ptr %i.w, align 1
  store i16 %i.x, ptr %i.l, align 1
  %i.y = udiv i64 %.02333.i.i, 10000              ; 3 uses
  %i.z = icmp ugt i64 %.02333.i.i, 9999999
  br i1 %i.z, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !46

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.aa = icmp samesign ugt i64 %.02333.i.i, 99999
  br i1 %i.aa, label %._crit_edge.thread.i.i, label %bb.e

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.d
  %.022.lcssa42.i.i = phi ptr [ %i.l, %._crit_edge.i.i ], [ %i.j, %bb.d ]
  %.023.lcssa41.i.i = phi i64 [ %i.y, %._crit_edge.i.i ], [ %2, %bb.d ]
  %i.ab = getelementptr inbounds i8, ptr %.022.lcssa42.i.i, i64 -2 ; 2 uses
  %.lhs.trunc29.i.i = trunc nuw i64 %.023.lcssa41.i.i to i16 ; 2 uses
  %i.ac = urem i16 %.lhs.trunc29.i.i, 100
  %i.ad = shl nuw nsw i16 %i.ac, 1
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @.str.108, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 1
  store i16 %i.ag, ptr %i.ab, align 1
  %i.ah = udiv i16 %.lhs.trunc29.i.i, 100
  %.zext32.i.i = zext nneg i16 %i.ah to i64
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i
  %.124.i.i = phi i64 [ %.zext32.i.i, %._crit_edge.thread.i.i ], [ %i.y, %._crit_edge.i.i ] ; 2 uses
  %.1.i.i = phi ptr [ %i.ab, %._crit_edge.thread.i.i ], [ %i.l, %._crit_edge.i.i ] ; 2 uses
  %.not.i.i = icmp eq i64 %.124.i.i, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds i8, ptr %.1.i.i, i64 -1 ; 2 uses
  %i.aj = trunc i64 %.124.i.i to i8
  %i.ak = add nuw nsw i8 %i.aj, 48
  store i8 %i.ak, ptr %i.ai, align 1, !tbaa !93
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2.i.i = phi ptr [ %i.ai, %bb.f ], [ %.1.i.i, %bb.e ] ; 2 uses
  %i.al = ptrtoint ptr %i.j to i64
  %i.am = ptrtoint ptr %.2.i.i to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = and i64 %i.an, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.copyload, ptr nonnull align 1 %.2.i.i, i64 %i.ao, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  br label %_ZNK5boost4json6detail16uint64_formatterclEPc.exit

_ZNK5boost4json6detail16uint64_formatterclEPc.exit: ; preds = %bb.c, %bb.g
  %.0.i.i = phi i64 [ 1, %bb.c ], [ %i.ao, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.0.i.i
  br label %_ZN5boost4json6detail12write_bufferERNS1_6writerERNS1_6streamE.exit

bb.h:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ar = call noundef i64 @_ZNK5boost4json6detail16uint64_formatterclEPc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.aq) #46 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !191
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.as, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !191
  %i.au = icmp ult i64 %i.e, %i.ar
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.copyload, ptr nonnull align 8 %i.aq, i64 %i.e, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.e ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !273
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.e
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 9, ptr %i.a, align 1, !tbaa !272
  invoke void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit unwind label %.body

_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5boost4json6detail12write_bufferERNS1_6writerERNS1_6streamE.exit

.body:                                            ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  store ptr %i.av, ptr %1, align 8, !tbaa !265
  resume { ptr, i32 } %i.ay

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.copyload, ptr nonnull align 8 %i.aq, i64 %i.ar, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ar
  br label %_ZN5boost4json6detail12write_bufferERNS1_6writerERNS1_6streamE.exit

_ZN5boost4json6detail12write_bufferERNS1_6writerERNS1_6streamE.exit: ; preds = %bb.j, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit, %_ZNK5boost4json6detail16uint64_formatterclEPc.exit
  %.sroa.0.0 = phi ptr [ %i.ap, %_ZNK5boost4json6detail16uint64_formatterclEPc.exit ], [ %i.av, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit ], [ %i.az, %bb.j ]
  %.0 = phi i1 [ true, %_ZNK5boost4json6detail16uint64_formatterclEPc.exit ], [ false, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit ], [ true, %bb.j ]
  store ptr %.sroa.0.0, ptr %1, align 8, !tbaa !265
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5boost4json6detail12write_doubleERNS1_6writerERNS1_6streamEd(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, double noundef %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i8, ptr %i.b, align 8, !tbaa !274, !range !231, !noundef !125 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !191 ; 7 uses
  %.sroa.13.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.13.0.copyload23.i = load ptr, ptr %.sroa.13.0..sroa_idx22.i, align 8, !tbaa !191
  %i.d = ptrtoint ptr %.sroa.13.0.copyload23.i to i64
  %i.e = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = icmp ugt i64 %i.f, 26
  br i1 %i.g, label %bb.b, label %bb.c, !prof !251

bb.b:                                             ; preds = %bb.a
  %i.h = trunc nuw i8 %i.c to i1
  %i.i = tail call noundef i32 @_ZN5boost4json6detail3ryu14d2s_buffered_nEdPcb(double noundef %2, ptr noundef %.sroa.0.0.copyload.i, i1 noundef zeroext %i.h) #46
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.j
  br label %_ZN5boost4json6detail12write_bufferINS1_16double_formatterEEEbRNS1_6writerERNS1_6streamET_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.m = trunc nuw i8 %i.c to i1
  %i.n = tail call noundef i32 @_ZN5boost4json6detail3ryu14d2s_buffered_nEdPcb(double noundef %2, ptr noundef nonnull %i.l, i1 noundef zeroext %i.m) #46
  %i.o = zext i32 %i.n to i64                     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.l, ptr %i.q, align 8, !tbaa !191
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !191
  %i.r = icmp samesign ult i64 %i.f, %i.o
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.copyload.i, ptr nonnull align 8 %i.l, i64 %i.f, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.f ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !273
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.f
  store ptr %i.u, ptr %i.q, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 9, ptr %i.a, align 1, !tbaa !272
  invoke void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit.i unwind label %.body.i

_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5boost4json6detail12write_bufferINS1_16double_formatterEEEbRNS1_6writerERNS1_6streamET_.exit

.body.i:                                          ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  store ptr %i.s, ptr %1, align 8, !tbaa !265
  resume { ptr, i32 } %i.v

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.copyload.i, ptr nonnull align 8 %i.l, i64 %i.o, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.o
  br label %_ZN5boost4json6detail12write_bufferINS1_16double_formatterEEEbRNS1_6writerERNS1_6streamET_.exit

_ZN5boost4json6detail12write_bufferINS1_16double_formatterEEEbRNS1_6writerERNS1_6streamET_.exit: ; preds = %bb.b, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit.i, %bb.e
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.b ], [ %i.s, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit.i ], [ %i.w, %bb.e ]
  %.0.i = phi i1 [ true, %bb.b ], [ false, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit.i ], [ true, %bb.e ]
  store ptr %.sroa.0.0.i, ptr %1, align 8, !tbaa !265
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5boost4json6detail13resume_bufferERNS1_6writerERNS1_6streamE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !237
  %i.d = add i64 %i.c, -1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !237
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !191 ; 5 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.13.0.copyload = load ptr, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !191
  %i.e = ptrtoint ptr %.sroa.13.0.copyload to i64
  %i.f = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !273  ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp uge i64 %i.g, %i.n                  ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.copyload, ptr align 1 %i.k, i64 %i.g, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.g ; 2 uses
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !273
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.g
  store ptr %i.r, ptr %i.h, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 9, ptr %i.a, align 1, !tbaa !272
  invoke void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit unwind label %bb.c

_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_0
begin_hunk_1_@_ZN5boost4json9value_ref10make_valueESt16initializer_listIS1_ENS0_11storage_ptrE:bb.a
  store i64 %i.ab, ptr %7, align 8, !tbaa !96
  invoke void @_ZN5boost4json9value_ref10make_arrayESt16initializer_listIS1_ENS0_11storage_ptrE(ptr dead_on_unwind nonnull writable sret(%"class.boost::json::array") align 8 %6, ptr %1, i64 %2, ptr noundef nonnull align 8 %7)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZN5boost4json9value_ref12maybe_objectESt16initializer_listIS1_E.exit
  %i.ac = load i64, ptr %6, align 8, !tbaa !96    ; 3 uses
  store i64 %i.ac, ptr %0, align 8, !tbaa !96
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %bb.h, label %_ZN5boost4json5valueC2ENS0_5arrayE.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = and i64 %i.ac, -4
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZN5boost4json5valueC2ENS0_5arrayE.exit

_ZN5boost4json5valueC2ENS0_5arrayE.exit:          ; preds = %bb.g, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 6, ptr %i.ai, align 8, !tbaa !127
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !119
  store ptr @_ZN5boost4json5array6empty_E, ptr %i.ak, align 8, !tbaa !119
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !114
  call void @_ZN5boost4json5arrayD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #46
  %i.am = load i64, ptr %7, align 8, !tbaa !96    ; 2 uses
  %i.an = trunc i64 %i.am to i1
  br i1 %i.an, label %bb.i, label %_ZN5boost4json11storage_ptrD2Ev.exit

bb.i:                                             ; preds = %_ZN5boost4json5valueC2ENS0_5arrayE.exit
  %i.ao = and i64 %i.am, -4                       ; 2 uses
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = atomicrmw add ptr %i.aq, i64 -1 acq_rel, align 8
  %i.as = icmp ne i64 %i.ar, 1
  %i.at = icmp eq i64 %i.ao, 0
  %or.cond.i.i13 = or i1 %i.at, %i.as
  br i1 %or.cond.i.i13, label %_ZN5boost4json11storage_ptrD2Ev.exit, label %_ZN5boost4json11storage_ptrD2Ev.exit.sink.split

bb.j:                                             ; preds = %_ZN5boost4json9value_ref12maybe_objectESt16initializer_listIS1_E.exit
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.av = load i64, ptr %7, align 8, !tbaa !96    ; 2 uses
  %i.aw = trunc i64 %i.av to i1
  br i1 %i.aw, label %bb.k, label %_ZN5boost4json11storage_ptrD2Ev.exit12

bb.k:                                             ; preds = %bb.j
  %i.ax = and i64 %i.av, -4                       ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = atomicrmw add ptr %i.az, i64 -1 acq_rel, align 8
  %i.bb = icmp ne i64 %i.ba, 1
  %i.bc = icmp eq i64 %i.ax, 0
  %or.cond.i.i15 = or i1 %i.bc, %i.bb
  br i1 %or.cond.i.i15, label %_ZN5boost4json11storage_ptrD2Ev.exit12, label %_ZN5boost4json11storage_ptrD2Ev.exit12.sink.split

_ZN5boost4json11storage_ptrD2Ev.exit.sink.split:  ; preds = %bb.i, %bb.d
  %.sink22 = phi ptr [ %i.n, %bb.d ], [ %i.ap, %bb.i ] ; 2 uses
  %i.bd = load ptr, ptr %.sink22, align 8, !tbaa !98
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %.sink22) #46
  br label %_ZN5boost4json11storage_ptrD2Ev.exit

_ZN5boost4json11storage_ptrD2Ev.exit:             ; preds = %_ZN5boost4json11storage_ptrD2Ev.exit.sink.split, %bb.i, %_ZN5boost4json5valueC2ENS0_5arrayE.exit, %bb.d, %bb.c
  ret void

_ZN5boost4json11storage_ptrD2Ev.exit12.sink.split: ; preds = %bb.k, %bb.f
  %.sink27 = phi ptr [ %i.w, %bb.f ], [ %i.ay, %bb.k ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.au, %bb.k ]
  %i.bg = load ptr, ptr %.sink27, align 8, !tbaa !98
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %.sink27) #46
  br label %_ZN5boost4json11storage_ptrD2Ev.exit12

_ZN5boost4json11storage_ptrD2Ev.exit12:           ; preds = %_ZN5boost4json11storage_ptrD2Ev.exit12.sink.split, %bb.k, %bb.j, %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.au, %bb.k ], [ %i.s, %bb.e ], [ %i.s, %bb.f ], [ %i.au, %bb.j ], [ %.pn.ph, %_ZN5boost4json11storage_ptrD2Ev.exit12.sink.split ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5boost4json6detail15shared_resourceC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #18 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5boost4json6detail15shared_resourceE, i64 16), ptr %0, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !869
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN5boost4json6detail15shared_resourceD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(16) %0) unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN5boost4json6detail15shared_resourceD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #22 align 2 {
bb.a:
  tail call void @llvm.trap() #48
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #23

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN5boost4json6detail16default_resourceD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost4json6detail16default_resourceD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN5boost4json6detail16default_resourceD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #46
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @_ZN5boost4json6detail16default_resource11do_allocateEmm(ptr nofree nonnull readnone align 8 captures(none) %0, i64 noundef %1, i64 %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %1) #51
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost4json6detail16default_resource13do_deallocateEPvmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef %1) #46
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK5boost4json6detail16default_resource11do_is_equalERKNS_9container3pmr15memory_resourceE(ptr nofree noundef nonnull readnone align 8 captures(address) dereferenceable(8) %0, ptr nofree noundef nonnull readnone align 8 captures(address) dereferenceable(8) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  ret i1 %i.a
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost15throw_exceptionINS_6system12system_errorEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 88) #46 ; 3 uses
  invoke void @_ZN5boost10wrapexceptINS_6system12system_errorEEC2ERKS2_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptINS_6system12system_errorEEE, ptr nonnull @_ZN5boost10wrapexceptINS_6system12system_errorEED2Ev) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #46
  resume { ptr, i32 } %i.b
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @_ZN5boost4json6detail13format_uint64EPcm(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #25 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 3 uses
  %i.b = icmp ult i64 %1, 10
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw nsw i64 %1 to i8
  %i.d = or disjoint i8 %i.c, 48
  store i8 %i.d, ptr %0, align 1, !tbaa !93
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.f = icmp ugt i64 %1, 999
  br i1 %i.f, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.02234 = phi ptr [ %i.g, %.lr.ph ], [ %i.e, %bb.c ] ; 2 uses
  %.02333 = phi i64 [ %i.t, %.lr.ph ], [ %1, %bb.c ] ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.02234, i64 -4 ; 4 uses
  %i.h = urem i64 %.02333, 10000
  %i.i = getelementptr inbounds i8, ptr %.02234, i64 -2
  %.lhs.trunc = trunc nuw nsw i64 %i.h to i16     ; 2 uses
  %i.j = urem i16 %.lhs.trunc, 100
  %i.k = shl nuw nsw i16 %i.j, 1
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @.str.108, i64 %i.l
  %i.n = load i16, ptr %i.m, align 1
  store i16 %i.n, ptr %i.i, align 1
  %i.o = udiv i16 %.lhs.trunc, 100
  %i.p = shl nuw nsw i16 %i.o, 1
  %i.q = zext nneg i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @.str.108, i64 %i.q
  %i.s = load i16, ptr %i.r, align 1
  store i16 %i.s, ptr %i.g, align 1
  %i.t = udiv i64 %.02333, 10000                  ; 3 uses
  %i.u = icmp ugt i64 %.02333, 9999999
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !46

._crit_edge:                                      ; preds = %.lr.ph
  %i.v = icmp ugt i64 %.02333, 99999
  br i1 %i.v, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %.022.lcssa42 = phi ptr [ %i.g, %._crit_edge ], [ %i.e, %bb.c ]
  %.023.lcssa41 = phi i64 [ %i.t, %._crit_edge ], [ %1, %bb.c ]
  %i.w = getelementptr inbounds i8, ptr %.022.lcssa42, i64 -2 ; 2 uses
  %.lhs.trunc29 = trunc nuw i64 %.023.lcssa41 to i16 ; 2 uses
  %i.x = urem i16 %.lhs.trunc29, 100
  %i.y = shl nuw nsw i16 %i.x, 1
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @.str.108, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 1
  store i16 %i.ab, ptr %i.w, align 1
  %i.ac = udiv i16 %.lhs.trunc29, 100
  %.zext32 = zext nneg i16 %i.ac to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.124 = phi i64 [ %.zext32, %._crit_edge.thread ], [ %i.t, %._crit_edge ] ; 2 uses
  %.1 = phi ptr [ %i.w, %._crit_edge.thread ], [ %i.g, %._crit_edge ] ; 2 uses
  %.not = icmp eq i64 %.124, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds i8, ptr %.1, i64 -1 ; 2 uses
  %i.ae = trunc i64 %.124 to i8
  %i.af = add nuw nsw i8 %i.ae, 48
  store i8 %i.af, ptr %i.ad, align 1, !tbaa !93
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2 = phi ptr [ %i.ad, %bb.e ], [ %.1, %bb.d ]  ; 2 uses
  %i.ag = ptrtoint ptr %i.e to i64
  %i.ah = ptrtoint ptr %.2 to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i64 %i.ai, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 1 %.2, i64 %i.ak, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ %i.aj, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @_ZN5boost4json6detail12format_int64EPcl(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #25 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 3 uses
  %i.b = alloca [24 x i8], align 16               ; 3 uses
  %i.c = icmp sgt i64 %1, -1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i64 %1, 10
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = trunc nuw nsw i64 %1 to i8
  %i.f = or disjoint i8 %i.e, 48
  store i8 %i.f, ptr %0, align 1, !tbaa !93
  br label %_ZN5boost4json6detail13format_uint64EPcm.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.h = icmp samesign ugt i64 %1, 999
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.02234.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.g, %bb.d ] ; 2 uses
  %.02333.i = phi i64 [ %i.v, %.lr.ph.i ], [ %1, %bb.d ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.02234.i, i64 -4 ; 4 uses
  %i.j = urem i64 %.02333.i, 10000
  %i.k = getelementptr inbounds i8, ptr %.02234.i, i64 -2
  %.lhs.trunc.i = trunc nuw nsw i64 %i.j to i16   ; 2 uses
  %i.l = urem i16 %.lhs.trunc.i, 100
  %i.m = shl nuw nsw i16 %i.l, 1
  %i.n = zext nneg i16 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @.str.108, i64 %i.n
  %i.p = load i16, ptr %i.o, align 1
  store i16 %i.p, ptr %i.k, align 1
  %i.q = udiv i16 %.lhs.trunc.i, 100
  %i.r = shl nuw nsw i16 %i.q, 1
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr @.str.108, i64 %i.s
  %i.u = load i16, ptr %i.t, align 1
  store i16 %i.u, ptr %i.i, align 1
  %i.v = udiv i64 %.02333.i, 10000                ; 3 uses
  %i.w = icmp samesign ugt i64 %.02333.i, 9999999
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !46

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.x = icmp samesign ugt i64 %.02333.i, 99999
  br i1 %i.x, label %._crit_edge.thread.i, label %bb.e

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.022.lcssa42.i = phi ptr [ %i.i, %._crit_edge.i ], [ %i.g, %bb.d ]
  %.023.lcssa41.i = phi i64 [ %i.v, %._crit_edge.i ], [ %1, %bb.d ]
  %i.y = getelementptr inbounds i8, ptr %.022.lcssa42.i, i64 -2 ; 2 uses
  %.lhs.trunc29.i = trunc nuw i64 %.023.lcssa41.i to i16 ; 2 uses
  %i.z = urem i16 %.lhs.trunc29.i, 100
  %i.aa = shl nuw nsw i16 %i.z, 1
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @.str.108, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 1
  store i16 %i.ad, ptr %i.y, align 1
  %i.ae = udiv i16 %.lhs.trunc29.i, 100
  %.zext32.i = zext nneg i16 %i.ae to i64
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i, %._crit_edge.i
  %.124.i = phi i64 [ %.zext32.i, %._crit_edge.thread.i ], [ %i.v, %._crit_edge.i ] ; 2 uses
  %.1.i = phi ptr [ %i.y, %._crit_edge.thread.i ], [ %i.i, %._crit_edge.i ] ; 2 uses
  %.not.i = icmp eq i64 %.124.i, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds i8, ptr %.1.i, i64 -1 ; 2 uses
  %i.ag = trunc i64 %.124.i to i8
  %i.ah = add nuw nsw i8 %i.ag, 48
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !93
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2.i = phi ptr [ %i.af, %bb.f ], [ %.1.i, %bb.e ] ; 2 uses
  %i.ai = ptrtoint ptr %i.g to i64
  %i.aj = ptrtoint ptr %.2.i to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = trunc i64 %i.ak to i32
  %i.am = and i64 %i.ak, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 1 %.2.i, i64 %i.am, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  br label %_ZN5boost4json6detail13format_uint64EPcm.exit

bb.h:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  store i8 45, ptr %0, align 1, !tbaa !93
  %i.ao = sub i64 0, %1                           ; 5 uses
  %i.ap = icmp ult i64 %i.ao, 10
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = trunc nuw nsw i64 %i.ao to i8
  %i.ar = or disjoint i8 %i.aq, 48
  store i8 %i.ar, ptr %i.an, align 1, !tbaa !93
  br label %_ZN5boost4json6detail13format_uint64EPcm.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.at = icmp ugt i64 %i.ao, 999
  br i1 %i.at, label %.lr.ph.i19, label %._crit_edge.thread.i9

.lr.ph.i19:                                       ; preds = %bb.j, %.lr.ph.i19
  %.02234.i20 = phi ptr [ %i.au, %.lr.ph.i19 ], [ %i.as, %bb.j ] ; 2 uses
  %.02333.i21 = phi i64 [ %i.bh, %.lr.ph.i19 ], [ %i.ao, %bb.j ] ; 4 uses
  %i.au = getelementptr inbounds i8, ptr %.02234.i20, i64 -4 ; 4 uses
  %i.av = urem i64 %.02333.i21, 10000
  %i.aw = getelementptr inbounds i8, ptr %.02234.i20, i64 -2
  %.lhs.trunc.i22 = trunc nuw nsw i64 %i.av to i16 ; 2 uses
  %i.ax = urem i16 %.lhs.trunc.i22, 100
  %i.ay = shl nuw nsw i16 %i.ax, 1
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @.str.108, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 1
  store i16 %i.bb, ptr %i.aw, align 1
  %i.bc = udiv i16 %.lhs.trunc.i22, 100
  %i.bd = shl nuw nsw i16 %i.bc, 1
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @.str.108, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 1
  store i16 %i.bg, ptr %i.au, align 1
  %i.bh = udiv i64 %.02333.i21, 10000             ; 3 uses
  %i.bi = icmp ugt i64 %.02333.i21, 9999999
  br i1 %i.bi, label %.lr.ph.i19, label %._crit_edge.i23, !llvm.loop !46

._crit_edge.i23:                                  ; preds = %.lr.ph.i19
  %i.bj = icmp samesign ugt i64 %.02333.i21, 99999
  br i1 %i.bj, label %._crit_edge.thread.i9, label %bb.k

._crit_edge.thread.i9:                            ; preds = %._crit_edge.i23, %bb.j
  %.022.lcssa42.i10 = phi ptr [ %i.au, %._crit_edge.i23 ], [ %i.as, %bb.j ]
  %.023.lcssa41.i11 = phi i64 [ %i.bh, %._crit_edge.i23 ], [ %i.ao, %bb.j ]
  %i.bk = getelementptr inbounds i8, ptr %.022.lcssa42.i10, i64 -2 ; 2 uses
  %.lhs.trunc29.i12 = trunc nuw i64 %.023.lcssa41.i11 to i16 ; 2 uses
  %i.bl = urem i16 %.lhs.trunc29.i12, 100
  %i.bm = shl nuw nsw i16 %i.bl, 1
  %i.bn = zext nneg i16 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @.str.108, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 1
  store i16 %i.bp, ptr %i.bk, align 1
  %i.bq = udiv i16 %.lhs.trunc29.i12, 100
  %.zext32.i13 = zext nneg i16 %i.bq to i64
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.thread.i9, %._crit_edge.i23
  %.124.i14 = phi i64 [ %.zext32.i13, %._crit_edge.thread.i9 ], [ %i.bh, %._crit_edge.i23 ] ; 2 uses
  %.1.i15 = phi ptr [ %i.bk, %._crit_edge.thread.i9 ], [ %i.au, %._crit_edge.i23 ] ; 2 uses
  %.not.i16 = icmp eq i64 %.124.i14, 0
  br i1 %.not.i16, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds i8, ptr %.1.i15, i64 -1 ; 2 uses
  %i.bs = trunc i64 %.124.i14 to i8
  %i.bt = add nuw nsw i8 %i.bs, 48
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !93
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2.i17 = phi ptr [ %i.br, %bb.l ], [ %.1.i15, %bb.k ] ; 2 uses
  %i.bu = ptrtoint ptr %i.as to i64
  %i.bv = ptrtoint ptr %.2.i17 to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = trunc i64 %i.bw to i32
  %i.by = and i64 %i.bw, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull align 1 %.2.i17, i64 %i.by, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.bz = add i32 %i.bx, 1
  br label %_ZN5boost4json6detail13format_uint64EPcm.exit

_ZN5boost4json6detail13format_uint64EPcm.exit:    ; preds = %bb.m, %bb.i, %bb.g, %bb.c
  %.0 = phi i32 [ %i.al, %bb.g ], [ 1, %bb.c ], [ 2, %bb.i ], [ %i.bz, %bb.m ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN5boost4json6detail13format_doubleEPcdb(ptr noundef %0, double noundef %1, i1 noundef zeroext %2) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5boost4json6detail3ryu14d2s_buffered_nEdPcb(double noundef %1, ptr noundef %0, i1 noundef zeroext %2) #46
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN5boost4json6detail3ryu14d2s_buffered_nEdPcb(double noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 5 uses
  %i.b = icmp slt i64 %i.a, 0                     ; 7 uses
  %i.c = and i64 %i.a, 4503599627370495           ; 4 uses
  %i.d = lshr i64 %i.a, 52
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = and i32 %i.e, 2047                       ; 5 uses
  %i.g = icmp eq i32 %i.f, 2047                   ; 3 uses
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %i.f, 0
  %i.i = icmp eq i64 %i.c, 0
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %.thread, label %bb.p

bb.c:                                             ; preds = %bb.a
  %.not44 = icmp eq i64 %i.c, 0                   ; 2 uses
  br i1 %2, label %bb.d, label %bb.j

.thread:                                          ; preds = %bb.b
  br i1 %2, label %.thread35, label %.thread36

bb.d:                                             ; preds = %bb.c
  br i1 %.not44, label %.thread35, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %1, ptr noundef nonnull align 1 dereferenceable(3) @.str.109, i64 3, i1 false)
  br label %_ZN5boost4json6detail3ryu6detail16copy_special_strEPcbbb.exit

.thread35:                                        ; preds = %.thread, %bb.d
  br i1 %i.b, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread35
  store i8 45, ptr %1, align 1, !tbaa !93
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread35
  %.lobit45 = lshr i64 %i.a, 63
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.lobit45 ; 2 uses
  br i1 %i.g, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 8751735898823355977, ptr %i.j, align 1
  %i.k = select i1 %i.b, i32 9, i32 8
  br label %_ZN5boost4json6detail3ryu6detail16copy_special_strEPcbbb.exit

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.j, ptr noundef nonnull align 1 dereferenceable(3) @.str.111, i64 3, i1 false)
  %i.l = select i1 %i.b, i32 4, i32 3
  br label %_ZN5boost4json6detail3ryu6detail16copy_special_strEPcbbb.exit

bb.j:                                             ; preds = %bb.c
  br i1 %.not44, label %.thread36, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 1819047278, ptr %1, align 1
  br label %_ZN5boost4json6detail3ryu6detail16copy_special_strEPcbbb.exit

.thread36:                                        ; preds = %.thread, %bb.j
  br i1 %i.b, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread36
  store i8 45, ptr %1, align 1, !tbaa !93
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread36
  %.lobit = lshr i64 %i.a, 63
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.lobit ; 2 uses
  br i1 %i.g, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.m, ptr noundef nonnull align 1 dereferenceable(7) @.str.112, i64 7, i1 false)
  %i.n = select i1 %i.b, i32 8, i32 7
  br label %_ZN5boost4json6detail3ryu6detail16copy_special_strEPcbbb.exit

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.m, ptr noundef nonnull align 1 dereferenceable(3) @.str.111, i64 3, i1 false)
  %i.o = select i1 %i.b, i32 4, i32 3
  br label %_ZN5boost4json6detail3ryu6detail16copy_special_strEPcbbb.exit

bb.p:                                             ; preds = %bb.b
  %i.p = or disjoint i64 %i.c, 4503599627370496   ; 2 uses
  %i.q = add nsw i32 %i.f, -1076
  %or.cond.i = icmp ult i32 %i.q, -53
  br i1 %or.cond.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.r = sub nuw nsw i32 1075, %i.f
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.s
  %i.t = xor i64 %notmask.i, -1
  %i.u = and i64 %i.p, %i.t
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %_ZN5boost4json6detail3ryu6detailL13d2d_small_intEmjPNS3_19floating_decimal_64E.exit, label %bb.s

_ZN5boost4json6detail3ryu6detailL13d2d_small_intEmjPNS3_19floating_decimal_64E.exit: ; preds = %bb.q
  %i.v = lshr i64 %i.p, %i.s
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZN5boost4json6detail3ryu6detailL13d2d_small_intEmjPNS3_19floating_decimal_64E.exit
  %.sroa.8.0 = phi i32 [ 0, %_ZN5boost4json6detail3ryu6detailL13d2d_small_intEmjPNS3_19floating_decimal_64E.exit ], [ %i.aa, %bb.r ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.v, %_ZN5boost4json6detail3ryu6detailL13d2d_small_intEmjPNS3_19floating_decimal_64E.exit ], [ %i.w, %bb.r ] ; 3 uses
  %i.w = udiv i64 %.sroa.0.0, 10                  ; 2 uses
  %i.x = trunc i64 %.sroa.0.0 to i32
  %i.y = trunc i64 %i.w to i32
  %.neg = mul i32 %i.y, -10
  %i.z = sub i32 0, %i.x
  %.not = icmp eq i32 %.neg, %i.z
  %i.aa = add nuw nsw i32 %.sroa.8.0, 1
  br i1 %.not, label %bb.r, label %.thread39

bb.s:                                             ; preds = %bb.p, %bb.q
  %i.ab = invoke { i64, i32 } @_ZN5boost4json6detail3ryu6detail3d2dEmj(i64 noundef %i.c, i32 noundef %i.f)
          to label %bb.t unwind label %bb.u       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.ac = extractvalue { i64, i32 } %i.ab, 0
  %i.ad = extractvalue { i64, i32 } %i.ab, 1
  br label %.thread39

.thread39:                                        ; preds = %bb.r, %bb.t
  %.sroa.8.2 = phi i32 [ %i.ad, %bb.t ], [ %.sroa.8.0, %bb.r ]
  %.sroa.0.2 = phi i64 [ %i.ac, %bb.t ], [ %.sroa.0.0, %bb.r ]
  %i.ae = invoke noundef i32 @_ZN5boost4json6detail3ryu6detail8to_charsENS3_19floating_decimal_64EbPc(i64 %.sroa.0.2, i32 %.sroa.8.2, i1 noundef zeroext %i.b, ptr noundef %1)
          to label %_ZN5boost4json6detail3ryu6detail16copy_special_strEPcbbb.exit unwind label %bb.u

_ZN5boost4json6detail3ryu6detail16copy_special_strEPcbbb.exit: ; preds = %.thread39, %bb.o, %bb.n, %bb.k, %bb.i, %bb.h, %bb.e
  %.0 = phi i32 [ %i.o, %bb.o ], [ %i.l, %bb.i ], [ 3, %bb.e ], [ %i.k, %bb.h ], [ 4, %bb.k ], [ %i.n, %bb.n ], [ %i.ae, %.thread39 ]
  ret i32 %.0

bb.u:                                             ; preds = %.thread39, %bb.s
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #48
  unreachable
}
end_hunk_1
begin_hunk_2_@_ZN5boost4json6detail11string_implC2INS1_13pointer_token8iteratorEEET_S6_RKNS0_11storage_ptrESt18input_iterator_tag:bb.a
_ZNK5boost4json6detail11string_impl8capacityEv.exit.thread: ; preds = %.lr.ph
  %i.o = load i8, ptr %i.b, align 1, !tbaa !93    ; 2 uses
  %i.p = sext i8 %i.o to i64
  %i.q = add nsw i64 %i.p, -1
  %i.r = icmp ult i64 %i.q, 14
  br i1 %i.r, label %.thread, label %bb.c

bb.b:                                             ; preds = %_ZNK5boost4json6detail11string_impl8capacityEv.exit
  %i.s = add nuw i32 %i.k, 1
  store i32 %i.s, ptr %i.j, align 4, !tbaa !255
  br label %_ZN5boost4json6detail11string_impl4sizeEm.exit

.thread:                                          ; preds = %_ZNK5boost4json6detail11string_impl8capacityEv.exit.thread
  %i.t = add i8 %i.o, -1
  store i8 %i.t, ptr %i.b, align 1, !tbaa !93
  br label %_ZN5boost4json6detail11string_impl4sizeEm.exit

bb.c:                                             ; preds = %_ZNK5boost4json6detail11string_impl8capacityEv.exit.thread, %_ZNK5boost4json6detail11string_impl8capacityEv.exit
  %i.u = invoke noundef ptr @_ZN5boost4json6detail11string_impl6appendEmRKNS0_11storage_ptrE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN5boost4json6detail11string_impl4sizeEm.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZZN5boost4json6detail11string_implC1INS1_13pointer_token8iteratorEEET_S6_RKNS0_11storage_ptrESt18input_iterator_tagEN4undoD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  resume { ptr, i32 } %i.v

_ZN5boost4json6detail11string_impl4sizeEm.exit:   ; preds = %.thread, %bb.b, %bb.c
  %.1 = phi ptr [ %i.u, %bb.c ], [ %.014, %bb.b ], [ %.014, %.thread ] ; 2 uses
  %i.w = load i8, ptr %.sroa.011.013, align 1, !tbaa !93 ; 2 uses
  %i.x = icmp eq i8 %i.w, 126                     ; 2 uses
  %storemerge.v.i.i = select i1 %i.x, i64 2, i64 1
  %storemerge.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.013, i64 %storemerge.v.i.i ; 2 uses
  br i1 %i.x, label %bb.e, label %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit

bb.e:                                             ; preds = %_ZN5boost4json6detail11string_impl4sizeEm.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.011.013, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !93
  %i.aa = icmp eq i8 %i.z, 48
  %..i = select i1 %i.aa, i8 126, i8 47
  br label %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit

_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit: ; preds = %_ZN5boost4json6detail11string_impl4sizeEm.exit, %bb.e
  %.0.i9 = phi i8 [ %..i, %bb.e ], [ %i.w, %_ZN5boost4json6detail11string_impl4sizeEm.exit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 %.0.i9, ptr %.1, align 1, !tbaa !93
  %.not = icmp eq ptr %storemerge.i.i, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !964

._crit_edge:                                      ; preds = %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit
  %.pre = load i8, ptr %0, align 8, !tbaa !93     ; 2 uses
  %i.ac = icmp eq i8 %.pre, 5
  br i1 %i.ac, label %_ZNK5boost4json6detail11string_impl4sizeEv.exit10.thread, label %_ZNK5boost4json6detail11string_impl4sizeEv.exit10

_ZNK5boost4json6detail11string_impl4sizeEv.exit10.thread: ; preds = %._crit_edge
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !93  ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !255
  %i.af = zext i32 %i.ae to i64
  br label %bb.g

_ZNK5boost4json6detail11string_impl4sizeEv.exit10: ; preds = %._crit_edge
  %i.ag = load i8, ptr %i.b, align 1, !tbaa !93
  %i.ah = sext i8 %i.ag to i64
  %i.ai = sub nsw i64 14, %i.ah                   ; 2 uses
  %i.aj = icmp eq i8 %.pre, -123
  br i1 %i.aj, label %bb.f, label %_ZNK5boost4json6detail11string_impl4sizeEv.exit10._crit_edge

_ZNK5boost4json6detail11string_impl4sizeEv.exit10._crit_edge: ; preds = %_ZNK5boost4json6detail11string_impl4sizeEv.exit10
  %.pre15 = load ptr, ptr %i.d, align 8, !tbaa !93
  br label %bb.g

bb.f:                                             ; preds = %_ZNK5boost4json6detail11string_impl4sizeEv.exit10.thread20, %_ZNK5boost4json6detail11string_impl4sizeEv.exit10
  %i.ak = phi i64 [ %i.g, %_ZNK5boost4json6detail11string_impl4sizeEv.exit10.thread20 ], [ %i.ai, %_ZNK5boost4json6detail11string_impl4sizeEv.exit10 ] ; 2 uses
  %i.al = trunc i64 %i.ak to i8
  %i.am = sub i8 14, %i.al
  store i8 %i.am, ptr %i.b, align 1, !tbaa !93
  br label %_ZZN5boost4json6detail11string_implC1INS1_13pointer_token8iteratorEEET_S6_RKNS0_11storage_ptrESt18input_iterator_tagEN4undoD2Ev.exit

bb.g:                                             ; preds = %_ZNK5boost4json6detail11string_impl4sizeEv.exit10._crit_edge, %_ZNK5boost4json6detail11string_impl4sizeEv.exit10.thread
  %i.an = phi ptr [ %i.ad, %_ZNK5boost4json6detail11string_impl4sizeEv.exit10.thread ], [ %.pre15, %_ZNK5boost4json6detail11string_impl4sizeEv.exit10._crit_edge ]
  %i.ao = phi i64 [ %i.af, %_ZNK5boost4json6detail11string_impl4sizeEv.exit10.thread ], [ %i.ai, %_ZNK5boost4json6detail11string_impl4sizeEv.exit10._crit_edge ] ; 2 uses
  %i.ap = trunc i64 %i.ao to i32
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !255
  %i.aq = load i8, ptr %0, align 8, !tbaa !93
  %i.ar = icmp eq i8 %i.aq, -123
  %i.as = load ptr, ptr %i.d, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.0.i.i = select i1 %i.ar, ptr %i.a, ptr %i.at
  br label %_ZZN5boost4json6detail11string_implC1INS1_13pointer_token8iteratorEEET_S6_RKNS0_11storage_ptrESt18input_iterator_tagEN4undoD2Ev.exit

_ZZN5boost4json6detail11string_implC1INS1_13pointer_token8iteratorEEET_S6_RKNS0_11storage_ptrESt18input_iterator_tagEN4undoD2Ev.exit: ; preds = %bb.g, %bb.f
  %i.au = phi i64 [ %i.ao, %bb.g ], [ %i.ak, %bb.f ]
  %.0.i.sink.i = phi ptr [ %.0.i.i, %bb.g ], [ %i.a, %bb.f ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.sink.i, i64 %i.au
  store i8 0, ptr %i.av, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN5boost4json6detail11string_implC1INS1_13pointer_token8iteratorEEET_S6_RKNS0_11storage_ptrESt18input_iterator_tagEN4undoD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !375    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN5boost4json6detail11string_impl7destroyERKNS0_11storage_ptrE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !965, !nonnull !125, !align !126 ; 2 uses
  %i.d = load i8, ptr %i.a, align 8, !tbaa !93
  switch i8 %i.d, label %_ZN5boost4json6detail11string_impl7destroyERKNS0_11storage_ptrE.exit [
    i8 5, label %bb.c
    i8 69, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.e, 0
  %i.f = and i64 %i.e, -4
  %i.g = inttoptr i64 %i.f to ptr
  %.0.i.i.i = select i1 %.not.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !93   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !197
  %i.l = zext i32 %i.k to i64
  %i.m = add nuw nsw i64 %i.l, 9
  br label %.invoke.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %.not.i.i3.i = icmp eq i64 %i.n, 0
  %i.o = and i64 %i.n, -4
  %i.p = inttoptr i64 %i.o to ptr
  %.0.i.i4.i = select i1 %.not.i.i3.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !93
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !93
  %i.u = add i32 %i.t, 1
  %i.v = zext i32 %i.u to i64
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.d, %bb.c
  %.0.i.i.sink.i = phi ptr [ %.0.i.i.i, %bb.c ], [ %.0.i.i4.i, %bb.d ] ; 2 uses
  %i.w = phi ptr [ %i.i, %bb.c ], [ %i.r, %bb.d ]
  %i.x = phi i64 [ %i.m, %bb.c ], [ %i.v, %bb.d ]
  %i.y = phi i64 [ 4, %bb.c ], [ 16, %bb.d ]
  %i.z = load ptr, ptr %.0.i.i.sink.i, align 8, !tbaa !98
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.sink.i, ptr noundef %i.w, i64 noundef %i.x, i64 noundef %i.y)
          to label %_ZN5boost4json6detail11string_impl7destroyERKNS0_11storage_ptrE.exit unwind label %bb.e, !inline_history !2

bb.e:                                             ; preds = %.invoke.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #48
  unreachable

_ZN5boost4json6detail11string_impl7destroyERKNS0_11storage_ptrE.exit: ; preds = %.invoke.i, %bb.b, %bb.a
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK5boost4json6detail16uint64_formatterclEPc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 3 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !967    ; 5 uses
  %i.c = icmp ult i64 %i.b, 10
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw nsw i64 %i.b to i8
  %i.e = or disjoint i8 %i.d, 48
  store i8 %i.e, ptr %1, align 1, !tbaa !93
  br label %_ZN5boost4json6detail13format_uint64EPcm.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.g = icmp ugt i64 %i.b, 999
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.02234.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.f, %bb.c ] ; 2 uses
  %.02333.i = phi i64 [ %i.u, %.lr.ph.i ], [ %i.b, %bb.c ] ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %.02234.i, i64 -4 ; 4 uses
  %i.i = urem i64 %.02333.i, 10000
  %i.j = getelementptr inbounds i8, ptr %.02234.i, i64 -2
  %.lhs.trunc.i = trunc nuw nsw i64 %i.i to i16   ; 2 uses
  %i.k = urem i16 %.lhs.trunc.i, 100
  %i.l = shl nuw nsw i16 %i.k, 1
  %i.m = zext nneg i16 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr @.str.108, i64 %i.m
  %i.o = load i16, ptr %i.n, align 1
  store i16 %i.o, ptr %i.j, align 1
  %i.p = udiv i16 %.lhs.trunc.i, 100
  %i.q = shl nuw nsw i16 %i.p, 1
  %i.r = zext nneg i16 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @.str.108, i64 %i.r
  %i.t = load i16, ptr %i.s, align 1
  store i16 %i.t, ptr %i.h, align 1
  %i.u = udiv i64 %.02333.i, 10000                ; 3 uses
  %i.v = icmp ugt i64 %.02333.i, 9999999
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !46

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.w = icmp samesign ugt i64 %.02333.i, 99999
  br i1 %i.w, label %._crit_edge.thread.i, label %bb.d

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.c
  %.022.lcssa42.i = phi ptr [ %i.h, %._crit_edge.i ], [ %i.f, %bb.c ]
  %.023.lcssa41.i = phi i64 [ %i.u, %._crit_edge.i ], [ %i.b, %bb.c ]
  %i.x = getelementptr inbounds i8, ptr %.022.lcssa42.i, i64 -2 ; 2 uses
  %.lhs.trunc29.i = trunc nuw i64 %.023.lcssa41.i to i16 ; 2 uses
  %i.y = urem i16 %.lhs.trunc29.i, 100
  %i.z = shl nuw nsw i16 %i.y, 1
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @.str.108, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 1
  store i16 %i.ac, ptr %i.x, align 1
  %i.ad = udiv i16 %.lhs.trunc29.i, 100
  %.zext32.i = zext nneg i16 %i.ad to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i, %._crit_edge.i
  %.124.i = phi i64 [ %.zext32.i, %._crit_edge.thread.i ], [ %i.u, %._crit_edge.i ] ; 2 uses
  %.1.i = phi ptr [ %i.x, %._crit_edge.thread.i ], [ %i.h, %._crit_edge.i ] ; 2 uses
  %.not.i = icmp eq i64 %.124.i, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds i8, ptr %.1.i, i64 -1 ; 2 uses
  %i.af = trunc i64 %.124.i to i8
  %i.ag = add nuw nsw i8 %i.af, 48
  store i8 %i.ag, ptr %i.ae, align 1, !tbaa !93
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2.i = phi ptr [ %i.ae, %bb.e ], [ %.1.i, %bb.d ] ; 2 uses
  %i.ah = ptrtoint ptr %i.f to i64
  %i.ai = ptrtoint ptr %.2.i to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = and i64 %i.aj, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %.2.i, i64 %i.ak, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %_ZN5boost4json6detail13format_uint64EPcm.exit

_ZN5boost4json6detail13format_uint64EPcm.exit:    ; preds = %bb.b, %bb.f
  %.0.i = phi i64 [ 1, %bb.b ], [ %i.ak, %bb.f ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost4json6detail6writer7suspendIPKNS0_5valueENS0_5arrayEEEbNS2_5stateET_PKT0_(ptr noundef nonnull align 8 dereferenceable(108) %0, i8 noundef signext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  store i8 %1, ptr %i.a, align 1, !tbaa !272
  store ptr %2, ptr %i.b, align 8, !tbaa !283
  store ptr %3, ptr %i.c, align 8, !tbaa !284
  call void @_ZN5boost4json6detail5stack4pushIPKNS0_5arrayEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @_ZN5boost4json6detail5stack4pushIPKNS0_5valueEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4json6detail5stack4pushIPKNS0_5arrayEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !269
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !237  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = icmp ult i64 %i.e, 8
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !253
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.d, 8                          ; 2 uses
  %i.h = load i64, ptr %0, align 8, !tbaa !96     ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.h, 0
  %i.i = and i64 %i.h, -4
  %i.j = inttoptr i64 %i.i to ptr
  %.0.i.i.i = select i1 %.not.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.j ; 2 uses
  %i.k = load ptr, ptr %.0.i.i.i, align 8, !tbaa !98
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i, i64 noundef %i.g, i64 noundef 16), !inline_history !54 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !253  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZN5boost4json6detail5stack12reserve_implEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.c, align 8, !tbaa !237
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %i.p, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.019.i = load ptr, ptr %i.r, align 8, !tbaa !325 ; 2 uses
  %.not1520.i = icmp eq ptr %.019.i, null
  br i1 %.not1520.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZN5boost4json6detail5stack11non_trivialIvE8relocateEPv.exit.i
  %.022.i = phi ptr [ %.0.i, %_ZN5boost4json6detail5stack11non_trivialIvE8relocateEPv.exit.i ], [ %.019.i, %bb.c ] ; 3 uses
  %.01321.i = phi ptr [ %i.ab, %_ZN5boost4json6detail5stack11non_trivialIvE8relocateEPv.exit.i ], [ %i.r, %bb.c ]
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !253
  %i.t = ptrtoint ptr %.022.i to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.v
  %i.x = load ptr, ptr %.022.i, align 8, !tbaa !236
  %i.y = invoke noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(24) %.022.i, ptr noundef %i.w)
          to label %_ZN5boost4json6detail5stack11non_trivialIvE8relocateEPv.exit.i unwind label %bb.d ; 2 uses

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #48
  unreachable

_ZN5boost4json6detail5stack11non_trivialIvE8relocateEPv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.y, ptr %.01321.i, align 8, !tbaa !325
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %.0.i = load ptr, ptr %i.ab, align 8, !tbaa !325 ; 2 uses
  %.not15.i = icmp eq ptr %.0.i, null
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !53

._crit_edge.i:                                    ; preds = %_ZN5boost4json6detail5stack11non_trivialIvE8relocateEPv.exit.i, %bb.c
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !253 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !270
  %.not16.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not16.i, label %_ZN5boost4json6detail5stack12reserve_implEm.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.af = load i64, ptr %0, align 8, !tbaa !96    ; 2 uses
  %.not.i.i17.i = icmp eq i64 %i.af, 0
  %i.ag = and i64 %i.af, -4
  %i.ah = inttoptr i64 %i.ag to ptr
  %.0.i.i18.i = select i1 %.not.i.i17.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.ah ; 2 uses
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !269
  %i.aj = load ptr, ptr %.0.i.i18.i, align 8, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i18.i, ptr noundef %i.ac, i64 noundef %i.ai, i64 noundef 16), !inline_history !55
  br label %_ZN5boost4json6detail5stack12reserve_implEm.exit

_ZN5boost4json6detail5stack12reserve_implEm.exit: ; preds = %bb.b, %._crit_edge.i, %bb.e
  store ptr %i.n, ptr %i.o, align 8, !tbaa !253
  store i64 %i.g, ptr %i.a, align 8, !tbaa !269
  %.pre2 = load i64, ptr %i.c, align 8, !tbaa !237
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %_ZN5boost4json6detail5stack12reserve_implEm.exit
  %i.am = phi i64 [ %i.d, %._crit_edge ], [ %.pre2, %_ZN5boost4json6detail5stack12reserve_implEm.exit ]
  %i.an = phi ptr [ %.pre, %._crit_edge ], [ %i.n, %_ZN5boost4json6detail5stack12reserve_implEm.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  %i.ap = load i64, ptr %1, align 8
  store i64 %i.ap, ptr %i.ao, align 1
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !237
  %i.ar = add i64 %i.aq, 8
  store i64 %i.ar, ptr %i.c, align 8, !tbaa !237
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4json6detail5stack4pushIPKNS0_5valueEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !269
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !237  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = icmp ult i64 %i.e, 8
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !253
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.d, 8                          ; 2 uses
  %i.h = load i64, ptr %0, align 8, !tbaa !96     ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.h, 0
  %i.i = and i64 %i.h, -4
  %i.j = inttoptr i64 %i.i to ptr
  %.0.i.i.i = select i1 %.not.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.j ; 2 uses
  %i.k = load ptr, ptr %.0.i.i.i, align 8, !tbaa !98
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i, i64 noundef %i.g, i64 noundef 16), !inline_history !54 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !253  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
end_hunk_2
