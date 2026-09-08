Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/mpih-mul?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@mpih_sqr_n:bb.a
  %xtraiter213 = and i64 %wide.trip.count199, 3   ; 3 uses
  %i.bv = add nsw i32 %i.q, -1
  %i.bw = icmp ult i32 %i.bv, 3
  br i1 %i.bw, label %.lr.ph182.epil.preheader, label %.lr.ph182.preheader.new

.lr.ph182.preheader.new:                          ; preds = %.lr.ph182.preheader
  %unroll_iter217 = and i64 %wide.trip.count199, 2147483644
  br label %.lr.ph182

.lr.ph182:                                        ; preds = %.lr.ph182, %.lr.ph182.preheader.new
  %indvars.iv196 = phi i64 [ 0, %.lr.ph182.preheader.new ], [ %indvars.iv.next197.3, %.lr.ph182 ] ; 6 uses
  %niter218 = phi i64 [ 0, %.lr.ph182.preheader.new ], [ %niter218.next.3, %.lr.ph182 ]
  %i.bx = getelementptr [8 x i8], ptr %3, i64 %indvars.iv196
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr [8 x i8], ptr %0, i64 %indvars.iv196
  store i64 %i.by, ptr %i.bz, align 8
  %indvars.iv.next197 = or disjoint i64 %indvars.iv196, 1 ; 2 uses
  %i.ca = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.next197
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next197
  store i64 %i.cb, ptr %i.cc, align 8
  %indvars.iv.next197.1 = or disjoint i64 %indvars.iv196, 2 ; 2 uses
  %i.cd = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.next197.1
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next197.1
  store i64 %i.ce, ptr %i.cf, align 8
  %indvars.iv.next197.2 = or disjoint i64 %indvars.iv196, 3 ; 2 uses
  %i.cg = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.next197.2
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next197.2
  store i64 %i.ch, ptr %i.ci, align 8
  %indvars.iv.next197.3 = add nuw nsw i64 %indvars.iv196, 4 ; 2 uses
  %niter218.next.3 = add i64 %niter218, 4         ; 2 uses
  %niter218.ncmp.3 = icmp eq i64 %niter218.next.3, %unroll_iter217
  br i1 %niter218.ncmp.3, label %._crit_edge183.loopexit.unr-lcssa, label %.lr.ph182, !llvm.loop !19

._crit_edge183.loopexit.unr-lcssa:                ; preds = %.lr.ph182
  %lcmp.mod215.not = icmp eq i64 %xtraiter213, 0
  br i1 %lcmp.mod215.not, label %._crit_edge183, label %.lr.ph182.epil.preheader

.lr.ph182.epil.preheader:                         ; preds = %._crit_edge183.loopexit.unr-lcssa, %.lr.ph182.preheader
  %indvars.iv196.epil.init = phi i64 [ 0, %.lr.ph182.preheader ], [ %indvars.iv.next197.3, %._crit_edge183.loopexit.unr-lcssa ]
  %lcmp.mod216 = icmp ne i64 %xtraiter213, 0
  tail call void @llvm.assume(i1 %lcmp.mod216)
  br label %.lr.ph182.epil

.lr.ph182.epil:                                   ; preds = %.lr.ph182.epil, %.lr.ph182.epil.preheader
  %indvars.iv196.epil = phi i64 [ %indvars.iv196.epil.init, %.lr.ph182.epil.preheader ], [ %indvars.iv.next197.epil, %.lr.ph182.epil ] ; 3 uses
  %epil.iter214 = phi i64 [ 0, %.lr.ph182.epil.preheader ], [ %epil.iter214.next, %.lr.ph182.epil ]
  %i.cj = getelementptr [8 x i8], ptr %3, i64 %indvars.iv196.epil
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = getelementptr [8 x i8], ptr %0, i64 %indvars.iv196.epil
  store i64 %i.ck, ptr %i.cl, align 8
  %indvars.iv.next197.epil = add nuw nsw i64 %indvars.iv196.epil, 1
  %epil.iter214.next = add i64 %epil.iter214, 1   ; 2 uses
  %epil.iter214.cmp.not = icmp eq i64 %epil.iter214.next, %xtraiter213
  br i1 %epil.iter214.cmp.not, label %._crit_edge183, label %.lr.ph182.epil, !llvm.loop !20

._crit_edge183:                                   ; preds = %._crit_edge183.loopexit.unr-lcssa, %.lr.ph182.epil, %mpihelp_add_1.exit
  %i.cm = getelementptr [8 x i8], ptr %3, i64 %.pre-phi
  %i.cn = tail call i64 @mpihelp_add_n(ptr noundef %i.bg, ptr noundef %i.bg, ptr noundef %i.cm, i32 noundef %i.q) #6
  %.not140 = icmp eq i64 %i.cn, 0
  br i1 %.not140, label %mpihelp_add_1.exit160, label %bb.t

bb.t:                                             ; preds = %._crit_edge183
  %i.co = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.bd, align 8
  %i.cq = icmp eq i64 %i.co, -1
  br i1 %i.cq, label %.lr.ph211, label %mpihelp_add_1.exit160

.lr.ph211:                                        ; preds = %bb.t
  %i.cr = add i32 %2, -1
  br label %bb.u

.preheader30.i154:                                ; preds = %bb.u
  %i.cs = add i32 %i.ct, -1                       ; 2 uses
  %.not.i158 = icmp eq i32 %i.cs, 0
  br i1 %.not.i158, label %mpihelp_add_1.exit160, label %bb.u, !llvm.loop !0

bb.u:                                             ; preds = %.lr.ph211, %.preheader30.i154
  %i.ct = phi i32 [ %i.cr, %.lr.ph211 ], [ %i.cs, %.preheader30.i154 ]
  %.025.i155.pn210 = phi ptr [ %i.bd, %.lr.ph211 ], [ %.025.i155, %.preheader30.i154 ]
  %.025.i155 = getelementptr i8, ptr %.025.i155.pn210, i64 8 ; 3 uses
  %i.cu = load i64, ptr %.025.i155, align 8
  %i.cv = add i64 %i.cu, 1                        ; 2 uses
  store i64 %i.cv, ptr %.025.i155, align 8
  %.not28.i159 = icmp eq i64 %i.cv, 0
  br i1 %.not28.i159, label %.preheader30.i154, label %.mpihelp_add_1.exit160.loopexit_crit_edge, !llvm.loop !0

.mpihelp_add_1.exit160.loopexit_crit_edge:        ; preds = %bb.u
  br label %mpihelp_add_1.exit160, !llvm.loop !0

mpihelp_add_1.exit160:                            ; preds = %.preheader30.i154, %.mpihelp_add_1.exit160.loopexit_crit_edge, %bb.t, %._crit_edge183, %bb.e
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @mpihelp_cmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @mpihelp_sub_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -12, 1) i32 @mpihelp_mul_karatsuba_case(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = getelementptr i8, ptr %5, i64 8          ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %5, i64 16
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp slt i32 %i.e, %4
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @mpi_free_limb_space(ptr noundef nonnull %i.c) #6
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c
  %i.g = shl i32 %4, 1
  %i.h = tail call ptr @mpi_alloc_limb_space(i32 noundef %i.g) #6 ; 3 uses
  store ptr %i.h, ptr %i.b, align 8
  %.not119 = icmp eq ptr %i.h, null
  br i1 %.not119, label %mpihelp_add_1.exit148, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.i = getelementptr i8, ptr %5, i64 16
  store i32 %4, ptr %i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %i.j = phi ptr [ %i.c, %bb.b ], [ %i.h, %bb.d ]
  %i.k = icmp slt i32 %4, 16                      ; 2 uses
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @mul_n_basecase(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %4) #7
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call fastcc void @mul_n(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %i.j) #7, !srcloc !26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = sext i32 %4 to i64                       ; 10 uses
  %i.m = getelementptr [8 x i8], ptr %0, i64 %i.l ; 3 uses
  %i.n = getelementptr [8 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.o = sub i32 %2, %4                           ; 4 uses
  %.not120 = icmp slt i32 %i.o, %4
  br i1 %.not120, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr i8, ptr %5, i64 24         ; 8 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not121 = icmp eq ptr %i.q, null
  br i1 %.not121, label %.thread149, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr i8, ptr %5, i64 32
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp slt i32 %i.s, %4
  br i1 %i.t, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  tail call void @mpi_free_limb_space(ptr noundef nonnull %i.q) #6
  br label %.thread149

.thread149:                                       ; preds = %bb.i, %bb.k
  %i.u = shl i32 %4, 1
  %i.v = tail call ptr @mpi_alloc_limb_space(i32 noundef %i.u) #6 ; 2 uses
  store ptr %i.v, ptr %i.p, align 8
  %.not123 = icmp eq ptr %i.v, null
  br i1 %.not123, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.thread149
  %i.w = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not124 = icmp eq ptr %i.w, null
  br i1 %.not124, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @mpi_free_limb_space(ptr noundef nonnull %i.w) #6
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store ptr null, ptr %i.b, align 8
  br label %mpihelp_add_1.exit148

bb.o:                                             ; preds = %.thread149
  %i.x = getelementptr i8, ptr %5, i64 32
  store i32 %4, ptr %i.x, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  br i1 %i.k, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.p
  %i.y = add nsw i32 %4, -1                       ; 2 uses
  %.not.i238 = icmp eq i32 %i.y, 0
  br label %.split

.split.us.preheader:                              ; preds = %bb.p
  %i.z = add i32 %4, -1                           ; 2 uses
  %.not.i.us241 = icmp eq i32 %i.z, 0
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %mpihelp_add_1.exit.us
  %.0107.us = phi i32 [ %i.bk, %mpihelp_add_1.exit.us ], [ %i.o, %.split.us.preheader ]
  %.0105.us = phi ptr [ %i.bj, %mpihelp_add_1.exit.us ], [ %i.n, %.split.us.preheader ] ; 2 uses
  %.0102.us = phi ptr [ %i.ad, %mpihelp_add_1.exit.us ], [ %i.m, %.split.us.preheader ] ; 3 uses
  %i.aa = load ptr, ptr %i.p, align 8
  tail call fastcc void @mul_n_basecase(ptr noundef %i.aa, ptr noundef %.0105.us, ptr noundef %3, i32 noundef %4) #7
  %i.ab = load ptr, ptr %i.p, align 8
  %i.ac = tail call i64 @mpihelp_add_n(ptr noundef %.0102.us, ptr noundef %.0102.us, ptr noundef %i.ab, i32 noundef %4) #6
  %i.ad = getelementptr [8 x i8], ptr %.0102.us, i64 %i.l ; 4 uses
  %i.ae = load ptr, ptr %i.p, align 8
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %i.l ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 8      ; 2 uses
  %i.ah = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ai = add i64 %i.ah, %i.ac                    ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ad, i64 8      ; 2 uses
  store i64 %i.ai, ptr %i.ad, align 8
  %i.ak = icmp ult i64 %i.ai, %i.ah
  br i1 %i.ak, label %.preheader30.i.us.preheader, label %.loopexit32.i.us

.preheader30.i.us.preheader:                      ; preds = %.split.us
  br i1 %.not.i.us241, label %mpihelp_add_1.exit.us, label %.lr.ph244

.preheader30.i.us:                                ; preds = %.lr.ph244
  %i.al = add i32 %i.am, -1                       ; 2 uses
  %.not.i.us = icmp eq i32 %i.al, 0
  br i1 %.not.i.us, label %mpihelp_add_1.exit.us, label %.lr.ph244, !llvm.loop !0

.lr.ph244:                                        ; preds = %.preheader30.i.us.preheader, %.preheader30.i.us
  %i.am = phi i32 [ %i.al, %.preheader30.i.us ], [ %i.z, %.preheader30.i.us.preheader ] ; 2 uses
  %.023.i.us243 = phi ptr [ %i.an, %.preheader30.i.us ], [ %i.ag, %.preheader30.i.us.preheader ] ; 2 uses
  %.025.i.us242 = phi ptr [ %i.aq, %.preheader30.i.us ], [ %i.aj, %.preheader30.i.us.preheader ] ; 2 uses
  %i.an = getelementptr i8, ptr %.023.i.us243, i64 8 ; 2 uses
  %i.ao = load i64, ptr %.023.i.us243, align 8
  %i.ap = add i64 %i.ao, 1                        ; 2 uses
  %i.aq = getelementptr i8, ptr %.025.i.us242, i64 8 ; 2 uses
  store i64 %i.ap, ptr %.025.i.us242, align 8
  %.not28.i.us = icmp eq i64 %i.ap, 0
  br i1 %.not28.i.us, label %.preheader30.i.us, label %.loopexit32.i.us, !llvm.loop !0

.loopexit32.i.us:                                 ; preds = %.lr.ph244, %.split.us
  %.126.i.us = phi ptr [ %i.aj, %.split.us ], [ %i.aq, %.lr.ph244 ] ; 6 uses
  %.124.i.us = phi ptr [ %i.ag, %.split.us ], [ %i.an, %.lr.ph244 ] ; 6 uses
  %.1.i.us = phi i32 [ %4, %.split.us ], [ %i.am, %.lr.ph244 ]
  %.not29.i.us = icmp eq ptr %.126.i.us, %.124.i.us
  br i1 %.not29.i.us, label %mpihelp_add_1.exit.us, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.loopexit32.i.us
  %i.ar = add i32 %.1.i.us, -1                    ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph.preheader.i.us, label %mpihelp_add_1.exit.us

.lr.ph.preheader.i.us:                            ; preds = %.preheader.i.us
  %wide.trip.count.i.us = zext nneg i32 %i.ar to i64 ; 2 uses
  %xtraiter277 = and i64 %wide.trip.count.i.us, 3 ; 3 uses
  %i.at = icmp ult i32 %i.ar, 4
  br i1 %i.at, label %.lr.ph.i.us.epil.preheader, label %.lr.ph.preheader.i.us.new

.lr.ph.preheader.i.us.new:                        ; preds = %.lr.ph.preheader.i.us
  %unroll_iter281 = and i64 %wide.trip.count.i.us, 2147483644
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us, %.lr.ph.preheader.i.us.new
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.preheader.i.us.new ], [ %indvars.iv.next.i.us.3, %.lr.ph.i.us ] ; 6 uses
  %niter282 = phi i64 [ 0, %.lr.ph.preheader.i.us.new ], [ %niter282.next.3, %.lr.ph.i.us ]
  %i.au = getelementptr [8 x i8], ptr %.124.i.us, i64 %indvars.iv.i.us
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr [8 x i8], ptr %.126.i.us, i64 %indvars.iv.i.us
  store i64 %i.av, ptr %i.aw, align 8
  %indvars.iv.next.i.us = or disjoint i64 %indvars.iv.i.us, 1 ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %.124.i.us, i64 %indvars.iv.next.i.us
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr [8 x i8], ptr %.126.i.us, i64 %indvars.iv.next.i.us
  store i64 %i.ay, ptr %i.az, align 8
  %indvars.iv.next.i.us.1 = or disjoint i64 %indvars.iv.i.us, 2 ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %.124.i.us, i64 %indvars.iv.next.i.us.1
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr [8 x i8], ptr %.126.i.us, i64 %indvars.iv.next.i.us.1
  store i64 %i.bb, ptr %i.bc, align 8
  %indvars.iv.next.i.us.2 = or disjoint i64 %indvars.iv.i.us, 3 ; 2 uses
  %i.bd = getelementptr [8 x i8], ptr %.124.i.us, i64 %indvars.iv.next.i.us.2
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr [8 x i8], ptr %.126.i.us, i64 %indvars.iv.next.i.us.2
  store i64 %i.be, ptr %i.bf, align 8
  %indvars.iv.next.i.us.3 = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %niter282.next.3 = add i64 %niter282, 4         ; 2 uses
  %niter282.ncmp.3 = icmp eq i64 %niter282.next.3, %unroll_iter281
  br i1 %niter282.ncmp.3, label %mpihelp_add_1.exit.us.loopexit.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !21

mpihelp_add_1.exit.us.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.us
  %lcmp.mod279.not = icmp eq i64 %xtraiter277, 0
  br i1 %lcmp.mod279.not, label %mpihelp_add_1.exit.us, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %mpihelp_add_1.exit.us.loopexit.unr-lcssa, %.lr.ph.preheader.i.us
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.us ], [ %indvars.iv.next.i.us.3, %mpihelp_add_1.exit.us.loopexit.unr-lcssa ]
  %lcmp.mod280 = icmp ne i64 %xtraiter277, 0
  tail call void @llvm.assume(i1 %lcmp.mod280)
  br label %.lr.ph.i.us.epil

.lr.ph.i.us.epil:                                 ; preds = %.lr.ph.i.us.epil, %.lr.ph.i.us.epil.preheader
  %indvars.iv.i.us.epil = phi i64 [ %indvars.iv.i.us.epil.init, %.lr.ph.i.us.epil.preheader ], [ %indvars.iv.next.i.us.epil, %.lr.ph.i.us.epil ] ; 3 uses
  %epil.iter278 = phi i64 [ 0, %.lr.ph.i.us.epil.preheader ], [ %epil.iter278.next, %.lr.ph.i.us.epil ]
  %i.bg = getelementptr [8 x i8], ptr %.124.i.us, i64 %indvars.iv.i.us.epil
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr [8 x i8], ptr %.126.i.us, i64 %indvars.iv.i.us.epil
  store i64 %i.bh, ptr %i.bi, align 8
  %indvars.iv.next.i.us.epil = add nuw nsw i64 %indvars.iv.i.us.epil, 1
  %epil.iter278.next = add i64 %epil.iter278, 1   ; 2 uses
  %epil.iter278.cmp.not = icmp eq i64 %epil.iter278.next, %xtraiter277
  br i1 %epil.iter278.cmp.not, label %mpihelp_add_1.exit.us, label %.lr.ph.i.us.epil, !llvm.loop !22

mpihelp_add_1.exit.us:                            ; preds = %.preheader30.i.us, %mpihelp_add_1.exit.us.loopexit.unr-lcssa, %.lr.ph.i.us.epil, %.preheader30.i.us.preheader, %.preheader.i.us, %.loopexit32.i.us
  %i.bj = getelementptr [8 x i8], ptr %.0105.us, i64 %i.l ; 2 uses
  %i.bk = sub i32 %.0107.us, %4                   ; 3 uses
  %.not125.us = icmp slt i32 %i.bk, %4
  br i1 %.not125.us, label %.loopexit, label %.split.us, !llvm.loop !23

.split:                                           ; preds = %.split.preheader, %mpihelp_add_1.exit
  %.0107 = phi i32 [ %i.cw, %mpihelp_add_1.exit ], [ %i.o, %.split.preheader ]
  %.0105 = phi ptr [ %i.cv, %mpihelp_add_1.exit ], [ %i.n, %.split.preheader ] ; 2 uses
  %.0102 = phi ptr [ %i.bp, %mpihelp_add_1.exit ], [ %i.m, %.split.preheader ] ; 3 uses
  %i.bl = load ptr, ptr %i.p, align 8
  %i.bm = load ptr, ptr %i.b, align 8
  tail call fastcc void @mul_n(ptr noundef %i.bl, ptr noundef %.0105, ptr noundef %3, i32 noundef %4, ptr noundef %i.bm) #7, !srcloc !27
  %i.bn = load ptr, ptr %i.p, align 8
  %i.bo = tail call i64 @mpihelp_add_n(ptr noundef %.0102, ptr noundef %.0102, ptr noundef %i.bn, i32 noundef %4) #6
  %i.bp = getelementptr [8 x i8], ptr %.0102, i64 %i.l ; 4 uses
  %i.bq = load ptr, ptr %i.p, align 8
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %i.l ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 8      ; 2 uses
  %i.bt = load i64, ptr %i.br, align 8            ; 2 uses
  %i.bu = add i64 %i.bt, %i.bo                    ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bp, i64 8      ; 2 uses
  store i64 %i.bu, ptr %i.bp, align 8
  %i.bw = icmp ult i64 %i.bu, %i.bt
  br i1 %i.bw, label %.preheader30.i.preheader, label %.loopexit32.i

.preheader30.i.preheader:                         ; preds = %.split
  br i1 %.not.i238, label %mpihelp_add_1.exit, label %.lr.ph

.preheader30.i:                                   ; preds = %.lr.ph
  %i.bx = add i32 %i.by, -1                       ; 2 uses
  %.not.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i, label %mpihelp_add_1.exit, label %.lr.ph, !llvm.loop !0

.lr.ph:                                           ; preds = %.preheader30.i.preheader, %.preheader30.i
  %i.by = phi i32 [ %i.bx, %.preheader30.i ], [ %i.y, %.preheader30.i.preheader ] ; 2 uses
  %.023.i240 = phi ptr [ %i.bz, %.preheader30.i ], [ %i.bs, %.preheader30.i.preheader ] ; 2 uses
  %.025.i239 = phi ptr [ %i.cc, %.preheader30.i ], [ %i.bv, %.preheader30.i.preheader ] ; 2 uses
  %i.bz = getelementptr i8, ptr %.023.i240, i64 8 ; 2 uses
  %i.ca = load i64, ptr %.023.i240, align 8
  %i.cb = add i64 %i.ca, 1                        ; 2 uses
  %i.cc = getelementptr i8, ptr %.025.i239, i64 8 ; 2 uses
  store i64 %i.cb, ptr %.025.i239, align 8
  %.not28.i = icmp eq i64 %i.cb, 0
  br i1 %.not28.i, label %.preheader30.i, label %.loopexit32.i, !llvm.loop !0

.loopexit32.i:                                    ; preds = %.lr.ph, %.split
  %.126.i = phi ptr [ %i.bv, %.split ], [ %i.cc, %.lr.ph ] ; 6 uses
  %.124.i = phi ptr [ %i.bs, %.split ], [ %i.bz, %.lr.ph ] ; 6 uses
  %.1.i = phi i32 [ %4, %.split ], [ %i.by, %.lr.ph ]
  %.not29.i = icmp eq ptr %.126.i, %.124.i
  br i1 %.not29.i, label %mpihelp_add_1.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit32.i
  %i.cd = add i32 %.1.i, -1                       ; 3 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.preheader.i, label %mpihelp_add_1.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.cd to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.cf = icmp ult i32 %i.cd, 4
  br i1 %i.cf, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.cg = getelementptr [8 x i8], ptr %.124.i, i64 %indvars.iv.i
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr [8 x i8], ptr %.126.i, i64 %indvars.iv.i
  store i64 %i.ch, ptr %i.ci, align 8
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cj = getelementptr [8 x i8], ptr %.124.i, i64 %indvars.iv.next.i
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = getelementptr [8 x i8], ptr %.126.i, i64 %indvars.iv.next.i
  store i64 %i.ck, ptr %i.cl, align 8
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.cm = getelementptr [8 x i8], ptr %.124.i, i64 %indvars.iv.next.i.1
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = getelementptr [8 x i8], ptr %.126.i, i64 %indvars.iv.next.i.1
  store i64 %i.cn, ptr %i.co, align 8
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.cp = getelementptr [8 x i8], ptr %.124.i, i64 %indvars.iv.next.i.2
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = getelementptr [8 x i8], ptr %.126.i, i64 %indvars.iv.next.i.2
  store i64 %i.cq, ptr %i.cr, align 8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %mpihelp_add_1.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !21

mpihelp_add_1.exit.loopexit.unr-lcssa:            ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %mpihelp_add_1.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %mpihelp_add_1.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %mpihelp_add_1.exit.loopexit.unr-lcssa ]
  %lcmp.mod276 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod276)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.cs = getelementptr [8 x i8], ptr %.124.i, i64 %indvars.iv.i.epil
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = getelementptr [8 x i8], ptr %.126.i, i64 %indvars.iv.i.epil
  store i64 %i.ct, ptr %i.cu, align 8
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %mpihelp_add_1.exit, label %.lr.ph.i.epil, !llvm.loop !24

mpihelp_add_1.exit:                               ; preds = %.preheader30.i, %mpihelp_add_1.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %.preheader30.i.preheader, %.loopexit32.i, %.preheader.i
  %i.cv = getelementptr [8 x i8], ptr %.0105, i64 %i.l ; 2 uses
  %i.cw = sub i32 %.0107, %4                      ; 3 uses
  %.not125 = icmp slt i32 %i.cw, %4
  br i1 %.not125, label %.loopexit, label %.split, !llvm.loop !23

.loopexit:                                        ; preds = %mpihelp_add_1.exit, %mpihelp_add_1.exit.us, %bb.h
  %.1108 = phi i32 [ %i.o, %bb.h ], [ %i.bk, %mpihelp_add_1.exit.us ], [ %i.cw, %mpihelp_add_1.exit ] ; 6 uses
  %.1106 = phi ptr [ %i.n, %bb.h ], [ %i.bj, %mpihelp_add_1.exit.us ], [ %i.cv, %mpihelp_add_1.exit ] ; 2 uses
  %.1103 = phi ptr [ %i.m, %bb.h ], [ %i.ad, %mpihelp_add_1.exit.us ], [ %i.bp, %mpihelp_add_1.exit ] ; 3 uses
  %.not126 = icmp eq i32 %.1108, 0
  br i1 %.not126, label %mpihelp_add_1.exit148, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.cx = icmp slt i32 %.1108, 16
  br i1 %i.cx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.cy = load ptr, ptr %i.b, align 8
  %i.cz = call i32 @mpihelp_mul(ptr noundef %i.cy, ptr noundef %3, i32 noundef %4, ptr noundef %.1106, i32 noundef %.1108, ptr noundef nonnull %i.a) #7
  %i.da = icmp sgt i32 %i.cz, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br i1 %i.da, label %bb.v, label %mpihelp_add_1.exit148

bb.s:                                             ; preds = %bb.q
  %i.db = load ptr, ptr %5, align 8               ; 2 uses
  %.not127 = icmp eq ptr %i.db, null
  br i1 %.not127, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 48), align 16
  %i.dd = tail call noalias noundef align 8 dereferenceable_or_null(40) ptr @__kmalloc_cache_noprof(ptr noundef %i.dc, i32 noundef 3520, i64 noundef 40) #9 ; 3 uses
  store ptr %i.dd, ptr %5, align 8
  %.not128 = icmp eq ptr %i.dd, null
  br i1 %.not128, label %mpihelp_add_1.exit148, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.de = phi ptr [ %i.dd, %bb.t ], [ %i.db, %bb.s ]
  %i.df = load ptr, ptr %i.b, align 8
  %i.dg = tail call i32 @mpihelp_mul_karatsuba_case(ptr noundef %i.df, ptr noundef %3, i32 noundef %4, ptr noundef %.1106, i32 noundef %.1108, ptr noundef nonnull %i.de) #7
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %mpihelp_add_1.exit148, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.di = load ptr, ptr %i.b, align 8
  %i.dj = tail call i64 @mpihelp_add_n(ptr noundef %.1103, ptr noundef %.1103, ptr noundef %i.di, i32 noundef %4) #6
  %i.dk = getelementptr [8 x i8], ptr %.1103, i64 %i.l ; 2 uses
  %i.dl = load ptr, ptr %i.b, align 8
  %i.dm = getelementptr [8 x i8], ptr %i.dl, i64 %i.l ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 8      ; 2 uses
  %i.do = load i64, ptr %i.dm, align 8            ; 2 uses
  %i.dp = add i64 %i.do, %i.dj                    ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dk, i64 8      ; 2 uses
  store i64 %i.dp, ptr %i.dk, align 8
  %i.dr = icmp ult i64 %i.dp, %i.do
  br i1 %i.dr, label %.preheader30.i142.preheader, label %.loopexit32.i129

.preheader30.i142.preheader:                      ; preds = %bb.v
  %i.ds = add i32 %.1108, -1                      ; 2 uses
  %.not.i146245 = icmp eq i32 %i.ds, 0
  br i1 %.not.i146245, label %mpihelp_add_1.exit148, label %.lr.ph248

.preheader30.i142:                                ; preds = %.lr.ph248
  %i.dt = add i32 %i.du, -1                       ; 2 uses
  %.not.i146 = icmp eq i32 %i.dt, 0
  br i1 %.not.i146, label %mpihelp_add_1.exit148, label %.lr.ph248, !llvm.loop !0

.lr.ph248:                                        ; preds = %.preheader30.i142.preheader, %.preheader30.i142
  %i.du = phi i32 [ %i.dt, %.preheader30.i142 ], [ %i.ds, %.preheader30.i142.preheader ] ; 2 uses
  %.023.i144247 = phi ptr [ %i.dv, %.preheader30.i142 ], [ %i.dn, %.preheader30.i142.preheader ] ; 2 uses
  %.025.i143246 = phi ptr [ %i.dy, %.preheader30.i142 ], [ %i.dq, %.preheader30.i142.preheader ] ; 2 uses
  %i.dv = getelementptr i8, ptr %.023.i144247, i64 8 ; 2 uses
  %i.dw = load i64, ptr %.023.i144247, align 8
  %i.dx = add i64 %i.dw, 1                        ; 2 uses
  %i.dy = getelementptr i8, ptr %.025.i143246, i64 8 ; 2 uses
  store i64 %i.dx, ptr %.025.i143246, align 8
  %.not28.i147 = icmp eq i64 %i.dx, 0
  br i1 %.not28.i147, label %.preheader30.i142, label %.loopexit32.i129, !llvm.loop !0

.loopexit32.i129:                                 ; preds = %.lr.ph248, %bb.v
  %.126.i130 = phi ptr [ %i.dq, %bb.v ], [ %i.dy, %.lr.ph248 ] ; 6 uses
  %.124.i131 = phi ptr [ %i.dn, %bb.v ], [ %i.dv, %.lr.ph248 ] ; 6 uses
  %.1.i132 = phi i32 [ %.1108, %bb.v ], [ %i.du, %.lr.ph248 ]
  %.not29.i133 = icmp eq ptr %.126.i130, %.124.i131
  br i1 %.not29.i133, label %mpihelp_add_1.exit148, label %.preheader.i134

.preheader.i134:                                  ; preds = %.loopexit32.i129
  %i.dz = add i32 %.1.i132, -1                    ; 3 uses
  %i.ea = icmp sgt i32 %i.dz, 0
  br i1 %i.ea, label %.lr.ph.preheader.i136, label %mpihelp_add_1.exit148

.lr.ph.preheader.i136:                            ; preds = %.preheader.i134
  %wide.trip.count.i137 = zext nneg i32 %i.dz to i64 ; 2 uses
  %xtraiter283 = and i64 %wide.trip.count.i137, 3 ; 3 uses
  %i.eb = icmp ult i32 %i.dz, 4
  br i1 %i.eb, label %.lr.ph.i138.epil.preheader, label %.lr.ph.preheader.i136.new

.lr.ph.preheader.i136.new:                        ; preds = %.lr.ph.preheader.i136
  %unroll_iter287 = and i64 %wide.trip.count.i137, 2147483644
  br label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %.lr.ph.i138, %.lr.ph.preheader.i136.new
  %indvars.iv.i139 = phi i64 [ 0, %.lr.ph.preheader.i136.new ], [ %indvars.iv.next.i140.3, %.lr.ph.i138 ] ; 6 uses
  %niter288 = phi i64 [ 0, %.lr.ph.preheader.i136.new ], [ %niter288.next.3, %.lr.ph.i138 ]
  %i.ec = getelementptr [8 x i8], ptr %.124.i131, i64 %indvars.iv.i139
  %i.ed = load i64, ptr %i.ec, align 8
  %i.ee = getelementptr [8 x i8], ptr %.126.i130, i64 %indvars.iv.i139
  store i64 %i.ed, ptr %i.ee, align 8
  %indvars.iv.next.i140 = or disjoint i64 %indvars.iv.i139, 1 ; 2 uses
  %i.ef = getelementptr [8 x i8], ptr %.124.i131, i64 %indvars.iv.next.i140
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = getelementptr [8 x i8], ptr %.126.i130, i64 %indvars.iv.next.i140
  store i64 %i.eg, ptr %i.eh, align 8
  %indvars.iv.next.i140.1 = or disjoint i64 %indvars.iv.i139, 2 ; 2 uses
  %i.ei = getelementptr [8 x i8], ptr %.124.i131, i64 %indvars.iv.next.i140.1
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = getelementptr [8 x i8], ptr %.126.i130, i64 %indvars.iv.next.i140.1
  store i64 %i.ej, ptr %i.ek, align 8
  %indvars.iv.next.i140.2 = or disjoint i64 %indvars.iv.i139, 3 ; 2 uses
  %i.el = getelementptr [8 x i8], ptr %.124.i131, i64 %indvars.iv.next.i140.2
  %i.em = load i64, ptr %i.el, align 8
  %i.en = getelementptr [8 x i8], ptr %.126.i130, i64 %indvars.iv.next.i140.2
  store i64 %i.em, ptr %i.en, align 8
  %indvars.iv.next.i140.3 = add nuw nsw i64 %indvars.iv.i139, 4 ; 2 uses
  %niter288.next.3 = add i64 %niter288, 4         ; 2 uses
  %niter288.ncmp.3 = icmp eq i64 %niter288.next.3, %unroll_iter287
  br i1 %niter288.ncmp.3, label %mpihelp_add_1.exit148.loopexit.unr-lcssa, label %.lr.ph.i138, !llvm.loop !21

mpihelp_add_1.exit148.loopexit.unr-lcssa:         ; preds = %.lr.ph.i138
  %lcmp.mod285.not = icmp eq i64 %xtraiter283, 0
  br i1 %lcmp.mod285.not, label %mpihelp_add_1.exit148, label %.lr.ph.i138.epil.preheader

.lr.ph.i138.epil.preheader:                       ; preds = %mpihelp_add_1.exit148.loopexit.unr-lcssa, %.lr.ph.preheader.i136
  %indvars.iv.i139.epil.init = phi i64 [ 0, %.lr.ph.preheader.i136 ], [ %indvars.iv.next.i140.3, %mpihelp_add_1.exit148.loopexit.unr-lcssa ]
  %lcmp.mod286 = icmp ne i64 %xtraiter283, 0
  tail call void @llvm.assume(i1 %lcmp.mod286)
  br label %.lr.ph.i138.epil

.lr.ph.i138.epil:                                 ; preds = %.lr.ph.i138.epil, %.lr.ph.i138.epil.preheader
  %indvars.iv.i139.epil = phi i64 [ %indvars.iv.i139.epil.init, %.lr.ph.i138.epil.preheader ], [ %indvars.iv.next.i140.epil, %.lr.ph.i138.epil ] ; 3 uses
  %epil.iter284 = phi i64 [ 0, %.lr.ph.i138.epil.preheader ], [ %epil.iter284.next, %.lr.ph.i138.epil ]
  %i.eo = getelementptr [8 x i8], ptr %.124.i131, i64 %indvars.iv.i139.epil
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = getelementptr [8 x i8], ptr %.126.i130, i64 %indvars.iv.i139.epil
  store i64 %i.ep, ptr %i.eq, align 8
  %indvars.iv.next.i140.epil = add nuw nsw i64 %indvars.iv.i139.epil, 1
  %epil.iter284.next = add i64 %epil.iter284, 1   ; 2 uses
  %epil.iter284.cmp.not = icmp eq i64 %epil.iter284.next, %xtraiter283
  br i1 %epil.iter284.cmp.not, label %mpihelp_add_1.exit148, label %.lr.ph.i138.epil, !llvm.loop !25

mpihelp_add_1.exit148:                            ; preds = %.preheader30.i142, %mpihelp_add_1.exit148.loopexit.unr-lcssa, %.lr.ph.i138.epil, %.preheader30.i142.preheader, %.preheader.i134, %.loopexit32.i129, %.loopexit, %bb.u, %bb.t, %.thread, %bb.r, %bb.n
  %.1 = phi i32 [ -12, %bb.u ], [ -12, %bb.r ], [ -12, %bb.t ], [ -12, %.thread ], [ -12, %bb.n ], [ 0, %.loopexit ], [ 0, %.preheader30.i142.preheader ], [ 0, %.loopexit32.i129 ], [ 0, %.preheader.i134 ], [ 0, %mpihelp_add_1.exit148.loopexit.unr-lcssa ], [ 0, %.lr.ph.i138.epil ], [ 0, %.preheader30.i142 ]
  ret i32 %.1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mpi_free_limb_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @mpi_alloc_limb_space(i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @mul_n_basecase(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #0 align 16 {
bb.a:
  %i.a = load i64, ptr %2, align 8                ; 3 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 1
  %i.d = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader51

.preheader51:                                     ; preds = %bb.b
  br i1 %i.d, label %.lr.ph.preheader, label %.loopexit.thread

.lr.ph.preheader:                                 ; preds = %.preheader51
  %i.e = zext nneg i32 %3 to i64
  %i.f = shl nuw nsw i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %i.f, i1 false)
  br label %.loopexit

.preheader:                                       ; preds = %bb.b
  br i1 %i.d, label %.lr.ph55.preheader, label %.loopexit.thread

.lr.ph55.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.g = icmp ult i32 %3, 4
  br i1 %i.g, label %.lr.ph55.epil.preheader, label %.lr.ph55.preheader.new

.lr.ph55.preheader.new:                           ; preds = %.lr.ph55.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55, %.lr.ph55.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph55.preheader.new ], [ %indvars.iv.next.3, %.lr.ph55 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph55.preheader.new ], [ %niter.next.3, %.lr.ph55 ]
  %i.h = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.i = load i64, ptr %i.h, align 8
end_hunk_0
