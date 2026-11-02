Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/ma_vocoder_node?download=true
inline.NumInlined: 11
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ma_vocoder_node_config = type { %struct.ma_node_config, i32, i32, i32, i32 }
%struct.ma_node_config = type { ptr, i32, i32, i32, ptr, ptr }

@g_ma_vocoder_node_vtable = internal global { ptr, ptr, i8, i8, [2 x i8], i32 } { ptr @ma_vocoder_node_process_pcm_frames, ptr null, i8 2, i8 1, [2 x i8] zeroinitializer, i32 0 }, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define range(i32 0, 2) i32 @voclib_initialize(ptr nofree noundef captures(address_is_null) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  %i.a = add i8 %1, -97
  %or.cond = icmp ult i8 %i.a, -93
  %or.cond34 = or i1 %.not, %or.cond
  %i.b = add i8 %2, -9
  %or.cond5 = icmp ult i8 %i.b, -8
  %or.cond35 = or i1 %or.cond34, %or.cond5
  %i.c = add i32 %3, -192001
  %or.cond7 = icmp ult i32 %i.c, -184001
  %or.cond36 = or i1 %or.cond35, %or.cond7
  %i.d = add i8 %4, -3
  %or.cond10 = icmp ult i8 %i.d, -2
  %or.cond37 = or i1 %or.cond36, %or.cond10
  br i1 %or.cond37, label %voclib_initialize_envelopes.exit, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 84864 ; 2 uses
  store <2 x float> <float 3.000000e-02, float 1.000000e+00>, ptr %i.e, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84872 ; 2 uses
  store i32 %3, ptr %i.f, align 4, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 84876 ; 2 uses
  store i8 %1, ptr %i.g, align 4, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84877
  store i8 %2, ptr %i.h, align 1, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 84878
  store i8 %4, ptr %i.i, align 2, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 29568
  %wide.trip.count32.i = zext nneg i8 %1 to i64
  %exitcond.not.i = icmp eq i8 %2, 1
  %exitcond.not.i.1 = icmp eq i8 %2, 2
  %exitcond.not.i.2 = icmp eq i8 %2, 3
  %exitcond.not.i.3 = icmp eq i8 %2, 4
  %exitcond.not.i.4 = icmp eq i8 %2, 5
  %exitcond.not.i.5 = icmp eq i8 %2, 6
  %exitcond.not.i.6 = icmp eq i8 %2, 7
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %indvars.iv24.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next25.i, %._crit_edge.us.i ] ; 4 uses
  %i.k = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %indvars.iv24.i ; 8 uses
  %i.l = getelementptr inbounds nuw [288 x i8], ptr %i.j, i64 %indvars.iv24.i ; 16 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 27668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.b

bb.b:                                             ; preds = %.preheader.us.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 27704
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  br i1 %exitcond.not.i.1, label %._crit_edge.us.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 27740
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br i1 %exitcond.not.i.2, label %._crit_edge.us.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 27776
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  br i1 %exitcond.not.i.3, label %._crit_edge.us.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 27812
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  br i1 %exitcond.not.i.4, label %._crit_edge.us.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 27848
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  br i1 %exitcond.not.i.5, label %._crit_edge.us.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 236
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 236
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 27884
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  br i1 %exitcond.not.i.6, label %._crit_edge.us.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 27920
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.preheader.us.i
  %i.ak = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv24.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 27652
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1 ; 2 uses
  %exitcond28.not.i = icmp eq i64 %indvars.iv.next25.i, %wide.trip.count32.i
  br i1 %exitcond28.not.i, label %voclib_reset_history.exit, label %.preheader.us.i, !llvm.loop !0

voclib_reset_history.exit:                        ; preds = %._crit_edge.us.i
  tail call fastcc void @voclib_initialize_filterbank(ptr noundef nonnull %0, i32 noundef 0)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 27648 ; 6 uses
  %i.an = load float, ptr %i.e, align 4, !tbaa !19
  %i.ao = fpext float %i.an to double
  %i.ap = load i32, ptr %i.f, align 4, !tbaa !14
  %i.aq = uitofp i32 %i.ap to double
  %i.ar = fmul double %i.ao, %i.aq
  %i.as = fdiv double 1.000000e+00, %i.ar
  %i.at = tail call double @pow(double noundef 1.000000e-02, double noundef %i.as) #12
  %i.au = fptrunc double %i.at to float           ; 6 uses
  store float %i.au, ptr %i.am, align 4, !tbaa !21
  %i.av = load i8, ptr %i.g, align 4, !tbaa !15   ; 3 uses
  %i.aw = icmp ugt i8 %i.av, 1
  br i1 %i.aw, label %.lr.ph.i, label %voclib_initialize_envelopes.exit

.lr.ph.i:                                         ; preds = %voclib_reset_history.exit
  %wide.trip.count.i38 = zext i8 %i.av to i64
  %i.ax = add nsw i64 %wide.trip.count.i38, -1    ; 2 uses
  %xtraiter = and i64 %i.ax, 3                    ; 3 uses
  %i.ay = add i8 %i.av, -2
  %i.az = icmp ult i8 %i.ay, 3
  br i1 %i.az, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ax, -4
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.new
  %indvars.iv.i39 = phi i64 [ 1, %.lr.ph.i.new ], [ %indvars.iv.next.i40.3, %bb.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.i ]
  %i.ba = getelementptr inbounds nuw [20 x i8], ptr %i.am, i64 %indvars.iv.i39
  store float %i.au, ptr %i.ba, align 4, !tbaa !21
  %i.bb = getelementptr inbounds nuw [20 x i8], ptr %i.am, i64 %indvars.iv.i39
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  store float %i.au, ptr %i.bc, align 4, !tbaa !21
  %i.bd = getelementptr inbounds nuw [20 x i8], ptr %i.am, i64 %indvars.iv.i39
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store float %i.au, ptr %i.be, align 4, !tbaa !21
  %i.bf = getelementptr inbounds nuw [20 x i8], ptr %i.am, i64 %indvars.iv.i39
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 60
  store float %i.au, ptr %i.bg, align 4, !tbaa !21
  %indvars.iv.next.i40.3 = add nuw nsw i64 %indvars.iv.i39, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %voclib_initialize_envelopes.exit.loopexit.unr-lcssa, label %bb.i, !llvm.loop !1

voclib_initialize_envelopes.exit.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %voclib_initialize_envelopes.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %voclib_initialize_envelopes.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i39.epil.init = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i40.3, %voclib_initialize_envelopes.exit.loopexit.unr-lcssa ]
  %lcmp.mod44 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod44)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv.i39.epil = phi i64 [ %indvars.iv.i39.epil.init, %.epil.preheader ], [ %indvars.iv.next.i40.epil, %bb.j ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.bh = getelementptr inbounds nuw [20 x i8], ptr %i.am, i64 %indvars.iv.i39.epil
  store float %i.au, ptr %i.bh, align 4, !tbaa !21
  %indvars.iv.next.i40.epil = add nuw nsw i64 %indvars.iv.i39.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %voclib_initialize_envelopes.exit, label %bb.j, !llvm.loop !35

voclib_initialize_envelopes.exit:                 ; preds = %voclib_initialize_envelopes.exit.loopexit.unr-lcssa, %bb.j, %voclib_reset_history.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %voclib_reset_history.exit ], [ 1, %bb.j ], [ 1, %voclib_initialize_envelopes.exit.loopexit.unr-lcssa ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @voclib_reset_history(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84876
  %i.b = load i8, ptr %i.a, align 4, !tbaa !15    ; 3 uses
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %._crit_edge20, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84877
  %i.d = load i8, ptr %i.c, align 1, !tbaa !16    ; 3 uses
  %.not21 = icmp eq i8 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 29568
  %wide.trip.count32 = zext i8 %i.b to i64        ; 3 uses
  br i1 %.not21, label %.preheader.preheader, label %.preheader.us.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %xtraiter39 = and i64 %wide.trip.count32, 7     ; 3 uses
  %i.f = icmp ult i8 %i.b, 8
  br i1 %i.f, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter43 = and i64 %wide.trip.count32, 248
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext i8 %i.d to i64          ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.g = icmp ult i8 %i.d, 4
  %unroll_iter = and i64 %wide.trip.count, 252
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod38 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv24 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next25, %._crit_edge.us ] ; 4 uses
  %i.h = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %indvars.iv24 ; 5 uses
  %i.i = getelementptr inbounds nuw [288 x i8], ptr %i.e, i64 %indvars.iv24 ; 5 uses
  br i1 %i.g, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.j = getelementptr inbounds nuw [36 x i8], ptr %i.h, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw [36 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 27668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw [36 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw [36 x i8], ptr %i.i, i64 %indvars.iv.next ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 27668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.t = getelementptr inbounds nuw [36 x i8], ptr %i.h, i64 %indvars.iv.next.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw [36 x i8], ptr %i.i, i64 %indvars.iv.next.1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 27668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.y = getelementptr inbounds nuw [36 x i8], ptr %i.h, i64 %indvars.iv.next.2
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw [36 x i8], ptr %i.i, i64 %indvars.iv.next.2 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 27668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !2

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ad = getelementptr inbounds nuw [36 x i8], ptr %i.h, i64 %indvars.iv.epil
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw [36 x i8], ptr %i.i, i64 %indvars.iv.epil ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 27668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !36

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %i.ai = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 27652
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count32
  br i1 %exitcond28.not, label %._crit_edge20, label %.preheader.us, !llvm.loop !0

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv29 = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next30.7, %.preheader ] ; 9 uses
  %niter44 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter44.next.7, %.preheader ]
  %i.ak = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv29
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 27652
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv29
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 27672
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv29
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 27692
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv29
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 27712
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv29
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 27732
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.au = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv29
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 27752
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv29
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 27772
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv29
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 27792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  %indvars.iv.next30.7 = add nuw nsw i64 %indvars.iv29, 8 ; 2 uses
  %niter44.next.7 = add i64 %niter44, 8           ; 2 uses
  %niter44.ncmp.7 = icmp eq i64 %niter44.next.7, %unroll_iter43
  br i1 %niter44.ncmp.7, label %._crit_edge20.loopexit.unr-lcssa, label %.preheader, !llvm.loop !0

._crit_edge20.loopexit.unr-lcssa:                 ; preds = %.preheader
  %lcmp.mod41.not = icmp eq i64 %xtraiter39, 0
  br i1 %lcmp.mod41.not, label %._crit_edge20, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge20.loopexit.unr-lcssa, %.preheader.preheader
  %indvars.iv29.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next30.7, %._crit_edge20.loopexit.unr-lcssa ]
  %lcmp.mod42 = icmp ne i64 %xtraiter39, 0
  tail call void @llvm.assume(i1 %lcmp.mod42)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %indvars.iv29.epil = phi i64 [ %indvars.iv.next30.epil, %.preheader.epil ], [ %indvars.iv29.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %epil.iter40 = phi i64 [ %epil.iter40.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.ba = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv29.epil
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 27652
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  %indvars.iv.next30.epil = add nuw nsw i64 %indvars.iv29.epil, 1
  %epil.iter40.next = add i64 %epil.iter40, 1     ; 2 uses
  %epil.iter40.cmp.not = icmp eq i64 %epil.iter40.next, %xtraiter39
  br i1 %epil.iter40.cmp.not, label %._crit_edge20, label %.preheader.epil, !llvm.loop !37

._crit_edge20:                                    ; preds = %._crit_edge.us, %._crit_edge20.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @voclib_initialize_filterbank(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %sincos.sin.i156 = alloca double, align 8       ; 4 uses
  %sincos.cos.i157 = alloca double, align 8       ; 4 uses
  %sincos.sin.i = alloca double, align 8          ; 4 uses
  %sincos.cos.i = alloca double, align 8          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84872
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14   ; 2 uses
  %i.c = uitofp i32 %i.b to double                ; 2 uses
  %i.d = fcmp ogt double %i.c, 1.200000e+04
  %spec.store.select = select i1 %i.d, double 1.200000e+04, double %i.c
  %i.e = fdiv double %spec.store.select, 8.000000e+01
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84876
  %i.g = load i8, ptr %i.f, align 4, !tbaa !15    ; 3 uses
  %i.h = uitofp i8 %i.g to double
  %i.i = fdiv double 1.000000e+00, %i.h
  %i.j = tail call double @pow(double noundef %i.e, double noundef %i.i) #12 ; 2 uses
  %.not164 = icmp eq i8 %i.g, 0
  br i1 %.not164, label %._crit_edge163, label %.lr.ph162.a

.lr.ph162.a:                                      ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  %i.k = uitofp i32 %i.b to float
  %i.l = fpext float %i.k to double               ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84877
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 84868
  %i.o = load float, ptr %i.n, align 4, !tbaa !23 ; 2 uses
  %i.p = fcmp une float %i.o, 1.000000e+00
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 29568 ; 3 uses
  %i.r = fpext float %i.o to double
  %i.s = load i8, ptr %i.m, align 1, !tbaa !16    ; 2 uses
  %i.t = icmp ugt i8 %i.s, 1                      ; 2 uses
  %wide.trip.count174 = zext i8 %i.g to i64
  %wide.trip.count = zext i8 %i.s to i64          ; 2 uses
  %i.u = add nsw i64 %wide.trip.count, -1         ; 5 uses
  %i.v = add nsw i64 %wide.trip.count, -2         ; 2 uses
  %xtraiter = and i64 %i.u, 3                     ; 3 uses
  %i.w = icmp ult i64 %i.v, 3
  %unroll_iter = and i64 %i.u, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod179 = icmp ne i64 %xtraiter, 0
  %xtraiter180 = and i64 %i.u, 1
  %i.x = icmp eq i64 %i.v, 0
  %unroll_iter184 = and i64 %i.u, -2
  %lcmp.mod182.not = icmp eq i64 %xtraiter180, 0
  %lcmp.mod183 = trunc i64 %i.u to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph162.a, %._crit_edge
  %indvars.iv171 = phi i64 [ 0, %.lr.ph162.a ], [ %indvars.iv.next172, %._crit_edge ] ; 6 uses
  %.0151160 = phi double [ 0.000000e+00, %.lr.ph162.a ], [ %.1152, %._crit_edge ] ; 3 uses
  %i.y = fcmp ogt double %.0151160, 0.000000e+00
  %i.z = fmul double %i.j, %.0151160
  %.1152 = select i1 %i.y, double %i.z, double 8.000000e+01 ; 5 uses
  %i.aa = fmul double %i.j, %.1152
  %i.ab = fsub double %i.aa, %.0151160
  %i.ac = fdiv double %i.ab, %.1152               ; 2 uses
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %indvars.iv171 ; 7 uses
  %i.ae = insertelement <2 x double> poison, double %.1152, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ac, i64 1
  %i.ag = fptrunc <2 x double> %i.af to <2 x float>
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.sin.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.cos.i)
  %i.ah = fpext <2 x float> %i.ag to <2 x double>
  %i.ai = fmul <2 x double> %i.ah, <double f0x401921FB54442D18, double f0x3FD62E42FEFA39EF> ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0
  %i.ak = fdiv double %i.aj, %i.l
  %i.al = fptrunc double %i.ak to float
  %i.am = fpext float %i.al to double             ; 2 uses
  call void @sincos(double %i.am, ptr nonnull %sincos.sin.i, ptr nonnull %sincos.cos.i)
  %sin.i = load double, ptr %sincos.sin.i, align 8
  %cos.i = load double, ptr %sincos.cos.i, align 8
  %2 = fptrunc double %sin.i to float             ; 2 uses
  %i.an = extractelement <2 x double> %i.ai, i64 1
  %i.ao = fmul double %i.an, %i.am
  %i.ap = fpext float %2 to double
  %i.aq = fdiv double %i.ao, %i.ap
  %3 = call double @sinh(double noundef %i.aq) #12
  %i.ar = fptrunc double %3 to float
  %i.as = fmul float %2, %i.ar                    ; 4 uses
  %i.at = fsub float 1.000000e+00, %i.as
  %i.au = fptrunc double %cos.i to float
  %i.av = fmul float %i.au, -2.000000e+00
  %i.aw = fadd float %i.as, 1.000000e+00          ; 2 uses
  %i.ax = fneg float %i.as
  %i.ay = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.as, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.ax, i64 2
  %i.ba = insertelement <4 x float> %i.az, float %i.av, i64 3
  %i.bb = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bd = fdiv <4 x float> %i.ba, %i.bc           ; 6 uses
  store <4 x float> %i.bd, ptr %i.ad, align 4, !tbaa !12
  %i.be = fdiv float %i.at, %i.aw                 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store float %i.be, ptr %i.bf, align 4, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.sin.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.cos.i)
  br i1 %i.t, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  br i1 %i.w, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.bg = getelementptr inbounds nuw [36 x i8], ptr %i.ad, i64 %indvars.iv ; 2 uses
  store <4 x float> %i.bd, ptr %i.bg, align 4, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store float %i.be, ptr %i.bh, align 4, !tbaa !25
  %i.bi = getelementptr inbounds nuw [36 x i8], ptr %i.ad, i64 %indvars.iv ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 36
  store <4 x float> %i.bd, ptr %i.bj, align 4, !tbaa !12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 52
  store float %i.be, ptr %i.bk, align 4, !tbaa !25
  %i.bl = getelementptr inbounds nuw [36 x i8], ptr %i.ad, i64 %indvars.iv ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  store <4 x float> %i.bd, ptr %i.bm, align 4, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 88
  store float %i.be, ptr %i.bn, align 4, !tbaa !25
  %i.bo = getelementptr inbounds nuw [36 x i8], ptr %i.ad, i64 %indvars.iv ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 108
  store <4 x float> %i.bd, ptr %i.bp, align 4, !tbaa !12
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 124
  store float %i.be, ptr %i.bq, align 4, !tbaa !25
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !38

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod179)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.br = getelementptr inbounds nuw [36 x i8], ptr %i.ad, i64 %indvars.iv.epil ; 2 uses
  store <4 x float> %i.bd, ptr %i.br, align 4, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store float %i.be, ptr %i.bs, align 4, !tbaa !25
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !39

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %bb.c, %bb.b
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.bt = getelementptr inbounds nuw [288 x i8], ptr %i.q, i64 %indvars.iv171 ; 2 uses
  %i.bu = fmul double %.1152, %i.r
  %i.bv = fptrunc double %i.bu to float
  %i.bw = fptrunc double %i.ac to float
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.sin.i156)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.cos.i157)
  %i.bx = fpext float %i.bv to double
  %i.by = fmul double %i.bx, f0x401921FB54442D18
  %i.bz = fdiv double %i.by, %i.l
  %i.ca = fptrunc double %i.bz to float
  %i.cb = fpext float %i.ca to double             ; 2 uses
  call void @sincos(double %i.cb, ptr nonnull %sincos.sin.i156, ptr nonnull %sincos.cos.i157)
  %sin.i158 = load double, ptr %sincos.sin.i156, align 8
  %cos.i159 = load double, ptr %sincos.cos.i157, align 8
  %4 = fptrunc double %sin.i158 to float          ; 2 uses
  %i.cc = fpext float %i.bw to double
  %i.cd = fmul double %i.cc, f0x3FD62E42FEFA39EF
  %i.ce = fmul double %i.cd, %i.cb
  %i.cf = fpext float %4 to double
  %i.cg = fdiv double %i.ce, %i.cf
  %5 = call double @sinh(double noundef %i.cg) #12
  %i.ch = fptrunc double %5 to float
  %i.ci = fmul float %4, %i.ch                    ; 4 uses
  %i.cj = fsub float 1.000000e+00, %i.ci
  %i.ck = fptrunc double %cos.i159 to float
  %i.cl = fmul float %i.ck, -2.000000e+00
  %i.cm = fadd float %i.ci, 1.000000e+00          ; 2 uses
  %i.cn = fneg float %i.ci
  %i.co = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ci, i64 0
  %i.cp = insertelement <4 x float> %i.co, float %i.cn, i64 2
  %i.cq = insertelement <4 x float> %i.cp, float %i.cl, i64 3
  %i.cr = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ct = fdiv <4 x float> %i.cq, %i.cs           ; 2 uses
  store <4 x float> %i.ct, ptr %i.bt, align 4, !tbaa !12
  %i.cu = fdiv float %i.cj, %i.cm                 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store float %i.cu, ptr %6, align 4, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.sin.i156)
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.cos.i157)
  br label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.cv = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %indvars.iv171 ; 2 uses
  %i.cw = getelementptr inbounds nuw [288 x i8], ptr %i.q, i64 %indvars.iv171 ; 2 uses
  %i.cx = load <4 x float>, ptr %i.cv, align 4, !tbaa !12 ; 2 uses
  store <4 x float> %i.cx, ptr %i.cw, align 4, !tbaa !12
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !25 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store float %i.cz, ptr %7, align 4, !tbaa !25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi float [ %i.cz, %bb.e ], [ %i.cu, %bb.d ] ; 7 uses
  %i.da = phi <4 x float> [ %i.cx, %bb.e ], [ %i.ct, %bb.d ] ; 7 uses
  %i.db = getelementptr inbounds nuw [288 x i8], ptr %i.q, i64 %indvars.iv171 ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 27648 ; 4 uses
  store <4 x float> %i.da, ptr %i.dc, align 4, !tbaa !12
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 27664
  store float %.sink, ptr %i.dd, align 4, !tbaa !25
  br i1 %i.t, label %.lr.ph158.preheader, label %._crit_edge

.lr.ph158.preheader:                              ; preds = %bb.f
  br i1 %i.x, label %.lr.ph158.epil.preheader, label %.lr.ph158

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %.lr.ph158
  %indvars.iv166 = phi i64 [ %indvars.iv.next167.1, %.lr.ph158 ], [ 1, %.lr.ph158.preheader ] ; 4 uses
  %niter185 = phi i64 [ %niter185.next.1, %.lr.ph158 ], [ 0, %.lr.ph158.preheader ]
  %i.de = getelementptr inbounds nuw [36 x i8], ptr %i.db, i64 %indvars.iv166 ; 2 uses
  store <4 x float> %i.da, ptr %i.de, align 4, !tbaa !12
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store float %.sink, ptr %i.df, align 4, !tbaa !25
  %i.dg = getelementptr inbounds nuw [36 x i8], ptr %i.dc, i64 %indvars.iv166 ; 2 uses
  store <4 x float> %i.da, ptr %i.dg, align 4, !tbaa !12
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store float %.sink, ptr %i.dh, align 4, !tbaa !25
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw [36 x i8], ptr %i.db, i64 %indvars.iv.next167 ; 2 uses
  store <4 x float> %i.da, ptr %i.di, align 4, !tbaa !12
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store float %.sink, ptr %i.dj, align 4, !tbaa !25
  %i.dk = getelementptr inbounds nuw [36 x i8], ptr %i.dc, i64 %indvars.iv.next167 ; 2 uses
  store <4 x float> %i.da, ptr %i.dk, align 4, !tbaa !12
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store float %.sink, ptr %i.dl, align 4, !tbaa !25
  %indvars.iv.next167.1 = add nuw nsw i64 %indvars.iv166, 2 ; 2 uses
  %niter185.next.1 = add nuw i64 %niter185, 2     ; 2 uses
  %niter185.ncmp.1 = icmp eq i64 %niter185.next.1, %unroll_iter184
  br i1 %niter185.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph158, !llvm.loop !40

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph158
  br i1 %lcmp.mod182.not, label %._crit_edge, label %.lr.ph158.epil.preheader

.lr.ph158.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph158.preheader
  %indvars.iv166.epil.init = phi i64 [ 1, %.lr.ph158.preheader ], [ %indvars.iv.next167.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod183)
  %i.dm = getelementptr inbounds nuw [36 x i8], ptr %i.db, i64 %indvars.iv166.epil.init ; 2 uses
  store <4 x float> %i.da, ptr %i.dm, align 4, !tbaa !12
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store float %.sink, ptr %i.dn, align 4, !tbaa !25
  %i.do = getelementptr inbounds nuw [36 x i8], ptr %i.dc, i64 %indvars.iv166.epil.init ; 2 uses
  store <4 x float> %i.da, ptr %i.do, align 4, !tbaa !12
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store float %.sink, ptr %i.dp, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph158.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.f
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count174
  br i1 %exitcond175.not, label %._crit_edge163, label %bb.b, !llvm.loop !41

._crit_edge163:                                   ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @voclib_process(ptr nofree noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84876
  %i.b = load i8, ptr %i.a, align 4, !tbaa !15    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84877
  %i.d = load i8, ptr %i.c, align 1, !tbaa !16    ; 4 uses
  %.not = icmp eq ptr %1, null
  %.not108 = icmp eq ptr %2, null
  %or.cond = or i1 %.not, %.not108
  %.not109 = icmp eq ptr %3, null
  %or.cond110 = or i1 %or.cond, %.not109
  %i.e = icmp eq i32 %4, 0
  %or.cond111 = or i1 %or.cond110, %i.e
  br i1 %or.cond111, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84878
  %i.g = load i8, ptr %i.f, align 2, !tbaa !17
  %i.h = icmp eq i8 %i.g, 2
  br i1 %i.h, label %.preheader112, label %.preheader113.lr.ph

.preheader113.lr.ph:                              ; preds = %bb.b
  %.not145 = icmp eq i8 %i.b, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 29568
  %i.j = icmp ugt i8 %i.d, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 27648
  %i.l = zext i32 %4 to i64                       ; 2 uses
  br i1 %.not145, label %.preheader113.preheader, label %.preheader113.us.preheader

.preheader113.us.preheader:                       ; preds = %.preheader113.lr.ph
  %wide.trip.count162 = zext i8 %i.b to i64
  %wide.trip.count = zext i8 %i.d to i64
  br label %.preheader113.us

.preheader113.preheader:                          ; preds = %.preheader113.lr.ph
  %i.m = shl nuw nsw i64 %i.l, 2
  br label %.loopexit.sink.split

.preheader113.us:                                 ; preds = %.preheader113.us.preheader, %._crit_edge123.us
  %indvars.iv164 = phi i64 [ 0, %.preheader113.us.preheader ], [ %indvars.iv.next165, %._crit_edge123.us ] ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv164
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv164
  br label %bb.c

bb.c:                                             ; preds = %.preheader113.us, %._crit_edge.us
  %indvars.iv159 = phi i64 [ 0, %.preheader113.us ], [ %indvars.iv.next160, %._crit_edge.us ] ; 4 uses
  %.091121.us = phi float [ 0.000000e+00, %.preheader113.us ], [ %i.ek, %._crit_edge.us ]
  %i.p = load float, ptr %i.n, align 4, !tbaa !12 ; 2 uses
  %i.q = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %indvars.iv159 ; 10 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 20 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !50 ; 2 uses
  %i.w = fmul float %i.t, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.r, float %i.p, float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.z = load float, ptr %i.y, align 4, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !52
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.z, float %i.ab, float %i.x)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !53
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 28 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !54 ; 2 uses
  %i.ah = fneg float %i.ae
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ag, float %i.ac)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !55
  %i.an = fneg float %i.ak
  store float %i.v, ptr %i.aa, align 4, !tbaa !52
  store float %i.p, ptr %i.u, align 4, !tbaa !50
  store float %i.ag, ptr %i.al, align 4, !tbaa !55
  %i.ao = getelementptr inbounds nuw [288 x i8], ptr %i.i, i64 %indvars.iv159 ; 10 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !49
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 20 ; 2 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !50 ; 2 uses
  %i.au = fmul float %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aw = load float, ptr %i.av, align 4, !tbaa !51
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !52
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !53
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 28 ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !54 ; 2 uses
  %i.bd = fneg float %i.ba
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bf = load float, ptr %i.be, align 4, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !55
  %i.bi = fneg float %i.bf
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.an, float %i.am, float %i.ai) ; 3 uses
  store float %i.bj, ptr %i.af, align 4, !tbaa !54
  %i.bk = load float, ptr %i.o, align 4, !tbaa !12 ; 2 uses
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.bk, float %i.au)
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.ay, float %i.bl)
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.bc, float %i.bm)
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.bh, float %i.bn) ; 3 uses
  store float %i.at, ptr %i.ax, align 4, !tbaa !52
  store float %i.bk, ptr %i.as, align 4, !tbaa !50
  store float %i.bc, ptr %i.bg, align 4, !tbaa !55
  store float %i.bo, ptr %i.bb, align 4, !tbaa !54
  %i.bp = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %i.bo, i64 1 ; 2 uses
  br i1 %i.j, label %.lr.ph.us, label %._crit_edge.us

.lr.ph.us:                                        ; preds = %bb.c, %.lr.ph.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.us ], [ 1, %bb.c ] ; 3 uses
  %.0118.us = phi float [ %i.dl, %.lr.ph.us ], [ %i.bo, %bb.c ]
  %.089117.us = phi float [ %i.dm, %.lr.ph.us ], [ %i.bj, %bb.c ]
  %i.br = phi <2 x float> [ %i.dk, %.lr.ph.us ], [ %i.bq, %bb.c ]
  %i.bs = getelementptr inbounds nuw [36 x i8], ptr %i.q, i64 %indvars.iv ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 20 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 28 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 32 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !55
  %i.ca = getelementptr inbounds nuw [36 x i8], ptr %i.ao, i64 %indvars.iv ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 20 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 28 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !55
  %i.ci = load <2 x float>, ptr %i.bs, align 4, !tbaa !12 ; 2 uses
  %i.cj = load <2 x float>, ptr %i.bu, align 4, !tbaa !12 ; 2 uses
  %i.ck = load <2 x float>, ptr %i.bv, align 4, !tbaa !12 ; 2 uses
  %i.cl = load float, ptr %i.bw, align 4, !tbaa !54
  %i.cm = load <2 x float>, ptr %i.bx, align 4, !tbaa !12 ; 2 uses
  %i.cn = load float, ptr %i.bt, align 4, !tbaa !50
  store float %i.cn, ptr %i.bv, align 4, !tbaa !52
  store float %.089117.us, ptr %i.bt, align 4, !tbaa !50
  store float %i.cl, ptr %i.by, align 4, !tbaa !55
  %i.co = load <2 x float>, ptr %i.ca, align 4, !tbaa !12 ; 2 uses
  %i.cp = load <2 x float>, ptr %i.cf, align 4, !tbaa !12 ; 2 uses
  %i.cq = load float, ptr %i.cb, align 4, !tbaa !50
  %i.cr = shufflevector <2 x float> %i.ci, <2 x float> %i.co, <2 x i32> <i32 1, i32 3>
  %i.cs = shufflevector <2 x float> %i.cm, <2 x float> %i.cp, <2 x i32> <i32 1, i32 3>
  %i.ct = fmul <2 x float> %i.cr, %i.cs
  %i.cu = shufflevector <2 x float> %i.ci, <2 x float> %i.co, <2 x i32> <i32 0, i32 2>
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.br, <2 x float> %i.ct)
  %i.cw = load <2 x float>, ptr %i.cc, align 4, !tbaa !12 ; 2 uses
  %i.cx = load <2 x float>, ptr %i.cd, align 4, !tbaa !12 ; 2 uses
  %i.cy = load float, ptr %i.ce, align 4, !tbaa !54
  %i.cz = shufflevector <2 x float> %i.cj, <2 x float> %i.cw, <2 x i32> <i32 0, i32 2>
  %i.da = shufflevector <2 x float> %i.ck, <2 x float> %i.cx, <2 x i32> <i32 0, i32 2>
  %i.db = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.da, <2 x float> %i.cv)
  %i.dc = shufflevector <2 x float> %i.cj, <2 x float> %i.cw, <2 x i32> <i32 1, i32 3>
  %i.dd = fneg <2 x float> %i.dc
  %i.de = shufflevector <2 x float> %i.ck, <2 x float> %i.cx, <2 x i32> <i32 1, i32 3>
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.de, <2 x float> %i.db)
  %i.dg = shufflevector <2 x float> %i.cm, <2 x float> %i.cp, <2 x i32> <i32 0, i32 2>
  %i.dh = fneg <2 x float> %i.dg
  %i.di = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.dj = insertelement <2 x float> %i.di, float %i.ch, i64 1
  %i.dk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.dj, <2 x float> %i.df) ; 4 uses
  %i.dl = extractelement <2 x float> %i.dk, i64 1 ; 2 uses
  %i.dm = extractelement <2 x float> %i.dk, i64 0 ; 2 uses
  store float %i.dm, ptr %i.bw, align 4, !tbaa !54
  store float %i.cq, ptr %i.cd, align 4, !tbaa !52
  store float %.0118.us, ptr %i.cb, align 4, !tbaa !50
  store float %i.cy, ptr %i.cg, align 4, !tbaa !55
  store float %i.dl, ptr %i.ce, align 4, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !42
end_hunk_0
begin_hunk_1_@voclib_process:bb.a
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !48
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gb, i64 27652
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !49
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gb, i64 27668 ; 2 uses
  %i.he = load float, ptr %i.hd, align 4, !tbaa !50 ; 2 uses
  %i.hf = fmul float %i.hc, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gb, i64 27656
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !51
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gb, i64 27672 ; 2 uses
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !52
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gb, i64 27660
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gb, i64 27676 ; 2 uses
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !54 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gb, i64 27680 ; 2 uses
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !55
  %i.hp = load <2 x float>, ptr %i.hk, align 4, !tbaa !12
  %i.hq = fneg <2 x float> %i.hp                  ; 2 uses
  %i.hr = tail call float @llvm.fmuladd.f32(float %i.gy, float %i.gx, float %i.gt) ; 3 uses
  store float %i.hr, ptr %i.gq, align 4, !tbaa !54
  %i.hs = load float, ptr %i.ey, align 4, !tbaa !12 ; 2 uses
  %i.ht = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.hs, float %i.hf)
  %i.hu = tail call float @llvm.fmuladd.f32(float %i.hh, float %i.hj, float %i.ht)
  %i.hv = extractelement <2 x float> %i.hq, i64 0
  %i.hw = tail call float @llvm.fmuladd.f32(float %i.hv, float %i.hm, float %i.hu)
  %i.hx = extractelement <2 x float> %i.hq, i64 1
  %i.hy = tail call float @llvm.fmuladd.f32(float %i.hx, float %i.ho, float %i.hw) ; 3 uses
  store float %i.he, ptr %i.hi, align 4, !tbaa !52
  store float %i.hs, ptr %i.hd, align 4, !tbaa !50
  store float %i.hm, ptr %i.hn, align 4, !tbaa !55
  store float %i.hy, ptr %i.hl, align 4, !tbaa !54
  %i.hz = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.ia = insertelement <2 x float> %i.hz, float %i.hy, i64 1 ; 2 uses
  br i1 %i.eo, label %.lr.ph.us141, label %._crit_edge.us142

.lr.ph.us141:                                     ; preds = %bb.d, %.lr.ph.us141
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %.lr.ph.us141 ], [ 1, %bb.d ] ; 4 uses
  %.093129.us = phi float [ %i.kt, %.lr.ph.us141 ], [ %i.hy, %bb.d ]
  %.094128.us = phi float [ %i.ku, %.lr.ph.us141 ], [ %i.hr, %bb.d ]
  %.095127.us = phi float [ %i.iz, %.lr.ph.us141 ], [ %i.fz, %bb.d ] ; 2 uses
  %i.ib = phi <2 x float> [ %i.ks, %.lr.ph.us141 ], [ %i.ia, %bb.d ]
  %i.ic = getelementptr inbounds nuw [36 x i8], ptr %i.fb, i64 %indvars.iv172 ; 8 uses
  %i.id = load float, ptr %i.ic, align 4, !tbaa !48
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  %i.if = load float, ptr %i.ie, align 4, !tbaa !49
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 20 ; 2 uses
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !50 ; 2 uses
  %i.ii = fmul float %i.if, %i.ih
  %i.ij = tail call float @llvm.fmuladd.f32(float %i.id, float %.095127.us, float %i.ii)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.il = load float, ptr %i.ik, align 4, !tbaa !51
  %i.im = getelementptr inbounds nuw i8, ptr %i.ic, i64 24 ; 2 uses
  %i.in = load float, ptr %i.im, align 4, !tbaa !52
  %i.io = tail call float @llvm.fmuladd.f32(float %i.il, float %i.in, float %i.ij)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ic, i64 12
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ic, i64 28 ; 2 uses
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !54 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ic, i64 32 ; 2 uses
  %i.it = load float, ptr %i.is, align 4, !tbaa !55
  %i.iu = load <2 x float>, ptr %i.ip, align 4, !tbaa !12
  %i.iv = fneg <2 x float> %i.iu                  ; 2 uses
  %i.iw = extractelement <2 x float> %i.iv, i64 0
  %i.ix = tail call float @llvm.fmuladd.f32(float %i.iw, float %i.ir, float %i.io)
  %i.iy = extractelement <2 x float> %i.iv, i64 1
  %i.iz = tail call float @llvm.fmuladd.f32(float %i.iy, float %i.it, float %i.ix) ; 3 uses
  store float %i.ih, ptr %i.im, align 4, !tbaa !52
  store float %.095127.us, ptr %i.ig, align 4, !tbaa !50
  store float %i.ir, ptr %i.is, align 4, !tbaa !55
  store float %i.iz, ptr %i.iq, align 4, !tbaa !54
  %i.ja = getelementptr inbounds nuw [36 x i8], ptr %i.gb, i64 %indvars.iv172 ; 7 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 20 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 24 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 28 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 32 ; 2 uses
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !55
  %i.ji = getelementptr inbounds nuw [36 x i8], ptr %i.gz, i64 %indvars.iv172 ; 7 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 20 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 24 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 28 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ji, i64 32 ; 2 uses
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !55
  %i.jq = load <2 x float>, ptr %i.ja, align 4, !tbaa !12 ; 2 uses
  %i.jr = load <2 x float>, ptr %i.jc, align 4, !tbaa !12 ; 2 uses
  %i.js = load <2 x float>, ptr %i.jd, align 4, !tbaa !12 ; 2 uses
  %i.jt = load float, ptr %i.je, align 4, !tbaa !54
  %i.ju = load <2 x float>, ptr %i.jf, align 4, !tbaa !12 ; 2 uses
  %i.jv = load float, ptr %i.jb, align 4, !tbaa !50
  store float %i.jv, ptr %i.jd, align 4, !tbaa !52
  store float %.094128.us, ptr %i.jb, align 4, !tbaa !50
  store float %i.jt, ptr %i.jg, align 4, !tbaa !55
  %i.jw = load <2 x float>, ptr %i.ji, align 4, !tbaa !12 ; 2 uses
  %i.jx = load <2 x float>, ptr %i.jn, align 4, !tbaa !12 ; 2 uses
  %i.jy = load float, ptr %i.jj, align 4, !tbaa !50
  %i.jz = shufflevector <2 x float> %i.jq, <2 x float> %i.jw, <2 x i32> <i32 1, i32 3>
  %i.ka = shufflevector <2 x float> %i.ju, <2 x float> %i.jx, <2 x i32> <i32 1, i32 3>
  %i.kb = fmul <2 x float> %i.jz, %i.ka
  %i.kc = shufflevector <2 x float> %i.jq, <2 x float> %i.jw, <2 x i32> <i32 0, i32 2>
  %i.kd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kc, <2 x float> %i.ib, <2 x float> %i.kb)
  %i.ke = load <2 x float>, ptr %i.jk, align 4, !tbaa !12 ; 2 uses
  %i.kf = load <2 x float>, ptr %i.jl, align 4, !tbaa !12 ; 2 uses
  %i.kg = load float, ptr %i.jm, align 4, !tbaa !54
  %i.kh = shufflevector <2 x float> %i.jr, <2 x float> %i.ke, <2 x i32> <i32 0, i32 2>
  %i.ki = shufflevector <2 x float> %i.js, <2 x float> %i.kf, <2 x i32> <i32 0, i32 2>
  %i.kj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kh, <2 x float> %i.ki, <2 x float> %i.kd)
  %i.kk = shufflevector <2 x float> %i.jr, <2 x float> %i.ke, <2 x i32> <i32 1, i32 3>
  %i.kl = fneg <2 x float> %i.kk
  %i.km = shufflevector <2 x float> %i.js, <2 x float> %i.kf, <2 x i32> <i32 1, i32 3>
  %i.kn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kl, <2 x float> %i.km, <2 x float> %i.kj)
  %i.ko = shufflevector <2 x float> %i.ju, <2 x float> %i.jx, <2 x i32> <i32 0, i32 2>
  %i.kp = fneg <2 x float> %i.ko
  %i.kq = insertelement <2 x float> poison, float %i.jh, i64 0
  %i.kr = insertelement <2 x float> %i.kq, float %i.jp, i64 1
  %i.ks = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kp, <2 x float> %i.kr, <2 x float> %i.kn) ; 4 uses
  %i.kt = extractelement <2 x float> %i.ks, i64 1 ; 2 uses
  %i.ku = extractelement <2 x float> %i.ks, i64 0 ; 2 uses
  store float %i.ku, ptr %i.je, align 4, !tbaa !54
  store float %i.jy, ptr %i.jl, align 4, !tbaa !52
  store float %.093129.us, ptr %i.jj, align 4, !tbaa !50
  store float %i.kg, ptr %i.jo, align 4, !tbaa !55
  store float %i.kt, ptr %i.jm, align 4, !tbaa !54
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next173, %wide.trip.count175
  br i1 %exitcond176.not, label %._crit_edge.us142, label %.lr.ph.us141, !llvm.loop !45

._crit_edge.us142:                                ; preds = %.lr.ph.us141, %bb.d
  %.095.lcssa.us = phi float [ %i.fz, %bb.d ], [ %i.iz, %.lr.ph.us141 ]
  %i.kv = phi <2 x float> [ %i.ia, %bb.d ], [ %i.ks, %.lr.ph.us141 ]
  %i.kw = getelementptr inbounds nuw [20 x i8], ptr %i.ep, i64 %indvars.iv177 ; 5 uses
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !21 ; 5 uses
  %i.ky = fsub float 1.000000e+00, %i.kx          ; 4 uses
  %i.kz = tail call float @llvm.fabs.f32(float %.095.lcssa.us)
  %i.la = fmul float %i.kz, %i.ky
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kw, i64 4 ; 2 uses
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !12
  %i.ld = tail call float @llvm.fmuladd.f32(float %i.kx, float %i.lc, float %i.la) ; 2 uses
  store float %i.ld, ptr %i.lb, align 4, !tbaa !12
  %i.le = getelementptr inbounds nuw i8, ptr %i.kw, i64 8 ; 2 uses
  %i.lf = load float, ptr %i.le, align 4, !tbaa !12
  %i.lg = fmul float %i.kx, %i.lf
  %i.lh = tail call float @llvm.fmuladd.f32(float %i.ky, float %i.ld, float %i.lg) ; 2 uses
  store float %i.lh, ptr %i.le, align 4, !tbaa !12
  %i.li = getelementptr inbounds nuw i8, ptr %i.kw, i64 12 ; 2 uses
  %i.lj = load float, ptr %i.li, align 4, !tbaa !12
  %i.lk = fmul float %i.kx, %i.lj
  %i.ll = tail call float @llvm.fmuladd.f32(float %i.ky, float %i.lh, float %i.lk) ; 2 uses
  store float %i.ll, ptr %i.li, align 4, !tbaa !12
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kw, i64 16 ; 2 uses
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !12
  %i.lo = fmul float %i.kx, %i.ln
  %i.lp = tail call float @llvm.fmuladd.f32(float %i.ky, float %i.ll, float %i.lo) ; 2 uses
  store float %i.lp, ptr %i.lm, align 4, !tbaa !12
  %i.lq = insertelement <2 x float> poison, float %i.lp, i64 0
  %i.lr = shufflevector <2 x float> %i.lq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ls = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kv, <2 x float> %i.lr, <2 x float> %i.ez) ; 2 uses
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %exitcond181.not = icmp eq i64 %indvars.iv.next178, %wide.trip.count180
  br i1 %exitcond181.not, label %._crit_edge136.us, label %bb.d, !llvm.loop !46

._crit_edge136.us:                                ; preds = %._crit_edge.us142
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv182
  store <2 x float> %i.ls, ptr %i.lt, align 4, !tbaa !12
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 2 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.0102139.us, i64 4
  %i.lv = icmp samesign ult i64 %indvars.iv.next183, %i.eq
  br i1 %i.lv, label %.preheader.us, label %.loopexit, !llvm.loop !47

.loopexit.sink.split:                             ; preds = %.preheader.preheader, %.preheader113.preheader
  %.sink = phi i64 [ %i.m, %.preheader113.preheader ], [ %i.ev, %.preheader.preheader ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %3, i8 0, i64 %.sink, i1 false), !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge123.us, %._crit_edge136.us, %.loopexit.sink.split, %.preheader112, %bb.a
  %.0101 = phi i32 [ 1, %.preheader112 ], [ 0, %bb.a ], [ 1, %._crit_edge136.us ], [ 1, %.loopexit.sink.split ], [ 1, %._crit_edge123.us ]
  ret i32 %.0101
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define range(i32 0, 2) i32 @voclib_set_reaction_time(ptr nofree noundef captures(none) %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp olt float %1, 2.000000e-03
  %i.b = fcmp ogt float %1, 2.000000e+00
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %voclib_initialize_envelopes.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84864
  store float %1, ptr %i.c, align 4, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 27648 ; 6 uses
  %i.e = fpext ninf float %1 to double
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84872
  %i.g = load i32, ptr %i.f, align 4, !tbaa !14
  %i.h = uitofp i32 %i.g to double
  %i.i = fmul double %i.e, %i.h
  %i.j = fdiv double 1.000000e+00, %i.i
  %i.k = tail call double @pow(double noundef 1.000000e-02, double noundef %i.j) #12
  %i.l = fptrunc double %i.k to float             ; 6 uses
  store float %i.l, ptr %i.d, align 4, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84876
  %i.n = load i8, ptr %i.m, align 4, !tbaa !15    ; 3 uses
  %i.o = icmp ugt i8 %i.n, 1
  br i1 %i.o, label %.lr.ph.i, label %voclib_initialize_envelopes.exit

.lr.ph.i:                                         ; preds = %bb.b
  %wide.trip.count.i = zext i8 %i.n to i64
  %i.p = add nsw i64 %wide.trip.count.i, -1       ; 2 uses
  %xtraiter = and i64 %i.p, 3                     ; 3 uses
  %i.q = add i8 %i.n, -2
  %i.r = icmp ult i8 %i.q, 3
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.p, -4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.c ]
  %i.s = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %indvars.iv.i
  store float %i.l, ptr %i.s, align 4, !tbaa !21
  %i.t = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store float %i.l, ptr %i.u, align 4, !tbaa !21
  %i.v = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store float %i.l, ptr %i.w, align 4, !tbaa !21
  %i.x = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 60
  store float %i.l, ptr %i.y, align 4, !tbaa !21
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %voclib_initialize_envelopes.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1

voclib_initialize_envelopes.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %voclib_initialize_envelopes.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %voclib_initialize_envelopes.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i.3, %voclib_initialize_envelopes.exit.loopexit.unr-lcssa ]
  %lcmp.mod9 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod9)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.z = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %indvars.iv.i.epil
  store float %i.l, ptr %i.z, align 4, !tbaa !21
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %voclib_initialize_envelopes.exit, label %bb.d, !llvm.loop !56

voclib_initialize_envelopes.exit:                 ; preds = %voclib_initialize_envelopes.exit.loopexit.unr-lcssa, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.d ], [ 1, %voclib_initialize_envelopes.exit.loopexit.unr-lcssa ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define float @voclib_get_reaction_time(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84864
  %i.b = load float, ptr %i.a, align 4, !tbaa !19
  ret float %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define range(i32 0, 2) i32 @voclib_set_formant_shift(ptr nofree noundef captures(none) %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp olt float %1, 2.500000e-01
  %i.b = fcmp ogt float %1, 4.000000e+00
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84868
  store float %1, ptr %i.c, align 4, !tbaa !23
  tail call fastcc void @voclib_initialize_filterbank(ptr noundef %0, i32 noundef 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define float @voclib_get_formant_shift(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84868
  %i.b = load float, ptr %i.a, align 4, !tbaa !23
  ret float %i.b
}

; Function Attrs: nounwind uwtable
define void @ma_vocoder_node_config_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_vocoder_node_config) align 8 captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  tail call void @ma_node_config_init(ptr dead_on_unwind nonnull writable sret(%struct.ma_node_config) align 8 %0) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %1, ptr %i.a, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %2, ptr %i.b, align 4, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 16, ptr %i.c, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 6, ptr %i.d, align 4, !tbaa !33
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @ma_node_config_init(ptr dead_on_unwind writable sret(%struct.ma_node_config) align 8) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define i32 @ma_vocoder_node_init(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.ma_node_config, align 8     ; 7 uses
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = alloca [1 x i32], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = icmp eq ptr %3, null
  br i1 %i.c, label %voclib_initialize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(85240) %3, i8 0, i64 85240, i1 false)
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %voclib_initialize.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 360 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.j = load i32, ptr %i.i, align 4, !tbaa !33   ; 2 uses
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !31   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !30
  %i.p = trunc i32 %i.o to i8                     ; 2 uses
  %i.q = add i8 %i.h, -97
  %or.cond.i = icmp ult i8 %i.q, -93
  %i.r = add i8 %i.k, -9
  %or.cond5.i = icmp ult i8 %i.r, -8
  %or.cond35.i = or i1 %or.cond.i, %or.cond5.i
  %i.s = add i32 %i.m, -192001
  %or.cond7.i = icmp ult i32 %i.s, -184001
  %or.cond36.i = or i1 %or.cond7.i, %or.cond35.i
  %i.t = add i8 %i.p, -3
  %or.cond10.i = icmp ult i8 %i.t, -2
  %or.cond37.i = or i1 %or.cond36.i, %or.cond10.i
  br i1 %or.cond37.i, label %voclib_initialize.exit, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 85224 ; 2 uses
  store <2 x float> <float 3.000000e-02, float 1.000000e+00>, ptr %i.u, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 85232 ; 2 uses
  store i32 %i.m, ptr %i.v, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 85236 ; 2 uses
  store i8 %i.h, ptr %i.w, align 4, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 85237
  store i8 %i.k, ptr %i.x, align 1, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 85238
  store i8 %i.p, ptr %i.y, align 2, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 29928
  %.mask = and i32 %i.g, 255
  %wide.trip.count32.i.i = zext nneg i32 %.mask to i64
  %.mask20 = and i32 %i.j, 255                    ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %.mask20 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.aa = add nsw i32 %.mask20, -1
  %i.ab = icmp ult i32 %i.aa, 3
  %unroll_iter = and i64 %wide.trip.count.i.i, 252
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod24 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %indvars.iv24.i.i = phi i64 [ 0, %.preheader.us.preheader.i.i ], [ %indvars.iv.next25.i.i, %._crit_edge.us.i.i ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [288 x i8], ptr %i.e, i64 %indvars.iv24.i.i ; 5 uses
  %i.ad = getelementptr inbounds nuw [288 x i8], ptr %i.z, i64 %indvars.iv24.i.i ; 5 uses
  br i1 %i.ab, label %.epil.preheader, label %.preheader.us.i.i.new

.preheader.us.i.i.new:                            ; preds = %.preheader.us.i.i, %.preheader.us.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.preheader.us.i.i.new ], [ 0, %.preheader.us.i.i ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.us.i.i.new ], [ 0, %.preheader.us.i.i ]
  %i.ae = getelementptr inbounds nuw [36 x i8], ptr %i.ac, i64 %indvars.iv.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [36 x i8], ptr %i.ad, i64 %indvars.iv.i.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 27668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [36 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw [36 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 27668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw [36 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw [36 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.1 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 27668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.at = getelementptr inbounds nuw [36 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.2
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw [36 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.2 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 27668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.i.unr-lcssa, label %.preheader.us.i.i.new, !llvm.loop !2

._crit_edge.us.i.i.unr-lcssa:                     ; preds = %.preheader.us.i.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.i.unr-lcssa, %.preheader.us.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i.3, %._crit_edge.us.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.d ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ay = getelementptr inbounds nuw [36 x i8], ptr %i.ac, i64 %indvars.iv.i.i.epil
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw [36 x i8], ptr %i.ad, i64 %indvars.iv.i.i.epil ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 27668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i.i, label %bb.d, !llvm.loop !57

._crit_edge.us.i.i:                               ; preds = %bb.d, %._crit_edge.us.i.i.unr-lcssa
  %i.bd = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %indvars.iv24.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 27652
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %indvars.iv.next25.i.i = add nuw nsw i64 %indvars.iv24.i.i, 1 ; 2 uses
  %exitcond28.not.i.i = icmp eq i64 %indvars.iv.next25.i.i, %wide.trip.count32.i.i
  br i1 %exitcond28.not.i.i, label %voclib_reset_history.exit.i, label %.preheader.us.i.i, !llvm.loop !0

voclib_reset_history.exit.i:                      ; preds = %._crit_edge.us.i.i
  tail call fastcc void @voclib_initialize_filterbank(ptr noundef nonnull %i.e, i32 noundef 0)
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 28008 ; 6 uses
  %i.bg = load float, ptr %i.u, align 8, !tbaa !19
  %i.bh = fpext float %i.bg to double
  %i.bi = load i32, ptr %i.v, align 8, !tbaa !14
  %i.bj = uitofp i32 %i.bi to double
  %i.bk = fmul double %i.bh, %i.bj
  %i.bl = fdiv double 1.000000e+00, %i.bk
  %i.bm = tail call double @pow(double noundef 1.000000e-02, double noundef %i.bl) #12
  %i.bn = fptrunc double %i.bm to float           ; 6 uses
  store float %i.bn, ptr %i.bf, align 8, !tbaa !21
  %i.bo = load i8, ptr %i.w, align 4, !tbaa !15   ; 3 uses
  %i.bp = icmp ugt i8 %i.bo, 1
  br i1 %i.bp, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %voclib_reset_history.exit.i
  %wide.trip.count.i38.i = zext i8 %i.bo to i64
  %i.bq = add nsw i64 %wide.trip.count.i38.i, -1  ; 2 uses
  %xtraiter26 = and i64 %i.bq, 3                  ; 3 uses
  %i.br = add i8 %i.bo, -2
  %i.bs = icmp ult i8 %i.br, 3
  br i1 %i.bs, label %.epil.preheader25, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter30 = and i64 %i.bq, -4
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.new
  %indvars.iv.i39.i = phi i64 [ 1, %.lr.ph.i.i.new ], [ %indvars.iv.next.i40.i.3, %bb.e ] ; 5 uses
  %niter31 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter31.next.3, %bb.e ]
  %i.bt = getelementptr inbounds nuw [20 x i8], ptr %i.bf, i64 %indvars.iv.i39.i
  store float %i.bn, ptr %i.bt, align 4, !tbaa !21
  %i.bu = getelementptr inbounds nuw [20 x i8], ptr %i.bf, i64 %indvars.iv.i39.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  store float %i.bn, ptr %i.bv, align 4, !tbaa !21
  %i.bw = getelementptr inbounds nuw [20 x i8], ptr %i.bf, i64 %indvars.iv.i39.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store float %i.bn, ptr %i.bx, align 4, !tbaa !21
  %i.by = getelementptr inbounds nuw [20 x i8], ptr %i.bf, i64 %indvars.iv.i39.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 60
  store float %i.bn, ptr %i.bz, align 4, !tbaa !21
  %indvars.iv.next.i40.i.3 = add nuw nsw i64 %indvars.iv.i39.i, 4 ; 2 uses
  %niter31.next.3 = add nuw i64 %niter31, 4       ; 2 uses
  %niter31.ncmp.3 = icmp eq i64 %niter31.next.3, %unroll_iter30
  br i1 %niter31.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod28.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod28.not, label %.loopexit, label %.epil.preheader25

.epil.preheader25:                                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i39.i.epil.init = phi i64 [ 1, %.lr.ph.i.i ], [ %indvars.iv.next.i40.i.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod29 = icmp ne i64 %xtraiter26, 0
  tail call void @llvm.assume(i1 %lcmp.mod29)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader25
  %indvars.iv.i39.i.epil = phi i64 [ %indvars.iv.i39.i.epil.init, %.epil.preheader25 ], [ %indvars.iv.next.i40.i.epil, %bb.f ] ; 2 uses
  %epil.iter27 = phi i64 [ 0, %.epil.preheader25 ], [ %epil.iter27.next, %bb.f ]
  %i.ca = getelementptr inbounds nuw [20 x i8], ptr %i.bf, i64 %indvars.iv.i39.i.epil
  store float %i.bn, ptr %i.ca, align 4, !tbaa !21
  %indvars.iv.next.i40.i.epil = add nuw nsw i64 %indvars.iv.i39.i.epil, 1
  %epil.iter27.next = add i64 %epil.iter27, 1     ; 2 uses
  %epil.iter27.cmp.not = icmp eq i64 %epil.iter27.next, %xtraiter26
  br i1 %epil.iter27.cmp.not, label %.loopexit, label %bb.f, !llvm.loop !58

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.f, %voclib_reset_history.exit.i
  %i.cb = load i32, ptr %i.n, align 8, !tbaa !30  ; 2 uses
  store i32 %i.cb, ptr %i.a, align 4, !tbaa !34
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.cc, align 4, !tbaa !34
  store i32 %i.cb, ptr %i.b, align 4, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 24, i1 false), !tbaa.struct !61
  store ptr @g_ma_vocoder_node_vtable, ptr %4, align 8, !tbaa !62
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.a, ptr %i.cd, align 8, !tbaa !63
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.b, ptr %i.ce, align 8, !tbaa !64
  %i.cf = call i32 @ma_node_init(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %3) #12
  br label %voclib_initialize.exit

voclib_initialize.exit:                           ; preds = %bb.c, %.loopexit, %bb.b, %bb.a
  %.0 = phi i32 [ %i.cf, %.loopexit ], [ -2, %bb.a ], [ -2, %bb.b ], [ -2, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i32 %.0
}

declare i32 @ma_node_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @ma_vocoder_node_uninit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  tail call void @ma_node_uninit(ptr noundef %0, ptr noundef %1) #12
  ret void
}

declare void @ma_node_uninit(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sinh(double noundef) local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ma_vocoder_node_process_pcm_frames(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %1, align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.e = load ptr, ptr %3, align 8, !tbaa !66
  %i.f = load i32, ptr %4, align 4, !tbaa !34
  %i.g = tail call i32 @voclib_process(ptr noundef nonnull %i.a, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.e, i32 noundef %i.f) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincos(double noundef, ptr, ptr) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !18}
!1 = distinct !{!1, !18}
!2 = distinct !{!2, !18}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"voclib_instance", !7, i64 0, !7, i64 27648, !7, i64 29568, !11, i64 84864, !11, i64 84868, !8, i64 84872, !7, i64 84876, !7, i64 84877, !7, i64 84878}
!14 = !{!13, !8, i64 84872}
!15 = !{!13, !7, i64 84876}
!16 = !{!13, !7, i64 84877}
!17 = !{!13, !7, i64 84878}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!13, !11, i64 84864}
!20 = !{!"", !11, i64 0, !7, i64 4}
!21 = !{!20, !11, i64 0}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = !{!13, !11, i64 84868}
!24 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32}
!25 = !{!24, !11, i64 16}
!26 = !{!"any pointer", !7, i64 0}
!27 = !{!"p1 int", !26, i64 0}
!28 = !{!"", !26, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !27, i64 24, !27, i64 32}
!29 = !{!"", !28, i64 0, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52}
!30 = !{!29, !8, i64 40}
!31 = !{!29, !8, i64 44}
!32 = !{!29, !8, i64 48}
!33 = !{!29, !8, i64 52}
!34 = !{!8, !8, i64 0}
!35 = distinct !{!35, !22}
!36 = distinct !{!36, !22}
!37 = distinct !{!37, !22}
!38 = distinct !{!38, !18}
!39 = distinct !{!39, !22}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
!42 = distinct !{!42, !18}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18}
!46 = distinct !{!46, !18}
!47 = distinct !{!47, !18}
!48 = !{!24, !11, i64 0}
!49 = !{!24, !11, i64 4}
!50 = !{!24, !11, i64 20}
!51 = !{!24, !11, i64 8}
!52 = !{!24, !11, i64 24}
!53 = !{!24, !11, i64 12}
!54 = !{!24, !11, i64 28}
!55 = !{!24, !11, i64 32}
!56 = distinct !{!56, !22}
!57 = distinct !{!57, !22}
!58 = distinct !{!58, !22}
!59 = !{!26, !26, i64 0}
!60 = !{!27, !27, i64 0}
!61 = !{i64 0, i64 8, !59, i64 8, i64 4, !34, i64 12, i64 4, !34, i64 16, i64 4, !34, i64 24, i64 8, !60, i64 32, i64 8, !60}
!62 = !{!28, !26, i64 0}
!63 = !{!28, !27, i64 24}
!64 = !{!28, !27, i64 32}
!65 = !{!"p1 float", !26, i64 0}
!66 = !{!65, !65, i64 0}
end_hunk_1
