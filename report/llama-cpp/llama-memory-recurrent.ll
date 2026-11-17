Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-memory-recurrent?download=true
inline.NumInlined: 1548
inline.NumDeleted: 796
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN22llama_memory_recurrent9find_slotERK12llama_ubatch:bb.a
  %.not231351 = icmp sgt i32 %.0182.lcssa450453, %.0189.lcssa449454
  br i1 %.not231351, label %._crit_edge359, label %.lr.ph354.preheader

.lr.ph354.preheader:                              ; preds = %._crit_edge350
  %i.lq = sext i32 %.0182.lcssa450453 to i64
  %i.lr = add nuw i32 %.0189.lcssa449454, 1
  br label %.lr.ph354

bb.av:                                            ; preds = %bb.az, %.lr.ph349.new
  %.0179348 = phi i64 [ 0, %.lr.ph349.new ], [ %i.mi, %bb.az ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph349.new ], [ %niter.next.1, %bb.az ]
  %i.ls = getelementptr inbounds nuw [64 x i8], ptr %i.lf, i64 %.0179348
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !99 ; 2 uses
  %i.lv = icmp sgt i32 %i.lu, -1
  br i1 %i.lv, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.lw = zext nneg i32 %i.lu to i64
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.lw ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !52
  %i.lz = add nsw i32 %i.ly, 1
  store i32 %i.lz, ptr %i.lx, align 4, !tbaa !52
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ma = getelementptr inbounds nuw [64 x i8], ptr %i.lf, i64 %.0179348
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 68
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !99 ; 2 uses
  %i.md = icmp sgt i32 %i.mc, -1
  br i1 %i.md, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.me = zext nneg i32 %i.mc to i64
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.me ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !52
  %i.mh = add nsw i32 %i.mg, 1
  store i32 %i.mh, ptr %i.mf, align 4, !tbaa !52
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.mi = add nuw nsw i64 %.0179348, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge350.loopexit.unr-lcssa, label %bb.av, !llvm.loop !209

.lr.ph354:                                        ; preds = %.lr.ph354.preheader, %bb.bb
  %indvars.iv400 = phi i64 [ %i.lq, %.lr.ph354.preheader ], [ %indvars.iv.next401, %bb.bb ] ; 3 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0279.0457, i64 %indvars.iv400
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !52
  %i.ml = icmp eq i32 %i.mk, 0
  br i1 %i.ml, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph354
  %i.mm = trunc nsw i64 %indvars.iv400 to i32     ; 2 uses
  store i32 %i.mm, ptr %i.lp, align 4, !tbaa !46
  br label %.lr.ph358

bb.bb:                                            ; preds = %.lr.ph354
  %indvars.iv.next401 = add nsw i64 %indvars.iv400, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next401 to i32
  %exitcond403.not = icmp eq i32 %i.lr, %lftr.wideiv
  br i1 %exitcond403.not, label %.lr.ph358, label %.lr.ph354, !llvm.loop !210

.lr.ph358:                                        ; preds = %bb.bb, %bb.ba
  %i.mn = phi i32 [ %i.mm, %bb.ba ], [ -1, %bb.bb ] ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !53
  %i.mq = sext i32 %.0182.lcssa450453 to i64
  %i.mr = add nuw i32 %.0189.lcssa449454, 1
  %i.ms = icmp sgt i32 %i.mn, -1
  br label %bb.bc

._crit_edge359:                                   ; preds = %bb.bh, %._crit_edge350
  %.not.i.i.i271 = icmp eq ptr %.sroa.0279.0457, null
  br i1 %.not.i.i.i271, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %._crit_edge359.thread

._crit_edge359.thread:                            ; preds = %._crit_edge359
  %i.mt = ptrtoint ptr %.sroa.0279.0457 to i64
  %i.mu = sub i64 %.sroa.11.0458, %i.mt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0279.0457, i64 noundef %i.mu) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge359, %._crit_edge359.thread
  store i32 %.0182.lcssa450453, ptr %i.f, align 8, !tbaa !48
  %i.mv = sub nsw i32 %.0189.lcssa449454, %.0182.lcssa450453
  %i.mw = add nsw i32 %i.mv, 1                    ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.mw, ptr %i.mx, align 8, !tbaa !216
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !217 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !217 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.mz, %i.nb
  br i1 %.not5.i.i, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPN22llama_memory_recurrent8mem_cellESt6vectorIS3_SaIS3_EEEEZNS2_9find_slotERK12llama_ubatchE3$_0ENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %.lr.ph.i.i
  %.07.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  %.sroa.02.06.i.i = phi ptr [ %i.ne, %.lr.ph.i.i ], [ %i.mz, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %i.nc = getelementptr i8, ptr %.sroa.02.06.i.i, i64 56
  %.val.i.i.i = load i64, ptr %i.nc, align 8, !tbaa !65
  %.not4.i.i = icmp ne i64 %.val.i.i.i, 0
  %i.nd = zext i1 %.not4.i.i to i32
  %spec.select.i.i = add i32 %.07.i.i, %i.nd      ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ne, %i.nb
  br i1 %.not.i.i, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPN22llama_memory_recurrent8mem_cellESt6vectorIS3_SaIS3_EEEEZNS2_9find_slotERK12llama_ubatchE3$_0ENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit", label %.lr.ph.i.i, !llvm.loop !211

"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPN22llama_memory_recurrent8mem_cellESt6vectorIS3_SaIS3_EEEEZNS2_9find_slotERK12llama_ubatchE3$_0ENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit": ; preds = %.lr.ph.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.0.lcssa.i.i = phi i32 [ 0, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %spec.select.i.i, %.lr.ph.i.i ]
  store i32 %.0.lcssa.i.i, ptr %i.h, align 8, !tbaa !50
  %i.nf = icmp uge i32 %i.mw, %i.e
  br label %bb.bi

bb.bc:                                            ; preds = %.lr.ph358, %bb.bh
  %indvars.iv404 = phi i64 [ %i.mq, %.lr.ph358 ], [ %indvars.iv.next405, %bb.bh ] ; 3 uses
  %i.ng = getelementptr inbounds nuw [64 x i8], ptr %i.mp, i64 %indvars.iv404 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 4 ; 2 uses
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !99 ; 2 uses
  %i.nj = icmp sgt i32 %i.ni, -1                  ; 2 uses
  %brmerge = select i1 %i.nj, i1 true, i1 %i.ms
  br i1 %brmerge, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.11, i32 noundef 695, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.21) #32
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.nk = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i272 = icmp eq ptr %.sroa.0279.0457, null
  br i1 %.not.i.i.i272, label %_ZNSt6vectorIiSaIiEED2Ev.exit273, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.nl = ptrtoint ptr %.sroa.0279.0457 to i64
  %i.nm = sub i64 %.sroa.11.0458, %i.nl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0279.0457, i64 noundef %i.nm) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit273

bb.bh:                                            ; preds = %bb.bc
  %.mux = select i1 %i.nj, i32 %i.ni, i32 %i.mn
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  store i32 %.mux, ptr %i.nn, align 8, !tbaa !137
  %i.no = trunc nsw i64 %indvars.iv404 to i32
  store i32 %i.no, ptr %i.nh, align 4, !tbaa !99
  %indvars.iv.next405 = add nsw i64 %indvars.iv404, 1 ; 2 uses
  %lftr.wideiv407 = trunc i64 %indvars.iv.next405 to i32
  %exitcond408.not = icmp eq i32 %i.mr, %lftr.wideiv407
  br i1 %exitcond408.not, label %._crit_edge359, label %bb.bc, !llvm.loop !212

_ZNSt6vectorIiSaIiEED2Ev.exit273:                 ; preds = %bb.bg, %bb.bf
  resume { ptr, i32 } %i.nk

bb.bi:                                            ; preds = %bb.r, %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPN22llama_memory_recurrent8mem_cellESt6vectorIS3_SaIS3_EEEEZNS2_9find_slotERK12llama_ubatchE3$_0ENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit"
  %.5 = phi i1 [ %i.nf, %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPN22llama_memory_recurrent8mem_cellESt6vectorIS3_SaIS3_EEEEZNS2_9find_slotERK12llama_ubatchE3$_0ENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit" ], [ false, %bb.r ]
  ret i1 %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK22llama_memory_recurrent13get_can_shiftEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #11 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK22llama_memory_recurrent10total_sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !101  ; 2 uses
  %.not10 = icmp eq ptr %i.b, %i.d
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.h, %.lr.ph ]
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi i64 [ %i.h, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.07.011 = phi ptr [ %i.i, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.g = tail call i64 @ggml_backend_buffer_get_size(ptr noundef %i.f)
  %i.h = add i64 %i.g, %.012                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.i, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare i64 @ggml_nbytes(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK22llama_memory_recurrent11state_writeER16llama_io_write_iij(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.194", align 8   ; 20 uses
  %5 = alloca %"class.std::vector.194", align 8   ; 13 uses
  %i.a = alloca i32, align 4                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !49   ; 3 uses
  %.not203 = icmp eq i32 %i.c, 0
  br i1 %.not203, label %._crit_edge.thread, label %.lr.ph180

._crit_edge.thread:                               ; preds = %bb.a
  store i32 0, ptr %i.a, align 4
  store ptr null, ptr %5, align 8
  store ptr null, ptr %4, align 8
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjRKjEEERS1_DpOT_.exit

.lr.ph180:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = icmp eq i32 %2, -1                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.g = icmp sgt i32 %2, -1
  %i.h = zext nneg i32 %2 to i64                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit
  %i.o = ptrtoaddr ptr %i.fi to i64
  %i.p = ptrtoaddr ptr %i.fm to i64               ; 2 uses
  %i.q = icmp eq i32 %.2131, %i.fh
  store i32 %9, ptr %i.a, align 4
  store ptr %i.fn, ptr %5, align 8
  store ptr %i.fm, ptr %4, align 8
  br i1 %i.q, label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjRKjEEERS1_DpOT_.exit, label %bb.z

bb.b:                                             ; preds = %.lr.ph180, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit
  %i.r = phi i32 [ %i.c, %.lr.ph180 ], [ %i.fh, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ] ; 8 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph180 ], [ %indvars.iv.next, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ] ; 5 uses
  %i.s = phi ptr [ null, %.lr.ph180 ], [ %i.fi, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ] ; 7 uses
  %i.t = phi ptr [ null, %.lr.ph180 ], [ %i.fj, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ] ; 6 uses
  %i.u = phi ptr [ null, %.lr.ph180 ], [ %i.fk, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ] ; 12 uses
  %i.v = phi ptr [ null, %.lr.ph180 ], [ %i.fl, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ] ; 10 uses
  %.0129184 = phi i32 [ %i.c, %.lr.ph180 ], [ %.2131, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ] ; 5 uses
  %.0129177 = phi i32 [ 0, %.lr.ph180 ], [ %9, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ] ; 5 uses
  %i.w = phi ptr [ null, %.lr.ph180 ], [ %i.fn, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ] ; 20 uses
  %i.x = phi ptr [ null, %.lr.ph180 ], [ %i.fm, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ] ; 14 uses
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.y, i64 %indvars.iv ; 6 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !65
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !60 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not10.i.i.i.i, label %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ae, %bb.d ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.af, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !52
  %i.ai = icmp slt i32 %i.ah, %2                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.ai, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.ai, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.aj = icmp eq ptr %.19.i.i.i.i, %i.af
  br i1 %i.aj, label %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread, label %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit

_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit: ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !52
  %.not137 = icmp slt i32 %2, %i.al
  br i1 %.not137, label %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit
  %i.am = add i32 %.0129177, 1                    ; 5 uses
  %i.an = load i32, ptr %i.f, align 4, !tbaa !51
  %.not51 = icmp eq i32 %i.an, 0
  br i1 %.not51, label %.loopexit, label %bb.f

.thread:                                          ; preds = %bb.c
  %i.ao = add i32 %.0129177, 1                    ; 2 uses
  %i.ap = load i32, ptr %i.f, align 4, !tbaa !51
  %.not51133 = icmp eq i32 %i.ap, 0
  br i1 %.not51133, label %.loopexit, label %.thread134

bb.f:                                             ; preds = %bb.e
  br i1 %i.e, label %.thread134, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.g, label %bb.h, label %.loopexit226.invoke

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !138
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !88  ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 2
  %i.aw = icmp ugt i64 %i.av, %i.h
  br i1 %i.aw, label %bb.i, label %.loopexit226.invoke

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.h
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !52
  br label %.loopexit

.thread134:                                       ; preds = %.thread, %bb.f
  %6 = phi i32 [ %i.ao, %.thread ], [ %i.am, %bb.f ] ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !63 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 3 uses
  %.not138158 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not138158, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread134
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !52 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, -1
  br i1 %i.be, label %bb.j, label %.loopexit226.invoke

bb.j:                                             ; preds = %.lr.ph.preheader
  %i.bf = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !138
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !88  ; 3 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 2                 ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, %i.bf
  br i1 %i.bm, label %bb.k, label %.loopexit226.invoke

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bf
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !52 ; 3 uses
  %i.bp = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.ba) #29 ; 2 uses
  %.not138.peel = icmp eq ptr %i.bp, %i.bb
  br i1 %.not138.peel, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.o
  %.sroa.0109.0159 = phi ptr [ %i.bz, %bb.o ], [ %i.bp, %bb.k ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0109.0159, i64 32
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !52 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, -1
  br i1 %i.bs, label %bb.l, label %.loopexit226.invoke

bb.l:                                             ; preds = %.lr.ph
  %i.bt = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bu = icmp ugt i64 %i.bl, %i.bt
  br i1 %i.bu, label %bb.m, label %.loopexit226.invoke

.loopexit226.invoke:                              ; preds = %.lr.ph.preheader, %bb.j, %bb.g, %bb.h, %.lr.ph, %bb.l
  %.sink = phi i32 [ %6, %.lr.ph ], [ %6, %bb.l ], [ %6, %.lr.ph.preheader ], [ %6, %bb.j ], [ %i.am, %bb.h ], [ %i.am, %bb.g ]
  %i.bv = phi i32 [ 790, %.lr.ph ], [ 790, %bb.l ], [ 790, %.lr.ph.preheader ], [ 790, %bb.j ], [ 785, %bb.h ], [ 785, %bb.g ]
  %i.bw = phi ptr [ @.str.23, %.lr.ph ], [ @.str.23, %bb.l ], [ @.str.23, %.lr.ph.preheader ], [ @.str.23, %bb.j ], [ @.str.22, %bb.h ], [ @.str.22, %bb.g ]
  store i32 %.sink, ptr %i.a, align 4
  store ptr %i.w, ptr %5, align 8
  store ptr %i.x, ptr %4, align 8
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.11, i32 noundef %i.bv, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.bw) #32
          to label %.loopexit226.cont unwind label %.loopexit.split-lp

.loopexit226.cont:                                ; preds = %.loopexit226.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bt
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !52
  %.not53 = icmp eq i32 %i.bo, %i.by
  br i1 %.not53, label %bb.o, label %.loopexit227

.loopexit227:                                     ; preds = %bb.m
  store i32 %6, ptr %i.a, align 4
  store ptr %i.w, ptr %5, align 8
  store ptr %i.x, ptr %4, align 8
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.11, i32 noundef 797, ptr noundef nonnull @.str.24) #32
          to label %bb.n unwind label %.loopexit.split-lp

bb.n:                                             ; preds = %.loopexit227
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bz = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0109.0159) #29 ; 2 uses
  %.not138 = icmp eq ptr %i.bz, %i.bb
  br i1 %.not138, label %.loopexit, label %.lr.ph, !llvm.loop !218

.loopexit:                                        ; preds = %bb.o, %bb.k, %.thread134, %.thread, %bb.i, %bb.e
  %7 = phi i32 [ %i.am, %bb.i ], [ %i.ao, %.thread ], [ %i.am, %bb.e ], [ %6, %.thread134 ], [ %6, %bb.k ], [ %6, %bb.o ] ; 2 uses
  %.2 = phi i32 [ %i.ay, %bb.i ], [ 0, %.thread ], [ 0, %bb.e ], [ 0, %.thread134 ], [ %i.bo, %bb.k ], [ %i.bo, %bb.o ]
  %i.ca = mul i32 %.2, %i.r
  %i.cb = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !99 ; 2 uses
  %i.cd = icmp slt i32 %i.cc, 0
  %i.ce = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.cf = select i1 %i.cd, i32 %i.ce, i32 %i.cc
  %i.cg = add i32 %i.cf, %i.ca                    ; 5 uses
  %i.ch = icmp eq ptr %i.w, %i.v                  ; 2 uses
  br i1 %i.ch, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.ci = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !140
  %.not55 = icmp eq i32 %i.cj, %i.cg
  br i1 %.not55, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit
  %i.ck = add i32 %i.cg, 1                        ; 2 uses
  %.not.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.cg, ptr %i.v, align 4, !tbaa !141
  %i.cl = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !140
  %i.cm = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.cm, ptr %i.k, align 8, !tbaa !241
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRKjjEEERS1_DpOT_.exit

bb.s:                                             ; preds = %bb.q
  %i.cn = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.co = ptrtoint ptr %i.w to i64                ; 3 uses
  %i.cp = sub i64 %i.cn, %i.co                    ; 4 uses
  %i.cq = icmp eq i64 %i.cp, 9223372036854775800
  br i1 %i.cq, label %8, label %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i

8:                                                ; preds = %bb.s
  store i32 %7, ptr %i.a, align 4
  br label %.invoke441

_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.cr = ashr exact i64 %i.cp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cr, i64 1)
  %i.cs = add nsw i64 %.sroa.speculated.i.i.i, %i.cr ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cr
  %i.cu = tail call i64 @llvm.umin.i64(i64 %i.cs, i64 1152921504606846975)
  %i.cv = select i1 %i.ct, i64 1152921504606846975, i64 %i.cu ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cw = shl nuw nsw i64 %i.cv, 3
  %i.cx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #30
          to label %.noexc60 unwind label %.loopexit140 ; 8 uses

.noexc60:                                         ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cp ; 2 uses
  store i32 %i.cg, ptr %i.cy, align 4, !tbaa !141
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 %i.ck, ptr %i.cz, align 4, !tbaa !140
  br i1 %i.ch, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc60
  %i.da = ptrtoaddr ptr %i.cx to i64
  %i.db = add i64 %i.cn, -8
  %i.dc = sub i64 %i.db, %i.co                    ; 2 uses
  %i.dd = lshr i64 %i.dc, 3
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check364 = icmp ult i64 %i.dc, 24
  %i.df = sub i64 %i.co, %i.da
  %diff.check366 = icmp ugt i64 %i.df, -32
  %or.cond438 = or i1 %min.iters.check364, %diff.check366
  br i1 %or.cond438, label %.lr.ph.i.i.i.i.i.preheader453, label %vector.ph367

vector.ph367:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec368 = and i64 %i.de, 4611686018427387900  ; 3 uses
  %i.dg = shl i64 %n.vec368, 3                    ; 2 uses
  %i.dh = getelementptr i8, ptr %i.cx, i64 %i.dg  ; 2 uses
  %i.di = getelementptr i8, ptr %i.w, i64 %i.dg
  br label %vector.body369

vector.body369:                                   ; preds = %vector.body369, %vector.ph367
  %index370 = phi i64 [ 0, %vector.ph367 ], [ %index.next375, %vector.body369 ] ; 2 uses
  %i.dj = shl i64 %index370, 3                    ; 2 uses
  %next.gep371 = getelementptr i8, ptr %i.cx, i64 %i.dj ; 2 uses
  %next.gep372 = getelementptr i8, ptr %i.w, i64 %i.dj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.dk = getelementptr i8, ptr %next.gep372, i64 16
  %wide.load373 = load <2 x i64>, ptr %next.gep372, align 4, !alias.scope !243
  %wide.load374 = load <2 x i64>, ptr %i.dk, align 4, !alias.scope !243
  %i.dl = getelementptr i8, ptr %next.gep371, i64 16
  store <2 x i64> %wide.load373, ptr %next.gep371, align 4, !alias.scope !242
  store <2 x i64> %wide.load374, ptr %i.dl, align 4, !alias.scope !242
  %index.next375 = add nuw i64 %index370, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next375, %n.vec368
  br i1 %i.dm, label %middle.block376, label %vector.body369, !llvm.loop !222

middle.block376:                                  ; preds = %vector.body369
  %cmp.n377 = icmp eq i64 %i.de, %n.vec368
  br i1 %cmp.n377, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader453

.lr.ph.i.i.i.i.i.preheader453:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block376
  %.012.i.i.i.i.i.ph = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dh, %middle.block376 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.di, %middle.block376 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader453, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader453 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader453 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.dn = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !243
  store i64 %i.dn, ptr %.012.i.i.i.i.i, align 4, !alias.scope !242
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.do, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !223

_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block376, %.noexc60
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cx, %.noexc60 ], [ %i.dh, %middle.block376 ], [ %i.dp, %.lr.ph.i.i.i.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRKjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.cp) #31
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRKjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRKjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.dq, ptr %i.k, align 8, !tbaa !241
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cv ; 2 uses
  store ptr %i.dr, ptr %i.l, align 8, !tbaa !244
  %.pre = load i32, ptr %i.b, align 4, !tbaa !49
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRKjjEEERS1_DpOT_.exit

bb.u:                                             ; preds = %bb.p
  %i.ds = add i32 %i.cg, 1
  store i32 %i.ds, ptr %i.ci, align 4, !tbaa !140
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRKjjEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRKjjEEERS1_DpOT_.exit: ; preds = %bb.r, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRKjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.u
  %i.dt = phi i32 [ %i.r, %bb.r ], [ %.pre, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRKjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.r, %bb.u ] ; 2 uses
  %i.du = phi ptr [ %i.u, %bb.r ], [ %i.dr, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRKjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.u, %bb.u ]
  %i.dv = phi ptr [ %i.cm, %bb.r ], [ %i.dq, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRKjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.v, %bb.u ]
  %i.dw = phi ptr [ %i.w, %bb.r ], [ %i.cx, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRKjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.w, %bb.u ]
  %i.dx = icmp eq i32 %.0129184, %i.dt
  %spec.select = select i1 %i.dx, i32 %i.ce, i32 %.0129184
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit

_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread: ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i, %bb.d, %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit
  %.not50 = icmp eq i32 %.0129184, %i.r
  br i1 %.not50, label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread
  %.not.i61 = icmp eq ptr %i.t, %i.s
  br i1 %.not.i61, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %.0129184, ptr %i.t, align 4, !tbaa !141
  %i.dy = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.dz = trunc nuw i64 %indvars.iv to i32
  store i32 %i.dz, ptr %i.dy, align 4, !tbaa !140
  %i.ea = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr %i.ea, ptr %i.m, align 8, !tbaa !241
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit

bb.x:                                             ; preds = %bb.v
  %i.eb = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.ec = ptrtoint ptr %i.x to i64                ; 3 uses
  %i.ed = sub i64 %i.eb, %i.ec                    ; 4 uses
  %i.ee = icmp eq i64 %i.ed, 9223372036854775800
  br i1 %i.ee, label %.invoke441, label %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i62

.invoke441:                                       ; preds = %bb.x, %8
  store ptr %i.w, ptr %5, align 8
  store ptr %i.x, ptr %4, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #32
          to label %.cont442 unwind label %.loopexit.split-lp

.cont442:                                         ; preds = %.invoke441
  unreachable

_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i62: ; preds = %bb.x
  %i.ef = ashr exact i64 %i.ed, 3                 ; 3 uses
  %.sroa.speculated.i.i.i63 = tail call i64 @llvm.umax.i64(i64 %i.ef, i64 1)
  %i.eg = add nsw i64 %.sroa.speculated.i.i.i63, %i.ef ; 2 uses
  %i.eh = icmp ult i64 %i.eg, %i.ef
  %i.ei = tail call i64 @llvm.umin.i64(i64 %i.eg, i64 1152921504606846975)
  %i.ej = select i1 %i.eh, i64 1152921504606846975, i64 %i.ei ; 3 uses
  %.not.i.i.i64 = icmp ne i64 %i.ej, 0
  tail call void @llvm.assume(i1 %.not.i.i.i64)
  %i.ek = shl nuw nsw i64 %i.ej, 3
  %i.el = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #30
          to label %.noexc74 unwind label %.loopexit140 ; 8 uses

.noexc74:                                         ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i62
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ed ; 2 uses
  store i32 %.0129184, ptr %i.em, align 4, !tbaa !141
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eo = trunc nuw i64 %indvars.iv to i32
  store i32 %i.eo, ptr %i.en, align 4, !tbaa !140
  %.not10.i.i.i.i.i65 = icmp eq ptr %i.x, %i.s
  br i1 %.not10.i.i.i.i.i65, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i70, label %.lr.ph.i.i.i.i.i66.preheader

.lr.ph.i.i.i.i.i66.preheader:                     ; preds = %.noexc74
  %i.ep = ptrtoaddr ptr %i.el to i64
  %i.eq = add i64 %i.eb, -8
  %i.er = sub i64 %i.eq, %i.ec                    ; 2 uses
  %i.es = lshr i64 %i.er, 3
  %i.et = add nuw nsw i64 %i.es, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.er, 24
  %i.eu = sub i64 %i.ec, %i.ep
  %diff.check = icmp ugt i64 %i.eu, -32
  %or.cond439 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond439, label %.lr.ph.i.i.i.i.i66.preheader452, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i66.preheader
  %n.vec = and i64 %i.et, 4611686018427387900     ; 3 uses
  %i.ev = shl i64 %n.vec, 3                       ; 2 uses
  %i.ew = getelementptr i8, ptr %i.el, i64 %i.ev  ; 2 uses
  %i.ex = getelementptr i8, ptr %i.x, i64 %i.ev
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ey = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.el, i64 %i.ey ; 2 uses
  %next.gep358 = getelementptr i8, ptr %i.x, i64 %i.ey ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.ez = getelementptr i8, ptr %next.gep358, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep358, align 4, !alias.scope !246
  %wide.load359 = load <2 x i64>, ptr %i.ez, align 4, !alias.scope !246
  %i.fa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !245
  store <2 x i64> %wide.load359, ptr %i.fa, align 4, !alias.scope !245
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !227

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.et, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i70, label %.lr.ph.i.i.i.i.i66.preheader452

.lr.ph.i.i.i.i.i66.preheader452:                  ; preds = %.lr.ph.i.i.i.i.i66.preheader, %middle.block
  %.012.i.i.i.i.i67.ph = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i66.preheader ], [ %i.ew, %middle.block ]
  %.0911.i.i.i.i.i68.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i66.preheader ], [ %i.ex, %middle.block ]
  br label %.lr.ph.i.i.i.i.i66

.lr.ph.i.i.i.i.i66:                               ; preds = %.lr.ph.i.i.i.i.i66.preheader452, %.lr.ph.i.i.i.i.i66
  %.012.i.i.i.i.i67 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i66 ], [ %.012.i.i.i.i.i67.ph, %.lr.ph.i.i.i.i.i66.preheader452 ] ; 2 uses
  %.0911.i.i.i.i.i68 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i66 ], [ %.0911.i.i.i.i.i68.ph, %.lr.ph.i.i.i.i.i66.preheader452 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.fc = load i64, ptr %.0911.i.i.i.i.i68, align 4, !alias.scope !246
  store i64 %i.fc, ptr %.012.i.i.i.i.i67, align 4, !alias.scope !245
  %i.fd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i68, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i67, i64 8 ; 2 uses
  %.not.i.i.i.i.i69 = icmp eq ptr %i.fd, %i.s
  br i1 %.not.i.i.i.i.i69, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i70, label %.lr.ph.i.i.i.i.i66, !llvm.loop !228

_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i70: ; preds = %.lr.ph.i.i.i.i.i66, %middle.block, %.noexc74
  %.0.lcssa.i.i.i.i.i71 = phi ptr [ %i.el, %.noexc74 ], [ %i.ew, %middle.block ], [ %i.fe, %.lr.ph.i.i.i.i.i66 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i71, i64 8 ; 2 uses
  %.not.i34.i.i72 = icmp eq ptr %i.x, null
  br i1 %.not.i34.i.i72, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i70
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ed) #31
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i70
  store ptr %i.ff, ptr %i.m, align 8, !tbaa !241
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ej ; 2 uses
  store ptr %i.fg, ptr %i.n, align 8, !tbaa !244
  %.pre237 = load i32, ptr %i.b, align 4, !tbaa !49 ; 2 uses
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit: ; preds = %bb.w, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRKjjEEERS1_DpOT_.exit, %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread
  %i.fh = phi i32 [ %i.dt, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRKjjEEERS1_DpOT_.exit ], [ %i.r, %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread ], [ %.pre237, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.r, %bb.w ] ; 3 uses
  %i.fi = phi ptr [ %i.s, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRKjjEEERS1_DpOT_.exit ], [ %i.s, %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread ], [ %i.fg, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.s, %bb.w ] ; 6 uses
  %i.fj = phi ptr [ %i.t, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRKjjEEERS1_DpOT_.exit ], [ %i.t, %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread ], [ %i.ff, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ea, %bb.w ] ; 6 uses
  %i.fk = phi ptr [ %i.du, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRKjjEEERS1_DpOT_.exit ], [ %i.u, %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread ], [ %i.u, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.u, %bb.w ] ; 6 uses
  %i.fl = phi ptr [ %i.dv, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRKjjEEERS1_DpOT_.exit ], [ %i.v, %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread ], [ %i.v, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.v, %bb.w ] ; 4 uses
  %i.fm = phi ptr [ %i.x, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRKjjEEERS1_DpOT_.exit ], [ %i.x, %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread ], [ %i.el, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.x, %bb.w ] ; 12 uses
  %i.fn = phi ptr [ %i.dw, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRKjjEEERS1_DpOT_.exit ], [ %i.w, %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread ], [ %i.w, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.w, %bb.w ] ; 7 uses
  %9 = phi i32 [ %7, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRKjjEEERS1_DpOT_.exit ], [ %.0129177, %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread ], [ %.0129177, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.0129177, %bb.w ] ; 2 uses
  %.2131 = phi i32 [ %spec.select, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRKjjEEERS1_DpOT_.exit ], [ %i.r, %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread ], [ %.pre237, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.r, %bb.w ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fo = zext i32 %i.fh to i64
  %i.fp = icmp samesign ult i64 %indvars.iv.next, %i.fo
  br i1 %i.fp, label %bb.b, label %._crit_edge, !llvm.loop !229

bb.z:                                             ; preds = %._crit_edge
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.not.i75 = icmp eq ptr %i.fj, %i.fi
  br i1 %.not.i75, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 %.2131, ptr %i.fj, align 4, !tbaa !141
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.ft = load i32, ptr %i.b, align 4, !tbaa !52
  store i32 %i.ft, ptr %i.fs, align 4, !tbaa !140
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  store ptr %i.fu, ptr %i.fq, align 8, !tbaa !241
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjRKjEEERS1_DpOT_.exit

bb.ab:                                            ; preds = %bb.z
  %i.fv = ptrtoint ptr %i.fi to i64
  %i.fw = ptrtoint ptr %i.fm to i64
  %i.fx = sub i64 %i.fv, %i.fw                    ; 4 uses
  %i.fy = icmp eq i64 %i.fx, 9223372036854775800
  br i1 %i.fy, label %bb.ac, label %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i76

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #32
          to label %.noexc87 unwind label %.loopexit.split-lp

.noexc87:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i76: ; preds = %bb.ab
  %i.fz = ashr exact i64 %i.fx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i77 = tail call i64 @llvm.umax.i64(i64 %i.fz, i64 1)
  %i.ga = add nsw i64 %.sroa.speculated.i.i.i77, %i.fz ; 2 uses
  %i.gb = icmp ult i64 %i.ga, %i.fz
  %i.gc = tail call i64 @llvm.umin.i64(i64 %i.ga, i64 1152921504606846975)
  %i.gd = select i1 %i.gb, i64 1152921504606846975, i64 %i.gc ; 3 uses
  %.not.i.i.i78 = icmp ne i64 %i.gd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i78)
  %i.ge = shl nuw nsw i64 %i.gd, 3
  %i.gf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ge) #30
          to label %.noexc88 unwind label %.loopexit.split-lp ; 9 uses

.noexc88:                                         ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i76
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.fx ; 2 uses
  store i32 %.2131, ptr %i.gg, align 4, !tbaa !141
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gi = load i32, ptr %i.b, align 4, !tbaa !52
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !140
  %.not10.i.i.i.i.i79 = icmp eq ptr %i.fm, %i.fi
  br i1 %.not10.i.i.i.i.i79, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i84, label %.lr.ph.i.i.i.i.i80.preheader

.lr.ph.i.i.i.i.i80.preheader:                     ; preds = %.noexc88
  %i.gj = ptrtoaddr ptr %i.gf to i64
  %i.gk = add i64 %i.o, -8
  %i.gl = sub i64 %i.gk, %i.p                     ; 2 uses
  %i.gm = lshr i64 %i.gl, 3
  %i.gn = add nuw nsw i64 %i.gm, 1                ; 2 uses
  %min.iters.check383 = icmp ult i64 %i.gl, 72
  %i.go = sub i64 %i.p, %i.gj
  %diff.check385 = icmp ugt i64 %i.go, -32
  %or.cond440 = or i1 %min.iters.check383, %diff.check385
  br i1 %or.cond440, label %.lr.ph.i.i.i.i.i80.preheader450, label %vector.ph386

vector.ph386:                                     ; preds = %.lr.ph.i.i.i.i.i80.preheader
  %n.vec387 = and i64 %i.gn, 4611686018427387900  ; 3 uses
  %i.gp = shl i64 %n.vec387, 3                    ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gf, i64 %i.gp  ; 2 uses
  %i.gr = getelementptr i8, ptr %i.fm, i64 %i.gp
  br label %vector.body388

vector.body388:                                   ; preds = %vector.body388, %vector.ph386
  %index389 = phi i64 [ 0, %vector.ph386 ], [ %index.next394, %vector.body388 ] ; 2 uses
  %i.gs = shl i64 %index389, 3                    ; 2 uses
  %next.gep390 = getelementptr i8, ptr %i.gf, i64 %i.gs ; 2 uses
  %next.gep391 = getelementptr i8, ptr %i.fm, i64 %i.gs ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.gt = getelementptr i8, ptr %next.gep391, i64 16
  %wide.load392 = load <2 x i64>, ptr %next.gep391, align 4, !alias.scope !248
  %wide.load393 = load <2 x i64>, ptr %i.gt, align 4, !alias.scope !248
  %i.gu = getelementptr i8, ptr %next.gep390, i64 16
  store <2 x i64> %wide.load392, ptr %next.gep390, align 4, !alias.scope !247
  store <2 x i64> %wide.load393, ptr %i.gu, align 4, !alias.scope !247
  %index.next394 = add nuw i64 %index389, 4       ; 2 uses
  %i.gv = icmp eq i64 %index.next394, %n.vec387
  br i1 %i.gv, label %middle.block395, label %vector.body388, !llvm.loop !233

middle.block395:                                  ; preds = %vector.body388
  %cmp.n396 = icmp eq i64 %i.gn, %n.vec387
  br i1 %cmp.n396, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i84, label %.lr.ph.i.i.i.i.i80.preheader450

.lr.ph.i.i.i.i.i80.preheader450:                  ; preds = %.lr.ph.i.i.i.i.i80.preheader, %middle.block395
  %.012.i.i.i.i.i81.ph = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i80.preheader ], [ %i.gq, %middle.block395 ]
  %.0911.i.i.i.i.i82.ph = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i80.preheader ], [ %i.gr, %middle.block395 ]
  br label %.lr.ph.i.i.i.i.i80

.lr.ph.i.i.i.i.i80:                               ; preds = %.lr.ph.i.i.i.i.i80.preheader450, %.lr.ph.i.i.i.i.i80
  %.012.i.i.i.i.i81 = phi ptr [ %i.gy, %.lr.ph.i.i.i.i.i80 ], [ %.012.i.i.i.i.i81.ph, %.lr.ph.i.i.i.i.i80.preheader450 ] ; 2 uses
  %.0911.i.i.i.i.i82 = phi ptr [ %i.gx, %.lr.ph.i.i.i.i.i80 ], [ %.0911.i.i.i.i.i82.ph, %.lr.ph.i.i.i.i.i80.preheader450 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.gw = load i64, ptr %.0911.i.i.i.i.i82, align 4, !alias.scope !248
  store i64 %i.gw, ptr %.012.i.i.i.i.i81, align 4, !alias.scope !247
  %i.gx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i82, i64 8 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i81, i64 8 ; 2 uses
  %.not.i.i.i.i.i83 = icmp eq ptr %i.gx, %i.fi
  br i1 %.not.i.i.i.i.i83, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i84, label %.lr.ph.i.i.i.i.i80, !llvm.loop !234

_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i84: ; preds = %.lr.ph.i.i.i.i.i80, %middle.block395, %.noexc88
  %.0.lcssa.i.i.i.i.i85 = phi ptr [ %i.gf, %.noexc88 ], [ %i.gq, %middle.block395 ], [ %i.gy, %.lr.ph.i.i.i.i.i80 ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i85, i64 8 ; 2 uses
  %.not.i34.i.i86 = icmp eq ptr %i.fm, null
  br i1 %.not.i34.i.i86, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i84
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.fx) #31
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i84
  store ptr %i.gf, ptr %4, align 8, !tbaa !249
  store ptr %i.gz, ptr %i.fq, align 8, !tbaa !241
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gd
  store ptr %i.ha, ptr %i.fr, align 8, !tbaa !244
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjRKjEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjRKjEEERS1_DpOT_.exit: ; preds = %._crit_edge.thread, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.aa, %._crit_edge
  %i.hb = phi ptr [ %i.fn, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.fn, %bb.aa ], [ %i.fn, %._crit_edge ], [ null, %._crit_edge.thread ] ; 14 uses
  %i.hc = phi ptr [ %i.fl, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.fl, %bb.aa ], [ %i.fl, %._crit_edge ], [ null, %._crit_edge.thread ] ; 3 uses
  %i.hd = phi ptr [ %i.fk, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.fk, %bb.aa ], [ %i.fk, %._crit_edge ], [ null, %._crit_edge.thread ] ; 6 uses
  %i.he = phi ptr [ %i.gf, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.fm, %bb.aa ], [ %i.fm, %._crit_edge ], [ null, %._crit_edge.thread ]
  %i.hf = phi ptr [ %i.gz, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.fu, %bb.aa ], [ %i.fj, %._crit_edge ], [ null, %._crit_edge.thread ] ; 3 uses
  %i.hg = ptrtoaddr ptr %i.hb to i64
  %i.hh = ptrtoaddr ptr %i.hc to i64
  %i.hi = and i32 %3, 2
  %.not49 = icmp ne i32 %i.hi, 0
  %i.hj = ptrtoint ptr %i.hf to i64               ; 2 uses
  %i.hk = ptrtoint ptr %i.he to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = icmp ugt i64 %i.hl, 8
  %or.cond = select i1 %.not49, i1 %i.hm, i1 false
  br i1 %or.cond, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjRKjEEERS1_DpOT_.exit
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.11, i32 noundef 825, ptr noundef nonnull @.str.25) #32
          to label %bb.af unwind label %.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjRKjEEERS1_DpOT_.exit
  %i.hn = load ptr, ptr %4, align 8, !tbaa !145   ; 9 uses
  %.not135189 = icmp eq ptr %i.hn, %i.hf
  br i1 %.not135189, label %._crit_edge194, label %.lr.ph193.preheader

.lr.ph193.preheader:                              ; preds = %bb.ag
  %i.ho = ptrtoaddr ptr %i.hn to i64
  %i.hp = add i64 %i.hj, -8
  %i.hq = sub i64 %i.hp, %i.ho                    ; 2 uses
  %i.hr = lshr i64 %i.hq, 3
  %i.hs = add nuw nsw i64 %i.hr, 1                ; 2 uses
  %min.iters.check400 = icmp ult i64 %i.hq, 56
  br i1 %min.iters.check400, label %.lr.ph193.preheader446, label %vector.ph401

vector.ph401:                                     ; preds = %.lr.ph193.preheader
  %n.vec402 = and i64 %i.hs, 4611686018427387896  ; 3 uses
  %i.ht = shl i64 %n.vec402, 3
  %i.hu = getelementptr i8, ptr %i.hn, i64 %i.ht
  br label %vector.body403

vector.body403:                                   ; preds = %vector.body403, %vector.ph401
  %index404 = phi i64 [ 0, %vector.ph401 ], [ %index.next412, %vector.body403 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph401 ], [ %i.hz, %vector.body403 ]
  %vec.phi405 = phi <4 x i32> [ zeroinitializer, %vector.ph401 ], [ %i.ia, %vector.body403 ]
  %i.hv = shl i64 %index404, 3                    ; 2 uses
  %next.gep406 = getelementptr i8, ptr %i.hn, i64 %i.hv
  %i.hw = getelementptr i8, ptr %i.hn, i64 %i.hv
  %next.gep407 = getelementptr i8, ptr %i.hw, i64 32
  %wide.vec = load <8 x i32>, ptr %next.gep406, align 4, !tbaa !52 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec408 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec409 = load <8 x i32>, ptr %next.gep407, align 4, !tbaa !52 ; 2 uses
  %strided.vec410 = shufflevector <8 x i32> %wide.vec409, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec411 = shufflevector <8 x i32> %wide.vec409, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.hx = add <4 x i32> %strided.vec408, %vec.phi
  %i.hy = add <4 x i32> %strided.vec411, %vec.phi405
  %i.hz = sub <4 x i32> %i.hx, %strided.vec       ; 2 uses
  %i.ia = sub <4 x i32> %i.hy, %strided.vec410    ; 2 uses
  %index.next412 = add nuw i64 %index404, 8       ; 2 uses
  %i.ib = icmp eq i64 %index.next412, %n.vec402
  br i1 %i.ib, label %middle.block413, label %vector.body403, !llvm.loop !235

middle.block413:                                  ; preds = %vector.body403
  %bin.rdx = add <4 x i32> %i.ia, %i.hz
  %i.ic = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
end_hunk_0
