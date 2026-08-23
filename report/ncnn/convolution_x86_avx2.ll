Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx2?download=true
inline.NumInlined: 86
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.omp_outlined:bb.a
  br i1 %i.qn, label %.lr.ph389, label %._crit_edge390, !llvm.loop !672

._crit_edge390:                                   ; preds = %._crit_edge385, %.preheader
  %i.qo = phi i32 [ %i.jb, %.preheader ], [ %i.ob, %._crit_edge385 ]
  %i.qp = phi i32 [ %i.jc, %.preheader ], [ %i.ob, %._crit_edge385 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond433.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond433.not, label %._crit_edge395, label %bb.c

._crit_edge395:                                   ; preds = %._crit_edge390, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge395, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn47conv3x3s1_winograd43_transform_kernel_int8_avx2ERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4) local_unnamed_addr #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %i.a, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %3, ptr %i.b, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 %2, ptr %i.c, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !100
  call fastcc void @_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i(i32 noundef %3, i32 noundef 0, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, i32 noundef %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  %i.k = load i32, ptr %i.d, align 4, !tbaa !92   ; 3 uses
  %i.l = add i32 %3, -1
  %i.m = add i32 %i.l, %i.k
  %i.n = sdiv i32 %i.m, %i.k                      ; 2 uses
  store i32 %i.n, ptr %i.g, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.o = load i32, ptr %i.f, align 4, !tbaa !92   ; 3 uses
  %i.p = mul i32 %i.o, %i.k                       ; 2 uses
  %i.q = mul i32 %i.p, 36
  %i.r = load i32, ptr %i.i, align 4, !tbaa !100
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 0, ptr %i.u, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.t, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %i.q, i32 noundef 1, i32 noundef %i.r, i64 noundef 4, ptr noundef null)
  %i.v = add i32 %2, -1
  %i.w = add i32 %i.v, %i.o
  %i.x = sdiv i32 %i.w, %i.o
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.p, i32 noundef 36, i32 noundef %i.x, i32 noundef %i.n, i64 noundef 4, ptr noundef null)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.y = load i32, ptr %i.i, align 4, !tbaa !100
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.h, i32 %i.y)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %5, ptr nonnull %i.c, ptr nonnull %i.f, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %1)
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !482  ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = atomicrmw add ptr %i.z, i32 -1 acq_rel, align 4
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.d, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.exit

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !483 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %5, align 8, !tbaa !9     ; 3 uses
  br i1 %.not3.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !484
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.ad)
          to label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.exit unwind label %bb.h, !inline_history !486

bb.f:                                             ; preds = %bb.d
  %.not.i14.i = icmp eq ptr %i.ad, null
  br i1 %.not.i14.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.ad) #8
  br label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.exit

bb.h:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #23
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !482 ; 2 uses
  %.not.i9.i = icmp eq ptr %i.ak, null
  br i1 %.not.i9.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = atomicrmw add ptr %i.ak, i32 -1 acq_rel, align 4
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.k, label %_ZN4ncnn3MatD2Ev.exit.i

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.t, align 8, !tbaa !483 ; 3 uses
  %.not3.i10.i = icmp eq ptr %i.an, null
  %i.ao = load ptr, ptr %5, align 8, !tbaa !9     ; 3 uses
  br i1 %.not3.i10.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !484
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %i.ao)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.o, !inline_history !486

bb.m:                                             ; preds = %bb.k
  %.not.i13.i = icmp eq ptr %i.ao, null
  br i1 %.not.i13.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.ao) #8
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.o:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  resume { ptr, i32 } %i.aj

_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.exit: ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !92     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !92
  %i.h = load i32, ptr %0, align 4, !tbaa !92     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !92
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !92
  %i.k = load i32, ptr %i.a, align 4, !tbaa !92   ; 2 uses
  %.not110 = icmp sgt i32 %i.k, %i.j
  br i1 %.not110, label %._crit_edge, label %.lr.ph112

.lr.ph112:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph112, %_ZN4ncnn3MatD2Ev.exit
  %.033111 = phi i32 [ %i.k, %.lr.ph112 ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.aa = mul i32 %.033111, 9
  %i.ab = load i32, ptr %3, align 4, !tbaa !92    ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %.033111             ; 3 uses
  %i.ad = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc34 unwind label %bb.e

.noexc34:                                         ; preds = %bb.c
  %i.ae = load ptr, ptr %4, align 8, !tbaa !9, !noalias !673
  %i.af = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !673
  %i.ag = sext i32 %i.ad to i64
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = load i64, ptr %i.m, align 8, !tbaa !19, !noalias !673
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %5, align 4, !tbaa !92    ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %.noexc34
  %.pre = load i32, ptr %6, align 4, !tbaa !92
  %i.an = mul i32 %i.ab, %i.aa
  br label %.lr.ph

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.noexc, %.noexc34
  %i.ao = add i32 %.033111, 1
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !92
  %.not.not = icmp slt i32 %.033111, %i.ap
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.noexc
  %i.aq = phi i32 [ %i.awt, %.noexc ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %i.ar = phi i32 [ %i.awv, %.noexc ], [ %i.al, %.lr.ph.preheader ]
  %.0109 = phi i32 [ %i.awu, %.noexc ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.as = load i32, ptr %7, align 4, !tbaa !92
  %i.at = sub nsw i32 %i.as, %i.ac
  %i.au = load i32, ptr %3, align 4, !tbaa !92    ; 2 uses
  %.sroa.speculated68 = call i32 @llvm.smin.i32(i32 %i.au, i32 %i.at) ; 3 uses
  %i.av = sub i32 %i.ar, %.0109
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.av) ; 4 uses
  %.val52 = load ptr, ptr %8, align 8             ; 3 uses
  %i.aw = icmp sgt i32 %.sroa.speculated68, 0
  br i1 %i.aw, label %.preheader11.lr.ph.i, label %.noexc

.preheader11.lr.ph.i:                             ; preds = %.lr.ph
  %i.ax = load i32, ptr %9, align 4, !tbaa !92    ; 3 uses
  %i.ay = icmp sgt i32 %.sroa.speculated, 0
  %i.az = mul i32 %i.ax, 9
  br i1 %i.ay, label %.preheader11.preheader.i, label %.noexc

.preheader11.preheader.i:                         ; preds = %.preheader11.lr.ph.i
  %i.ba = sext i32 %.0109 to i64                  ; 11 uses
  %wide.trip.count27.i = zext nneg i32 %.sroa.speculated68 to i64
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 5 uses
  %i.bb = mul nuw nsw i64 %wide.trip.count.i, 72
  %i.bc = mul nsw i64 %i.ba, 9
  %scevgep117 = getelementptr i8, ptr %.val52, i64 %i.bc
  %i.bd = mul i32 %i.an, %i.ax
  %i.be = mul i32 %i.ax, 9
  %i.bf = add nsw i64 %i.ba, %wide.trip.count.i
  %i.bg = mul nsw i64 %i.bf, 9
  %scevgep119 = getelementptr i8, ptr %.val52, i64 %i.bg
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %i.bh = mul nuw nsw i64 %n.vec, 72
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.preheader11.i

.preheader11.i:                                   ; preds = %._crit_edge.i, %.preheader11.preheader.i
  %indvars.iv24.i = phi i64 [ 0, %.preheader11.preheader.i ], [ %indvars.iv.next25.i, %._crit_edge.i ] ; 3 uses
  %.019.i = phi ptr [ %i.ak, %.preheader11.preheader.i ], [ %.lcssa, %._crit_edge.i ] ; 13 uses
  %i.bi = trunc i64 %indvars.iv24.i to i32
  %i.bj = add i32 %i.ac, %i.bi
  %i.bk = mul i32 %i.az, %i.bj
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %.val52, i64 %i.bl ; 9 uses
  br i1 %min.iters.check, label %.preheader.preheader.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader11.i
  %i.bn = trunc i64 %indvars.iv24.i to i32
  %i.bo = mul i32 %i.be, %i.bn
  %i.bp = add i32 %i.bo, %i.bd
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %scevgep120 = getelementptr i8, ptr %scevgep119, i64 %i.bq
  %scevgep118 = getelementptr i8, ptr %scevgep117, i64 %i.bq
  %scevgep = getelementptr i8, ptr %.019.i, i64 %i.bb
  %bound0 = icmp ult ptr %.019.i, %scevgep120
  %bound1 = icmp ult ptr %scevgep118, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.preheader.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.br = getelementptr i8, ptr %.019.i, i64 %i.bh ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.bs = or disjoint i64 %index, 1
  %i.bt = or disjoint i64 %index, 2
  %i.bu = or disjoint i64 %index, 3
  %i.bv = or disjoint i64 %index, 4
  %i.bw = or disjoint i64 %index, 5
  %i.bx = or disjoint i64 %index, 6
  %i.by = or disjoint i64 %index, 7
  %i.bz = mul i64 %index, 72                      ; 8 uses
  %next.gep = getelementptr i8, ptr %.019.i, i64 %i.bz ; 36 uses
  %i.ca = getelementptr i8, ptr %.019.i, i64 %i.bz ; 36 uses
  %next.gep121 = getelementptr i8, ptr %i.ca, i64 72
  %i.cb = getelementptr i8, ptr %.019.i, i64 %i.bz ; 36 uses
  %next.gep122 = getelementptr i8, ptr %i.cb, i64 144
  %i.cc = getelementptr i8, ptr %.019.i, i64 %i.bz ; 36 uses
  %next.gep123 = getelementptr i8, ptr %i.cc, i64 216
  %i.cd = getelementptr i8, ptr %.019.i, i64 %i.bz ; 36 uses
  %next.gep124 = getelementptr i8, ptr %i.cd, i64 288
  %i.ce = getelementptr i8, ptr %.019.i, i64 %i.bz ; 36 uses
  %next.gep125 = getelementptr i8, ptr %i.ce, i64 360
  %i.cf = getelementptr i8, ptr %.019.i, i64 %i.bz ; 36 uses
  %next.gep126 = getelementptr i8, ptr %i.cf, i64 432
  %i.cg = getelementptr i8, ptr %.019.i, i64 %i.bz ; 36 uses
  %next.gep127 = getelementptr i8, ptr %i.cg, i64 504
  %i.ch = add nsw i64 %index, %i.ba
  %i.ci = add nsw i64 %i.bs, %i.ba
  %i.cj = add nsw i64 %i.bt, %i.ba
  %i.ck = add nsw i64 %i.bu, %i.ba
  %i.cl = add nsw i64 %i.bv, %i.ba
  %i.cm = add nsw i64 %i.bw, %i.ba
  %i.cn = add nsw i64 %i.bx, %i.ba
  %i.co = add nsw i64 %i.by, %i.ba
  %i.cp = mul nsw i64 %i.ch, 9
  %i.cq = mul nsw i64 %i.ci, 9
  %i.cr = mul nsw i64 %i.cj, 9
  %i.cs = mul nsw i64 %i.ck, 9
  %i.ct = mul nsw i64 %i.cl, 9
  %i.cu = mul nsw i64 %i.cm, 9
  %i.cv = mul nsw i64 %i.cn, 9
  %i.cw = mul nsw i64 %i.co, 9
  %i.cx = getelementptr inbounds i8, ptr %i.bm, i64 %i.cp ; 9 uses
  %i.cy = getelementptr inbounds i8, ptr %i.bm, i64 %i.cq ; 9 uses
  %i.cz = getelementptr inbounds i8, ptr %i.bm, i64 %i.cr ; 9 uses
  %i.da = getelementptr inbounds i8, ptr %i.bm, i64 %i.cs ; 9 uses
  %i.db = getelementptr inbounds i8, ptr %i.bm, i64 %i.ct ; 9 uses
  %i.dc = getelementptr inbounds i8, ptr %i.bm, i64 %i.cu ; 9 uses
  %i.dd = getelementptr inbounds i8, ptr %i.bm, i64 %i.cv ; 9 uses
  %i.de = getelementptr inbounds i8, ptr %i.bm, i64 %i.cw ; 9 uses
  %i.df = load i8, ptr %i.cx, align 1, !tbaa !20, !alias.scope !676
  %i.dg = load i8, ptr %i.cy, align 1, !tbaa !20, !alias.scope !676
  %i.dh = load i8, ptr %i.cz, align 1, !tbaa !20, !alias.scope !676
  %i.di = load i8, ptr %i.da, align 1, !tbaa !20, !alias.scope !676
  %i.dj = load i8, ptr %i.db, align 1, !tbaa !20, !alias.scope !676
  %i.dk = load i8, ptr %i.dc, align 1, !tbaa !20, !alias.scope !676
  %i.dl = load i8, ptr %i.dd, align 1, !tbaa !20, !alias.scope !676
  %i.dm = load i8, ptr %i.de, align 1, !tbaa !20, !alias.scope !676
  %i.dn = insertelement <8 x i8> poison, i8 %i.df, i64 0
  %i.do = insertelement <8 x i8> %i.dn, i8 %i.dg, i64 1
  %i.dp = insertelement <8 x i8> %i.do, i8 %i.dh, i64 2
  %i.dq = insertelement <8 x i8> %i.dp, i8 %i.di, i64 3
  %i.dr = insertelement <8 x i8> %i.dq, i8 %i.dj, i64 4
  %i.ds = insertelement <8 x i8> %i.dr, i8 %i.dk, i64 5
  %i.dt = insertelement <8 x i8> %i.ds, i8 %i.dl, i64 6
  %i.du = insertelement <8 x i8> %i.dt, i8 %i.dm, i64 7 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.ed = load i8, ptr %i.dv, align 1, !tbaa !20, !alias.scope !676
  %i.ee = load i8, ptr %i.dw, align 1, !tbaa !20, !alias.scope !676
  %i.ef = load i8, ptr %i.dx, align 1, !tbaa !20, !alias.scope !676
  %i.eg = load i8, ptr %i.dy, align 1, !tbaa !20, !alias.scope !676
  %i.eh = load i8, ptr %i.dz, align 1, !tbaa !20, !alias.scope !676
  %i.ei = load i8, ptr %i.ea, align 1, !tbaa !20, !alias.scope !676
  %i.ej = load i8, ptr %i.eb, align 1, !tbaa !20, !alias.scope !676
  %i.ek = load i8, ptr %i.ec, align 1, !tbaa !20, !alias.scope !676
  %i.el = insertelement <8 x i8> poison, i8 %i.ed, i64 0
  %i.em = insertelement <8 x i8> %i.el, i8 %i.ee, i64 1
  %i.en = insertelement <8 x i8> %i.em, i8 %i.ef, i64 2
  %i.eo = insertelement <8 x i8> %i.en, i8 %i.eg, i64 3
  %i.ep = insertelement <8 x i8> %i.eo, i8 %i.eh, i64 4
  %i.eq = insertelement <8 x i8> %i.ep, i8 %i.ei, i64 5
  %i.er = insertelement <8 x i8> %i.eq, i8 %i.ej, i64 6
  %i.es = insertelement <8 x i8> %i.er, i8 %i.ek, i64 7
  %i.et = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.ew = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  %i.ex = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dd, i64 2
  %i.fa = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  %i.fb = load i8, ptr %i.et, align 1, !tbaa !20, !alias.scope !676
  %i.fc = load i8, ptr %i.eu, align 1, !tbaa !20, !alias.scope !676
  %i.fd = load i8, ptr %i.ev, align 1, !tbaa !20, !alias.scope !676
  %i.fe = load i8, ptr %i.ew, align 1, !tbaa !20, !alias.scope !676
  %i.ff = load i8, ptr %i.ex, align 1, !tbaa !20, !alias.scope !676
  %i.fg = load i8, ptr %i.ey, align 1, !tbaa !20, !alias.scope !676
  %i.fh = load i8, ptr %i.ez, align 1, !tbaa !20, !alias.scope !676
  %i.fi = load i8, ptr %i.fa, align 1, !tbaa !20, !alias.scope !676
  %i.fj = insertelement <8 x i8> poison, i8 %i.fb, i64 0
  %i.fk = insertelement <8 x i8> %i.fj, i8 %i.fc, i64 1
  %i.fl = insertelement <8 x i8> %i.fk, i8 %i.fd, i64 2
  %i.fm = insertelement <8 x i8> %i.fl, i8 %i.fe, i64 3
  %i.fn = insertelement <8 x i8> %i.fm, i8 %i.ff, i64 4
  %i.fo = insertelement <8 x i8> %i.fn, i8 %i.fg, i64 5
  %i.fp = insertelement <8 x i8> %i.fo, i8 %i.fh, i64 6
  %i.fq = insertelement <8 x i8> %i.fp, i8 %i.fi, i64 7 ; 2 uses
  %i.fr = sext <8 x i8> %i.du to <8 x i32>        ; 3 uses
  %i.fs = sext <8 x i8> %i.du to <8 x i16>        ; 2 uses
  %i.ft = mul nsw <8 x i16> %i.fs, splat (i16 6)
  %i.fu = mul nsw <8 x i32> %i.fr, splat (i32 -4) ; 2 uses
  %i.fv = sext <8 x i8> %i.es to <8 x i32>        ; 2 uses
  %i.fw = shl nsw <8 x i32> %i.fv, splat (i32 2)  ; 2 uses
  %i.fx = sext <8 x i8> %i.fq to <8 x i32>
  %i.fy = shl nsw <8 x i32> %i.fx, splat (i32 2)  ; 4 uses
  %i.fz = add nsw <8 x i32> %i.fw, %i.fy
  %i.ga = sub nsw <8 x i32> %i.fu, %i.fz          ; 4 uses
  %i.gb = trunc nsw <8 x i32> %i.ga to <8 x i16>
  %i.gc = add nsw <8 x i32> %i.fw, %i.fu
  %i.gd = sub nsw <8 x i32> %i.gc, %i.fy          ; 4 uses
  %i.ge = trunc nsw <8 x i32> %i.gd to <8 x i16>
  %i.gf = shl nsw <8 x i32> %i.fv, splat (i32 1)  ; 2 uses
  %i.gg = add nsw <8 x i32> %i.gf, %i.fr
  %i.gh = add nsw <8 x i32> %i.gg, %i.fy          ; 4 uses
  %i.gi = trunc nsw <8 x i32> %i.gh to <8 x i16>
  %i.gj = sub nsw <8 x i32> %i.fr, %i.gf
  %i.gk = add nsw <8 x i32> %i.gj, %i.fy          ; 4 uses
end_hunk_0
