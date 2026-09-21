Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dec_frame?download=true
inline.NumInlined: 3528
inline.NumDeleted: 1999
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN3jxl12FrameDecoder12MarkSectionsEPKNS0_11SectionInfoEmPKNS0_13SectionStatusE:bb.a

bb.b:                                             ; preds = %.epil.preheader
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.08.epil.init
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !362
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !353
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !306
  %i.m = load i64, ptr %i.a, align 8, !tbaa !233
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %i.a, align 8, !tbaa !233
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %.epil.preheader, %bb.a
  ret void

bb.c:                                             ; preds = %bb.g, %.lr.ph.new
  %.08 = phi i64 [ 0, %.lr.ph.new ], [ %i.ah, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.08
  %i.p = load i32, ptr %i.o, align 4, !tbaa !289
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.08
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !362
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !353
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 0, ptr %i.u, align 1, !tbaa !306
  %i.v = load i64, ptr %i.a, align 8, !tbaa !233
  %i.w = add i64 %i.v, -1
  store i64 %i.w, ptr %i.a, align 8, !tbaa !233
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.x = or disjoint i64 %.08, 1                  ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !289
  %.not.1 = icmp eq i32 %i.z, 0
  br i1 %.not.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !362
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !353
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !306
  %i.af = load i64, ptr %i.a, align 8, !tbaa !233
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !233
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = add nuw i64 %.08, 2                     ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS0_ImNS_9allocatorImEEEENS1_IS3_EEEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not = icmp eq i64 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 768614336404564650
  br i1 %i.c, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNKSt3__16vectorINS0_ImNS_9allocatorImEEEENS1_IS3_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  unreachable

.lr.ph.i:                                         ; preds = %bb.b
  %i.d = mul nuw i64 %1, 24                       ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #23 ; 6 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !367
  store ptr %i.e, ptr %i.a, align 8, !tbaa !368
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %1
  store ptr %i.f, ptr %i.b, align 8, !tbaa !375
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !360
  %i.j = load ptr, ptr %2, align 8, !tbaa !357
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorImNS1_ImEEEEEEE9constructB8nn180100IS4_JRKS4_EvEEvRS5_PT_DpOT0_.exit.i.us.preheader, label %.lr.ph.i.split

_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorImNS1_ImEEEEEEE9constructB8nn180100IS4_JRKS4_EvEEvRS5_PT_DpOT0_.exit.i.us.preheader: ; preds = %.lr.ph.i
  %i.l = add i64 %i.d, -24                        ; 2 uses
  %i.m = urem i64 %i.l, 24
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = add nuw i64 %i.n, 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, i8 0, i64 %i.o, i1 false)
  br label %_ZNSt3__16vectorINS0_ImNS_9allocatorImEEEENS1_IS3_EEE18__construct_at_endEmRKS3_.exit

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorImNS1_ImEEEEEEE9constructB8nn180100IS4_JRKS4_EvEEvRS5_PT_DpOT0_.exit.i
  %.sroa.4.09.i = phi ptr [ %i.z, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorImNS1_ImEEEEEEE9constructB8nn180100IS4_JRKS4_EvEEvRS5_PT_DpOT0_.exit.i ], [ %i.e, %.lr.ph.i ] ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.4.09.i, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.4.09.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.09.i, i8 0, i64 24, i1 false)
  %i.r = load ptr, ptr %2, align 8, !tbaa !357    ; 3 uses
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !360  ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorImNS1_ImEEEEEEE9constructB8nn180100IS4_JRKS4_EvEEvRS5_PT_DpOT0_.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.split
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.e, label %_ZNSt3__16vectorImNS_9allocatorImEEE11__vallocateB8nn180100Em.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNKSt3__16vectorImNS_9allocatorImEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.09.i) #24
  unreachable

_ZNSt3__16vectorImNS_9allocatorImEEE11__vallocateB8nn180100Em.exit.i.i.i.i.i: ; preds = %bb.d
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #23 ; 4 uses
  store ptr %i.x, ptr %.sroa.4.09.i, align 8, !tbaa !357
  store ptr %i.x, ptr %i.p, align 8, !tbaa !360
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v ; 2 uses
  store ptr %i.y, ptr %i.q, align 8, !tbaa !358
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.r, i64 %i.v, i1 false)
  store ptr %i.y, ptr %i.p, align 8, !tbaa !360
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorImNS1_ImEEEEEEE9constructB8nn180100IS4_JRKS4_EvEEvRS5_PT_DpOT0_.exit.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorImNS1_ImEEEEEEE9constructB8nn180100IS4_JRKS4_EvEEvRS5_PT_DpOT0_.exit.i: ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEE11__vallocateB8nn180100Em.exit.i.i.i.i.i, %.lr.ph.i.split
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.4.09.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %i.g
  br i1 %.not.i, label %_ZNSt3__16vectorINS0_ImNS_9allocatorImEEEENS1_IS3_EEE18__construct_at_endEmRKS3_.exit, label %.lr.ph.i.split, !llvm.loop !683

_ZNSt3__16vectorINS0_ImNS_9allocatorImEEEENS1_IS3_EEE18__construct_at_endEmRKS3_.exit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorImNS1_ImEEEEEEE9constructB8nn180100IS4_JRKS4_EvEEvRS5_PT_DpOT0_.exit.i, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorImNS1_ImEEEEEEE9constructB8nn180100IS4_JRKS4_EvEEvRS5_PT_DpOT0_.exit.i.us.preheader
  store ptr %i.g, ptr %i.a, align 8, !tbaa !368
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt3__16vectorINS0_ImNS_9allocatorImEEEENS1_IS3_EEE18__construct_at_endEmRKS3_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorImNS_9allocatorImEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !360
  %i.c = load ptr, ptr %0, align 8, !tbaa !357    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 3 uses
  %i.h = icmp ult i64 %i.g, %1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt3__16vectorImNS_9allocatorImEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i) #22
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.g, %1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1
  store ptr %i.k, ptr %i.a, align 8, !tbaa !360
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

declare i32 @_ZN3jxl18PassesDecoderState15PreparePipelineERKNS_11FrameHeaderEPKNS_13ImageMetadataEPNS_11ImageBundleENS0_15PipelineOptionsE(ptr noundef nonnull align 8 dereferenceable(4552), ptr noundef nonnull align 8 dereferenceable(576), ptr noundef, ptr noundef, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl12FrameDecoder5FlushEv(ptr noundef nonnull align 8 dereferenceable(1528) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.jxl::ThreadPool", align 8   ; 6 uses
  %2 = alloca %class.anon.360, align 8            ; 5 uses
  %3 = alloca %class.anon.361, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.c = load i32, ptr %i.b, align 8, !tbaa !442
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.e = load i8, ptr %i.d, align 8, !range !297
  %i.f = select i1 %.not, i8 %i.e, i8 1           ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !249  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !250  ; 2 uses
  %.not3739 = icmp eq ptr %i.h, %i.j
  br i1 %.not3739, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i8 [ %i.f, %bb.a ], [ %spec.select, %.lr.ph ]
  %i.k = trunc nuw i8 %.0.lcssa to i1
  br i1 %i.k, label %4, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.041 = phi i8 [ %spec.select, %.lr.ph ], [ %i.f, %bb.a ]
  %.sroa.022.040 = phi ptr [ %i.n, %.lr.ph ], [ %i.h, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.022.040, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !687
  %.not19 = icmp eq i32 %i.m, 0
  %spec.select = select i1 %.not19, i8 %.041, i8 1 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.022.040, i64 40 ; 2 uses
  %.not37 = icmp eq ptr %i.n, %i.j
  br i1 %.not37, label %._crit_edge, label %.lr.ph

4:                                                ; preds = %._crit_edge
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %6 = load i8, ptr %5, align 8, !tbaa !234, !range !297, !noundef !298
  %7 = trunc nuw i8 %6 to i1
  br i1 %7, label %bb.b, label %_ZN3jxl12FrameDecoder14AllocateOutputEv.exit

bb.b:                                             ; preds = %4, %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i32, ptr %i.o, align 8, !tbaa !317
  %8 = icmp eq i32 %i.p, 3
  br i1 %8, label %9, label %bb.c

9:                                                ; preds = %bb.b
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %11 = load i8, ptr %10, align 8, !tbaa !234, !range !297, !noundef !298
  %12 = trunc nuw i8 %11 to i1
  br i1 %12, label %bb.c, label %_ZN3jxl12FrameDecoder14AllocateOutputEv.exit

bb.c:                                             ; preds = %9, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !296
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !322
  %.not38 = icmp eq ptr %i.t, null
  br i1 %.not38, label %bb.d, label %_ZN3jxl12FrameDecoder14AllocateOutputEv.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1465 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !235, !range !297, !noundef !298
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 776
  tail call void @_ZN3jxl19ModularFrameDecoder18MaybeDropFullImageEv(ptr noundef nonnull align 8 dereferenceable(592) %i.x) #21
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !296
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load i64, ptr %i.y, align 8
  store i64 %i.ab, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %0, align 8, !tbaa !98
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !312
  %i.af = zext i32 %i.ae to i64
  %i.ag = tail call i32 @_ZN3jxl18PassesDecoderState9InitForACEmPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(4552) %i.ac, i64 noundef %i.af, ptr noundef null) #21 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %_ZN3jxl12FrameDecoder14AllocateOutputEv.exit

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.u, align 1, !tbaa !235
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !353 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !354 ; 6 uses
  %i.am = icmp eq ptr %i.aj, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 3 uses
  %.not11.i.i.i.i = icmp eq ptr %i.an, %i.al
  %or.cond.i.i.i.i = select i1 %i.am, i1 true, i1 %.not11.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZNSt3__111min_elementB8nn180100INS_11__wrap_iterIPhEEEET_S4_S4_.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %i.ao = ptrtoaddr ptr %i.al to i64              ; 2 uses
  %i.ap = ptrtoaddr ptr %i.aj to i64              ; 2 uses
  %.pre.i.i.i.i = load i8, ptr %i.aj, align 1, !tbaa !306 ; 2 uses
  %i.aq = xor i64 %i.ap, -1
  %i.ar = add i64 %i.aq, %i.ao
  %i.as = add i64 %i.ao, -2
  %i.at = sub i64 %i.as, %i.ap
  %xtraiter = and i64 %i.ar, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i.i.i.i.prol
  %i.au = phi i8 [ %i.az, %.lr.ph.i.i.i.i.prol ], [ %.pre.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.av = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.prol ], [ %i.an, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.sroa.08.012.i.i.i.i.prol = phi ptr [ %spec.select.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ], [ %i.aj, %.lr.ph.preheader.i.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !306 ; 2 uses
  %i.ax = icmp ult i8 %i.aw, %i.au
  %spec.select.i.i.i.i.prol = select i1 %i.ax, ptr %i.av, ptr %.sroa.08.012.i.i.i.i.prol ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 2 uses
  %i.az = tail call i8 @llvm.umin.i8(i8 %i.aw, i8 %i.au) ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !684

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i
  %spec.select.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader.i.i.i.i ], [ %spec.select.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.unr = phi i8 [ %.pre.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.az, %.lr.ph.i.i.i.i.prol ]
  %.unr60 = phi ptr [ %i.an, %.lr.ph.preheader.i.i.i.i ], [ %i.ay, %.lr.ph.i.i.i.i.prol ]
  %.sroa.08.012.i.i.i.i.unr = phi ptr [ %i.aj, %.lr.ph.preheader.i.i.i.i ], [ %spec.select.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %i.ba = icmp ult i64 %i.at, 3
  br i1 %i.ba, label %_ZNSt3__111min_elementB8nn180100INS_11__wrap_iterIPhEEEET_S4_S4_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.bb = phi i8 [ %i.bs, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.bc = phi ptr [ %i.br, %.lr.ph.i.i.i.i ], [ %.unr60, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.3, %.lr.ph.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !306 ; 2 uses
  %i.be = icmp ult i8 %i.bd, %i.bb
  %spec.select.i.i.i.i = select i1 %i.be, ptr %i.bc, ptr %.sroa.08.012.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 2 uses
  %i.bg = tail call i8 @llvm.umin.i8(i8 %i.bd, i8 %i.bb) ; 2 uses
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !306 ; 2 uses
  %i.bi = icmp ult i8 %i.bh, %i.bg
  %spec.select.i.i.i.i.1 = select i1 %i.bi, ptr %i.bf, ptr %spec.select.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 2 ; 2 uses
  %i.bk = tail call i8 @llvm.umin.i8(i8 %i.bh, i8 %i.bg) ; 2 uses
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !306 ; 2 uses
  %i.bm = icmp ult i8 %i.bl, %i.bk
  %spec.select.i.i.i.i.2 = select i1 %i.bm, ptr %i.bj, ptr %spec.select.i.i.i.i.1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 3 ; 2 uses
  %i.bo = tail call i8 @llvm.umin.i8(i8 %i.bl, i8 %i.bk) ; 2 uses
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !306 ; 2 uses
  %i.bq = icmp ult i8 %i.bp, %i.bo
  %spec.select.i.i.i.i.3 = select i1 %i.bq, ptr %i.bn, ptr %spec.select.i.i.i.i.2 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  %.not.i.i.i.i.3 = icmp eq ptr %i.br, %i.al
  %i.bs = tail call i8 @llvm.umin.i8(i8 %i.bp, i8 %i.bo)
  br i1 %.not.i.i.i.i.3, label %_ZNSt3__111min_elementB8nn180100INS_11__wrap_iterIPhEEEET_S4_S4_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !685

_ZNSt3__111min_elementB8nn180100INS_11__wrap_iterIPhEEEET_S4_S4_.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.g
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.aj, %bb.g ], [ %spec.select.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %spec.select.i.i.i.i.3, %.lr.ph.i.i.i.i ]
  %i.bt = load i8, ptr %.sroa.0.0.i.i.i.i, align 1, !tbaa !306
  %i.bu = zext i8 %i.bt to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !312
  %i.bx = icmp ugt i32 %i.bw, %i.bu
  br i1 %i.bx, label %.preheader, label %.critedge

.preheader:                                       ; preds = %_ZNSt3__111min_elementB8nn180100INS_11__wrap_iterIPhEEEET_S4_S4_.exit
  %.not46 = icmp eq ptr %i.al, %i.aj
  br i1 %.not46, label %._crit_edge44, label %.lr.ph43

._crit_edge44.loopexit:                           ; preds = %bb.k
  %i.by = trunc i64 %i.cz to i32
  br label %._crit_edge44

._crit_edge44:                                    ; preds = %._crit_edge44.loopexit, %.preheader
  %.lcssa = phi i32 [ 0, %.preheader ], [ %i.by, %._crit_edge44.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %0, ptr %2, align 8, !tbaa !444
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %0, ptr %3, align 8, !tbaa !446
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !99 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge44
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store ptr null, ptr %1, align 8, !tbaa !377
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %1, ptr %i.cc, align 8, !tbaa !378
  %i.cd = call fastcc i32 @"_ZN3jxl10ThreadPool3RunIZNS_12FrameDecoder5FlushEvE3$_0ZNS2_5FlushEvE3$_1EENS_6StatusEjjRKT_RKT0_PKc"(ptr null, ptr nonnull %1, i32 noundef %.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %"_ZN3jxl9RunOnPoolIZNS_12FrameDecoder5FlushEvE3$_0ZNS1_5FlushEvE3$_1EENS_6StatusEPNS_10ThreadPoolEjjRKT_RKT0_PKc.exit"

bb.i:                                             ; preds = %._crit_edge44
  %.val.i = load ptr, ptr %i.ca, align 8
  %i.ce = getelementptr i8, ptr %i.ca, i64 8
  %.val11.i = load ptr, ptr %i.ce, align 8
  %i.cf = call fastcc i32 @"_ZN3jxl10ThreadPool3RunIZNS_12FrameDecoder5FlushEvE3$_0ZNS2_5FlushEvE3$_1EENS_6StatusEjjRKT_RKT0_PKc"(ptr %.val.i, ptr %.val11.i, i32 noundef %.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #22
  br label %"_ZN3jxl9RunOnPoolIZNS_12FrameDecoder5FlushEvE3$_0ZNS1_5FlushEvE3$_1EENS_6StatusEPNS_10ThreadPoolEjjRKT_RKT0_PKc.exit"

"_ZN3jxl9RunOnPoolIZNS_12FrameDecoder5FlushEvE3$_0ZNS1_5FlushEvE3$_1EENS_6StatusEPNS_10ThreadPoolEjjRKT_RKT0_PKc.exit": ; preds = %bb.h, %bb.i
  %.sroa.0.0.i20 = phi i32 [ %i.cd, %bb.h ], [ %i.cf, %bb.i ]
  %i.cg = icmp eq i32 %.sroa.0.0.i20, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %i.cg, label %.critedge, label %_ZN3jxl12FrameDecoder14AllocateOutputEv.exit

.lr.ph43:                                         ; preds = %.preheader, %bb.k
  %i.ch = phi ptr [ %i.cu, %bb.k ], [ %i.aj, %.preheader ] ; 2 uses
  %i.ci = phi ptr [ %i.cv, %bb.k ], [ %i.al, %.preheader ]
  %.01842 = phi i64 [ %i.cw, %bb.k ], [ 0, %.preheader ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.01842
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !306
  %i.cl = zext i8 %i.ck to i32
  %i.cm = load i32, ptr %i.bv, align 8, !tbaa !312
  %i.cn = icmp ugt i32 %i.cm, %i.cl
  br i1 %i.cn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph43
  %i.co = load ptr, ptr %0, align 8, !tbaa !98
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 3104
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !393 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !395
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  tail call void %i.ct(ptr noundef nonnull align 8 dereferenceable(256) %i.cq, i64 noundef %.01842) #21
  %.pre = load ptr, ptr %i.ak, align 8, !tbaa !354
  %.pre48 = load ptr, ptr %i.ai, align 8, !tbaa !353
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph43, %bb.j
  %i.cu = phi ptr [ %i.ch, %.lr.ph43 ], [ %.pre48, %bb.j ] ; 2 uses
  %i.cv = phi ptr [ %i.ci, %.lr.ph43 ], [ %.pre, %bb.j ] ; 2 uses
  %i.cw = add nuw i64 %.01842, 1                  ; 2 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 2 uses
  %i.da = icmp ult i64 %i.cw, %i.cz
  br i1 %i.da, label %.lr.ph43, label %._crit_edge44.loopexit, !llvm.loop !686

.critedge:                                        ; preds = %"_ZN3jxl9RunOnPoolIZNS_12FrameDecoder5FlushEvE3$_0ZNS1_5FlushEvE3$_1EENS_6StatusEPNS_10ThreadPoolEjjRKT_RKT0_PKc.exit", %_ZNSt3__111min_elementB8nn180100INS_11__wrap_iterIPhEEEET_S4_S4_.exit
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.dc = load ptr, ptr %0, align 8, !tbaa !98
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !99
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.df = load i8, ptr %13, align 8, !tbaa !234, !range !297, !noundef !298
  %i.dg = trunc nuw i8 %i.df to i1
  %i.dh = call i32 @_ZN3jxl19ModularFrameDecoder16FinalizeDecodingERKNS_11FrameHeaderEPNS_18PassesDecoderStateEPNS_10ThreadPoolEb(ptr noundef nonnull align 8 dereferenceable(592) %i.db, ptr noundef nonnull align 8 dereferenceable(576) %i.a, ptr noundef %i.dc, ptr noundef %i.de, i1 noundef zeroext %i.dg) #21
  br label %_ZN3jxl12FrameDecoder14AllocateOutputEv.exit

_ZN3jxl12FrameDecoder14AllocateOutputEv.exit:     ; preds = %"_ZN3jxl9RunOnPoolIZNS_12FrameDecoder5FlushEvE3$_0ZNS1_5FlushEvE3$_1EENS_6StatusEPNS_10ThreadPoolEjjRKT_RKT0_PKc.exit", %.critedge, %bb.e, %bb.c, %9, %4
  %.sroa.025.0 = phi i32 [ 0, %9 ], [ %i.dh, %.critedge ], [ %i.ag, %bb.e ], [ 1, %4 ], [ 0, %bb.c ], [ 1, %"_ZN3jxl9RunOnPoolIZNS_12FrameDecoder5FlushEvE3$_0ZNS1_5FlushEvE3$_1EENS_6StatusEPNS_10ThreadPoolEjjRKT_RKT0_PKc.exit" ]
  ret i32 %.sroa.025.0
}

declare i32 @_ZN3jxl19ModularFrameDecoder16FinalizeDecodingERKNS_11FrameHeaderEPNS_18PassesDecoderStateEPNS_10ThreadPoolEb(ptr noundef nonnull align 8 dereferenceable(592), ptr noundef nonnull align 8 dereferenceable(576), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZN3jxl12FrameDecoder7SavedAsERKNS_11FrameHeaderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(576) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !688
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.e = load i32, ptr %i.d, align 4, !tbaa !404
  %i.f = add i32 %i.e, -1
  %i.g = shl i32 16, %i.f
  br label %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit.thread4

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.i = load i8, ptr %i.h, align 8, !tbaa !396, !range !297, !noundef !298
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit.thread4, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.l = load i32, ptr %i.k, align 8, !tbaa !397
  %i.m = icmp eq i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = icmp ne i32 %i.o, 0
  %or.cond = select i1 %i.m, i1 true, i1 %i.p
  %i.q = shl nuw i32 1, %i.o
  %spec.select = select i1 %or.cond, i32 %i.q, i32 0
  br label %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit.thread4

_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit.thread4: ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.c ], [ %spec.select, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK3jxl12FrameDecoder13HasEverythingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1528) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.b = load i8, ptr %i.a, align 8, !tbaa !351, !range !297, !noundef !298
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1449
  %i.e = load i8, ptr %i.d, align 1, !range !297
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %_ZNK3jxl12FrameDecoder18HasDcGroupToDecodeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !353  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !354  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 1 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not7.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.01.04.i.i = phi ptr [ %i.k, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.l = load i8, ptr %.sroa.01.04.i.i, align 1, !tbaa !306
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %_ZNK3jxl12FrameDecoder18HasDcGroupToDecodeEv.exit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !353  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !354  ; 2 uses
  %.not1416 = icmp eq ptr %i.o, %i.q
  br i1 %.not1416, label %_ZNK3jxl12FrameDecoder18HasDcGroupToDecodeEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.s = load i32, ptr %i.r, align 8, !tbaa !312
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph
  %.sroa.010.017 = phi ptr [ %i.o, %.lr.ph ], [ %i.v, %bb.d ] ; 2 uses
  %i.t = load i8, ptr %.sroa.010.017, align 1, !tbaa !306
  %i.u = zext i8 %i.t to i32
  %.not.not = icmp ule i32 %i.s, %i.u             ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.010.017, i64 1 ; 2 uses
  %.not14 = icmp ne ptr %i.v, %i.q
  %or.cond29.not = select i1 %.not.not, i1 %.not14, i1 false
  br i1 %or.cond29.not, label %bb.d, label %_ZNK3jxl12FrameDecoder18HasDcGroupToDecodeEv.exit

_ZNK3jxl12FrameDecoder18HasDcGroupToDecodeEv.exit: ; preds = %.lr.ph.i.i, %bb.d, %.loopexit, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ %.not.not, %bb.d ], [ true, %.loopexit ], [ false, %.lr.ph.i.i ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK3jxl12FrameDecoder10ReferencesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1528) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.b = load i8, ptr %i.a, align 8, !tbaa !234, !range !297, !noundef !298
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNK3jxl12FrameDecoder13HasEverythingEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.e = load i8, ptr %i.d, align 8, !tbaa !351, !range !297, !noundef !298
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1449
  %i.h = load i8, ptr %i.g, align 1, !range !297
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond.i = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond.i, label %bb.c, label %_ZNK3jxl12FrameDecoder13HasEverythingEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !353  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !354  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i.i, i64 1 ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not7.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !2

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.01.04.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %i.o = load i8, ptr %.sroa.01.04.i.i.i, align 1, !tbaa !306
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %_ZNK3jxl12FrameDecoder13HasEverythingEv.exit.thread, label %bb.d

.loopexit.i:                                      ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !353  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !354  ; 2 uses
  %.not1416.i = icmp eq ptr %i.r, %i.t
  br i1 %.not1416.i, label %_ZNK3jxl12FrameDecoder13HasEverythingEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.v = load i32, ptr %i.u, align 8, !tbaa !312
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 1 ; 2 uses
  %.not14.i = icmp eq ptr %i.w, %i.t
  br i1 %.not14.i, label %_ZNK3jxl12FrameDecoder13HasEverythingEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.010.017.i = phi ptr [ %i.r, %.lr.ph.i ], [ %i.w, %bb.e ] ; 2 uses
  %i.x = load i8, ptr %.sroa.010.017.i, align 1, !tbaa !306
  %i.y = zext i8 %i.x to i32
  %.not.not.i = icmp ugt i32 %i.v, %i.y
  br i1 %.not.not.i, label %_ZNK3jxl12FrameDecoder13HasEverythingEv.exit.thread, label %bb.e

_ZNK3jxl12FrameDecoder13HasEverythingEv.exit:     ; preds = %bb.e, %.loopexit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !317
  switch i32 %i.aa, label %.loopexit [
    i32 0, label %bb.g
    i32 3, label %bb.g
  ]

bb.g:                                             ; preds = %_ZNK3jxl12FrameDecoder13HasEverythingEv.exit, %_ZNK3jxl12FrameDecoder13HasEverythingEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !689, !range !297, !noundef !298
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !442
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %.thread, label %.thread45

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !690
  %i.ai = shl nuw i32 1, %i.ah                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !249 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !250 ; 2 uses
  %.not2527 = icmp eq ptr %i.ak, %i.am
  br i1 %.not2527, label %.loopexit, label %.lr.ph.split.us

.thread45:                                        ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !690
  %i.ap = shl nuw i32 1, %i.ao                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 392
end_hunk_0
