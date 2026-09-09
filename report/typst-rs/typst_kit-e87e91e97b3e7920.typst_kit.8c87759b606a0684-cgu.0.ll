Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_kit-e87e91e97b3e7920.typst_kit.8c87759b606a0684-cgu.0?download=true
inline.NumInlined: 3956
inline.NumDeleted: 1750
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 76
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvNtNtCs1xwejQucwHj_5alloc2io4copy4copyINtNtB6_5boxed3BoxDNtNtB4_4read4ReadEL_EQIBE_DNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1t_6marker4SendEL_EECsc4241EHy6Do_9typst_kit:bb.a
  %.val.i.i.i.i = load ptr, ptr %.0.val1, align 8, !noalias !2784, !nonnull !17, !noundef !17
  %.val1.i.i.i.i = load ptr, ptr %i.k, align 8, !noalias !2784, !nonnull !17, !align !25, !noundef !17
  %i.ak = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !invariant.load !17, !noalias !2785, !nonnull !17
  %i.am = call noundef ptr %i.al(ptr noundef nonnull %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef range(i64 0, -9223372036854775808) %i.ag) #50, !inline_history !2777 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not10.i.i.i, label %bb.e, label %.loopexit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.an = add i64 %i.ag, %.sroa.02.0.ph.i.i.i
  store i64 0, ptr %i.f, align 8
  %.pre.i.i.i = load ptr, ptr %i.c, align 8
  br label %.outer.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.d, %bb.f
  %.sroa.4.1.in.i.i.i = phi ptr [ %i.n, %bb.f ], [ %i.am, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i: ; preds = %.noexc.i.i.i
  br i1 %i.v, label %.thread10.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i, %.split.i.i.i, %.split8.i.i.i, %.split7.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit.i.i.i

.thread10.i.i.i:                                  ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i, %.split8.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2786
  br label %bb.i

bb.g:                                             ; preds = %.split7.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2787
  %i.ao = and i64 %i.o, 1095216660480
  %i.ap = icmp ne i64 %i.ao, 1095216660480
  call void @llvm.assume(i1 %i.x)
  call void @llvm.assume(i1 %i.ap)
  br label %bb.i

bb.h:                                             ; preds = %.split.i.i.i
  %i.aq = getelementptr i8, ptr %i.n, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2788
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ]
  store ptr %i.aq, ptr %i.j, align 8, !alias.scope !2789, !noalias !2788
  store i8 3, ptr %i.a, align 8, !alias.scope !2789, !noalias !2788
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread10.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ar = load ptr, ptr %i.c, align 8, !nonnull !17, !noundef !17
  %i.as = call noundef ptr %i.i(ptr noundef nonnull %.0.val, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.c) #50, !inline_history !2772 ; 3 uses
  store ptr %i.as, ptr %i.b, align 8
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.j:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.thr_comm.i.i.i

bb.k:                                             ; preds = %.noexc.i.i.i, %bb.b
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #46
          to label %bb.j unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.m:                                             ; preds = %bb.c, %.loopexit.i.i.i
  %.sroa.4.0.i.i.i = phi ptr [ %.sroa.4.1.in.i.i.i, %.loopexit.i.i.i ], [ %i.ai, %bb.c ]
  %.sroa.0.0.i.i.i = phi i64 [ 1, %.loopexit.i.i.i ], [ 0, %bb.c ]
  %i.au = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i.i, 0
  %i.av = insertvalue { i64, ptr } %i.au, ptr %.sroa.4.0.i.i.i, 1
  ret { i64, ptr } %i.av
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !17 ; 8 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = load i64, ptr %1, align 8, !range !21, !noundef !17 ; 6 uses
  %i.h = trunc nuw i64 %2 to i1                   ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %3, -1025
  br i1 %i.i, label %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit.thread, label %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit, !prof !23

_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit: ; preds = %bb.b
  %i.j = add nuw i64 %3, 1024                     ; 3 uses
  %i.k = and i64 %i.j, 8191                       ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = sub i64 %3, %i.k
  %i.n = add i64 %i.m, 9216                       ; 2 uses
  %.not = icmp ult i64 %i.n, %i.j
  %.sroa.5.1.i = select i1 %.not, i64 8192, i64 %i.n
  %.sroa.053.1 = select i1 %i.l, i64 %i.j, i64 %.sroa.5.1.i ; 2 uses
  %i.o = icmp eq i64 %3, 0
  br i1 %i.o, label %bb.c, label %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit
  %.sroa.053.0 = phi i64 [ %.sroa.053.1, %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit ], [ 8192, %bb.a ] ; 2 uses
  %i.p = sub nsw i64 %i.g, %i.e
  %i.q = icmp ult i64 %i.p, 32
  br i1 %i.q, label %bb.d, label %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit.thread

_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit.thread: ; preds = %._RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit
  %.pre190 = phi i64 [ %.pre190.pre, %._RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit.thread_crit_edge ], [ %i.g, %bb.c ], [ %i.g, %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit ], [ %i.g, %bb.b ]
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit.thread_crit_edge ], [ %i.e, %bb.c ], [ %i.e, %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit ], [ %i.e, %bb.b ]
  %.sroa.053.2 = phi i64 [ %.sroa.053.0, %._RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit.thread_crit_edge ], [ %.sroa.053.0, %bb.c ], [ %.sroa.053.1, %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit ], [ 8192, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  br label %.outer.outer

bb.d:                                             ; preds = %bb.c
  %i.u = tail call fastcc { i64, ptr } @_RINvNvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(224) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.u, 0
  %i.w = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.x = trunc nuw i64 %i.v to i1
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = ptrtoint ptr %i.w to i64
  br label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsc4241EHy6Do_9typst_kit.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.z = icmp eq ptr %i.w, null
  br i1 %i.z, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsc4241EHy6Do_9typst_kit.exit.thread, label %._RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit.thread_crit_edge

._RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit.thread_crit_edge: ; preds = %bb.f
  %.pre.pre = load i64, ptr %i.d, align 8
  %.pre190.pre = load i64, ptr %1, align 8, !range !21
  br label %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit.thread

._crit_edge:                                      ; preds = %bb.af, %.outer
  %i.aa = phi i64 [ %i.dj, %.outer ], [ %i.dy, %bb.af ] ; 6 uses
  %.sroa.027.2.lcssa = phi i64 [ %.sroa.027.2.ph, %.outer ], [ %i.dv, %bb.af ] ; 4 uses
  %.lcssa113 = phi i64 [ %i.dk, %.outer ], [ %i.dv, %bb.af ] ; 16 uses
  %.lcssa = phi i1 [ %i.dm, %.outer ], [ %i.ea, %bb.af ]
  br i1 %.lcssa, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %.outer, %bb.af
  %i.ab = call fastcc { i64, ptr } @_RINvNvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(224) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0
  %i.ad = extractvalue { i64, ptr } %i.ab, 1      ; 2 uses
  %i.ae = trunc nuw i64 %i.ac to i1
  br i1 %i.ae, label %bb.ac, label %bb.ad

bb.g:                                             ; preds = %._crit_edge
  %i.af = icmp sgt i64 %.lcssa113, -1
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw i64 %.lcssa113, 32
  %i.ah = icmp ugt i64 %.sroa.027.2.lcssa, %i.ag
  br i1 %i.ah, label %bb.k, label %._crit_edge195

._crit_edge195:                                   ; preds = %bb.g
  %.pre196 = sub nsw i64 %i.aa, %.lcssa113
  br label %.thread202

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !2807)
  call void @llvm.experimental.noalias.scope.decl(metadata !2808)
  %i.ai = icmp ugt i64 %.lcssa113, -33
  br i1 %i.ai, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsc4241EHy6Do_9typst_kit.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = add nuw i64 %.lcssa113, 32
  %i.ak = shl nuw i64 %i.aa, 1
  %..i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.aj, i64 %i.ak) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2809
  %.val13.i.i = load ptr, ptr %i.r, align 8, !alias.scope !2809
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, i64 %i.aa, ptr %.val13.i.i, i64 noundef %..i.i.i, i64 noundef 1, i64 noundef 1), !noalias !2809
  %i.al = load i64, ptr %i.b, align 8, !range !19, !noalias !2809, !noundef !17
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2809
  br label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsc4241EHy6Do_9typst_kit.exit.thread

.thread:                                          ; preds = %bb.i
  %i.an = load ptr, ptr %i.s, align 8, !noalias !2809, !nonnull !17, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2809
  store ptr %i.an, ptr %i.r, align 8, !alias.scope !2809
  %i.ao = icmp sgt i64 %..i.i.i, -1
  call void @llvm.assume(i1 %i.ao)
  store i64 %..i.i.i, ptr %1, align 8, !alias.scope !2809
  %.pre.i = sub nsw i64 %..i.i.i, %.lcssa113      ; 2 uses
  %i.ap = icmp ugt i64 %.pre.i, 31
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp sgt i64 %.lcssa113, -1
  call void @llvm.assume(i1 %i.aq)
  br label %.thread202

.thread202:                                       ; preds = %.thread, %._crit_edge195
  %.pre-phi197 = phi i64 [ %.pre196, %._crit_edge195 ], [ %.pre.i, %.thread ]
  %i.ar = phi i64 [ %i.aa, %._crit_edge195 ], [ %..i.i.i, %.thread ]
  %.sroa.027.382 = phi i64 [ %.sroa.027.2.lcssa, %._crit_edge195 ], [ %.lcssa113, %.thread ]
  %..i = call noundef i64 @llvm.umin.i64(i64 %.pre-phi197, i64 %.sroa.053.3.ph.ph) ; 2 uses
  %i.as = add i64 %..i, %.lcssa113                ; 2 uses
  %i.at = icmp ult i64 %.sroa.027.382, %i.as
  br label %.peel.begin

bb.k:                                             ; preds = %bb.g
  %i.au = sub nuw i64 %.sroa.027.2.lcssa, %.lcssa113 ; 3 uses
  %.pre193 = sub nsw i64 %i.aa, %.lcssa113        ; 2 uses
  %.not60 = icmp ugt i64 %i.au, %.pre193
  br i1 %.not60, label %bb.q, label %.peel.begin, !prof !2810

.peel.begin:                                      ; preds = %.thread202, %bb.k
  %i.av = phi i64 [ %i.as, %.thread202 ], [ %.sroa.027.2.lcssa, %bb.k ] ; 2 uses
  %.sroa.034.0208 = phi i64 [ %..i, %.thread202 ], [ %i.au, %bb.k ] ; 5 uses
  %.sroa.027.381207 = phi i1 [ %i.at, %.thread202 ], [ false, %bb.k ]
  %i.aw = phi i64 [ %i.ar, %.thread202 ], [ %i.aa, %bb.k ] ; 2 uses
  %.pn = load ptr, ptr %i.r, align 8, !nonnull !17, !noundef !17
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn, i64 %.lcssa113 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br i1 %.sroa.027.381207, label %bb.l, label %_RNvMs8_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsc4241EHy6Do_9typst_kit.exit.i.i.peel

bb.l:                                             ; preds = %.peel.begin
  %i.ay = call { ptr, i64 } @_RNvXs0_NvMs2_NtNtCs3oUPovFnLWP_4core3mem12maybe_uninitSINtBb_11MaybeUninitpE13write_defaulthNtB5_11DefaultSpec13write_default(ptr noalias nofree noundef nonnull %i.ax, i64 noundef %.sroa.034.0208), !noalias !2811 ; 0 uses
  br label %_RNvMs8_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsc4241EHy6Do_9typst_kit.exit.i.i.peel

_RNvMs8_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsc4241EHy6Do_9typst_kit.exit.i.i.peel: ; preds = %bb.l, %.peel.begin
  %i.az = call { i64, ptr } @_RNvXs4_NtNtCs2N41nl8cATr_6flate22gz4readINtB5_9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEENtNtNtB1E_2io4read4Read4readCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %0, ptr noalias nofree noundef nonnull %i.ax, i64 noundef range(i64 0, -9223372036854775808) %.sroa.034.0208) ; 2 uses
  %i.ba = extractvalue { i64, ptr } %i.az, 0
  %i.bb = extractvalue { i64, ptr } %i.az, 1      ; 8 uses
  %i.bc = trunc nuw i64 %i.ba to i1
  br i1 %i.bc, label %_RNvYINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEENtNtNtB1y_2io4read4Read8read_bufCsc4241EHy6Do_9typst_kit.exit.peel, label %.loopexit183

_RNvYINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEENtNtNtB1y_2io4read4Read8read_bufCsc4241EHy6Do_9typst_kit.exit.peel: ; preds = %_RNvMs8_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsc4241EHy6Do_9typst_kit.exit.i.i.peel
  store ptr %i.bb, ptr %i.c, align 8
  %.not61.peel = icmp eq ptr %i.bb, null
  br i1 %.not61.peel, label %.loopexit.thread, label %bb.m

bb.m:                                             ; preds = %_RNvYINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEENtNtNtB1y_2io4read4Read8read_bufCsc4241EHy6Do_9typst_kit.exit.peel
  %i.bd = ptrtoint ptr %i.bb to i64               ; 8 uses
  %i.be = and i64 %i.bd, 3
  switch i64 %i.be, label %.unreachabledefault [
    i64 2, label %bb.p
    i64 3, label %.split97.peel
    i64 0, label %.split98.peel
    i64 1, label %.split.peel
  ], !prof !30

.split.peel:                                      ; preds = %bb.m
  %i.bf = getelementptr i8, ptr %i.bb, i64 31
  %i.bg = load i8, ptr %i.bf, align 8, !range !36, !noundef !17
  %i.bh = icmp eq i8 %i.bg, 35
  br i1 %i.bh, label %bb.n, label %.loopexit184

bb.n:                                             ; preds = %.split.peel
  %i.bi = getelementptr i8, ptr %i.bb, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2812
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  store ptr %i.bi, ptr %i.t, align 8, !alias.scope !2813, !noalias !2812
  store i8 3, ptr %i.a, align 8, !alias.scope !2813, !noalias !2812
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %.peel.next

.split98.peel:                                    ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bk = load i8, ptr %i.bj, align 8, !range !36, !noundef !17
  %i.bl = icmp eq i8 %i.bk, 35
  br i1 %i.bl, label %.thread100.peel, label %.loopexit184

.split97.peel:                                    ; preds = %bb.m
  %i.bm = lshr i64 %i.bd, 32
  %i.bn = icmp ult ptr %i.bb, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.peel = trunc i64 %i.bm to i8
  %spec.select.i.i.i.peel = select i1 %i.bn, i8 %switch.idx.cast.i.i.i.peel, i8 -1 ; 2 uses
  %i.bo = icmp ne i8 %spec.select.i.i.i.peel, -1
  call void @llvm.assume(i1 %i.bo)
  %i.bp = icmp eq i8 %spec.select.i.i.i.peel, 35
  br i1 %i.bp, label %bb.o, label %.loopexit184

bb.o:                                             ; preds = %.split97.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2814
  %i.bq = and i64 %i.bd, 1095216660480
  %i.br = icmp ne i64 %i.bq, 1095216660480
  call void @llvm.assume(i1 %i.bn)
  call void @llvm.assume(i1 %i.br)
  br label %.peel.next

bb.p:                                             ; preds = %bb.m
  %i.bs = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.peel unwind label %.loopexit.split-lp

.noexc.peel:                                      ; preds = %bb.p
  %i.bt = lshr i64 %i.bd, 32
  %i.bu = trunc nuw i64 %i.bt to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !17, !noundef !17
  %i.bx = invoke noundef zeroext i1 %i.bw(i32 noundef %i.bu)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit.peel unwind label %.loopexit.split-lp, !inline_history !0

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit.peel: ; preds = %.noexc.peel
  br i1 %i.bx, label %.thread100.peel, label %.loopexit184

.thread100.peel:                                  ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit.peel, %.split98.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2815
  br label %.peel.next

.peel.next:                                       ; preds = %.thread100.peel, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.by = call { i64, ptr } @_RNvXs4_NtNtCs2N41nl8cATr_6flate22gz4readINtB5_9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEENtNtNtB1E_2io4read4Read4readCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %0, ptr noalias nofree noundef nonnull %i.ax, i64 noundef range(i64 0, -9223372036854775808) %.sroa.034.0208) ; 2 uses
  %i.bz = extractvalue { i64, ptr } %i.by, 0
  %i.ca = extractvalue { i64, ptr } %i.by, 1      ; 2 uses
  %i.cb = trunc nuw i64 %i.bz to i1
  br i1 %i.cb, label %_RNvYINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEENtNtNtB1y_2io4read4Read8read_bufCsc4241EHy6Do_9typst_kit.exit, label %.loopexit183

bb.q:                                             ; preds = %bb.k
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.au, i64 noundef %.pre193, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #49
  unreachable

.loopexit183:                                     ; preds = %_RNvMs8_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsc4241EHy6Do_9typst_kit.exit.i.i, %.peel.next, %_RNvMs8_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsc4241EHy6Do_9typst_kit.exit.i.i.peel
  %.lcssa157 = phi ptr [ %i.bb, %_RNvMs8_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsc4241EHy6Do_9typst_kit.exit.i.i.peel ], [ %i.ca, %.peel.next ], [ %i.db, %_RNvMs8_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsc4241EHy6Do_9typst_kit.exit.i.i ] ; 2 uses
  %i.cc = ptrtoint ptr %.lcssa157 to i64          ; 3 uses
  %.not.i.i.i = icmp ult i64 %.sroa.034.0208, %i.cc
  br i1 %.not.i.i.i, label %bb.r, label %.loopexit, !prof !23

bb.r:                                             ; preds = %.loopexit183
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @243, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #49, !noalias !2816
  unreachable

_RNvYINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEENtNtNtB1y_2io4read4Read8read_bufCsc4241EHy6Do_9typst_kit.exit: ; preds = %.peel.next, %_RNvMs8_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsc4241EHy6Do_9typst_kit.exit.i.i
  %i.cd = phi ptr [ %i.db, %_RNvMs8_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsc4241EHy6Do_9typst_kit.exit.i.i ], [ %i.ca, %.peel.next ] ; 7 uses
  store ptr %i.cd, ptr %i.c, align 8
  %.not61 = icmp eq ptr %i.cd, null
  br i1 %.not61, label %.loopexit.thread, label %bb.s

bb.s:                                             ; preds = %_RNvYINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEENtNtNtB1y_2io4read4Read8read_bufCsc4241EHy6Do_9typst_kit.exit
  %i.ce = ptrtoint ptr %i.cd to i64               ; 8 uses
  %i.cf = and i64 %i.ce, 3
  switch i64 %i.cf, label %.unreachabledefault251 [
    i64 2, label %bb.t
    i64 3, label %.split97
    i64 0, label %.split98
    i64 1, label %.split
  ], !prof !30

.unreachabledefault251:                           ; preds = %bb.s
  unreachable

.unreachabledefault:                              ; preds = %bb.m
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %.loopexit185

.noexc:                                           ; preds = %bb.t
  %i.ch = lshr i64 %i.ce, 32
  %i.ci = trunc nuw i64 %i.ch to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !17, !noundef !17
  %i.cl = invoke noundef zeroext i1 %i.ck(i32 noundef %i.ci)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %.loopexit185, !inline_history !0

.split97:                                         ; preds = %bb.s
  %i.cm = lshr i64 %i.ce, 32
  %i.cn = icmp ult ptr %i.cd, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.cm to i8
  %spec.select.i.i.i = select i1 %i.cn, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.co = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.co)
  %i.cp = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.cp, label %bb.u, label %.loopexit184

.split98:                                         ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cr = load i8, ptr %i.cq, align 8, !range !36, !noundef !17
  %i.cs = icmp eq i8 %i.cr, 35
  br i1 %i.cs, label %.thread100, label %.loopexit184

.split:                                           ; preds = %bb.s
  %i.ct = getelementptr i8, ptr %i.cd, i64 31
  %i.cu = load i8, ptr %i.ct, align 8, !range !36, !noundef !17
  %i.cv = icmp eq i8 %i.cu, 35
  br i1 %i.cv, label %bb.v, label %.loopexit184

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.cl, label %.thread100, label %.loopexit184

.thread100:                                       ; preds = %.split98, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2815
  br label %_RNvMs8_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsc4241EHy6Do_9typst_kit.exit.i.i
end_hunk_0
