Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/omap_intc?download=true
inline.NumInlined: 15
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@omap_inth_write:bb.a
  %i.fh = and i64 %i.fg, 1
  %i.fi = zext i32 %i.eu to i64                   ; 2 uses
  %i.fj = shl nuw i64 %i.fh, %i.fi
  %i.fk = trunc i64 %i.fj to i32
  %i.fl = or i32 %i.ff, %i.fk
  store i32 %i.fl, ptr %i.fd, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4
  %i.fo = and i32 %i.fn, %i.fc
  %i.fp = and i64 %2, 1
  %i.fq = shl nuw i64 %i.fp, %i.fi
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = or i32 %i.fo, %i.fr
  store i32 %i.fs, ptr %i.fm, align 4
  br label %omap_inth_update.exit56

bb.p:                                             ; preds = %.preheader.31, %.preheader.30, %.preheader.29, %.preheader.28, %.preheader.27, %.preheader.26, %.preheader.25, %.preheader.24, %.preheader.23, %.preheader.22, %.preheader.21, %.preheader.20, %.preheader.19, %.preheader.18, %.preheader.17, %.preheader.16, %.preheader.15, %.preheader.14, %.preheader.13, %.preheader.12, %.preheader.11, %.preheader.10, %.preheader.9, %.preheader.8, %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.062.lcssa = phi i32 [ 0, %.preheader.preheader ], [ 1, %.preheader.1 ], [ 2, %.preheader.2 ], [ 3, %.preheader.3 ], [ 4, %.preheader.4 ], [ 5, %.preheader.5 ], [ 6, %.preheader.6 ], [ 7, %.preheader.7 ], [ 8, %.preheader.8 ], [ 9, %.preheader.9 ], [ 10, %.preheader.10 ], [ 11, %.preheader.11 ], [ 12, %.preheader.12 ], [ 13, %.preheader.13 ], [ 14, %.preheader.14 ], [ 15, %.preheader.15 ], [ 16, %.preheader.16 ], [ 17, %.preheader.17 ], [ 18, %.preheader.18 ], [ 19, %.preheader.19 ], [ 20, %.preheader.20 ], [ 21, %.preheader.21 ], [ 22, %.preheader.22 ], [ 23, %.preheader.23 ], [ 24, %.preheader.24 ], [ 25, %.preheader.25 ], [ 26, %.preheader.26 ], [ 27, %.preheader.27 ], [ 28, %.preheader.28 ], [ 29, %.preheader.29 ], [ 30, %.preheader.30 ], [ 31, %.preheader.31 ]
  %i.ft = shl nsw i32 %i.b, 5
  %i.fu = or disjoint i32 %.062.lcssa, %i.ft
  tail call void @omap_set_intr(ptr noundef %0, i32 noundef %i.fu, i32 noundef 1)
  br label %omap_inth_update.exit56

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.fv = and i64 %2, 2
  %.not.1 = icmp eq i64 %i.fv, 0
  br i1 %.not.1, label %.preheader.2, label %bb.p

.preheader.2:                                     ; preds = %.preheader.1
  %i.fw = and i64 %2, 4
  %.not.2 = icmp eq i64 %i.fw, 0
  br i1 %.not.2, label %.preheader.3, label %bb.p

.preheader.3:                                     ; preds = %.preheader.2
  %i.fx = and i64 %2, 8
  %.not.3 = icmp eq i64 %i.fx, 0
  br i1 %.not.3, label %.preheader.4, label %bb.p

.preheader.4:                                     ; preds = %.preheader.3
  %i.fy = and i64 %2, 16
  %.not.4 = icmp eq i64 %i.fy, 0
  br i1 %.not.4, label %.preheader.5, label %bb.p

.preheader.5:                                     ; preds = %.preheader.4
  %i.fz = and i64 %2, 32
  %.not.5 = icmp eq i64 %i.fz, 0
  br i1 %.not.5, label %.preheader.6, label %bb.p

.preheader.6:                                     ; preds = %.preheader.5
  %i.ga = and i64 %2, 64
  %.not.6 = icmp eq i64 %i.ga, 0
  br i1 %.not.6, label %.preheader.7, label %bb.p

.preheader.7:                                     ; preds = %.preheader.6
  %i.gb = and i64 %2, 128
  %.not.7 = icmp eq i64 %i.gb, 0
  br i1 %.not.7, label %.preheader.8, label %bb.p

.preheader.8:                                     ; preds = %.preheader.7
  %i.gc = and i64 %2, 256
  %.not.8 = icmp eq i64 %i.gc, 0
  br i1 %.not.8, label %.preheader.9, label %bb.p

.preheader.9:                                     ; preds = %.preheader.8
  %i.gd = and i64 %2, 512
  %.not.9 = icmp eq i64 %i.gd, 0
  br i1 %.not.9, label %.preheader.10, label %bb.p

.preheader.10:                                    ; preds = %.preheader.9
  %i.ge = and i64 %2, 1024
  %.not.10 = icmp eq i64 %i.ge, 0
  br i1 %.not.10, label %.preheader.11, label %bb.p

.preheader.11:                                    ; preds = %.preheader.10
  %i.gf = and i64 %2, 2048
  %.not.11 = icmp eq i64 %i.gf, 0
  br i1 %.not.11, label %.preheader.12, label %bb.p

.preheader.12:                                    ; preds = %.preheader.11
  %i.gg = and i64 %2, 4096
  %.not.12 = icmp eq i64 %i.gg, 0
  br i1 %.not.12, label %.preheader.13, label %bb.p

.preheader.13:                                    ; preds = %.preheader.12
  %i.gh = and i64 %2, 8192
  %.not.13 = icmp eq i64 %i.gh, 0
  br i1 %.not.13, label %.preheader.14, label %bb.p

.preheader.14:                                    ; preds = %.preheader.13
  %i.gi = and i64 %2, 16384
  %.not.14 = icmp eq i64 %i.gi, 0
  br i1 %.not.14, label %.preheader.15, label %bb.p

.preheader.15:                                    ; preds = %.preheader.14
  %i.gj = and i64 %2, 32768
  %.not.15 = icmp eq i64 %i.gj, 0
  br i1 %.not.15, label %.preheader.16, label %bb.p

.preheader.16:                                    ; preds = %.preheader.15
  %i.gk = and i64 %2, 65536
  %.not.16 = icmp eq i64 %i.gk, 0
  br i1 %.not.16, label %.preheader.17, label %bb.p

.preheader.17:                                    ; preds = %.preheader.16
  %i.gl = and i64 %2, 131072
  %.not.17 = icmp eq i64 %i.gl, 0
  br i1 %.not.17, label %.preheader.18, label %bb.p

.preheader.18:                                    ; preds = %.preheader.17
  %i.gm = and i64 %2, 262144
  %.not.18 = icmp eq i64 %i.gm, 0
  br i1 %.not.18, label %.preheader.19, label %bb.p

.preheader.19:                                    ; preds = %.preheader.18
  %i.gn = and i64 %2, 524288
  %.not.19 = icmp eq i64 %i.gn, 0
  br i1 %.not.19, label %.preheader.20, label %bb.p

.preheader.20:                                    ; preds = %.preheader.19
  %i.go = and i64 %2, 1048576
  %.not.20 = icmp eq i64 %i.go, 0
  br i1 %.not.20, label %.preheader.21, label %bb.p

.preheader.21:                                    ; preds = %.preheader.20
  %i.gp = and i64 %2, 2097152
  %.not.21 = icmp eq i64 %i.gp, 0
  br i1 %.not.21, label %.preheader.22, label %bb.p

.preheader.22:                                    ; preds = %.preheader.21
  %i.gq = and i64 %2, 4194304
  %.not.22 = icmp eq i64 %i.gq, 0
  br i1 %.not.22, label %.preheader.23, label %bb.p

.preheader.23:                                    ; preds = %.preheader.22
  %i.gr = and i64 %2, 8388608
  %.not.23 = icmp eq i64 %i.gr, 0
  br i1 %.not.23, label %.preheader.24, label %bb.p

.preheader.24:                                    ; preds = %.preheader.23
  %i.gs = and i64 %2, 16777216
  %.not.24 = icmp eq i64 %i.gs, 0
  br i1 %.not.24, label %.preheader.25, label %bb.p

.preheader.25:                                    ; preds = %.preheader.24
  %i.gt = and i64 %2, 33554432
  %.not.25 = icmp eq i64 %i.gt, 0
  br i1 %.not.25, label %.preheader.26, label %bb.p

.preheader.26:                                    ; preds = %.preheader.25
  %i.gu = and i64 %2, 67108864
  %.not.26 = icmp eq i64 %i.gu, 0
  br i1 %.not.26, label %.preheader.27, label %bb.p

.preheader.27:                                    ; preds = %.preheader.26
  %i.gv = and i64 %2, 134217728
  %.not.27 = icmp eq i64 %i.gv, 0
  br i1 %.not.27, label %.preheader.28, label %bb.p

.preheader.28:                                    ; preds = %.preheader.27
  %i.gw = and i64 %2, 268435456
  %.not.28 = icmp eq i64 %i.gw, 0
  br i1 %.not.28, label %.preheader.29, label %bb.p

.preheader.29:                                    ; preds = %.preheader.28
  %i.gx = and i64 %2, 536870912
  %.not.29 = icmp eq i64 %i.gx, 0
  br i1 %.not.29, label %.preheader.30, label %bb.p

.preheader.30:                                    ; preds = %.preheader.29
  %i.gy = and i64 %2, 1073741824
  %.not.30 = icmp eq i64 %i.gy, 0
  br i1 %.not.30, label %.preheader.31, label %bb.p

.preheader.31:                                    ; preds = %.preheader.30
  %.not.31 = icmp eq i64 %2, 0
  br i1 %.not.31, label %omap_inth_update.exit56, label %bb.p

bb.q:                                             ; preds = %bb.a, %bb.i, %bb.h, %bb.j
  %i.gz = load i32, ptr @qemu_loglevel, align 4
  %i.ha = and i32 %i.gz, 2048
  %.not59 = icmp eq i32 %i.ha, 0
  br i1 %.not59, label %omap_inth_update.exit56, label %bb.r, !prof !11

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.omap_inth_write, i64 noundef %1) #8
  br label %omap_inth_update.exit56

omap_inth_update.exit56:                          ; preds = %.preheader.31, %bb.c, %omap_inth_sir_update.exit.i55, %._crit_edge.i52, %omap_inth_update.exit, %bb.q, %bb.r, %bb.m, %bb.n, %bb.p, %bb.o, %bb.b
  ret void
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #2

declare void @device_class_set_legacy_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @omap_inth_reset(ptr noundef %0) #1 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 61, ptr noundef nonnull @__func__.OMAP_INTC) #8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1120
  %i.c = load i8, ptr %i.b, align 16              ; 6 uses
  %.not29 = icmp eq i8 %i.c, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1156 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1124
  %1 = load i32, ptr %i.e, align 4
  %2 = icmp eq i32 %1, 0
  %wide.trip.count35 = zext i8 %i.c to i64        ; 4 uses
  br i1 %2, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader.preheader

.lr.ph.split.preheader.preheader:                 ; preds = %.lr.ph
  %xtraiter = and i64 %wide.trip.count35, 1
  %3 = icmp eq i8 %i.c, 1
  br i1 %3, label %.lr.ph.split.preheader.epil.preheader, label %.lr.ph.split.preheader.preheader.new

.lr.ph.split.preheader.preheader.new:             ; preds = %.lr.ph.split.preheader.preheader
  %unroll_iter = and i64 %wide.trip.count35, 254
  br label %.lr.ph.split.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter41 = and i64 %wide.trip.count35, 1
  %4 = icmp eq i8 %i.c, 1
  br i1 %4, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter44 = and i64 %wide.trip.count35, 254
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %indvars.iv32 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next33.1, %.lr.ph.split.us ] ; 3 uses
  %niter45 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter45.next.1, %.lr.ph.split.us ]
  %5 = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %indvars.iv32 ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %6, align 4
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 0>, ptr %5, align 4
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %8, i8 noundef 0, i64 noundef 32, i1 noundef false) #8
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %indvars.iv32 ; 4 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store i32 0, ptr %i.g, align 4
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 0>, ptr %9, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  store i32 0, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.i, i8 noundef 0, i64 noundef 32, i1 noundef false) #8
  %indvars.iv.next33.1 = add nuw nsw i64 %indvars.iv32, 2 ; 2 uses
  %niter45.next.1 = add i64 %niter45, 2           ; 2 uses
  %niter45.ncmp.1 = icmp eq i64 %niter45.next.1, %unroll_iter44
  br i1 %niter45.ncmp.1, label %._crit_edge.loopexit.unr-lcssa.a, label %.lr.ph.split.us, !llvm.loop !12

.lr.ph.split.preheader:                           ; preds = %.lr.ph.split.preheader, %.lr.ph.split.preheader.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.split.preheader ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.preheader.new ], [ %niter.next.1, %.lr.ph.split.preheader ]
  %i.j = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %indvars.iv ; 4 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 0>, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 0, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.l, i8 noundef 0, i64 noundef 32, i1 noundef false) #8
  store i32 -1, ptr %10, align 4
  %11 = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %indvars.iv ; 4 uses
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 72
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 0>, ptr %12, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 76
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.n, i8 noundef 0, i64 noundef 32, i1 noundef false) #8
  store i32 -1, ptr %13, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.a = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.a, label %._crit_edge.loopexit39.unr-lcssa, label %.lr.ph.split.preheader, !llvm.loop !13

._crit_edge.loopexit.unr-lcssa.a:                 ; preds = %.lr.ph.split.us
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %._crit_edge, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %._crit_edge.loopexit.unr-lcssa.a, %.lr.ph.split.us.preheader
  %indvars.iv32.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next33.1, %._crit_edge.loopexit.unr-lcssa.a ]
  %lcmp.mod43 = trunc i8 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %14 = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %indvars.iv32.epil.init ; 4 uses
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %15, align 4
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 0>, ptr %14, align 4
  %16 = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %17, i8 noundef 0, i64 noundef 32, i1 noundef false) #8
  br label %._crit_edge

._crit_edge.loopexit39.unr-lcssa:                 ; preds = %.lr.ph.split.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.preheader.epil.preheader

.lr.ph.split.preheader.epil.preheader:            ; preds = %._crit_edge.loopexit39.unr-lcssa, %.lr.ph.split.preheader.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit39.unr-lcssa ]
  %lcmp.mod40 = trunc i8 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %indvars.iv.epil.init ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 0>, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  store i32 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.r, i8 noundef 0, i64 noundef 32, i1 noundef false) #8
  store i32 -1, ptr %i.p, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.preheader.epil.preheader, %._crit_edge.loopexit39.unr-lcssa, %.lr.ph.split.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa.a, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1132
  store <4 x i32> <i32 -1, i32 -1, i32 0, i32 0>, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1148
  store i32 0, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 1152
  store i32 -1, ptr %i.u, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  %i.w = load ptr, ptr %i.v, align 16
  tail call void @qemu_set_irq(ptr noundef %i.w, i32 noundef 0) #8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 824
  %i.y = load ptr, ptr %i.x, align 8
  tail call void @qemu_set_irq(ptr noundef %i.y, i32 noundef 0) #8
  ret void
}

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @omap_intc_realize(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 61, ptr noundef nonnull @__func__.OMAP_INTC) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  %i.c = load ptr, ptr %i.b, align 16
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef 364, ptr noundef nonnull @__func__.omap_intc_realize, ptr noundef nonnull @.str.13) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !{!0, !10}
!1 = distinct !{!1, !10}
!2 = distinct !{!2, !10}
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10, !14}
!14 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_0
