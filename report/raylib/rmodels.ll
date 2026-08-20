inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 187
begin_hunk_0_@tinyobj_parse_and_index_mtl_file:bb.a
  %.sroa.16.0316 = phi float [ %.sroa.16.0380, %.preheader.i ], [ %.sroa.16.1, %parseInt.exit ]
  %.sroa.15.0314 = phi float [ %.sroa.15.0381, %.preheader.i ], [ %.sroa.15.1, %parseInt.exit ]
  %.sroa.14.0312 = phi float [ %.sroa.14.0382, %.preheader.i ], [ %.sroa.14.1, %parseInt.exit ]
  %.sroa.13.0310 = phi float [ %.sroa.13.0383, %.preheader.i ], [ %.sroa.13.1, %parseInt.exit ]
  %.sroa.12.0308 = phi float [ %.sroa.12.0384, %.preheader.i ], [ %.sroa.12.1, %parseInt.exit ]
  %.sroa.11.0306 = phi float [ %.sroa.11.0385, %.preheader.i ], [ %.sroa.11.1, %parseInt.exit ]
  %.sroa.10.0304 = phi float [ %.sroa.10.0386, %.preheader.i ], [ %.sroa.10.1, %parseInt.exit ]
  %.sroa.9.0302 = phi float [ %.sroa.9.0387, %.preheader.i ], [ %.sroa.9.1, %parseInt.exit ]
  %.sroa.8.0300 = phi float [ %.sroa.8.0388, %.preheader.i ], [ %.sroa.8.1, %parseInt.exit ]
  %.sroa.0.0298 = phi ptr [ %.sroa.0.0389, %.preheader.i ], [ %.sroa.0.1, %parseInt.exit ] ; 2 uses
  %.035296 = phi i32 [ %.035390, %.preheader.i ], [ %.237, %parseInt.exit ] ; 3 uses
  %.032294 = phi ptr [ %.032391, %.preheader.i ], [ %.234, %parseInt.exit ] ; 2 uses
  %.2225.ph = phi ptr [ %i.u, %.preheader.i ], [ %.2225, %parseInt.exit ] ; 2 uses
  %i.mf = call i32 @fclose(ptr noundef nonnull %i.e) ; 0 uses
  %.not66 = icmp eq ptr %.sroa.0.0298, null
  br i1 %.not66, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.loopexit259
  %i.mg = add i32 %.035296, 1                     ; 2 uses
  %i.mh = zext i32 %i.mg to i64
  %i.mi = mul nuw nsw i64 %i.mh, 144
  %i.mj = call noalias noundef ptr @realloc(ptr noundef %.032294, i64 noundef %i.mi) #52 ; 2 uses
  %i.mk = zext i32 %.035296 to i64
  %i.ml = getelementptr inbounds nuw [144 x i8], ptr %i.mj, i64 %i.mk ; 27 uses
  store ptr %.sroa.0.0298, ptr %i.ml, align 8
  %.sroa.8.0..sroa_idx169 = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  store float %.sroa.8.0300, ptr %.sroa.8.0..sroa_idx169, align 8
  %.sroa.9.0..sroa_idx171 = getelementptr inbounds nuw i8, ptr %i.ml, i64 12
  store float %.sroa.9.0302, ptr %.sroa.9.0..sroa_idx171, align 4
  %.sroa.10.0..sroa_idx173 = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  store float %.sroa.10.0304, ptr %.sroa.10.0..sroa_idx173, align 8
  %.sroa.11.0..sroa_idx175 = getelementptr inbounds nuw i8, ptr %i.ml, i64 20
  store float %.sroa.11.0306, ptr %.sroa.11.0..sroa_idx175, align 4
  %.sroa.12.0..sroa_idx177 = getelementptr inbounds nuw i8, ptr %i.ml, i64 24
  store float %.sroa.12.0308, ptr %.sroa.12.0..sroa_idx177, align 8
  %.sroa.13.0..sroa_idx179 = getelementptr inbounds nuw i8, ptr %i.ml, i64 28
  store float %.sroa.13.0310, ptr %.sroa.13.0..sroa_idx179, align 4
  %.sroa.14.0..sroa_idx181 = getelementptr inbounds nuw i8, ptr %i.ml, i64 32
  store float %.sroa.14.0312, ptr %.sroa.14.0..sroa_idx181, align 8
  %.sroa.15.0..sroa_idx183 = getelementptr inbounds nuw i8, ptr %i.ml, i64 36
  store float %.sroa.15.0314, ptr %.sroa.15.0..sroa_idx183, align 4
  %.sroa.16.0..sroa_idx185 = getelementptr inbounds nuw i8, ptr %i.ml, i64 40
  store float %.sroa.16.0316, ptr %.sroa.16.0..sroa_idx185, align 8
  %.sroa.17.0..sroa_idx187 = getelementptr inbounds nuw i8, ptr %i.ml, i64 44
  store float %.sroa.17.0318, ptr %.sroa.17.0..sroa_idx187, align 4
  %.sroa.18.0..sroa_idx189 = getelementptr inbounds nuw i8, ptr %i.ml, i64 48
  store float %.sroa.18.0320, ptr %.sroa.18.0..sroa_idx189, align 8
  %.sroa.19.0..sroa_idx191 = getelementptr inbounds nuw i8, ptr %i.ml, i64 52
  store float %.sroa.19.0322, ptr %.sroa.19.0..sroa_idx191, align 4
  %.sroa.20.0..sroa_idx193 = getelementptr inbounds nuw i8, ptr %i.ml, i64 56
  store float %.sroa.20.0324, ptr %.sroa.20.0..sroa_idx193, align 8
  %.sroa.21.0..sroa_idx195 = getelementptr inbounds nuw i8, ptr %i.ml, i64 60
  store float %.sroa.21.0326, ptr %.sroa.21.0..sroa_idx195, align 4
  %.sroa.22.0..sroa_idx197 = getelementptr inbounds nuw i8, ptr %i.ml, i64 64
  store float %.sroa.22.0351, ptr %.sroa.22.0..sroa_idx197, align 8
  %.sroa.23.0..sroa_idx199 = getelementptr inbounds nuw i8, ptr %i.ml, i64 68
  store float %.sroa.23.0329, ptr %.sroa.23.0..sroa_idx199, align 4
  %.sroa.26.0..sroa_idx201 = getelementptr inbounds nuw i8, ptr %i.ml, i64 72
  store float %.sroa.26.0331, ptr %.sroa.26.0..sroa_idx201, align 8
  %.sroa.29.0..sroa_idx203 = getelementptr inbounds nuw i8, ptr %i.ml, i64 76
  store float %.sroa.29.0333, ptr %.sroa.29.0..sroa_idx203, align 4
  %.sroa.33.0..sroa_idx205 = getelementptr inbounds nuw i8, ptr %i.ml, i64 80
  store i32 %.sroa.33.0335, ptr %.sroa.33.0..sroa_idx205, align 8
  %.sroa.36209.0..sroa_idx210 = getelementptr inbounds nuw i8, ptr %i.ml, i64 88
  store ptr %.sroa.36209.0349, ptr %.sroa.36209.0..sroa_idx210, align 8
  %.sroa.39.0..sroa_idx212 = getelementptr inbounds nuw i8, ptr %i.ml, i64 96
  store ptr %.sroa.39.0347, ptr %.sroa.39.0..sroa_idx212, align 8
  %.sroa.40.0..sroa_idx214 = getelementptr inbounds nuw i8, ptr %i.ml, i64 104
  store ptr %.sroa.40.0345, ptr %.sroa.40.0..sroa_idx214, align 8
  %.sroa.41.0..sroa_idx216 = getelementptr inbounds nuw i8, ptr %i.ml, i64 112
  store ptr %.sroa.41.0343, ptr %.sroa.41.0..sroa_idx216, align 8
  %.sroa.42.0..sroa_idx218 = getelementptr inbounds nuw i8, ptr %i.ml, i64 120
  store ptr %.sroa.42.0341, ptr %.sroa.42.0..sroa_idx218, align 8
  %.sroa.44.0..sroa_idx220 = getelementptr inbounds nuw i8, ptr %i.ml, i64 128
  store ptr %.sroa.44.0339, ptr %.sroa.44.0..sroa_idx220, align 8
  %.sroa.45.0..sroa_idx222 = getelementptr inbounds nuw i8, ptr %i.ml, i64 136
  store ptr %.sroa.45.0337, ptr %.sroa.45.0..sroa_idx222, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %.loopexit259.thread, %bb.cb, %.loopexit259
  %.2225.ph532 = phi ptr [ %.2225.ph, %bb.cb ], [ %.2225.ph, %.loopexit259 ], [ %i.l, %.loopexit259.thread ] ; 2 uses
  %.338 = phi i32 [ %i.mg, %bb.cb ], [ %.035296, %.loopexit259 ], [ 0, %.loopexit259.thread ]
  %.3 = phi ptr [ %i.mj, %bb.cb ], [ %.032294, %.loopexit259 ], [ null, %.loopexit259.thread ]
  store i32 %.338, ptr %1, align 4
  store ptr %.3, ptr %0, align 8
  %.not67 = icmp eq ptr %.2225.ph532, null
  br i1 %.not67, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @free(ptr noundef nonnull %.2225.ph532) #54
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cc, %bb.cd, %bb.a, %bb.c
  %.039 = phi i32 [ -3, %bb.c ], [ -2, %bb.a ], [ 0, %bb.cc ], [ 0, %bb.cd ]
  ret i32 %.039
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2, 1) i32 @tinyobj_parse_obj(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 11 uses
  %i.b = alloca ptr, align 8                      ; 19 uses
  %8 = alloca [16 x %struct.tinyobj_vertex_index_t], align 16 ; 12 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %9 = alloca %struct.hash_table_t, align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #54
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #54
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #54
  %i.e = icmp eq i32 %6, 0
  %i.f = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.g = insertelement <4 x ptr> %i.f, ptr %1, i64 1
  %i.h = insertelement <4 x ptr> %i.g, ptr %2, i64 2
  %i.i = insertelement <4 x ptr> %i.h, ptr %5, i64 3
  %i.j = icmp eq <4 x ptr> %i.i, splat (ptr null)
  %i.k = icmp eq ptr %3, null
  %i.l = icmp eq ptr %4, null
  %i.m = bitcast <4 x i1> %i.j to i4
  %i.n = icmp ne i4 %i.m, 0
  %op.rdx = or i1 %i.n, %i.k
  %op.rdx801 = or i1 %i.l, %i.e
  %op.rdx802 = or i1 %op.rdx, %op.rdx801
  br i1 %op.rdx802, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i8 0, i64 48, i1 false)
  %i.p = zext i32 %6 to i64                       ; 5 uses
  %xtraiter = and i64 %i.p, 1
  %i.q = icmp eq i32 %6, 1
  br i1 %i.q, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.p, 4294967294
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.f ] ; 6 uses
  %.0343546 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %spec.select424.1, %bb.f ]
  %.0369545 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.ag, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.f ]
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.s = load i8, ptr %i.r, align 1
  switch i8 %i.s, label %.lr.ph.1 [
    i8 0, label %is_line_ending.exit.thread
    i8 10, label %is_line_ending.exit.thread
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.t = or disjoint i64 %indvars.iv, 1           ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.p
  br i1 %i.u, label %bb.c, label %.lr.ph.1

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 %i.t
  %i.w = load i8, ptr %i.v, align 1
  %.not.i = icmp eq i8 %i.w, 10
  br i1 %.not.i, label %.lr.ph.1, label %is_line_ending.exit.thread

is_line_ending.exit.thread:                       ; preds = %.lr.ph, %.lr.ph, %bb.c
  %i.x = trunc nuw i64 %indvars.iv to i32
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.b, %bb.c, %is_line_ending.exit.thread
  %not..not423 = phi i32 [ 1, %is_line_ending.exit.thread ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %.lr.ph ]
  %i.y = phi i32 [ %i.x, %is_line_ending.exit.thread ], [ %.0369545, %bb.c ], [ %.0369545, %bb.b ], [ %.0369545, %.lr.ph ] ; 3 uses
  %spec.select424 = add i32 %.0343546, %not..not423
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.next
  %i.aa = load i8, ptr %i.z, align 1
  switch i8 %i.aa, label %bb.f [
    i8 0, label %is_line_ending.exit.thread.1
    i8 10, label %is_line_ending.exit.thread.1
    i8 13, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph.1
  %i.ab = add nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, %i.p
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 %i.ab
  %i.ae = load i8, ptr %i.ad, align 1
  %.not.i.1 = icmp eq i8 %i.ae, 10
  br i1 %.not.i.1, label %bb.f, label %is_line_ending.exit.thread.1

is_line_ending.exit.thread.1:                     ; preds = %bb.e, %.lr.ph.1, %.lr.ph.1
  %i.af = trunc nuw i64 %indvars.iv.next to i32
  br label %bb.f

bb.f:                                             ; preds = %is_line_ending.exit.thread.1, %bb.e, %bb.d, %.lr.ph.1
  %not..not423.1 = phi i32 [ 1, %is_line_ending.exit.thread.1 ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %.lr.ph.1 ]
  %i.ag = phi i32 [ %i.af, %is_line_ending.exit.thread.1 ], [ %i.y, %bb.e ], [ %i.y, %bb.d ], [ %i.y, %.lr.ph.1 ] ; 3 uses
  %spec.select424.1 = add i32 %spec.select424, %not..not423.1 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %.0343546.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select424.1, %._crit_edge.unr-lcssa ]
  %.0369545.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ag, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod853 = trunc i32 %6 to i1
  tail call void @llvm.assume(i1 %lcmp.mod853)
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.epil.init
  %i.ai = load i8, ptr %i.ah, align 1
  switch i8 %i.ai, label %._crit_edge.epilog-lcssa [
    i8 0, label %is_line_ending.exit.thread.epil
    i8 10, label %is_line_ending.exit.thread.epil
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.epil.preheader
  %i.aj = add nuw nsw i64 %indvars.iv.epil.init, 1 ; 2 uses
  %i.ak = icmp samesign ult i64 %i.aj, %i.p
  br i1 %i.ak, label %bb.h, label %._crit_edge.epilog-lcssa

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 %i.aj
  %i.am = load i8, ptr %i.al, align 1
  %.not.i.epil = icmp eq i8 %i.am, 10
  br i1 %.not.i.epil, label %._crit_edge.epilog-lcssa, label %is_line_ending.exit.thread.epil

is_line_ending.exit.thread.epil:                  ; preds = %bb.h, %.lr.ph.epil.preheader, %.lr.ph.epil.preheader
  %i.an = trunc nuw i64 %indvars.iv.epil.init to i32
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %is_line_ending.exit.thread.epil, %bb.h, %bb.g, %.lr.ph.epil.preheader
  %not..not423.epil = phi i32 [ 1, %is_line_ending.exit.thread.epil ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %.lr.ph.epil.preheader ]
  %i.ao = phi i32 [ %i.an, %is_line_ending.exit.thread.epil ], [ %.0369545.epil.init, %bb.h ], [ %.0369545.epil.init, %bb.g ], [ %.0369545.epil.init, %.lr.ph.epil.preheader ]
  %spec.select424.epil = add i32 %.0343546.epil.init, %not..not423.epil
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  %.lcssa850 = phi i32 [ %i.ag, %._crit_edge.unr-lcssa ], [ %i.ao, %._crit_edge.epilog-lcssa ] ; 2 uses
  %spec.select424.lcssa = phi i32 [ %spec.select424.1, %._crit_edge.unr-lcssa ], [ %spec.select424.epil, %._crit_edge.epilog-lcssa ]
  %.not = icmp ne i32 %6, %.lcssa850              ; 2 uses
  %i.ap = zext i1 %.not to i32
  %spec.select425 = add i32 %spec.select424.lcssa, %i.ap ; 3 uses
  %.not410 = icmp eq i32 %spec.select425, 0
  br i1 %.not410, label %.critedge, label %.lr.ph552.preheader

.lr.ph552.preheader:                              ; preds = %._crit_edge
  %i.aq = zext i32 %spec.select425 to i64         ; 8 uses
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.ar) #56 ; 7 uses
  %i.at = zext i32 %6 to i64                      ; 2 uses
  %i.au = load i8, ptr %5, align 1
  switch i8 %i.au, label %is_line_ending.exit444.peel [
    i8 0, label %bb.k
    i8 10, label %bb.k
    i8 13, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph552.preheader
  %i.av = icmp ugt i32 %6, 1
  br i1 %i.av, label %bb.j, label %is_line_ending.exit444.peel

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.ax = load i8, ptr %i.aw, align 1
  %.not.i443.peel = icmp eq i8 %i.ax, 10
  br i1 %.not.i443.peel, label %.lr.ph552.preheader847, label %bb.k

bb.k:                                             ; preds = %.lr.ph552.preheader, %.lr.ph552.preheader, %bb.j
  store i32 0, ptr %i.as, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 0, ptr %i.ay, align 4
  br label %is_line_ending.exit444.peel

is_line_ending.exit444.peel:                      ; preds = %bb.k, %bb.i, %.lr.ph552.preheader
  %.1374.peel = phi i32 [ 1, %bb.k ], [ 0, %.lr.ph552.preheader ], [ 0, %bb.i ] ; 3 uses
  %exitcond635.peel.not = icmp eq i32 %6, 1
  br i1 %exitcond635.peel.not, label %._crit_edge553, label %.lr.ph552.preheader847

.lr.ph552.preheader847:                           ; preds = %bb.j, %is_line_ending.exit444.peel
  %.0373549.ph = phi i32 [ %.1374.peel, %is_line_ending.exit444.peel ], [ 0, %bb.j ] ; 2 uses
  br label %.lr.ph552

.lr.ph552:                                        ; preds = %.lr.ph552.preheader847, %is_line_ending.exit444
  %indvars.iv631 = phi i64 [ %indvars.iv.next632.pre-phi, %is_line_ending.exit444 ], [ 1, %.lr.ph552.preheader847 ] ; 6 uses
  %.0371550 = phi i32 [ %.1372, %is_line_ending.exit444 ], [ %.0373549.ph, %.lr.ph552.preheader847 ] ; 5 uses
  %.0373549 = phi i32 [ %.1374, %is_line_ending.exit444 ], [ %.0373549.ph, %.lr.ph552.preheader847 ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv631
  %i.ba = load i8, ptr %i.az, align 1
  switch i8 %i.ba, label %.lr.ph552.is_line_ending.exit444_crit_edge [
    i8 0, label %bb.n
    i8 10, label %bb.n
    i8 13, label %bb.l
  ]

.lr.ph552.is_line_ending.exit444_crit_edge:       ; preds = %.lr.ph552
  %.pre668 = add nuw nsw i64 %indvars.iv631, 1
  br label %is_line_ending.exit444

bb.l:                                             ; preds = %.lr.ph552
  %i.bb = add nuw nsw i64 %indvars.iv631, 1       ; 4 uses
  %i.bc = icmp samesign ult i64 %i.bb, %i.at
  br i1 %i.bc, label %bb.m, label %is_line_ending.exit444

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 %i.bb
  %i.be = load i8, ptr %i.bd, align 1
  %.not.i443 = icmp eq i8 %i.be, 10
  br i1 %.not.i443, label %is_line_ending.exit444, label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph552, %.lr.ph552
  %i.bf = zext i32 %.0371550 to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bf ; 2 uses
  store i32 %.0373549, ptr %i.bg, align 4
  %i.bh = trunc nuw i64 %indvars.iv631 to i32
  %i.bi = sub i32 %i.bh, %.0373549                ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  store i32 %i.bi, ptr %i.bj, align 4
  %i.bk = getelementptr i8, ptr %5, i64 %indvars.iv631
  %i.bl = getelementptr i8, ptr %i.bk, i64 -1
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = icmp eq i8 %i.bm, 13
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bo = add i32 %i.bi, -1
  store i32 %i.bo, ptr %i.bj, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bp = add nuw nsw i64 %indvars.iv631, 1       ; 2 uses
  %i.bq = add i32 %.0371550, 1
  %i.br = trunc nuw i64 %i.bp to i32
  br label %is_line_ending.exit444

is_line_ending.exit444:                           ; preds = %.lr.ph552.is_line_ending.exit444_crit_edge, %bb.m, %bb.l, %bb.p
  %indvars.iv.next632.pre-phi = phi i64 [ %.pre668, %.lr.ph552.is_line_ending.exit444_crit_edge ], [ %i.bb, %bb.m ], [ %i.bb, %bb.l ], [ %i.bp, %bb.p ] ; 2 uses
  %.1374 = phi i32 [ %.0373549, %.lr.ph552.is_line_ending.exit444_crit_edge ], [ %.0373549, %bb.m ], [ %.0373549, %bb.l ], [ %i.br, %bb.p ] ; 2 uses
  %.1372 = phi i32 [ %.0371550, %.lr.ph552.is_line_ending.exit444_crit_edge ], [ %.0371550, %bb.m ], [ %.0371550, %bb.l ], [ %i.bq, %bb.p ] ; 2 uses
  %exitcond635.not = icmp eq i64 %indvars.iv.next632.pre-phi, %i.at
  br i1 %exitcond635.not, label %._crit_edge553, label %.lr.ph552, !llvm.loop !4

._crit_edge553:                                   ; preds = %is_line_ending.exit444, %is_line_ending.exit444.peel
  %.1374.lcssa = phi i32 [ %.1374.peel, %is_line_ending.exit444.peel ], [ %.1374, %is_line_ending.exit444 ]
  %.1372.lcssa = phi i32 [ %.1374.peel, %is_line_ending.exit444.peel ], [ %.1372, %is_line_ending.exit444 ]
  br i1 %.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge553
  %i.bs = zext i32 %.1372.lcssa to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bs ; 2 uses
  store i32 %.1374.lcssa, ptr %i.bt, align 4
  %i.bu = xor i32 %.lcssa850, -1
  %i.bv = add i32 %6, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %i.bv, ptr %i.bw, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge553
  %i.bx = mul nuw nsw i64 %i.aq, 360
  %i.by = tail call noalias ptr @malloc(i64 noundef %i.bx) #56 ; 14 uses
  %i.bz = tail call noalias dereferenceable_or_null(80) ptr @malloc(i64 noundef 80) #56
  store ptr %i.bz, ptr %9, align 8
  %i.ca = tail call noalias dereferenceable_or_null(320) ptr @calloc(i64 noundef 10, i64 noundef 32) #57 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %i.ca, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i32 10, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 0, ptr %i.cd, align 4
  %i.ce = and i32 %7, 1
  %.not.i445 = icmp eq i32 %i.ce, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.cg = ptrtoint ptr %i.a to i64                ; 8 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread701
  %indvars.iv637 = phi i64 [ 0, %bb.r ], [ %indvars.iv.next638, %.thread701 ] ; 4 uses
  %.0346564 = phi i32 [ 0, %bb.r ], [ %.2348, %.thread701 ] ; 6 uses
  %.0349563 = phi i32 [ 0, %bb.r ], [ %.2351, %.thread701 ] ; 6 uses
  %.0378559 = phi i32 [ -1, %bb.r ], [ %.1379, %.thread701 ] ; 6 uses
  %.0380558 = phi i32 [ 0, %bb.r ], [ %.2382, %.thread701 ] ; 6 uses
  %.0383557 = phi i32 [ 0, %bb.r ], [ %.2385, %.thread701 ] ; 6 uses
  %.0386556 = phi i32 [ 0, %bb.r ], [ %.2388, %.thread701 ] ; 6 uses
  %i.ch = getelementptr inbounds nuw [360 x i8], ptr %i.by, i64 %indvars.iv637 ; 22 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv637 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 %i.ck ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cn = load i32, ptr %i.cm, align 4            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.cl, i64 %i.co, i1 false)
end_hunk_0
begin_hunk_1_@cgltf_accessor_unpack_indices:bb.a
  %i.c = load i64, ptr %i.b, align 8
  br label %cgltf_buffer_view_data.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8
  %switch.tableidx = add i32 %i.e, -2             ; 2 uses
  %i.f = icmp ult i32 %switch.tableidx, 6
  br i1 %i.f, label %switch.lookup, label %cgltf_num_components.exit

switch.lookup:                                    ; preds = %bb.c
  %i.g = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.cgltf_accessor_unpack_indices, i64 %i.g
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %cgltf_num_components.exit

cgltf_num_components.exit:                        ; preds = %bb.c, %switch.lookup
  %.0.i = phi i64 [ %switch.ext, %switch.lookup ], [ 1, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8
  %i.j = mul i64 %i.i, %.0.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %3) ; 23 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.m = load i32, ptr %i.l, align 8
  %switch.tableidx110 = add i32 %i.m, -1          ; 2 uses
  %i.n = icmp ult i32 %switch.tableidx110, 6
  br i1 %i.n, label %switch.lookup111, label %cgltf_component_size.exit

switch.lookup111:                                 ; preds = %cgltf_num_components.exit
  %i.o = zext nneg i32 %switch.tableidx110 to i64
  %switch.gep112 = getelementptr inbounds nuw i8, ptr @switch.table.cgltf_accessor_unpack_indices.31, i64 %i.o
  %switch.load113 = load i8, ptr %switch.gep112, align 1
  %switch.ext114 = zext i8 %switch.load113 to i64
  br label %cgltf_component_size.exit

cgltf_component_size.exit:                        ; preds = %cgltf_num_components.exit, %switch.lookup111
  %.0.i68 = phi i64 [ %switch.ext114, %switch.lookup111 ], [ 0, %cgltf_num_components.exit ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.q = load i32, ptr %i.p, align 8
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.d, label %cgltf_buffer_view_data.exit.thread

bb.d:                                             ; preds = %cgltf_component_size.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8              ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  %i.u = icmp ugt i64 %.0.i68, %2
  %or.cond = or i1 %i.u, %i.t
  br i1 %or.cond, label %cgltf_buffer_view_data.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.f, label %cgltf_buffer_view_data.exit.thread76

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not10.i = icmp eq ptr %i.aa, null
  br i1 %.not10.i, label %cgltf_buffer_view_data.exit.thread, label %cgltf_buffer_view_data.exit

cgltf_buffer_view_data.exit:                      ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac
  br label %cgltf_buffer_view_data.exit.thread76

cgltf_buffer_view_data.exit.thread76:             ; preds = %cgltf_buffer_view_data.exit, %bb.e
  %.0.i6978 = phi ptr [ %i.ad, %cgltf_buffer_view_data.exit ], [ %i.w, %bb.e ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i6978, i64 %i.af ; 7 uses
  %i.ah = icmp eq i64 %.0.i68, %2
  br i1 %i.ah, label %bb.g, label %bb.i

bb.g:                                             ; preds = %cgltf_buffer_view_data.exit.thread76
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = mul nuw nsw i64 %.0.i, %2
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = mul i64 %2, %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %i.ag, i64 %i.am, i1 false)
  br label %cgltf_buffer_view_data.exit.thread

bb.i:                                             ; preds = %bb.g, %cgltf_buffer_view_data.exit.thread76
  switch i64 %2, label %cgltf_buffer_view_data.exit.thread [
    i64 1, label %.preheader
    i64 2, label %.preheader79
    i64 4, label %.preheader81
  ]

.preheader81:                                     ; preds = %bb.i
  %.not91 = icmp eq i64 %i.k, 0
  br i1 %.not91, label %cgltf_buffer_view_data.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader81
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %xtraiter = and i64 %i.k, 1
  %i.ao = icmp eq i64 %i.k, 1
  br i1 %i.ao, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.k, -2
  br label %bb.x

.preheader79:                                     ; preds = %bb.i
  %.not92 = icmp eq i64 %i.k, 0
  br i1 %.not92, label %cgltf_buffer_view_data.exit.thread, label %.lr.ph87

.lr.ph87:                                         ; preds = %.preheader79
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %xtraiter119 = and i64 %i.k, 1
  %i.aq = icmp eq i64 %i.k, 1
  br i1 %i.aq, label %.epil.preheader118, label %.lr.ph87.new

.lr.ph87.new:                                     ; preds = %.lr.ph87
  %unroll_iter122 = and i64 %i.k, -2
  br label %bb.q

.preheader:                                       ; preds = %bb.i
  %.not93 = icmp eq i64 %i.k, 0
  br i1 %.not93, label %cgltf_buffer_view_data.exit.thread, label %.lr.ph90

.lr.ph90:                                         ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %xtraiter125 = and i64 %i.k, 1
  %i.as = icmp eq i64 %i.k, 1
  br i1 %i.as, label %.epil.preheader124, label %.lr.ph90.new

.lr.ph90.new:                                     ; preds = %.lr.ph90
  %unroll_iter128 = and i64 %i.k, -2
  br label %bb.j

bb.j:                                             ; preds = %cgltf_component_read_index.exit.1, %.lr.ph90.new
  %.05889 = phi i64 [ 0, %.lr.ph90.new ], [ %i.bk, %cgltf_component_read_index.exit.1 ] ; 3 uses
  %.05988 = phi ptr [ %i.ag, %.lr.ph90.new ], [ %i.bm, %cgltf_component_read_index.exit.1 ] ; 4 uses
  %niter129 = phi i64 [ 0, %.lr.ph90.new ], [ %niter129.next.1, %cgltf_component_read_index.exit.1 ]
  %i.at = load i32, ptr %i.l, align 8
  switch i32 %i.at, label %cgltf_component_read_index.exit [
    i32 4, label %bb.k
    i32 5, label %bb.l
    i32 2, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.au = load i16, ptr %.05988, align 2
  %i.av = trunc i16 %i.au to i8
  br label %cgltf_component_read_index.exit

bb.l:                                             ; preds = %bb.j
  %i.aw = load i32, ptr %.05988, align 4
  %i.ax = trunc i32 %i.aw to i8
  br label %cgltf_component_read_index.exit

bb.m:                                             ; preds = %bb.j
  %i.ay = load i8, ptr %.05988, align 1
  br label %cgltf_component_read_index.exit

cgltf_component_read_index.exit:                  ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.0.i70 = phi i8 [ %i.ay, %bb.m ], [ %i.av, %bb.k ], [ %i.ax, %bb.l ], [ 0, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %.05889
  store i8 %.0.i70, ptr %i.az, align 1
  %i.ba = load i64, ptr %i.ar, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.05988, i64 %i.ba ; 4 uses
  %i.bc = load i32, ptr %i.l, align 8
  switch i32 %i.bc, label %cgltf_component_read_index.exit.1 [
    i32 4, label %bb.p
    i32 5, label %bb.o
    i32 2, label %bb.n
  ]

bb.n:                                             ; preds = %cgltf_component_read_index.exit
  %i.bd = load i8, ptr %i.bb, align 1
  br label %cgltf_component_read_index.exit.1

bb.o:                                             ; preds = %cgltf_component_read_index.exit
  %i.be = load i32, ptr %i.bb, align 4
  %i.bf = trunc i32 %i.be to i8
  br label %cgltf_component_read_index.exit.1

bb.p:                                             ; preds = %cgltf_component_read_index.exit
  %i.bg = load i16, ptr %i.bb, align 2
  %i.bh = trunc i16 %i.bg to i8
  br label %cgltf_component_read_index.exit.1

cgltf_component_read_index.exit.1:                ; preds = %bb.p, %bb.o, %bb.n, %cgltf_component_read_index.exit
  %.0.i70.1 = phi i8 [ %i.bd, %bb.n ], [ %i.bh, %bb.p ], [ %i.bf, %bb.o ], [ 0, %cgltf_component_read_index.exit ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %.05889
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store i8 %.0.i70.1, ptr %i.bj, align 1
  %i.bk = add nuw i64 %.05889, 2                  ; 2 uses
  %i.bl = load i64, ptr %i.ar, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bl ; 2 uses
  %niter129.next.1 = add nuw i64 %niter129, 2     ; 2 uses
  %niter129.ncmp.1 = icmp eq i64 %niter129.next.1, %unroll_iter128
  br i1 %niter129.ncmp.1, label %cgltf_buffer_view_data.exit.thread.loopexit.unr-lcssa, label %bb.j

bb.q:                                             ; preds = %cgltf_component_read_index.exit72.1, %.lr.ph87.new
  %.05786 = phi i64 [ 0, %.lr.ph87.new ], [ %i.ce, %cgltf_component_read_index.exit72.1 ] ; 3 uses
  %.185 = phi ptr [ %i.ag, %.lr.ph87.new ], [ %i.cg, %cgltf_component_read_index.exit72.1 ] ; 4 uses
  %niter123 = phi i64 [ 0, %.lr.ph87.new ], [ %niter123.next.1, %cgltf_component_read_index.exit72.1 ]
  %i.bn = load i32, ptr %i.l, align 8
  switch i32 %i.bn, label %cgltf_component_read_index.exit72 [
    i32 4, label %bb.r
    i32 5, label %bb.s
    i32 2, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.bo = load i16, ptr %.185, align 2
  br label %cgltf_component_read_index.exit72

bb.s:                                             ; preds = %bb.q
  %i.bp = load i32, ptr %.185, align 4
  %i.bq = trunc i32 %i.bp to i16
  br label %cgltf_component_read_index.exit72

bb.t:                                             ; preds = %bb.q
  %i.br = load i8, ptr %.185, align 1
  %i.bs = zext i8 %i.br to i16
  br label %cgltf_component_read_index.exit72

cgltf_component_read_index.exit72:                ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i71 = phi i16 [ %i.bs, %bb.t ], [ %i.bo, %bb.r ], [ %i.bq, %bb.s ], [ 0, %bb.q ]
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.05786
  store i16 %.0.i71, ptr %i.bt, align 2
  %i.bu = load i64, ptr %i.ap, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.185, i64 %i.bu ; 4 uses
  %i.bw = load i32, ptr %i.l, align 8
  switch i32 %i.bw, label %cgltf_component_read_index.exit72.1 [
    i32 4, label %bb.w
    i32 5, label %bb.v
    i32 2, label %bb.u
  ]

bb.u:                                             ; preds = %cgltf_component_read_index.exit72
  %i.bx = load i8, ptr %i.bv, align 1
  %i.by = zext i8 %i.bx to i16
  br label %cgltf_component_read_index.exit72.1

bb.v:                                             ; preds = %cgltf_component_read_index.exit72
  %i.bz = load i32, ptr %i.bv, align 4
  %i.ca = trunc i32 %i.bz to i16
  br label %cgltf_component_read_index.exit72.1

bb.w:                                             ; preds = %cgltf_component_read_index.exit72
  %i.cb = load i16, ptr %i.bv, align 2
  br label %cgltf_component_read_index.exit72.1

cgltf_component_read_index.exit72.1:              ; preds = %bb.w, %bb.v, %bb.u, %cgltf_component_read_index.exit72
  %.0.i71.1 = phi i16 [ %i.by, %bb.u ], [ %i.cb, %bb.w ], [ %i.ca, %bb.v ], [ 0, %cgltf_component_read_index.exit72 ]
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.05786
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  store i16 %.0.i71.1, ptr %i.cd, align 2
  %i.ce = add nuw i64 %.05786, 2                  ; 2 uses
  %i.cf = load i64, ptr %i.ap, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cf ; 2 uses
  %niter123.next.1 = add nuw i64 %niter123, 2     ; 2 uses
  %niter123.ncmp.1 = icmp eq i64 %niter123.next.1, %unroll_iter122
  br i1 %niter123.ncmp.1, label %cgltf_buffer_view_data.exit.thread.loopexit115.unr-lcssa, label %bb.q

bb.x:                                             ; preds = %cgltf_component_read_index.exit74.1, %.lr.ph.new
  %.084 = phi i64 [ 0, %.lr.ph.new ], [ %i.cy, %cgltf_component_read_index.exit74.1 ] ; 3 uses
  %.283 = phi ptr [ %i.ag, %.lr.ph.new ], [ %i.da, %cgltf_component_read_index.exit74.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %cgltf_component_read_index.exit74.1 ]
  %i.ch = load i32, ptr %i.l, align 8
  switch i32 %i.ch, label %cgltf_component_read_index.exit74 [
    i32 4, label %bb.y
    i32 5, label %bb.z
    i32 2, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  %i.ci = load i16, ptr %.283, align 2
  %i.cj = zext i16 %i.ci to i32
  br label %cgltf_component_read_index.exit74

bb.z:                                             ; preds = %bb.x
  %i.ck = load i32, ptr %.283, align 4
  br label %cgltf_component_read_index.exit74

bb.aa:                                            ; preds = %bb.x
  %i.cl = load i8, ptr %.283, align 1
  %i.cm = zext i8 %i.cl to i32
  br label %cgltf_component_read_index.exit74

cgltf_component_read_index.exit74:                ; preds = %bb.x, %bb.y, %bb.z, %bb.aa
  %.0.i73 = phi i32 [ %i.cm, %bb.aa ], [ %i.cj, %bb.y ], [ %i.ck, %bb.z ], [ 0, %bb.x ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.084
  store i32 %.0.i73, ptr %i.cn, align 4
  %i.co = load i64, ptr %i.an, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %.283, i64 %i.co ; 4 uses
  %i.cq = load i32, ptr %i.l, align 8
  switch i32 %i.cq, label %cgltf_component_read_index.exit74.1 [
    i32 4, label %bb.ad
    i32 5, label %bb.ac
    i32 2, label %bb.ab
  ]

bb.ab:                                            ; preds = %cgltf_component_read_index.exit74
  %i.cr = load i8, ptr %i.cp, align 1
  %i.cs = zext i8 %i.cr to i32
  br label %cgltf_component_read_index.exit74.1

bb.ac:                                            ; preds = %cgltf_component_read_index.exit74
  %i.ct = load i32, ptr %i.cp, align 4
  br label %cgltf_component_read_index.exit74.1

bb.ad:                                            ; preds = %cgltf_component_read_index.exit74
  %i.cu = load i16, ptr %i.cp, align 2
  %i.cv = zext i16 %i.cu to i32
  br label %cgltf_component_read_index.exit74.1

cgltf_component_read_index.exit74.1:              ; preds = %bb.ad, %bb.ac, %bb.ab, %cgltf_component_read_index.exit74
  %.0.i73.1 = phi i32 [ %i.cs, %bb.ab ], [ %i.cv, %bb.ad ], [ %i.ct, %bb.ac ], [ 0, %cgltf_component_read_index.exit74 ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.084
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store i32 %.0.i73.1, ptr %i.cx, align 4
  %i.cy = add nuw i64 %.084, 2                    ; 2 uses
  %i.cz = load i64, ptr %i.an, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cz ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %cgltf_buffer_view_data.exit.thread.loopexit116.unr-lcssa, label %bb.x

cgltf_buffer_view_data.exit.thread.loopexit.unr-lcssa: ; preds = %cgltf_component_read_index.exit.1
  %lcmp.mod126.not = icmp eq i64 %xtraiter125, 0
  br i1 %lcmp.mod126.not, label %cgltf_buffer_view_data.exit.thread, label %.epil.preheader124

.epil.preheader124:                               ; preds = %cgltf_buffer_view_data.exit.thread.loopexit.unr-lcssa, %.lr.ph90
  %.05889.epil.init = phi i64 [ 0, %.lr.ph90 ], [ %i.bk, %cgltf_buffer_view_data.exit.thread.loopexit.unr-lcssa ]
  %.05988.epil.init = phi ptr [ %i.ag, %.lr.ph90 ], [ %i.bm, %cgltf_buffer_view_data.exit.thread.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod127 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod127)
  %i.db = load i32, ptr %i.l, align 8
  switch i32 %i.db, label %cgltf_component_read_index.exit.epil [
    i32 4, label %bb.ag
    i32 5, label %bb.af
    i32 2, label %bb.ae
  ]

bb.ae:                                            ; preds = %.epil.preheader124
  %i.dc = load i8, ptr %.05988.epil.init, align 1
  br label %cgltf_component_read_index.exit.epil

bb.af:                                            ; preds = %.epil.preheader124
  %i.dd = load i32, ptr %.05988.epil.init, align 4
  %i.de = trunc i32 %i.dd to i8
  br label %cgltf_component_read_index.exit.epil

bb.ag:                                            ; preds = %.epil.preheader124
  %i.df = load i16, ptr %.05988.epil.init, align 2
  %i.dg = trunc i16 %i.df to i8
  br label %cgltf_component_read_index.exit.epil

cgltf_component_read_index.exit.epil:             ; preds = %bb.ag, %bb.af, %bb.ae, %.epil.preheader124
  %.0.i70.epil = phi i8 [ %i.dc, %bb.ae ], [ %i.dg, %bb.ag ], [ %i.de, %bb.af ], [ 0, %.epil.preheader124 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 %.05889.epil.init
  store i8 %.0.i70.epil, ptr %i.dh, align 1
  br label %cgltf_buffer_view_data.exit.thread

cgltf_buffer_view_data.exit.thread.loopexit115.unr-lcssa: ; preds = %cgltf_component_read_index.exit72.1
  %lcmp.mod120.not = icmp eq i64 %xtraiter119, 0
  br i1 %lcmp.mod120.not, label %cgltf_buffer_view_data.exit.thread, label %.epil.preheader118

.epil.preheader118:                               ; preds = %cgltf_buffer_view_data.exit.thread.loopexit115.unr-lcssa, %.lr.ph87
  %.05786.epil.init = phi i64 [ 0, %.lr.ph87 ], [ %i.ce, %cgltf_buffer_view_data.exit.thread.loopexit115.unr-lcssa ]
  %.185.epil.init = phi ptr [ %i.ag, %.lr.ph87 ], [ %i.cg, %cgltf_buffer_view_data.exit.thread.loopexit115.unr-lcssa ] ; 3 uses
  %lcmp.mod121 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod121)
  %i.di = load i32, ptr %i.l, align 8
  switch i32 %i.di, label %cgltf_component_read_index.exit72.epil [
    i32 4, label %bb.aj
    i32 5, label %bb.ai
    i32 2, label %bb.ah
  ]

bb.ah:                                            ; preds = %.epil.preheader118
  %i.dj = load i8, ptr %.185.epil.init, align 1
  %i.dk = zext i8 %i.dj to i16
  br label %cgltf_component_read_index.exit72.epil

bb.ai:                                            ; preds = %.epil.preheader118
  %i.dl = load i32, ptr %.185.epil.init, align 4
  %i.dm = trunc i32 %i.dl to i16
  br label %cgltf_component_read_index.exit72.epil

bb.aj:                                            ; preds = %.epil.preheader118
  %i.dn = load i16, ptr %.185.epil.init, align 2
  br label %cgltf_component_read_index.exit72.epil

cgltf_component_read_index.exit72.epil:           ; preds = %bb.aj, %bb.ai, %bb.ah, %.epil.preheader118
  %.0.i71.epil = phi i16 [ %i.dk, %bb.ah ], [ %i.dn, %bb.aj ], [ %i.dm, %bb.ai ], [ 0, %.epil.preheader118 ]
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.05786.epil.init
  store i16 %.0.i71.epil, ptr %i.do, align 2
  br label %cgltf_buffer_view_data.exit.thread

cgltf_buffer_view_data.exit.thread.loopexit116.unr-lcssa: ; preds = %cgltf_component_read_index.exit74.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %cgltf_buffer_view_data.exit.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %cgltf_buffer_view_data.exit.thread.loopexit116.unr-lcssa, %.lr.ph
  %.084.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.cy, %cgltf_buffer_view_data.exit.thread.loopexit116.unr-lcssa ]
  %.283.epil.init = phi ptr [ %i.ag, %.lr.ph ], [ %i.da, %cgltf_buffer_view_data.exit.thread.loopexit116.unr-lcssa ] ; 3 uses
  %lcmp.mod117 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.dp = load i32, ptr %i.l, align 8
  switch i32 %i.dp, label %cgltf_component_read_index.exit74.epil [
    i32 4, label %bb.am
    i32 5, label %bb.al
    i32 2, label %bb.ak
  ]

bb.ak:                                            ; preds = %.epil.preheader
  %i.dq = load i8, ptr %.283.epil.init, align 1
  %i.dr = zext i8 %i.dq to i32
  br label %cgltf_component_read_index.exit74.epil

bb.al:                                            ; preds = %.epil.preheader
  %i.ds = load i32, ptr %.283.epil.init, align 4
  br label %cgltf_component_read_index.exit74.epil

bb.am:                                            ; preds = %.epil.preheader
  %i.dt = load i16, ptr %.283.epil.init, align 2
  %i.du = zext i16 %i.dt to i32
  br label %cgltf_component_read_index.exit74.epil

cgltf_component_read_index.exit74.epil:           ; preds = %bb.am, %bb.al, %bb.ak, %.epil.preheader
  %.0.i73.epil = phi i32 [ %i.dr, %bb.ak ], [ %i.du, %bb.am ], [ %i.ds, %bb.al ], [ 0, %.epil.preheader ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.084.epil.init
  store i32 %.0.i73.epil, ptr %i.dv, align 4
  br label %cgltf_buffer_view_data.exit.thread

cgltf_buffer_view_data.exit.thread:               ; preds = %cgltf_component_read_index.exit74.epil, %cgltf_buffer_view_data.exit.thread.loopexit116.unr-lcssa, %cgltf_component_read_index.exit72.epil, %cgltf_buffer_view_data.exit.thread.loopexit115.unr-lcssa, %cgltf_component_read_index.exit.epil, %cgltf_buffer_view_data.exit.thread.loopexit.unr-lcssa, %.preheader81, %.preheader79, %.preheader, %bb.f, %cgltf_component_size.exit, %bb.d, %bb.i, %bb.h, %bb.b
  %.262 = phi i64 [ %i.c, %bb.b ], [ 0, %.preheader79 ], [ 0, %cgltf_component_size.exit ], [ 0, %bb.d ], [ 0, %bb.i ], [ %i.k, %bb.h ], [ 0, %bb.f ], [ 0, %.preheader ], [ 0, %.preheader81 ], [ %i.k, %cgltf_component_read_index.exit72.epil ], [ %i.k, %cgltf_component_read_index.exit.epil ], [ %i.k, %cgltf_buffer_view_data.exit.thread.loopexit.unr-lcssa ], [ %i.k, %cgltf_buffer_view_data.exit.thread.loopexit115.unr-lcssa ], [ %i.k, %cgltf_buffer_view_data.exit.thread.loopexit116.unr-lcssa ], [ %i.k, %cgltf_component_read_index.exit74.epil ]
  ret i64 %.262
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden range(i32 -3, 1) i32 @Vox_LoadFromMemory(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr nofree noundef %2) local_unnamed_addr #24 {
bb.a:
  %3 = alloca [8 x %struct.VoxVector3], align 16  ; 11 uses
  %i.a = alloca [8 x i32], align 16               ; 7 uses
  %i.b = alloca [5 x i8], align 4                 ; 10 uses
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.5, i64 noundef 4) #51
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4
  switch i32 %i.g, label %.loopexit [
    i32 200, label %bb.c
    i32 150, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.h = icmp ugt i32 %1, 8
  br i1 %i.h, label %.lr.ph111, label %._crit_edge

.lr.ph111:                                        ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 44
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph111, %Vox_AllocArray.exit
  %.079110 = phi ptr [ %i.i, %.lr.ph111 ], [ %.3, %Vox_AllocArray.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  %i.v = load i32, ptr %.079110, align 1
  store i32 %i.v, ptr %i.b, align 4
  store i8 0, ptr %i.j, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %.079110, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.079110, i64 12 ; 4 uses
  %i.z = load i32, ptr %i.b, align 4
  %i.aa = xor i32 %i.z, 1163544915
  %i.ab = getelementptr i8, ptr %i.b, i64 4
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or i32 %i.aa, %i.ad
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = load i32, ptr %i.y, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.079110, i64 16
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %.079110, i64 20
  %i.am = load i32, ptr %i.al, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %.079110, i64 24 ; 3 uses
  %i.ao = add i32 %i.ai, 15                       ; 2 uses
  %i.ap = and i32 %i.ao, -16                      ; 2 uses
  %i.aq = add i32 %i.am, 15                       ; 2 uses
  %i.ar = and i32 %i.aq, -16
  %i.as = add i32 %i.ak, 15                       ; 2 uses
  %i.at = and i32 %i.as, -16
  %i.au = ashr i32 %i.ao, 4                       ; 2 uses
  %i.av = ashr i32 %i.aq, 4                       ; 2 uses
  %i.aw = ashr i32 %i.as, 4                       ; 2 uses
  store i32 %i.ap, ptr %2, align 8
  store i32 %i.ar, ptr %i.q, align 4
  store i32 %i.at, ptr %i.l, align 8
  store i32 %i.au, ptr %i.r, align 4
  store i32 %i.av, ptr %i.n, align 8
  store i32 %i.aw, ptr %i.s, align 4
  %i.ax = mul i32 %i.av, %i.aw                    ; 3 uses
  store i32 %i.ax, ptr %i.m, align 4
  %i.ay = mul i32 %i.ax, %i.ap                    ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = tail call noalias ptr @malloc(i64 noundef %i.az) #56
  store ptr %i.ba, ptr %i.o, align 8
  store i32 %i.ay, ptr %i.t, align 8
  %i.bb = mul i32 %i.ax, %i.au                    ; 5 uses
  store i32 %i.bb, ptr %i.u, align 4
  store i32 0, ptr %i.p, align 8
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.preheader.i, label %Vox_AllocArray.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.bb to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.bd = icmp eq i32 %i.bb, 1
  br i1 %i.bd, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.be = load ptr, ptr %i.o, align 8
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv.i
  store ptr null, ptr %i.bf, align 8
  %i.bg = load ptr, ptr %i.o, align 8
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 0, ptr %i.bi, align 8
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bj = load ptr, ptr %i.o, align 8
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %indvars.iv.next.i
  store ptr null, ptr %i.bk, align 8
  %i.bl = load ptr, ptr %i.o, align 8
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %indvars.iv.next.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i32 0, ptr %i.bn, align 8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Vox_AllocArray.exit.loopexit.unr-lcssa, label %.lr.ph.i

bb.f:                                             ; preds = %bb.d
  %i.bo = load i32, ptr %i.b, align 4
  %i.bp = xor i32 %i.bo, 1230657880
  %i.bq = getelementptr i8, ptr %i.b, i64 4
  %i.br = load i8, ptr %i.bq, align 4
  %i.bs = zext i8 %i.br to i32
  %i.bt = or i32 %i.bp, %i.bs
  %i.bu = icmp ne i32 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bx = load i32, ptr %i.y, align 4             ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.079110, i64 16 ; 2 uses
  %.not89107 = icmp eq i32 %i.bx, 0
  br i1 %.not89107, label %Vox_AllocArray.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %Vox_SetVoxel.exit
  %.078109 = phi i32 [ %i.do, %Vox_SetVoxel.exit ], [ %i.bx, %bb.g ]
  %.1108 = phi ptr [ %i.cf, %Vox_SetVoxel.exit ], [ %i.by, %bb.g ] ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.1108, i64 1
  %i.ca = load i8, ptr %.1108, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.1108, i64 2
  %i.cc = load i8, ptr %i.bz, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %.1108, i64 3
  %i.ce = load i8, ptr %i.cb, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %.1108, i64 4 ; 2 uses
  %i.cg = load i8, ptr %i.cd, align 1
  %i.ch = zext i8 %i.ca to i32                    ; 2 uses
  %i.ci = zext i8 %i.ce to i32                    ; 2 uses
  %i.cj = load i32, ptr %i.l, align 8
  %i.ck = zext i8 %i.cc to i32
  %i.cl = xor i32 %i.ck, -1
  %i.cm = add i32 %i.cj, %i.cl                    ; 2 uses
  %i.cn = lshr i32 %i.ch, 4
  %i.co = lshr i32 %i.ci, 4
  %i.cp = ashr i32 %i.cm, 4
  %i.cq = load i32, ptr %i.m, align 4
  %i.cr = mul nsw i32 %i.cq, %i.cn
  %i.cs = load i32, ptr %i.n, align 8
  %i.ct = mul nsw i32 %i.cs, %i.cp
  %i.cu = add i32 %i.cr, %i.co
  %i.cv = add i32 %i.cu, %i.ct
  %i.cw = load ptr, ptr %i.o, align 8
  %i.cx = sext i32 %i.cv to i64
  %i.cy = getelementptr inbounds [16 x i8], ptr %i.cw, i64 %i.cx ; 4 uses
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.h, label %Vox_SetVoxel.exit

bb.h:                                             ; preds = %.lr.ph
  %calloc.i = tail call dereferenceable_or_null(4096) ptr @calloc(i64 1, i64 4096)
  store ptr %calloc.i, ptr %i.cy, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i32 4096, ptr %i.db, align 8
  %i.dc = load i32, ptr %i.p, align 8
  %i.dd = add nsw i32 %i.dc, 1
  store i32 %i.dd, ptr %i.p, align 8
  %.pre.i = load ptr, ptr %i.cy, align 8
  br label %Vox_SetVoxel.exit

Vox_SetVoxel.exit:                                ; preds = %.lr.ph, %bb.h
  %i.de = phi ptr [ %.pre.i, %bb.h ], [ %i.cz, %.lr.ph ]
  %i.df = and i32 %i.ci, 15
  %i.dg = shl nuw nsw i32 %i.ch, 8
  %i.dh = and i32 %i.dg, 3840
  %i.di = shl i32 %i.cm, 4
  %i.dj = and i32 %i.di, 240
  %i.dk = or disjoint i32 %i.df, %i.dh
  %i.dl = or disjoint i32 %i.dk, %i.dj
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dm
  store i8 %i.cg, ptr %i.dn, align 1
  %i.do = add i32 %.078109, -1                    ; 2 uses
  %.not89 = icmp eq i32 %i.do, 0
  br i1 %.not89, label %Vox_AllocArray.exit, label %.lr.ph

bb.i:                                             ; preds = %bb.f
  %i.dp = load i32, ptr %i.b, align 4
  %i.dq = xor i32 %i.dp, 1094862674
  %i.dr = getelementptr i8, ptr %i.b, i64 4
  %i.ds = load i8, ptr %i.dr, align 4
  %i.dt = zext i8 %i.ds to i32
  %i.du = or i32 %i.dq, %i.dt
  %i.dv = icmp ne i32 %i.du, 0
  %i.dw = zext i1 %i.dv to i32
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %.preheader103, label %bb.j

.preheader103:                                    ; preds = %bb.i, %.preheader103
  %indvars.iv = phi i64 [ %indvars.iv.next.4, %.preheader103 ], [ 0, %bb.i ] ; 5 uses
  %.2105 = phi ptr [ %i.eo, %.preheader103 ], [ %i.y, %bb.i ] ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.2105, i64 4
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load <4 x i8>, ptr %.2105, align 1
  store <4 x i8> %i.eb, ptr %i.ea, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %.2105, i64 8
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load <4 x i8>, ptr %i.dy, align 1
  store <4 x i8> %i.ef, ptr %i.ee, align 4
  %i.eg = getelementptr inbounds nuw i8, ptr %.2105, i64 12
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.ej = load <4 x i8>, ptr %i.ec, align 1
  store <4 x i8> %i.ej, ptr %i.ei, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %.2105, i64 16
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load <4 x i8>, ptr %i.eg, align 1
  store <4 x i8> %i.en, ptr %i.em, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %.2105, i64 20 ; 2 uses
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.4
  %i.eq = load <4 x i8>, ptr %i.ek, align 1
  store <4 x i8> %i.eq, ptr %i.ep, align 4
  %exitcond.not.4 = icmp eq i64 %indvars.iv.next.4, 255
  br i1 %exitcond.not.4, label %Vox_AllocArray.exit, label %.preheader103

bb.j:                                             ; preds = %bb.i
  %i.er = zext i32 %i.x to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.er
  br label %Vox_AllocArray.exit

Vox_AllocArray.exit.loopexit.unr-lcssa:           ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Vox_AllocArray.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %Vox_AllocArray.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %Vox_AllocArray.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod212 = trunc i32 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod212)
  %i.et = load ptr, ptr %i.o, align 8
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %indvars.iv.i.epil.init
  store ptr null, ptr %i.eu, align 8
  %i.ev = load ptr, ptr %i.o, align 8
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %indvars.iv.i.epil.init
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i32 0, ptr %i.ex, align 8
  br label %Vox_AllocArray.exit

Vox_AllocArray.exit:                              ; preds = %.preheader103, %Vox_SetVoxel.exit, %.lr.ph.i.epil.preheader, %Vox_AllocArray.exit.loopexit.unr-lcssa, %bb.g, %bb.e, %bb.j
  %.3 = phi ptr [ %i.an, %.lr.ph.i.epil.preheader ], [ %i.es, %bb.j ], [ %i.cf, %Vox_SetVoxel.exit ], [ %i.an, %bb.e ], [ %i.by, %bb.g ], [ %i.an, %Vox_AllocArray.exit.loopexit.unr-lcssa ], [ %i.eo, %.preheader103 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  %i.ey = icmp ult ptr %.3, %i.d
  br i1 %i.ey, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %Vox_AllocArray.exit, %bb.c
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 9 uses
  %i.fa = tail call noalias dereferenceable_or_null(36864) ptr @malloc(i64 noundef 36864) #56
  store ptr %i.fa, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 13 uses
  store i32 0, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 9 uses
  store i32 3072, ptr %i.fc, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 9 uses
  %i.fe = tail call noalias dereferenceable_or_null(36864) ptr @malloc(i64 noundef 36864) #56
  store ptr %i.fe, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 13 uses
  store i32 0, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 76 ; 9 uses
  store i32 3072, ptr %i.fg, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 13 uses
  %i.fi = tail call noalias dereferenceable_or_null(6144) ptr @malloc(i64 noundef 6144) #56
  store ptr %i.fi, ptr %i.fh, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 19 uses
  store i32 0, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 13 uses
  store i32 3072, ptr %i.fk, align 4
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 9 uses
  %i.fm = tail call noalias dereferenceable_or_null(12288) ptr @malloc(i64 noundef 12288) #56
  store ptr %i.fm, ptr %i.fl, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 13 uses
  store i32 0, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 108 ; 9 uses
  store i32 3072, ptr %i.fo, align 4
  %i.fp = load i32, ptr %2, align 8               ; 2 uses
  %.not83119 = icmp slt i32 %i.fp, 0
  br i1 %.not83119, label %.loopexit, label %.preheader101.lr.ph

.preheader101.lr.ph:                              ; preds = %._crit_edge
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.fw = load i32, ptr %i.fq, align 8            ; 3 uses
  %i.fx = icmp slt i32 %i.fw, 0
  br i1 %i.fx, label %.loopexit, label %.preheader101

.preheader101:                                    ; preds = %.preheader101.lr.ph, %._crit_edge118
  %i.fy = phi i32 [ %i.wy, %._crit_edge118 ], [ %i.fp, %.preheader101.lr.ph ] ; 2 uses
  %i.fz = phi i32 [ %i.wz, %._crit_edge118 ], [ %i.fw, %.preheader101.lr.ph ] ; 3 uses
  %i.ga = phi i32 [ %i.xa, %._crit_edge118 ], [ %i.fw, %.preheader101.lr.ph ] ; 3 uses
end_hunk_1
begin_hunk_2_@_m3dstbi_zlib_decode_malloc_guesssize_headerflag:bb.a
  %i.ch = shl i32 %.0.i.i.i30.i.i.prol, %i.ca
  %i.ci = or i32 %i.ch, %i.bz                     ; 2 uses
  store i32 %i.ci, ptr %i.ab, align 4
  %i.cj = add nuw nsw i32 %i.as, 7                ; 2 uses
  store i32 %i.cj, ptr %i.aa, align 8
  br label %.new

.new:                                             ; preds = %bb.j, %_m3dstbi__zget8.exit.i.i29.i.i.prol
  %.unr = phi i32 [ %i.bz, %bb.j ], [ %i.ci, %_m3dstbi__zget8.exit.i.i29.i.i.prol ]
  %.unr347 = phi i32 [ %i.ca, %bb.j ], [ %i.cj, %_m3dstbi__zget8.exit.i.i29.i.i.prol ]
  %.unr348 = phi ptr [ %.promoted.i.i26.i.i, %bb.j ], [ %i.cg, %_m3dstbi__zget8.exit.i.i29.i.i.prol ]
  br label %bb.l

bb.l:                                             ; preds = %_m3dstbi__zget8.exit.i.i29.i.i.1, %.new
  %i.ck = phi i32 [ %.unr, %.new ], [ %i.cz, %_m3dstbi__zget8.exit.i.i29.i.i.1 ]
  %i.cl = phi i32 [ %.unr347, %.new ], [ %i.da, %_m3dstbi__zget8.exit.i.i29.i.i.1 ] ; 4 uses
  %i.cm = phi ptr [ %.unr348, %.new ], [ %i.cx, %_m3dstbi__zget8.exit.i.i29.i.i.1 ] ; 4 uses
  %.not.i.i.i28.i.i = icmp ult ptr %i.cm, %i.cc
  br i1 %.not.i.i.i28.i.i, label %bb.m, label %_m3dstbi__zget8.exit.i.i29.i.i

bb.m:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 2 uses
  store ptr %i.cn, ptr %6, align 8
  %i.co = load i8, ptr %i.cm, align 1
  %i.cp = zext i8 %i.co to i32
  br label %_m3dstbi__zget8.exit.i.i29.i.i

_m3dstbi__zget8.exit.i.i29.i.i:                   ; preds = %bb.m, %bb.l
  %i.cq = phi ptr [ %i.cn, %bb.m ], [ %i.cm, %bb.l ] ; 4 uses
  %.0.i.i.i30.i.i = phi i32 [ %i.cp, %bb.m ], [ 0, %bb.l ]
  %i.cr = shl i32 %.0.i.i.i30.i.i, %i.cl
  %i.cs = or i32 %i.cr, %i.ck                     ; 2 uses
  store i32 %i.cs, ptr %i.ab, align 4
  %i.ct = add nuw nsw i32 %i.cl, 8                ; 2 uses
  store i32 %i.ct, ptr %i.aa, align 8
  %.not.i.i.i28.i.i.1 = icmp ult ptr %i.cq, %i.cc
  br i1 %.not.i.i.i28.i.i.1, label %bb.n, label %_m3dstbi__zget8.exit.i.i29.i.i.1

bb.n:                                             ; preds = %_m3dstbi__zget8.exit.i.i29.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 2 uses
  store ptr %i.cu, ptr %6, align 8
  %i.cv = load i8, ptr %i.cq, align 1
  %i.cw = zext i8 %i.cv to i32
  br label %_m3dstbi__zget8.exit.i.i29.i.i.1

_m3dstbi__zget8.exit.i.i29.i.i.1:                 ; preds = %bb.n, %_m3dstbi__zget8.exit.i.i29.i.i
  %i.cx = phi ptr [ %i.cu, %bb.n ], [ %i.cq, %_m3dstbi__zget8.exit.i.i29.i.i ]
  %.0.i.i.i30.i.i.1 = phi i32 [ %i.cw, %bb.n ], [ 0, %_m3dstbi__zget8.exit.i.i29.i.i ]
  %i.cy = shl i32 %.0.i.i.i30.i.i.1, %i.ct
  %i.cz = or i32 %i.cy, %i.cs                     ; 3 uses
  store i32 %i.cz, ptr %i.ab, align 4
  %i.da = add nuw nsw i32 %i.cl, 16               ; 3 uses
  store i32 %i.da, ptr %i.aa, align 8
  %i.db = icmp slt i32 %i.cl, 9
  br i1 %i.db, label %bb.l, label %_m3dstbi__zreceive.exit31.i.i

_m3dstbi__zreceive.exit31.i.i:                    ; preds = %_m3dstbi__zget8.exit.i.i29.i.i.1, %_m3dstbi__zreceive.exit.i.i, %_m3dstbi__zreceive.exit.thread.i.i
  %.in.i.i = phi i32 [ %.promoted6.i.i.i.i, %_m3dstbi__zreceive.exit.i.i ], [ %.lcssa312, %_m3dstbi__zreceive.exit.thread.i.i ], [ %.promoted6.i.i.i.i, %_m3dstbi__zget8.exit.i.i29.i.i.1 ]
  %i.dc = phi i32 [ %i.ca, %_m3dstbi__zreceive.exit.i.i ], [ %i.by, %_m3dstbi__zreceive.exit.thread.i.i ], [ %i.da, %_m3dstbi__zget8.exit.i.i29.i.i.1 ] ; 4 uses
  %i.dd = phi i32 [ %i.bz, %_m3dstbi__zreceive.exit.i.i ], [ %i.bx, %_m3dstbi__zreceive.exit.thread.i.i ], [ %i.cz, %_m3dstbi__zget8.exit.i.i29.i.i.1 ] ; 2 uses
  %i.de = and i32 %.in.i.i, 1
  %i.df = and i32 %i.dd, 3
  %i.dg = lshr i32 %i.dd, 2                       ; 6 uses
  store i32 %i.dg, ptr %i.ab, align 4
  %i.dh = add nsw i32 %i.dc, -2                   ; 7 uses
  store i32 %i.dh, ptr %i.aa, align 8
  switch i32 %i.df, label %default.unreachable [
    i32 0, label %bb.o
    i32 3, label %.loopexit
    i32 1, label %bb.ab
    i32 2, label %bb.ad
  ]

bb.o:                                             ; preds = %_m3dstbi__zreceive.exit31.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #54
  %i.di = and i32 %i.dh, 7                        ; 2 uses
  %.not.i32.i.i = icmp eq i32 %i.di, 0
  br i1 %.not.i32.i.i, label %bb.p, label %_m3dstbi__zreceive.exit.i.i.i

_m3dstbi__zreceive.exit.i.i.i:                    ; preds = %bb.o
  %i.dj = lshr i32 %i.dg, %i.di                   ; 2 uses
  store i32 %i.dj, ptr %i.ab, align 4
  %i.dk = and i32 %i.dh, -8                       ; 2 uses
  store i32 %i.dk, ptr %i.aa, align 8
  br label %bb.p

bb.p:                                             ; preds = %_m3dstbi__zreceive.exit.i.i.i, %bb.o
  %.promoted.i.i.i = phi i32 [ %i.dj, %_m3dstbi__zreceive.exit.i.i.i ], [ %i.dg, %bb.o ] ; 3 uses
  %.pr.i.i.i = phi i32 [ %i.dk, %_m3dstbi__zreceive.exit.i.i.i ], [ %i.dh, %bb.o ] ; 4 uses
  %.not263.i.i = icmp eq i32 %.pr.i.i.i, 0
  br i1 %.not263.i.i, label %.lr.ph42.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p
  %i.dl = add nsw i32 %.pr.i.i.i, -1              ; 2 uses
  %i.dm = lshr i32 %i.dl, 3
  %i.dn = add nuw nsw i32 %i.dm, 1
  %wide.trip.count.i.i = zext nneg i32 %i.dn to i64 ; 3 uses
  %xtraiter429 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.do = icmp ult i32 %.pr.i.i.i, 25
  br i1 %i.do, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 1073741820
  br label %bb.s

.preheader.i.i.i.unr-lcssa:                       ; preds = %bb.s
  %lcmp.mod431.not = icmp eq i64 %xtraiter429, 0
  br i1 %lcmp.mod431.not, label %.preheader.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.i.i.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.3, %.preheader.i.i.i.unr-lcssa ]
  %.epil.init = phi i32 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ 0, %.preheader.i.i.i.unr-lcssa ]
  %lcmp.mod434 = icmp ne i64 %xtraiter429, 0
  tail call void @llvm.assume(i1 %lcmp.mod434)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %bb.q ] ; 3 uses
  %i.dp = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.ds, %bb.q ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %i.dq = trunc i32 %i.dp to i8
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i.epil
  store i8 %i.dq, ptr %i.dr, align 1
  %i.ds = lshr i32 %i.dp, 8                       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter429
  br i1 %epil.iter.cmp.not, label %.preheader.i.i.i.epilog-lcssa, label %bb.q, !llvm.loop !55

.preheader.i.i.i.epilog-lcssa:                    ; preds = %bb.q
  %i.dt = icmp samesign ult i64 %indvars.iv.i.i.i.epil, 3
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.unr-lcssa, %.preheader.i.i.i.epilog-lcssa
  %indvars.iv.i.i.i.lcssa = phi i1 [ false, %.preheader.i.i.i.unr-lcssa ], [ %i.dt, %.preheader.i.i.i.epilog-lcssa ]
  %.lcssa345 = phi i32 [ 0, %.preheader.i.i.i.unr-lcssa ], [ %i.ds, %.preheader.i.i.i.epilog-lcssa ] ; 3 uses
  %i.du = add i32 %.pr.i.i.i, -8
  %i.dv = and i32 %i.dl, -8
  %i.dw = sub i32 %i.du, %i.dv                    ; 3 uses
  store i32 %.lcssa345, ptr %i.ab, align 4
  store i32 %i.dw, ptr %i.aa, align 8
  br i1 %indvars.iv.i.i.i.lcssa, label %.lr.ph42.i.i.i, label %._crit_edge.i.i.i

.lr.ph42.i.i.i:                                   ; preds = %.preheader.i.i.i, %bb.p
  %.pr.i.i116 = phi i32 [ %i.dw, %.preheader.i.i.i ], [ 0, %bb.p ] ; 2 uses
  %.pre.i.i.i111 = phi i32 [ %.lcssa345, %.preheader.i.i.i ], [ %.promoted.i.i.i, %bb.p ] ; 2 uses
  %.0.lcssa61.i.i.i = phi i64 [ %wide.trip.count.i.i, %.preheader.i.i.i ], [ 0, %bb.p ] ; 5 uses
  %i.dx = load ptr, ptr %i.i, align 8             ; 3 uses
  %.promoted43.i.i.i = load ptr, ptr %6, align 8  ; 5 uses
  %xtraiter437 = and i64 %.0.lcssa61.i.i.i, 1
  %lcmp.mod438.not = icmp eq i64 %xtraiter437, 0
  br i1 %lcmp.mod438.not, label %.prol.loopexit436, label %.prol.preheader435

.prol.preheader435:                               ; preds = %.lr.ph42.i.i.i
  %.not.i.i33.i.i.prol = icmp ult ptr %.promoted43.i.i.i, %i.dx
  br i1 %.not.i.i33.i.i.prol, label %bb.r, label %_m3dstbi__zget8.exit.i34.i.i.prol

bb.r:                                             ; preds = %.prol.preheader435
  %i.dy = getelementptr inbounds nuw i8, ptr %.promoted43.i.i.i, i64 1 ; 2 uses
  store ptr %i.dy, ptr %6, align 8
  %i.dz = load i8, ptr %.promoted43.i.i.i, align 1
  br label %_m3dstbi__zget8.exit.i34.i.i.prol

_m3dstbi__zget8.exit.i34.i.i.prol:                ; preds = %bb.r, %.prol.preheader435
  %i.ea = phi ptr [ %i.dy, %bb.r ], [ %.promoted43.i.i.i, %.prol.preheader435 ]
  %.0.i.i35.i.i.prol = phi i8 [ %i.dz, %bb.r ], [ 0, %.prol.preheader435 ]
  %indvars.iv.next50.i.i.i.prol = add nuw nsw i64 %.0.lcssa61.i.i.i, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa61.i.i.i
  store i8 %.0.i.i35.i.i.prol, ptr %i.eb, align 1
  br label %.prol.loopexit436

.prol.loopexit436:                                ; preds = %_m3dstbi__zget8.exit.i34.i.i.prol, %.lr.ph42.i.i.i
  %indvars.iv49.i.i.i.unr = phi i64 [ %.0.lcssa61.i.i.i, %.lr.ph42.i.i.i ], [ %indvars.iv.next50.i.i.i.prol, %_m3dstbi__zget8.exit.i34.i.i.prol ]
  %.unr440 = phi ptr [ %.promoted43.i.i.i, %.lr.ph42.i.i.i ], [ %i.ea, %_m3dstbi__zget8.exit.i34.i.i.prol ]
  %i.ec = icmp eq i64 %.0.lcssa61.i.i.i, 3
  br i1 %i.ec, label %._crit_edge.i.i.i, label %.lr.ph42.i.i.i.new

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.3, %bb.s ] ; 5 uses
  %i.ed = phi i32 [ %.promoted.i.i.i, %.lr.ph.i.i.i.new ], [ 0, %bb.s ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.3, %bb.s ]
  %i.ee = trunc i32 %i.ed to i8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i
  store i8 %i.ee, ptr %i.ef, align 2
  %i.eg = lshr i32 %i.ed, 8
  %i.eh = trunc i32 %i.eg to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  store i8 %i.eh, ptr %i.ej, align 1
  %i.ek = lshr i32 %i.ed, 16
  %i.el = trunc i32 %i.ek to i8
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  store i8 %i.el, ptr %i.en, align 2
  %i.eo = lshr i32 %i.ed, 24
  %i.ep = trunc nuw i32 %i.eo to i8
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 3
  store i8 %i.ep, ptr %i.er, align 1
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.i.i.unr-lcssa, label %bb.s

.lr.ph42.i.i.i.new:                               ; preds = %.prol.loopexit436, %_m3dstbi__zget8.exit.i34.i.i.1
  %indvars.iv49.i.i.i = phi i64 [ %indvars.iv.next50.i.i.i.1, %_m3dstbi__zget8.exit.i34.i.i.1 ], [ %indvars.iv49.i.i.i.unr, %.prol.loopexit436 ] ; 3 uses
  %i.es = phi ptr [ %i.ez, %_m3dstbi__zget8.exit.i34.i.i.1 ], [ %.unr440, %.prol.loopexit436 ] ; 4 uses
  %.not.i.i33.i.i = icmp ult ptr %i.es, %i.dx
  br i1 %.not.i.i33.i.i, label %bb.t, label %_m3dstbi__zget8.exit.i34.i.i

bb.t:                                             ; preds = %.lr.ph42.i.i.i.new
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1 ; 2 uses
  store ptr %i.et, ptr %6, align 8
  %i.eu = load i8, ptr %i.es, align 1
  br label %_m3dstbi__zget8.exit.i34.i.i

_m3dstbi__zget8.exit.i34.i.i:                     ; preds = %bb.t, %.lr.ph42.i.i.i.new
  %i.ev = phi ptr [ %i.et, %bb.t ], [ %i.es, %.lr.ph42.i.i.i.new ] ; 4 uses
  %.0.i.i35.i.i = phi i8 [ %i.eu, %bb.t ], [ 0, %.lr.ph42.i.i.i.new ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv49.i.i.i
  store i8 %.0.i.i35.i.i, ptr %i.ew, align 1
  %.not.i.i33.i.i.1 = icmp ult ptr %i.ev, %i.dx
  br i1 %.not.i.i33.i.i.1, label %bb.u, label %_m3dstbi__zget8.exit.i34.i.i.1

bb.u:                                             ; preds = %_m3dstbi__zget8.exit.i34.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 1 ; 2 uses
  store ptr %i.ex, ptr %6, align 8
  %i.ey = load i8, ptr %i.ev, align 1
  br label %_m3dstbi__zget8.exit.i34.i.i.1

_m3dstbi__zget8.exit.i34.i.i.1:                   ; preds = %bb.u, %_m3dstbi__zget8.exit.i34.i.i
  %i.ez = phi ptr [ %i.ex, %bb.u ], [ %i.ev, %_m3dstbi__zget8.exit.i34.i.i ]
  %.0.i.i35.i.i.1 = phi i8 [ %i.ey, %bb.u ], [ 0, %_m3dstbi__zget8.exit.i34.i.i ]
  %indvars.iv.next50.i.i.i.1 = add nuw nsw i64 %indvars.iv49.i.i.i, 2 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv49.i.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  store i8 %.0.i.i35.i.i.1, ptr %i.fb, align 1
  %exitcond.not.i.i.i.1 = icmp eq i64 %indvars.iv.next50.i.i.i.1, 4
  br i1 %exitcond.not.i.i.i.1, label %._crit_edge.i.i.i, label %.lr.ph42.i.i.i.new

._crit_edge.i.i.i:                                ; preds = %.prol.loopexit436, %_m3dstbi__zget8.exit.i34.i.i.1, %.preheader.i.i.i
  %.pr.i.i115 = phi i32 [ %i.dw, %.preheader.i.i.i ], [ %.pr.i.i116, %_m3dstbi__zget8.exit.i34.i.i.1 ], [ %.pr.i.i116, %.prol.loopexit436 ]
  %.pre.i.i.i110 = phi i32 [ %.lcssa345, %.preheader.i.i.i ], [ %.pre.i.i.i111, %_m3dstbi__zget8.exit.i34.i.i.1 ], [ %.pre.i.i.i111, %.prol.loopexit436 ]
  %i.fc = load i16, ptr %i.c, align 2             ; 3 uses
  %i.fd = zext i16 %i.fc to i32
  %i.fe = load i16, ptr %i.aq, align 2
  %i.ff = xor i16 %i.fe, %i.fc
  %.not31.i.i.i = icmp eq i16 %i.ff, -1
  br i1 %.not31.i.i.i, label %bb.v, label %_m3dstbi__parse_uncompressed_block.exit.thread.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i
  %i.fg = load ptr, ptr %6, align 8               ; 2 uses
  %i.fh = zext i16 %i.fc to i64                   ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fh ; 2 uses
  %i.fj = load ptr, ptr %i.i, align 8
  %i.fk = icmp ugt ptr %i.fi, %i.fj
  br i1 %i.fk, label %_m3dstbi__parse_uncompressed_block.exit.thread.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.fh
  %i.fm = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.fn = icmp ugt ptr %i.fl, %i.fm
  br i1 %i.fn, label %bb.x, label %_m3dstbi__parse_uncompressed_block.exit.i.i

bb.x:                                             ; preds = %bb.w
  %i.fo = load i32, ptr %i.n, align 8
  %.not.i33.i.i.i = icmp eq i32 %i.fo, 0
  br i1 %.not.i33.i.i.i, label %_m3dstbi__parse_uncompressed_block.exit.thread.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fp = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.fq = ptrtoint ptr %i.ar to i64
  %i.fr = ptrtoint ptr %i.fp to i64               ; 2 uses
  %i.fs = sub i64 %i.fq, %i.fr                    ; 2 uses
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = ptrtoint ptr %i.fm to i64
  %i.fv = sub i64 %i.fu, %i.fr
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = add nsw i32 %i.ft, %i.fd
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.0.i34.i.i.i = phi i32 [ %i.fw, %bb.y ], [ %i.fz, %bb.z ] ; 3 uses
  %i.fy = icmp sgt i32 %i.fx, %.0.i34.i.i.i
  %i.fz = shl nsw i32 %.0.i34.i.i.i, 1
  br i1 %i.fy, label %bb.z, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ga = sext i32 %.0.i34.i.i.i to i64           ; 2 uses
  %i.gb = tail call ptr @realloc(ptr noundef %i.fp, i64 noundef %i.ga) #52 ; 4 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %_m3dstbi__parse_uncompressed_block.exit.thread.i.i, label %_m3dstbi__zexpand.exit.i.i.i

_m3dstbi__zexpand.exit.i.i.i:                     ; preds = %bb.aa
  store ptr %i.gb, ptr %i.j, align 8
  %sext.i.i.i.i = shl i64 %i.fs, 32
  %i.gd = ashr exact i64 %sext.i.i.i.i, 32
  %i.ge = getelementptr inbounds i8, ptr %i.gb, i64 %i.gd
  %i.gf = getelementptr inbounds i8, ptr %i.gb, i64 %i.ga
  store ptr %i.gf, ptr %i.m, align 8
  br label %_m3dstbi__parse_uncompressed_block.exit.i.i

_m3dstbi__parse_uncompressed_block.exit.thread.i.i: ; preds = %bb.aa, %bb.x, %bb.v, %._crit_edge.i.i.i
  %.str.319.sink.i.i = phi ptr [ @.str.319, %bb.v ], [ @.str.319, %._crit_edge.i.i.i ], [ @.str.319, %bb.x ], [ @.str.320, %bb.aa ]
  store ptr %.str.319.sink.i.i, ptr @_m3dstbi__g_failure_reason, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #54
  br label %.loopexit

_m3dstbi__parse_uncompressed_block.exit.i.i:      ; preds = %_m3dstbi__zexpand.exit.i.i.i, %bb.w
  %i.gg = phi ptr [ %i.ge, %_m3dstbi__zexpand.exit.i.i.i ], [ %i.ar, %bb.w ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gg, ptr align 1 %i.fg, i64 %i.fh, i1 false)
  store ptr %i.fi, ptr %6, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.fh ; 2 uses
  store ptr %i.gh, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #54
  br label %bb.dx

bb.ab:                                            ; preds = %_m3dstbi__zreceive.exit31.i.i
  %i.gi = call fastcc i32 @_m3dstbi__zbuild_huffman(ptr noundef %i.ag, ptr noundef nonnull @_m3dstbi__zdefault_length, i32 noundef 288)
  %.not18.i.i = icmp eq i32 %i.gi, 0
  br i1 %.not18.i.i, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gj = call fastcc i32 @_m3dstbi__zbuild_huffman(ptr noundef %i.ah, ptr noundef nonnull @_m3dstbi__zdefault_distance, i32 noundef 32)
  %.not19.i.i = icmp eq i32 %i.gj, 0
  br i1 %.not19.i.i, label %.loopexit, label %bb.cc

default.unreachable:                              ; preds = %_m3dstbi__zreceive.exit31.i.i
  unreachable

bb.ad:                                            ; preds = %_m3dstbi__zreceive.exit31.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  %i.gk = icmp samesign ult i32 %i.dc, 7
  br i1 %i.gk, label %bb.ae, label %_m3dstbi__zreceive.exit.i40.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.gl = load ptr, ptr %i.i, align 8             ; 3 uses
  %.promoted.i.i.i50.i.i = load ptr, ptr %6, align 8 ; 5 uses
  %lcmp.mod361.not.not = icmp ugt i32 %i.dc, 2
  br i1 %lcmp.mod361.not.not, label %.prol.preheader357, label %.new359

.prol.preheader357:                               ; preds = %bb.ae
  %.not.i.i.i.i52.i.i.prol = icmp ult ptr %.promoted.i.i.i50.i.i, %i.gl
  br i1 %.not.i.i.i.i52.i.i.prol, label %bb.af, label %_m3dstbi__zget8.exit.i.i.i53.i.i.prol

bb.af:                                            ; preds = %.prol.preheader357
  %i.gm = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i50.i.i, i64 1 ; 2 uses
  store ptr %i.gm, ptr %6, align 8
  %i.gn = load i8, ptr %.promoted.i.i.i50.i.i, align 1
  %i.go = zext i8 %i.gn to i32
  br label %_m3dstbi__zget8.exit.i.i.i53.i.i.prol

_m3dstbi__zget8.exit.i.i.i53.i.i.prol:            ; preds = %bb.af, %.prol.preheader357
  %i.gp = phi ptr [ %i.gm, %bb.af ], [ %.promoted.i.i.i50.i.i, %.prol.preheader357 ]
  %.0.i.i.i.i54.i.i.prol = phi i32 [ %i.go, %bb.af ], [ 0, %.prol.preheader357 ]
  %i.gq = shl i32 %.0.i.i.i.i54.i.i.prol, %i.dh
  %i.gr = or i32 %i.gq, %i.dg                     ; 2 uses
  store i32 %i.gr, ptr %i.ab, align 4
  %i.gs = add nuw nsw i32 %i.dc, 6                ; 2 uses
  store i32 %i.gs, ptr %i.aa, align 8
  br label %.new359

.new359:                                          ; preds = %bb.ae, %_m3dstbi__zget8.exit.i.i.i53.i.i.prol
  %.unr362 = phi i32 [ %i.dg, %bb.ae ], [ %i.gr, %_m3dstbi__zget8.exit.i.i.i53.i.i.prol ]
  %.unr363 = phi i32 [ %i.dh, %bb.ae ], [ %i.gs, %_m3dstbi__zget8.exit.i.i.i53.i.i.prol ]
  %.unr364 = phi ptr [ %.promoted.i.i.i50.i.i, %bb.ae ], [ %i.gp, %_m3dstbi__zget8.exit.i.i.i53.i.i.prol ]
  br label %bb.ag

bb.ag:                                            ; preds = %_m3dstbi__zget8.exit.i.i.i53.i.i.1, %.new359
  %i.gt = phi i32 [ %.unr362, %.new359 ], [ %i.hi, %_m3dstbi__zget8.exit.i.i.i53.i.i.1 ]
  %i.gu = phi i32 [ %.unr363, %.new359 ], [ %i.hj, %_m3dstbi__zget8.exit.i.i.i53.i.i.1 ] ; 4 uses
  %i.gv = phi ptr [ %.unr364, %.new359 ], [ %i.hg, %_m3dstbi__zget8.exit.i.i.i53.i.i.1 ] ; 4 uses
  %.not.i.i.i.i52.i.i = icmp ult ptr %i.gv, %i.gl
  br i1 %.not.i.i.i.i52.i.i, label %bb.ah, label %_m3dstbi__zget8.exit.i.i.i53.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 1 ; 2 uses
  store ptr %i.gw, ptr %6, align 8
  %i.gx = load i8, ptr %i.gv, align 1
  %i.gy = zext i8 %i.gx to i32
  br label %_m3dstbi__zget8.exit.i.i.i53.i.i

_m3dstbi__zget8.exit.i.i.i53.i.i:                 ; preds = %bb.ah, %bb.ag
  %i.gz = phi ptr [ %i.gw, %bb.ah ], [ %i.gv, %bb.ag ] ; 4 uses
  %.0.i.i.i.i54.i.i = phi i32 [ %i.gy, %bb.ah ], [ 0, %bb.ag ]
  %i.ha = shl i32 %.0.i.i.i.i54.i.i, %i.gu
  %i.hb = or i32 %i.ha, %i.gt                     ; 2 uses
  store i32 %i.hb, ptr %i.ab, align 4
  %i.hc = add nsw i32 %i.gu, 8                    ; 2 uses
  store i32 %i.hc, ptr %i.aa, align 8
  %.not.i.i.i.i52.i.i.1 = icmp ult ptr %i.gz, %i.gl
  br i1 %.not.i.i.i.i52.i.i.1, label %bb.ai, label %_m3dstbi__zget8.exit.i.i.i53.i.i.1

bb.ai:                                            ; preds = %_m3dstbi__zget8.exit.i.i.i53.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 1 ; 2 uses
  store ptr %i.hd, ptr %6, align 8
  %i.he = load i8, ptr %i.gz, align 1
  %i.hf = zext i8 %i.he to i32
  br label %_m3dstbi__zget8.exit.i.i.i53.i.i.1
end_hunk_2
begin_hunk_3_@_m3dstbi__png_load:bb.a

_m3dstbi__get8.exit292.thread.i.i:                ; preds = %_m3dstbi__get8.exit292.i.i, %_m3dstbi__get8.exit290.thread.i.i
  %i.gt = phi ptr [ %i.gp, %_m3dstbi__get8.exit290.thread.i.i ], [ %i.gr, %_m3dstbi__get8.exit292.i.i ] ; 4 uses
  %i.gu = icmp ult ptr %i.gt, %i.at
  br i1 %i.gu, label %_m3dstbi__get8.exit294.i.i, label %_m3dstbi__get8.exit294.thread.i.i

_m3dstbi__get8.exit294.i.i:                       ; preds = %_m3dstbi__get8.exit292.thread.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 1 ; 2 uses
  store ptr %i.gv, ptr %i.h, align 8
  %i.gw = load i8, ptr %i.gt, align 1             ; 2 uses
  %i.gx = zext nneg i8 %i.gw to i32
  %i.gy = icmp ugt i8 %i.gw, 1
  br i1 %i.gy, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i, label %_m3dstbi__get8.exit294.thread.i.i

_m3dstbi__get8.exit294.thread.i.i:                ; preds = %_m3dstbi__get8.exit294.i.i, %_m3dstbi__get8.exit292.thread.i.i
  %i.gz = phi ptr [ %i.gv, %_m3dstbi__get8.exit294.i.i ], [ %i.gt, %_m3dstbi__get8.exit292.thread.i.i ] ; 4 uses
  %i.ha = phi i32 [ %i.gx, %_m3dstbi__get8.exit294.i.i ], [ 0, %_m3dstbi__get8.exit292.thread.i.i ] ; 2 uses
  %.not267.i.i = icmp eq i32 %i.en, 0
  %.not268.i.i = icmp eq i32 %i.fs, 0
  %or.cond = or i1 %.not267.i.i, %.not268.i.i
  br i1 %or.cond, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i, label %bb.ac

bb.ac:                                            ; preds = %_m3dstbi__get8.exit294.thread.i.i
  %.not269.i.i = icmp eq i8 %.1221.i.i, 0
  br i1 %.not269.i.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hb = and i32 %i.gl, 2
  %i.hc = or disjoint i32 %i.hb, 1
  %.not271.i.i = icmp samesign ugt i8 %.0.i287345347.i.i, 3
  %i.hd = zext i1 %.not271.i.i to i32
  %i.he = add nuw nsw i32 %i.hc, %i.hd            ; 2 uses
  store i32 %i.he, ptr %i.am, align 8
  %i.hf = mul nuw nsw i32 %i.he, %i.en
  %i.hg = udiv i32 1073741824, %i.hf
  %i.hh = icmp samesign ult i32 %i.hg, %i.fs
  br i1 %i.hh, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i, label %_m3dstbi__skip.exit.i.i

bb.ae:                                            ; preds = %bb.ac
  store i32 1, ptr %i.am, align 8
  %i.hi = udiv i32 1073741824, %i.en
  %i.hj = lshr i32 %i.hi, 2
  %i.hk = icmp samesign ult i32 %i.hj, %i.fs
  br i1 %i.hk, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i, label %_m3dstbi__skip.exit.i.i

bb.af:                                            ; preds = %_m3dstbi__get_chunk_header.exit.i.i
  %.not255.i.i = icmp ne i32 %.0201.i.i, 0
  %i.hl = icmp ugt i32 %i.de, 768
  %or.cond714.i = select i1 %.not255.i.i, i1 true, i1 %i.hl
  br i1 %or.cond714.i, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.lhs.trunc.i.i = trunc nuw i32 %.0.i2.i4.i.i.i.i to i16
  %i.hm = udiv i16 %.lhs.trunc.i.i, 3             ; 2 uses
  %.zext.i.i = zext nneg i16 %i.hm to i32         ; 3 uses
  %i.hn = mul nuw nsw i32 %.zext.i.i, 3
  %.not256.i.i = icmp eq i32 %i.hn, %i.de
  br i1 %.not256.i.i, label %.preheader.i.i, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

.preheader.i.i:                                   ; preds = %bb.ag
  %.not586.i.i = icmp samesign ult i32 %.0.i2.i4.i.i.i.i, 3
  br i1 %.not586.i.i, label %_m3dstbi__skip.exit.i.i, label %.lr.ph584.i.i

.lr.ph584.i.i:                                    ; preds = %.preheader.i.i
  %wide.trip.count785.i.i = zext nneg i16 %i.hm to i64
  br label %bb.ah

bb.ah:                                            ; preds = %_m3dstbi__get8.exit300.i.i, %.lr.ph584.i.i
  %i.ho = phi ptr [ %i.db, %.lr.ph584.i.i ], [ %i.ij, %_m3dstbi__get8.exit300.i.i ]
  %i.hp = phi ptr [ %i.dc, %.lr.ph584.i.i ], [ %i.ik, %_m3dstbi__get8.exit300.i.i ]
  %indvars.iv782.i.i = phi i64 [ 0, %.lr.ph584.i.i ], [ %indvars.iv.next783.i.i, %_m3dstbi__get8.exit300.i.i ] ; 2 uses
  %i.hq = phi ptr [ %i.dc, %.lr.ph584.i.i ], [ %i.il, %_m3dstbi__get8.exit300.i.i ] ; 4 uses
  %i.hr = icmp ult ptr %i.hq, %i.ax
  br i1 %i.hr, label %bb.ai, label %_m3dstbi__get8.exit296.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 1 ; 4 uses
  store ptr %i.hs, ptr %i.h, align 8
  %i.ht = load i8, ptr %i.hq, align 1
  br label %_m3dstbi__get8.exit296.i.i

_m3dstbi__get8.exit296.i.i:                       ; preds = %bb.ai, %bb.ah
  %i.hu = phi ptr [ %i.hs, %bb.ai ], [ %i.ho, %bb.ah ]
  %i.hv = phi ptr [ %i.hs, %bb.ai ], [ %i.hp, %bb.ah ]
  %i.hw = phi ptr [ %i.hs, %bb.ai ], [ %i.hq, %bb.ah ] ; 4 uses
  %.0.i295.i.i = phi i8 [ %i.ht, %bb.ai ], [ 0, %bb.ah ]
  %i.hx = shl nuw nsw i64 %indvars.iv782.i.i, 2
  %i.hy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hx ; 4 uses
  store i8 %.0.i295.i.i, ptr %i.hy, align 4
  %i.hz = icmp ult ptr %i.hw, %i.ax
  br i1 %i.hz, label %bb.aj, label %_m3dstbi__get8.exit298.i.i

bb.aj:                                            ; preds = %_m3dstbi__get8.exit296.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 1 ; 4 uses
  store ptr %i.ia, ptr %i.h, align 8
  %i.ib = load i8, ptr %i.hw, align 1
  br label %_m3dstbi__get8.exit298.i.i

_m3dstbi__get8.exit298.i.i:                       ; preds = %bb.aj, %_m3dstbi__get8.exit296.i.i
  %i.ic = phi ptr [ %i.ia, %bb.aj ], [ %i.hu, %_m3dstbi__get8.exit296.i.i ]
  %i.id = phi ptr [ %i.ia, %bb.aj ], [ %i.hv, %_m3dstbi__get8.exit296.i.i ]
  %i.ie = phi ptr [ %i.ia, %bb.aj ], [ %i.hw, %_m3dstbi__get8.exit296.i.i ] ; 4 uses
  %.0.i297.i.i = phi i8 [ %i.ib, %bb.aj ], [ 0, %_m3dstbi__get8.exit296.i.i ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.hy, i64 1
  store i8 %.0.i297.i.i, ptr %i.if, align 1
  %i.ig = icmp ult ptr %i.ie, %i.ax
  br i1 %i.ig, label %bb.ak, label %_m3dstbi__get8.exit300.i.i

bb.ak:                                            ; preds = %_m3dstbi__get8.exit298.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 1 ; 4 uses
  store ptr %i.ih, ptr %i.h, align 8
  %i.ii = load i8, ptr %i.ie, align 1
  br label %_m3dstbi__get8.exit300.i.i

_m3dstbi__get8.exit300.i.i:                       ; preds = %bb.ak, %_m3dstbi__get8.exit298.i.i
  %i.ij = phi ptr [ %i.ih, %bb.ak ], [ %i.ic, %_m3dstbi__get8.exit298.i.i ] ; 2 uses
  %i.ik = phi ptr [ %i.ih, %bb.ak ], [ %i.id, %_m3dstbi__get8.exit298.i.i ] ; 2 uses
  %i.il = phi ptr [ %i.ih, %bb.ak ], [ %i.ie, %_m3dstbi__get8.exit298.i.i ]
  %.0.i299.i.i = phi i8 [ %i.ii, %bb.ak ], [ 0, %_m3dstbi__get8.exit298.i.i ]
  %i.im = getelementptr inbounds nuw i8, ptr %i.hy, i64 2
  store i8 %.0.i299.i.i, ptr %i.im, align 2
  %i.in = getelementptr inbounds nuw i8, ptr %i.hy, i64 3
  store i8 -1, ptr %i.in, align 1
  %indvars.iv.next783.i.i = add nuw nsw i64 %indvars.iv782.i.i, 1 ; 2 uses
  %exitcond786.not.i.i = icmp eq i64 %indvars.iv.next783.i.i, %wide.trip.count785.i.i
  br i1 %exitcond786.not.i.i, label %_m3dstbi__skip.exit.i.i, label %bb.ah

bb.al:                                            ; preds = %_m3dstbi__get_chunk_header.exit.i.i
  %.not250.i.i = icmp eq i32 %.0201.i.i, 0
  %.not251.i.i = icmp eq ptr %i.aw, null
  %or.cond5 = select i1 %.not250.i.i, i1 %.not251.i.i, i1 false
  br i1 %or.cond5, label %bb.am, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

bb.am:                                            ; preds = %bb.al
  %.not252.i.i = icmp eq i8 %.0220.i.i, 0
  br i1 %.not252.i.i, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.io = icmp eq i32 %.0205.i.i, 0
  %i.ip = icmp ult i32 %.0205.i.i, %i.de
  %or.cond715.i = select i1 %i.io, i1 true, i1 %i.ip
  br i1 %or.cond715.i, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i, label %.preheader395.i.i

.preheader395.i.i:                                ; preds = %bb.an
  %.not.i.i = icmp eq i32 %i.de, 0
  br i1 %.not.i.i, label %_m3dstbi__skip.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader395.i.i
  %wide.trip.count.i.i = zext i32 %i.de to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.iq = icmp eq i32 %i.de, 1
  br i1 %i.iq, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 4294967294
  br label %bb.ao

bb.ao:                                            ; preds = %_m3dstbi__get8.exit302.i.i.1, %.lr.ph.i.i.new
  %i.ir = phi ptr [ %i.db, %.lr.ph.i.i.new ], [ %i.jg, %_m3dstbi__get8.exit302.i.i.1 ]
  %i.is = phi ptr [ %i.dc, %.lr.ph.i.i.new ], [ %i.jh, %_m3dstbi__get8.exit302.i.i.1 ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %_m3dstbi__get8.exit302.i.i.1 ] ; 3 uses
  %i.it = phi ptr [ %i.dc, %.lr.ph.i.i.new ], [ %i.ji, %_m3dstbi__get8.exit302.i.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %_m3dstbi__get8.exit302.i.i.1 ]
  %i.iu = icmp ult ptr %i.it, %i.ax
  br i1 %i.iu, label %bb.ap, label %_m3dstbi__get8.exit302.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 1 ; 4 uses
  store ptr %i.iv, ptr %i.h, align 8
  %i.iw = load i8, ptr %i.it, align 1
  br label %_m3dstbi__get8.exit302.i.i

_m3dstbi__get8.exit302.i.i:                       ; preds = %bb.ap, %bb.ao
  %i.ix = phi ptr [ %i.iv, %bb.ap ], [ %i.ir, %bb.ao ]
  %i.iy = phi ptr [ %i.iv, %bb.ap ], [ %i.is, %bb.ao ]
  %i.iz = phi ptr [ %i.iv, %bb.ap ], [ %i.it, %bb.ao ] ; 4 uses
  %.0.i301.i.i = phi i8 [ %i.iw, %bb.ap ], [ 0, %bb.ao ]
  %i.ja = shl nuw nsw i64 %indvars.iv.i.i, 2
  %i.jb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 3
  store i8 %.0.i301.i.i, ptr %i.jc, align 1
  %i.jd = icmp ult ptr %i.iz, %i.ax
  br i1 %i.jd, label %bb.aq, label %_m3dstbi__get8.exit302.i.i.1

bb.aq:                                            ; preds = %_m3dstbi__get8.exit302.i.i
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 1 ; 4 uses
  store ptr %i.je, ptr %i.h, align 8
  %i.jf = load i8, ptr %i.iz, align 1
  br label %_m3dstbi__get8.exit302.i.i.1

_m3dstbi__get8.exit302.i.i.1:                     ; preds = %bb.aq, %_m3dstbi__get8.exit302.i.i
  %i.jg = phi ptr [ %i.je, %bb.aq ], [ %i.ix, %_m3dstbi__get8.exit302.i.i ] ; 3 uses
  %i.jh = phi ptr [ %i.je, %bb.aq ], [ %i.iy, %_m3dstbi__get8.exit302.i.i ] ; 3 uses
  %i.ji = phi ptr [ %i.je, %bb.aq ], [ %i.iz, %_m3dstbi__get8.exit302.i.i ] ; 2 uses
  %.0.i301.i.i.1 = phi i8 [ %i.jf, %bb.aq ], [ 0, %_m3dstbi__get8.exit302.i.i ]
  %indvars.iv.next.i.i = shl i64 %indvars.iv.i.i, 2
  %i.jj = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 7
  store i8 %.0.i301.i.i.1, ptr %i.jk, align 1
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_m3dstbi__skip.exit.i.i.loopexit40.unr-lcssa, label %bb.ao

bb.ar:                                            ; preds = %bb.am
  %i.jl = load i32, ptr %i.am, align 8            ; 6 uses
  %.not253.i.i = trunc i32 %i.jl to i1
  %i.jm = shl i32 %i.jl, 1
  %.not254.i.i = icmp eq i32 %i.jm, %i.de
  %or.cond716.i = select i1 %.not253.i.i, i1 %.not254.i.i, i1 false
  br i1 %or.cond716.i, label %bb.as, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

bb.as:                                            ; preds = %bb.ar
  %i.jn = icmp eq i32 %i.av, 16
  %i.jo = icmp sgt i32 %i.jl, 0                   ; 2 uses
  br i1 %i.jn, label %.preheader391.i.i, label %.preheader393.i.i

.preheader393.i.i:                                ; preds = %bb.as
  br i1 %i.jo, label %.lr.ph579.preheader.i.i, label %_m3dstbi__skip.exit.i.i

.lr.ph579.preheader.i.i:                          ; preds = %.preheader393.i.i
  %i.jp = sext i32 %i.av to i64
  %i.jq = getelementptr inbounds i8, ptr @_m3dstbi__depth_scale_table, i64 %i.jp
  %i.jr = load i8, ptr %i.jq, align 1             ; 3 uses
  %i.js = icmp eq i32 %i.jl, 1
  br i1 %i.js, label %.lr.ph579.i.i.epil, label %.lr.ph579.preheader.i.i.new

.lr.ph579.preheader.i.i.new:                      ; preds = %.lr.ph579.preheader.i.i
  %i.jt = zext nneg i32 %i.jl to i64
  %i.ju = add nsw i64 %i.jt, -3
  br label %.lr.ph579.i.i

.preheader391.i.i:                                ; preds = %bb.as
  br i1 %i.jo, label %.lr.ph581.i.i, label %_m3dstbi__skip.exit.i.i

.lr.ph581.i.i:                                    ; preds = %.preheader391.i.i
  %i.jv = zext nneg i32 %i.jl to i64
  br label %bb.at

bb.at:                                            ; preds = %_m3dstbi__get16be.exit.i.i, %.lr.ph581.i.i
  %i.jw = phi ptr [ %i.db, %.lr.ph581.i.i ], [ %i.km, %_m3dstbi__get16be.exit.i.i ]
  %i.jx = phi ptr [ %i.dc, %.lr.ph581.i.i ], [ %i.kn, %_m3dstbi__get16be.exit.i.i ]
  %indvars.iv779.i.i = phi i64 [ 0, %.lr.ph581.i.i ], [ %indvars.iv.next780.i.i, %_m3dstbi__get16be.exit.i.i ] ; 2 uses
  %i.jy = phi ptr [ %i.dc, %.lr.ph581.i.i ], [ %i.ko, %_m3dstbi__get16be.exit.i.i ] ; 4 uses
  %i.jz = icmp ult ptr %i.jy, %i.ax
  br i1 %i.jz, label %bb.au, label %_m3dstbi__get8.exit.i303.i.i

bb.au:                                            ; preds = %bb.at
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 1 ; 4 uses
  store ptr %i.ka, ptr %i.h, align 8
  %i.kb = load i8, ptr %i.jy, align 1
  %i.kc = zext i8 %i.kb to i16
  %i.kd = shl nuw i16 %i.kc, 8
  br label %_m3dstbi__get8.exit.i303.i.i

_m3dstbi__get8.exit.i303.i.i:                     ; preds = %bb.au, %bb.at
  %i.ke = phi ptr [ %i.ka, %bb.au ], [ %i.jw, %bb.at ]
  %i.kf = phi ptr [ %i.ka, %bb.au ], [ %i.jx, %bb.at ]
  %i.kg = phi ptr [ %i.ka, %bb.au ], [ %i.jy, %bb.at ] ; 4 uses
  %.0.i.i.i.i = phi i16 [ %i.kd, %bb.au ], [ 0, %bb.at ] ; 2 uses
  %i.kh = icmp ult ptr %i.kg, %i.ax
  br i1 %i.kh, label %bb.av, label %_m3dstbi__get16be.exit.i.i

bb.av:                                            ; preds = %_m3dstbi__get8.exit.i303.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 1 ; 4 uses
  store ptr %i.ki, ptr %i.h, align 8
  %i.kj = load i8, ptr %i.kg, align 1
  %i.kk = zext i8 %i.kj to i16
  %i.kl = or disjoint i16 %.0.i.i.i.i, %i.kk
  br label %_m3dstbi__get16be.exit.i.i

_m3dstbi__get16be.exit.i.i:                       ; preds = %bb.av, %_m3dstbi__get8.exit.i303.i.i
  %i.km = phi ptr [ %i.ki, %bb.av ], [ %i.ke, %_m3dstbi__get8.exit.i303.i.i ] ; 2 uses
  %i.kn = phi ptr [ %i.ki, %bb.av ], [ %i.kf, %_m3dstbi__get8.exit.i303.i.i ] ; 2 uses
  %i.ko = phi ptr [ %i.ki, %bb.av ], [ %i.kg, %_m3dstbi__get8.exit.i303.i.i ]
  %.0.i2.i.i.i = phi i16 [ %i.kl, %bb.av ], [ %.0.i.i.i.i, %_m3dstbi__get8.exit.i303.i.i ]
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv779.i.i
  store i16 %.0.i2.i.i.i, ptr %i.kp, align 2
  %indvars.iv.next780.i.i = add nuw nsw i64 %indvars.iv779.i.i, 1 ; 2 uses
  %exitcond434.not.i = icmp eq i64 %indvars.iv.next780.i.i, %i.jv
  br i1 %exitcond434.not.i, label %_m3dstbi__skip.exit.i.i, label %bb.at

.lr.ph579.i.i:                                    ; preds = %_m3dstbi__get16be.exit307.i.i.1, %.lr.ph579.preheader.i.i.new
  %i.kq = phi ptr [ %i.db, %.lr.ph579.preheader.i.i.new ], [ %i.lp, %_m3dstbi__get16be.exit307.i.i.1 ]
  %i.kr = phi ptr [ %i.dc, %.lr.ph579.preheader.i.i.new ], [ %i.lq, %_m3dstbi__get16be.exit307.i.i.1 ]
  %i.ks = phi ptr [ %i.dc, %.lr.ph579.preheader.i.i.new ], [ %i.lr, %_m3dstbi__get16be.exit307.i.i.1 ] ; 3 uses
  %indvars.iv776.i.i = phi i64 [ 0, %.lr.ph579.preheader.i.i.new ], [ %indvars.iv.next777.i.i.1, %_m3dstbi__get16be.exit307.i.i.1 ] ; 3 uses
  %niter89 = phi i64 [ 0, %.lr.ph579.preheader.i.i.new ], [ %niter89.next.1, %_m3dstbi__get16be.exit307.i.i.1 ] ; 2 uses
  %i.kt = icmp ult ptr %i.ks, %i.ax
  br i1 %i.kt, label %bb.aw, label %_m3dstbi__get8.exit.i304.i.i

bb.aw:                                            ; preds = %.lr.ph579.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 1 ; 4 uses
  store ptr %i.ku, ptr %i.h, align 8
  br label %_m3dstbi__get8.exit.i304.i.i

_m3dstbi__get8.exit.i304.i.i:                     ; preds = %bb.aw, %.lr.ph579.i.i
  %i.kv = phi ptr [ %i.ku, %bb.aw ], [ %i.kq, %.lr.ph579.i.i ]
  %i.kw = phi ptr [ %i.ku, %bb.aw ], [ %i.kr, %.lr.ph579.i.i ]
  %i.kx = phi ptr [ %i.ku, %bb.aw ], [ %i.ks, %.lr.ph579.i.i ] ; 4 uses
  %i.ky = icmp ult ptr %i.kx, %i.ax
  br i1 %i.ky, label %bb.ax, label %_m3dstbi__get16be.exit307.i.i

bb.ax:                                            ; preds = %_m3dstbi__get8.exit.i304.i.i
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 1 ; 4 uses
  store ptr %i.kz, ptr %i.h, align 8
  %i.la = load i8, ptr %i.kx, align 1
  %i.lb = mul i8 %i.jr, %i.la
  br label %_m3dstbi__get16be.exit307.i.i

_m3dstbi__get16be.exit307.i.i:                    ; preds = %bb.ax, %_m3dstbi__get8.exit.i304.i.i
  %i.lc = phi ptr [ %i.kz, %bb.ax ], [ %i.kv, %_m3dstbi__get8.exit.i304.i.i ]
  %i.ld = phi ptr [ %i.kz, %bb.ax ], [ %i.kw, %_m3dstbi__get8.exit.i304.i.i ]
  %i.le = phi ptr [ %i.kz, %bb.ax ], [ %i.kx, %_m3dstbi__get8.exit.i304.i.i ] ; 3 uses
  %.0.i2.i306.i.i = phi i8 [ %i.lb, %bb.ax ], [ 0, %_m3dstbi__get8.exit.i304.i.i ]
  %i.lf = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv776.i.i
  store i8 %.0.i2.i306.i.i, ptr %i.lf, align 1
  %i.lg = icmp ult ptr %i.le, %i.ax
  br i1 %i.lg, label %bb.ay, label %_m3dstbi__get8.exit.i304.i.i.1

bb.ay:                                            ; preds = %_m3dstbi__get16be.exit307.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 1 ; 4 uses
  store ptr %i.lh, ptr %i.h, align 8
  br label %_m3dstbi__get8.exit.i304.i.i.1

_m3dstbi__get8.exit.i304.i.i.1:                   ; preds = %bb.ay, %_m3dstbi__get16be.exit307.i.i
  %i.li = phi ptr [ %i.lh, %bb.ay ], [ %i.lc, %_m3dstbi__get16be.exit307.i.i ]
  %i.lj = phi ptr [ %i.lh, %bb.ay ], [ %i.ld, %_m3dstbi__get16be.exit307.i.i ]
  %i.lk = phi ptr [ %i.lh, %bb.ay ], [ %i.le, %_m3dstbi__get16be.exit307.i.i ] ; 4 uses
  %i.ll = icmp ult ptr %i.lk, %i.ax
  br i1 %i.ll, label %bb.az, label %_m3dstbi__get16be.exit307.i.i.1

bb.az:                                            ; preds = %_m3dstbi__get8.exit.i304.i.i.1
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 1 ; 4 uses
  store ptr %i.lm, ptr %i.h, align 8
  %i.ln = load i8, ptr %i.lk, align 1
  %i.lo = mul i8 %i.jr, %i.ln
  br label %_m3dstbi__get16be.exit307.i.i.1

_m3dstbi__get16be.exit307.i.i.1:                  ; preds = %bb.az, %_m3dstbi__get8.exit.i304.i.i.1
  %i.lp = phi ptr [ %i.lm, %bb.az ], [ %i.li, %_m3dstbi__get8.exit.i304.i.i.1 ] ; 2 uses
  %i.lq = phi ptr [ %i.lm, %bb.az ], [ %i.lj, %_m3dstbi__get8.exit.i304.i.i.1 ] ; 2 uses
  %i.lr = phi ptr [ %i.lm, %bb.az ], [ %i.lk, %_m3dstbi__get8.exit.i304.i.i.1 ] ; 2 uses
  %.0.i2.i306.i.i.1 = phi i8 [ %i.lo, %bb.az ], [ 0, %_m3dstbi__get8.exit.i304.i.i.1 ]
  %i.ls = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv776.i.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 1
  store i8 %.0.i2.i306.i.i.1, ptr %i.lt, align 1
  %indvars.iv.next777.i.i.1 = add nuw nsw i64 %indvars.iv776.i.i, 2 ; 2 uses
  %niter89.next.1 = add nuw i64 %niter89, 2
  %niter89.ncmp.1 = icmp eq i64 %niter89, %i.ju
  br i1 %niter89.ncmp.1, label %.lr.ph579.i.i.epil, label %.lr.ph579.i.i

bb.ba:                                            ; preds = %_m3dstbi__get_chunk_header.exit.i.i
  %.not247.i.i = icmp eq i32 %.0201.i.i, 0
  br i1 %.not247.i.i, label %bb.bb, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

bb.bb:                                            ; preds = %bb.ba
  %i.lu = icmp eq i8 %.0220.i.i, 0
  %i.lv = icmp ne i32 %.0205.i.i, 0
  %or.cond.i.i = select i1 %i.lu, i1 true, i1 %i.lv
  br i1 %or.cond.i.i, label %bb.bc, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

bb.bc:                                            ; preds = %bb.bb
  %i.lw = add i32 %i.de, %.0214.i.i               ; 4 uses
  %i.lx = icmp slt i32 %i.lw, %.0214.i.i
  br i1 %i.lx, label %_m3dstbi__parse_png_file.exit.thread.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ly = icmp ugt i32 %i.lw, %.0210.i.i
  br i1 %i.ly, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.lz = icmp eq i32 %.0210.i.i, 0
  %i.ma = tail call i32 @llvm.umax.i32(i32 %i.de, i32 4096)
  %.1211.i.i = select i1 %i.lz, i32 %i.ma, i32 %.0210.i.i
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %bb.be
  %.2212.i.i = phi i32 [ %.1211.i.i, %bb.be ], [ %i.mc, %bb.bf ] ; 4 uses
  %i.mb = icmp ugt i32 %i.lw, %.2212.i.i
  %i.mc = shl nuw i32 %.2212.i.i, 1
  br i1 %i.mb, label %bb.bf, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.md = zext i32 %.2212.i.i to i64
  %i.me = tail call ptr @realloc(ptr noundef %i.aw, i64 noundef %i.md) #52 ; 3 uses
  %.not248.i.i = icmp eq ptr %i.me, null
  br i1 %.not248.i.i, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store ptr %i.me, ptr %i.f, align 8
  %.pre.i.i = load ptr, ptr %i.h, align 8
  %.pre787.i.i = load ptr, ptr %i.i, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bd
  %i.mf = phi ptr [ %i.me, %bb.bh ], [ %i.aw, %bb.bd ] ; 2 uses
  %i.mg = phi ptr [ %.pre787.i.i, %bb.bh ], [ %i.ax, %bb.bd ]
  %i.mh = phi ptr [ %.pre.i.i, %bb.bh ], [ %i.dc, %bb.bd ] ; 2 uses
  %.3213.i.i = phi i32 [ %.2212.i.i, %bb.bh ], [ %.0210.i.i, %bb.bd ]
  %i.mi = sext i32 %i.de to i64                   ; 3 uses
  %i.mj = getelementptr inbounds i8, ptr %i.mh, i64 %i.mi
  %.not.i.i.i = icmp ugt ptr %i.mj, %i.mg
  br i1 %.not.i.i.i, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i, label %_m3dstbi__getn.exit.i.i

_m3dstbi__getn.exit.i.i:                          ; preds = %bb.bi
  %i.mk = zext nneg i32 %.0214.i.i to i64
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.mk
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ml, ptr align 1 %i.mh, i64 %i.mi, i1 false)
  %i.mm = load ptr, ptr %i.h, align 8
  %i.mn = getelementptr inbounds i8, ptr %i.mm, i64 %i.mi ; 3 uses
  store ptr %i.mn, ptr %i.h, align 8
  %.pre788.i.i = load ptr, ptr %i.i, align 8      ; 2 uses
  br label %_m3dstbi__skip.exit.i.i

bb.bj:                                            ; preds = %_m3dstbi__get_chunk_header.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #54
  %.not240.i.i = icmp ne i32 %.0201.i.i, 0
  %i.mo = icmp eq ptr %i.aw, null
  %or.cond33 = select i1 %.not240.i.i, i1 true, i1 %i.mo
  br i1 %or.cond33, label %_m3dstbi__parse_png_file.exit.thread51.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mp = load i32, ptr %0, align 8
  %i.mq = mul i32 %i.av, %i.mp
  %i.mr = add i32 %i.mq, 7
  %i.ms = lshr i32 %i.mr, 3
  %i.mt = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.mu = load i32, ptr %i.am, align 8
  %i.mv = mul i32 %i.mu, %i.mt
  %i.mw = mul i32 %i.mv, %i.ms
  %i.mx = add i32 %i.mw, %i.mt                    ; 2 uses
  store i32 %i.mx, ptr %i.d, align 4
  %i.my = call ptr @_m3dstbi_zlib_decode_malloc_guesssize_headerflag(ptr noundef nonnull %i.aw, i32 noundef %.0214.i.i, i32 noundef %i.mx, ptr noundef nonnull %i.d, i32 noundef 1) ; 4 uses
  store ptr %i.my, ptr %i.e, align 8
  %i.mz = icmp eq ptr %i.my, null
  br i1 %i.mz, label %_m3dstbi__parse_png_file.exit.thread51.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @free(ptr noundef nonnull %i.aw) #54
  store ptr null, ptr %i.f, align 8
  %i.na = load i32, ptr %i.am, align 8            ; 2 uses
  %i.nb = add nsw i32 %i.na, 1                    ; 2 uses
  %i.nc = icmp eq i32 %i.nb, 0
  %i.nd = icmp eq i8 %.0220.i.i, 0                ; 3 uses
  %or.cond7.not243.i.i = select i1 %i.nc, i1 %i.nd, i1 false
  %i.ne = icmp ne i8 %.0217.i.i, 0
  %or.cond10.i.i = select i1 %or.cond7.not243.i.i, i1 true, i1 %i.ne
  %spec.select1067.i.i = select i1 %or.cond10.i.i, i32 %i.nb, i32 %i.na ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 %spec.select1067.i.i, ptr %i.nf, align 4
  %i.ng = load i32, ptr %i.d, align 4             ; 2 uses
  %i.nh = icmp eq i32 %i.av, 16
  %i.ni = zext i1 %i.nh to i32
  %i.nj = shl i32 %spec.select1067.i.i, %i.ni     ; 6 uses
  %.not.i309.i.i = icmp eq i32 %.0195.i.i, 0
  %i.nk = load i32, ptr %0, align 8               ; 4 uses
  %i.nl = load i32, ptr %i.ao, align 4            ; 5 uses
  br i1 %.not.i309.i.i, label %_m3dstbi__create_png_image.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.nm = or i32 %i.nl, %i.nk
  %or.cond.not.i.i.i.i.i.i = icmp sgt i32 %i.nm, -1
  br i1 %or.cond.not.i.i.i.i.i.i, label %bb.bn, label %_m3dstbi__malloc_mad3.exit.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.nn = icmp eq i32 %i.nl, 0
  br i1 %i.nn, label %_m3dstbi__mul2sizes_valid.exit.thread15.i.i.i.i.i, label %_m3dstbi__mul2sizes_valid.exit.i.i.i.i.i

_m3dstbi__mul2sizes_valid.exit.i.i.i.i.i:         ; preds = %bb.bn
  %i.no = udiv i32 2147483647, %i.nl
  %.not23.i.i.i.i.i = icmp sgt i32 %i.nk, %i.no
  br i1 %.not23.i.i.i.i.i, label %_m3dstbi__malloc_mad3.exit.i.i.i, label %_m3dstbi__mul2sizes_valid.exit.thread15.i.i.i.i.i

_m3dstbi__mul2sizes_valid.exit.thread15.i.i.i.i.i: ; preds = %_m3dstbi__mul2sizes_valid.exit.i.i.i.i.i, %bb.bn
  %i.np = mul nsw i32 %i.nl, %i.nk                ; 3 uses
  %i.nq = or i32 %i.nj, %i.np
  %or.cond.not.i10.i.i.i.i.i = icmp sgt i32 %i.nq, -1
  br i1 %or.cond.not.i10.i.i.i.i.i, label %bb.bo, label %_m3dstbi__malloc_mad3.exit.i.i.i

bb.bo:                                            ; preds = %_m3dstbi__mul2sizes_valid.exit.thread15.i.i.i.i.i
  %i.nr = icmp eq i32 %i.nj, 0
  br i1 %i.nr, label %_m3dstbi__mad3sizes_valid.exit.i.i.i.i, label %_m3dstbi__mul2sizes_valid.exit12.i.i.i.i.i

_m3dstbi__mul2sizes_valid.exit12.i.i.i.i.i:       ; preds = %bb.bo
  %i.ns = udiv i32 2147483647, %i.nj
  %.not.i.i.i.i.i = icmp sgt i32 %i.np, %i.ns
  br i1 %.not.i.i.i.i.i, label %_m3dstbi__malloc_mad3.exit.i.i.i, label %_m3dstbi__mad3sizes_valid.exit.i.i.i.i

_m3dstbi__mad3sizes_valid.exit.i.i.i.i:           ; preds = %_m3dstbi__mul2sizes_valid.exit12.i.i.i.i.i, %bb.bo
  %i.nt = mul nsw i32 %i.nj, %i.np
  %i.nu = sext i32 %i.nt to i64
  %i.nv = call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 2147483648) %i.nu) #56
  br label %_m3dstbi__malloc_mad3.exit.i.i.i

_m3dstbi__malloc_mad3.exit.i.i.i:                 ; preds = %_m3dstbi__mad3sizes_valid.exit.i.i.i.i, %_m3dstbi__mul2sizes_valid.exit12.i.i.i.i.i, %_m3dstbi__mul2sizes_valid.exit.thread15.i.i.i.i.i, %_m3dstbi__mul2sizes_valid.exit.i.i.i.i.i, %bb.bm
  %.0.i.i310.i.i = phi ptr [ %i.nv, %_m3dstbi__mad3sizes_valid.exit.i.i.i.i ], [ null, %_m3dstbi__mul2sizes_valid.exit12.i.i.i.i.i ], [ null, %_m3dstbi__mul2sizes_valid.exit.i.i.i.i.i ], [ null, %bb.bm ], [ null, %_m3dstbi__mul2sizes_valid.exit.thread15.i.i.i.i.i ] ; 3 uses
  %i.nw = sext i32 %i.nj to i64                   ; 9 uses
  %.pre51 = load ptr, ptr %5, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.br, %_m3dstbi__malloc_mad3.exit.i.i.i
  %i.nx = phi ptr [ %.pre51, %_m3dstbi__malloc_mad3.exit.i.i.i ], [ %i.qo, %bb.br ] ; 4 uses
  %indvars.iv106.i.i.i = phi i64 [ 0, %_m3dstbi__malloc_mad3.exit.i.i.i ], [ %indvars.iv.next107.i.i.i, %bb.br ] ; 5 uses
  %.075100.i.i.i = phi ptr [ %i.my, %_m3dstbi__malloc_mad3.exit.i.i.i ], [ %.378.i.i.i, %bb.br ] ; 3 uses
  %.08498.i.i.i = phi i32 [ %i.ng, %_m3dstbi__malloc_mad3.exit.i.i.i ], [ %.387.i.i.i, %bb.br ] ; 3 uses
  %i.ny = load i32, ptr %i.nx, align 8
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr @__const._m3dstbi__create_png_image.xorig, i64 %indvars.iv106.i.i.i
  %i.oa = load i32, ptr %i.nz, align 4            ; 2 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr @__const._m3dstbi__create_png_image.xspc, i64 %indvars.iv106.i.i.i
  %i.oc = load i32, ptr %i.ob, align 4            ; 4 uses
  %i.od = xor i32 %i.oa, -1
  %i.oe = add i32 %i.ny, %i.od
  %i.of = add i32 %i.oe, %i.oc                    ; 2 uses
  %i.og = udiv i32 %i.of, %i.oc                   ; 6 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nx, i64 4
  %i.oi = load i32, ptr %i.oh, align 4
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr @__const._m3dstbi__create_png_image.yorig, i64 %indvars.iv106.i.i.i
  %i.ok = load i32, ptr %i.oj, align 4            ; 2 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr @__const._m3dstbi__create_png_image.yspc, i64 %indvars.iv106.i.i.i
  %i.om = load i32, ptr %i.ol, align 4            ; 4 uses
  %i.on = xor i32 %i.ok, -1
  %i.oo = add i32 %i.oi, %i.on
  %i.op = add i32 %i.oo, %i.om                    ; 2 uses
  %i.oq = udiv i32 %i.op, %i.om                   ; 4 uses
  %i.or = icmp ule i32 %i.oc, %i.of
  %i.os = icmp ule i32 %i.om, %i.op
  %or.cond.i311.i.i = select i1 %i.or, i1 %i.os, i1 false
  br i1 %or.cond.i311.i.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ot = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.ou = load i32, ptr %i.ot, align 8
  %i.ov = mul i32 %i.og, %i.av
  %i.ow = mul i32 %i.ov, %i.ou
  %i.ox = add nsw i32 %i.ow, 7
  %i.oy = ashr i32 %i.ox, 3
  %i.oz = add nsw i32 %i.oy, 1
  %i.pa = mul nsw i32 %i.oz, %i.oq                ; 2 uses
  %i.pb = call fastcc i32 @_m3dstbi__create_png_image_raw(ptr noundef nonnull %5, ptr noundef %.075100.i.i.i, i32 noundef %.08498.i.i.i, i32 noundef %spec.select1067.i.i, i32 noundef %i.og, i32 noundef %i.oq, i32 noundef %i.av, i32 noundef range(i32 0, 256) %.0191.i.i)
  %.not90.not.i.i.i = icmp eq i32 %i.pb, 0
  %.pre = load ptr, ptr %5, align 8               ; 2 uses
  br i1 %.not90.not.i.i.i, label %_m3dstbi__create_png_image.exit.thread.i.i, label %.preheader94.i.i.i

.preheader94.i.i.i:                               ; preds = %bb.bq
  %i.pc = icmp sgt i32 %i.oq, 0
  %i.pd = icmp sgt i32 %i.og, 0
  %or.cond101.i.i.i = and i1 %i.pd, %i.pc
  %.pre109.i.i.i = load ptr, ptr %i.g, align 8    ; 4 uses
  br i1 %or.cond101.i.i.i, label %.preheader.lr.ph.split.i.i.i, label %._crit_edge97.split.i.i.i

.preheader.lr.ph.split.i.i.i:                     ; preds = %.preheader94.i.i.i
  %i.pe = sext i32 %i.oc to i64                   ; 3 uses
  %i.pf = sext i32 %i.oa to i64                   ; 3 uses
  %i.pg = zext nneg i32 %i.og to i64              ; 3 uses
  %i.ph = zext nneg i32 %i.oq to i64
  %.pre.pre.i.i.i = load i32, ptr %.pre, align 8
  %factor.op.mul.i.i.i = mul i32 %.pre.pre.i.i.i, %i.nj
  %xtraiter91 = and i64 %i.pg, 1
  %i.pi = icmp eq i32 %i.og, 1
  %unroll_iter94 = and i64 %i.pg, 2147483646
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  %lcmp.mod93 = trunc i32 %i.og to i1
  br label %.preheader.i.i.i

_m3dstbi__create_png_image.exit.thread.i.i:       ; preds = %bb.bq
  call void @free(ptr noundef %.0.i.i310.i.i) #54
  br label %_m3dstbi__parse_png_file.exit.thread51.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i, %.preheader.lr.ph.split.i.i.i
  %indvars.iv103.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.i.i.i ], [ %indvars.iv.next104.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.pj = trunc i64 %indvars.iv103.i.i.i to i32
  %i.pk = mul i32 %i.om, %i.pj
  %i.pl = add i32 %i.pk, %i.ok
  %.reass.i.i.i = mul i32 %factor.op.mul.i.i.i, %i.pl
  %i.pm = mul nuw nsw i64 %indvars.iv103.i.i.i, %i.pg ; 3 uses
  %i.pn = zext i32 %.reass.i.i.i to i64
  %i.po = getelementptr inbounds nuw i8, ptr %.0.i.i310.i.i, i64 %i.pn ; 3 uses
  br i1 %i.pi, label %.epil.preheader90, label %.preheader.i.i.i.new

.preheader.i.i.i.new:                             ; preds = %.preheader.i.i.i, %.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.preheader.i.i.i.new ], [ 0, %.preheader.i.i.i ] ; 4 uses
  %niter95 = phi i64 [ %niter95.next.1, %.preheader.i.i.i.new ], [ 0, %.preheader.i.i.i ]
  %i.pp = mul nsw i64 %indvars.iv.i.i.i, %i.pe
  %i.pq = add nsw i64 %i.pp, %i.pf
  %i.pr = mul nsw i64 %i.pq, %i.nw
  %i.ps = getelementptr inbounds i8, ptr %i.po, i64 %i.pr
  %i.pt = add nuw nsw i64 %indvars.iv.i.i.i, %i.pm
  %i.pu = mul nsw i64 %i.pt, %i.nw
  %i.pv = getelementptr inbounds i8, ptr %.pre109.i.i.i, i64 %i.pu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ps, ptr align 1 %i.pv, i64 %i.nw, i1 false)
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.pw = mul nsw i64 %indvars.iv.next.i.i.i, %i.pe
  %i.px = add nsw i64 %i.pw, %i.pf
  %i.py = mul nsw i64 %i.px, %i.nw
  %i.pz = getelementptr inbounds i8, ptr %i.po, i64 %i.py
  %i.qa = add nuw nsw i64 %indvars.iv.next.i.i.i, %i.pm
  %i.qb = mul nsw i64 %i.qa, %i.nw
  %i.qc = getelementptr inbounds i8, ptr %.pre109.i.i.i, i64 %i.qb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pz, ptr align 1 %i.qc, i64 %i.nw, i1 false)
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter95.next.1 = add nuw i64 %niter95, 2       ; 2 uses
  %niter95.ncmp.1.not = icmp eq i64 %niter95.next.1, %unroll_iter94
  br i1 %niter95.ncmp.1.not, label %._crit_edge.i.i.i.unr-lcssa, label %.preheader.i.i.i.new

._crit_edge.i.i.i.unr-lcssa:                      ; preds = %.preheader.i.i.i.new
  br i1 %lcmp.mod92.not, label %._crit_edge.i.i.i, label %.epil.preheader90

.epil.preheader90:                                ; preds = %._crit_edge.i.i.i.unr-lcssa, %.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %._crit_edge.i.i.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod93)
  %i.qd = mul nsw i64 %indvars.iv.i.i.i.epil.init, %i.pe
  %i.qe = add nsw i64 %i.qd, %i.pf
  %i.qf = mul nsw i64 %i.qe, %i.nw
  %i.qg = getelementptr inbounds i8, ptr %i.po, i64 %i.qf
  %i.qh = add nuw nsw i64 %indvars.iv.i.i.i.epil.init, %i.pm
  %i.qi = mul nsw i64 %i.qh, %i.nw
  %i.qj = getelementptr inbounds i8, ptr %.pre109.i.i.i, i64 %i.qi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qg, ptr align 1 %i.qj, i64 %i.nw, i1 false)
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.unr-lcssa, %.epil.preheader90
  %indvars.iv.next104.i.i.i = add nuw nsw i64 %indvars.iv103.i.i.i, 1 ; 2 uses
  %i.qk = icmp samesign ult i64 %indvars.iv.next104.i.i.i, %i.ph
  br i1 %i.qk, label %.preheader.i.i.i, label %._crit_edge97.split.i.i.i

._crit_edge97.split.i.i.i:                        ; preds = %._crit_edge.i.i.i, %.preheader94.i.i.i
  call void @free(ptr noundef %.pre109.i.i.i) #54
  %i.ql = zext i32 %i.pa to i64
  %i.qm = getelementptr inbounds nuw i8, ptr %.075100.i.i.i, i64 %i.ql
  %i.qn = sub i32 %.08498.i.i.i, %i.pa
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge97.split.i.i.i, %bb.bp
  %i.qo = phi ptr [ %i.nx, %bb.bp ], [ %.pre, %._crit_edge97.split.i.i.i ]
  %.387.i.i.i = phi i32 [ %.08498.i.i.i, %bb.bp ], [ %i.qn, %._crit_edge97.split.i.i.i ]
  %.378.i.i.i = phi ptr [ %.075100.i.i.i, %bb.bp ], [ %i.qm, %._crit_edge97.split.i.i.i ]
  %indvars.iv.next107.i.i.i = add nuw nsw i64 %indvars.iv106.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next107.i.i.i, 7
  br i1 %exitcond.not.i.i.i, label %_m3dstbi__create_png_image.exit.thread368.i.i, label %bb.bp

_m3dstbi__create_png_image.exit.thread368.i.i:    ; preds = %bb.br
  store ptr %.0.i.i310.i.i, ptr %i.g, align 8
  br label %bb.bs

_m3dstbi__create_png_image.exit.i.i:              ; preds = %bb.bl
  %i.qp = call fastcc i32 @_m3dstbi__create_png_image_raw(ptr noundef nonnull %5, ptr noundef nonnull readonly %i.my, i32 noundef %i.ng, i32 noundef %spec.select1067.i.i, i32 noundef %i.nk, i32 noundef %i.nl, i32 noundef %i.av, i32 noundef range(i32 0, 256) %.0191.i.i)
  %.not244.i.i = icmp eq i32 %i.qp, 0
  br i1 %.not244.i.i, label %_m3dstbi__parse_png_file.exit.thread51.i, label %bb.bs

bb.bs:                                            ; preds = %_m3dstbi__create_png_image.exit.i.i, %_m3dstbi__create_png_image.exit.thread368.i.i
  %.not245.i.i = icmp eq i8 %.0217.i.i, 0
  br i1 %.not245.i.i, label %_m3dstbi__compute_transparency16.exit.thread.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qq = load i32, ptr %i.an, align 8
  %i.qr = icmp eq i32 %i.qq, 16
  %i.qs = load i32, ptr %i.nf, align 4
  %.val.i.i = load ptr, ptr %5, align 8           ; 4 uses
  %.val274.i.i = load ptr, ptr %i.g, align 8      ; 10 uses
  %.val.val.i.i = load i32, ptr %.val.i.i, align 8
  %i.qt = getelementptr i8, ptr %.val.i.i, i64 4
  %.val.val275.i.i = load i32, ptr %i.qt, align 4
  %i.qu = mul i32 %.val.val275.i.i, %.val.val.i.i ; 15 uses
  %i.qv = icmp eq i32 %i.qs, 2                    ; 2 uses
  %.not8.i.i.i = icmp eq i32 %i.qu, 0             ; 4 uses
  br i1 %i.qr, label %bb.bu, label %bb.ce

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.qv, label %.preheader.i313.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.bu
  br i1 %.not8.i.i.i, label %_m3dstbi__compute_transparency16.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader1.i.i.i
  %i.qw = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.qx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.qy = load i16, ptr %i.c, align 2             ; 3 uses
  %i.qz = load i16, ptr %i.qw, align 2            ; 3 uses
  %i.ra = load i16, ptr %i.qx, align 2            ; 3 uses
  %xtraiter108 = and i32 %i.qu, 1
  %i.rb = icmp eq i32 %i.qu, 1
  br i1 %i.rb, label %.epil.preheader107, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter112 = and i32 %i.qu, -2
  br label %bb.bv

.preheader.i313.i.i:                              ; preds = %bb.bu
  br i1 %.not8.i.i.i, label %_m3dstbi__compute_transparency16.exit.i.i, label %.lr.ph7.i.preheader.i.i

.lr.ph7.i.preheader.i.i:                          ; preds = %.preheader.i313.i.i
  %i.rc = load i16, ptr %i.c, align 2             ; 5 uses
  %xtraiter114 = and i32 %i.qu, 3                 ; 3 uses
  %i.rd = icmp ult i32 %i.qu, 4
  br i1 %i.rd, label %.lr.ph7.i.i.i.epil.preheader, label %.lr.ph7.i.preheader.i.i.new

.lr.ph7.i.preheader.i.i.new:                      ; preds = %.lr.ph7.i.preheader.i.i
  %unroll_iter118 = and i32 %i.qu, -4
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %.lr.ph7.i.i.i, %.lr.ph7.i.preheader.i.i.new
  %.06.i.i.i = phi ptr [ %.val274.i.i, %.lr.ph7.i.preheader.i.i.new ], [ %i.rx, %.lr.ph7.i.i.i ] ; 9 uses
  %niter119 = phi i32 [ 0, %.lr.ph7.i.preheader.i.i.new ], [ %niter119.next.3, %.lr.ph7.i.i.i ]
  %i.re = load i16, ptr %.06.i.i.i, align 2
  %i.rf = icmp ne i16 %i.re, %i.rc
  %i.rg = sext i1 %i.rf to i16
  %i.rh = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 2
  store i16 %i.rg, ptr %i.rh, align 2
  %i.ri = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4
  %i.rj = load i16, ptr %i.ri, align 2
  %i.rk = icmp ne i16 %i.rj, %i.rc
  %i.rl = sext i1 %i.rk to i16
  %i.rm = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 6
  store i16 %i.rl, ptr %i.rm, align 2
  %i.rn = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.ro = load i16, ptr %i.rn, align 2
  %i.rp = icmp ne i16 %i.ro, %i.rc
  %i.rq = sext i1 %i.rp to i16
  %i.rr = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 10
  store i16 %i.rq, ptr %i.rr, align 2
  %i.rs = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 12
  %i.rt = load i16, ptr %i.rs, align 2
  %i.ru = icmp ne i16 %i.rt, %i.rc
  %i.rv = sext i1 %i.ru to i16
  %i.rw = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 14
  store i16 %i.rv, ptr %i.rw, align 2
  %i.rx = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16 ; 2 uses
  %niter119.next.3 = add nuw i32 %niter119, 4     ; 2 uses
  %niter119.ncmp.3 = icmp eq i32 %niter119.next.3, %unroll_iter118
  br i1 %niter119.ncmp.3, label %_m3dstbi__compute_transparency16.exit.i.i.loopexit.unr-lcssa, label %.lr.ph7.i.i.i

bb.bv:                                            ; preds = %bb.cd, %.lr.ph.i.i.i.new
  %.14.i.i.i = phi ptr [ %.val274.i.i, %.lr.ph.i.i.i.new ], [ %i.sr, %bb.cd ] ; 9 uses
  %niter113 = phi i32 [ 0, %.lr.ph.i.i.i.new ], [ %niter113.next.1, %bb.cd ]
  %i.ry = load i16, ptr %.14.i.i.i, align 2
  %i.rz = icmp eq i16 %i.ry, %i.qy
  br i1 %i.rz, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.sa = getelementptr inbounds nuw i8, ptr %.14.i.i.i, i64 2
  %i.sb = load i16, ptr %i.sa, align 2
  %i.sc = icmp eq i16 %i.sb, %i.qz
  br i1 %i.sc, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.sd = getelementptr inbounds nuw i8, ptr %.14.i.i.i, i64 4
  %i.se = load i16, ptr %i.sd, align 2
  %i.sf = icmp eq i16 %i.se, %i.ra
  br i1 %i.sf, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.sg = getelementptr inbounds nuw i8, ptr %.14.i.i.i, i64 6
  store i16 0, ptr %i.sg, align 2
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bv
  %i.sh = getelementptr inbounds nuw i8, ptr %.14.i.i.i, i64 8
  %i.si = load i16, ptr %i.sh, align 2
  %i.sj = icmp eq i16 %i.si, %i.qy
  br i1 %i.sj, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  %i.sk = getelementptr inbounds nuw i8, ptr %.14.i.i.i, i64 10
  %i.sl = load i16, ptr %i.sk, align 2
  %i.sm = icmp eq i16 %i.sl, %i.qz
  br i1 %i.sm, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.sn = getelementptr inbounds nuw i8, ptr %.14.i.i.i, i64 12
  %i.so = load i16, ptr %i.sn, align 2
  %i.sp = icmp eq i16 %i.so, %i.ra
  br i1 %i.sp, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.sq = getelementptr inbounds nuw i8, ptr %.14.i.i.i, i64 14
  store i16 0, ptr %i.sq, align 2
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.bz
  %i.sr = getelementptr inbounds nuw i8, ptr %.14.i.i.i, i64 16 ; 2 uses
  %niter113.next.1 = add nuw i32 %niter113, 2     ; 2 uses
  %niter113.ncmp.1 = icmp eq i32 %niter113.next.1, %unroll_iter112
  br i1 %niter113.ncmp.1, label %_m3dstbi__compute_transparency16.exit.i.i.loopexit35.unr-lcssa, label %bb.bv

bb.ce:                                            ; preds = %bb.bt
  br i1 %i.qv, label %.preheader.i320.i.i, label %.preheader1.i315.i.i

.preheader1.i315.i.i:                             ; preds = %bb.ce
  br i1 %.not8.i.i.i, label %_m3dstbi__compute_transparency16.exit.i.i, label %.lr.ph.i316.i.i

.lr.ph.i316.i.i:                                  ; preds = %.preheader1.i315.i.i
  %i.ss = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.st = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.su = load i8, ptr %i.b, align 1              ; 3 uses
  %i.sv = load i8, ptr %i.ss, align 1             ; 3 uses
  %i.sw = load i8, ptr %i.st, align 1             ; 3 uses
  %xtraiter97 = and i32 %i.qu, 1
  %i.sx = icmp eq i32 %i.qu, 1
  br i1 %i.sx, label %.epil.preheader96, label %.lr.ph.i316.i.i.new

.lr.ph.i316.i.i.new:                              ; preds = %.lr.ph.i316.i.i
  %unroll_iter100 = and i32 %i.qu, -2
  br label %bb.cf

.preheader.i320.i.i:                              ; preds = %bb.ce
  br i1 %.not8.i.i.i, label %_m3dstbi__compute_transparency16.exit.i.i, label %.lr.ph7.i321.preheader.i.i

.lr.ph7.i321.preheader.i.i:                       ; preds = %.preheader.i320.i.i
  %i.sy = load i8, ptr %i.b, align 1              ; 5 uses
  %xtraiter102 = and i32 %i.qu, 3                 ; 3 uses
  %i.sz = icmp ult i32 %i.qu, 4
  br i1 %i.sz, label %.lr.ph7.i321.i.i.epil.preheader, label %.lr.ph7.i321.preheader.i.i.new

.lr.ph7.i321.preheader.i.i.new:                   ; preds = %.lr.ph7.i321.preheader.i.i
  %unroll_iter105 = and i32 %i.qu, -4
  br label %.lr.ph7.i321.i.i

.lr.ph7.i321.i.i:                                 ; preds = %.lr.ph7.i321.i.i, %.lr.ph7.i321.preheader.i.i.new
  %.06.i322.i.i = phi ptr [ %.val274.i.i, %.lr.ph7.i321.preheader.i.i.new ], [ %i.tt, %.lr.ph7.i321.i.i ] ; 9 uses
  %niter106 = phi i32 [ 0, %.lr.ph7.i321.preheader.i.i.new ], [ %niter106.next.3, %.lr.ph7.i321.i.i ]
  %i.ta = load i8, ptr %.06.i322.i.i, align 1
  %i.tb = icmp ne i8 %i.ta, %i.sy
  %i.tc = sext i1 %i.tb to i8
  %i.td = getelementptr inbounds nuw i8, ptr %.06.i322.i.i, i64 1
  store i8 %i.tc, ptr %i.td, align 1
  %i.te = getelementptr inbounds nuw i8, ptr %.06.i322.i.i, i64 2
  %i.tf = load i8, ptr %i.te, align 1
  %i.tg = icmp ne i8 %i.tf, %i.sy
  %i.th = sext i1 %i.tg to i8
  %i.ti = getelementptr inbounds nuw i8, ptr %.06.i322.i.i, i64 3
  store i8 %i.th, ptr %i.ti, align 1
  %i.tj = getelementptr inbounds nuw i8, ptr %.06.i322.i.i, i64 4
  %i.tk = load i8, ptr %i.tj, align 1
  %i.tl = icmp ne i8 %i.tk, %i.sy
  %i.tm = sext i1 %i.tl to i8
  %i.tn = getelementptr inbounds nuw i8, ptr %.06.i322.i.i, i64 5
  store i8 %i.tm, ptr %i.tn, align 1
  %i.to = getelementptr inbounds nuw i8, ptr %.06.i322.i.i, i64 6
  %i.tp = load i8, ptr %i.to, align 1
  %i.tq = icmp ne i8 %i.tp, %i.sy
  %i.tr = sext i1 %i.tq to i8
  %i.ts = getelementptr inbounds nuw i8, ptr %.06.i322.i.i, i64 7
  store i8 %i.tr, ptr %i.ts, align 1
  %i.tt = getelementptr inbounds nuw i8, ptr %.06.i322.i.i, i64 8 ; 2 uses
  %niter106.next.3 = add nuw i32 %niter106, 4     ; 2 uses
  %niter106.ncmp.3 = icmp eq i32 %niter106.next.3, %unroll_iter105
  br i1 %niter106.ncmp.3, label %_m3dstbi__compute_transparency16.exit.i.i.loopexit36.unr-lcssa, label %.lr.ph7.i321.i.i

bb.cf:                                            ; preds = %bb.cn, %.lr.ph.i316.i.i.new
  %.14.i317.i.i = phi ptr [ %.val274.i.i, %.lr.ph.i316.i.i.new ], [ %i.un, %bb.cn ] ; 9 uses
  %niter101 = phi i32 [ 0, %.lr.ph.i316.i.i.new ], [ %niter101.next.1, %bb.cn ]
  %i.tu = load i8, ptr %.14.i317.i.i, align 1
  %i.tv = icmp eq i8 %i.tu, %i.su
  br i1 %i.tv, label %bb.cg, label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  %i.tw = getelementptr inbounds nuw i8, ptr %.14.i317.i.i, i64 1
  %i.tx = load i8, ptr %i.tw, align 1
  %i.ty = icmp eq i8 %i.tx, %i.sv
  br i1 %i.ty, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.tz = getelementptr inbounds nuw i8, ptr %.14.i317.i.i, i64 2
  %i.ua = load i8, ptr %i.tz, align 1
  %i.ub = icmp eq i8 %i.ua, %i.sw
  br i1 %i.ub, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.uc = getelementptr inbounds nuw i8, ptr %.14.i317.i.i, i64 3
  store i8 0, ptr %i.uc, align 1
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.cf
  %i.ud = getelementptr inbounds nuw i8, ptr %.14.i317.i.i, i64 4
  %i.ue = load i8, ptr %i.ud, align 1
  %i.uf = icmp eq i8 %i.ue, %i.su
  br i1 %i.uf, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  %i.ug = getelementptr inbounds nuw i8, ptr %.14.i317.i.i, i64 5
  %i.uh = load i8, ptr %i.ug, align 1
  %i.ui = icmp eq i8 %i.uh, %i.sv
  br i1 %i.ui, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.uj = getelementptr inbounds nuw i8, ptr %.14.i317.i.i, i64 6
  %i.uk = load i8, ptr %i.uj, align 1
  %i.ul = icmp eq i8 %i.uk, %i.sw
  br i1 %i.ul, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.um = getelementptr inbounds nuw i8, ptr %.14.i317.i.i, i64 7
  store i8 0, ptr %i.um, align 1
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.cj
  %i.un = getelementptr inbounds nuw i8, ptr %.14.i317.i.i, i64 8 ; 2 uses
  %niter101.next.1 = add nuw i32 %niter101, 2     ; 2 uses
  %niter101.ncmp.1 = icmp eq i32 %niter101.next.1, %unroll_iter100
  br i1 %niter101.ncmp.1, label %_m3dstbi__compute_transparency16.exit.i.i.loopexit37.unr-lcssa, label %bb.cf

_m3dstbi__compute_transparency16.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph7.i.i.i
  %lcmp.mod116.not = icmp eq i32 %xtraiter114, 0
  br i1 %lcmp.mod116.not, label %_m3dstbi__compute_transparency16.exit.i.i, label %.lr.ph7.i.i.i.epil.preheader

.lr.ph7.i.i.i.epil.preheader:                     ; preds = %_m3dstbi__compute_transparency16.exit.i.i.loopexit.unr-lcssa, %.lr.ph7.i.preheader.i.i
  %.06.i.i.i.epil.init = phi ptr [ %.val274.i.i, %.lr.ph7.i.preheader.i.i ], [ %i.rx, %_m3dstbi__compute_transparency16.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod117 = icmp ne i32 %xtraiter114, 0
  call void @llvm.assume(i1 %lcmp.mod117)
  br label %.lr.ph7.i.i.i.epil

.lr.ph7.i.i.i.epil:                               ; preds = %.lr.ph7.i.i.i.epil, %.lr.ph7.i.i.i.epil.preheader
  %.06.i.i.i.epil = phi ptr [ %i.us, %.lr.ph7.i.i.i.epil ], [ %.06.i.i.i.epil.init, %.lr.ph7.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter115 = phi i32 [ %epil.iter115.next, %.lr.ph7.i.i.i.epil ], [ 0, %.lr.ph7.i.i.i.epil.preheader ]
  %i.uo = load i16, ptr %.06.i.i.i.epil, align 2
  %i.up = icmp ne i16 %i.uo, %i.rc
  %i.uq = sext i1 %i.up to i16
  %i.ur = getelementptr inbounds nuw i8, ptr %.06.i.i.i.epil, i64 2
  store i16 %i.uq, ptr %i.ur, align 2
  %i.us = getelementptr inbounds nuw i8, ptr %.06.i.i.i.epil, i64 4
  %epil.iter115.next = add i32 %epil.iter115, 1   ; 2 uses
  %epil.iter115.cmp.not = icmp eq i32 %epil.iter115.next, %xtraiter114
  br i1 %epil.iter115.cmp.not, label %_m3dstbi__compute_transparency16.exit.i.i, label %.lr.ph7.i.i.i.epil, !llvm.loop !61

_m3dstbi__compute_transparency16.exit.i.i.loopexit35.unr-lcssa: ; preds = %bb.cd
  %lcmp.mod110.not = icmp eq i32 %xtraiter108, 0
  br i1 %lcmp.mod110.not, label %_m3dstbi__compute_transparency16.exit.i.i, label %.epil.preheader107

.epil.preheader107:                               ; preds = %_m3dstbi__compute_transparency16.exit.i.i.loopexit35.unr-lcssa, %.lr.ph.i.i.i
  %.14.i.i.i.epil.init = phi ptr [ %.val274.i.i, %.lr.ph.i.i.i ], [ %i.sr, %_m3dstbi__compute_transparency16.exit.i.i.loopexit35.unr-lcssa ] ; 4 uses
  %lcmp.mod111 = trunc i32 %i.qu to i1
  call void @llvm.assume(i1 %lcmp.mod111)
  %i.ut = load i16, ptr %.14.i.i.i.epil.init, align 2
  %i.uu = icmp eq i16 %i.ut, %i.qy
  br i1 %i.uu, label %bb.co, label %_m3dstbi__compute_transparency16.exit.i.i

bb.co:                                            ; preds = %.epil.preheader107
  %i.uv = getelementptr inbounds nuw i8, ptr %.14.i.i.i.epil.init, i64 2
  %i.uw = load i16, ptr %i.uv, align 2
  %i.ux = icmp eq i16 %i.uw, %i.qz
  br i1 %i.ux, label %bb.cp, label %_m3dstbi__compute_transparency16.exit.i.i

bb.cp:                                            ; preds = %bb.co
  %i.uy = getelementptr inbounds nuw i8, ptr %.14.i.i.i.epil.init, i64 4
  %i.uz = load i16, ptr %i.uy, align 2
  %i.va = icmp eq i16 %i.uz, %i.ra
  br i1 %i.va, label %bb.cq, label %_m3dstbi__compute_transparency16.exit.i.i

bb.cq:                                            ; preds = %bb.cp
  %i.vb = getelementptr inbounds nuw i8, ptr %.14.i.i.i.epil.init, i64 6
  store i16 0, ptr %i.vb, align 2
  br label %_m3dstbi__compute_transparency16.exit.i.i

_m3dstbi__compute_transparency16.exit.i.i.loopexit36.unr-lcssa: ; preds = %.lr.ph7.i321.i.i
  %lcmp.mod103.not = icmp eq i32 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %_m3dstbi__compute_transparency16.exit.i.i, label %.lr.ph7.i321.i.i.epil.preheader

.lr.ph7.i321.i.i.epil.preheader:                  ; preds = %_m3dstbi__compute_transparency16.exit.i.i.loopexit36.unr-lcssa, %.lr.ph7.i321.preheader.i.i
  %.06.i322.i.i.epil.init = phi ptr [ %.val274.i.i, %.lr.ph7.i321.preheader.i.i ], [ %i.tt, %_m3dstbi__compute_transparency16.exit.i.i.loopexit36.unr-lcssa ]
  %lcmp.mod104 = icmp ne i32 %xtraiter102, 0
  call void @llvm.assume(i1 %lcmp.mod104)
  br label %.lr.ph7.i321.i.i.epil

.lr.ph7.i321.i.i.epil:                            ; preds = %.lr.ph7.i321.i.i.epil, %.lr.ph7.i321.i.i.epil.preheader
  %.06.i322.i.i.epil = phi ptr [ %i.vg, %.lr.ph7.i321.i.i.epil ], [ %.06.i322.i.i.epil.init, %.lr.ph7.i321.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph7.i321.i.i.epil ], [ 0, %.lr.ph7.i321.i.i.epil.preheader ]
  %i.vc = load i8, ptr %.06.i322.i.i.epil, align 1
  %i.vd = icmp ne i8 %i.vc, %i.sy
  %i.ve = sext i1 %i.vd to i8
  %i.vf = getelementptr inbounds nuw i8, ptr %.06.i322.i.i.epil, i64 1
  store i8 %i.ve, ptr %i.vf, align 1
  %i.vg = getelementptr inbounds nuw i8, ptr %.06.i322.i.i.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter102
  br i1 %epil.iter.cmp.not, label %_m3dstbi__compute_transparency16.exit.i.i, label %.lr.ph7.i321.i.i.epil, !llvm.loop !62

_m3dstbi__compute_transparency16.exit.i.i.loopexit37.unr-lcssa: ; preds = %bb.cn
  %lcmp.mod98.not = icmp eq i32 %xtraiter97, 0
  br i1 %lcmp.mod98.not, label %_m3dstbi__compute_transparency16.exit.i.i, label %.epil.preheader96

.epil.preheader96:                                ; preds = %_m3dstbi__compute_transparency16.exit.i.i.loopexit37.unr-lcssa, %.lr.ph.i316.i.i
  %.14.i317.i.i.epil.init = phi ptr [ %.val274.i.i, %.lr.ph.i316.i.i ], [ %i.un, %_m3dstbi__compute_transparency16.exit.i.i.loopexit37.unr-lcssa ] ; 4 uses
  %lcmp.mod99 = trunc i32 %i.qu to i1
  call void @llvm.assume(i1 %lcmp.mod99)
  %i.vh = load i8, ptr %.14.i317.i.i.epil.init, align 1
  %i.vi = icmp eq i8 %i.vh, %i.su
  br i1 %i.vi, label %bb.cr, label %_m3dstbi__compute_transparency16.exit.i.i

bb.cr:                                            ; preds = %.epil.preheader96
  %i.vj = getelementptr inbounds nuw i8, ptr %.14.i317.i.i.epil.init, i64 1
  %i.vk = load i8, ptr %i.vj, align 1
  %i.vl = icmp eq i8 %i.vk, %i.sv
  br i1 %i.vl, label %bb.cs, label %_m3dstbi__compute_transparency16.exit.i.i

bb.cs:                                            ; preds = %bb.cr
  %i.vm = getelementptr inbounds nuw i8, ptr %.14.i317.i.i.epil.init, i64 2
  %i.vn = load i8, ptr %i.vm, align 1
  %i.vo = icmp eq i8 %i.vn, %i.sw
  br i1 %i.vo, label %bb.ct, label %_m3dstbi__compute_transparency16.exit.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.vp = getelementptr inbounds nuw i8, ptr %.14.i317.i.i.epil.init, i64 3
  store i8 0, ptr %i.vp, align 1
  br label %_m3dstbi__compute_transparency16.exit.i.i

_m3dstbi__compute_transparency16.exit.i.i:        ; preds = %_m3dstbi__compute_transparency16.exit.i.i.loopexit37.unr-lcssa, %bb.ct, %bb.cs, %bb.cr, %.epil.preheader96, %_m3dstbi__compute_transparency16.exit.i.i.loopexit36.unr-lcssa, %.lr.ph7.i321.i.i.epil, %_m3dstbi__compute_transparency16.exit.i.i.loopexit35.unr-lcssa, %bb.cq, %bb.cp, %bb.co, %.epil.preheader107, %_m3dstbi__compute_transparency16.exit.i.i.loopexit.unr-lcssa, %.lr.ph7.i.i.i.epil, %.preheader.i320.i.i, %.preheader1.i315.i.i, %.preheader.i313.i.i, %.preheader1.i.i.i
  br i1 %i.nd, label %bb.cv, label %_m3dstbi__compute_transparency16.exit.thread.i.i._crit_edge

_m3dstbi__compute_transparency16.exit.thread.i.i: ; preds = %bb.bs
  %.pre54 = load ptr, ptr %i.g, align 8           ; 2 uses
  %.pre55 = load ptr, ptr %5, align 8             ; 2 uses
  br i1 %i.nd, label %bb.df, label %_m3dstbi__compute_transparency16.exit.thread.i.i._crit_edge

_m3dstbi__compute_transparency16.exit.thread.i.i._crit_edge: ; preds = %_m3dstbi__compute_transparency16.exit.thread.i.i, %_m3dstbi__compute_transparency16.exit.i.i
  %i.vq = phi ptr [ %.val274.i.i, %_m3dstbi__compute_transparency16.exit.i.i ], [ %.pre54, %_m3dstbi__compute_transparency16.exit.thread.i.i ] ; 9 uses
  %i.vr = phi ptr [ %.val.i.i, %_m3dstbi__compute_transparency16.exit.i.i ], [ %.pre55, %_m3dstbi__compute_transparency16.exit.thread.i.i ] ; 3 uses
  %i.vs = zext nneg i8 %.0220.i.i to i32          ; 4 uses
  store i32 %i.vs, ptr %i.am, align 8
  store i32 %i.vs, ptr %i.nf, align 4
  %i.vt = load i32, ptr %i.vr, align 8
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vr, i64 4
  %i.vv = load i32, ptr %i.vu, align 4
  %i.vw = mul i32 %i.vv, %i.vt                    ; 9 uses
  %or.cond.not.i.i.i.i325.i.i = icmp sgt i32 %i.vw, -1
  br i1 %or.cond.not.i.i.i.i325.i.i, label %_m3dstbi__mul2sizes_valid.exit.i.i.i327.i.i, label %_m3dstbi__parse_png_file.exit.thread51.i

_m3dstbi__mul2sizes_valid.exit.i.i.i327.i.i:      ; preds = %_m3dstbi__compute_transparency16.exit.thread.i.i._crit_edge
  %i.vx = udiv i32 2147483647, %i.vs
  %.not10.i.i.i.i.i = icmp samesign ugt i32 %i.vw, %i.vx
  br i1 %.not10.i.i.i.i.i, label %_m3dstbi__parse_png_file.exit.thread51.i, label %_m3dstbi__malloc_mad2.exit.i.i.i

_m3dstbi__malloc_mad2.exit.i.i.i:                 ; preds = %_m3dstbi__mul2sizes_valid.exit.i.i.i327.i.i
  %i.vy = mul nuw nsw i32 %i.vw, %i.vs
  %i.vz = zext nneg i32 %i.vy to i64
  %i.wa = call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 2147483648) %i.vz) #56 ; 6 uses
  %i.wb = icmp eq ptr %i.wa, null
  br i1 %i.wb, label %_m3dstbi__parse_png_file.exit.thread51.i, label %bb.cu

bb.cu:                                            ; preds = %_m3dstbi__malloc_mad2.exit.i.i.i
  %i.wc = icmp eq i8 %.0220.i.i, 3
  %.not56.i.i.i = icmp eq i32 %i.vw, 0            ; 2 uses
  br i1 %i.wc, label %.preheader.i332.i.i, label %.preheader49.i.i.i

.preheader49.i.i.i:                               ; preds = %bb.cu
  br i1 %.not56.i.i.i, label %_m3dstbi__expand_png_palette.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader49.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.vw to i64 ; 2 uses
  %xtraiter120 = and i64 %wide.trip.count.i.i.i, 3 ; 3 uses
  %i.wd = icmp ult i32 %i.vw, 4
  br i1 %i.wd, label %.lr.ph.i328.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter124 = and i64 %wide.trip.count.i.i.i, 2147483644
  br label %.lr.ph.i328.i.i

.preheader.i332.i.i:                              ; preds = %bb.cu
  br i1 %.not56.i.i.i, label %_m3dstbi__expand_png_palette.exit.i.i, label %.lr.ph55.preheader.i.i.i

.lr.ph55.preheader.i.i.i:                         ; preds = %.preheader.i332.i.i
  %wide.trip.count62.i.i.i = zext nneg i32 %i.vw to i64 ; 2 uses
  %xtraiter126 = and i64 %wide.trip.count62.i.i.i, 1
  %i.we = icmp eq i32 %i.vw, 1
  br i1 %i.we, label %.lr.ph55.i.i.i.epil.preheader, label %.lr.ph55.preheader.i.i.i.new

.lr.ph55.preheader.i.i.i.new:                     ; preds = %.lr.ph55.preheader.i.i.i
  %unroll_iter130 = and i64 %wide.trip.count62.i.i.i, 2147483646
  br label %.lr.ph55.i.i.i

.lr.ph55.i.i.i:                                   ; preds = %.lr.ph55.i.i.i, %.lr.ph55.preheader.i.i.i.new
  %indvars.iv59.i.i.i = phi i64 [ 0, %.lr.ph55.preheader.i.i.i.new ], [ %indvars.iv.next60.i.i.i.1, %.lr.ph55.i.i.i ] ; 3 uses
  %.04553.i.i.i = phi ptr [ %i.wa, %.lr.ph55.preheader.i.i.i.new ], [ %i.xf, %.lr.ph55.i.i.i ] ; 7 uses
  %niter131 = phi i64 [ 0, %.lr.ph55.preheader.i.i.i.new ], [ %niter131.next.1, %.lr.ph55.i.i.i ]
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vq, i64 %indvars.iv59.i.i.i
  %i.wg = load i8, ptr %i.wf, align 1
  %i.wh = zext i8 %i.wg to i64
  %i.wi = shl nuw nsw i64 %i.wh, 2
  %i.wj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.wi ; 3 uses
  %i.wk = load i8, ptr %i.wj, align 4
  store i8 %i.wk, ptr %.04553.i.i.i, align 1
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wj, i64 1
  %i.wm = load i8, ptr %i.wl, align 1
  %i.wn = getelementptr inbounds nuw i8, ptr %.04553.i.i.i, i64 1
  store i8 %i.wm, ptr %i.wn, align 1
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wj, i64 2
  %i.wp = load i8, ptr %i.wo, align 2
  %i.wq = getelementptr inbounds nuw i8, ptr %.04553.i.i.i, i64 2
  store i8 %i.wp, ptr %i.wq, align 1
  %i.wr = getelementptr inbounds nuw i8, ptr %.04553.i.i.i, i64 3
  %i.ws = getelementptr inbounds nuw i8, ptr %i.vq, i64 %indvars.iv59.i.i.i
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 1
  %i.wu = load i8, ptr %i.wt, align 1
  %i.wv = zext i8 %i.wu to i64
  %i.ww = shl nuw nsw i64 %i.wv, 2
  %i.wx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ww ; 3 uses
  %i.wy = load i8, ptr %i.wx, align 4
  store i8 %i.wy, ptr %i.wr, align 1
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wx, i64 1
  %i.xa = load i8, ptr %i.wz, align 1
  %i.xb = getelementptr inbounds nuw i8, ptr %.04553.i.i.i, i64 4
  store i8 %i.xa, ptr %i.xb, align 1
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wx, i64 2
  %i.xd = load i8, ptr %i.xc, align 2
  %i.xe = getelementptr inbounds nuw i8, ptr %.04553.i.i.i, i64 5
  store i8 %i.xd, ptr %i.xe, align 1
  %i.xf = getelementptr inbounds nuw i8, ptr %.04553.i.i.i, i64 6 ; 2 uses
  %indvars.iv.next60.i.i.i.1 = add nuw nsw i64 %indvars.iv59.i.i.i, 2 ; 2 uses
  %niter131.next.1 = add nuw i64 %niter131, 2     ; 2 uses
  %niter131.ncmp.1 = icmp eq i64 %niter131.next.1, %unroll_iter130
  br i1 %niter131.ncmp.1, label %_m3dstbi__expand_png_palette.exit.i.i.loopexit.unr-lcssa, label %.lr.ph55.i.i.i

.lr.ph.i328.i.i:                                  ; preds = %.lr.ph.i328.i.i, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i329.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i330.i.i.3, %.lr.ph.i328.i.i ] ; 5 uses
  %.14651.i.i.i = phi ptr [ %i.wa, %.lr.ph.preheader.i.i.i.new ], [ %i.yk, %.lr.ph.i328.i.i ] ; 5 uses
  %niter125 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter125.next.3, %.lr.ph.i328.i.i ]
  %i.xg = getelementptr inbounds nuw i8, ptr %i.vq, i64 %indvars.iv.i329.i.i
  %i.xh = load i8, ptr %i.xg, align 1
  %i.xi = zext i8 %i.xh to i64
  %i.xj = shl nuw nsw i64 %i.xi, 2
  %i.xk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.xj
  %i.xl = load <4 x i8>, ptr %i.xk, align 4
  store <4 x i8> %i.xl, ptr %.14651.i.i.i, align 1
  %i.xm = getelementptr inbounds nuw i8, ptr %.14651.i.i.i, i64 4
  %i.xn = getelementptr inbounds nuw i8, ptr %i.vq, i64 %indvars.iv.i329.i.i
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 1
  %i.xp = load i8, ptr %i.xo, align 1
  %i.xq = zext i8 %i.xp to i64
  %i.xr = shl nuw nsw i64 %i.xq, 2
  %i.xs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.xr
  %i.xt = load <4 x i8>, ptr %i.xs, align 4
  store <4 x i8> %i.xt, ptr %i.xm, align 1
  %i.xu = getelementptr inbounds nuw i8, ptr %.14651.i.i.i, i64 8
  %i.xv = getelementptr inbounds nuw i8, ptr %i.vq, i64 %indvars.iv.i329.i.i
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 2
  %i.xx = load i8, ptr %i.xw, align 1
  %i.xy = zext i8 %i.xx to i64
  %i.xz = shl nuw nsw i64 %i.xy, 2
  %i.ya = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.xz
  %i.yb = load <4 x i8>, ptr %i.ya, align 4
  store <4 x i8> %i.yb, ptr %i.xu, align 1
  %i.yc = getelementptr inbounds nuw i8, ptr %.14651.i.i.i, i64 12
  %i.yd = getelementptr inbounds nuw i8, ptr %i.vq, i64 %indvars.iv.i329.i.i
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 3
  %i.yf = load i8, ptr %i.ye, align 1
  %i.yg = zext i8 %i.yf to i64
  %i.yh = shl nuw nsw i64 %i.yg, 2
  %i.yi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yh
  %i.yj = load <4 x i8>, ptr %i.yi, align 4
  store <4 x i8> %i.yj, ptr %i.yc, align 1
  %i.yk = getelementptr inbounds nuw i8, ptr %.14651.i.i.i, i64 16 ; 2 uses
  %indvars.iv.next.i330.i.i.3 = add nuw nsw i64 %indvars.iv.i329.i.i, 4 ; 2 uses
  %niter125.next.3 = add nuw i64 %niter125, 4     ; 2 uses
  %niter125.ncmp.3 = icmp eq i64 %niter125.next.3, %unroll_iter124
  br i1 %niter125.ncmp.3, label %_m3dstbi__expand_png_palette.exit.i.i.loopexit34.unr-lcssa, label %.lr.ph.i328.i.i

_m3dstbi__expand_png_palette.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph55.i.i.i
  %lcmp.mod128.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod128.not, label %_m3dstbi__expand_png_palette.exit.i.i, label %.lr.ph55.i.i.i.epil.preheader

.lr.ph55.i.i.i.epil.preheader:                    ; preds = %_m3dstbi__expand_png_palette.exit.i.i.loopexit.unr-lcssa, %.lr.ph55.preheader.i.i.i
  %indvars.iv59.i.i.i.epil.init = phi i64 [ 0, %.lr.ph55.preheader.i.i.i ], [ %indvars.iv.next60.i.i.i.1, %_m3dstbi__expand_png_palette.exit.i.i.loopexit.unr-lcssa ]
  %.04553.i.i.i.epil.init = phi ptr [ %i.wa, %.lr.ph55.preheader.i.i.i ], [ %i.xf, %_m3dstbi__expand_png_palette.exit.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod129 = trunc i32 %i.vw to i1
  call void @llvm.assume(i1 %lcmp.mod129)
  %i.yl = getelementptr inbounds nuw i8, ptr %i.vq, i64 %indvars.iv59.i.i.i.epil.init
  %i.ym = load i8, ptr %i.yl, align 1
  %i.yn = zext i8 %i.ym to i64
  %i.yo = shl nuw nsw i64 %i.yn, 2
  %i.yp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yo ; 3 uses
  %i.yq = load i8, ptr %i.yp, align 4
  store i8 %i.yq, ptr %.04553.i.i.i.epil.init, align 1
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yp, i64 1
  %i.ys = load i8, ptr %i.yr, align 1
  %i.yt = getelementptr inbounds nuw i8, ptr %.04553.i.i.i.epil.init, i64 1
  store i8 %i.ys, ptr %i.yt, align 1
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yp, i64 2
  %i.yv = load i8, ptr %i.yu, align 2
  %i.yw = getelementptr inbounds nuw i8, ptr %.04553.i.i.i.epil.init, i64 2
  store i8 %i.yv, ptr %i.yw, align 1
  br label %_m3dstbi__expand_png_palette.exit.i.i

_m3dstbi__expand_png_palette.exit.i.i.loopexit34.unr-lcssa: ; preds = %.lr.ph.i328.i.i
  %lcmp.mod122.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod122.not, label %_m3dstbi__expand_png_palette.exit.i.i, label %.lr.ph.i328.i.i.epil.preheader

.lr.ph.i328.i.i.epil.preheader:                   ; preds = %_m3dstbi__expand_png_palette.exit.i.i.loopexit34.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i329.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i330.i.i.3, %_m3dstbi__expand_png_palette.exit.i.i.loopexit34.unr-lcssa ]
  %.14651.i.i.i.epil.init = phi ptr [ %i.wa, %.lr.ph.preheader.i.i.i ], [ %i.yk, %_m3dstbi__expand_png_palette.exit.i.i.loopexit34.unr-lcssa ]
  %lcmp.mod123 = icmp ne i64 %xtraiter120, 0
  call void @llvm.assume(i1 %lcmp.mod123)
  br label %.lr.ph.i328.i.i.epil

.lr.ph.i328.i.i.epil:                             ; preds = %.lr.ph.i328.i.i.epil, %.lr.ph.i328.i.i.epil.preheader
  %indvars.iv.i329.i.i.epil = phi i64 [ %indvars.iv.i329.i.i.epil.init, %.lr.ph.i328.i.i.epil.preheader ], [ %indvars.iv.next.i330.i.i.epil, %.lr.ph.i328.i.i.epil ] ; 2 uses
  %.14651.i.i.i.epil = phi ptr [ %.14651.i.i.i.epil.init, %.lr.ph.i328.i.i.epil.preheader ], [ %i.zd, %.lr.ph.i328.i.i.epil ] ; 2 uses
  %epil.iter121 = phi i64 [ 0, %.lr.ph.i328.i.i.epil.preheader ], [ %epil.iter121.next, %.lr.ph.i328.i.i.epil ]
  %i.yx = getelementptr inbounds nuw i8, ptr %i.vq, i64 %indvars.iv.i329.i.i.epil
  %i.yy = load i8, ptr %i.yx, align 1
  %i.yz = zext i8 %i.yy to i64
  %i.za = shl nuw nsw i64 %i.yz, 2
  %i.zb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.za
  %i.zc = load <4 x i8>, ptr %i.zb, align 4
  store <4 x i8> %i.zc, ptr %.14651.i.i.i.epil, align 1
  %i.zd = getelementptr inbounds nuw i8, ptr %.14651.i.i.i.epil, i64 4
  %indvars.iv.next.i330.i.i.epil = add nuw nsw i64 %indvars.iv.i329.i.i.epil, 1
  %epil.iter121.next = add i64 %epil.iter121, 1   ; 2 uses
  %epil.iter121.cmp.not = icmp eq i64 %epil.iter121.next, %xtraiter120
  br i1 %epil.iter121.cmp.not, label %_m3dstbi__expand_png_palette.exit.i.i, label %.lr.ph.i328.i.i.epil, !llvm.loop !63

_m3dstbi__expand_png_palette.exit.i.i:            ; preds = %_m3dstbi__expand_png_palette.exit.i.i.loopexit34.unr-lcssa, %.lr.ph.i328.i.i.epil, %.lr.ph55.i.i.i.epil.preheader, %_m3dstbi__expand_png_palette.exit.i.i.loopexit.unr-lcssa, %.preheader.i332.i.i, %.preheader49.i.i.i
  call void @free(ptr noundef %i.vq) #54
  br label %bb.df

bb.cv:                                            ; preds = %_m3dstbi__compute_transparency16.exit.i.i
  %i.ze = load i32, ptr %i.am, align 8
  %i.zf = add nsw i32 %i.ze, 1
  store i32 %i.zf, ptr %i.am, align 8
  br label %bb.df

bb.cw:                                            ; preds = %_m3dstbi__get_chunk_header.exit.i.i
  %.not272.i.i = icmp eq i32 %.0201.i.i, 0
  br i1 %.not272.i.i, label %bb.cx, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

bb.cx:                                            ; preds = %bb.cw
  %i.zg = and i32 %i.dg, 536870912
  %i.zh = icmp eq i32 %i.zg, 0
  br i1 %i.zh, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.zi = icmp slt i32 %i.de, 0
  br i1 %i.zi, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store ptr %i.ax, ptr %i.h, align 8
  br label %_m3dstbi__skip.exit.i.i

bb.da:                                            ; preds = %bb.cy
  %i.zj = zext nneg i32 %i.de to i64
  %i.zk = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.zj ; 3 uses
  store ptr %i.zk, ptr %i.h, align 8
  br label %_m3dstbi__skip.exit.i.i

.lr.ph579.i.i.epil:                               ; preds = %.lr.ph579.preheader.i.i, %_m3dstbi__get16be.exit307.i.i.1
  %.epil.init79 = phi ptr [ %i.db, %.lr.ph579.preheader.i.i ], [ %i.lp, %_m3dstbi__get16be.exit307.i.i.1 ]
  %.epil.init81 = phi ptr [ %i.dc, %.lr.ph579.preheader.i.i ], [ %i.lq, %_m3dstbi__get16be.exit307.i.i.1 ]
  %.epil.init83 = phi ptr [ %i.dc, %.lr.ph579.preheader.i.i ], [ %i.lr, %_m3dstbi__get16be.exit307.i.i.1 ] ; 3 uses
  %indvars.iv776.i.i.epil.init = phi i64 [ 0, %.lr.ph579.preheader.i.i ], [ %indvars.iv.next777.i.i.1, %_m3dstbi__get16be.exit307.i.i.1 ]
  %i.zl = icmp ult ptr %.epil.init83, %i.ax
  br i1 %i.zl, label %bb.db, label %_m3dstbi__get8.exit.i304.i.i.epil

bb.db:                                            ; preds = %.lr.ph579.i.i.epil
  %i.zm = getelementptr inbounds nuw i8, ptr %.epil.init83, i64 1 ; 4 uses
  store ptr %i.zm, ptr %i.h, align 8
  br label %_m3dstbi__get8.exit.i304.i.i.epil

_m3dstbi__get8.exit.i304.i.i.epil:                ; preds = %bb.db, %.lr.ph579.i.i.epil
  %i.zn = phi ptr [ %i.zm, %bb.db ], [ %.epil.init79, %.lr.ph579.i.i.epil ]
  %i.zo = phi ptr [ %i.zm, %bb.db ], [ %.epil.init81, %.lr.ph579.i.i.epil ]
  %i.zp = phi ptr [ %i.zm, %bb.db ], [ %.epil.init83, %.lr.ph579.i.i.epil ] ; 3 uses
  %i.zq = icmp ult ptr %i.zp, %i.ax
  br i1 %i.zq, label %bb.dc, label %_m3dstbi__get16be.exit307.i.i.epil

bb.dc:                                            ; preds = %_m3dstbi__get8.exit.i304.i.i.epil
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zp, i64 1 ; 3 uses
  store ptr %i.zr, ptr %i.h, align 8
  %i.zs = load i8, ptr %i.zp, align 1
  %i.zt = mul i8 %i.jr, %i.zs
  br label %_m3dstbi__get16be.exit307.i.i.epil

_m3dstbi__get16be.exit307.i.i.epil:               ; preds = %bb.dc, %_m3dstbi__get8.exit.i304.i.i.epil
  %i.zu = phi ptr [ %i.zr, %bb.dc ], [ %i.zn, %_m3dstbi__get8.exit.i304.i.i.epil ]
  %i.zv = phi ptr [ %i.zr, %bb.dc ], [ %i.zo, %_m3dstbi__get8.exit.i304.i.i.epil ]
  %.0.i2.i306.i.i.epil = phi i8 [ %i.zt, %bb.dc ], [ 0, %_m3dstbi__get8.exit.i304.i.i.epil ]
  %i.zw = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv776.i.i.epil.init
  store i8 %.0.i2.i306.i.i.epil, ptr %i.zw, align 1
  br label %_m3dstbi__skip.exit.i.i

_m3dstbi__skip.exit.i.i.loopexit40.unr-lcssa:     ; preds = %_m3dstbi__get8.exit302.i.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_m3dstbi__skip.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_m3dstbi__skip.exit.i.i.loopexit40.unr-lcssa, %.lr.ph.i.i
  %.epil.init = phi ptr [ %i.db, %.lr.ph.i.i ], [ %i.jg, %_m3dstbi__skip.exit.i.i.loopexit40.unr-lcssa ]
  %.epil.init71 = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %i.jh, %_m3dstbi__skip.exit.i.i.loopexit40.unr-lcssa ]
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %_m3dstbi__skip.exit.i.i.loopexit40.unr-lcssa ]
  %.epil.init73 = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %i.ji, %_m3dstbi__skip.exit.i.i.loopexit40.unr-lcssa ] ; 3 uses
  %lcmp.mod76 = trunc i32 %.0.i2.i4.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod76)
  %i.zx = icmp ult ptr %.epil.init73, %i.ax
  br i1 %i.zx, label %bb.dd, label %_m3dstbi__get8.exit302.i.i.epil

bb.dd:                                            ; preds = %.epil.preheader
  %i.zy = getelementptr inbounds nuw i8, ptr %.epil.init73, i64 1 ; 3 uses
  store ptr %i.zy, ptr %i.h, align 8
  %i.zz = load i8, ptr %.epil.init73, align 1
  br label %_m3dstbi__get8.exit302.i.i.epil

_m3dstbi__get8.exit302.i.i.epil:                  ; preds = %bb.dd, %.epil.preheader
  %i.aaa = phi ptr [ %i.zy, %bb.dd ], [ %.epil.init, %.epil.preheader ]
  %i.aab = phi ptr [ %i.zy, %bb.dd ], [ %.epil.init71, %.epil.preheader ]
  %.0.i301.i.i.epil = phi i8 [ %i.zz, %bb.dd ], [ 0, %.epil.preheader ]
  %i.aac = shl nuw nsw i64 %indvars.iv.i.i.epil.init, 2
  %i.aad = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aac
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 3
  store i8 %.0.i301.i.i.epil, ptr %i.aae, align 1
  br label %_m3dstbi__skip.exit.i.i

_m3dstbi__skip.exit.i.i:                          ; preds = %_m3dstbi__get8.exit302.i.i.epil, %_m3dstbi__skip.exit.i.i.loopexit40.unr-lcssa, %_m3dstbi__get16be.exit.i.i, %_m3dstbi__get8.exit300.i.i, %_m3dstbi__get16be.exit307.i.i.epil, %bb.da, %bb.cz, %_m3dstbi__getn.exit.i.i, %.preheader391.i.i, %.preheader393.i.i, %.preheader395.i.i, %.preheader.i.i, %bb.ae, %bb.ad, %bb.l, %bb.k
  %i.aaf = phi ptr [ %i.at, %bb.ae ], [ %.pre788.i.i, %_m3dstbi__getn.exit.i.i ], [ %i.at, %bb.l ], [ %i.at, %bb.da ], [ %i.at, %.preheader391.i.i ], [ %i.at, %.preheader393.i.i ], [ %i.at, %.preheader.i.i ], [ %i.at, %bb.k ], [ %i.at, %bb.ad ], [ %i.at, %bb.cz ], [ %i.at, %.preheader395.i.i ], [ %i.at, %_m3dstbi__get16be.exit.i.i ], [ %i.at, %_m3dstbi__get8.exit300.i.i ], [ %i.at, %_m3dstbi__get16be.exit307.i.i.epil ], [ %i.at, %_m3dstbi__skip.exit.i.i.loopexit40.unr-lcssa ], [ %i.at, %_m3dstbi__get8.exit302.i.i.epil ]
  %i.aag = phi ptr [ %i.gz, %bb.ae ], [ %i.mn, %_m3dstbi__getn.exit.i.i ], [ %i.dj, %bb.l ], [ %i.zk, %bb.da ], [ %i.db, %.preheader391.i.i ], [ %i.db, %.preheader393.i.i ], [ %i.db, %.preheader.i.i ], [ %i.ax, %bb.k ], [ %i.gz, %bb.ad ], [ %i.ax, %bb.cz ], [ %i.db, %.preheader395.i.i ], [ %i.km, %_m3dstbi__get16be.exit.i.i ], [ %i.ij, %_m3dstbi__get8.exit300.i.i ], [ %i.zu, %_m3dstbi__get16be.exit307.i.i.epil ], [ %i.jg, %_m3dstbi__skip.exit.i.i.loopexit40.unr-lcssa ], [ %i.aaa, %_m3dstbi__get8.exit302.i.i.epil ]
  %i.aah = phi i32 [ %i.fy, %bb.ae ], [ %i.av, %_m3dstbi__getn.exit.i.i ], [ %i.av, %bb.l ], [ %i.av, %bb.da ], [ 16, %.preheader391.i.i ], [ %i.av, %.preheader393.i.i ], [ %i.av, %.preheader.i.i ], [ %i.av, %bb.k ], [ %i.fy, %bb.ad ], [ %i.av, %bb.cz ], [ %i.av, %.preheader395.i.i ], [ 16, %_m3dstbi__get16be.exit.i.i ], [ %i.av, %_m3dstbi__get8.exit300.i.i ], [ %i.av, %_m3dstbi__get16be.exit307.i.i.epil ], [ %i.av, %_m3dstbi__skip.exit.i.i.loopexit40.unr-lcssa ], [ %i.av, %_m3dstbi__get8.exit302.i.i.epil ]
  %i.aai = phi ptr [ %i.aw, %bb.ae ], [ %i.mf, %_m3dstbi__getn.exit.i.i ], [ %i.aw, %bb.l ], [ %i.aw, %bb.da ], [ null, %.preheader391.i.i ], [ null, %.preheader393.i.i ], [ %i.aw, %.preheader.i.i ], [ %i.aw, %bb.k ], [ %i.aw, %bb.ad ], [ %i.aw, %bb.cz ], [ null, %.preheader395.i.i ], [ null, %_m3dstbi__get16be.exit.i.i ], [ %i.aw, %_m3dstbi__get8.exit300.i.i ], [ null, %_m3dstbi__get16be.exit307.i.i.epil ], [ null, %_m3dstbi__skip.exit.i.i.loopexit40.unr-lcssa ], [ null, %_m3dstbi__get8.exit302.i.i.epil ]
  %i.aaj = phi ptr [ %i.at, %bb.ae ], [ %.pre788.i.i, %_m3dstbi__getn.exit.i.i ], [ %i.ax, %bb.l ], [ %i.ax, %bb.da ], [ %i.ax, %.preheader391.i.i ], [ %i.ax, %.preheader393.i.i ], [ %i.ax, %.preheader.i.i ], [ %i.ax, %bb.k ], [ %i.at, %bb.ad ], [ %i.ax, %bb.cz ], [ %i.ax, %.preheader395.i.i ], [ %i.ax, %_m3dstbi__get16be.exit.i.i ], [ %i.ax, %_m3dstbi__get8.exit300.i.i ], [ %i.ax, %_m3dstbi__get16be.exit307.i.i.epil ], [ %i.ax, %_m3dstbi__skip.exit.i.i.loopexit40.unr-lcssa ], [ %i.ax, %_m3dstbi__get8.exit302.i.i.epil ] ; 5 uses
  %i.aak = phi ptr [ %i.gz, %bb.ae ], [ %i.mn, %_m3dstbi__getn.exit.i.i ], [ %i.dj, %bb.l ], [ %i.zk, %bb.da ], [ %i.dc, %.preheader391.i.i ], [ %i.dc, %.preheader393.i.i ], [ %i.dc, %.preheader.i.i ], [ %i.ax, %bb.k ], [ %i.gz, %bb.ad ], [ %i.ax, %bb.cz ], [ %i.dc, %.preheader395.i.i ], [ %i.kn, %_m3dstbi__get16be.exit.i.i ], [ %i.ik, %_m3dstbi__get8.exit300.i.i ], [ %i.zv, %_m3dstbi__get16be.exit307.i.i.epil ], [ %i.jh, %_m3dstbi__skip.exit.i.i.loopexit40.unr-lcssa ], [ %i.aab, %_m3dstbi__get8.exit302.i.i.epil ] ; 3 uses
  %.3223.i.i = phi i8 [ %.1221.i.i, %bb.ae ], [ %.0220.i.i, %_m3dstbi__getn.exit.i.i ], [ %.0220.i.i, %bb.l ], [ %.0220.i.i, %bb.da ], [ 0, %.preheader391.i.i ], [ 0, %.preheader393.i.i ], [ %.0220.i.i, %.preheader.i.i ], [ %.0220.i.i, %bb.k ], [ 0, %bb.ad ], [ %.0220.i.i, %bb.cz ], [ 4, %.preheader395.i.i ], [ 0, %_m3dstbi__get16be.exit.i.i ], [ %.0220.i.i, %_m3dstbi__get8.exit300.i.i ], [ 0, %_m3dstbi__get16be.exit307.i.i.epil ], [ 4, %_m3dstbi__skip.exit.i.i.loopexit40.unr-lcssa ], [ 4, %_m3dstbi__get8.exit302.i.i.epil ]
  %.1218.i.i = phi i8 [ %.0217.i.i, %bb.ae ], [ %.0217.i.i, %_m3dstbi__getn.exit.i.i ], [ %.0217.i.i, %bb.l ], [ %.0217.i.i, %bb.da ], [ 1, %.preheader391.i.i ], [ 1, %.preheader393.i.i ], [ %.0217.i.i, %.preheader.i.i ], [ %.0217.i.i, %bb.k ], [ %.0217.i.i, %bb.ad ], [ %.0217.i.i, %bb.cz ], [ %.0217.i.i, %.preheader395.i.i ], [ 1, %_m3dstbi__get16be.exit.i.i ], [ %.0217.i.i, %_m3dstbi__get8.exit300.i.i ], [ 1, %_m3dstbi__get16be.exit307.i.i.epil ], [ %.0217.i.i, %_m3dstbi__skip.exit.i.i.loopexit40.unr-lcssa ], [ %.0217.i.i, %_m3dstbi__get8.exit302.i.i.epil ]
  %.1215.i.i = phi i32 [ %.0214.i.i, %bb.ae ], [ %i.lw, %_m3dstbi__getn.exit.i.i ], [ %.0214.i.i, %bb.l ], [ %.0214.i.i, %bb.da ], [ %.0214.i.i, %.preheader391.i.i ], [ %.0214.i.i, %.preheader393.i.i ], [ %.0214.i.i, %.preheader.i.i ], [ %.0214.i.i, %bb.k ], [ %.0214.i.i, %bb.ad ], [ %.0214.i.i, %bb.cz ], [ %.0214.i.i, %.preheader395.i.i ], [ %.0214.i.i, %_m3dstbi__get16be.exit.i.i ], [ %.0214.i.i, %_m3dstbi__get8.exit300.i.i ], [ %.0214.i.i, %_m3dstbi__get16be.exit307.i.i.epil ], [ %.0214.i.i, %_m3dstbi__skip.exit.i.i.loopexit40.unr-lcssa ], [ %.0214.i.i, %_m3dstbi__get8.exit302.i.i.epil ]
  %.4.i.i = phi i32 [ %.0210.i.i, %bb.ae ], [ %.3213.i.i, %_m3dstbi__getn.exit.i.i ], [ %.0210.i.i, %bb.l ], [ %.0210.i.i, %bb.da ], [ %.0210.i.i, %.preheader391.i.i ], [ %.0210.i.i, %.preheader393.i.i ], [ %.0210.i.i, %.preheader.i.i ], [ %.0210.i.i, %bb.k ], [ %.0210.i.i, %bb.ad ], [ %.0210.i.i, %bb.cz ], [ %.0210.i.i, %.preheader395.i.i ], [ %.0210.i.i, %_m3dstbi__get16be.exit.i.i ], [ %.0210.i.i, %_m3dstbi__get8.exit300.i.i ], [ %.0210.i.i, %_m3dstbi__get16be.exit307.i.i.epil ], [ %.0210.i.i, %_m3dstbi__skip.exit.i.i.loopexit40.unr-lcssa ], [ %.0210.i.i, %_m3dstbi__get8.exit302.i.i.epil ]
  %.1206.i.i = phi i32 [ %.0205.i.i, %bb.ae ], [ %.0205.i.i, %_m3dstbi__getn.exit.i.i ], [ %.0205.i.i, %bb.l ], [ %.0205.i.i, %bb.da ], [ %.0205.i.i, %.preheader391.i.i ], [ %.0205.i.i, %.preheader393.i.i ], [ %.zext.i.i, %.preheader.i.i ], [ %.0205.i.i, %bb.k ], [ %.0205.i.i, %bb.ad ], [ %.0205.i.i, %bb.cz ], [ %.0205.i.i, %.preheader395.i.i ], [ %.0205.i.i, %_m3dstbi__get16be.exit.i.i ], [ %.zext.i.i, %_m3dstbi__get8.exit300.i.i ], [ %.0205.i.i, %_m3dstbi__get16be.exit307.i.i.epil ], [ %.0205.i.i, %_m3dstbi__skip.exit.i.i.loopexit40.unr-lcssa ], [ %.0205.i.i, %_m3dstbi__get8.exit302.i.i.epil ]
  %.2203.i.i = phi i32 [ 0, %bb.ae ], [ 0, %_m3dstbi__getn.exit.i.i ], [ %.0201.i.i, %bb.l ], [ 0, %bb.da ], [ 0, %.preheader391.i.i ], [ 0, %.preheader393.i.i ], [ 0, %.preheader.i.i ], [ %.0201.i.i, %bb.k ], [ 0, %bb.ad ], [ 0, %bb.cz ], [ 0, %.preheader395.i.i ], [ 0, %_m3dstbi__get16be.exit.i.i ], [ 0, %_m3dstbi__get8.exit300.i.i ], [ 0, %_m3dstbi__get16be.exit307.i.i.epil ], [ 0, %_m3dstbi__skip.exit.i.i.loopexit40.unr-lcssa ], [ 0, %_m3dstbi__get8.exit302.i.i.epil ]
  %.2197.i.i = phi i32 [ %i.ha, %bb.ae ], [ %.0195.i.i, %_m3dstbi__getn.exit.i.i ], [ %.0195.i.i, %bb.l ], [ %.0195.i.i, %bb.da ], [ %.0195.i.i, %.preheader391.i.i ], [ %.0195.i.i, %.preheader393.i.i ], [ %.0195.i.i, %.preheader.i.i ], [ %.0195.i.i, %bb.k ], [ %i.ha, %bb.ad ], [ %.0195.i.i, %bb.cz ], [ %.0195.i.i, %.preheader395.i.i ], [ %.0195.i.i, %_m3dstbi__get16be.exit.i.i ], [ %.0195.i.i, %_m3dstbi__get8.exit300.i.i ], [ %.0195.i.i, %_m3dstbi__get16be.exit307.i.i.epil ], [ %.0195.i.i, %_m3dstbi__skip.exit.i.i.loopexit40.unr-lcssa ], [ %.0195.i.i, %_m3dstbi__get8.exit302.i.i.epil ]
  %.2193.i.i = phi i32 [ %i.gl, %bb.ae ], [ %.0191.i.i, %_m3dstbi__getn.exit.i.i ], [ %.0191.i.i, %bb.l ], [ %.0191.i.i, %bb.da ], [ %.0191.i.i, %.preheader391.i.i ], [ %.0191.i.i, %.preheader393.i.i ], [ %.0191.i.i, %.preheader.i.i ], [ %.0191.i.i, %bb.k ], [ %i.gl, %bb.ad ], [ %.0191.i.i, %bb.cz ], [ %.0191.i.i, %.preheader395.i.i ], [ %.0191.i.i, %_m3dstbi__get16be.exit.i.i ], [ %.0191.i.i, %_m3dstbi__get8.exit300.i.i ], [ %.0191.i.i, %_m3dstbi__get16be.exit307.i.i.epil ], [ %.0191.i.i, %_m3dstbi__skip.exit.i.i.loopexit40.unr-lcssa ], [ %.0191.i.i, %_m3dstbi__get8.exit302.i.i.epil ]
  %i.aal = icmp ult ptr %i.aak, %i.aaj            ; 2 uses
  %.idx.i.i = zext i1 %i.aal to i64
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aak, i64 %.idx.i.i ; 2 uses
  %i.aan = icmp ult ptr %i.aam, %i.aaj            ; 2 uses
  %.idx587.i.i = zext i1 %i.aan to i64
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aam, i64 %.idx587.i.i ; 2 uses
  %i.aap = or i1 %i.aal, %i.aan
  %i.aaq = icmp ult ptr %i.aao, %i.aaj            ; 2 uses
  %spec.select.idx.i.i = zext i1 %i.aaq to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.aao, i64 %spec.select.idx.i.i ; 2 uses
  %i.aar = or i1 %i.aap, %i.aaq
  %i.aas = icmp ult ptr %spec.select.i.i, %i.aaj  ; 2 uses
  %i.aat = or i1 %i.aar, %i.aas
  br i1 %i.aat, label %bb.de, label %_m3dstbi__check_png_header.exit.i.i.backedge

bb.de:                                            ; preds = %_m3dstbi__skip.exit.i.i
  %spec.select386.idx.i.i = zext i1 %i.aas to i64
  %spec.select386.i.i = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 %spec.select386.idx.i.i ; 3 uses
  store ptr %spec.select386.i.i, ptr %i.h, align 8
  br label %_m3dstbi__check_png_header.exit.i.i.backedge

_m3dstbi__check_png_header.exit.i.i.backedge:     ; preds = %bb.de, %_m3dstbi__skip.exit.i.i
  %.be = phi ptr [ %spec.select386.i.i, %bb.de ], [ %i.aag, %_m3dstbi__skip.exit.i.i ]
  %.be44 = phi ptr [ %spec.select386.i.i, %bb.de ], [ %i.aak, %_m3dstbi__skip.exit.i.i ]
  br label %_m3dstbi__check_png_header.exit.i.i

_m3dstbi__parse_png_file.exit.thread.sink.split.i: ; preds = %bb.cx, %bb.cw, %bb.bi, %bb.bg, %bb.bb, %bb.ba, %bb.ar, %bb.an, %bb.al, %bb.ag, %bb.af, %bb.ae, %bb.ad, %_m3dstbi__get8.exit294.thread.i.i, %_m3dstbi__get8.exit294.i.i, %_m3dstbi__get8.exit292.i.i, %_m3dstbi__get8.exit290.i.i, %.critedge.i.i, %bb.ab, %_m3dstbi__get8.exit288.i.i, %_m3dstbi__get8.exit.i.i, %_m3dstbi__get32be.exit286.i.i, %_m3dstbi__get32be.exit.i.i, %bb.m, %_m3dstbi__get8.exit.i.i.i, %_m3dstbi__get8.exit.7.i.i.i, %_m3dstbi__get8.exit.6.i.i.i, %_m3dstbi__get8.exit.5.i.i.i, %_m3dstbi__get8.exit.4.i.i.i, %_m3dstbi__get8.exit.3.i.i.i, %_m3dstbi__get8.exit.2.i.i.i, %_m3dstbi__get8.exit.1.i.i.i, %bb.a
  %.str.326.sink.i = phi ptr [ @.str.326, %bb.a ], [ @.str.326, %_m3dstbi__get8.exit.4.i.i.i ], [ @.str.326, %_m3dstbi__get8.exit.6.i.i.i ], [ @.str.326, %_m3dstbi__get8.exit.5.i.i.i ], [ @.str.326, %_m3dstbi__get8.exit.3.i.i.i ], [ @.str.326, %_m3dstbi__get8.exit.2.i.i.i ], [ @.str.326, %_m3dstbi__get8.exit.1.i.i.i ], [ @.str.326, %_m3dstbi__get8.exit.i.i.i ], [ @.str.326, %_m3dstbi__get8.exit.7.i.i.i ], [ @.str.319, %_m3dstbi__get8.exit294.thread.i.i ], [ @.str.319, %bb.ab ], [ @.str.324, %bb.ad ], [ @.str.319, %_m3dstbi__get8.exit292.i.i ], [ @.str.319, %_m3dstbi__get8.exit290.i.i ], [ @.str.319, %.critedge.i.i ], [ @.str.319, %_m3dstbi__get8.exit288.i.i ], [ @.str.323, %_m3dstbi__get8.exit.i.i ], [ @.str.322, %_m3dstbi__get32be.exit286.i.i ], [ @.str.322, %_m3dstbi__get32be.exit.i.i ], [ @.str.325, %bb.cx ], [ @.str.319, %bb.m ], [ @.str.319, %bb.cw ], [ @.str.319, %bb.bi ], [ @.str.319, %bb.ae ], [ @.str.319, %bb.af ], [ @.str.319, %bb.ag ], [ @.str.319, %bb.al ], [ @.str.319, %bb.an ], [ @.str.319, %bb.ar ], [ @.str.319, %bb.ba ], [ @.str.319, %bb.bb ], [ @.str.320, %bb.bg ], [ @.str.319, %_m3dstbi__get8.exit294.i.i ]
  store ptr %.str.326.sink.i, ptr @_m3dstbi__g_failure_reason, align 8
  br label %_m3dstbi__parse_png_file.exit.thread.i
end_hunk_3
begin_hunk_4_@m3d_load:bb.a
_m3d_getidx.exit2360.peel3101:                    ; preds = %.sink.split.i2356.peel3098, %bb.fd, %.peel.next
  %.11969.peel3102 = phi float [ %i.acb, %.sink.split.i2356.peel3098 ], [ %.11969.peel, %.peel.next ], [ %i.acb, %bb.fd ] ; 3 uses
  %.13.peel3103 = phi ptr [ %i.acp, %.sink.split.i2356.peel3098 ], [ %.13.peel, %.peel.next ], [ %.13.peel, %bb.fd ] ; 7 uses
  %i.acq = load i8, ptr %i.fa, align 8
  %i.acr = sext i8 %i.acq to i64
  %i.acs = and i64 %i.acr, 4294967295
  %i.act = icmp samesign ugt i64 %i.acs, 2
  br i1 %i.act, label %.peel.next3096, label %._crit_edge

.peel.next3096:                                   ; preds = %_m3d_getidx.exit2360.peel3101
  %i.acu = load i8, ptr %i.lb, align 2            ; 2 uses
  %.not2253.peel3106 = icmp eq i8 %i.acu, 0
  br i1 %.not2253.peel3106, label %_m3d_getidx.exit2360.peel3110, label %bb.fh

bb.fh:                                            ; preds = %.peel.next3096
  %i.acv = uitofp i8 %i.acu to float
  %i.acw = fdiv float %i.acv, 2.550000e+02
  %i.acx = load ptr, ptr %i.kb, align 8
  %i.acy = getelementptr inbounds nuw [32 x i8], ptr %i.acx, i64 %indvars.iv3129
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 24
  store float %i.acw, ptr %i.acz, align 4
  %i.ada = load ptr, ptr %i.kb, align 8
  %i.adb = getelementptr inbounds nuw [32 x i8], ptr %i.ada, i64 %indvars.iv3129 ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 24
  %i.add = load float, ptr %i.adc, align 4
  %i.ade = fadd float %.11969.peel3102, %i.add    ; 2 uses
  %i.adf = load i8, ptr %i.eu, align 1
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adb, i64 8
  switch i8 %i.adf, label %_m3d_getidx.exit2360.peel3110 [
    i8 1, label %bb.fk
    i8 2, label %bb.fj
    i8 4, label %bb.fi
  ]

bb.fi:                                            ; preds = %bb.fh
  %i.adh = load i32, ptr %.13.peel3103, align 4
  br label %.sink.split.i2356.peel3107

bb.fj:                                            ; preds = %bb.fh
  %i.adi = load i16, ptr %.13.peel3103, align 2   ; 3 uses
  %i.adj = icmp ugt i16 %i.adi, -3
  %i.adk = sext i16 %i.adi to i32
  %i.adl = zext i16 %i.adi to i32
  %i.adm = select i1 %i.adj, i32 %i.adk, i32 %i.adl
  br label %.sink.split.i2356.peel3107

bb.fk:                                            ; preds = %bb.fh
  %i.adn = load i8, ptr %.13.peel3103, align 1    ; 3 uses
  %i.ado = icmp ugt i8 %i.adn, -3
  %i.adp = sext i8 %i.adn to i32
  %i.adq = zext i8 %i.adn to i32
  %i.adr = select i1 %i.ado, i32 %i.adp, i32 %i.adq
  br label %.sink.split.i2356.peel3107

.sink.split.i2356.peel3107:                       ; preds = %bb.fk, %bb.fj, %bb.fi
  %.sink16.i2357.peel3108 = phi i32 [ %i.adh, %bb.fi ], [ %i.adm, %bb.fj ], [ %i.adr, %bb.fk ]
  %.sink.i2358.peel3109 = phi i64 [ 4, %bb.fi ], [ 2, %bb.fj ], [ 1, %bb.fk ]
  store i32 %.sink16.i2357.peel3108, ptr %i.adg, align 4
  %i.ads = getelementptr inbounds nuw i8, ptr %.13.peel3103, i64 %.sink.i2358.peel3109
  br label %_m3d_getidx.exit2360.peel3110

_m3d_getidx.exit2360.peel3110:                    ; preds = %.sink.split.i2356.peel3107, %bb.fh, %.peel.next3096
  %.11969.peel3111 = phi float [ %i.ade, %.sink.split.i2356.peel3107 ], [ %.11969.peel3102, %.peel.next3096 ], [ %i.ade, %bb.fh ] ; 3 uses
  %.13.peel3112 = phi ptr [ %i.ads, %.sink.split.i2356.peel3107 ], [ %.13.peel3103, %.peel.next3096 ], [ %.13.peel3103, %bb.fh ] ; 7 uses
  %i.adt = load i8, ptr %i.fa, align 8
  %.not3465 = icmp ult i8 %i.adt, 4
  br i1 %.not3465, label %._crit_edge, label %.peel.next3105

.peel.next3105:                                   ; preds = %_m3d_getidx.exit2360.peel3110
  %i.adu = load i8, ptr %i.lc, align 1            ; 2 uses
  %.not2253.peel3115 = icmp eq i8 %i.adu, 0
  br i1 %.not2253.peel3115, label %_m3d_getidx.exit2360.peel3119, label %bb.fl

bb.fl:                                            ; preds = %.peel.next3105
  %i.adv = uitofp i8 %i.adu to float
  %i.adw = fdiv float %i.adv, 2.550000e+02
  %i.adx = load ptr, ptr %i.kb, align 8
  %i.ady = getelementptr inbounds nuw [32 x i8], ptr %i.adx, i64 %indvars.iv3129
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 28
  store float %i.adw, ptr %i.adz, align 4
  %i.aea = load ptr, ptr %i.kb, align 8
  %i.aeb = getelementptr inbounds nuw [32 x i8], ptr %i.aea, i64 %indvars.iv3129 ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 28
  %i.aed = load float, ptr %i.aec, align 4
  %i.aee = fadd float %.11969.peel3111, %i.aed    ; 2 uses
  %i.aef = load i8, ptr %i.eu, align 1
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aeb, i64 12
  switch i8 %i.aef, label %_m3d_getidx.exit2360.peel3119 [
    i8 1, label %bb.fo
    i8 2, label %bb.fn
    i8 4, label %bb.fm
  ]

bb.fm:                                            ; preds = %bb.fl
  %i.aeh = load i32, ptr %.13.peel3112, align 4
  br label %.sink.split.i2356.peel3116

bb.fn:                                            ; preds = %bb.fl
  %i.aei = load i16, ptr %.13.peel3112, align 2   ; 3 uses
  %i.aej = icmp ugt i16 %i.aei, -3
  %i.aek = sext i16 %i.aei to i32
  %i.ael = zext i16 %i.aei to i32
  %i.aem = select i1 %i.aej, i32 %i.aek, i32 %i.ael
  br label %.sink.split.i2356.peel3116

bb.fo:                                            ; preds = %bb.fl
  %i.aen = load i8, ptr %.13.peel3112, align 1    ; 3 uses
  %i.aeo = icmp ugt i8 %i.aen, -3
  %i.aep = sext i8 %i.aen to i32
  %i.aeq = zext i8 %i.aen to i32
  %i.aer = select i1 %i.aeo, i32 %i.aep, i32 %i.aeq
  br label %.sink.split.i2356.peel3116

.sink.split.i2356.peel3116:                       ; preds = %bb.fo, %bb.fn, %bb.fm
  %.sink16.i2357.peel3117 = phi i32 [ %i.aeh, %bb.fm ], [ %i.aem, %bb.fn ], [ %i.aer, %bb.fo ]
  %.sink.i2358.peel3118 = phi i64 [ 4, %bb.fm ], [ 2, %bb.fn ], [ 1, %bb.fo ]
  store i32 %.sink16.i2357.peel3117, ptr %i.aeg, align 4
  %i.aes = getelementptr inbounds nuw i8, ptr %.13.peel3112, i64 %.sink.i2358.peel3118
  br label %_m3d_getidx.exit2360.peel3119

_m3d_getidx.exit2360.peel3119:                    ; preds = %.sink.split.i2356.peel3116, %bb.fl, %.peel.next3105
  %.11969.peel3120 = phi float [ %i.aee, %.sink.split.i2356.peel3116 ], [ %.11969.peel3111, %.peel.next3105 ], [ %i.aee, %bb.fl ] ; 3 uses
  %.13.peel3121 = phi ptr [ %i.aes, %.sink.split.i2356.peel3116 ], [ %.13.peel3112, %.peel.next3105 ], [ %.13.peel3112, %bb.fl ] ; 3 uses
  %i.aet = load i8, ptr %i.fa, align 8            ; 3 uses
  %i.aeu = sext i8 %i.aet to i64                  ; 2 uses
  %i.aev = and i64 %i.aeu, 4294967295             ; 3 uses
  %i.aew = icmp samesign ugt i64 %i.aev, 4
  br i1 %i.aew, label %.peel.next3114.preheader, label %._crit_edge

.peel.next3114.preheader:                         ; preds = %_m3d_getidx.exit2360.peel3119
  %i.aex = add nsw i64 %i.aev, -5
  %xtraiter = and i64 %i.aeu, 3                   ; 2 uses
  %i.aey = icmp ult i64 %i.aex, 3
  br i1 %i.aey, label %.peel.next3114.epil.preheader, label %.peel.next3114.preheader.new

.peel.next3114.preheader.new:                     ; preds = %.peel.next3114.preheader
  %i.aez = add nsw i64 %i.aev, -4
  %unroll_iter = sub nsw i64 %i.aez, %xtraiter
  br label %.peel.next3114

.peel.next3114:                                   ; preds = %_m3d_getidx.exit2360.3, %.peel.next3114.preheader.new
  %indvars.iv3092 = phi i64 [ 4, %.peel.next3114.preheader.new ], [ %indvars.iv.next3093.3, %_m3d_getidx.exit2360.3 ] ; 5 uses
  %.122818 = phi ptr [ %.13.peel3121, %.peel.next3114.preheader.new ], [ %.13.3, %_m3d_getidx.exit2360.3 ] ; 2 uses
  %niter = phi i64 [ 0, %.peel.next3114.preheader.new ], [ %niter.next.3, %_m3d_getidx.exit2360.3 ]
  %i.afa = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv3092
  %i.afb = load i8, ptr %i.afa, align 4
  %.not2253 = icmp eq i8 %i.afb, 0
  br i1 %.not2253, label %_m3d_getidx.exit2360, label %bb.fp

bb.fp:                                            ; preds = %.peel.next3114
  %i.afc = load i8, ptr %i.eu, align 1
  %i.afd = sext i8 %i.afc to i64
  %i.afe = getelementptr inbounds i8, ptr %.122818, i64 %i.afd
  br label %_m3d_getidx.exit2360

_m3d_getidx.exit2360:                             ; preds = %.peel.next3114, %bb.fp
  %.13 = phi ptr [ %i.afe, %bb.fp ], [ %.122818, %.peel.next3114 ] ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv3092
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 1
  %i.afh = load i8, ptr %i.afg, align 1
  %.not2253.1 = icmp eq i8 %i.afh, 0
  br i1 %.not2253.1, label %_m3d_getidx.exit2360.1, label %bb.fq

bb.fq:                                            ; preds = %_m3d_getidx.exit2360
  %i.afi = load i8, ptr %i.eu, align 1
  %i.afj = sext i8 %i.afi to i64
  %i.afk = getelementptr inbounds i8, ptr %.13, i64 %i.afj
  br label %_m3d_getidx.exit2360.1

_m3d_getidx.exit2360.1:                           ; preds = %bb.fq, %_m3d_getidx.exit2360
  %.13.1 = phi ptr [ %i.afk, %bb.fq ], [ %.13, %_m3d_getidx.exit2360 ] ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv3092
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 2
  %i.afn = load i8, ptr %i.afm, align 2
  %.not2253.2 = icmp eq i8 %i.afn, 0
  br i1 %.not2253.2, label %_m3d_getidx.exit2360.2, label %bb.fr

bb.fr:                                            ; preds = %_m3d_getidx.exit2360.1
  %i.afo = load i8, ptr %i.eu, align 1
  %i.afp = sext i8 %i.afo to i64
  %i.afq = getelementptr inbounds i8, ptr %.13.1, i64 %i.afp
  br label %_m3d_getidx.exit2360.2

_m3d_getidx.exit2360.2:                           ; preds = %bb.fr, %_m3d_getidx.exit2360.1
  %.13.2 = phi ptr [ %i.afq, %bb.fr ], [ %.13.1, %_m3d_getidx.exit2360.1 ] ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv3092
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 3
  %i.aft = load i8, ptr %i.afs, align 1
  %.not2253.3 = icmp eq i8 %i.aft, 0
  br i1 %.not2253.3, label %_m3d_getidx.exit2360.3, label %bb.fs

bb.fs:                                            ; preds = %_m3d_getidx.exit2360.2
  %i.afu = load i8, ptr %i.eu, align 1
  %i.afv = sext i8 %i.afu to i64
  %i.afw = getelementptr inbounds i8, ptr %.13.2, i64 %i.afv
  br label %_m3d_getidx.exit2360.3

_m3d_getidx.exit2360.3:                           ; preds = %bb.fs, %_m3d_getidx.exit2360.2
  %.13.3 = phi ptr [ %i.afw, %bb.fs ], [ %.13.2, %_m3d_getidx.exit2360.2 ] ; 3 uses
  %indvars.iv.next3093.3 = add nuw nsw i64 %indvars.iv3092, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.loopexit.unr-lcssa, label %.peel.next3114, !llvm.loop !64

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_m3d_getidx.exit2360.3
  %i.afx = and i8 %i.aet, 3
  %lcmp.mod.not = icmp eq i8 %i.afx, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.peel.next3114.epil.preheader

.peel.next3114.epil.preheader:                    ; preds = %._crit_edge.loopexit.unr-lcssa, %.peel.next3114.preheader
  %indvars.iv3092.epil.init = phi i64 [ 4, %.peel.next3114.preheader ], [ %indvars.iv.next3093.3, %._crit_edge.loopexit.unr-lcssa ]
  %.122818.epil.init = phi ptr [ %.13.peel3121, %.peel.next3114.preheader ], [ %.13.3, %._crit_edge.loopexit.unr-lcssa ]
  %i.afy = and i8 %i.aet, 3
  %lcmp.mod3735 = icmp ne i8 %i.afy, 0
  call void @llvm.assume(i1 %lcmp.mod3735)
  br label %.peel.next3114.epil

.peel.next3114.epil:                              ; preds = %_m3d_getidx.exit2360.epil, %.peel.next3114.epil.preheader
  %indvars.iv3092.epil = phi i64 [ %indvars.iv.next3093.epil, %_m3d_getidx.exit2360.epil ], [ %indvars.iv3092.epil.init, %.peel.next3114.epil.preheader ] ; 2 uses
  %.122818.epil = phi ptr [ %.13.epil, %_m3d_getidx.exit2360.epil ], [ %.122818.epil.init, %.peel.next3114.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_m3d_getidx.exit2360.epil ], [ 0, %.peel.next3114.epil.preheader ]
  %i.afz = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv3092.epil
  %i.aga = load i8, ptr %i.afz, align 1
  %.not2253.epil = icmp eq i8 %i.aga, 0
  br i1 %.not2253.epil, label %_m3d_getidx.exit2360.epil, label %bb.ft

bb.ft:                                            ; preds = %.peel.next3114.epil
  %i.agb = load i8, ptr %i.eu, align 1
  %i.agc = sext i8 %i.agb to i64
  %i.agd = getelementptr inbounds i8, ptr %.122818.epil, i64 %i.agc
  br label %_m3d_getidx.exit2360.epil

_m3d_getidx.exit2360.epil:                        ; preds = %bb.ft, %.peel.next3114.epil
  %.13.epil = phi ptr [ %i.agd, %bb.ft ], [ %.122818.epil, %.peel.next3114.epil ] ; 2 uses
  %indvars.iv.next3093.epil = add nuw nsw i64 %indvars.iv3092.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.peel.next3114.epil, !llvm.loop !66

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %_m3d_getidx.exit2360.epil, %_m3d_getidx.exit2360.peel, %_m3d_getidx.exit2360.peel3101, %_m3d_getidx.exit2360.peel3110, %_m3d_getidx.exit2360.peel3119
  %.01968.lcssa = phi float [ %.11969.peel3111, %_m3d_getidx.exit2360.peel3110 ], [ %.11969.peel3120, %_m3d_getidx.exit2360.peel3119 ], [ %.11969.peel, %_m3d_getidx.exit2360.peel ], [ %.11969.peel3102, %_m3d_getidx.exit2360.peel3101 ], [ %.11969.peel3120, %_m3d_getidx.exit2360.epil ], [ %.11969.peel3120, %._crit_edge.loopexit.unr-lcssa ] ; 6 uses
  %.12.lcssa = phi ptr [ %.13.peel3112, %_m3d_getidx.exit2360.peel3110 ], [ %.13.peel3121, %_m3d_getidx.exit2360.peel3119 ], [ %.13.peel, %_m3d_getidx.exit2360.peel ], [ %.13.peel3103, %_m3d_getidx.exit2360.peel3101 ], [ %.13.3, %._crit_edge.loopexit.unr-lcssa ], [ %.13.epil, %_m3d_getidx.exit2360.epil ] ; 2 uses
  %i.age = fcmp une float %.01968.lcssa, 1.000000e+00
  %i.agf = fcmp une float %.01968.lcssa, 0.000000e+00
  %or.cond20 = and i1 %i.age, %i.agf
  br i1 %or.cond20, label %.preheader2735, label %.loopexit2736

.preheader2735:                                   ; preds = %._crit_edge
  %i.agg = load ptr, ptr %i.kb, align 8
  %i.agh = getelementptr inbounds nuw [32 x i8], ptr %i.agg, i64 %indvars.iv3129
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 16 ; 2 uses
  %i.agj = load float, ptr %i.agi, align 4
  %i.agk = fdiv float %i.agj, %.01968.lcssa
  store float %i.agk, ptr %i.agi, align 4
  %i.agl = load ptr, ptr %i.kb, align 8
  %i.agm = getelementptr inbounds nuw [32 x i8], ptr %i.agl, i64 %indvars.iv3129
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 20 ; 2 uses
  %i.ago = load float, ptr %i.agn, align 4
  %i.agp = fdiv float %i.ago, %.01968.lcssa
  store float %i.agp, ptr %i.agn, align 4
  %i.agq = load ptr, ptr %i.kb, align 8
  %i.agr = getelementptr inbounds nuw [32 x i8], ptr %i.agq, i64 %indvars.iv3129
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 24 ; 2 uses
  %i.agt = load float, ptr %i.ags, align 4
  %i.agu = fdiv float %i.agt, %.01968.lcssa
  store float %i.agu, ptr %i.ags, align 4
  %i.agv = load ptr, ptr %i.kb, align 8
  %i.agw = getelementptr inbounds nuw [32 x i8], ptr %i.agv, i64 %indvars.iv3129
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 28 ; 2 uses
  %i.agy = load float, ptr %i.agx, align 4
  %i.agz = fdiv float %i.agy, %.01968.lcssa
  store float %i.agz, ptr %i.agx, align 4
  br label %.loopexit2736

.loopexit2736:                                    ; preds = %bb.ey, %.preheader2735, %._crit_edge
  %.12.lcssa3478 = phi ptr [ %.12.lcssa, %._crit_edge ], [ %.12.lcssa, %.preheader2735 ], [ %i.aar, %bb.ey ] ; 2 uses
  %indvars.iv.next3130 = add nuw nsw i64 %indvars.iv3129, 1 ; 2 uses
  %i.aha = icmp ult ptr %.12.lcssa3478, %i.lq
  br i1 %i.aha, label %.lr.ph2825, label %.loopexit2736..critedge18.loopexit_crit_edge

.loopexit2736..critedge18.loopexit_crit_edge:     ; preds = %.loopexit2736
  %.pre3295.pre = load i32, ptr %i.ka, align 8
  br label %.critedge18

.critedge18:                                      ; preds = %.lr.ph2825, %.loopexit2736..critedge18.loopexit_crit_edge
  %.pre3295 = phi i32 [ %.pre3295.pre, %.loopexit2736..critedge18.loopexit_crit_edge ], [ %i.zo, %.lr.ph2825 ]
  %.32055.lcssa.ph.in = phi i64 [ %indvars.iv.next3130, %.loopexit2736..critedge18.loopexit_crit_edge ], [ %indvars.iv3129, %.lr.ph2825 ]
  %.32055.lcssa.ph = trunc i64 %.32055.lcssa.ph.in to i32 ; 2 uses
  %i.ahb = icmp eq i32 %.pre3295, %.32055.lcssa.ph
  br i1 %i.ahb, label %.backedge.backedge, label %.critedge18.thread

.critedge18.thread:                               ; preds = %.preheader2748, %.critedge18
  %.32055.lcssa3481 = phi i32 [ %.32055.lcssa.ph, %.critedge18 ], [ 0, %.preheader2748 ]
  store i32 %.32055.lcssa3481, ptr %i.ka, align 8
  store i8 -76, ptr %i.jx, align 1
  br label %.backedge.backedge

bb.fu:                                            ; preds = %bb.bu
  %.phi.trans.insert3322 = getelementptr inbounds nuw i8, ptr %.020722925, i64 1
  %.pre3323 = load i8, ptr %.phi.trans.insert3322, align 1
  switch i8 %.pre3323, label %.thread2700 [
    i8 84, label %bb.fv
    i8 69, label %bb.hl
  ]

bb.fv:                                            ; preds = %bb.fu
  %i.ahc = getelementptr inbounds nuw i8, ptr %.020722925, i64 2
  %i.ahd = load i8, ptr %i.ahc, align 1
  %i.ahe = icmp eq i8 %i.ahd, 82
  br i1 %i.ahe, label %bb.fw, label %.thread2700

bb.fw:                                            ; preds = %bb.fv
  %i.ahf = getelementptr inbounds nuw i8, ptr %.020722925, i64 3
  %i.ahg = load i8, ptr %i.ahf, align 1
  %i.ahh = icmp eq i8 %i.ahg, 76
  br i1 %i.ahh, label %bb.fx, label %.thread2700

bb.fx:                                            ; preds = %bb.fw
  %i.ahi = getelementptr inbounds nuw i8, ptr %.020722925, i64 8 ; 5 uses
  %i.ahj = load i8, ptr %i.ec, align 4
  switch i8 %i.ahj, label %_m3d_getidx.exit2365.thread [
    i8 1, label %bb.fy
    i8 2, label %bb.fz
    i8 4, label %bb.ga
  ]

bb.fy:                                            ; preds = %bb.fx
  %i.ahk = load i8, ptr %i.ahi, align 1           ; 3 uses
  %i.ahl = icmp ugt i8 %i.ahk, -3
  %i.ahm = sext i8 %i.ahk to i32
  %i.ahn = zext i8 %i.ahk to i32
  %i.aho = select i1 %i.ahl, i32 %i.ahm, i32 %i.ahn
  br label %_m3d_getidx.exit2365

bb.fz:                                            ; preds = %bb.fx
  %i.ahp = load i16, ptr %i.ahi, align 2          ; 3 uses
  %i.ahq = icmp ugt i16 %i.ahp, -3
  %i.ahr = sext i16 %i.ahp to i32
  %i.ahs = zext i16 %i.ahp to i32
  %i.aht = select i1 %i.ahq, i32 %i.ahr, i32 %i.ahs
  br label %_m3d_getidx.exit2365

bb.ga:                                            ; preds = %bb.fx
  %i.ahu = load i32, ptr %i.ahi, align 4
  br label %_m3d_getidx.exit2365

_m3d_getidx.exit2365:                             ; preds = %bb.fy, %bb.fz, %bb.ga
  %.sink16.i2362 = phi i32 [ %i.ahu, %bb.ga ], [ %i.aht, %bb.fz ], [ %i.aho, %bb.fy ] ; 2 uses
  %.sink.i2363 = phi i64 [ 4, %bb.ga ], [ 2, %bb.fz ], [ 1, %bb.fy ]
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahi, i64 %.sink.i2363 ; 2 uses
  %.not2230 = icmp eq i32 %.sink16.i2362, 0
  br i1 %.not2230, label %_m3d_getidx.exit2365.thread, label %bb.gb

bb.gb:                                            ; preds = %_m3d_getidx.exit2365
  %i.ahw = load ptr, ptr %calloc3500, align 8
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 16
  %i.ahy = zext i32 %.sink16.i2362 to i64
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahx, i64 %i.ahy
  br label %_m3d_getidx.exit2365.thread

_m3d_getidx.exit2365.thread:                      ; preds = %bb.fx, %_m3d_getidx.exit2365, %bb.gb
  %.0.i23642599 = phi ptr [ %i.ahv, %bb.gb ], [ %i.ahv, %_m3d_getidx.exit2365 ], [ %i.ahi, %bb.fx ] ; 2 uses
  %i.aia = phi ptr [ %i.ahz, %bb.gb ], [ null, %_m3d_getidx.exit2365 ], [ null, %bb.fx ] ; 3 uses
  %i.aib = load i8, ptr %i.ei, align 1
  %i.aic = icmp slt i8 %i.aib, 4
  br i1 %i.aic, label %bb.gc, label %bb.ge

bb.gc:                                            ; preds = %_m3d_getidx.exit2365.thread
  %i.aid = load i32, ptr %i.ku, align 4
  %.not2231 = icmp eq i32 %i.aid, 0
  br i1 %.not2231, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  store i8 -73, ptr %i.jx, align 1
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc, %_m3d_getidx.exit2365.thread
  %i.aie = load i32, ptr %i.kq, align 8           ; 2 uses
  %.not3017 = icmp eq i32 %i.aie, 0
  br i1 %.not3017, label %._crit_edge2913, label %.lr.ph2912

.lr.ph2912:                                       ; preds = %bb.ge
  %i.aif = load ptr, ptr %i.kr, align 8
  %wide.trip.count3188 = zext i32 %i.aie to i64
  br label %bb.gg

bb.gf:                                            ; preds = %bb.gg
  %indvars.iv.next3185 = add nuw nsw i64 %indvars.iv3184, 1 ; 2 uses
  %exitcond3189.not = icmp eq i64 %indvars.iv.next3185, %wide.trip.count3188
  br i1 %exitcond3189.not, label %._crit_edge2913.thread, label %bb.gg

bb.gg:                                            ; preds = %.lr.ph2912, %bb.gf
  %indvars.iv3184 = phi i64 [ 0, %.lr.ph2912 ], [ %indvars.iv.next3185, %bb.gf ] ; 2 uses
  %i.aig = getelementptr inbounds nuw [24 x i8], ptr %i.aif, i64 %indvars.iv3184
  %i.aih = load ptr, ptr %i.aig, align 8
  %i.aii = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aia, ptr noundef nonnull dereferenceable(1) %i.aih) #51
  %.not2232 = icmp eq i32 %i.aii, 0
  br i1 %.not2232, label %.thread2600, label %bb.gf

.thread2600:                                      ; preds = %bb.gg
  store i8 -77, ptr %i.jx, align 1
end_hunk_4
begin_hunk_5_@m3d_frame:bb.a
  br i1 %.not87, label %._crit_edge, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph84, %bb.r
  %indvars.iv89 = phi i64 [ 0, %.lr.ph84 ], [ %indvars.iv.next90, %bb.r ] ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw [12 x i8], ptr %i.bd, i64 %indvars.iv89 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = load i32, ptr %i.be, align 4
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %.163, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 %i.bg, ptr %i.bk, align 4
  %i.bl = load ptr, ptr %i.bc, align 8
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %indvars.iv89 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = load i32, ptr %i.bm, align 4
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %.163, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 %i.bo, ptr %i.bs, align 4
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %i.bt = load i32, ptr %i.ba, align 4
  %i.bu = zext i32 %i.bt to i64
  %i.bv = icmp samesign ult i64 %indvars.iv.next90, %i.bu
  br i1 %i.bv, label %bb.r, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r, %bb.q
  %i.bw = add i32 %.185, 1                        ; 2 uses
  %.not80 = icmp ugt i32 %i.bw, %2
  br i1 %.not80, label %.loopexit, label %bb.q

.loopexit:                                        ; preds = %._crit_edge, %.loopexit81, %bb.o, %bb.k, %bb.h
  %.064 = phi ptr [ %3, %bb.h ], [ null, %bb.k ], [ %.163, %.loopexit81 ], [ %.163, %bb.o ], [ %.163, %._crit_edge ]
  ret ptr %.064
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @m3d_pose(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca [16 x float], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %.not259 = icmp eq i32 %i.c, 0
  br i1 %.not259, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not260 = icmp eq ptr %i.e, null
  br i1 %.not260, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 -69, ptr %i.f, align 1
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.g = zext i32 %i.c to i64
  %i.h = mul nuw nsw i64 %i.g, 104
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #56 ; 20 uses
  %.not261 = icmp eq ptr %i.i, null
  br i1 %.not261, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 -1, ptr %i.j, align 1
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.k = load i32, ptr %i.b, align 8              ; 4 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = mul nuw nsw i64 %i.l, 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %i.e, i64 %i.m, i1 false)
  %.not300 = icmp eq i32 %i.k, 0
  br i1 %.not300, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.g ] ; 2 uses
  %i.n = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  tail call void @_m3d_inv(ptr noundef nonnull %i.o)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not262 = icmp eq ptr %i.q, null
  br i1 %.not262, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.s = load i32, ptr %i.r, align 8
  %.not263 = icmp ult i32 %1, %i.s
  br i1 %.not263, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 -69, ptr %i.t, align 1
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.u = zext i32 %1 to i64                       ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.u ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8
  %i.y = urem i32 %2, %i.x                        ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  store i8 0, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.ab = load i32, ptr %i.aa, align 4            ; 3 uses
  %.not301 = icmp eq i32 %i.ab, 0
  br i1 %.not301, label %.critedge, label %.lr.ph279

.lr.ph279:                                        ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %wide.trip.count316 = zext i32 %i.ab to i64
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  %.not264362 = icmp ugt i32 %i.ae, %i.y
  br i1 %.not264362, label %.critedge, label %.preheader271

bb.k:                                             ; preds = %._crit_edge275
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv.next314
  %i.ag = load i32, ptr %i.af, align 8            ; 2 uses
  %.not264 = icmp ugt i32 %i.ag, %i.y
  br i1 %.not264, label %..critedge.loopexit.split.loop.exit355_crit_edge, label %.preheader271

.preheader271:                                    ; preds = %.lr.ph279, %bb.k
  %i.ah = phi i32 [ %i.ag, %bb.k ], [ %i.ae, %.lr.ph279 ] ; 2 uses
  %indvars.iv313363 = phi i64 [ %indvars.iv.next314, %bb.k ], [ 0, %.lr.ph279 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv313363 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4            ; 3 uses
  %.not302 = icmp eq i32 %i.ak, 0
  br i1 %.not302, label %._crit_edge275, label %.lr.ph274

.lr.ph274:                                        ; preds = %.preheader271
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load ptr, ptr %i.al, align 8            ; 5 uses
  %wide.trip.count311 = zext i32 %i.ak to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count311, 3      ; 3 uses
  %i.an = icmp ult i32 %i.ak, 4
  br i1 %i.an, label %.epil.preheader, label %.lr.ph274.new

.lr.ph274.new:                                    ; preds = %.lr.ph274
  %unroll_iter = and i64 %wide.trip.count311, 4294967292
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph274.new
  %indvars.iv308 = phi i64 [ 0, %.lr.ph274.new ], [ %indvars.iv.next309.3, %bb.l ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph274.new ], [ %niter.next.3, %bb.l ]
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %indvars.iv308 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ao, align 4
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load <2 x i32>, ptr %i.ap, align 4
  store <2 x i32> %i.au, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %indvars.iv308 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ay = load i32, ptr %i.aw, align 4
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load <2 x i32>, ptr %i.ax, align 4
  store <2 x i32> %i.bc, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %indvars.iv308 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  %i.bg = load i32, ptr %i.be, align 4
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load <2 x i32>, ptr %i.bf, align 4
  store <2 x i32> %i.bk, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %indvars.iv308 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bo = load i32, ptr %i.bm, align 4
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load <2 x i32>, ptr %i.bn, align 4
  store <2 x i32> %i.bs, ptr %i.br, align 8
  %indvars.iv.next309.3 = add nuw nsw i64 %indvars.iv308, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge275.loopexit.unr-lcssa, label %bb.l

._crit_edge275.loopexit.unr-lcssa:                ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge275, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge275.loopexit.unr-lcssa, %.lr.ph274
  %indvars.iv308.epil.init = phi i64 [ 0, %.lr.ph274 ], [ %indvars.iv.next309.3, %._crit_edge275.loopexit.unr-lcssa ]
  %lcmp.mod371 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod371)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %indvars.iv308.epil = phi i64 [ %indvars.iv308.epil.init, %.epil.preheader ], [ %indvars.iv.next309.epil, %bb.m ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.bt = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %indvars.iv308.epil ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bt, align 4
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load <2 x i32>, ptr %i.bu, align 4
  store <2 x i32> %i.bz, ptr %i.by, align 8
  %indvars.iv.next309.epil = add nuw nsw i64 %indvars.iv308.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge275, label %bb.m, !llvm.loop !69

._crit_edge275:                                   ; preds = %._crit_edge275.loopexit.unr-lcssa, %bb.m, %.preheader271
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313363, 1 ; 4 uses
  %exitcond317.not = icmp eq i64 %indvars.iv.next314, %wide.trip.count316
  br i1 %exitcond317.not, label %.critedge, label %bb.k

..critedge.loopexit.split.loop.exit355_crit_edge: ; preds = %bb.k
  %i.ca = trunc nuw i64 %indvars.iv.next314 to i32
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge275, %.lr.ph279, %..critedge.loopexit.split.loop.exit355_crit_edge, %bb.j
  %.0237.lcssa = phi i32 [ 0, %bb.j ], [ 0, %.lr.ph279 ], [ %i.ca, %..critedge.loopexit.split.loop.exit355_crit_edge ], [ %i.ab, %._crit_edge275 ]
  %.0236.lcssa = phi i32 [ 0, %bb.j ], [ 0, %.lr.ph279 ], [ %i.ah, %..critedge.loopexit.split.loop.exit355_crit_edge ], [ %i.ah, %._crit_edge275 ] ; 4 uses
  %.not265 = icmp eq i32 %.0236.lcssa, %i.y
  br i1 %.not265, label %bb.y, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = shl i32 %i.k, 1
  %i.cg = add i32 %i.ce, %i.cf
  %i.ch = zext i32 %i.cg to i64
  %i.ci = mul nuw nsw i64 %i.ch, 24
  %i.cj = tail call ptr @realloc(ptr noundef %i.cc, i64 noundef %i.ci) #52 ; 2 uses
  store ptr %i.cj, ptr %i.cb, align 8
  %.not266 = icmp eq ptr %i.cj, null
  br i1 %.not266, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @free(ptr noundef %i.i) #54
  store i8 -1, ptr %i.z, align 1
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.ck = load i32, ptr %i.b, align 8
  %i.cl = zext i32 %i.ck to i64
  %i.cm = mul nuw nsw i64 %i.cl, 12
  %i.cn = tail call noalias ptr @malloc(i64 noundef %i.cm) #56 ; 13 uses
  %.not267 = icmp eq ptr %i.cn, null
  %.pre = load i32, ptr %i.b, align 8             ; 4 uses
  br i1 %.not267, label %bb.y, label %.preheader

.preheader:                                       ; preds = %bb.p
  %.not303 = icmp eq i32 %.pre, 0                 ; 2 uses
  br i1 %.not303, label %._crit_edge286, label %.lr.ph285.preheader

.lr.ph285.preheader:                              ; preds = %.preheader
  %wide.trip.count321 = zext i32 %.pre to i64     ; 2 uses
  %xtraiter372 = and i64 %wide.trip.count321, 3   ; 3 uses
  %i.co = icmp ult i32 %.pre, 4
  br i1 %i.co, label %.lr.ph285.epil.preheader, label %.lr.ph285.preheader.new

.lr.ph285.preheader.new:                          ; preds = %.lr.ph285.preheader
  %unroll_iter376 = and i64 %wide.trip.count321, 4294967292
  br label %.lr.ph285

.lr.ph285:                                        ; preds = %.lr.ph285, %.lr.ph285.preheader.new
  %indvars.iv318 = phi i64 [ 0, %.lr.ph285.preheader.new ], [ %indvars.iv.next319.3, %.lr.ph285 ] ; 6 uses
  %niter377 = phi i64 [ 0, %.lr.ph285.preheader.new ], [ %niter377.next.3, %.lr.ph285 ]
  %i.cp = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %indvars.iv318
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = getelementptr inbounds nuw [12 x i8], ptr %i.cn, i64 %indvars.iv318
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load <2 x i32>, ptr %i.cq, align 8
  store <2 x i32> %i.ct, ptr %i.cs, align 4
  %indvars.iv.next319 = or disjoint i64 %indvars.iv318, 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %indvars.iv.next319
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = getelementptr inbounds nuw [12 x i8], ptr %i.cn, i64 %indvars.iv.next319
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = load <2 x i32>, ptr %i.cv, align 8
  store <2 x i32> %i.cy, ptr %i.cx, align 4
  %indvars.iv.next319.1 = or disjoint i64 %indvars.iv318, 2 ; 2 uses
  %i.cz = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %indvars.iv.next319.1
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = getelementptr inbounds nuw [12 x i8], ptr %i.cn, i64 %indvars.iv.next319.1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = load <2 x i32>, ptr %i.da, align 8
  store <2 x i32> %i.dd, ptr %i.dc, align 4
  %indvars.iv.next319.2 = or disjoint i64 %indvars.iv318, 3 ; 2 uses
  %i.de = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %indvars.iv.next319.2
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = getelementptr inbounds nuw [12 x i8], ptr %i.cn, i64 %indvars.iv.next319.2
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.di = load <2 x i32>, ptr %i.df, align 8
  store <2 x i32> %i.di, ptr %i.dh, align 4
  %indvars.iv.next319.3 = add nuw nsw i64 %indvars.iv318, 4 ; 2 uses
  %niter377.next.3 = add nuw i64 %niter377, 4     ; 2 uses
  %niter377.ncmp.3 = icmp eq i64 %niter377.next.3, %unroll_iter376
  br i1 %niter377.ncmp.3, label %._crit_edge286.loopexit.unr-lcssa, label %.lr.ph285

._crit_edge286.loopexit.unr-lcssa:                ; preds = %.lr.ph285
  %lcmp.mod374.not = icmp eq i64 %xtraiter372, 0
  br i1 %lcmp.mod374.not, label %._crit_edge286, label %.lr.ph285.epil.preheader

.lr.ph285.epil.preheader:                         ; preds = %._crit_edge286.loopexit.unr-lcssa, %.lr.ph285.preheader
  %indvars.iv318.epil.init = phi i64 [ 0, %.lr.ph285.preheader ], [ %indvars.iv.next319.3, %._crit_edge286.loopexit.unr-lcssa ]
  %lcmp.mod375 = icmp ne i64 %xtraiter372, 0
  tail call void @llvm.assume(i1 %lcmp.mod375)
  br label %.lr.ph285.epil

.lr.ph285.epil:                                   ; preds = %.lr.ph285.epil, %.lr.ph285.epil.preheader
  %indvars.iv318.epil = phi i64 [ %indvars.iv318.epil.init, %.lr.ph285.epil.preheader ], [ %indvars.iv.next319.epil, %.lr.ph285.epil ] ; 3 uses
  %epil.iter373 = phi i64 [ 0, %.lr.ph285.epil.preheader ], [ %epil.iter373.next, %.lr.ph285.epil ]
  %i.dj = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %indvars.iv318.epil
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = getelementptr inbounds nuw [12 x i8], ptr %i.cn, i64 %indvars.iv318.epil
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dn = load <2 x i32>, ptr %i.dk, align 8
  store <2 x i32> %i.dn, ptr %i.dm, align 4
  %indvars.iv.next319.epil = add nuw nsw i64 %indvars.iv318.epil, 1
  %epil.iter373.next = add i64 %epil.iter373, 1   ; 2 uses
  %epil.iter373.cmp.not = icmp eq i64 %epil.iter373.next, %xtraiter372
  br i1 %epil.iter373.cmp.not, label %._crit_edge286, label %.lr.ph285.epil, !llvm.loop !70

._crit_edge286:                                   ; preds = %._crit_edge286.loopexit.unr-lcssa, %.lr.ph285.epil, %.preheader
  %i.do = load ptr, ptr %i.p, align 8
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.do, i64 %i.u ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = urem i32 %.0237.lcssa, %i.dt
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.dv ; 3 uses
  %i.dx = load i32, ptr %i.dw, align 8            ; 2 uses
  %.not268 = icmp ult i32 %.0236.lcssa, %i.dx
  br i1 %.not268, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge286
  %i.dy = sub i32 %i.y, %.0236.lcssa
  %i.dz = uitofp i32 %i.dy to float
  %i.ea = sub nuw i32 %i.dx, %.0236.lcssa
  %i.eb = uitofp i32 %i.ea to float
  %i.ec = fdiv float %i.dz, %i.eb
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge286, %bb.q
  %i.ed = phi float [ %i.ec, %bb.q ], [ 1.000000e+00, %._crit_edge286 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.ef = load i32, ptr %i.ee, align 4            ; 3 uses
  %.not304 = icmp eq i32 %i.ef, 0
  br i1 %.not304, label %._crit_edge290, label %.lr.ph289

.lr.ph289:                                        ; preds = %bb.r
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8            ; 5 uses
  %wide.trip.count326 = zext i32 %i.ef to i64     ; 2 uses
  %xtraiter379 = and i64 %wide.trip.count326, 3   ; 3 uses
  %i.ei = icmp ult i32 %i.ef, 4
  br i1 %i.ei, label %.epil.preheader378, label %.lr.ph289.new

.lr.ph289.new:                                    ; preds = %.lr.ph289
  %unroll_iter383 = and i64 %wide.trip.count326, 4294967292
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph289.new
  %indvars.iv323 = phi i64 [ 0, %.lr.ph289.new ], [ %indvars.iv.next324.3, %bb.s ] ; 5 uses
  %niter384 = phi i64 [ 0, %.lr.ph289.new ], [ %niter384.next.3, %bb.s ]
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %i.eh, i64 %indvars.iv323 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = load i32, ptr %i.ej, align 4
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [12 x i8], ptr %i.cn, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ep = load <2 x i32>, ptr %i.ek, align 4
  store <2 x i32> %i.ep, ptr %i.eo, align 4
  %i.eq = getelementptr inbounds nuw [12 x i8], ptr %i.eh, i64 %indvars.iv323 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.et = load i32, ptr %i.er, align 4
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [12 x i8], ptr %i.cn, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ex = load <2 x i32>, ptr %i.es, align 4
  store <2 x i32> %i.ex, ptr %i.ew, align 4
  %i.ey = getelementptr inbounds nuw [12 x i8], ptr %i.eh, i64 %indvars.iv323 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 28
  %i.fb = load i32, ptr %i.ez, align 4
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [12 x i8], ptr %i.cn, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.ff = load <2 x i32>, ptr %i.fa, align 4
  store <2 x i32> %i.ff, ptr %i.fe, align 4
  %i.fg = getelementptr inbounds nuw [12 x i8], ptr %i.eh, i64 %indvars.iv323 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 36
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.fj = load i32, ptr %i.fh, align 4
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [12 x i8], ptr %i.cn, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fn = load <2 x i32>, ptr %i.fi, align 4
  store <2 x i32> %i.fn, ptr %i.fm, align 4
  %indvars.iv.next324.3 = add nuw nsw i64 %indvars.iv323, 4 ; 2 uses
  %niter384.next.3 = add nuw i64 %niter384, 4     ; 2 uses
  %niter384.ncmp.3 = icmp eq i64 %niter384.next.3, %unroll_iter383
  br i1 %niter384.ncmp.3, label %._crit_edge290.loopexit.unr-lcssa, label %bb.s

._crit_edge290.loopexit.unr-lcssa:                ; preds = %bb.s
  %lcmp.mod381.not = icmp eq i64 %xtraiter379, 0
  br i1 %lcmp.mod381.not, label %._crit_edge290, label %.epil.preheader378

.epil.preheader378:                               ; preds = %._crit_edge290.loopexit.unr-lcssa, %.lr.ph289
  %indvars.iv323.epil.init = phi i64 [ 0, %.lr.ph289 ], [ %indvars.iv.next324.3, %._crit_edge290.loopexit.unr-lcssa ]
  %lcmp.mod382 = icmp ne i64 %xtraiter379, 0
  tail call void @llvm.assume(i1 %lcmp.mod382)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader378
  %indvars.iv323.epil = phi i64 [ %indvars.iv323.epil.init, %.epil.preheader378 ], [ %indvars.iv.next324.epil, %bb.t ] ; 2 uses
  %epil.iter380 = phi i64 [ 0, %.epil.preheader378 ], [ %epil.iter380.next, %bb.t ]
  %i.fo = getelementptr inbounds nuw [12 x i8], ptr %i.eh, i64 %indvars.iv323.epil ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fq = load i32, ptr %i.fo, align 4
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [12 x i8], ptr %i.cn, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fu = load <2 x i32>, ptr %i.fp, align 4
  store <2 x i32> %i.fu, ptr %i.ft, align 4
  %indvars.iv.next324.epil = add nuw nsw i64 %indvars.iv323.epil, 1
  %epil.iter380.next = add i64 %epil.iter380, 1   ; 2 uses
  %epil.iter380.cmp.not = icmp eq i64 %epil.iter380.next, %xtraiter379
  br i1 %epil.iter380.cmp.not, label %._crit_edge290, label %bb.t, !llvm.loop !71

._crit_edge290:                                   ; preds = %._crit_edge290.loopexit.unr-lcssa, %bb.t, %bb.r
  br i1 %.not303, label %._crit_edge296, label %.lr.ph295.preheader

.lr.ph295.preheader:                              ; preds = %._crit_edge290
  %i.fv = load i32, ptr %i.cd, align 8
  br label %.lr.ph295

.lr.ph295:                                        ; preds = %.lr.ph295.preheader, %bb.x
  %indvars.iv328 = phi i64 [ 0, %.lr.ph295.preheader ], [ %indvars.iv.next329, %bb.x ] ; 3 uses
  %.0235293 = phi float [ %i.ed, %.lr.ph295.preheader ], [ %.1, %bb.x ] ; 7 uses
  %.1238292 = phi i32 [ %i.fv, %.lr.ph295.preheader ], [ %.3, %bb.x ] ; 4 uses
  %i.fw = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %indvars.iv328 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 8            ; 2 uses
  %i.fz = getelementptr inbounds nuw [12 x i8], ptr %i.cn, i64 %indvars.iv328 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %i.gb = load i32, ptr %i.ga, align 4            ; 2 uses
  %.not269 = icmp eq i32 %i.fy, %i.gb
  br i1 %.not269, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph295
  %i.gc = load ptr, ptr %i.cb, align 8            ; 3 uses
  %i.gd = zext i32 %i.fy to i64
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %i.gc, i64 %i.gd ; 2 uses
  %i.gf = zext i32 %i.gb to i64
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %i.gc, i64 %i.gf ; 2 uses
  %i.gh = zext i32 %.1238292 to i64
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %i.gc, i64 %i.gh ; 2 uses
  %i.gj = load <2 x float>, ptr %i.ge, align 4    ; 2 uses
  %i.gk = load <2 x float>, ptr %i.gg, align 4
  %i.gl = fsub <2 x float> %i.gk, %i.gj
  %i.gm = insertelement <2 x float> poison, float %.0235293, i64 0
  %i.gn = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.go = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gn, <2 x float> %i.gl, <2 x float> %i.gj)
  store <2 x float> %i.go, ptr %i.gi, align 4
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gq = load float, ptr %i.gp, align 4          ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gs = load float, ptr %i.gr, align 4
  %i.gt = fsub float %i.gs, %i.gq
  %i.gu = tail call float @llvm.fmuladd.f32(float %.0235293, float %i.gt, float %i.gq)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store float %i.gu, ptr %i.gv, align 4
  %i.gw = add i32 %.1238292, 1
  store i32 %.1238292, ptr %i.fx, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph295
  %.2 = phi i32 [ %i.gw, %bb.u ], [ %.1238292, %.lr.ph295 ] ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fw, i64 20 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4            ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.ha = load i32, ptr %i.gz, align 4            ; 2 uses
  %.not270 = icmp eq i32 %i.gy, %i.ha
  br i1 %.not270, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hb = load ptr, ptr %i.cb, align 8            ; 3 uses
  %i.hc = zext i32 %i.gy to i64
  %i.hd = getelementptr inbounds nuw [24 x i8], ptr %i.hb, i64 %i.hc
  %i.he = zext i32 %i.ha to i64
  %i.hf = getelementptr inbounds nuw [24 x i8], ptr %i.hb, i64 %i.he
  %i.hg = zext i32 %.2 to i64
  %i.hh = getelementptr inbounds nuw [24 x i8], ptr %i.hb, i64 %i.hg
  %i.hi = fadd float %.0235293, -5.000000e-01     ; 3 uses
  %i.hj = fmul float %.0235293, %i.hi
  %i.hk = fadd float %.0235293, -1.000000e+00
  %i.hl = fmul float %i.hk, %i.hj
  %i.hm = load <4 x float>, ptr %i.hd, align 4    ; 6 uses
  %i.hn = load <4 x float>, ptr %i.hf, align 4    ; 5 uses
  %foldExtExtBinop = fmul <4 x float> %i.hm, %i.hn
  %i.ho = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.hp = extractelement <4 x float> %i.hn, i64 3
  %i.hq = extractelement <4 x float> %i.hm, i64 3
  %i.hr = tail call float @llvm.fmuladd.f32(float %i.hq, float %i.hp, float %i.ho)
  %i.hs = extractelement <4 x float> %i.hn, i64 1
  %i.ht = extractelement <4 x float> %i.hm, i64 1
  %i.hu = tail call float @llvm.fmuladd.f32(float %i.ht, float %i.hs, float %i.hr)
  %i.hv = extractelement <4 x float> %i.hn, i64 2
  %i.hw = extractelement <4 x float> %i.hm, i64 2
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.hw, float %i.hv, float %i.hu) ; 3 uses
  %i.hy = fcmp olt float %i.hx, 0.000000e+00      ; 2 uses
  %i.hz = fneg float %i.hx
  %.0234 = select i1 %i.hy, float %i.hz, float %i.hx ; 5 uses
  %.0 = select i1 %i.hy, float -1.000000e+00, float 1.000000e+00
  %i.ia = fneg float %.0234
  %i.ib = tail call float @llvm.fmuladd.f32(float %i.ia, float 1.435190e+00, float 3.556450e+00)
  %i.ic = tail call float @llvm.fmuladd.f32(float %.0234, float %i.ib, float -3.245200e+00)
  %i.id = tail call float @llvm.fmuladd.f32(float %.0234, float %i.ic, float 1.090400e+00)
  %i.ie = fmul float %i.hi, %i.id
  %i.if = tail call float @llvm.fmuladd.f32(float %.0234, float 2.156380e-01, float -1.060210e+00)
  %i.ig = tail call float @llvm.fmuladd.f32(float %.0234, float %i.if, float f0x3F591761)
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.ie, float %i.hi, float %i.ig)
  %i.ii = tail call float @llvm.fmuladd.f32(float %i.hl, float %i.ih, float %.0235293) ; 2 uses
  %i.ij = fneg <4 x float> %i.hm
  %i.ik = insertelement <4 x float> poison, float %.0, i64 0
  %i.il = shufflevector <4 x float> %i.ik, <4 x float> poison, <4 x i32> zeroinitializer
  %i.im = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.il, <4 x float> %i.hn, <4 x float> %i.ij)
  %i.in = insertelement <4 x float> poison, float %i.ii, i64 0
  %i.io = shufflevector <4 x float> %i.in, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ip = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.io, <4 x float> %i.im, <4 x float> %i.hm) ; 6 uses
  %foldExtExtBinop366 = fmul <4 x float> %i.ip, %i.ip
  %i.iq = extractelement <4 x float> %foldExtExtBinop366, i64 0
  %i.ir = extractelement <4 x float> %i.ip, i64 3 ; 2 uses
  %i.is = tail call float @llvm.fmuladd.f32(float %i.ir, float %i.ir, float %i.iq)
  %i.it = extractelement <4 x float> %i.ip, i64 1 ; 2 uses
  %i.iu = tail call float @llvm.fmuladd.f32(float %i.it, float %i.it, float %i.is)
  %i.iv = extractelement <4 x float> %i.ip, i64 2 ; 2 uses
  %i.iw = tail call float @llvm.fmuladd.f32(float %i.iv, float %i.iv, float %i.iu) ; 2 uses
  %i.ix = fmul float %i.iw, 5.000000e-01
  %i.iy = bitcast float %i.iw to i32
  %i.iz = lshr i32 %i.iy, 1
  %i.ja = sub nsw i32 1597463007, %i.iz
  %i.jb = bitcast i32 %i.ja to float              ; 3 uses
  %i.jc = fneg float %i.jb
  %i.jd = fmul float %i.ix, %i.jc
  %i.je = tail call float @llvm.fmuladd.f32(float %i.jd, float %i.jb, float 1.500000e+00)
  %i.jf = fmul float %i.je, %i.jb
  %i.jg = insertelement <4 x float> poison, float %i.jf, i64 0
  %i.jh = shufflevector <4 x float> %i.jg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ji = fmul <4 x float> %i.ip, %i.jh
  store <4 x float> %i.ji, ptr %i.hh, align 4
  %i.jj = add i32 %.2, 1
  store i32 %.2, ptr %i.gx, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.3 = phi i32 [ %i.jj, %bb.w ], [ %.2, %bb.v ]
  %.1 = phi float [ %i.ii, %bb.w ], [ %.0235293, %bb.v ]
  %indvars.iv.next329 = add nuw nsw i64 %indvars.iv328, 1 ; 2 uses
  %i.jk = load i32, ptr %i.b, align 8             ; 2 uses
  %i.jl = zext i32 %i.jk to i64
  %i.jm = icmp samesign ult i64 %indvars.iv.next329, %i.jl
  br i1 %i.jm, label %.lr.ph295, label %._crit_edge296

._crit_edge296:                                   ; preds = %bb.x, %._crit_edge290
  %i.jn = phi i32 [ 0, %._crit_edge290 ], [ %i.jk, %bb.x ]
  tail call void @free(ptr noundef nonnull %i.cn) #54
  br label %bb.y

bb.y:                                             ; preds = %bb.p, %._crit_edge296, %.critedge
  %i.jo = phi i32 [ %.pre, %bb.p ], [ %i.jn, %._crit_edge296 ], [ %i.k, %.critedge ] ; 2 uses
  %.not306 = icmp eq i32 %i.jo, 0
  br i1 %.not306, label %.loopexit, label %.lr.ph299

.lr.ph299:                                        ; preds = %bb.y
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %wide.trip.count334 = zext i32 %i.jo to i64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph299, %bb.ac
  %indvars.iv331 = phi i64 [ 0, %.lr.ph299 ], [ %indvars.iv.next332, %bb.ac ] ; 2 uses
  %i.jq = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %indvars.iv331 ; 7 uses
  %i.jr = load i32, ptr %i.jq, align 8            ; 2 uses
  %i.js = icmp eq i32 %i.jr, -1
  br i1 %i.js, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 40
  %i.ju = load ptr, ptr %i.jp, align 8            ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.jw = load i32, ptr %i.jv, align 8
  %i.jx = zext i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [24 x i8], ptr %i.ju, i64 %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jq, i64 20
  %i.ka = load i32, ptr %i.jz, align 4
  %i.kb = zext i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [24 x i8], ptr %i.ju, i64 %i.kb
  tail call void @_m3d_mat(ptr noundef nonnull %i.jt, ptr noundef %i.jy, ptr noundef %i.kc)
  br label %bb.ac

end_hunk_5
begin_hunk_6_@par_shapes_weld:bb.a
  %i.w = select <2 x i1> %i.v, <2 x float> %i.s, <2 x float> %i.l ; 2 uses
  %i.x = add nuw nsw i32 %.058.i, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, %i.h
  br i1 %exitcond.not, label %par_shapes_compute_aabb.exit, label %.lr.ph.i

par_shapes_compute_aabb.exit:                     ; preds = %.lr.ph.i, %bb.a
  %.sroa.17.0 = phi float [ %i.d, %bb.a ], [ %i.r, %.lr.ph.i ] ; 2 uses
  %.sroa.0.0 = phi float [ %i.d, %bb.a ], [ %..i, %.lr.ph.i ] ; 4 uses
  %i.y = phi <2 x float> [ %i.f, %bb.a ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %i.z = phi <2 x float> [ %i.f, %bb.a ], [ %i.u, %.lr.ph.i ] ; 6 uses
  %i.aa = fcmp oeq float %.sroa.17.0, %.sroa.0.0
  %i.ab = fsub float %.sroa.17.0, %.sroa.0.0
  %i.ac = fdiv float 1.900000e+01, %i.ab
  %i.ad = select i1 %i.aa, float 1.000000e+00, float %i.ac ; 2 uses
  %i.ae = fcmp oeq <2 x float> %i.y, %i.z
  %i.af = fsub <2 x float> %i.y, %i.z
  %i.ag = fdiv <2 x float> splat (float 1.900000e+01), %i.af
  %i.ah = select <2 x i1> %i.ae, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ag ; 3 uses
  %i.ai = icmp sgt i32 %i.h, 0
  br i1 %i.ai, label %.lr.ph.i56.preheader, label %par_shapes_translate.exit

.lr.ph.i56.preheader:                             ; preds = %par_shapes_compute_aabb.exit
  %i.aj = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ak = insertelement <2 x float> %i.aj, float %.sroa.0.0, i64 0
  %i.al = extractelement <2 x float> %i.z, i64 1
  br label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %.lr.ph.i56.preheader, %.lr.ph.i56
  %.011.i = phi i32 [ %i.as, %.lr.ph.i56 ], [ 0, %.lr.ph.i56.preheader ]
  %.0910.i = phi ptr [ %i.ap, %.lr.ph.i56 ], [ %i.c, %.lr.ph.i56.preheader ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i, i64 8 ; 2 uses
  %i.an = load <2 x float>, ptr %.0910.i, align 4
  %i.ao = fsub <2 x float> %i.an, %i.ak
  store <2 x float> %i.ao, ptr %.0910.i, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i, i64 12
  %i.aq = load float, ptr %i.am, align 4
  %i.ar = fsub float %i.aq, %i.al
  store float %i.ar, ptr %i.am, align 4
  %i.as = add nuw nsw i32 %.011.i, 1              ; 2 uses
  %i.at = load i32, ptr %i.g, align 8
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %.lr.ph.i56, label %par_shapes_translate.exit

par_shapes_translate.exit:                        ; preds = %.lr.ph.i56, %par_shapes_compute_aabb.exit
  %i.av = extractelement <2 x float> %i.ah, i64 0
  %i.aw = extractelement <2 x float> %i.ah, i64 1
  tail call void @par_shapes_scale(ptr noundef nonnull %i.b, float noundef %i.ad, float noundef %i.av, float noundef %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 1
  %i.bb = tail call noalias ptr @malloc(i64 noundef %i.ba) #56 ; 12 uses
  %i.bc = load i32, ptr %i.g, align 8             ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i57, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %par_shapes_translate.exit
  %.pre71.i = sext i32 %i.bc to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i57, %.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre71.i, %.._crit_edge_crit_edge.i ], [ %i.bu, %.lr.ph.i57 ]
  store i1 true, ptr @par_shapes__sort_context.1, align 8
  %i.be = load ptr, ptr %i.b, align 8
  store ptr %i.be, ptr @par_shapes__sort_context.0, align 8
  tail call void @qsort(ptr noundef %i.bb, i64 noundef %.pre-phi.i, i64 noundef 2, ptr noundef nonnull @par_shapes__cmp1) #54
  %i.bf = load i32, ptr %i.g, align 8
  %i.bg = mul nsw i32 %i.bf, 3
  %i.bh = sext i32 %i.bg to i64
  %i.bi = shl nsw i64 %i.bh, 2
  %i.bj = tail call noalias ptr @malloc(i64 noundef %i.bi) #56 ; 3 uses
  %i.bk = load i32, ptr %i.g, align 8
  %i.bl = sext i32 %i.bk to i64
  %i.bm = shl nsw i64 %i.bl, 1
  %i.bn = tail call noalias ptr @malloc(i64 noundef %i.bm) #56 ; 10 uses
  %i.bo = load i32, ptr %i.g, align 8             ; 4 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  %.pre.i = load ptr, ptr %i.b, align 8           ; 4 uses
  br i1 %i.bp, label %.lr.ph57.i, label %._crit_edge58.i

.lr.ph57.i:                                       ; preds = %._crit_edge.i
  %wide.trip.count.i = zext nneg i32 %i.bo to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.bq = icmp eq i32 %i.bo, 1
  br i1 %i.bq, label %.epil.preheader, label %.lr.ph57.i.new

.lr.ph57.i.new:                                   ; preds = %.lr.ph57.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.b

.lr.ph.i57:                                       ; preds = %par_shapes_translate.exit, %.lr.ph.i57
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i57 ], [ 0, %par_shapes_translate.exit ] ; 3 uses
  %i.br = trunc i64 %indvars.iv.i to i16
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv.i
  store i16 %i.br, ptr %i.bs, align 2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bt = load i32, ptr %i.g, align 8
  %i.bu = sext i32 %i.bt to i64                   ; 2 uses
  %i.bv = icmp slt i64 %indvars.iv.next.i, %i.bu
  br i1 %i.bv, label %.lr.ph.i57, label %._crit_edge.i

._crit_edge58.i.loopexit.unr-lcssa:               ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge58.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge58.i.loopexit.unr-lcssa, %.lr.ph57.i
  %indvars.iv67.i.epil.init = phi i64 [ 0, %.lr.ph57.i ], [ %indvars.iv.next68.i.1, %._crit_edge58.i.loopexit.unr-lcssa ] ; 2 uses
  %.05154.i.epil.init = phi ptr [ %i.bj, %.lr.ph57.i ], [ %i.dw, %._crit_edge58.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod146 = trunc i32 %i.bo to i1
  tail call void @llvm.assume(i1 %lcmp.mod146)
  %i.bw = trunc i64 %indvars.iv67.i.epil.init to i16
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv67.i.epil.init
  %i.by = load i16, ptr %i.bx, align 2
  %i.bz = zext i16 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.bz
  store i16 %i.bw, ptr %i.ca, align 2
  %.idx.i.epil = mul nuw nsw i64 %i.bz, 12
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx.i.epil ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = load float, ptr %i.cb, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %.05154.i.epil.init, i64 4
  store float %i.cd, ptr %.05154.i.epil.init, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cg = load float, ptr %i.cc, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %.05154.i.epil.init, i64 8
  store float %i.cg, ptr %i.ce, align 4
  %i.ci = load float, ptr %i.cf, align 4
  store float %i.ci, ptr %i.ch, align 4
  br label %._crit_edge58.i

._crit_edge58.i:                                  ; preds = %.epil.preheader, %._crit_edge58.i.loopexit.unr-lcssa, %._crit_edge.i
  tail call void @free(ptr noundef %.pre.i) #54
  store ptr %i.bj, ptr %i.b, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 5 uses
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = mul nsw i32 %i.ck, 3
  %i.cm = sext i32 %i.cl to i64
  %i.cn = shl nsw i64 %i.cm, 1
  %i.co = tail call noalias ptr @malloc(i64 noundef %i.cn) #56 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8            ; 3 uses
  %i.cr = load i32, ptr %i.cj, align 8            ; 2 uses
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph63.preheader.i, label %par_shapes__sort_points.exit

.lr.ph63.preheader.i:                             ; preds = %._crit_edge58.i
  %i.ct = mul i32 %i.cr, 3                        ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.ct, i32 1) ; 2 uses
  %xtraiter147 = and i32 %smax.i, 3               ; 3 uses
  %i.cu = icmp slt i32 %i.ct, 4
  br i1 %i.cu, label %.lr.ph63.i.epil.preheader, label %.lr.ph63.preheader.i.new

.lr.ph63.preheader.i.new:                         ; preds = %.lr.ph63.preheader.i
  %unroll_iter150 = and i32 %smax.i, 2147483644
  br label %.lr.ph63.i

bb.b:                                             ; preds = %bb.b, %.lr.ph57.i.new
  %indvars.iv67.i = phi i64 [ 0, %.lr.ph57.i.new ], [ %indvars.iv.next68.i.1, %bb.b ] ; 4 uses
  %.05154.i = phi ptr [ %i.bj, %.lr.ph57.i.new ], [ %i.dw, %bb.b ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph57.i.new ], [ %niter.next.1, %bb.b ]
  %i.cv = trunc i64 %indvars.iv67.i to i16
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv67.i
  %i.cx = load i16, ptr %i.cw, align 2
  %i.cy = zext i16 %i.cx to i64                   ; 2 uses
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.cy
  store i16 %i.cv, ptr %i.cz, align 2
  %.idx.i = mul nuw nsw i64 %i.cy, 12
  %i.da = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx.i ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dc = load float, ptr %i.da, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.05154.i, i64 4
  store float %i.dc, ptr %.05154.i, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.df = load float, ptr %i.db, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %.05154.i, i64 8
  store float %i.df, ptr %i.dd, align 4
  %i.dh = load float, ptr %i.de, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %.05154.i, i64 12
  store float %i.dh, ptr %i.dg, align 4
  %indvars.iv.next68.i = or disjoint i64 %indvars.iv67.i, 1 ; 2 uses
  %i.dj = trunc i64 %indvars.iv.next68.i to i16
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv.next68.i
  %i.dl = load i16, ptr %i.dk, align 2
  %i.dm = zext i16 %i.dl to i64                   ; 2 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.dm
  store i16 %i.dj, ptr %i.dn, align 2
  %.idx.i.1 = mul nuw nsw i64 %i.dm, 12
  %i.do = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx.i.1 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load float, ptr %i.do, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %.05154.i, i64 16
  store float %i.dq, ptr %i.di, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dt = load float, ptr %i.dp, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %.05154.i, i64 20
  store float %i.dt, ptr %i.dr, align 4
  %i.dv = load float, ptr %i.ds, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %.05154.i, i64 24 ; 2 uses
  store float %i.dv, ptr %i.du, align 4
  %indvars.iv.next68.i.1 = add nuw nsw i64 %indvars.iv67.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge58.i.loopexit.unr-lcssa, label %bb.b

.lr.ph63.i:                                       ; preds = %.lr.ph63.i, %.lr.ph63.preheader.i.new
  %.04760.i = phi ptr [ %i.cq, %.lr.ph63.preheader.i.new ], [ %i.ep, %.lr.ph63.i ] ; 5 uses
  %.04859.i = phi ptr [ %i.co, %.lr.ph63.preheader.i.new ], [ %i.eu, %.lr.ph63.i ] ; 5 uses
  %niter151 = phi i32 [ 0, %.lr.ph63.preheader.i.new ], [ %niter151.next.3, %.lr.ph63.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.04760.i, i64 2
  %i.dy = load i16, ptr %.04760.i, align 2
  %i.dz = zext i16 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2
  %i.ec = getelementptr inbounds nuw i8, ptr %.04859.i, i64 2
  store i16 %i.eb, ptr %.04859.i, align 2
  %i.ed = getelementptr inbounds nuw i8, ptr %.04760.i, i64 4
  %i.ee = load i16, ptr %i.dx, align 2
  %i.ef = zext i16 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.ef
  %i.eh = load i16, ptr %i.eg, align 2
  %i.ei = getelementptr inbounds nuw i8, ptr %.04859.i, i64 4
  store i16 %i.eh, ptr %i.ec, align 2
  %i.ej = getelementptr inbounds nuw i8, ptr %.04760.i, i64 6
  %i.ek = load i16, ptr %i.ed, align 2
  %i.el = zext i16 %i.ek to i64
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.el
  %i.en = load i16, ptr %i.em, align 2
  %i.eo = getelementptr inbounds nuw i8, ptr %.04859.i, i64 6
  store i16 %i.en, ptr %i.ei, align 2
  %i.ep = getelementptr inbounds nuw i8, ptr %.04760.i, i64 8 ; 2 uses
  %i.eq = load i16, ptr %i.ej, align 2
  %i.er = zext i16 %i.eq to i64
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2
  %i.eu = getelementptr inbounds nuw i8, ptr %.04859.i, i64 8 ; 2 uses
  store i16 %i.et, ptr %i.eo, align 2
  %niter151.next.3 = add nuw i32 %niter151, 4     ; 2 uses
  %niter151.ncmp.3 = icmp eq i32 %niter151.next.3, %unroll_iter150
  br i1 %niter151.ncmp.3, label %par_shapes__sort_points.exit.loopexit.unr-lcssa, label %.lr.ph63.i

par_shapes__sort_points.exit.loopexit.unr-lcssa:  ; preds = %.lr.ph63.i
  %lcmp.mod148.not = icmp eq i32 %xtraiter147, 0
  br i1 %lcmp.mod148.not, label %par_shapes__sort_points.exit, label %.lr.ph63.i.epil.preheader

.lr.ph63.i.epil.preheader:                        ; preds = %par_shapes__sort_points.exit.loopexit.unr-lcssa, %.lr.ph63.preheader.i
  %.04760.i.epil.init = phi ptr [ %i.cq, %.lr.ph63.preheader.i ], [ %i.ep, %par_shapes__sort_points.exit.loopexit.unr-lcssa ]
  %.04859.i.epil.init = phi ptr [ %i.co, %.lr.ph63.preheader.i ], [ %i.eu, %par_shapes__sort_points.exit.loopexit.unr-lcssa ]
  %lcmp.mod149 = icmp ne i32 %xtraiter147, 0
  tail call void @llvm.assume(i1 %lcmp.mod149)
  br label %.lr.ph63.i.epil

.lr.ph63.i.epil:                                  ; preds = %.lr.ph63.i.epil, %.lr.ph63.i.epil.preheader
  %.04760.i.epil = phi ptr [ %i.ev, %.lr.ph63.i.epil ], [ %.04760.i.epil.init, %.lr.ph63.i.epil.preheader ] ; 2 uses
  %.04859.i.epil = phi ptr [ %i.fa, %.lr.ph63.i.epil ], [ %.04859.i.epil.init, %.lr.ph63.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph63.i.epil ], [ 0, %.lr.ph63.i.epil.preheader ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.04760.i.epil, i64 2
  %i.ew = load i16, ptr %.04760.i.epil, align 2
  %i.ex = zext i16 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.ex
  %i.ez = load i16, ptr %i.ey, align 2
  %i.fa = getelementptr inbounds nuw i8, ptr %.04859.i.epil, i64 2
  store i16 %i.ez, ptr %.04859.i.epil, align 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter147
  br i1 %epil.iter.cmp.not, label %par_shapes__sort_points.exit, label %.lr.ph63.i.epil, !llvm.loop !72

par_shapes__sort_points.exit:                     ; preds = %par_shapes__sort_points.exit.loopexit.unr-lcssa, %.lr.ph63.i.epil, %._crit_edge58.i
  tail call void @free(ptr noundef %i.cq) #54
  store ptr %i.co, ptr %i.cp, align 8
  %i.fb = load i32, ptr %i.g, align 8
  %i.fc = sext i32 %i.fb to i64
  %i.fd = shl nsw i64 %i.fc, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bb, ptr align 2 %i.bn, i64 %i.fd, i1 false)
  tail call void @free(ptr noundef %i.bn) #54
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %par_shapes__sort_points.exit
  %i.fe = load i32, ptr %i.ax, align 8
  %i.ff = sext i32 %i.fe to i64
  %i.fg = shl nsw i64 %i.ff, 1
  %i.fh = tail call noalias ptr @malloc(i64 noundef %i.fg) #56
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %par_shapes__sort_points.exit
  %.047 = phi ptr [ %2, %par_shapes__sort_points.exit ], [ %i.fh, %bb.c ] ; 15 uses
  %i.fi = load i32, ptr %i.ax, align 8
  %i.fj = icmp sgt i32 %i.fi, 0
  br i1 %i.fj, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %i.fk = tail call noalias dereferenceable_or_null(16000) ptr @calloc(i64 noundef 16000, i64 noundef 1) #57 ; 4 uses
  %i.fl = load i32, ptr %i.g, align 8             ; 4 uses
  %i.fm = icmp sgt i32 %i.fl, 0
  %.pre311.pre.i = load ptr, ptr %i.b, align 8    ; 3 uses
  br i1 %i.fm, label %.lr.ph.i58, label %._crit_edge257.i

.lr.ph.i58:                                       ; preds = %._crit_edge
  %wide.trip.count.i59 = zext nneg i32 %i.fl to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i58
  %indvars.iv.i60 = phi i64 [ 0, %.lr.ph.i58 ], [ %indvars.iv.next.i62, %bb.g ] ; 3 uses
  %.0191216.i = phi i32 [ -1, %.lr.ph.i58 ], [ %i.fz, %bb.g ]
  %.idx.i61 = mul nuw nsw i64 %indvars.iv.i60, 12
  %i.fn = getelementptr inbounds nuw i8, ptr %.pre311.pre.i, i64 %.idx.i61 ; 3 uses
  %i.fo = load float, ptr %i.fn, align 4
  %i.fp = fptosi float %i.fo to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fr = load float, ptr %i.fq, align 4
  %i.fs = fptosi float %i.fr to i32
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fu = load float, ptr %i.ft, align 4
  %i.fv = fptosi float %i.fu to i32
  %i.fw = mul nsw i32 %i.fs, 20
  %i.fx = add nsw i32 %i.fw, %i.fp
  %i.fy = mul nsw i32 %i.fv, 400
  %i.fz = add nsw i32 %i.fx, %i.fy                ; 3 uses
  %.not208.i = icmp eq i32 %i.fz, %.0191216.i
  br i1 %.not208.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ga = trunc i64 %indvars.iv.i60 to i16
  %i.gb = add i16 %i.ga, 1
  %i.gc = sext i32 %i.fz to i64
  %i.gd = getelementptr inbounds [2 x i8], ptr %i.fk, i64 %i.gc
  store i16 %i.gb, ptr %i.gd, align 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.i62 = add nuw nsw i64 %indvars.iv.i60, 1 ; 2 uses
  %exitcond.not.i63 = icmp eq i64 %indvars.iv.next.i62, %wide.trip.count.i59
  br i1 %exitcond.not.i63, label %.lr.ph256.i.preheader, label %bb.e

.lr.ph256.i.preheader:                            ; preds = %bb.g
  %i.ge = insertelement <2 x float> poison, float %1, i64 0
  %i.gf = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph256.i

._crit_edge257.loopexit.i:                        ; preds = %bb.v
  %.pre310.i = load ptr, ptr %i.b, align 8
  br label %._crit_edge257.i

._crit_edge257.i:                                 ; preds = %._crit_edge257.loopexit.i, %._crit_edge
  %i.gg = phi ptr [ %.pre311.pre.i, %._crit_edge ], [ %.pre310.i, %._crit_edge257.loopexit.i ] ; 2 uses
  %.0183.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %.5188.i, %._crit_edge257.loopexit.i ]
  %.lcssa214.i = phi i32 [ %i.fl, %._crit_edge ], [ %i.kc, %._crit_edge257.loopexit.i ]
  tail call void @free(ptr noundef %i.fk) #54
  %i.gh = sub nsw i32 %.lcssa214.i, %.0183.lcssa.i ; 2 uses
  %i.gi = mul nsw i32 %i.gh, 3
  %i.gj = sext i32 %i.gi to i64
  %i.gk = shl nsw i64 %i.gj, 2
  %i.gl = tail call noalias ptr @malloc(i64 noundef %i.gk) #56 ; 2 uses
  %i.gm = load i32, ptr %i.g, align 8
  %i.gn = sext i32 %i.gm to i64
  %i.go = shl nsw i64 %i.gn, 1
  %i.gp = tail call noalias ptr @malloc(i64 noundef %i.go) #56 ; 4 uses
  %i.gq = load i32, ptr %i.g, align 8             ; 2 uses
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %.lr.ph266.i, label %._crit_edge267.i

.lr.ph256.i:                                      ; preds = %.lr.ph256.i.preheader, %bb.v
  %i.gs = phi i32 [ %i.kc, %bb.v ], [ %i.fl, %.lr.ph256.i.preheader ]
  %indvars.iv302.i = phi i64 [ %indvars.iv.next303.i, %bb.v ], [ 0, %.lr.ph256.i.preheader ] ; 5 uses
  %.0183252.i = phi i32 [ %.5188.i, %bb.v ], [ 0, %.lr.ph256.i.preheader ] ; 3 uses
  %.0189250.i = phi ptr [ %i.kd, %bb.v ], [ %.pre311.pre.i, %.lr.ph256.i.preheader ] ; 5 uses
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %indvars.iv302.i
  %i.gu = load i16, ptr %i.gt, align 2
  %i.gv = zext i16 %i.gu to i64
  %.not200.i = icmp eq i64 %indvars.iv302.i, %i.gv
  br i1 %.not200.i, label %bb.h, label %bb.v

bb.h:                                             ; preds = %.lr.ph256.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  %i.gw = getelementptr inbounds nuw i8, ptr %.0189250.i, i64 4
  %i.gx = getelementptr inbounds nuw i8, ptr %.0189250.i, i64 8 ; 2 uses
  %i.gy = load float, ptr %i.gx, align 4          ; 2 uses
  %i.gz = fsub float %i.gy, %1
  %i.ha = fptosi float %i.gz to i32               ; 2 uses
  %i.hb = fadd float %1, %i.gy
  %i.hc = fptosi float %i.hb to i32               ; 2 uses
  %i.hd = load <2 x float>, ptr %.0189250.i, align 4 ; 2 uses
  %i.he = fsub <2 x float> %i.hd, %i.gf
  %i.hf = fptosi <2 x float> %i.he to <2 x i32>   ; 3 uses
  %i.hg = fadd <2 x float> %i.gf, %i.hd
  %i.hh = fptosi <2 x float> %i.hg to <2 x i32>   ; 2 uses
  %i.hi = icmp sgt <2 x i32> %i.hf, %i.hh         ; 2 uses
  %i.hj = extractelement <2 x i1> %i.hi, i64 0
  %i.hk = extractelement <2 x i1> %i.hi, i64 1
  %or.cond.i = select i1 %i.hj, i1 true, i1 %i.hk
  %.not206219.i = icmp sgt i32 %i.ha, %i.hc
  %or.cond335.i = select i1 %or.cond.i, i1 true, i1 %.not206219.i
  br i1 %or.cond335.i, label %.preheader.._crit_edge248_crit_edge.i, label %.lr.ph229.preheader.i

.lr.ph229.preheader.i:                            ; preds = %bb.h
  %i.hl = sext i32 %i.ha to i64
  %i.hm = add i32 %i.hc, 1
  %i.hn = extractelement <2 x i32> %i.hf, i64 1
  %i.ho = sext i32 %i.hn to i64
  %i.hp = extractelement <2 x i32> %i.hf, i64 0
  %i.hq = sext i32 %i.hp to i64
  %i.hr = add <2 x i32> %i.hh, splat (i32 1)      ; 2 uses
  %i.hs = extractelement <2 x i32> %i.hr, i64 0
  %i.ht = extractelement <2 x i32> %i.hr, i64 1
  br label %.lr.ph229.i

.preheader.i:                                     ; preds = %._crit_edge230.split.i
  %i.hu = icmp sgt i32 %.5.i, 0
  br i1 %i.hu, label %.lr.ph247.i, label %.preheader.._crit_edge248_crit_edge.i

.preheader.._crit_edge248_crit_edge.i:            ; preds = %.preheader.i, %bb.h
  %.pre.pre.i = load i32, ptr %i.g, align 8
  br label %._crit_edge248.i

.lr.ph247.i:                                      ; preds = %.preheader.i
  %i.hv = trunc nuw i64 %indvars.iv302.i to i16
  %wide.trip.count300.i = zext nneg i32 %.5.i to i64
  br label %bb.n

.lr.ph229.i:                                      ; preds = %._crit_edge230.split.i, %.lr.ph229.preheader.i
  %indvars.iv292.i = phi i64 [ %i.hq, %.lr.ph229.preheader.i ], [ %indvars.iv.next293.i, %._crit_edge230.split.i ] ; 2 uses
  %.0178233.i = phi i32 [ 0, %.lr.ph229.preheader.i ], [ %.5.i, %._crit_edge230.split.i ]
  br label %.lr.ph223.i

._crit_edge230.split.i:                           ; preds = %..loopexit_crit_edge.i
  %indvars.iv.next293.i = add nsw i64 %indvars.iv292.i, 1 ; 2 uses
  %lftr.wideiv295.i = trunc i64 %indvars.iv.next293.i to i32
  %exitcond296.not.i = icmp eq i32 %i.hs, %lftr.wideiv295.i
  br i1 %exitcond296.not.i, label %.preheader.i, label %.lr.ph229.i

.lr.ph223.i:                                      ; preds = %..loopexit_crit_edge.i, %.lr.ph229.i
  %indvars.iv287.i = phi i64 [ %i.ho, %.lr.ph229.i ], [ %indvars.iv.next288.i, %..loopexit_crit_edge.i ] ; 2 uses
  %.1179225.i = phi i32 [ %.0178233.i, %.lr.ph229.i ], [ %.5.i, %..loopexit_crit_edge.i ]
  %i.hw = mul nsw i64 %indvars.iv287.i, 20
  %i.hx = add nsw i64 %i.hw, %indvars.iv292.i
  br label %bb.i

end_hunk_6
begin_hunk_7_@par_shapes_weld:bb.a

.lr.ph273.preheader.i:                            ; preds = %._crit_edge267.i
  %i.km = load ptr, ptr %i.cp, align 8            ; 2 uses
  br label %.lr.ph273.i

.lr.ph266.i:                                      ; preds = %._crit_edge257.i, %bb.y
  %i.kn = phi i32 [ %i.ld, %bb.y ], [ %i.gq, %._crit_edge257.i ]
  %indvars.iv305.i = phi i64 [ %indvars.iv.next306.i, %bb.y ], [ 0, %._crit_edge257.i ] ; 3 uses
  %.0165263.i = phi i16 [ %.1166.i, %bb.y ], [ 0, %._crit_edge257.i ] ; 3 uses
  %.0167262.i = phi ptr [ %i.le, %bb.y ], [ %i.gg, %._crit_edge257.i ] ; 4 uses
  %.0168261.i = phi ptr [ %.1169.i, %bb.y ], [ %i.gp, %._crit_edge257.i ] ; 2 uses
  %.0170260.i = phi ptr [ %.1171.i, %bb.y ], [ %i.gl, %._crit_edge257.i ] ; 5 uses
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %indvars.iv305.i
  %i.kp = load i16, ptr %i.ko, align 2
  %i.kq = zext i16 %i.kp to i64                   ; 2 uses
  %i.kr = icmp eq i64 %indvars.iv305.i, %i.kq
  br i1 %i.kr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph266.i
  %i.ks = load float, ptr %.0167262.i, align 4
  %i.kt = getelementptr inbounds nuw i8, ptr %.0170260.i, i64 4
  store float %i.ks, ptr %.0170260.i, align 4
  %i.ku = getelementptr inbounds nuw i8, ptr %.0167262.i, i64 4
  %i.kv = load float, ptr %i.ku, align 4
  %i.kw = getelementptr inbounds nuw i8, ptr %.0170260.i, i64 8
  store float %i.kv, ptr %i.kt, align 4
  %i.kx = getelementptr inbounds nuw i8, ptr %.0167262.i, i64 8
  %i.ky = load float, ptr %i.kx, align 4
  %i.kz = getelementptr inbounds nuw i8, ptr %.0170260.i, i64 12
  store float %i.ky, ptr %i.kw, align 4
  %i.la = add i16 %.0165263.i, 1
  %.pre312.i = load i32, ptr %i.g, align 8
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph266.i
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.gp, i64 %i.kq
  %i.lc = load i16, ptr %i.lb, align 2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ld = phi i32 [ %i.kn, %bb.x ], [ %.pre312.i, %bb.w ] ; 2 uses
  %storemerge.i = phi i16 [ %i.lc, %bb.x ], [ %.0165263.i, %bb.w ]
  %.1171.i = phi ptr [ %.0170260.i, %bb.x ], [ %i.kz, %bb.w ]
  %.1166.i = phi i16 [ %.0165263.i, %bb.x ], [ %i.la, %bb.w ]
  %.1169.i = getelementptr inbounds nuw i8, ptr %.0168261.i, i64 2
  store i16 %storemerge.i, ptr %.0168261.i, align 2
  %indvars.iv.next306.i = add nuw nsw i64 %indvars.iv305.i, 1 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.0167262.i, i64 12
  %i.lf = sext i32 %i.ld to i64
  %i.lg = icmp slt i64 %indvars.iv.next306.i, %i.lf
  br i1 %i.lg, label %.lr.ph266.i, label %._crit_edge267.loopexit.i

.lr.ph273.i:                                      ; preds = %bb.aa, %.lr.ph273.preheader.i
  %i.lh = phi i32 [ %i.mb, %bb.aa ], [ %i.kk, %.lr.ph273.preheader.i ]
  %.0271.i = phi i32 [ %i.mc, %bb.aa ], [ 0, %.lr.ph273.preheader.i ]
  %.0160270.i = phi i32 [ %.1.i, %bb.aa ], [ 0, %.lr.ph273.preheader.i ] ; 2 uses
  %.0161269.i = phi ptr [ %.1162.i, %bb.aa ], [ %i.km, %.lr.ph273.preheader.i ] ; 5 uses
  %.0163268.i = phi ptr [ %i.md, %bb.aa ], [ %i.km, %.lr.ph273.preheader.i ] ; 4 uses
  %i.li = load i16, ptr %.0163268.i, align 2
  %i.lj = zext i16 %i.li to i64
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %i.lj
  %i.ll = load i16, ptr %i.lk, align 2            ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.0163268.i, i64 2
  %i.ln = load i16, ptr %i.lm, align 2
  %i.lo = zext i16 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %i.lo
  %i.lq = load i16, ptr %i.lp, align 2            ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.0163268.i, i64 4
  %i.ls = load i16, ptr %i.lr, align 2
  %i.lt = zext i16 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %i.lt
  %i.lv = load i16, ptr %i.lu, align 2            ; 3 uses
  %.not.i = icmp eq i16 %i.ll, %i.lq
  %.not198.i = icmp eq i16 %i.ll, %i.lv
  %.not199.i = icmp eq i16 %i.lq, %i.lv
  %i.lw = or i1 %.not198.i, %.not199.i
  %or.cond209.i = select i1 %.not.i, i1 true, i1 %i.lw
  br i1 %or.cond209.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph273.i
  %i.lx = getelementptr inbounds nuw i8, ptr %.0161269.i, i64 2
  store i16 %i.ll, ptr %.0161269.i, align 2
  %i.ly = getelementptr inbounds nuw i8, ptr %.0161269.i, i64 4
  store i16 %i.lq, ptr %i.lx, align 2
  %i.lz = getelementptr inbounds nuw i8, ptr %.0161269.i, i64 6
  store i16 %i.lv, ptr %i.ly, align 2
  %i.ma = add nsw i32 %.0160270.i, 1
  %.pre314.i = load i32, ptr %i.cj, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph273.i
  %i.mb = phi i32 [ %.pre314.i, %bb.z ], [ %i.lh, %.lr.ph273.i ] ; 2 uses
  %.1162.i = phi ptr [ %i.lz, %bb.z ], [ %.0161269.i, %.lr.ph273.i ]
  %.1.i = phi i32 [ %i.ma, %bb.z ], [ %.0160270.i, %.lr.ph273.i ] ; 2 uses
  %i.mc = add nuw nsw i32 %.0271.i, 1             ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.0163268.i, i64 6
  %i.me = icmp slt i32 %i.mc, %i.mb
  br i1 %i.me, label %.lr.ph273.i, label %par_shapes__weld_points.exit

par_shapes__weld_points.exit:                     ; preds = %bb.aa, %._crit_edge267.i
  %.0160.lcssa.i = phi i32 [ 0, %._crit_edge267.i ], [ %.1.i, %bb.aa ]
  store i32 %.0160.lcssa.i, ptr %i.cj, align 8
  br i1 %.not, label %bb.ac, label %bb.ab

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.d ] ; 3 uses
  %i.mf = trunc i64 %indvars.iv to i16
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %indvars.iv
  store i16 %i.mf, ptr %i.mg, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mh = load i32, ptr %i.ax, align 8
  %i.mi = sext i32 %i.mh to i64
  %i.mj = icmp slt i64 %indvars.iv.next, %i.mi
  br i1 %i.mj, label %.lr.ph, label %._crit_edge

bb.ab:                                            ; preds = %par_shapes__weld_points.exit
  %i.mk = load i32, ptr %i.ax, align 8
  %i.ml = sext i32 %i.mk to i64
  %i.mm = shl nsw i64 %i.ml, 1
  %i.mn = tail call noalias ptr @malloc(i64 noundef %i.mm) #56 ; 7 uses
  %i.mo = load i32, ptr %i.ax, align 8            ; 4 uses
  %i.mp = icmp sgt i32 %i.mo, 0
  br i1 %i.mp, label %.lr.ph89.preheader, label %._crit_edge90

.lr.ph89.preheader:                               ; preds = %bb.ab
  %wide.trip.count = zext nneg i32 %i.mo to i64   ; 2 uses
  %xtraiter152 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.mq = icmp ult i32 %i.mo, 4
  br i1 %i.mq, label %.lr.ph89.epil.preheader, label %.lr.ph89.preheader.new

.lr.ph89.preheader.new:                           ; preds = %.lr.ph89.preheader
  %unroll_iter156 = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph89

._crit_edge90.loopexit.unr-lcssa:                 ; preds = %.lr.ph89
  %lcmp.mod154.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod154.not, label %._crit_edge90, label %.lr.ph89.epil.preheader

.lr.ph89.epil.preheader:                          ; preds = %._crit_edge90.loopexit.unr-lcssa, %.lr.ph89.preheader
  %indvars.iv99.epil.init = phi i64 [ 0, %.lr.ph89.preheader ], [ %indvars.iv.next100.3, %._crit_edge90.loopexit.unr-lcssa ]
  %lcmp.mod155 = icmp ne i64 %xtraiter152, 0
  tail call void @llvm.assume(i1 %lcmp.mod155)
  br label %.lr.ph89.epil

.lr.ph89.epil:                                    ; preds = %.lr.ph89.epil, %.lr.ph89.epil.preheader
  %indvars.iv99.epil = phi i64 [ %indvars.iv99.epil.init, %.lr.ph89.epil.preheader ], [ %indvars.iv.next100.epil, %.lr.ph89.epil ] ; 3 uses
  %epil.iter153 = phi i64 [ 0, %.lr.ph89.epil.preheader ], [ %epil.iter153.next, %.lr.ph89.epil ]
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv99.epil
  %i.ms = load i16, ptr %i.mr, align 2
  %i.mt = zext i16 %i.ms to i64
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %i.mt
  %i.mv = load i16, ptr %i.mu, align 2
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %indvars.iv99.epil
  store i16 %i.mv, ptr %i.mw, align 2
  %indvars.iv.next100.epil = add nuw nsw i64 %indvars.iv99.epil, 1
  %epil.iter153.next = add i64 %epil.iter153, 1   ; 2 uses
  %epil.iter153.cmp.not = icmp eq i64 %epil.iter153.next, %xtraiter152
  br i1 %epil.iter153.cmp.not, label %._crit_edge90, label %.lr.ph89.epil, !llvm.loop !73

._crit_edge90:                                    ; preds = %._crit_edge90.loopexit.unr-lcssa, %.lr.ph89.epil, %bb.ab
  %i.mx = sext i32 %i.mo to i64
  %i.my = shl nsw i64 %i.mx, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.047, ptr align 2 %i.mn, i64 %i.my, i1 false)
  br label %bb.ac

.lr.ph89:                                         ; preds = %.lr.ph89, %.lr.ph89.preheader.new
  %indvars.iv99 = phi i64 [ 0, %.lr.ph89.preheader.new ], [ %indvars.iv.next100.3, %.lr.ph89 ] ; 6 uses
  %niter157 = phi i64 [ 0, %.lr.ph89.preheader.new ], [ %niter157.next.3, %.lr.ph89 ]
  %i.mz = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv99
  %i.na = load i16, ptr %i.mz, align 2
  %i.nb = zext i16 %i.na to i64
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %i.nb
  %i.nd = load i16, ptr %i.nc, align 2
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %indvars.iv99
  store i16 %i.nd, ptr %i.ne, align 2
  %indvars.iv.next100 = or disjoint i64 %indvars.iv99, 1 ; 2 uses
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv.next100
  %i.ng = load i16, ptr %i.nf, align 2
  %i.nh = zext i16 %i.ng to i64
  %i.ni = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %i.nh
  %i.nj = load i16, ptr %i.ni, align 2
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %indvars.iv.next100
  store i16 %i.nj, ptr %i.nk, align 2
  %indvars.iv.next100.1 = or disjoint i64 %indvars.iv99, 2 ; 2 uses
  %i.nl = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv.next100.1
  %i.nm = load i16, ptr %i.nl, align 2
  %i.nn = zext i16 %i.nm to i64
  %i.no = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %i.nn
  %i.np = load i16, ptr %i.no, align 2
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %indvars.iv.next100.1
  store i16 %i.np, ptr %i.nq, align 2
  %indvars.iv.next100.2 = or disjoint i64 %indvars.iv99, 3 ; 2 uses
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv.next100.2
  %i.ns = load i16, ptr %i.nr, align 2
  %i.nt = zext i16 %i.ns to i64
  %i.nu = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %i.nt
  %i.nv = load i16, ptr %i.nu, align 2
  %i.nw = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %indvars.iv.next100.2
  store i16 %i.nv, ptr %i.nw, align 2
  %indvars.iv.next100.3 = add nuw nsw i64 %indvars.iv99, 4 ; 2 uses
  %niter157.next.3 = add nuw i64 %niter157, 4     ; 2 uses
  %niter157.ncmp.3 = icmp eq i64 %niter157.next.3, %unroll_iter156
  br i1 %niter157.ncmp.3, label %._crit_edge90.loopexit.unr-lcssa, label %.lr.ph89

bb.ac:                                            ; preds = %par_shapes__weld_points.exit, %._crit_edge90
  %.sink = phi ptr [ %i.mn, %._crit_edge90 ], [ %.047, %par_shapes__weld_points.exit ]
  tail call void @free(ptr noundef %.sink) #54
  tail call void @free(ptr noundef %i.bb) #54
  %i.nx = fdiv float 1.000000e+00, %i.ad
  %i.ny = fdiv <2 x float> splat (float 1.000000e+00), %i.ah ; 2 uses
  %i.nz = extractelement <2 x float> %i.ny, i64 0
  %i.oa = extractelement <2 x float> %i.ny, i64 1
  tail call void @par_shapes_scale(ptr noundef nonnull %i.b, float noundef %i.nx, float noundef %i.nz, float noundef %i.oa)
  %i.ob = load i32, ptr %i.g, align 8
  %i.oc = icmp sgt i32 %i.ob, 0
  br i1 %i.oc, label %.lr.ph.preheader.i67, label %par_shapes_translate.exit71

.lr.ph.preheader.i67:                             ; preds = %bb.ac
  %i.od = load ptr, ptr %i.b, align 8
  %i.oe = extractelement <2 x float> %i.z, i64 0
  %i.of = extractelement <2 x float> %i.z, i64 1
  br label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %.lr.ph.i68, %.lr.ph.preheader.i67
  %.011.i69 = phi i32 [ %i.op, %.lr.ph.i68 ], [ 0, %.lr.ph.preheader.i67 ]
  %.0910.i70 = phi ptr [ %i.om, %.lr.ph.i68 ], [ %i.od, %.lr.ph.preheader.i67 ] ; 5 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.0910.i70, i64 4 ; 2 uses
  %i.oh = load float, ptr %.0910.i70, align 4
  %i.oi = fadd float %.sroa.0.0, %i.oh
  store float %i.oi, ptr %.0910.i70, align 4
  %i.oj = getelementptr inbounds nuw i8, ptr %.0910.i70, i64 8 ; 2 uses
  %i.ok = load float, ptr %i.og, align 4
  %i.ol = fadd float %i.oe, %i.ok
  store float %i.ol, ptr %i.og, align 4
  %i.om = getelementptr inbounds nuw i8, ptr %.0910.i70, i64 12
  %i.on = load float, ptr %i.oj, align 4
  %i.oo = fadd float %i.of, %i.on
  store float %i.oo, ptr %i.oj, align 4
  %i.op = add nuw nsw i32 %.011.i69, 1            ; 2 uses
  %i.oq = load i32, ptr %i.g, align 8
  %i.or = icmp slt i32 %i.op, %i.oq
  br i1 %i.or, label %.lr.ph.i68, label %par_shapes_translate.exit71

par_shapes_translate.exit71:                      ; preds = %.lr.ph.i68, %bb.ac
  ret ptr %i.b
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @par_shapes_compute_normals(ptr nofree noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @free(ptr noundef %i.b) #54
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = mul nsw i32 %i.d, 3
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 1) #57 ; 2 uses
  store ptr %i.h, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.n = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.h, %bb.a ]
  %i.o = load i32, ptr %i.c, align 8              ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph91, label %._crit_edge92

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03887 = phi ptr [ %i.ef, %.lr.ph ], [ %i.m, %.lr.ph.preheader ] ; 4 uses
  %.03986 = phi i32 [ %i.ee, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.q = load ptr, ptr %0, align 8                ; 3 uses
  %i.r = load i16, ptr %.03887, align 2
  %i.s = zext i16 %i.r to i64
  %.idx = mul nuw nsw i64 %i.s, 12                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.03887, i64 2 ; 2 uses
  %i.v = load i16, ptr %i.u, align 2
  %i.w = zext i16 %i.v to i64
  %.idx40 = mul nuw nsw i64 %i.w, 12
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx40 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.03887, i64 4 ; 2 uses
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = zext i16 %i.z to i64
  %.idx41 = mul nuw nsw i64 %i.aa, 12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx41 ; 4 uses
  %i.ac = load float, ptr %i.x, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 3 uses
  %i.ae = load float, ptr %i.t, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 3 uses
  %i.ag = load float, ptr %i.ab, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 3 uses
  %i.ai = load ptr, ptr %i.a, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx ; 3 uses
  %i.ak = load <2 x float>, ptr %i.ad, align 4    ; 2 uses
  %i.al = load <2 x float>, ptr %i.af, align 4    ; 3 uses
  %i.am = fsub <2 x float> %i.ak, %i.al           ; 2 uses
  %i.an = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ao = insertelement <2 x float> %i.an, float %i.ac, i64 1
  %i.ap = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aq = insertelement <2 x float> %i.ap, float %i.ae, i64 1 ; 2 uses
  %i.ar = fsub <2 x float> %i.ao, %i.aq           ; 2 uses
  %i.as = load <2 x float>, ptr %i.ah, align 4    ; 2 uses
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.au = insertelement <2 x float> %i.at, float %i.ag, i64 1
  %i.av = fsub <2 x float> %i.au, %i.aq           ; 2 uses
  %i.aw = fsub <2 x float> %i.as, %i.al           ; 2 uses
  %i.ax = fneg <2 x float> %i.aw
  %i.ay = fmul <2 x float> %i.ar, %i.ax
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.av, <2 x float> %i.ay)
  %i.ba = extractelement <2 x float> %i.av, i64 1
  %i.bb = fneg float %i.ba
  %i.bc = extractelement <2 x float> %i.am, i64 0
  %i.bd = fmul float %i.bc, %i.bb
  %i.be = extractelement <2 x float> %i.ar, i64 1
  %i.bf = extractelement <2 x float> %i.aw, i64 0
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.be, float %i.bf, float %i.bd)
  %i.bh = load <2 x float>, ptr %i.aj, align 4
  %i.bi = fadd <2 x float> %i.az, %i.bh
  store <2 x float> %i.bi, ptr %i.aj, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4
  %i.bl = fadd float %i.bg, %i.bk
  store float %i.bl, ptr %i.bj, align 4
  %i.bm = load float, ptr %i.ab, align 4
  %i.bn = load float, ptr %i.x, align 4
  %i.bo = load float, ptr %i.t, align 4
  %i.bp = load ptr, ptr %i.a, align 8
  %i.bq = load i16, ptr %i.u, align 2
  %i.br = zext i16 %i.bq to i64
  %.idx43 = mul nuw nsw i64 %i.br, 12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx43 ; 3 uses
  %i.bt = load <2 x float>, ptr %i.ah, align 4    ; 2 uses
  %i.bu = load <2 x float>, ptr %i.ad, align 4    ; 3 uses
  %i.bv = fsub <2 x float> %i.bt, %i.bu           ; 2 uses
  %i.bw = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bx = insertelement <2 x float> %i.bw, float %i.bm, i64 1
  %i.by = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bz = insertelement <2 x float> %i.by, float %i.bn, i64 1 ; 2 uses
  %i.ca = fsub <2 x float> %i.bx, %i.bz           ; 2 uses
  %i.cb = load <2 x float>, ptr %i.af, align 4    ; 2 uses
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cd = insertelement <2 x float> %i.cc, float %i.bo, i64 1
  %i.ce = fsub <2 x float> %i.cd, %i.bz           ; 2 uses
  %i.cf = fsub <2 x float> %i.cb, %i.bu           ; 2 uses
  %i.cg = fneg <2 x float> %i.cf
  %i.ch = fmul <2 x float> %i.ca, %i.cg
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.ce, <2 x float> %i.ch)
  %i.cj = extractelement <2 x float> %i.ce, i64 1
  %i.ck = fneg float %i.cj
  %i.cl = extractelement <2 x float> %i.bv, i64 0
  %i.cm = fmul float %i.cl, %i.ck
  %i.cn = extractelement <2 x float> %i.ca, i64 1
  %i.co = extractelement <2 x float> %i.cf, i64 0
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.co, float %i.cm)
  %i.cq = load <2 x float>, ptr %i.bs, align 4
  %i.cr = fadd <2 x float> %i.ci, %i.cq
  store <2 x float> %i.cr, ptr %i.bs, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4
  %i.cu = fadd float %i.cp, %i.ct
  store float %i.cu, ptr %i.cs, align 4
  %i.cv = load float, ptr %i.t, align 4
  %i.cw = load float, ptr %i.ab, align 4
  %i.cx = load float, ptr %i.x, align 4
  %i.cy = load ptr, ptr %i.a, align 8
  %i.cz = load i16, ptr %i.y, align 2
  %i.da = zext i16 %i.cz to i64
  %.idx44 = mul nuw nsw i64 %i.da, 12
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx44 ; 3 uses
  %i.dc = load <2 x float>, ptr %i.af, align 4    ; 2 uses
  %i.dd = load <2 x float>, ptr %i.ah, align 4    ; 3 uses
  %i.de = fsub <2 x float> %i.dc, %i.dd           ; 2 uses
  %i.df = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dg = insertelement <2 x float> %i.df, float %i.cv, i64 1
  %i.dh = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.di = insertelement <2 x float> %i.dh, float %i.cw, i64 1 ; 2 uses
  %i.dj = fsub <2 x float> %i.dg, %i.di           ; 2 uses
  %i.dk = load <2 x float>, ptr %i.ad, align 4    ; 2 uses
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dm = insertelement <2 x float> %i.dl, float %i.cx, i64 1
  %i.dn = fsub <2 x float> %i.dm, %i.di           ; 2 uses
  %i.do = fsub <2 x float> %i.dk, %i.dd           ; 2 uses
  %i.dp = fneg <2 x float> %i.do
  %i.dq = fmul <2 x float> %i.dj, %i.dp
  %i.dr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.dn, <2 x float> %i.dq)
  %i.ds = extractelement <2 x float> %i.dn, i64 1
  %i.dt = fneg float %i.ds
  %i.du = extractelement <2 x float> %i.de, i64 0
  %i.dv = fmul float %i.du, %i.dt
  %i.dw = extractelement <2 x float> %i.dj, i64 1
  %i.dx = extractelement <2 x float> %i.do, i64 0
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dw, float %i.dx, float %i.dv)
  %i.dz = load <2 x float>, ptr %i.db, align 4
  %i.ea = fadd <2 x float> %i.dr, %i.dz
  store <2 x float> %i.ea, ptr %i.db, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4
  %i.ed = fadd float %i.dy, %i.ec
  store float %i.ed, ptr %i.eb, align 4
  %i.ee = add nuw nsw i32 %.03986, 1              ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.03887, i64 6
  %i.eg = load i32, ptr %i.i, align 8
  %i.eh = icmp slt i32 %i.ee, %i.eg
  br i1 %i.eh, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge92:                                    ; preds = %par_shapes__normalize3.exit, %._crit_edge
  ret void

.lr.ph91:                                         ; preds = %._crit_edge, %par_shapes__normalize3.exit
  %i.ei = phi i32 [ %i.ew, %par_shapes__normalize3.exit ], [ %i.o, %._crit_edge ]
  %.089 = phi i32 [ %i.ex, %par_shapes__normalize3.exit ], [ 0, %._crit_edge ]
  %.03788 = phi ptr [ %i.ey, %par_shapes__normalize3.exit ], [ %i.n, %._crit_edge ] ; 4 uses
  %i.ej = load <2 x float>, ptr %.03788, align 4  ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.ej, %i.ej
  %i.ek = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.el = extractelement <2 x float> %i.ej, i64 0 ; 2 uses
  %i.em = tail call float @llvm.fmuladd.f32(float %i.el, float %i.el, float %i.ek)
  %i.en = getelementptr inbounds nuw i8, ptr %.03788, i64 8 ; 2 uses
  %i.eo = load float, ptr %i.en, align 4          ; 3 uses
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.eo, float %i.em) ; 2 uses
  %i.eq = fcmp ogt float %i.ep, 0.000000e+00
  br i1 %i.eq, label %bb.b, label %par_shapes__normalize3.exit

bb.b:                                             ; preds = %.lr.ph91
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.ep)
  %i.er = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.es = insertelement <2 x float> poison, float %i.er, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = fmul <2 x float> %i.ej, %i.et
  store <2 x float> %i.eu, ptr %.03788, align 4
  %i.ev = fmul float %i.eo, %i.er
  store float %i.ev, ptr %i.en, align 4
  %.pre93 = load i32, ptr %i.c, align 8
  br label %par_shapes__normalize3.exit

par_shapes__normalize3.exit:                      ; preds = %.lr.ph91, %bb.b
  %i.ew = phi i32 [ %i.ei, %.lr.ph91 ], [ %.pre93, %bb.b ] ; 2 uses
  %i.ex = add nuw nsw i32 %.089, 1                ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.03788, i64 12
  %i.ez = icmp slt i32 %i.ex, %i.ew
  br i1 %i.ez, label %.lr.ph91, label %._crit_edge92
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @par_shapes_free_mesh(ptr noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @free(ptr noundef %i.a) #54
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @free(ptr noundef %i.c) #54
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @free(ptr noundef %i.e) #54
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @free(ptr noundef %i.g) #54
  tail call void @free(ptr noundef %0) #54
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noalias noundef ptr @par_shapes_create_cylinder(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 3
  %i.b = icmp slt i32 %1, 1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %.lr.ph96.i

.lr.ph96.i:                                       ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 48, i64 noundef 1) #57 ; 7 uses
  %i.d = add nuw i32 %0, 1                        ; 2 uses
  %i.e = add nuw i32 %1, 1
  %i.f = mul nsw i32 %i.e, %i.d                   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.f, ptr %i.g, align 8
  %i.h = mul nsw i32 %i.f, 3
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 1) #57 ; 2 uses
  store ptr %i.k, ptr %i.c, align 8
  %i.l = uitofp nneg i32 %1 to float              ; 2 uses
  %i.m = uitofp nneg i32 %0 to float              ; 5 uses
  %i.n = add nuw i32 %0, 1                        ; 2 uses
  %unroll_iter = and i32 %i.n, -2
  %i.o = and i32 %0, 1
  %lcmp.mod.not.not = icmp eq i32 %i.o, 0
  %lcmp.mod24 = trunc i32 %i.n to i1
  br label %.lr.ph.i

._crit_edge97.i:                                  ; preds = %._crit_edge.i
  %i.p = shl nsw i32 %i.f, 1
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = tail call noalias ptr @calloc(i64 noundef %i.r, i64 noundef 1) #57 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.s, ptr %i.t, align 8
  %i.u = add nuw i32 %0, 1
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %n.vec = and i64 %i.v, 4294967292               ; 4 uses
  %i.w = trunc nuw i64 %n.vec to i32
  %i.x = shl nuw nsw i64 %n.vec, 3
  %broadcast.splatinsert19 = insertelement <4 x float> poison, float %i.m, i64 0
  %broadcast.splat20 = shufflevector <4 x float> %broadcast.splatinsert19, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.v
  br label %.lr.ph103.i

.lr.ph.i:                                         ; preds = %.lr.ph96.i, %._crit_edge.i
  %.08194.i = phi i32 [ %i.al, %._crit_edge.i ], [ 0, %.lr.ph96.i ] ; 3 uses
  %.08293.i = phi ptr [ %.lcssa22, %._crit_edge.i ], [ %i.k, %.lr.ph96.i ]
  %i.y = uitofp nneg i32 %.08194.i to float
  %i.z = fdiv float %i.y, %i.l                    ; 3 uses
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge.i

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %i.aa = uitofp nneg i32 %i.bj to float
  %i.ab = fdiv float %i.aa, %i.m
  %i.ac = fmul float %i.ab, 2.000000e+00
  %i.ad = fpext float %i.ac to double
  %i.ae = fmul double %i.ad, f0x400921FB54442EEA
  %i.af = fptrunc double %i.ae to float           ; 2 uses
  %i.ag = tail call float @sinf(float noundef %i.af) #54
  %i.ah = tail call float @cosf(float noundef %i.af) #54
  %i.ai = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store float %i.ag, ptr %i.bi, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store float %i.ah, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store float %i.z, ptr %i.aj, align 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa22 = phi ptr [ %i.bi, %._crit_edge.i.unr-lcssa ], [ %i.ak, %.epil.preheader ]
  %i.al = add nuw i32 %.08194.i, 1
  %exitcond124.not.i = icmp eq i32 %.08194.i, %1
  br i1 %exitcond124.not.i, label %._crit_edge97.i, label %.lr.ph.i

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.08091.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bj, %bb.b ] ; 3 uses
  %.18390.i = phi ptr [ %.08293.i, %.lr.ph.i ], [ %i.bi, %bb.b ] ; 7 uses
  %niter = phi i32 [ 0, %.lr.ph.i ], [ %niter.next.1, %bb.b ]
  %i.am = uitofp nneg i32 %.08091.i to float
  %i.an = fdiv float %i.am, %i.m
  %i.ao = fmul float %i.an, 2.000000e+00
  %i.ap = fpext float %i.ao to double
  %i.aq = fmul double %i.ap, f0x400921FB54442EEA
  %i.ar = fptrunc double %i.aq to float           ; 2 uses
  %i.as = tail call float @sinf(float noundef %i.ar) #54
  %i.at = tail call float @cosf(float noundef %i.ar) #54
  %i.au = getelementptr inbounds nuw i8, ptr %.18390.i, i64 4
  store float %i.as, ptr %.18390.i, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %.18390.i, i64 8
  store float %i.at, ptr %i.au, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %.18390.i, i64 12
  store float %i.z, ptr %i.av, align 4
  %i.ax = or disjoint i32 %.08091.i, 1
  %i.ay = uitofp nneg i32 %i.ax to float
  %i.az = fdiv nnan float %i.ay, %i.m
  %i.ba = fmul nnan float %i.az, 2.000000e+00
  %i.bb = fpext nnan float %i.ba to double
  %i.bc = fmul nnan double %i.bb, f0x400921FB54442EEA
  %i.bd = fptrunc double %i.bc to float           ; 2 uses
  %i.be = tail call float @sinf(float noundef %i.bd) #54
  %i.bf = tail call float @cosf(float noundef %i.bd) #54
  %i.bg = getelementptr inbounds nuw i8, ptr %.18390.i, i64 16
  store float %i.be, ptr %i.aw, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %.18390.i, i64 20
  store float %i.bf, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.18390.i, i64 24 ; 6 uses
  store float %i.z, ptr %i.bh, align 4
  %i.bj = add nuw nsw i32 %.08091.i, 2            ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

.preheader.i.preheader:                           ; preds = %._crit_edge104.i
  %i.bk = shl nuw nsw i32 %0, 1
  %i.bl = mul nuw nsw i32 %i.bk, %1               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.bl, ptr %i.bm, align 8
  %i.bn = mul i32 %i.bl, 6
  %i.bo = zext i32 %i.bn to i64
  %i.bp = tail call noalias ptr @calloc(i64 noundef %i.bo, i64 noundef 1) #57 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.bp, ptr %i.bq, align 8
  %xtraiter26 = and i32 %0, 1
  %unroll_iter30 = and i32 %0, 2147483646
  %lcmp.mod27.not = icmp eq i32 %xtraiter26, 0
  %lcmp.mod29 = trunc i32 %0 to i1
  br label %.preheader.i

.lr.ph103.i:                                      ; preds = %._crit_edge97.i, %._crit_edge104.i
  %.077108.i = phi i32 [ %i.by, %._crit_edge104.i ], [ 0, %._crit_edge97.i ] ; 3 uses
  %.078107.i = phi ptr [ %.lcssa17, %._crit_edge104.i ], [ %i.s, %._crit_edge97.i ] ; 2 uses
  %i.br = uitofp nneg i32 %.077108.i to float
  %i.bs = fdiv float %i.br, %i.l                  ; 2 uses
  %i.bt = getelementptr i8, ptr %.078107.i, i64 %i.x ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bs, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph103.i
  %index = phi i64 [ 0, %.lr.ph103.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph103.i ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.078107.i, i64 %i.bu
  %i.bv = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.bw = fdiv <4 x float> %i.bv, %broadcast.splat20
  %interleaved.vec = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %i.bw, <8 x i32> <i32 0, i32 4, i32 0, i32 5, i32 0, i32 6, i32 0, i32 7>
  store <8 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge104.i, label %scalar.ph

._crit_edge104.i:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa17 = phi ptr [ %i.bt, %middle.block ], [ %i.cc, %scalar.ph ]
  %i.by = add nuw i32 %.077108.i, 1
  %exitcond126.not.i = icmp eq i32 %.077108.i, %1
  br i1 %exitcond126.not.i, label %.preheader.i.preheader, label %.lr.ph103.i

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %.076101.i = phi i32 [ %i.cd, %scalar.ph ], [ %i.w, %middle.block ] ; 3 uses
  %.179100.i = phi ptr [ %i.cc, %scalar.ph ], [ %i.bt, %middle.block ] ; 3 uses
  %i.bz = uitofp nneg i32 %.076101.i to float
  %i.ca = fdiv float %i.bz, %i.m
  %i.cb = getelementptr inbounds nuw i8, ptr %.179100.i, i64 4
  store float %i.bs, ptr %.179100.i, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %.179100.i, i64 8 ; 2 uses
  store float %i.ca, ptr %i.cb, align 4
  %i.cd = add nuw i32 %.076101.i, 1
  %exitcond125.not.i = icmp eq i32 %.076101.i, %0
  br i1 %exitcond125.not.i, label %._crit_edge104.i, label %scalar.ph, !llvm.loop !75

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge116.i
  %.073120.i = phi i32 [ %i.cw, %._crit_edge116.i ], [ 0, %.preheader.i.preheader ]
  %.074119.i = phi ptr [ %.lcssa, %._crit_edge116.i ], [ %i.bp, %.preheader.i.preheader ]
  %.075118.i = phi i32 [ %i.cv, %._crit_edge116.i ], [ 0, %.preheader.i.preheader ] ; 7 uses
  br label %bb.c

._crit_edge116.i.unr-lcssa:                       ; preds = %bb.c
  br i1 %lcmp.mod27.not, label %._crit_edge116.i, label %.epil.preheader25

.epil.preheader25:                                ; preds = %._crit_edge116.i.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod29)
  %i.ce = add nuw nsw i32 %i.do, 1
  %i.cf = add nuw nsw i32 %i.do, %.075118.i       ; 2 uses
  %i.cg = add nuw nsw i32 %i.cf, %0
  %i.ch = trunc i32 %i.cg to i16
  %i.ci = add i16 %i.ch, 1                        ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  store i16 %i.ci, ptr %i.ee, align 2
  %i.ck = add nuw nsw i32 %i.ce, %.075118.i       ; 2 uses
  %i.cl = trunc i32 %i.ck to i16                  ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store i16 %i.cl, ptr %i.cj, align 2
  %i.cn = trunc i32 %i.cf to i16
  %i.co = getelementptr inbounds nuw i8, ptr %i.ee, i64 6
  store i16 %i.cn, ptr %i.cm, align 2
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i16 %i.ci, ptr %i.co, align 2
  %i.cq = add nuw nsw i32 %i.ck, %0
  %i.cr = trunc i32 %i.cq to i16
  %i.cs = add i16 %i.cr, 1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ee, i64 10
  store i16 %i.cs, ptr %i.cp, align 2
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i16 %i.cl, ptr %i.ct, align 2
  br label %._crit_edge116.i

._crit_edge116.i:                                 ; preds = %._crit_edge116.i.unr-lcssa, %.epil.preheader25
  %.lcssa = phi ptr [ %i.ee, %._crit_edge116.i.unr-lcssa ], [ %i.cu, %.epil.preheader25 ]
  %i.cv = add nuw nsw i32 %.075118.i, %i.d
  %i.cw = add nuw nsw i32 %.073120.i, 1           ; 2 uses
  %exitcond128.not.i = icmp eq i32 %i.cw, %1
  br i1 %exitcond128.not.i, label %par_shapes_create_parametric.exit, label %.preheader.i

bb.c:                                             ; preds = %bb.c, %.preheader.i
  %.0114.i = phi i32 [ 0, %.preheader.i ], [ %i.do, %bb.c ] ; 3 uses
  %.1113.i = phi ptr [ %.074119.i, %.preheader.i ], [ %i.ee, %bb.c ] ; 13 uses
  %niter31 = phi i32 [ 0, %.preheader.i ], [ %niter31.next.1, %bb.c ]
  %i.cx = or disjoint i32 %.0114.i, 1             ; 2 uses
  %i.cy = add nuw nsw i32 %.0114.i, %.075118.i    ; 2 uses
  %i.cz = add nuw nsw i32 %i.cy, %0
  %i.da = trunc i32 %i.cz to i16
  %i.db = add i16 %i.da, 1                        ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.1113.i, i64 2
  store i16 %i.db, ptr %.1113.i, align 2
  %i.dd = add nuw nsw i32 %i.cx, %.075118.i       ; 2 uses
  %i.de = trunc i32 %i.dd to i16                  ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.1113.i, i64 4
  store i16 %i.de, ptr %i.dc, align 2
  %i.dg = trunc i32 %i.cy to i16
  %i.dh = getelementptr inbounds nuw i8, ptr %.1113.i, i64 6
  store i16 %i.dg, ptr %i.df, align 2
  %i.di = getelementptr inbounds nuw i8, ptr %.1113.i, i64 8
  store i16 %i.db, ptr %i.dh, align 2
  %i.dj = add nuw nsw i32 %i.dd, %0
  %i.dk = trunc i32 %i.dj to i16
  %i.dl = add i16 %i.dk, 1
  %i.dm = getelementptr inbounds nuw i8, ptr %.1113.i, i64 10
  store i16 %i.dl, ptr %i.di, align 2
  %i.dn = getelementptr inbounds nuw i8, ptr %.1113.i, i64 12
  store i16 %i.de, ptr %i.dm, align 2
  %i.do = add nuw nsw i32 %.0114.i, 2             ; 4 uses
  %i.dp = add nuw nsw i32 %i.cx, %.075118.i       ; 2 uses
  %i.dq = add nuw nsw i32 %i.dp, %0
  %i.dr = trunc i32 %i.dq to i16
  %i.ds = add i16 %i.dr, 1                        ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.1113.i, i64 14
  store i16 %i.ds, ptr %i.dn, align 2
  %i.du = add nuw nsw i32 %i.do, %.075118.i       ; 2 uses
  %i.dv = trunc i32 %i.du to i16                  ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.1113.i, i64 16
  store i16 %i.dv, ptr %i.dt, align 2
  %i.dx = trunc i32 %i.dp to i16
  %i.dy = getelementptr inbounds nuw i8, ptr %.1113.i, i64 18
  store i16 %i.dx, ptr %i.dw, align 2
  %i.dz = getelementptr inbounds nuw i8, ptr %.1113.i, i64 20
  store i16 %i.ds, ptr %i.dy, align 2
  %i.ea = add nuw nsw i32 %i.du, %0
  %i.eb = trunc i32 %i.ea to i16
  %i.ec = add i16 %i.eb, 1
  %i.ed = getelementptr inbounds nuw i8, ptr %.1113.i, i64 22
  store i16 %i.ec, ptr %i.dz, align 2
  %i.ee = getelementptr inbounds nuw i8, ptr %.1113.i, i64 24 ; 9 uses
  store i16 %i.dv, ptr %i.ed, align 2
  %niter31.next.1 = add nuw nsw i32 %niter31, 2   ; 2 uses
  %niter31.ncmp.1 = icmp eq i32 %niter31.next.1, %unroll_iter30
  br i1 %niter31.ncmp.1, label %._crit_edge116.i.unr-lcssa, label %bb.c

par_shapes_create_parametric.exit:                ; preds = %._crit_edge116.i
  tail call void @par_shapes__compute_welded_normals(ptr noundef nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %par_shapes_create_parametric.exit
  %.0 = phi ptr [ %i.c, %par_shapes_create_parametric.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noalias noundef ptr @par_shapes_create_parametric(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x float], align 4              ; 10 uses
  %i.b = alloca [3 x float], align 8              ; 5 uses
  %i.c = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 48, i64 noundef 1) #57 ; 8 uses
  %i.d = add i32 %1, 1                            ; 2 uses
  %i.e = add i32 %2, 1
  %i.f = mul nsw i32 %i.e, %i.d                   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.f, ptr %i.g, align 8
  %i.h = mul nsw i32 %i.f, 3
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 1) #57 ; 2 uses
  store ptr %i.k, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  %.not92 = icmp slt i32 %2, 0
  br i1 %.not92, label %._crit_edge111.critedge, label %.lr.ph96

.lr.ph96:                                         ; preds = %bb.a
  %i.l = uitofp nneg i32 %2 to float              ; 2 uses
  %.not8889 = icmp slt i32 %1, 0
  %i.m = sitofp i32 %1 to float
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br i1 %.not8889, label %.lr.ph96.split.us.preheader, label %.lr.ph

.lr.ph96.split.us.preheader:                      ; preds = %.lr.ph96
end_hunk_7
begin_hunk_8_@par_shapes_merge:bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %.05666, i64 2
  %i.cd = load i16, ptr %.05666, align 2
  %i.ce = add i16 %i.cd, %i.bq
  %i.cf = getelementptr inbounds nuw i8, ptr %.05765, i64 2
  store i16 %i.ce, ptr %.05765, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %.05666, i64 4
  %i.ch = load i16, ptr %i.cc, align 2
  %i.ci = add i16 %i.ch, %i.bq
  %i.cj = getelementptr inbounds nuw i8, ptr %.05765, i64 4
  store i16 %i.ci, ptr %i.cf, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %.05666, i64 6
  %i.cl = load i16, ptr %i.cg, align 2
  %i.cm = add i16 %i.cl, %i.bq
  %i.cn = getelementptr inbounds nuw i8, ptr %.05765, i64 6
  store i16 %i.cm, ptr %i.cj, align 2
  %i.co = getelementptr inbounds nuw i8, ptr %.05666, i64 8
  %i.cp = load i16, ptr %i.ck, align 2
  %i.cq = add i16 %i.cp, %i.bq
  %i.cr = getelementptr inbounds nuw i8, ptr %.05765, i64 8
  store i16 %i.cq, ptr %i.cn, align 2
  %i.cs = getelementptr inbounds nuw i8, ptr %.05666, i64 10
  %i.ct = load i16, ptr %i.co, align 2
  %i.cu = add i16 %i.ct, %i.bq
  %i.cv = getelementptr inbounds nuw i8, ptr %.05765, i64 10
  store i16 %i.cu, ptr %i.cr, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %.05666, i64 12 ; 2 uses
  %i.cx = load i16, ptr %i.cs, align 2
  %i.cy = add i16 %i.cx, %i.bq
  %i.cz = getelementptr inbounds nuw i8, ptr %.05765, i64 12 ; 2 uses
  store i16 %i.cy, ptr %i.cv, align 2
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.f
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @par_shapes_create_disk(float noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #25 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 7 uses
  %i.b = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 48, i64 noundef 1) #57 ; 7 uses
  %i.c = add i32 %1, 1                            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.c, ptr %i.d, align 8
  %i.e = mul nsw i32 %i.c, 3
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 2                      ; 2 uses
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #56 ; 6 uses
  store ptr %i.h, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store <2 x float> zeroinitializer, ptr %i.h, align 4
  store float 0.000000e+00, ptr %i.i, align 4
  %i.j = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = uitofp nneg i32 %1 to double
  %i.l = fpext float %0 to double                 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.m = load float, ptr %3, align 4              ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.o = load float, ptr %i.n, align 4            ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load float, ptr %i.p, align 4            ; 4 uses
  %i.r = fmul float %i.o, %i.o
  %i.s = tail call float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.r)
  %i.t = tail call float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.s) ; 2 uses
  %i.u = fcmp ogt float %i.t, 0.000000e+00
  br i1 %i.u, label %bb.b, label %par_shapes__normalize3.exit

bb.b:                                             ; preds = %._crit_edge
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.t)
  %i.v = fdiv float 1.000000e+00, %sqrt.i         ; 3 uses
  %i.w = fmul float %i.m, %i.v
  %i.x = fmul float %i.o, %i.v
  %i.y = fmul float %i.q, %i.v
  br label %par_shapes__normalize3.exit

par_shapes__normalize3.exit:                      ; preds = %._crit_edge, %bb.b
  %.sroa.12.0 = phi float [ %i.y, %bb.b ], [ %i.q, %._crit_edge ] ; 8 uses
  %.sroa.7.0 = phi float [ %i.x, %bb.b ], [ %i.o, %._crit_edge ] ; 7 uses
  %.sroa.059.0 = phi float [ %i.w, %bb.b ], [ %i.m, %._crit_edge ] ; 7 uses
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.g) #56 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.z, ptr %i.aa, align 8
  %.not69 = icmp slt i32 %1, 0
  br i1 %.not69, label %._crit_edge73, label %.lr.ph72.preheader

.lr.ph72.preheader:                               ; preds = %par_shapes__normalize3.exit
  %i.ab = add nuw i32 %1, 1                       ; 2 uses
  %xtraiter = and i32 %i.ab, 3                    ; 3 uses
  %i.ac = icmp ult i32 %1, 3
  br i1 %i.ac, label %.lr.ph72.epil.preheader, label %.lr.ph72.preheader.new

.lr.ph72.preheader.new:                           ; preds = %.lr.ph72.preheader
  %unroll_iter = and i32 %i.ab, -4
  br label %.lr.ph72

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.05468 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %bb.c ] ; 2 uses
  %.pn67 = phi ptr [ %i.h, %.lr.ph ], [ %.055, %bb.c ] ; 3 uses
  %.055 = getelementptr inbounds nuw i8, ptr %.pn67, i64 12 ; 2 uses
  %i.ad = uitofp nneg i32 %.05468 to double
  %i.ae = fmul nnan double %i.ad, f0x400921FB54442EEA
  %i.af = fmul nnan double %i.ae, 2.000000e+00
  %i.ag = fdiv double %i.af, %i.k
  %i.ah = fptrunc double %i.ag to float
  %i.ai = fpext float %i.ah to double             ; 2 uses
  %i.aj = tail call double @cos(double noundef %i.ai) #54
  %i.ak = fmul double %i.aj, %i.l
  %i.al = fptrunc double %i.ak to float
  %i.am = getelementptr inbounds nuw i8, ptr %.pn67, i64 16
  store float %i.al, ptr %.055, align 4
  %i.an = tail call double @sin(double noundef %i.ai) #54
  %i.ao = fmul double %i.an, %i.l
  %i.ap = fptrunc double %i.ao to float
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn67, i64 20
  store float %i.ap, ptr %i.am, align 4
  store float 0.000000e+00, ptr %i.aq, align 4
  %i.ar = add nuw nsw i32 %.05468, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge73.loopexit.unr-lcssa:                 ; preds = %.lr.ph72
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge73, label %.lr.ph72.epil.preheader

.lr.ph72.epil.preheader:                          ; preds = %._crit_edge73.loopexit.unr-lcssa, %.lr.ph72.preheader
  %.05370.epil.init = phi ptr [ %i.z, %.lr.ph72.preheader ], [ %i.bp, %._crit_edge73.loopexit.unr-lcssa ]
  %lcmp.mod86 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod86)
  br label %.lr.ph72.epil

.lr.ph72.epil:                                    ; preds = %.lr.ph72.epil, %.lr.ph72.epil.preheader
  %.05370.epil = phi ptr [ %i.au, %.lr.ph72.epil ], [ %.05370.epil.init, %.lr.ph72.epil.preheader ] ; 4 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph72.epil ], [ 0, %.lr.ph72.epil.preheader ]
  %i.as = getelementptr inbounds nuw i8, ptr %.05370.epil, i64 4
  store float %.sroa.059.0, ptr %.05370.epil, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %.05370.epil, i64 8
  store float %.sroa.7.0, ptr %i.as, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %.05370.epil, i64 12
  store float %.sroa.12.0, ptr %i.at, align 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge73, label %.lr.ph72.epil, !llvm.loop !98

._crit_edge73:                                    ; preds = %._crit_edge73.loopexit.unr-lcssa, %.lr.ph72.epil, %par_shapes__normalize3.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %1, ptr %i.av, align 8
  %i.aw = mul nsw i32 %1, 3
  %i.ax = sext i32 %i.aw to i64
  %i.ay = shl nsw i64 %i.ax, 1
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.ay) #56 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.az, ptr %i.ba, align 8
  br i1 %i.j, label %.lr.ph77.preheader, label %._crit_edge78

.lr.ph77.preheader:                               ; preds = %._crit_edge73
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %._crit_edge78.loopexit.peel.begin, label %.lr.ph77.preheader.split

.lr.ph77.preheader.split:                         ; preds = %.lr.ph77.preheader
  %i.bb = add nsw i32 %1, -2
  %i.bc = add nsw i32 %1, -1                      ; 2 uses
  %xtraiter87 = and i32 %i.bc, 3                  ; 3 uses
  %i.bd = icmp ult i32 %i.bb, 3
  br i1 %i.bd, label %.lr.ph77.epil.preheader, label %.lr.ph77.preheader.split.new

.lr.ph77.preheader.split.new:                     ; preds = %.lr.ph77.preheader.split
  %unroll_iter93 = and i32 %i.bc, -4
  br label %.lr.ph77

.lr.ph72:                                         ; preds = %.lr.ph72, %.lr.ph72.preheader.new
  %.05370 = phi ptr [ %i.z, %.lr.ph72.preheader.new ], [ %i.bp, %.lr.ph72 ] ; 13 uses
  %niter = phi i32 [ 0, %.lr.ph72.preheader.new ], [ %niter.next.3, %.lr.ph72 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.05370, i64 4
  store float %.sroa.059.0, ptr %.05370, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %.05370, i64 8
  store float %.sroa.7.0, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.05370, i64 12
  store float %.sroa.12.0, ptr %i.bf, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %.05370, i64 16
  store float %.sroa.059.0, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.05370, i64 20
  store float %.sroa.7.0, ptr %i.bh, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.05370, i64 24
  store float %.sroa.12.0, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %.05370, i64 28
  store float %.sroa.059.0, ptr %i.bj, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.05370, i64 32
  store float %.sroa.7.0, ptr %i.bk, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.05370, i64 36
  store float %.sroa.12.0, ptr %i.bl, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.05370, i64 40
  store float %.sroa.059.0, ptr %i.bm, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.05370, i64 44
  store float %.sroa.7.0, ptr %i.bn, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.05370, i64 48 ; 2 uses
  store float %.sroa.12.0, ptr %i.bo, align 4
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge73.loopexit.unr-lcssa, label %.lr.ph72

._crit_edge78.loopexit.peel.begin.loopexit.unr-lcssa: ; preds = %.lr.ph77
  %lcmp.mod89.not = icmp eq i32 %xtraiter87, 0
  br i1 %lcmp.mod89.not, label %._crit_edge78.loopexit.peel.begin.loopexit, label %.lr.ph77.epil.preheader

.lr.ph77.epil.preheader:                          ; preds = %._crit_edge78.loopexit.peel.begin.loopexit.unr-lcssa, %.lr.ph77.preheader.split
  %.075.epil.init = phi i32 [ 0, %.lr.ph77.preheader.split ], [ %i.ep, %._crit_edge78.loopexit.peel.begin.loopexit.unr-lcssa ]
  %.05174.epil.init = phi ptr [ %i.az, %.lr.ph77.preheader.split ], [ %i.et, %._crit_edge78.loopexit.peel.begin.loopexit.unr-lcssa ]
  %lcmp.mod92 = icmp ne i32 %xtraiter87, 0
  tail call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph77.epil

.lr.ph77.epil:                                    ; preds = %.lr.ph77.epil, %.lr.ph77.epil.preheader
  %.075.epil = phi i32 [ %i.br, %.lr.ph77.epil ], [ %.075.epil.init, %.lr.ph77.epil.preheader ] ; 2 uses
  %.05174.epil = phi ptr [ %i.bv, %.lr.ph77.epil ], [ %.05174.epil.init, %.lr.ph77.epil.preheader ] ; 4 uses
  %epil.iter88 = phi i32 [ %epil.iter88.next, %.lr.ph77.epil ], [ 0, %.lr.ph77.epil.preheader ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.05174.epil, i64 2
  store i16 0, ptr %.05174.epil, align 2
  %i.br = add nuw nsw i32 %.075.epil, 1           ; 2 uses
  %i.bs = trunc i32 %i.br to i16                  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.05174.epil, i64 4
  store i16 %i.bs, ptr %i.bq, align 2
  %i.bu = add i16 %i.bs, 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.05174.epil, i64 6 ; 2 uses
  store i16 %i.bu, ptr %i.bt, align 2
  %epil.iter88.next = add i32 %epil.iter88, 1     ; 2 uses
  %epil.iter88.cmp.not = icmp eq i32 %epil.iter88.next, %xtraiter87
  br i1 %epil.iter88.cmp.not, label %._crit_edge78.loopexit.peel.begin.loopexit, label %.lr.ph77.epil, !llvm.loop !99

._crit_edge78.loopexit.peel.begin.loopexit:       ; preds = %.lr.ph77.epil, %._crit_edge78.loopexit.peel.begin.loopexit.unr-lcssa
  %.075.lcssa = phi i32 [ %i.ej, %._crit_edge78.loopexit.peel.begin.loopexit.unr-lcssa ], [ %.075.epil, %.lr.ph77.epil ]
  %.lcssa = phi ptr [ %i.et, %._crit_edge78.loopexit.peel.begin.loopexit.unr-lcssa ], [ %i.bv, %.lr.ph77.epil ]
  %i.bw = add nuw nsw i32 %.075.lcssa, 2
  br label %._crit_edge78.loopexit.peel.begin

._crit_edge78.loopexit.peel.begin:                ; preds = %._crit_edge78.loopexit.peel.begin.loopexit, %.lr.ph77.preheader
  %i.bx = phi i32 [ 1, %.lr.ph77.preheader ], [ %i.bw, %._crit_edge78.loopexit.peel.begin.loopexit ] ; 3 uses
  %i.by = phi ptr [ %i.az, %.lr.ph77.preheader ], [ %.lcssa, %._crit_edge78.loopexit.peel.begin.loopexit ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store i16 0, ptr %i.by, align 2
  %i.ca = trunc i32 %i.bx to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i16 %i.ca, ptr %i.bz, align 2
  %i.cc = icmp eq i32 %i.bx, %1
  %i.cd = trunc i32 %i.bx to i16
  %i.ce = add i16 %i.cd, 1
  %i.cf = select i1 %i.cc, i16 1, i16 %i.ce
  store i16 %i.cf, ptr %i.cb, align 2
  br label %._crit_edge78

._crit_edge78:                                    ; preds = %._crit_edge78.loopexit.peel.begin, %._crit_edge73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  %i.cg = fmul float %.sroa.12.0, -0.000000e+00
  %i.ch = fsub float %i.cg, %.sroa.7.0            ; 4 uses
  %i.ci = tail call float @llvm.fmuladd.f32(float %.sroa.12.0, float 0.000000e+00, float %.sroa.059.0) ; 4 uses
  %i.cj = fmul float %.sroa.7.0, -0.000000e+00
  %i.ck = tail call float @llvm.fmuladd.f32(float %.sroa.059.0, float 0.000000e+00, float %i.cj) ; 4 uses
  store float %i.ch, ptr %i.a, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store float %i.ci, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store float %i.ck, ptr %i.cm, align 4
  %i.cn = fmul float %i.ci, %i.ci
  %i.co = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.ch, float %i.cn)
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.co) ; 2 uses
  %i.cq = fcmp ogt float %i.cp, 0.000000e+00
  br i1 %i.cq, label %bb.d, label %par_shapes__normalize3.exit58

bb.d:                                             ; preds = %._crit_edge78
  %sqrt.i57 = tail call float @llvm.sqrt.f32(float %i.cp)
  %i.cr = fdiv float 1.000000e+00, %sqrt.i57      ; 3 uses
  %i.cs = fmul float %i.ch, %i.cr
  store float %i.cs, ptr %i.a, align 4
  %i.ct = fmul float %i.ci, %i.cr
  store float %i.ct, ptr %i.cl, align 4
  %i.cu = fmul float %i.ck, %i.cr
  store float %i.cu, ptr %i.cm, align 4
  br label %par_shapes__normalize3.exit58

par_shapes__normalize3.exit58:                    ; preds = %._crit_edge78, %bb.d
  %i.cv = fpext float %.sroa.12.0 to double
  %i.cw = tail call double @acos(double noundef %i.cv) #54
  %i.cx = fptrunc double %i.cw to float
  call void @par_shapes_rotate(ptr noundef nonnull %i.b, float noundef %i.cx, ptr noundef nonnull %i.a)
  %i.cy = load <2 x float>, ptr %2, align 4       ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.da = load float, ptr %i.cz, align 4          ; 3 uses
  %i.db = icmp sgt i32 %1, -1
  br i1 %i.db, label %.lr.ph.i.preheader, label %par_shapes_translate.exit

.lr.ph.i.preheader:                               ; preds = %par_shapes__normalize3.exit58
  %i.dc = add nuw i32 %1, 1                       ; 2 uses
  %i.dd = icmp eq i32 %1, 0
  br i1 %i.dd, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter99 = and i32 %i.dc, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.0910.i = phi ptr [ %i.h, %.lr.ph.i.preheader.new ], [ %i.dn, %.lr.ph.i ] ; 6 uses
  %niter100 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter100.next.1, %.lr.ph.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0910.i, i64 8 ; 2 uses
  %i.df = load <2 x float>, ptr %.0910.i, align 4
  %i.dg = fadd <2 x float> %i.cy, %i.df
  store <2 x float> %i.dg, ptr %.0910.i, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %.0910.i, i64 12 ; 2 uses
  %i.di = load float, ptr %i.de, align 4
  %i.dj = fadd float %i.da, %i.di
  store float %i.dj, ptr %i.de, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.0910.i, i64 20 ; 2 uses
  %i.dl = load <2 x float>, ptr %i.dh, align 4
  %i.dm = fadd <2 x float> %i.cy, %i.dl
  store <2 x float> %i.dm, ptr %i.dh, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %.0910.i, i64 24 ; 2 uses
  %i.do = load float, ptr %i.dk, align 4
  %i.dp = fadd float %i.da, %i.do
  store float %i.dp, ptr %i.dk, align 4
  %niter100.next.1 = add nuw i32 %niter100, 2     ; 2 uses
  %niter100.ncmp.1 = icmp eq i32 %niter100.next.1, %unroll_iter99
  br i1 %niter100.ncmp.1, label %par_shapes_translate.exit.loopexit.unr-lcssa, label %.lr.ph.i

par_shapes_translate.exit.loopexit.unr-lcssa:     ; preds = %.lr.ph.i
  %i.dq = and i32 %1, 1
  %lcmp.mod97.not.not = icmp eq i32 %i.dq, 0
  br i1 %lcmp.mod97.not.not, label %.lr.ph.i.epil.preheader, label %par_shapes_translate.exit

.lr.ph.i.epil.preheader:                          ; preds = %par_shapes_translate.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.0910.i.epil.init = phi ptr [ %i.h, %.lr.ph.i.preheader ], [ %i.dn, %par_shapes_translate.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod98 = trunc i32 %i.dc to i1
  tail call void @llvm.assume(i1 %lcmp.mod98)
  %i.dr = getelementptr inbounds nuw i8, ptr %.0910.i.epil.init, i64 8 ; 2 uses
  %i.ds = load <2 x float>, ptr %.0910.i.epil.init, align 4
  %i.dt = fadd <2 x float> %i.cy, %i.ds
  store <2 x float> %i.dt, ptr %.0910.i.epil.init, align 4
  %i.du = load float, ptr %i.dr, align 4
  %i.dv = fadd float %i.da, %i.du
  store float %i.dv, ptr %i.dr, align 4
  br label %par_shapes_translate.exit

par_shapes_translate.exit:                        ; preds = %.lr.ph.i.epil.preheader, %par_shapes_translate.exit.loopexit.unr-lcssa, %par_shapes__normalize3.exit58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  ret ptr %i.b

.lr.ph77:                                         ; preds = %.lr.ph77, %.lr.ph77.preheader.split.new
  %.075 = phi i32 [ 0, %.lr.ph77.preheader.split.new ], [ %i.ep, %.lr.ph77 ] ; 4 uses
  %.05174 = phi ptr [ %i.az, %.lr.ph77.preheader.split.new ], [ %i.et, %.lr.ph77 ] ; 13 uses
  %niter94 = phi i32 [ 0, %.lr.ph77.preheader.split.new ], [ %niter94.next.3, %.lr.ph77 ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.05174, i64 2
  store i16 0, ptr %.05174, align 2
  %i.dx = trunc i32 %.075 to i16                  ; 2 uses
  %i.dy = or disjoint i16 %i.dx, 1
  %i.dz = getelementptr inbounds nuw i8, ptr %.05174, i64 4
  store i16 %i.dy, ptr %i.dw, align 2
  %i.ea = or disjoint i16 %i.dx, 2
  %i.eb = getelementptr inbounds nuw i8, ptr %.05174, i64 6
  store i16 %i.ea, ptr %i.dz, align 2
  %i.ec = getelementptr inbounds nuw i8, ptr %.05174, i64 8
  store i16 0, ptr %i.eb, align 2
  %i.ed = trunc i32 %.075 to i16                  ; 2 uses
  %i.ee = or disjoint i16 %i.ed, 2
  %i.ef = getelementptr inbounds nuw i8, ptr %.05174, i64 10
  store i16 %i.ee, ptr %i.ec, align 2
  %i.eg = or disjoint i16 %i.ed, 3
  %i.eh = getelementptr inbounds nuw i8, ptr %.05174, i64 12
  store i16 %i.eg, ptr %i.ef, align 2
  %i.ei = getelementptr inbounds nuw i8, ptr %.05174, i64 14
  store i16 0, ptr %i.eh, align 2
  %i.ej = or disjoint i32 %.075, 3                ; 2 uses
  %i.ek = trunc i32 %i.ej to i16                  ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.05174, i64 16
  store i16 %i.ek, ptr %i.ei, align 2
  %i.em = add i16 %i.ek, 1
  %i.en = getelementptr inbounds nuw i8, ptr %.05174, i64 18
  store i16 %i.em, ptr %i.el, align 2
  %i.eo = getelementptr inbounds nuw i8, ptr %.05174, i64 20
  store i16 0, ptr %i.en, align 2
  %i.ep = add nuw nsw i32 %.075, 4                ; 3 uses
  %i.eq = trunc i32 %i.ep to i16                  ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.05174, i64 22
  store i16 %i.eq, ptr %i.eo, align 2
  %i.es = or disjoint i16 %i.eq, 1
  %i.et = getelementptr inbounds nuw i8, ptr %.05174, i64 24 ; 3 uses
  store i16 %i.es, ptr %i.er, align 2
  %niter94.next.3 = add nuw i32 %niter94, 4       ; 2 uses
  %niter94.ncmp.3 = icmp eq i32 %niter94.next.3, %unroll_iter93
  br i1 %niter94.ncmp.3, label %._crit_edge78.loopexit.peel.begin.loopexit.unr-lcssa, label %.lr.ph77, !llvm.loop !100
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #30

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @par_shapes_rotate(ptr nofree noundef readonly captures(none) %0, float noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #22 {
bb.a:
  %i.a = tail call float @sinf(float noundef %1) #54 ; 2 uses
  %i.b = tail call float @cosf(float noundef %1) #54 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load float, ptr %i.c, align 4            ; 4 uses
  %i.e = fsub float 1.000000e+00, %i.b            ; 4 uses
  %i.f = fmul float %i.a, %i.d                    ; 2 uses
  %i.g = fneg float %i.f
  %i.h = load <2 x float>, ptr %2, align 4        ; 6 uses
  %i.i = insertelement <2 x float> poison, float %i.d, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fmul <2 x float> %i.h, %i.j              ; 3 uses
  %i.l = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x float> %i.l, %i.h
  %i.n = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.o = fmul <2 x float> %i.h, %i.n
  %i.p = insertelement <2 x float> poison, float %i.e, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.r = insertelement <2 x float> poison, float %i.b, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.f, i64 1
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %i.q, <2 x float> %i.s) ; 2 uses
  %i.u = extractelement <2 x float> %i.k, i64 0
  %i.v = insertelement <2 x float> poison, float %i.g, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.b, i64 1
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.q, <2 x float> %i.w) ; 2 uses
  %i.y = extractelement <2 x float> %i.k, i64 1
  %i.z = insertelement <2 x float> poison, float %i.a, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.aa, %i.h            ; 3 uses
  %i.ac = fneg <2 x float> %i.ab                  ; 2 uses
  %i.ad = extractelement <2 x float> %i.ac, i64 1
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.u, float %i.e, float %i.ad) ; 2 uses
  %i.af = extractelement <2 x float> %i.ab, i64 0
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.y, float %i.e, float %i.af) ; 2 uses
  %i.ah = shufflevector <2 x float> %i.ac, <2 x float> %i.ab, <2 x i32> <i32 3, i32 0>
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.q, <2 x float> %i.ah) ; 2 uses
  %i.aj = fmul float %i.d, %i.d
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.e, float %i.b) ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.am = load i32, ptr %i.al, align 8
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.ao = load ptr, ptr %0, align 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.ap = icmp slt i32 %i.bl, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  %brmerge = or i1 %.not, %i.ap
  br i1 %brmerge, label %.loopexit, label %.lr.ph111

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0104108 = phi i32 [ %i.bj, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.0105107 = phi ptr [ %i.bk, %.lr.ph ], [ %i.ao, %.lr.ph.preheader ] ; 5 uses
  %i.as = load float, ptr %.0105107, align 4      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0105107, i64 4
  %i.au = load float, ptr %i.at, align 4          ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0105107, i64 8 ; 2 uses
  %i.aw = load float, ptr %i.av, align 4          ; 2 uses
  %i.ax = fmul float %i.ag, %i.au
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.as, float %i.ax)
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.aw, float %i.ay)
  %i.ba = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x float> %i.x, %i.bb
  %i.bd = insertelement <2 x float> poison, float %i.as, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.be, <2 x float> %i.bc)
  %i.bg = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.bh, <2 x float> %i.bf)
  store <2 x float> %i.bi, ptr %.0105107, align 4
  store float %i.az, ptr %i.av, align 4
  %i.bj = add nuw nsw i32 %.0104108, 1            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0105107, i64 12
  %i.bl = load i32, ptr %i.al, align 8            ; 2 uses
  %i.bm = icmp slt i32 %i.bj, %i.bl
  br i1 %i.bm, label %.lr.ph, label %._crit_edge

.lr.ph111:                                        ; preds = %._crit_edge, %.lr.ph111
  %.0110 = phi i32 [ %i.ce, %.lr.ph111 ], [ 0, %._crit_edge ]
  %.0103109 = phi ptr [ %i.cf, %.lr.ph111 ], [ %i.ar, %._crit_edge ] ; 5 uses
  %i.bn = load float, ptr %.0103109, align 4      ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0103109, i64 4
  %i.bp = load float, ptr %i.bo, align 4          ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0103109, i64 8 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4          ; 2 uses
  %i.bs = fmul float %i.ag, %i.bp
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.bn, float %i.bs)
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.br, float %i.bt)
  %i.bv = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x float> %i.x, %i.bw
  %i.by = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.bz, <2 x float> %i.bx)
  %i.cb = insertelement <2 x float> poison, float %i.br, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.cc, <2 x float> %i.ca)
  store <2 x float> %i.cd, ptr %.0103109, align 4
  store float %i.bu, ptr %i.bq, align 4
  %i.ce = add nuw nsw i32 %.0110, 1               ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0103109, i64 12
  %i.cg = load i32, ptr %i.al, align 8
  %i.ch = icmp slt i32 %i.ce, %i.cg
  br i1 %i.ch, label %.lr.ph111, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph111, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #30

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @par_shapes_translate(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = insertelement <2 x float> poison, float %1, i64 0
  %i.f = insertelement <2 x float> %i.e, float %2, i64 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.011 = phi i32 [ %i.m, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.0910 = phi ptr [ %i.j, %.lr.ph ], [ %i.d, %.lr.ph.preheader ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0910, i64 8 ; 2 uses
  %i.h = load <2 x float>, ptr %.0910, align 4
  %i.i = fadd <2 x float> %i.f, %i.h
  store <2 x float> %i.i, ptr %.0910, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %.0910, i64 12
  %i.k = load float, ptr %i.g, align 4
  %i.l = fadd float %3, %i.k
  store float %i.l, ptr %i.g, align 4
  %i.m = add nuw nsw i32 %.011, 1                 ; 2 uses
  %i.n = load i32, ptr %i.a, align 8
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden noalias noundef ptr @par_shapes_create_empty() local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 48, i64 noundef 1) #57
  ret ptr %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #30

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @par_shapes_merge_and_free(ptr nofree noundef captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #10 {
bb.a:
  tail call void @par_shapes_merge(ptr noundef %0, ptr noundef %1)
  %i.a = load ptr, ptr %1, align 8
  tail call void @free(ptr noundef %i.a) #54
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @free(ptr noundef %i.c) #54
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @free(ptr noundef %i.e) #54
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @free(ptr noundef %i.g) #54
  tail call void @free(ptr noundef %1) #54
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @par_shapes_compute_aabb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %1) local_unnamed_addr #20 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
end_hunk_8
begin_hunk_9_@par_shapes_create_lsystem:bb.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #32

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @par_shapes_clone(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address_is_null, ret: address, provenance) %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 48, i64 noundef 1) #57
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.b = phi ptr [ %.pre, %._crit_edge ], [ null, %bb.b ]
  %.0 = phi ptr [ %1, %._crit_edge ], [ %i.a, %bb.b ] ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 6 uses
  store i32 %i.d, ptr %i.e, align 8
  %i.f = mul nsw i32 %i.d, 3
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call ptr @realloc(ptr noundef %i.b, i64 noundef %i.h) #52 ; 2 uses
  store ptr %i.i, ptr %.0, align 8
  %i.j = load ptr, ptr %0, align 8
  %i.k = load i32, ptr %i.e, align 8
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.l, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.j, i64 %i.m, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 2 uses
  store i32 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = mul nsw i32 %i.o, 3
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 1
  %i.v = tail call ptr @realloc(ptr noundef %i.r, i64 noundef %i.u) #52 ; 2 uses
  store ptr %i.v, ptr %i.q, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load i32, ptr %i.p, align 8
  %i.z = sext i32 %i.y to i64
  %i.aa = mul nsw i64 %i.z, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.v, ptr align 2 %i.x, i64 %i.aa, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %.not33 = icmp eq ptr %i.ac, null
  br i1 %.not33, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load i32, ptr %i.e, align 8
  %i.ag = mul nsw i32 %i.af, 3
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  %i.aj = tail call ptr @realloc(ptr noundef %i.ae, i64 noundef %i.ai) #52 ; 2 uses
  store ptr %i.aj, ptr %i.ad, align 8
  %i.ak = load ptr, ptr %i.ab, align 8
  %i.al = load i32, ptr %i.e, align 8
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.am, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aj, ptr align 4 %i.ak, i64 %i.an, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %.not34 = icmp eq ptr %i.ap, null
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.0, i64 40 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load i32, ptr %i.e, align 8
  %i.at = shl nsw i32 %i.as, 1
  %i.au = sext i32 %i.at to i64
  %i.av = shl nsw i64 %i.au, 2
  %i.aw = tail call ptr @realloc(ptr noundef %i.ar, i64 noundef %i.av) #52 ; 2 uses
  store ptr %i.aw, ptr %i.aq, align 8
  %i.ax = load ptr, ptr %i.ao, align 8
  %i.ay = load i32, ptr %i.e, align 8
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aw, ptr align 4 %i.ax, i64 %i.ba, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret ptr %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @par_shapes_unweld(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = mul i32 %i.b, 3                          ; 3 uses
  %i.d = mul nsw i32 %i.b, 9
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp sgt i32 %i.b, 0
  %.pre = load ptr, ptr %0, align 8               ; 4 uses
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8              ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1) ; 3 uses
  %xtraiter = and i32 %smax, 1
  %i.k = icmp slt i32 %i.c, 2
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %smax, 2147483646
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.03236.epil.init = phi ptr [ %i.j, %.lr.ph ], [ %i.ai, %._crit_edge.loopexit.unr-lcssa ]
  %.03335.epil.init = phi ptr [ %i.g, %.lr.ph ], [ %i.at, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod56 = trunc i32 %smax to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.l = load i16, ptr %.03236.epil.init, align 2
  %i.m = zext i16 %i.l to i64
  %.idx.epil = mul nuw nsw i64 %i.m, 12
  %i.n = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.epil ; 3 uses
  %i.o = load float, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %.03335.epil.init, i64 4
  store float %i.o, ptr %.03335.epil.init, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.r = load float, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %.03335.epil.init, i64 8
  store float %i.r, ptr %i.p, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = load float, ptr %i.t, align 4
  store float %i.u, ptr %i.s, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  tail call void @free(ptr noundef %.pre) #54
  store ptr %i.g, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.v, align 8
  br i1 %1, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.03236 = phi ptr [ %i.j, %.lr.ph.new ], [ %i.ai, %bb.b ] ; 3 uses
  %.03335 = phi ptr [ %i.g, %.lr.ph.new ], [ %i.at, %bb.b ] ; 7 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %.03236, i64 2
  %i.x = load i16, ptr %.03236, align 2
  %i.y = zext i16 %i.x to i64
  %.idx = mul nuw nsw i64 %i.y, 12
  %i.z = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx ; 3 uses
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.03335, i64 4
  store float %i.aa, ptr %.03335, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ad = load float, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.03335, i64 8
  store float %i.ad, ptr %i.ab, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.03335, i64 12
  store float %i.ag, ptr %i.ae, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.03236, i64 4 ; 2 uses
  %i.aj = load i16, ptr %i.w, align 2
  %i.ak = zext i16 %i.aj to i64
  %.idx.1 = mul nuw nsw i64 %i.ak, 12
  %i.al = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.1 ; 3 uses
  %i.am = load float, ptr %i.al, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %.03335, i64 16
  store float %i.am, ptr %i.ah, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ap = load float, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.03335, i64 20
  store float %i.ap, ptr %i.an, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.as = load float, ptr %i.ar, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %.03335, i64 24 ; 2 uses
  store float %i.as, ptr %i.aq, align 4
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b

bb.c:                                             ; preds = %._crit_edge
  %i.au = load i32, ptr %i.a, align 8
  %i.av = mul nsw i32 %i.au, 3
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 1
  %i.ay = tail call noalias ptr @malloc(i64 noundef %i.ax) #56 ; 6 uses
  %i.az = load i32, ptr %i.a, align 8             ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %iter.check, label %._crit_edge42

iter.check:                                       ; preds = %bb.c
  %i.bb = mul i32 %i.az, 3                        ; 3 uses
  %smax43 = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 1) ; 2 uses
  %i.bc = zext nneg i32 %smax43 to i64            ; 5 uses
  %min.iters.check = icmp slt i32 %i.bb, 4
  br i1 %min.iters.check, label %.lr.ph41.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check45 = icmp slt i32 %i.bb, 16
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bd = and i64 %i.bc, 12
  %n.vec = and i64 %i.bc, 2147483632              ; 5 uses
  %i.be = trunc nuw nsw i64 %n.vec to i32         ; 2 uses
  %i.bf = shl nuw nsw i64 %n.vec, 1
  %i.bg = getelementptr i8, ptr %i.ay, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %i.bh = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bh ; 2 uses
  %i.bi = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %vec.ind, ptr %next.gep, align 2
  store <8 x i16> %step.add, ptr %i.bi, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bc
  br i1 %cmp.n, label %._crit_edge42, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph41.preheader, label %vec.epilog.ph, !prof !104

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.be, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec47 = and i64 %i.bc, 2147483644            ; 4 uses
  %i.bk = trunc nuw nsw i64 %n.vec47 to i32
  %i.bl = shl nuw nsw i64 %n.vec47, 1
  %i.bm = getelementptr i8, ptr %i.ay, i64 %i.bl
  %i.bn = trunc i32 %bc.resume.val to i16
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.bn, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index48 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind49 = phi <4 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next52, %vec.epilog.vector.body ] ; 2 uses
  %i.bo = shl i64 %index48, 1
  %next.gep50 = getelementptr i8, ptr %i.ay, i64 %i.bo
  store <4 x i16> %vec.ind49, ptr %next.gep50, align 2
  %index.next51 = add nuw i64 %index48, 4         ; 2 uses
  %vec.ind.next52 = add <4 x i16> %vec.ind49, splat (i16 4)
  %i.bp = icmp eq i64 %index.next51, %n.vec47
  br i1 %i.bp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !105

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n53 = icmp eq i64 %n.vec47, %i.bc
  br i1 %cmp.n53, label %._crit_edge42, label %.lr.ph41.preheader

.lr.ph41.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.039.ph = phi i32 [ 0, %iter.check ], [ %i.be, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  %.03038.ph = phi ptr [ %i.ay, %iter.check ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  br label %.lr.ph41

._crit_edge42:                                    ; preds = %.lr.ph41, %middle.block, %vec.epilog.middle.block, %bb.c
  %i.bq = load ptr, ptr %i.h, align 8
  tail call void @free(ptr noundef %i.bq) #54
  store ptr %i.ay, ptr %i.h, align 8
  br label %bb.d

.lr.ph41:                                         ; preds = %.lr.ph41.preheader, %.lr.ph41
  %.039 = phi i32 [ %i.bt, %.lr.ph41 ], [ %.039.ph, %.lr.ph41.preheader ] ; 2 uses
  %.03038 = phi ptr [ %i.bs, %.lr.ph41 ], [ %.03038.ph, %.lr.ph41.preheader ] ; 2 uses
  %i.br = trunc i32 %.039 to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %.03038, i64 2
  store i16 %i.br, ptr %.03038, align 2
  %i.bt = add nuw nsw i32 %.039, 1                ; 2 uses
  %exitcond44.not = icmp eq i32 %i.bt, %smax43
  br i1 %exitcond44.not, label %._crit_edge42, label %.lr.ph41, !llvm.loop !106

bb.d:                                             ; preds = %._crit_edge42, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @par_shapes_create_subdivided_sphere(i32 noundef %0) local_unnamed_addr #0 {
.lr.ph.i:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 48, i64 noundef 1) #57 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = tail call noalias dereferenceable_or_null(144) ptr @malloc(i64 noundef 144) #56 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %i.c, ptr noundef nonnull align 16 dereferenceable(144) @par_shapes_create_icosahedron.verts, i64 144, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store i32 20, ptr %i.d, align 8
  %i.e = tail call noalias dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #56 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(120) %i.e, ptr noundef nonnull align 16 dereferenceable(120) @par_shapes_create_icosahedron.faces, i64 120, i1 false)
  %i.g = tail call noalias dereferenceable_or_null(720) ptr @malloc(i64 noundef 720) #56 ; 4 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.lr.ph.i
  %.03137.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ai, %bb.a ]
  %.03236.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.z, %bb.a ] ; 4 uses
  %.03335.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.ah, %bb.a ] ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.03236.i, i64 2
  %i.i = load i16, ptr %.03236.i, align 2
  %i.j = zext i16 %i.i to i64
  %.idx.i = mul nuw nsw i64 %i.j, 12
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.03335.i, i64 8
  %i.m = load <2 x float>, ptr %i.k, align 4
  store <2 x float> %i.m, ptr %.03335.i, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load float, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %.03335.i, i64 12
  store float %i.o, ptr %i.l, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %.03236.i, i64 4
  %i.r = load i16, ptr %i.h, align 2
  %i.s = zext i16 %i.r to i64
  %.idx.i.1 = mul nuw nsw i64 %i.s, 12
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.1 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.03335.i, i64 20
  %i.v = load <2 x float>, ptr %i.t, align 4
  store <2 x float> %i.v, ptr %i.p, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load float, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.03335.i, i64 24
  store float %i.x, ptr %i.u, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.03236.i, i64 6
  %i.aa = load i16, ptr %i.q, align 2
  %i.ab = zext i16 %i.aa to i64
  %.idx.i.2 = mul nuw nsw i64 %i.ab, 12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.2 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.03335.i, i64 32
  %i.ae = load <2 x float>, ptr %i.ac, align 4
  store <2 x float> %i.ae, ptr %i.y, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.03335.i, i64 36
  store float %i.ag, ptr %i.ad, align 4
  %i.ai = add nuw nsw i32 %.03137.i, 3            ; 2 uses
  %exitcond.not.i.2 = icmp eq i32 %i.ai, 60
  br i1 %exitcond.not.i.2, label %par_shapes_unweld.exit, label %bb.a

par_shapes_unweld.exit:                           ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.c) #54
  store ptr %i.g, ptr %i.a, align 8
  store i32 60, ptr %i.b, align 8
  tail call void @free(ptr noundef nonnull %i.e) #54
  %.not26 = icmp eq i32 %0, 0
  br i1 %.not26, label %.lr.ph32, label %.lr.ph

.preheader:                                       ; preds = %par_shapes__subdivide.exit
  %i.aj = mul nsw i32 %i.ap, 12                   ; 2 uses
  store i32 %i.es, ptr %i.d, align 8
  store ptr %i.au, ptr %i.a, align 8
  store i32 %i.aj, ptr %i.b, align 8
  %i.ak = icmp sgt i32 %i.ap, 0
  br i1 %i.ak, label %.lr.ph32, label %._crit_edge

.lr.ph32:                                         ; preds = %par_shapes_unweld.exit, %.preheader
  %i.al = phi i32 [ %i.aj, %.preheader ], [ 60, %par_shapes_unweld.exit ]
  %i.am = phi ptr [ %i.au, %.preheader ], [ %i.g, %par_shapes_unweld.exit ] ; 2 uses
  %i.an = phi i32 [ %i.es, %.preheader ], [ 20, %par_shapes_unweld.exit ]
  %wide.trip.count = zext nneg i32 %i.al to i64
  br label %bb.b

.lr.ph:                                           ; preds = %par_shapes_unweld.exit, %par_shapes__subdivide.exit
  %i.ao = phi ptr [ %i.au, %par_shapes__subdivide.exit ], [ %i.g, %par_shapes_unweld.exit ] ; 2 uses
  %i.ap = phi i32 [ %i.es, %par_shapes__subdivide.exit ], [ 20, %par_shapes_unweld.exit ] ; 6 uses
  %.027 = phi i32 [ %i.aq, %par_shapes__subdivide.exit ], [ %0, %par_shapes_unweld.exit ]
  %i.aq = add nsw i32 %.027, -1                   ; 2 uses
  %i.ar = mul nsw i32 %i.ap, 36
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 2
  %i.au = tail call noalias ptr @calloc(i64 noundef %i.at, i64 noundef 1) #57 ; 5 uses
  %i.av = icmp sgt i32 %i.ap, 0
  br i1 %i.av, label %.lr.ph.i24, label %par_shapes__subdivide.exit
end_hunk_9
begin_hunk_10_@LoadModel:bb.a
  %i.nc = trunc i32 %i.nb to i16
  %i.nd = load ptr, ptr %i.mx, align 8, !noalias !116
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %i.nd, i64 %indvars.iv457.i
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 4
  store i16 %i.nc, ptr %i.nf, align 2, !noalias !116
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %i.nh = load i32, ptr %i.ng, align 4, !noalias !116
  %i.ni = sub i32 %i.nh, %i.mv
  %i.nj = trunc i32 %i.ni to i16
  %i.nk = load ptr, ptr %i.mx, align 8, !noalias !116
  %i.nl = getelementptr inbounds nuw [2 x i8], ptr %i.nk, i64 %indvars.iv457.i
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 2
  store i16 %i.nj, ptr %i.nm, align 2, !noalias !116
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.no = load i32, ptr %i.nn, align 4, !noalias !116
  %i.np = sub i32 %i.no, %i.mv
  %i.nq = trunc i32 %i.np to i16
  %i.nr = load ptr, ptr %i.mx, align 8, !noalias !116
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %i.nr, i64 %indvars.iv457.i
  store i16 %i.nq, ptr %i.ns, align 2, !noalias !116
  %indvars.iv.next458.i = add nuw nsw i64 %indvars.iv457.i, 3
  %indvars.iv.next456.i = add nuw nsw i64 %indvars.iv455.i, 1 ; 2 uses
  %exitcond463.not.i = icmp eq i64 %indvars.iv.next456.i, %wide.trip.count462.i
  br i1 %exitcond463.not.i, label %._crit_edge365.i, label %bb.bi

._crit_edge427.i:                                 ; preds = %.loopexit.i19, %._crit_edge369.i
  %.0339.lcssa.i = phi ptr [ null, %._crit_edge369.i ], [ %.1340.i, %.loopexit.i19 ]
  %.0337.lcssa.i = phi ptr [ null, %._crit_edge369.i ], [ %.1338.i, %.loopexit.i19 ]
  %.0335.lcssa.i = phi ptr [ null, %._crit_edge369.i ], [ %.1336.i, %.loopexit.i19 ]
  %.0333.lcssa.i = phi ptr [ null, %._crit_edge369.i ], [ %.1334.i, %.loopexit.i19 ]
  %.0331.lcssa.i = phi ptr [ null, %._crit_edge369.i ], [ %.1332.i, %.loopexit.i19 ]
  %.0330.lcssa.i = phi ptr [ null, %._crit_edge369.i ], [ %.1.i20, %.loopexit.i19 ]
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ip, i64 68 ; 4 uses
  %i.nu = load i32, ptr %i.nt, align 4, !noalias !116
  %i.nv = zext i32 %i.nu to i64
  %i.nw = mul nuw nsw i64 %i.nv, 48
  %i.nx = call noalias ptr @malloc(i64 noundef %i.nw) #56, !noalias !116 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ip, i64 72
  %i.nz = load i32, ptr %i.ny, align 4, !noalias !116
  %i.oa = zext i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.oa
  %i.oc = load i32, ptr %i.nt, align 4, !noalias !116 ; 7 uses
  %i.od = zext i32 %i.oc to i64                   ; 4 uses
  %i.oe = mul nuw nsw i64 %i.od, 48
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.nx, ptr nonnull align 1 %i.ob, i64 %i.oe, i1 false), !noalias !116
  %i.of = call noalias ptr @calloc(i64 noundef %i.od, i64 noundef 36) #57, !noalias !116 ; 3 uses
  %i.og = load i32, ptr %i.nt, align 4, !noalias !116
  %i.oh = zext i32 %i.og to i64
  %i.oi = call noalias ptr @calloc(i64 noundef %i.oh, i64 noundef 40) #57, !noalias !116 ; 3 uses
  %i.oj = load i32, ptr %i.nt, align 4, !noalias !116 ; 2 uses
  %.not448.i = icmp eq i32 %i.oj, 0
  br i1 %.not448.i, label %._crit_edge436.i, label %.lr.ph435.i

.lr.ph435.i:                                      ; preds = %._crit_edge427.i
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %.pre556.i = load i32, ptr %i.ok, align 4, !noalias !116
  %i.ol = zext i32 %.pre556.i to i64
  %i.om = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.ol
  %i.on = zext i32 %i.oj to i64
  br label %bb.cg

bb.bj:                                            ; preds = %.loopexit.i19, %.lr.ph426.i
  %indvars.iv541.i = phi i64 [ 0, %.lr.ph426.i ], [ %indvars.iv.next542.i, %.loopexit.i19 ] ; 2 uses
  %.0330423.i = phi ptr [ null, %.lr.ph426.i ], [ %.1.i20, %.loopexit.i19 ] ; 11 uses
  %.0331422.i = phi ptr [ null, %.lr.ph426.i ], [ %.1332.i, %.loopexit.i19 ] ; 11 uses
  %.0333421.i = phi ptr [ null, %.lr.ph426.i ], [ %.1334.i, %.loopexit.i19 ] ; 11 uses
  %.0335420.i = phi ptr [ null, %.lr.ph426.i ], [ %.1336.i, %.loopexit.i19 ] ; 11 uses
  %.0337419.i = phi ptr [ null, %.lr.ph426.i ], [ %.1338.i, %.loopexit.i19 ] ; 11 uses
  %.0339418.i = phi ptr [ null, %.lr.ph426.i ], [ %.1340.i, %.loopexit.i19 ] ; 11 uses
  %i.oo = getelementptr inbounds nuw [20 x i8], ptr %i.me, i64 %indvars.iv541.i ; 7 uses
  %i.op = load i32, ptr %i.oo, align 4, !noalias !116
  switch i32 %i.op, label %.loopexit.i19 [
    i32 0, label %bb.bk
    i32 2, label %bb.br
    i32 1, label %bb.by
    i32 4, label %bb.cb
    i32 5, label %bb.cd
    i32 6, label %bb.cf
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.oq = load i32, ptr %i.mm, align 4, !noalias !116
  %i.or = mul i32 %i.oq, 3
  %i.os = zext i32 %i.or to i64
  %i.ot = shl nuw nsw i64 %i.os, 2
  %i.ou = call noalias ptr @malloc(i64 noundef %i.ot) #56, !noalias !116 ; 6 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %i.ow = load i32, ptr %i.ov, align 4, !noalias !116
  %i.ox = zext i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.ox
  %i.oz = load i32, ptr %i.mm, align 4, !noalias !116
  %i.pa = mul i32 %i.oz, 3
  %i.pb = zext i32 %i.pa to i64
  %i.pc = shl nuw nsw i64 %i.pb, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ou, ptr nonnull align 1 %i.oy, i64 %i.pc, i1 false), !noalias !116
  %i.pd = load i32, ptr %i.ix, align 4, !noalias !116 ; 2 uses
  %.not447.i = icmp eq i32 %i.pd, 0
  br i1 %.not447.i, label %.loopexit.i19, label %.lr.ph417.i

.lr.ph417.i:                                      ; preds = %bb.bk, %._crit_edge414.i
  %i.pe = phi i32 [ %i.qa, %._crit_edge414.i ], [ %i.pd, %bb.bk ]
  %indvars.iv538.i = phi i64 [ %indvars.iv.next539.i, %._crit_edge414.i ], [ 0, %bb.bk ] ; 3 uses
  %i.pf = getelementptr inbounds nuw [24 x i8], ptr %i.jb, i64 %indvars.iv538.i ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.ph = load i32, ptr %i.pg, align 4, !noalias !116 ; 2 uses
  %i.pi = mul i32 %i.ph, 3                        ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pf, i64 12
  %i.pk = load i32, ptr %i.pj, align 4, !noalias !116 ; 2 uses
  %i.pl = add i32 %i.pk, %i.ph
  %i.pm = mul i32 %i.pl, 3
  %i.pn = icmp ult i32 %i.pi, %i.pm
  br i1 %i.pn, label %.lr.ph413.i, label %._crit_edge414.i

.lr.ph413.i:                                      ; preds = %.lr.ph417.i
  %i.po = getelementptr inbounds nuw [120 x i8], ptr %i.jk, i64 %indvars.iv538.i ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 88 ; 3 uses
  %i.pr = zext i32 %i.pi to i64                   ; 2 uses
  %i.ps = mul i32 %i.pk, 3                        ; 3 uses
  %wide.trip.count536.i = zext i32 %i.ps to i64   ; 2 uses
  %xtraiter366 = and i64 %wide.trip.count536.i, 1
  %i.pt = icmp eq i32 %i.ps, 1
  br i1 %i.pt, label %.epil.preheader365, label %.lr.ph413.i.new

.lr.ph413.i.new:                                  ; preds = %.lr.ph413.i
  %unroll_iter370 = and i64 %wide.trip.count536.i, 4294967294
  br label %bb.bm

._crit_edge414.loopexit.i.unr-lcssa:              ; preds = %bb.bq
  %lcmp.mod368.not = icmp eq i64 %xtraiter366, 0
  br i1 %lcmp.mod368.not, label %._crit_edge414.loopexit.i, label %.epil.preheader365

.epil.preheader365:                               ; preds = %._crit_edge414.loopexit.i.unr-lcssa, %.lr.ph413.i
  %indvars.iv531.i.epil.init = phi i64 [ 0, %.lr.ph413.i ], [ %indvars.iv.next532.i.1, %._crit_edge414.loopexit.i.unr-lcssa ] ; 2 uses
  %indvars.iv529.i.epil.init = phi i64 [ %i.pr, %.lr.ph413.i ], [ %indvars.iv.next530.i.1, %._crit_edge414.loopexit.i.unr-lcssa ]
  %lcmp.mod369 = trunc i32 %i.ps to i1
  call void @llvm.assume(i1 %lcmp.mod369)
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv529.i.epil.init
  %i.pv = load float, ptr %i.pu, align 4, !noalias !116 ; 2 uses
  %i.pw = load ptr, ptr %i.pp, align 8, !noalias !116
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %indvars.iv531.i.epil.init
  store float %i.pv, ptr %i.px, align 4, !noalias !116
  %i.py = load ptr, ptr %i.pq, align 8, !noalias !116 ; 2 uses
  %.not347.i.epil = icmp eq ptr %i.py, null
  br i1 %.not347.i.epil, label %._crit_edge414.loopexit.i, label %bb.bl

bb.bl:                                            ; preds = %.epil.preheader365
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %indvars.iv531.i.epil.init
  store float %i.pv, ptr %i.pz, align 4, !noalias !116
  br label %._crit_edge414.loopexit.i

._crit_edge414.loopexit.i:                        ; preds = %.epil.preheader365, %bb.bl, %._crit_edge414.loopexit.i.unr-lcssa
  %.pre555.i = load i32, ptr %i.ix, align 4, !noalias !116
  br label %._crit_edge414.i

._crit_edge414.i:                                 ; preds = %._crit_edge414.loopexit.i, %.lr.ph417.i
  %i.qa = phi i32 [ %.pre555.i, %._crit_edge414.loopexit.i ], [ %i.pe, %.lr.ph417.i ] ; 2 uses
  %indvars.iv.next539.i = add nuw nsw i64 %indvars.iv538.i, 1 ; 2 uses
  %i.qb = zext i32 %i.qa to i64
  %i.qc = icmp samesign ult i64 %indvars.iv.next539.i, %i.qb
  br i1 %i.qc, label %.lr.ph417.i, label %.loopexit.i19

bb.bm:                                            ; preds = %bb.bq, %.lr.ph413.i.new
  %indvars.iv531.i = phi i64 [ 0, %.lr.ph413.i.new ], [ %indvars.iv.next532.i.1, %bb.bq ] ; 4 uses
  %indvars.iv529.i = phi i64 [ %i.pr, %.lr.ph413.i.new ], [ %indvars.iv.next530.i.1, %bb.bq ] ; 3 uses
  %niter371 = phi i64 [ 0, %.lr.ph413.i.new ], [ %niter371.next.1, %bb.bq ]
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv529.i
  %i.qe = load float, ptr %i.qd, align 4, !noalias !116 ; 2 uses
  %i.qf = load ptr, ptr %i.pp, align 8, !noalias !116
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.qf, i64 %indvars.iv531.i
  store float %i.qe, ptr %i.qg, align 4, !noalias !116
  %i.qh = load ptr, ptr %i.pq, align 8, !noalias !116 ; 2 uses
  %.not347.i = icmp eq ptr %i.qh, null
  br i1 %.not347.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %indvars.iv531.i
  store float %i.qe, ptr %i.qi, align 4, !noalias !116
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %indvars.iv.next532.i = or disjoint i64 %indvars.iv531.i, 1 ; 2 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv529.i
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 4
  %i.ql = load float, ptr %i.qk, align 4, !noalias !116 ; 2 uses
  %i.qm = load ptr, ptr %i.pp, align 8, !noalias !116
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %indvars.iv.next532.i
  store float %i.ql, ptr %i.qn, align 4, !noalias !116
  %i.qo = load ptr, ptr %i.pq, align 8, !noalias !116 ; 2 uses
  %.not347.i.1 = icmp eq ptr %i.qo, null
  br i1 %.not347.i.1, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %indvars.iv.next532.i
  store float %i.ql, ptr %i.qp, align 4, !noalias !116
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %indvars.iv.next532.i.1 = add nuw nsw i64 %indvars.iv531.i, 2 ; 2 uses
  %indvars.iv.next530.i.1 = add nuw nsw i64 %indvars.iv529.i, 2 ; 2 uses
  %niter371.next.1 = add nuw i64 %niter371, 2     ; 2 uses
  %niter371.ncmp.1 = icmp eq i64 %niter371.next.1, %unroll_iter370
  br i1 %niter371.ncmp.1, label %._crit_edge414.loopexit.i.unr-lcssa, label %bb.bm

bb.br:                                            ; preds = %bb.bj
  %i.qq = load i32, ptr %i.mm, align 4, !noalias !116
  %i.qr = mul i32 %i.qq, 3
  %i.qs = zext i32 %i.qr to i64
  %i.qt = shl nuw nsw i64 %i.qs, 2
  %i.qu = call noalias ptr @malloc(i64 noundef %i.qt) #56, !noalias !116 ; 6 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %i.qw = load i32, ptr %i.qv, align 4, !noalias !116
  %i.qx = zext i32 %i.qw to i64
  %i.qy = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.qx
  %i.qz = load i32, ptr %i.mm, align 4, !noalias !116
  %i.ra = mul i32 %i.qz, 3
  %i.rb = zext i32 %i.ra to i64
  %i.rc = shl nuw nsw i64 %i.rb, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qu, ptr nonnull align 1 %i.qy, i64 %i.rc, i1 false), !noalias !116
  %i.rd = load i32, ptr %i.ix, align 4, !noalias !116 ; 2 uses
  %.not446.i = icmp eq i32 %i.rd, 0
  br i1 %.not446.i, label %.loopexit.i19, label %.lr.ph409.i

.lr.ph409.i:                                      ; preds = %bb.br, %._crit_edge406.i
  %i.re = phi i32 [ %i.sa, %._crit_edge406.i ], [ %i.rd, %bb.br ]
  %indvars.iv526.i = phi i64 [ %indvars.iv.next527.i, %._crit_edge406.i ], [ 0, %bb.br ] ; 3 uses
  %i.rf = getelementptr inbounds nuw [24 x i8], ptr %i.jb, i64 %indvars.iv526.i ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.rh = load i32, ptr %i.rg, align 4, !noalias !116 ; 2 uses
  %i.ri = mul i32 %i.rh, 3                        ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rf, i64 12
  %i.rk = load i32, ptr %i.rj, align 4, !noalias !116 ; 2 uses
  %i.rl = add i32 %i.rk, %i.rh
  %i.rm = mul i32 %i.rl, 3
  %i.rn = icmp ult i32 %i.ri, %i.rm
  br i1 %i.rn, label %.lr.ph405.i, label %._crit_edge406.i

.lr.ph405.i:                                      ; preds = %.lr.ph409.i
  %i.ro = getelementptr inbounds nuw [120 x i8], ptr %i.jk, i64 %indvars.iv526.i ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 32 ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 96 ; 3 uses
  %i.rr = zext i32 %i.ri to i64                   ; 2 uses
  %i.rs = mul i32 %i.rk, 3                        ; 3 uses
  %wide.trip.count524.i = zext i32 %i.rs to i64   ; 2 uses
  %xtraiter359 = and i64 %wide.trip.count524.i, 1
  %i.rt = icmp eq i32 %i.rs, 1
  br i1 %i.rt, label %.epil.preheader358, label %.lr.ph405.i.new

.lr.ph405.i.new:                                  ; preds = %.lr.ph405.i
  %unroll_iter363 = and i64 %wide.trip.count524.i, 4294967294
  br label %bb.bt

._crit_edge406.loopexit.i.unr-lcssa:              ; preds = %bb.bx
  %lcmp.mod361.not = icmp eq i64 %xtraiter359, 0
  br i1 %lcmp.mod361.not, label %._crit_edge406.loopexit.i, label %.epil.preheader358

.epil.preheader358:                               ; preds = %._crit_edge406.loopexit.i.unr-lcssa, %.lr.ph405.i
  %indvars.iv519.i.epil.init = phi i64 [ 0, %.lr.ph405.i ], [ %indvars.iv.next520.i.1, %._crit_edge406.loopexit.i.unr-lcssa ] ; 2 uses
  %indvars.iv517.i.epil.init = phi i64 [ %i.rr, %.lr.ph405.i ], [ %indvars.iv.next518.i.1, %._crit_edge406.loopexit.i.unr-lcssa ]
  %lcmp.mod362 = trunc i32 %i.rs to i1
  call void @llvm.assume(i1 %lcmp.mod362)
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv517.i.epil.init
  %i.rv = load float, ptr %i.ru, align 4, !noalias !116 ; 2 uses
  %i.rw = load ptr, ptr %i.rp, align 8, !noalias !116
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %indvars.iv519.i.epil.init
  store float %i.rv, ptr %i.rx, align 4, !noalias !116
  %i.ry = load ptr, ptr %i.rq, align 8, !noalias !116 ; 2 uses
  %.not346.i.epil = icmp eq ptr %i.ry, null
  br i1 %.not346.i.epil, label %._crit_edge406.loopexit.i, label %bb.bs

bb.bs:                                            ; preds = %.epil.preheader358
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %indvars.iv519.i.epil.init
  store float %i.rv, ptr %i.rz, align 4, !noalias !116
  br label %._crit_edge406.loopexit.i

._crit_edge406.loopexit.i:                        ; preds = %.epil.preheader358, %bb.bs, %._crit_edge406.loopexit.i.unr-lcssa
  %.pre554.i = load i32, ptr %i.ix, align 4, !noalias !116
  br label %._crit_edge406.i

._crit_edge406.i:                                 ; preds = %._crit_edge406.loopexit.i, %.lr.ph409.i
  %i.sa = phi i32 [ %.pre554.i, %._crit_edge406.loopexit.i ], [ %i.re, %.lr.ph409.i ] ; 2 uses
  %indvars.iv.next527.i = add nuw nsw i64 %indvars.iv526.i, 1 ; 2 uses
  %i.sb = zext i32 %i.sa to i64
  %i.sc = icmp samesign ult i64 %indvars.iv.next527.i, %i.sb
  br i1 %i.sc, label %.lr.ph409.i, label %.loopexit.i19

bb.bt:                                            ; preds = %bb.bx, %.lr.ph405.i.new
  %indvars.iv519.i = phi i64 [ 0, %.lr.ph405.i.new ], [ %indvars.iv.next520.i.1, %bb.bx ] ; 4 uses
  %indvars.iv517.i = phi i64 [ %i.rr, %.lr.ph405.i.new ], [ %indvars.iv.next518.i.1, %bb.bx ] ; 3 uses
  %niter364 = phi i64 [ 0, %.lr.ph405.i.new ], [ %niter364.next.1, %bb.bx ]
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv517.i
  %i.se = load float, ptr %i.sd, align 4, !noalias !116 ; 2 uses
  %i.sf = load ptr, ptr %i.rp, align 8, !noalias !116
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %indvars.iv519.i
  store float %i.se, ptr %i.sg, align 4, !noalias !116
  %i.sh = load ptr, ptr %i.rq, align 8, !noalias !116 ; 2 uses
  %.not346.i = icmp eq ptr %i.sh, null
  br i1 %.not346.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %indvars.iv519.i
  store float %i.se, ptr %i.si, align 4, !noalias !116
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %indvars.iv.next520.i = or disjoint i64 %indvars.iv519.i, 1 ; 2 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv517.i
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  %i.sl = load float, ptr %i.sk, align 4, !noalias !116 ; 2 uses
  %i.sm = load ptr, ptr %i.rp, align 8, !noalias !116
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %indvars.iv.next520.i
  store float %i.sl, ptr %i.sn, align 4, !noalias !116
  %i.so = load ptr, ptr %i.rq, align 8, !noalias !116 ; 2 uses
  %.not346.i.1 = icmp eq ptr %i.so, null
  br i1 %.not346.i.1, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.so, i64 %indvars.iv.next520.i
  store float %i.sl, ptr %i.sp, align 4, !noalias !116
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %indvars.iv.next520.i.1 = add nuw nsw i64 %indvars.iv519.i, 2 ; 2 uses
  %indvars.iv.next518.i.1 = add nuw nsw i64 %indvars.iv517.i, 2 ; 2 uses
  %niter364.next.1 = add nuw i64 %niter364, 2     ; 2 uses
  %niter364.ncmp.1 = icmp eq i64 %niter364.next.1, %unroll_iter363
  br i1 %niter364.ncmp.1, label %._crit_edge406.loopexit.i.unr-lcssa, label %bb.bt

bb.by:                                            ; preds = %bb.bj
  %i.sq = load i32, ptr %i.mm, align 4, !noalias !116
  %i.sr = shl i32 %i.sq, 1
  %i.ss = zext i32 %i.sr to i64
  %i.st = shl nuw nsw i64 %i.ss, 2
  %i.su = call noalias ptr @malloc(i64 noundef %i.st) #56, !noalias !116 ; 8 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %i.sw = load i32, ptr %i.sv, align 4, !noalias !116
  %i.sx = zext i32 %i.sw to i64
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.sx
  %i.sz = load i32, ptr %i.mm, align 4, !noalias !116
  %i.ta = shl i32 %i.sz, 1
  %i.tb = zext i32 %i.ta to i64
  %i.tc = shl nuw nsw i64 %i.tb, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.su, ptr nonnull align 1 %i.sy, i64 %i.tc, i1 false), !noalias !116
  %i.td = load i32, ptr %i.ix, align 4, !noalias !116 ; 2 uses
  %.not445.i = icmp eq i32 %i.td, 0
  br i1 %.not445.i, label %.loopexit.i19, label %.lr.ph401.i

.lr.ph401.i:                                      ; preds = %bb.by, %._crit_edge398.i
  %i.te = phi i32 [ %i.ty, %._crit_edge398.i ], [ %i.td, %bb.by ]
  %indvars.iv514.i = phi i64 [ %indvars.iv.next515.i, %._crit_edge398.i ], [ 0, %bb.by ] ; 3 uses
  %i.tf = getelementptr inbounds nuw [24 x i8], ptr %i.jb, i64 %indvars.iv514.i ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.th = load i32, ptr %i.tg, align 4, !noalias !116 ; 2 uses
  %i.ti = shl i32 %i.th, 1                        ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tf, i64 12
  %i.tk = load i32, ptr %i.tj, align 4, !noalias !116 ; 2 uses
  %i.tl = add i32 %i.tk, %i.th
  %i.tm = shl i32 %i.tl, 1
  %i.tn = icmp ult i32 %i.ti, %i.tm
  br i1 %i.tn, label %.lr.ph397.i, label %._crit_edge398.i

.lr.ph397.i:                                      ; preds = %.lr.ph401.i
  %i.to = getelementptr inbounds nuw [120 x i8], ptr %i.jk, i64 %indvars.iv514.i
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 16 ; 5 uses
  %i.tq = zext i32 %i.ti to i64                   ; 2 uses
  %i.tr = shl i32 %i.tk, 1                        ; 2 uses
  %wide.trip.count512.i = zext i32 %i.tr to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count512.i, 2    ; 2 uses
  %i.ts = add i32 %i.tr, -1
  %i.tt = icmp ult i32 %i.ts, 3
  br i1 %i.tt, label %.epil.preheader, label %.lr.ph397.i.new

.lr.ph397.i.new:                                  ; preds = %.lr.ph397.i
  %unroll_iter = and i64 %wide.trip.count512.i, 4294967292
  br label %bb.ca

._crit_edge398.loopexit.i.unr-lcssa:              ; preds = %bb.ca
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge398.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge398.loopexit.i.unr-lcssa, %.lr.ph397.i
  %indvars.iv507.i.epil.init = phi i64 [ 0, %.lr.ph397.i ], [ %indvars.iv.next508.i.3, %._crit_edge398.loopexit.i.unr-lcssa ]
  %indvars.iv505.i.epil.init = phi i64 [ %i.tq, %.lr.ph397.i ], [ %indvars.iv.next506.i.3, %._crit_edge398.loopexit.i.unr-lcssa ]
  %lcmp.mod357 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod357)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %.epil.preheader
  %indvars.iv507.i.epil = phi i64 [ %indvars.iv507.i.epil.init, %.epil.preheader ], [ %indvars.iv.next508.i.epil, %bb.bz ] ; 2 uses
  %indvars.iv505.i.epil = phi i64 [ %indvars.iv505.i.epil.init, %.epil.preheader ], [ %indvars.iv.next506.i.epil, %bb.bz ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bz ]
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %indvars.iv505.i.epil
  %i.tv = load float, ptr %i.tu, align 4, !noalias !116
  %i.tw = load ptr, ptr %i.tp, align 8, !noalias !116
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.tw, i64 %indvars.iv507.i.epil
  store float %i.tv, ptr %i.tx, align 4, !noalias !116
  %indvars.iv.next508.i.epil = add nuw nsw i64 %indvars.iv507.i.epil, 1
  %indvars.iv.next506.i.epil = add nuw nsw i64 %indvars.iv505.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %._crit_edge398.loopexit.i, label %bb.bz, !llvm.loop !122

._crit_edge398.loopexit.i:                        ; preds = %bb.bz, %._crit_edge398.loopexit.i.unr-lcssa
  %.pre553.i = load i32, ptr %i.ix, align 4, !noalias !116
  br label %._crit_edge398.i

._crit_edge398.i:                                 ; preds = %._crit_edge398.loopexit.i, %.lr.ph401.i
  %i.ty = phi i32 [ %.pre553.i, %._crit_edge398.loopexit.i ], [ %i.te, %.lr.ph401.i ] ; 2 uses
  %indvars.iv.next515.i = add nuw nsw i64 %indvars.iv514.i, 1 ; 2 uses
  %i.tz = zext i32 %i.ty to i64
  %i.ua = icmp samesign ult i64 %indvars.iv.next515.i, %i.tz
  br i1 %i.ua, label %.lr.ph401.i, label %.loopexit.i19

bb.ca:                                            ; preds = %bb.ca, %.lr.ph397.i.new
  %indvars.iv507.i = phi i64 [ 0, %.lr.ph397.i.new ], [ %indvars.iv.next508.i.3, %bb.ca ] ; 5 uses
  %indvars.iv505.i = phi i64 [ %i.tq, %.lr.ph397.i.new ], [ %indvars.iv.next506.i.3, %bb.ca ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph397.i.new ], [ %niter.next.3, %bb.ca ]
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %indvars.iv505.i
  %i.uc = load float, ptr %i.ub, align 4, !noalias !116
  %i.ud = load ptr, ptr %i.tp, align 8, !noalias !116
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %indvars.iv507.i
  store float %i.uc, ptr %i.ue, align 4, !noalias !116
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %indvars.iv505.i
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 4
  %i.uh = load float, ptr %i.ug, align 4, !noalias !116
  %i.ui = load ptr, ptr %i.tp, align 8, !noalias !116
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.ui, i64 %indvars.iv507.i
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 4
  store float %i.uh, ptr %i.uk, align 4, !noalias !116
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %indvars.iv505.i
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.un = load float, ptr %i.um, align 4, !noalias !116
  %i.uo = load ptr, ptr %i.tp, align 8, !noalias !116
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %indvars.iv507.i
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  store float %i.un, ptr %i.uq, align 4, !noalias !116
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %indvars.iv505.i
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 12
  %i.ut = load float, ptr %i.us, align 4, !noalias !116
  %i.uu = load ptr, ptr %i.tp, align 8, !noalias !116
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %indvars.iv507.i
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 12
  store float %i.ut, ptr %i.uw, align 4, !noalias !116
  %indvars.iv.next508.i.3 = add nuw nsw i64 %indvars.iv507.i, 4 ; 2 uses
  %indvars.iv.next506.i.3 = add nuw nsw i64 %indvars.iv505.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge398.loopexit.i.unr-lcssa, label %bb.ca

bb.cb:                                            ; preds = %bb.bj
  %i.ux = load i32, ptr %i.mm, align 4, !noalias !116
  %i.uy = shl i32 %i.ux, 2
  %i.uz = zext i32 %i.uy to i64
  %i.va = call noalias ptr @malloc(i64 noundef %i.uz) #56, !noalias !116 ; 7 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %i.vc = load i32, ptr %i.vb, align 4, !noalias !116
  %i.vd = zext i32 %i.vc to i64
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.vd
  %i.vf = load i32, ptr %i.mm, align 4, !noalias !116
  %i.vg = shl i32 %i.vf, 2
  %i.vh = zext i32 %i.vg to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.va, ptr nonnull align 1 %i.ve, i64 %i.vh, i1 false), !noalias !116
  %i.vi = load i32, ptr %i.ix, align 4, !noalias !116 ; 2 uses
  %.not444.i = icmp eq i32 %i.vi, 0
  br i1 %.not444.i, label %.loopexit.i19, label %.lr.ph393.i

.lr.ph393.i:                                      ; preds = %bb.cb, %._crit_edge390.i
  %i.vj = phi i32 [ %i.vx, %._crit_edge390.i ], [ %i.vi, %bb.cb ]
  %indvars.iv502.i = phi i64 [ %indvars.iv.next503.i, %._crit_edge390.i ], [ 0, %bb.cb ] ; 3 uses
  %i.vk = getelementptr inbounds nuw [24 x i8], ptr %i.jb, i64 %indvars.iv502.i ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vm = load i32, ptr %i.vl, align 4, !noalias !116 ; 2 uses
  %i.vn = shl i32 %i.vm, 2                        ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vk, i64 12
  %i.vp = load i32, ptr %i.vo, align 4, !noalias !116 ; 2 uses
  %i.vq = add i32 %i.vp, %i.vm
  %i.vr = shl i32 %i.vq, 2
  %i.vs = icmp ult i32 %i.vn, %i.vr
  br i1 %i.vs, label %.lr.ph389.i, label %._crit_edge390.i

.lr.ph389.i:                                      ; preds = %.lr.ph393.i
  %i.vt = getelementptr inbounds nuw [120 x i8], ptr %i.jk, i64 %indvars.iv502.i
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 72 ; 4 uses
  %i.vv = zext i32 %i.vn to i64
  %i.vw = shl i32 %i.vp, 2
  %wide.trip.count500.i = zext i32 %i.vw to i64
  br label %bb.cc

._crit_edge390.loopexit.i:                        ; preds = %bb.cc
  %.pre552.i = load i32, ptr %i.ix, align 4, !noalias !116
  br label %._crit_edge390.i

._crit_edge390.i:                                 ; preds = %._crit_edge390.loopexit.i, %.lr.ph393.i
  %i.vx = phi i32 [ %.pre552.i, %._crit_edge390.loopexit.i ], [ %i.vj, %.lr.ph393.i ] ; 2 uses
  %indvars.iv.next503.i = add nuw nsw i64 %indvars.iv502.i, 1 ; 2 uses
  %i.vy = zext i32 %i.vx to i64
  %i.vz = icmp samesign ult i64 %indvars.iv.next503.i, %i.vy
  br i1 %i.vz, label %.lr.ph393.i, label %.loopexit.i19

bb.cc:                                            ; preds = %bb.cc, %.lr.ph389.i
  %indvars.iv495.i = phi i64 [ 0, %.lr.ph389.i ], [ %indvars.iv.next496.i.3, %bb.cc ] ; 5 uses
  %indvars.iv493.i = phi i64 [ %i.vv, %.lr.ph389.i ], [ %indvars.iv.next494.i.3, %bb.cc ] ; 5 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.va, i64 %indvars.iv493.i
  %i.wb = load i8, ptr %i.wa, align 1, !noalias !116
  %i.wc = load ptr, ptr %i.vu, align 8, !noalias !116
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 %indvars.iv495.i
  store i8 %i.wb, ptr %i.wd, align 1, !noalias !116
  %i.we = getelementptr inbounds nuw i8, ptr %i.va, i64 %indvars.iv493.i
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 1
  %i.wg = load i8, ptr %i.wf, align 1, !noalias !116
  %i.wh = load ptr, ptr %i.vu, align 8, !noalias !116
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 %indvars.iv495.i
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 1
  store i8 %i.wg, ptr %i.wj, align 1, !noalias !116
  %i.wk = getelementptr inbounds nuw i8, ptr %i.va, i64 %indvars.iv493.i
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 2
  %i.wm = load i8, ptr %i.wl, align 1, !noalias !116
  %i.wn = load ptr, ptr %i.vu, align 8, !noalias !116
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 %indvars.iv495.i
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 2
  store i8 %i.wm, ptr %i.wp, align 1, !noalias !116
  %i.wq = getelementptr inbounds nuw i8, ptr %i.va, i64 %indvars.iv493.i
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 3
  %i.ws = load i8, ptr %i.wr, align 1, !noalias !116
  %i.wt = load ptr, ptr %i.vu, align 8, !noalias !116
end_hunk_10
begin_hunk_11_@LoadModel:bb.a
  br i1 %.not442.i, label %.loopexit.i19, label %.lr.ph377.i

.lr.ph377.i:                                      ; preds = %bb.cf, %._crit_edge374.i
  %indvars.iv478.i = phi i64 [ %indvars.iv.next479.i, %._crit_edge374.i ], [ 0, %bb.cf ] ; 3 uses
  %i.yz = getelementptr inbounds nuw [120 x i8], ptr %i.jk, i64 %indvars.iv478.i ; 2 uses
  %i.za = load i32, ptr %i.yz, align 8, !noalias !116
  %i.zb = shl nsw i32 %i.za, 2
  %i.zc = sext i32 %i.zb to i64
  %i.zd = call noalias ptr @calloc(i64 noundef %i.zc, i64 noundef 1) #57, !noalias !116
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yz, i64 48 ; 5 uses
  store ptr %i.zd, ptr %i.ze, align 8, !noalias !116
  %i.zf = getelementptr inbounds nuw [24 x i8], ptr %i.jb, i64 %indvars.iv478.i ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 8
  %i.zh = load i32, ptr %i.zg, align 4, !noalias !116 ; 2 uses
  %i.zi = shl i32 %i.zh, 2                        ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zf, i64 12
  %i.zk = load i32, ptr %i.zj, align 4, !noalias !116 ; 2 uses
  %i.zl = add i32 %i.zk, %i.zh
  %i.zm = shl i32 %i.zl, 2
  %i.zn = icmp ult i32 %i.zi, %i.zm
  br i1 %i.zn, label %.lr.ph373.preheader.i, label %._crit_edge374.i

.lr.ph373.preheader.i:                            ; preds = %.lr.ph377.i
  %i.zo = zext i32 %i.zi to i64
  %i.zp = shl i32 %i.zk, 2
  %wide.trip.count476.i = zext i32 %i.zp to i64
  br label %.lr.ph373.i

._crit_edge374.i:                                 ; preds = %.lr.ph373.i, %.lr.ph377.i
  %indvars.iv.next479.i = add nuw nsw i64 %indvars.iv478.i, 1 ; 2 uses
  %i.zq = load i32, ptr %i.ix, align 4, !noalias !116
  %i.zr = zext i32 %i.zq to i64
  %i.zs = icmp samesign ult i64 %indvars.iv.next479.i, %i.zr
  br i1 %i.zs, label %.lr.ph377.i, label %.loopexit.i19

.lr.ph373.i:                                      ; preds = %.lr.ph373.i, %.lr.ph373.preheader.i
  %indvars.iv471.i = phi i64 [ 0, %.lr.ph373.preheader.i ], [ %indvars.iv.next472.i.3, %.lr.ph373.i ] ; 5 uses
  %indvars.iv469.i = phi i64 [ %i.zo, %.lr.ph373.preheader.i ], [ %indvars.iv.next470.i.3, %.lr.ph373.i ] ; 5 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.yq, i64 %indvars.iv469.i
  %i.zu = load i8, ptr %i.zt, align 1, !noalias !116
  %i.zv = load ptr, ptr %i.ze, align 8, !noalias !116
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 %indvars.iv471.i
  store i8 %i.zu, ptr %i.zw, align 1, !noalias !116
  %i.zx = getelementptr inbounds nuw i8, ptr %i.yq, i64 %indvars.iv469.i
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 1
  %i.zz = load i8, ptr %i.zy, align 1, !noalias !116
  %i.aaa = load ptr, ptr %i.ze, align 8, !noalias !116
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 %indvars.iv471.i
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 1
  store i8 %i.zz, ptr %i.aac, align 1, !noalias !116
  %i.aad = getelementptr inbounds nuw i8, ptr %i.yq, i64 %indvars.iv469.i
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 2
  %i.aaf = load i8, ptr %i.aae, align 1, !noalias !116
  %i.aag = load ptr, ptr %i.ze, align 8, !noalias !116
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 %indvars.iv471.i
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 2
  store i8 %i.aaf, ptr %i.aai, align 1, !noalias !116
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.yq, i64 %indvars.iv469.i
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 3
  %i.aal = load i8, ptr %i.aak, align 1, !noalias !116
  %i.aam = load ptr, ptr %i.ze, align 8, !noalias !116
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 %indvars.iv471.i
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 3
  store i8 %i.aal, ptr %i.aao, align 1, !noalias !116
  %indvars.iv.next472.i.3 = add nuw nsw i64 %indvars.iv471.i, 4 ; 2 uses
  %indvars.iv.next470.i.3 = add nuw nsw i64 %indvars.iv469.i, 4
  %exitcond477.not.i.3 = icmp eq i64 %indvars.iv.next472.i.3, %wide.trip.count476.i
  br i1 %exitcond477.not.i.3, label %._crit_edge374.i, label %.lr.ph373.i

.loopexit.i19:                                    ; preds = %._crit_edge374.i, %._crit_edge382.i, %._crit_edge390.i, %._crit_edge398.i, %._crit_edge406.i, %._crit_edge414.i, %bb.cf, %bb.cd, %bb.cb, %bb.by, %bb.br, %bb.bk, %bb.bj
  %.1340.i = phi ptr [ %.0339418.i, %bb.bj ], [ %.0339418.i, %bb.by ], [ %.0339418.i, %bb.cb ], [ %.0339418.i, %bb.cd ], [ %i.ou, %bb.bk ], [ %.0339418.i, %bb.br ], [ %.0339418.i, %bb.cf ], [ %.0339418.i, %._crit_edge398.i ], [ %.0339418.i, %._crit_edge390.i ], [ %.0339418.i, %._crit_edge382.i ], [ %i.ou, %._crit_edge414.i ], [ %.0339418.i, %._crit_edge406.i ], [ %.0339418.i, %._crit_edge374.i ] ; 2 uses
  %.1338.i = phi ptr [ %.0337419.i, %bb.bj ], [ %.0337419.i, %bb.by ], [ %.0337419.i, %bb.cb ], [ %.0337419.i, %bb.cd ], [ %.0337419.i, %bb.bk ], [ %i.qu, %bb.br ], [ %.0337419.i, %bb.cf ], [ %.0337419.i, %._crit_edge398.i ], [ %.0337419.i, %._crit_edge390.i ], [ %.0337419.i, %._crit_edge382.i ], [ %.0337419.i, %._crit_edge414.i ], [ %i.qu, %._crit_edge406.i ], [ %.0337419.i, %._crit_edge374.i ] ; 2 uses
  %.1336.i = phi ptr [ %.0335420.i, %bb.bj ], [ %i.su, %bb.by ], [ %.0335420.i, %bb.cb ], [ %.0335420.i, %bb.cd ], [ %.0335420.i, %bb.bk ], [ %.0335420.i, %bb.br ], [ %.0335420.i, %bb.cf ], [ %i.su, %._crit_edge398.i ], [ %.0335420.i, %._crit_edge390.i ], [ %.0335420.i, %._crit_edge382.i ], [ %.0335420.i, %._crit_edge414.i ], [ %.0335420.i, %._crit_edge406.i ], [ %.0335420.i, %._crit_edge374.i ] ; 2 uses
  %.1334.i = phi ptr [ %.0333421.i, %bb.bj ], [ %.0333421.i, %bb.by ], [ %i.va, %bb.cb ], [ %.0333421.i, %bb.cd ], [ %.0333421.i, %bb.bk ], [ %.0333421.i, %bb.br ], [ %.0333421.i, %bb.cf ], [ %.0333421.i, %._crit_edge398.i ], [ %i.va, %._crit_edge390.i ], [ %.0333421.i, %._crit_edge382.i ], [ %.0333421.i, %._crit_edge414.i ], [ %.0333421.i, %._crit_edge406.i ], [ %.0333421.i, %._crit_edge374.i ] ; 2 uses
  %.1332.i = phi ptr [ %.0331422.i, %bb.bj ], [ %.0331422.i, %bb.by ], [ %.0331422.i, %bb.cb ], [ %i.wz, %bb.cd ], [ %.0331422.i, %bb.bk ], [ %.0331422.i, %bb.br ], [ %.0331422.i, %bb.cf ], [ %.0331422.i, %._crit_edge398.i ], [ %.0331422.i, %._crit_edge390.i ], [ %i.wz, %._crit_edge382.i ], [ %.0331422.i, %._crit_edge414.i ], [ %.0331422.i, %._crit_edge406.i ], [ %.0331422.i, %._crit_edge374.i ] ; 2 uses
  %.1.i20 = phi ptr [ %.0330423.i, %bb.bj ], [ %.0330423.i, %bb.by ], [ %.0330423.i, %bb.cb ], [ %.0330423.i, %bb.cd ], [ %.0330423.i, %bb.bk ], [ %.0330423.i, %bb.br ], [ %i.yq, %bb.cf ], [ %.0330423.i, %._crit_edge398.i ], [ %.0330423.i, %._crit_edge390.i ], [ %.0330423.i, %._crit_edge382.i ], [ %.0330423.i, %._crit_edge414.i ], [ %.0330423.i, %._crit_edge406.i ], [ %i.yq, %._crit_edge374.i ] ; 2 uses
  %indvars.iv.next542.i = add nuw nsw i64 %indvars.iv541.i, 1 ; 2 uses
  %i.aap = load i32, ptr %i.ma, align 4, !noalias !116
  %i.aaq = zext i32 %i.aap to i64
  %i.aar = icmp samesign ult i64 %indvars.iv.next542.i, %i.aaq
  br i1 %i.aar, label %bb.bj, label %._crit_edge427.i

._crit_edge436.i:                                 ; preds = %bb.cg, %._crit_edge427.i
  call fastcc void @BuildPoseFromParentJoints(ptr noundef %i.of, i32 noundef %i.oc, ptr noundef %i.oi), !noalias !116
  %i.aas = sext i32 %i.oc to i64                  ; 2 uses
  %i.aat = call noalias ptr @calloc(i64 noundef %i.aas, i64 noundef 40) #57, !noalias !116
  %i.aau = call noalias ptr @calloc(i64 noundef %i.aas, i64 noundef 64) #57, !noalias !116 ; 4 uses
  %i.aav = icmp sgt i32 %i.oc, 0
  br i1 %i.aav, label %.lr.ph439.i.preheader, label %._crit_edge440.i

.lr.ph439.i.preheader:                            ; preds = %._crit_edge436.i
  %xtraiter372 = and i64 %i.od, 1
  %i.aaw = icmp eq i32 %i.oc, 1
  br i1 %i.aaw, label %.lr.ph439.i.epil.preheader, label %.lr.ph439.i.preheader.new

.lr.ph439.i.preheader.new:                        ; preds = %.lr.ph439.i.preheader
  %unroll_iter376 = and i64 %i.od, 2147483646
  br label %.lr.ph439.i

bb.cg:                                            ; preds = %bb.cg, %.lr.ph435.i
  %indvars.iv544.i = phi i64 [ 0, %.lr.ph435.i ], [ %indvars.iv.next545.i, %bb.cg ] ; 4 uses
  %i.aax = getelementptr inbounds nuw [48 x i8], ptr %i.nx, i64 %indvars.iv544.i ; 5 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 4
  %i.aaz = load i32, ptr %i.aay, align 4, !noalias !116
  %i.aba = getelementptr inbounds nuw [36 x i8], ptr %i.of, i64 %indvars.iv544.i ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 32
  store i32 %i.aaz, ptr %i.abb, align 4, !noalias !116
  %i.abc = load i32, ptr %i.aax, align 4, !noalias !116
  %i.abd = zext i32 %i.abc to i64
  %i.abe = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.abd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.aba, ptr noundef nonnull align 1 dereferenceable(32) %i.abe, i64 32, i1 false), !noalias !116
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aax, i64 8
  %i.abg = getelementptr inbounds nuw [40 x i8], ptr %i.oi, i64 %indvars.iv544.i ; 3 uses
  %i.abh = load <4 x float>, ptr %i.abf, align 4, !noalias !116
  store <4 x float> %i.abh, ptr %i.abg, align 4, !noalias !116
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aax, i64 24
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abg, i64 16
  %i.abk = load <4 x float>, ptr %i.abi, align 4, !noalias !116
  store <4 x float> %i.abk, ptr %i.abj, align 4, !noalias !116
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aax, i64 40
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abg, i64 32
  %i.abn = load <2 x float>, ptr %i.abl, align 4, !noalias !116
  store <2 x float> %i.abn, ptr %i.abm, align 4, !noalias !116
  %indvars.iv.next545.i = add nuw nsw i64 %indvars.iv544.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next545.i, %i.on
  br i1 %exitcond.not, label %._crit_edge436.i, label %bb.cg

._crit_edge440.i.loopexit.unr-lcssa:              ; preds = %.lr.ph439.i
  %lcmp.mod374.not = icmp eq i64 %xtraiter372, 0
  br i1 %lcmp.mod374.not, label %._crit_edge440.i, label %.lr.ph439.i.epil.preheader

.lr.ph439.i.epil.preheader:                       ; preds = %._crit_edge440.i.loopexit.unr-lcssa, %.lr.ph439.i.preheader
  %indvars.iv547.i.epil.init = phi i64 [ 0, %.lr.ph439.i.preheader ], [ %indvars.iv.next548.i.1, %._crit_edge440.i.loopexit.unr-lcssa ]
  %lcmp.mod375 = trunc i32 %i.oc to i1
  call void @llvm.assume(i1 %lcmp.mod375)
  %i.abo = getelementptr inbounds nuw [64 x i8], ptr %i.aau, i64 %indvars.iv547.i.epil.init ; 7 uses
  store float 1.000000e+00, ptr %i.abo, align 4, !noalias !116
  %.sroa.4.0..sroa_idx.i21.epil = getelementptr inbounds nuw i8, ptr %i.abo, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i21.epil, i8 0, i64 16, i1 false), !noalias !116
  %.sroa.5.0..sroa_idx.i22.epil = getelementptr inbounds nuw i8, ptr %i.abo, i64 20
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i22.epil, align 4, !noalias !116
  %.sroa.6.0..sroa_idx.i23.epil = getelementptr inbounds nuw i8, ptr %i.abo, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i23.epil, i8 0, i64 16, i1 false), !noalias !116
  %.sroa.6348.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.abo, i64 40
  store float 1.000000e+00, ptr %.sroa.6348.0..sroa_idx.i.epil, align 4, !noalias !116
  %.sroa.7.0..sroa_idx.i24.epil = getelementptr inbounds nuw i8, ptr %i.abo, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx.i24.epil, i8 0, i64 16, i1 false), !noalias !116
  %.sroa.7349.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.abo, i64 60
  store float 1.000000e+00, ptr %.sroa.7349.0..sroa_idx.i.epil, align 4, !noalias !116
  br label %._crit_edge440.i

._crit_edge440.i:                                 ; preds = %.lr.ph439.i.epil.preheader, %._crit_edge440.i.loopexit.unr-lcssa, %._crit_edge436.i
  call void @UnloadFileData(ptr noundef nonnull %i.ip) #54, !noalias !116
  call void @free(ptr noundef %i.jb) #54, !noalias !116
  call void @free(ptr noundef %i.jt) #54, !noalias !116
  call void @free(ptr noundef %i.me) #54, !noalias !116
  call void @free(ptr noundef %.0339.lcssa.i) #54, !noalias !116
  call void @free(ptr noundef %.0337.lcssa.i) #54, !noalias !116
  call void @free(ptr noundef %.0335.lcssa.i) #54, !noalias !116
  call void @free(ptr noundef %.0333.lcssa.i) #54, !noalias !116
  call void @free(ptr noundef %.0331.lcssa.i) #54, !noalias !116
  call void @free(ptr noundef %i.nx) #54, !noalias !116
  call void @free(ptr noundef %.0330.lcssa.i) #54, !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #54, !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #54, !noalias !116
  br label %LoadIQM.exit

.lr.ph439.i:                                      ; preds = %.lr.ph439.i, %.lr.ph439.i.preheader.new
  %indvars.iv547.i = phi i64 [ 0, %.lr.ph439.i.preheader.new ], [ %indvars.iv.next548.i.1, %.lr.ph439.i ] ; 3 uses
  %niter377 = phi i64 [ 0, %.lr.ph439.i.preheader.new ], [ %niter377.next.1, %.lr.ph439.i ]
  %i.abp = getelementptr inbounds nuw [64 x i8], ptr %i.aau, i64 %indvars.iv547.i ; 7 uses
  store float 1.000000e+00, ptr %i.abp, align 4, !noalias !116
  %.sroa.4.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.abp, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i21, i8 0, i64 16, i1 false), !noalias !116
  %.sroa.5.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %i.abp, i64 20
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i22, align 4, !noalias !116
  %.sroa.6.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.abp, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i23, i8 0, i64 16, i1 false), !noalias !116
  %.sroa.6348.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abp, i64 40
  store float 1.000000e+00, ptr %.sroa.6348.0..sroa_idx.i, align 4, !noalias !116
  %.sroa.7.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %i.abp, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx.i24, i8 0, i64 16, i1 false), !noalias !116
  %.sroa.7349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abp, i64 60
  store float 1.000000e+00, ptr %.sroa.7349.0..sroa_idx.i, align 4, !noalias !116
  %i.abq = getelementptr inbounds nuw [64 x i8], ptr %i.aau, i64 %indvars.iv547.i ; 7 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 64
  store float 1.000000e+00, ptr %i.abr, align 4, !noalias !116
  %.sroa.4.0..sroa_idx.i21.1 = getelementptr inbounds nuw i8, ptr %i.abq, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i21.1, i8 0, i64 16, i1 false), !noalias !116
  %.sroa.5.0..sroa_idx.i22.1 = getelementptr inbounds nuw i8, ptr %i.abq, i64 84
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i22.1, align 4, !noalias !116
  %.sroa.6.0..sroa_idx.i23.1 = getelementptr inbounds nuw i8, ptr %i.abq, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i23.1, i8 0, i64 16, i1 false), !noalias !116
  %.sroa.6348.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.abq, i64 104
  store float 1.000000e+00, ptr %.sroa.6348.0..sroa_idx.i.1, align 4, !noalias !116
  %.sroa.7.0..sroa_idx.i24.1 = getelementptr inbounds nuw i8, ptr %i.abq, i64 108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx.i24.1, i8 0, i64 16, i1 false), !noalias !116
  %.sroa.7349.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.abq, i64 124
  store float 1.000000e+00, ptr %.sroa.7349.0..sroa_idx.i.1, align 4, !noalias !116
  %indvars.iv.next548.i.1 = add nuw nsw i64 %indvars.iv547.i, 2 ; 2 uses
  %niter377.next.1 = add nuw i64 %niter377, 2     ; 2 uses
  %niter377.ncmp.1 = icmp eq i64 %niter377.next.1, %unroll_iter376
  br i1 %niter377.ncmp.1, label %._crit_edge440.i.loopexit.unr-lcssa, label %.lr.ph439.i

LoadIQM.exit:                                     ; preds = %bb.bb, %bb.bd, %bb.bf, %._crit_edge440.i
  %.sroa.4223.0 = phi i32 [ 0, %bb.bb ], [ %i.jg, %._crit_edge440.i ], [ 0, %bb.bf ], [ 0, %bb.bd ] ; 2 uses
  %.sroa.6225.0 = phi ptr [ null, %bb.bb ], [ %i.jk, %._crit_edge440.i ], [ null, %bb.bf ], [ null, %bb.bd ]
  %.sroa.7226.0 = phi ptr [ null, %bb.bb ], [ %i.jl, %._crit_edge440.i ], [ null, %bb.bf ], [ null, %bb.bd ]
  %.sroa.8227.0 = phi ptr [ null, %bb.bb ], [ %i.jm, %._crit_edge440.i ], [ null, %bb.bf ], [ null, %bb.bd ]
  %.sroa.9228.0 = phi i32 [ 0, %bb.bb ], [ %i.oc, %._crit_edge440.i ], [ 0, %bb.bf ], [ 0, %bb.bd ]
  %.sroa.10230.0 = phi ptr [ null, %bb.bb ], [ %i.of, %._crit_edge440.i ], [ null, %bb.bf ], [ null, %bb.bd ]
  %.sroa.11231.0 = phi ptr [ null, %bb.bb ], [ %i.oi, %._crit_edge440.i ], [ null, %bb.bf ], [ null, %bb.bd ]
  %.sroa.12232.0 = phi ptr [ null, %bb.bb ], [ %i.aat, %._crit_edge440.i ], [ null, %bb.bf ], [ null, %bb.bd ]
  %.sroa.13233.0 = phi ptr [ null, %bb.bb ], [ %i.aau, %._crit_edge440.i ], [ null, %bb.bf ], [ null, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #54, !noalias !116
  store <16 x float> zeroinitializer, ptr %0, align 8
  %.sroa.4223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sroa.4223.0, ptr %.sroa.4223.0..sroa_idx, align 8
  %.sroa.5224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %.sroa.4223.0, ptr %.sroa.5224.0..sroa_idx, align 4
  %.sroa.6225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.6225.0, ptr %.sroa.6225.0..sroa_idx, align 8
  %.sroa.7226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.7226.0, ptr %.sroa.7226.0..sroa_idx, align 8
  %.sroa.8227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.8227.0, ptr %.sroa.8227.0..sroa_idx, align 8
  %.sroa.9228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %.sroa.9228.0, ptr %.sroa.9228.0..sroa_idx, align 8
  %.sroa.10229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %.sroa.10229.0..sroa_idx, align 4
  %.sroa.10230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.10230.0, ptr %.sroa.10230.0..sroa_idx, align 8
  %.sroa.11231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.11231.0, ptr %.sroa.11231.0..sroa_idx, align 8
  %.sroa.12232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %.sroa.12232.0, ptr %.sroa.12232.0..sroa_idx, align 8
  %.sroa.13233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.13233.0, ptr %.sroa.13233.0..sroa_idx, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %LoadIQM.exit, %bb.ba
  %i.abs = call zeroext i1 @IsFileExtension(ptr noundef %1, ptr noundef nonnull @.str.37) #54
  br i1 %i.abs, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.abt = call zeroext i1 @IsFileExtension(ptr noundef %1, ptr noundef nonnull @.str.38) #54
  br i1 %i.abt, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #54
  call fastcc void @LoadGLTF(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %12, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #54
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.abu = call zeroext i1 @IsFileExtension(ptr noundef %1, ptr noundef nonnull @.str.39) #54
  br i1 %i.abu, label %bb.cl, label %bb.cu

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54, !noalias !123
  store i32 0, ptr %i.b, align 4, !noalias !123
  %i.abv = call ptr @LoadFileData(ptr noundef %1, ptr noundef nonnull %i.b) #54, !noalias !123 ; 4 uses
  %i.abw = icmp eq ptr %i.abv, null
  br i1 %i.abw, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.386, ptr noundef %1) #54, !noalias !123
  br label %LoadVOX.exit

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #54, !noalias !123
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1136) %9, i8 0, i64 1136, i1 false), !noalias !123
  %i.abx = load i32, ptr %i.b, align 4, !noalias !123
  %i.aby = call i32 @Vox_LoadFromMemory(ptr noundef nonnull %i.abv, i32 noundef %i.abx, ptr noundef nonnull %9), !noalias !123
  %.not.i34 = icmp eq i32 %i.aby, 0
  br i1 %.not.i34, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @UnloadFileData(ptr noundef nonnull %i.abv) #54, !noalias !123
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.387, ptr noundef %1) #54, !noalias !123
  br label %bb.ct

bb.cp:                                            ; preds = %bb.cn
  %i.abz = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.acb = load i32, ptr %i.aca, align 8, !noalias !123 ; 3 uses
  %i.acc = sdiv i32 %i.acb, 65536
  %i.acd = add nsw i32 %i.acc, 1                  ; 4 uses
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.388, ptr noundef %1, i32 noundef %i.acb, i32 noundef %i.acd) #54, !noalias !123
  %i.ace = sext i32 %i.acd to i64                 ; 2 uses
  %i.acf = call noalias ptr @calloc(i64 noundef %i.ace, i64 noundef 120) #57, !noalias !123 ; 2 uses
  %i.acg = call noalias ptr @calloc(i64 noundef %i.ace, i64 noundef 4) #57, !noalias !123 ; 2 uses
  %i.ach = call noalias dereferenceable_or_null(40) ptr @calloc(i64 noundef 1, i64 noundef 40) #57, !noalias !123 ; 6 uses
  %i.aci = call noalias dereferenceable_or_null(336) ptr @calloc(i64 noundef 12, i64 noundef 28) #57, !noalias !126 ; 5 uses
  %i.acj = call i32 @rlGetShaderIdDefault() #54, !noalias !126
  %i.ack = call ptr @rlGetShaderLocsDefault() #54, !noalias !126
  %i.acl = call i32 @rlGetTextureIdDefault() #54, !noalias !126
  store i32 %i.acl, ptr %i.aci, align 4, !noalias !126
  %.sroa.26.0..sroa_idx.i.i36 = getelementptr inbounds nuw i8, ptr %i.aci, i64 4
  store <4 x i32> <i32 1, i32 1, i32 1, i32 7>, ptr %.sroa.26.0..sroa_idx.i.i36, align 4, !noalias !126
  %i.acm = getelementptr inbounds nuw i8, ptr %i.aci, i64 20
  %i.acn = getelementptr inbounds nuw i8, ptr %i.aci, i64 48
  store i32 -1, ptr %i.acm, align 4, !noalias !126
  store i32 -1, ptr %i.acn, align 4, !noalias !126
  store i32 %i.acj, ptr %i.ach, align 8, !noalias !123
  %.sroa.5.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.ach, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx.i40, align 4, !noalias !123
  %.sroa.559.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ach, i64 8
  store ptr %i.ack, ptr %.sroa.559.0..sroa_idx.i, align 8, !noalias !123
  %.sroa.6.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.ach, i64 16
  store ptr %i.aci, ptr %.sroa.6.0..sroa_idx.i41, align 8, !noalias !123
  %.sroa.7.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.ach, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i42, i8 0, i64 16, i1 false), !noalias !123
  %i.aco = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 3 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  %i.acq = load ptr, ptr %i.acp, align 8, !noalias !123
  %.not5866.i = icmp slt i32 %i.acb, -65535
  br i1 %.not5866.i, label %._crit_edge.i48, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %bb.cp
  %i.acr = load ptr, ptr %i.aco, align 8, !noalias !123
  %i.acs = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.act = load ptr, ptr %i.acs, align 8, !noalias !123
  %i.acu = load ptr, ptr %i.abz, align 8, !noalias !123
  %i.acv = load i32, ptr %i.aca, align 8, !noalias !123
  %i.acw = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.acx = load i32, ptr %i.acw, align 8, !noalias !123
  %i.acy = shl i32 %i.acx, 1
  %i.acz = sext i32 %i.acy to i64                 ; 2 uses
  %wide.trip.count.i44 = zext i32 %i.acd to i64
  br label %bb.cs

._crit_edge.i48:                                  ; preds = %bb.cs, %bb.cp
  %i.ada = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.adb = load ptr, ptr %i.ada, align 8, !noalias !123 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.adb, null
  br i1 %.not.i.i49, label %Vox_FreeArrays.exit.i, label %.preheader.i.i50

.preheader.i.i50:                                 ; preds = %._crit_edge.i48
  %i.adc = getelementptr inbounds nuw i8, ptr %9, i64 44 ; 2 uses
  %i.add = load i32, ptr %i.adc, align 4, !noalias !123 ; 2 uses
  %i.ade = icmp sgt i32 %i.add, 0
  br i1 %i.ade, label %.lr.ph.i.i52, label %._crit_edge.i.i51

._crit_edge.loopexit.i.i:                         ; preds = %bb.cr
  %.pre26.i.i = load ptr, ptr %i.ada, align 8, !noalias !123
  br label %._crit_edge.i.i51

._crit_edge.i.i51:                                ; preds = %._crit_edge.loopexit.i.i, %.preheader.i.i50
  %i.adf = phi ptr [ %.pre26.i.i, %._crit_edge.loopexit.i.i ], [ %i.adb, %.preheader.i.i50 ]
  call void @free(ptr noundef %i.adf) #54, !noalias !123
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false), !noalias !123
  br label %Vox_FreeArrays.exit.i

.lr.ph.i.i52:                                     ; preds = %.preheader.i.i50, %bb.cr
  %i.adg = phi i32 [ %i.adl, %bb.cr ], [ %i.add, %.preheader.i.i50 ]
  %indvars.iv.i.i53 = phi i64 [ %indvars.iv.next.i.i54, %bb.cr ], [ 0, %.preheader.i.i50 ] ; 2 uses
  %i.adh = load ptr, ptr %i.ada, align 8, !noalias !123
  %i.adi = getelementptr inbounds nuw [16 x i8], ptr %i.adh, i64 %indvars.iv.i.i53 ; 2 uses
  %i.adj = load ptr, ptr %i.adi, align 8, !noalias !123 ; 2 uses
  %.not23.i.i = icmp eq ptr %i.adj, null
  br i1 %.not23.i.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph.i.i52
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  store i32 0, ptr %i.adk, align 8, !noalias !123
  call void @free(ptr noundef nonnull %i.adj) #54, !noalias !123
  %.pre.i.i = load i32, ptr %i.adc, align 4, !noalias !123
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.lr.ph.i.i52
  %i.adl = phi i32 [ %.pre.i.i, %bb.cq ], [ %i.adg, %.lr.ph.i.i52 ] ; 2 uses
  %indvars.iv.next.i.i54 = add nuw nsw i64 %indvars.iv.i.i53, 1 ; 2 uses
  %i.adm = sext i32 %i.adl to i64
  %i.adn = icmp slt i64 %indvars.iv.next.i.i54, %i.adm
  br i1 %i.adn, label %.lr.ph.i.i52, label %._crit_edge.loopexit.i.i

Vox_FreeArrays.exit.i:                            ; preds = %._crit_edge.i.i51, %._crit_edge.i48
  %i.ado = load ptr, ptr %i.abz, align 8, !noalias !123
  call void @free(ptr noundef %i.ado) #54, !noalias !123
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abz, i8 0, i64 16, i1 false), !noalias !123
  %i.adp = load ptr, ptr %i.acp, align 8, !noalias !123
  call void @free(ptr noundef %i.adp) #54, !noalias !123
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.acp, i8 0, i64 16, i1 false), !noalias !123
  %i.adq = load ptr, ptr %i.aco, align 8, !noalias !123
  call void @free(ptr noundef %i.adq) #54, !noalias !123
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aco, i8 0, i64 16, i1 false), !noalias !123
  call void @UnloadFileData(ptr noundef nonnull %i.abv) #54, !noalias !123
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cs, %.lr.ph.i43
  %indvars.iv.i45 = phi i64 [ 0, %.lr.ph.i43 ], [ %indvars.iv.next.i46, %bb.cs ] ; 3 uses
  %.05370.i = phi ptr [ %i.acr, %.lr.ph.i43 ], [ %i.aeo, %bb.cs ] ; 2 uses
  %.05469.i = phi ptr [ %i.act, %.lr.ph.i43 ], [ %i.aen, %bb.cs ] ; 2 uses
  %.05568.i = phi ptr [ %i.acu, %.lr.ph.i43 ], [ %i.aem, %bb.cs ] ; 2 uses
  %.05667.i = phi i32 [ %i.acv, %.lr.ph.i43 ], [ %i.ael, %bb.cs ] ; 2 uses
  %i.adr = getelementptr inbounds nuw [120 x i8], ptr %i.acf, i64 %indvars.iv.i45 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.adr, i8 0, i64 120, i1 false), !noalias !123
  %i.ads = sitofp nsz i32 %.05667.i to double
  %i.adt = call nsz double @llvm.minnum.f64(double %i.ads, double 6.553200e+04)
end_hunk_11
begin_hunk_12_@LoadModel:bb.a
  %i.bnt = fmul <2 x float> %i.bnr, %i.bns
  %i.bnu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bnd, <2 x float> %i.bnj, <2 x float> %i.bnt)
  %i.bnv = shufflevector <2 x float> %i.bnb, <2 x float> %i.bnf, <2 x i32> <i32 0, i32 2>
  %i.bnw = insertelement <2 x float> poison, float %i.bmo, i64 0
  %i.bnx = shufflevector <2 x float> %i.bnw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bny = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bnv, <2 x float> %i.bnx, <2 x float> %i.bnu)
  %i.bnz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bnf, <2 x float> %i.bms, <2 x float> %i.bny)
  store <2 x float> %i.bnp, ptr %i.blv, align 4
  store <2 x float> %i.bnz, ptr %i.bmb, align 4
  %.sroa.023.0.copyload.i = load <2 x float>, ptr %i.blh, align 4 ; 4 uses
  %i.boa = load <2 x float>, ptr %i.bna, align 4  ; 5 uses
  %i.bob = load <2 x float>, ptr %i.bnc, align 4  ; 7 uses
  %.sroa.01.0.vec.extract.i.i = extractelement <2 x float> %i.boa, i64 0 ; 4 uses
  %.sroa.25.12.vec.extract.i.i = extractelement <2 x float> %i.bob, i64 1 ; 3 uses
  %i.boc = fmul float %.sroa.25.12.vec.extract.i.i, %.sroa.25.12.vec.extract.i.i
  %i.bod = call float @llvm.fmuladd.f32(float %.sroa.01.0.vec.extract.i.i, float %.sroa.01.0.vec.extract.i.i, float %i.boc)
  %.sroa.01.4.vec.extract.i.i = extractelement <2 x float> %i.boa, i64 1 ; 8 uses
  %i.boe = fneg float %.sroa.01.4.vec.extract.i.i ; 2 uses
  %i.bof = call float @llvm.fmuladd.f32(float %i.boe, float %.sroa.01.4.vec.extract.i.i, float %i.bod)
  %i.bog = fneg float %.sroa.01.0.vec.extract.i.i
  %i.boh = fmul float %.sroa.25.12.vec.extract.i.i, 2.000000e+00 ; 4 uses
  %i.boi = fmul float %.sroa.01.0.vec.extract.i.i, 2.000000e+00 ; 4 uses
  %i.boj = shufflevector <2 x float> %.sroa.023.0.copyload.i, <2 x float> %i.boa, <4 x i32> <i32 1, i32 3, i32 3, i32 2>
  %i.bok = shufflevector <2 x float> %.sroa.023.0.copyload.i, <2 x float> %i.bob, <4 x i32> <i32 0, i32 2, i32 2, i32 3>
  %i.bol = shufflevector <2 x float> %i.bob, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.bom = fmul float %.sroa.01.4.vec.extract.i.i, 2.000000e+00
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bmz, i64 8
  %.sroa.25.8.vec.extract.i.i = extractelement <2 x float> %i.bob, i64 0 ; 4 uses
  %i.bon = fneg float %.sroa.25.8.vec.extract.i.i ; 3 uses
  %i.boo = call float @llvm.fmuladd.f32(float %i.bon, float %.sroa.25.8.vec.extract.i.i, float %i.bof)
  %i.bop = fmul float %i.boh, %i.bon
  %i.boq = call float @llvm.fmuladd.f32(float %i.boi, float %.sroa.01.4.vec.extract.i.i, float %i.bop)
  %i.bor = insertelement <4 x float> poison, float %i.boq, i64 0
  %i.bos = insertelement <4 x float> %i.bor, float %i.boh, i64 1
  %i.bot = insertelement <4 x float> %i.bos, float %i.boi, i64 2
  %i.bou = insertelement <4 x float> %i.bot, float %i.bog, i64 3
  %i.bov = fmul <4 x float> %i.boj, %i.bou
  %i.bow = insertelement <4 x float> %i.bol, float %i.boo, i64 0
  %i.box = insertelement <4 x float> %i.bow, float %i.boi, i64 1
  %i.boy = insertelement <4 x float> %i.box, float %i.boh, i64 2
  %i.boz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bok, <4 x float> %i.boy, <4 x float> %i.bov) ; 4 uses
  %i.bpa = extractelement <4 x float> %i.boz, i64 0
  %i.bpb = extractelement <4 x float> %i.boz, i64 1
  %i.bpc = call float @llvm.fmuladd.f32(float %i.blo, float %i.bpb, float %i.bpa) ; 2 uses
  %i.bpd = extractelement <4 x float> %i.boz, i64 3 ; 2 uses
  %i.bpe = call float @llvm.fmuladd.f32(float %.sroa.01.4.vec.extract.i.i, float %.sroa.01.4.vec.extract.i.i, float %i.bpd)
  %i.bpf = fmul <2 x float> %i.bob, <float 1.000000e+00, float -2.000000e+00> ; 2 uses
  %i.bpg = fmul float %i.bom, %.sroa.25.8.vec.extract.i.i ; 2 uses
  %i.bph = fmul float %i.boi, %.sroa.25.8.vec.extract.i.i
  %i.bpi = extractelement <2 x float> %i.bpf, i64 1
  %i.bpj = call float @llvm.fmuladd.f32(float %i.bpi, float %.sroa.01.4.vec.extract.i.i, float %i.bph)
  %i.bpk = insertelement <2 x float> poison, float %i.boh, i64 0
  %i.bpl = insertelement <2 x float> %i.bpk, float %i.bon, i64 1
  %i.bpm = shufflevector <2 x float> %i.boa, <2 x float> %i.bob, <2 x i32> <i32 0, i32 2>
  %i.bpn = insertelement <2 x float> poison, float %i.bpg, i64 0
  %i.bpo = insertelement <2 x float> %i.bpn, float %i.bpe, i64 1
  %i.bpp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bpl, <2 x float> %i.bpm, <2 x float> %i.bpo)
  %i.bpq = shufflevector <2 x float> %.sroa.023.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bpr = fmul <2 x float> %i.bpq, %i.bpp
  %i.bps = shufflevector <2 x float> %.sroa.023.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bpt = shufflevector <4 x float> %i.boz, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.bpu = insertelement <2 x float> %i.bpt, float %i.bpj, i64 0
  %i.bpv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bps, <2 x float> %i.bpu, <2 x float> %i.bpr)
  %i.bpw = call float @llvm.fmuladd.f32(float %i.boe, float %.sroa.01.4.vec.extract.i.i, float %i.bpd)
  %i.bpx = shufflevector <2 x float> %i.bob, <2 x float> %i.boa, <2 x i32> <i32 0, i32 2>
  %i.bpy = insertelement <2 x float> poison, float %i.bpw, i64 0
  %i.bpz = insertelement <2 x float> %i.bpy, float %i.bpg, i64 1
  %i.bqa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bpf, <2 x float> %i.bpx, <2 x float> %i.bpz)
  %i.bqb = insertelement <2 x float> poison, float %i.blo, i64 0
  %i.bqc = shufflevector <2 x float> %i.bqb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bqd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bqc, <2 x float> %i.bqa, <2 x float> %i.bpv) ; 3 uses
  %i.bqe = insertelement <2 x float> %i.bqd, float %i.bpc, i64 0
  store <2 x float> %i.bqe, ptr %i.blh, align 4
  %i.bqf = extractelement <2 x float> %i.bqd, i64 0
  store float %i.bqf, ptr %i.blp, align 4
  %.sroa.013.0.copyload.i = load <2 x float>, ptr %i.bmz, align 4 ; 2 uses
  %.sroa.214.0.copyload.i = load float, ptr %.sroa.214.0..sroa_idx.i, align 4
  %.sroa.03.0.vec.extract.i.i = extractelement <2 x float> %.sroa.013.0.copyload.i, i64 0
  %i.bqg = fadd float %.sroa.03.0.vec.extract.i.i, %i.bpc
  %i.bqh = insertelement <2 x float> %.sroa.013.0.copyload.i, float %.sroa.214.0.copyload.i, i64 0
  %i.bqi = fadd <2 x float> %i.bqh, %i.bqd        ; 2 uses
  %i.bqj = insertelement <2 x float> %i.bqi, float %i.bqg, i64 0
  store <2 x float> %i.bqj, ptr %i.blh, align 4
  %i.bqk = extractelement <2 x float> %i.bqi, i64 0
  store float %i.bqk, ptr %i.blp, align 4
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bmz, i64 28
  %.sroa.06.0.copyload.i = load <2 x float>, ptr %i.bmw, align 4
  %.sroa.04.0.copyload.i = load <2 x float>, ptr %i.bql, align 4
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bmz, i64 36
  %.sroa.25.0.copyload.i = load float, ptr %.sroa.25.0..sroa_idx.i, align 4
  %i.bqm = fmul <2 x float> %.sroa.06.0.copyload.i, %.sroa.04.0.copyload.i
  store <2 x float> %i.bqm, ptr %i.bmw, align 4
  store float %.sroa.25.0.copyload.i, ptr %i.bmv, align 4
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %indvars.iv.next599.i = add nuw nsw i64 %indvars.iv598.i, 1 ; 3 uses
  %i.bqn = load i32, ptr %i.bkc, align 8
  %i.bqo = sext i32 %i.bqn to i64
  %i.bqp = icmp slt i64 %indvars.iv.next599.i, %i.bqo
  br i1 %i.bqp, label %bb.fc, label %._crit_edge566.i

._crit_edge566.i:                                 ; preds = %bb.fe, %bb.fb
  %.2.lcssa.i = phi i64 [ 0, %bb.fb ], [ %indvars.iv.next599.i, %bb.fe ] ; 2 uses
  %i.bqq = getelementptr inbounds nuw [36 x i8], ptr %i.bkg, i64 %.2.lcssa.i ; 2 uses
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bqq, i64 32
  store i32 -1, ptr %i.bqr, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.bqq, ptr noundef nonnull align 1 dereferenceable(7) @.str.393, i64 7, i1 false)
  %i.bqs = getelementptr inbounds nuw [40 x i8], ptr %i.bkh, i64 %.2.lcssa.i ; 2 uses
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqs, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.bqs, i8 0, i64 24, i1 false)
  store <4 x float> splat (float 1.000000e+00), ptr %i.bqt, align 4
  %.pr.i = load i32, ptr %i.bkc, align 8
  %.not477.i = icmp eq i32 %.pr.i, 0
  br i1 %.not477.i, label %.thread534.i, label %bb.ff

bb.ff:                                            ; preds = %._crit_edge566.i
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.aer, i64 136
  %i.bqv = load i32, ptr %i.bqu, align 8
  %.not478.i = icmp eq i32 %i.bqv, 0
  br i1 %.not478.i, label %.thread534.i, label %.preheader.i61

.preheader.i61:                                   ; preds = %bb.ff
  %i.bqw = icmp sgt i32 %.sroa.485.1, 0
  br i1 %i.bqw, label %.lr.ph569.i.preheader, label %._crit_edge570.i

.lr.ph569.i.preheader:                            ; preds = %.preheader.i61
  %i.bqx = zext nneg i32 %.sroa.485.1 to i64
  br label %.lr.ph569.i

.lr.ph569.i:                                      ; preds = %.lr.ph569.i.preheader, %.lr.ph569.i
  %indvars.iv601.i = phi i64 [ %indvars.iv.next602.i, %.lr.ph569.i ], [ 0, %.lr.ph569.i.preheader ] ; 2 uses
  %i.bqy = getelementptr inbounds nuw [120 x i8], ptr %.sroa.16.0, i64 %indvars.iv601.i ; 7 uses
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.bqy, i64 64
  store i32 %i.bke, ptr %i.bqz, align 8
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqy, i64 88
  %i.brb = load ptr, ptr %i.bra, align 8
  %i.brc = getelementptr inbounds nuw i8, ptr %i.bqy, i64 8
  %i.brd = load ptr, ptr %i.brc, align 8
  %i.bre = load i32, ptr %i.bqy, align 8
  %i.brf = mul nsw i32 %i.bre, 3
  %i.brg = sext i32 %i.brf to i64
  %i.brh = shl nsw i64 %i.brg, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.brb, ptr align 4 %i.brd, i64 %i.brh, i1 false)
  %i.bri = getelementptr inbounds nuw i8, ptr %i.bqy, i64 96
  %i.brj = load ptr, ptr %i.bri, align 8
  %i.brk = getelementptr inbounds nuw i8, ptr %i.bqy, i64 32
  %i.brl = load ptr, ptr %i.brk, align 8
  %i.brm = load i32, ptr %i.bqy, align 8
  %i.brn = mul nsw i32 %i.brm, 3
  %i.bro = sext i32 %i.brn to i64
  %i.brp = shl nsw i64 %i.bro, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.brj, ptr align 4 %i.brl, i64 %i.brp, i1 false)
  %indvars.iv.next602.i = add nuw nsw i64 %indvars.iv601.i, 1 ; 2 uses
  %exitcond264.not = icmp eq i64 %indvars.iv.next602.i, %i.bqx
  br i1 %exitcond264.not, label %._crit_edge570.i, label %.lr.ph569.i

._crit_edge570.i:                                 ; preds = %.lr.ph569.i, %.preheader.i61
  %i.brq = call noalias ptr @calloc(i64 noundef %i.bkf, i64 noundef 40) #57 ; 3 uses
  %i.brr = call noalias ptr @calloc(i64 noundef %i.bkf, i64 noundef 64) #57 ; 6 uses
  %i.brs = icmp ult i32 %i.bkd, 2147483647
  br i1 %i.brs, label %.lr.ph573.i.preheader.new, label %.thread534.i

.lr.ph573.i.preheader.new:                        ; preds = %._crit_edge570.i
  %unroll_iter382 = and i64 %i.bkf, -2
  br label %.lr.ph573.i

.lr.ph573.i:                                      ; preds = %.lr.ph573.i, %.lr.ph573.i.preheader.new
  %indvars.iv604.i = phi i64 [ 0, %.lr.ph573.i.preheader.new ], [ %indvars.iv.next605.i.1, %.lr.ph573.i ] ; 3 uses
  %niter383 = phi i64 [ 0, %.lr.ph573.i.preheader.new ], [ %niter383.next.1, %.lr.ph573.i ]
  %i.brt = getelementptr inbounds nuw [64 x i8], ptr %i.brr, i64 %indvars.iv604.i ; 7 uses
  store float 1.000000e+00, ptr %i.brt, align 4
  %.sroa.4.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %i.brt, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i62, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %i.brt, i64 20
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i63, align 4
  %.sroa.6.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %i.brt, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i64, i8 0, i64 16, i1 false)
  %.sroa.6522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.brt, i64 40
  store float 1.000000e+00, ptr %.sroa.6522.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %i.brt, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx.i65, i8 0, i64 16, i1 false)
  %.sroa.7523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.brt, i64 60
  store float 1.000000e+00, ptr %.sroa.7523.0..sroa_idx.i, align 4
  %i.bru = getelementptr inbounds nuw [64 x i8], ptr %i.brr, i64 %indvars.iv604.i ; 7 uses
  %i.brv = getelementptr inbounds nuw i8, ptr %i.bru, i64 64
  store float 1.000000e+00, ptr %i.brv, align 4
  %.sroa.4.0..sroa_idx.i62.1 = getelementptr inbounds nuw i8, ptr %i.bru, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i62.1, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i63.1 = getelementptr inbounds nuw i8, ptr %i.bru, i64 84
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i63.1, align 4
  %.sroa.6.0..sroa_idx.i64.1 = getelementptr inbounds nuw i8, ptr %i.bru, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i64.1, i8 0, i64 16, i1 false)
  %.sroa.6522.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.bru, i64 104
  store float 1.000000e+00, ptr %.sroa.6522.0..sroa_idx.i.1, align 4
  %.sroa.7.0..sroa_idx.i65.1 = getelementptr inbounds nuw i8, ptr %i.bru, i64 108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx.i65.1, i8 0, i64 16, i1 false)
  %.sroa.7523.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.bru, i64 124
  store float 1.000000e+00, ptr %.sroa.7523.0..sroa_idx.i.1, align 4
  %indvars.iv.next605.i.1 = add nuw nsw i64 %indvars.iv604.i, 2 ; 2 uses
  %niter383.next.1 = add nuw i64 %niter383, 2     ; 2 uses
  %niter383.ncmp.1 = icmp eq i64 %niter383.next.1, %unroll_iter382
  br i1 %niter383.ncmp.1, label %.thread534.i.loopexit.unr-lcssa, label %.lr.ph573.i

.thread534.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph573.i
  %i.brw = and i32 %i.bkd, 1
  %lcmp.mod380.not.not = icmp eq i32 %i.brw, 0
  br i1 %lcmp.mod380.not.not, label %.lr.ph573.i.epil.preheader, label %.thread534.i

.lr.ph573.i.epil.preheader:                       ; preds = %.thread534.i.loopexit.unr-lcssa
  %lcmp.mod381 = trunc i32 %i.bke to i1
  call void @llvm.assume(i1 %lcmp.mod381)
  %i.brx = getelementptr inbounds nuw [64 x i8], ptr %i.brr, i64 %indvars.iv.next605.i.1 ; 7 uses
  store float 1.000000e+00, ptr %i.brx, align 4
  %.sroa.4.0..sroa_idx.i62.epil = getelementptr inbounds nuw i8, ptr %i.brx, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i62.epil, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i63.epil = getelementptr inbounds nuw i8, ptr %i.brx, i64 20
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i63.epil, align 4
  %.sroa.6.0..sroa_idx.i64.epil = getelementptr inbounds nuw i8, ptr %i.brx, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i64.epil, i8 0, i64 16, i1 false)
  %.sroa.6522.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.brx, i64 40
  store float 1.000000e+00, ptr %.sroa.6522.0..sroa_idx.i.epil, align 4
  %.sroa.7.0..sroa_idx.i65.epil = getelementptr inbounds nuw i8, ptr %i.brx, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx.i65.epil, i8 0, i64 16, i1 false)
  %.sroa.7523.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.brx, i64 60
  store float 1.000000e+00, ptr %.sroa.7523.0..sroa_idx.i.epil, align 4
  br label %.thread534.i

.thread534.i:                                     ; preds = %.lr.ph573.i.epil.preheader, %.thread534.i.loopexit.unr-lcssa, %._crit_edge570.i, %bb.ff, %._crit_edge566.i, %._crit_edge.i60
  %.sroa.110.0 = phi i32 [ 0, %._crit_edge.i60 ], [ %i.bke, %._crit_edge566.i ], [ %i.bke, %bb.ff ], [ %i.bke, %._crit_edge570.i ], [ %i.bke, %.thread534.i.loopexit.unr-lcssa ], [ %i.bke, %.lr.ph573.i.epil.preheader ]
  %.sroa.114176.0 = phi ptr [ null, %._crit_edge.i60 ], [ %i.bkg, %._crit_edge566.i ], [ %i.bkg, %bb.ff ], [ %i.bkg, %._crit_edge570.i ], [ %i.bkg, %.thread534.i.loopexit.unr-lcssa ], [ %i.bkg, %.lr.ph573.i.epil.preheader ]
  %.sroa.123.0 = phi ptr [ null, %._crit_edge.i60 ], [ %i.bkh, %._crit_edge566.i ], [ %i.bkh, %bb.ff ], [ %i.bkh, %._crit_edge570.i ], [ %i.bkh, %.thread534.i.loopexit.unr-lcssa ], [ %i.bkh, %.lr.ph573.i.epil.preheader ]
  %.sroa.149.0 = phi ptr [ null, %._crit_edge.i60 ], [ null, %._crit_edge566.i ], [ null, %bb.ff ], [ %i.brq, %._crit_edge570.i ], [ %i.brq, %.thread534.i.loopexit.unr-lcssa ], [ %i.brq, %.lr.ph573.i.epil.preheader ]
  %.sroa.150.0 = phi ptr [ null, %._crit_edge.i60 ], [ null, %._crit_edge566.i ], [ null, %bb.ff ], [ %i.brr, %._crit_edge570.i ], [ %i.brr, %.thread534.i.loopexit.unr-lcssa ], [ %i.brr, %.lr.ph573.i.epil.preheader ]
  call void @m3d_free(ptr noundef nonnull %i.aer)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.thread534.i, %bb.cz, %.critedge499.i, %.critedge498.i
  %.sroa.485.2 = phi i32 [ 0, %.critedge499.i ], [ 0, %.critedge498.i ], [ 0, %bb.cz ], [ %.sroa.485.1, %.thread534.i ]
  %.sroa.12.1 = phi i32 [ 0, %.critedge499.i ], [ 0, %.critedge498.i ], [ 0, %bb.cz ], [ %i.afb, %.thread534.i ]
  %.sroa.16.1 = phi ptr [ null, %.critedge499.i ], [ null, %.critedge498.i ], [ null, %bb.cz ], [ %.sroa.16.0, %.thread534.i ]
  %.sroa.88.0 = phi ptr [ null, %.critedge499.i ], [ null, %.critedge498.i ], [ null, %bb.cz ], [ %i.afh, %.thread534.i ]
  %.sroa.106.1 = phi ptr [ null, %.critedge499.i ], [ null, %.critedge498.i ], [ null, %bb.cz ], [ %.sroa.106.0, %.thread534.i ]
  %.sroa.110.1 = phi i32 [ 0, %.critedge499.i ], [ 0, %.critedge498.i ], [ 0, %bb.cz ], [ %.sroa.110.0, %.thread534.i ]
  %.sroa.114176.1 = phi ptr [ null, %.critedge499.i ], [ null, %.critedge498.i ], [ null, %bb.cz ], [ %.sroa.114176.0, %.thread534.i ]
  %.sroa.123.1 = phi ptr [ null, %.critedge499.i ], [ null, %.critedge498.i ], [ null, %bb.cz ], [ %.sroa.123.0, %.thread534.i ]
  %.sroa.149.1 = phi ptr [ null, %.critedge499.i ], [ null, %.critedge498.i ], [ null, %bb.cz ], [ %.sroa.149.0, %.thread534.i ]
  %.sroa.150.1 = phi ptr [ null, %.critedge499.i ], [ null, %.critedge498.i ], [ null, %bb.cz ], [ %.sroa.150.0, %.thread534.i ]
  call void @UnloadFileData(ptr noundef nonnull %i.aeq) #54
  br label %LoadM3D.exit

LoadM3D.exit:                                     ; preds = %bb.cv, %.sink.split.i
  %.sroa.485.6 = phi i32 [ 0, %bb.cv ], [ %.sroa.485.2, %.sink.split.i ] ; 2 uses
  %.sroa.12.2 = phi i32 [ 0, %bb.cv ], [ %.sroa.12.1, %.sink.split.i ]
  %.sroa.16.5 = phi ptr [ null, %bb.cv ], [ %.sroa.16.1, %.sink.split.i ] ; 2 uses
  %.sroa.88.1 = phi ptr [ null, %bb.cv ], [ %.sroa.88.0, %.sink.split.i ]
  %.sroa.106.5 = phi ptr [ null, %bb.cv ], [ %.sroa.106.1, %.sink.split.i ]
  %.sroa.110.2 = phi i32 [ 0, %bb.cv ], [ %.sroa.110.1, %.sink.split.i ]
  %.sroa.114176.2 = phi ptr [ null, %bb.cv ], [ %.sroa.114176.1, %.sink.split.i ]
  %.sroa.123.2 = phi ptr [ null, %bb.cv ], [ %.sroa.123.1, %.sink.split.i ]
  %.sroa.149.2 = phi ptr [ null, %bb.cv ], [ %.sroa.149.1, %.sink.split.i ]
  %.sroa.150.2 = phi ptr [ null, %bb.cv ], [ %.sroa.150.1, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54, !noalias !129
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sroa.485.6, ptr %.sroa.485.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %.sroa.12.2, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.16.5, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.88.1, ptr %.sroa.88.0..sroa_idx, align 8
  %.sroa.106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.106.5, ptr %.sroa.106.0..sroa_idx, align 8
  %.sroa.110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %.sroa.110.2, ptr %.sroa.110.0..sroa_idx, align 8
  %.sroa.114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %.sroa.114.0..sroa_idx, align 4
  %.sroa.114176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.114176.2, ptr %.sroa.114176.0..sroa_idx, align 8
  %.sroa.123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.123.2, ptr %.sroa.123.0..sroa_idx, align 8
  %.sroa.149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %.sroa.149.2, ptr %.sroa.149.0..sroa_idx, align 8
  %.sroa.150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.150.2, ptr %.sroa.150.0..sroa_idx, align 8
  br label %bb.fg

bb.fg:                                            ; preds = %._crit_edge, %LoadM3D.exit
  %i.bry = phi ptr [ %.pre268, %._crit_edge ], [ %.sroa.16.5, %LoadM3D.exit ]
  %i.brz = phi i32 [ %.pre, %._crit_edge ], [ %.sroa.485.6, %LoadM3D.exit ] ; 2 uses
  %.sroa.680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.680.0..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float 1.000000e+00, ptr %.sroa.579.0..sroa_idx, align 4
  %.sroa.681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 1.000000e+00, ptr %.sroa.681.0..sroa_idx, align 8
  %.sroa.782.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.782.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.783.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %.sroa.783.0..sroa_idx, align 4
  %i.bsa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bsb = icmp ne i32 %i.brz, 0
  %i.bsc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bsd = icmp ne ptr %i.bry, null
  %or.cond = select i1 %i.bsb, i1 %i.bsd, i1 false
  br i1 %or.cond, label %.preheader, label %bb.fh

.preheader:                                       ; preds = %bb.fg
  %i.bse = icmp sgt i32 %i.brz, 0
  br i1 %i.bse, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.bsf = load ptr, ptr %i.bsc, align 8
  %i.bsg = getelementptr inbounds nuw [120 x i8], ptr %i.bsf, i64 %indvars.iv
  call void @UploadMesh(ptr noundef %i.bsg, i1 noundef zeroext false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bsh = load i32, ptr %i.bsa, align 8
  %i.bsi = sext i32 %i.bsh to i64
  %i.bsj = icmp slt i64 %indvars.iv.next, %i.bsi
  br i1 %i.bsj, label %.lr.ph, label %.loopexit

bb.fh:                                            ; preds = %bb.fg
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.41, ptr noundef %1) #54
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.fh
  %i.bsk = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.bsl = load i32, ptr %i.bsk, align 4
  %i.bsm = icmp eq i32 %i.bsl, 0
  br i1 %i.bsm, label %bb.fi, label %bb.fk

bb.fi:                                            ; preds = %.loopexit
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.42, ptr noundef %1) #54
  store i32 1, ptr %i.bsk, align 4
  %i.bsn = call noalias dereferenceable_or_null(40) ptr @calloc(i64 noundef 1, i64 noundef 40) #57 ; 6 uses
  %i.bso = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.bsn, ptr %i.bso, align 8
  %i.bsp = call noalias dereferenceable_or_null(336) ptr @calloc(i64 noundef 12, i64 noundef 28) #57, !noalias !138 ; 5 uses
  %i.bsq = call i32 @rlGetShaderIdDefault() #54, !noalias !138
  %i.bsr = call ptr @rlGetShaderLocsDefault() #54, !noalias !138
  %i.bss = call i32 @rlGetTextureIdDefault() #54, !noalias !138
  store i32 %i.bss, ptr %i.bsp, align 4, !noalias !138
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bsp, i64 4
  store <4 x i32> <i32 1, i32 1, i32 1, i32 7>, ptr %.sroa.26.0..sroa_idx.i, align 4, !noalias !138
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bsp, i64 20
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bsp, i64 48
  store i32 -1, ptr %i.bst, align 4, !noalias !138
  store i32 -1, ptr %i.bsu, align 4, !noalias !138
  store i32 %i.bsq, ptr %i.bsn, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bsn, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bsn, i64 8
  store ptr %i.bsr, ptr %.sroa.577.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bsn, i64 16
  store ptr %i.bsp, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bsn, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.bsv = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bsw = load ptr, ptr %i.bsv, align 8
  %i.bsx = icmp eq ptr %i.bsw, null
  br i1 %i.bsx, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.bsy = load i32, ptr %i.bsa, align 8
  %i.bsz = sext i32 %i.bsy to i64
  %i.bta = call noalias ptr @calloc(i64 noundef %i.bsz, i64 noundef 4) #57
  store ptr %i.bta, ptr %i.bsv, align 8
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fi, %bb.fj, %.loopexit
  ret void
}

declare zeroext i1 @IsFileExtension(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define internal fastcc void @LoadGLTF(ptr dead_on_unwind noalias nofree nonnull writable align 8 initializes((0, 136)) %0, ptr noundef %1) unnamed_addr #33 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %struct.cgltf_options, align 8      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %struct.Image, align 8              ; 6 uses
  %4 = alloca %struct.Texture, align 4            ; 4 uses
  %5 = alloca %struct.Image, align 8              ; 8 uses
  %6 = alloca %struct.Image, align 8              ; 6 uses
  %7 = alloca %struct.Image, align 8              ; 6 uses
  %8 = alloca %struct.Texture, align 4            ; 4 uses
  %9 = alloca %struct.Texture, align 4            ; 4 uses
  %10 = alloca %struct.Image, align 8             ; 6 uses
  %11 = alloca %struct.Texture, align 4           ; 4 uses
  %12 = alloca %struct.Image, align 8             ; 6 uses
  %13 = alloca %struct.Texture, align 4           ; 4 uses
  %14 = alloca %struct.Image, align 8             ; 6 uses
  %15 = alloca %struct.Texture, align 4           ; 4 uses
  %i.c = alloca [16 x float], align 16            ; 15 uses
  %i.d = alloca [16 x float], align 16            ; 10 uses
  %16 = alloca %struct.Matrix, align 8            ; 10 uses
end_hunk_12
begin_hunk_13_@LoadModelAnimations:bb.a
  %3 = alloca %struct.Transform, align 8          ; 10 uses
  %i.c = alloca [16 x float], align 16            ; 10 uses
  %4 = alloca %struct.Matrix, align 8             ; 10 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %5 = alloca %struct.Vector3, align 8            ; 6 uses
  %6 = alloca %struct.Vector4, align 16           ; 5 uses
  %7 = alloca %struct.Vector3, align 8            ; 6 uses
  %8 = alloca %struct.Transform, align 4          ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = tail call zeroext i1 @IsFileExtension(ptr noundef %0, ptr noundef nonnull @.str.36) #54
  br i1 %i.g, label %bb.b, label %bb.ae

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #54
  store i32 0, ptr %i.f, align 4
  %i.h = call ptr @LoadFileData(ptr noundef %0, ptr noundef nonnull %i.f) #54 ; 18 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %LoadModelAnimationsIQM.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i128, ptr %i.h, align 1
  %i.k = icmp ne i128 %i.j, 396019459569080130499995251072323145
  %i.l = zext i1 %i.k to i32
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.333, ptr noundef %0) #54
  call void @UnloadFileData(ptr noundef nonnull %i.h) #54
  br label %LoadModelAnimationsIQM.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %.not375.i = icmp eq i32 %i.n, 2
  br i1 %.not375.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.334, ptr noundef %0, i32 noundef %i.n) #54
  call void @UnloadFileData(ptr noundef nonnull %i.h) #54
  br label %LoadModelAnimationsIQM.exit

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 76 ; 7 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = zext i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.q, 88
  %i.s = call noalias ptr @malloc(i64 noundef %i.r) #56 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.u = load i32, ptr %i.t, align 4
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.v
  %i.x = load i32, ptr %i.o, align 4
  %i.y = zext i32 %i.x to i64
  %i.z = mul nuw nsw i64 %i.y, 88
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.s, ptr nonnull align 1 %i.w, i64 %i.z, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 84 ; 4 uses
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  store i32 %i.ab, ptr %1, align 4
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, 20
  %i.ae = call noalias ptr @malloc(i64 noundef %i.ad) #56 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ah
  %i.aj = load i32, ptr %i.aa, align 4
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = mul nuw nsw i64 %i.ak, 20
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ae, ptr nonnull align 1 %i.ai, i64 %i.al, i1 false)
  %i.am = call noalias ptr @calloc(i64 noundef %i.ak, i64 noundef 48) #57 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 92 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = mul i32 %i.aq, %i.ao
  %i.as = zext i32 %i.ar to i64
  %i.at = call noalias ptr @calloc(i64 noundef %i.as, i64 noundef 2) #57 ; 12 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aw
  %i.ay = load i32, ptr %i.an, align 4
  %i.az = load i32, ptr %i.ap, align 4
  %i.ba = mul i32 %i.az, %i.ay
  %i.bb = zext i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.at, ptr nonnull align 1 %i.ax, i64 %i.bc, i1 false)
  %i.bd = load i32, ptr %i.aa, align 4
  %.not425.i = icmp eq i32 %i.bd, 0
  br i1 %.not425.i, label %._crit_edge424.i, label %.lr.ph423.i

.lr.ph423.i:                                      ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  br label %bb.h

._crit_edge424.i:                                 ; preds = %._crit_edge420.i, %bb.g
  call void @UnloadFileData(ptr noundef nonnull %i.h) #54
  call void @free(ptr noundef %i.at) #54
  call void @free(ptr noundef %i.s) #54
  call void @free(ptr noundef %i.ae) #54
  br label %LoadModelAnimationsIQM.exit

bb.h:                                             ; preds = %._crit_edge420.i, %.lr.ph423.i
  %indvars.iv456.i = phi i64 [ 0, %.lr.ph423.i ], [ %indvars.iv.next457.i, %._crit_edge420.i ] ; 3 uses
  %i.bf = load i32, ptr %i.o, align 4             ; 2 uses
  %i.bg = getelementptr inbounds nuw [48 x i8], ptr %i.am, i64 %indvars.iv456.i ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 3 uses
  store i32 %i.bf, ptr %i.bh, align 8
  %i.bi = zext i32 %i.bf to i64
  %i.bj = call noalias ptr @calloc(i64 noundef %i.bi, i64 noundef 36) #57 ; 7 uses
  %i.bk = getelementptr inbounds nuw [20 x i8], ptr %i.ae, i64 %indvars.iv456.i ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 4            ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 36
  store i32 %i.bm, ptr %i.bn, align 4
  %i.bo = zext i32 %i.bm to i64                   ; 4 uses
  %i.bp = call noalias ptr @calloc(i64 noundef %i.bo, i64 noundef 8) #57
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 40 ; 27 uses
  store ptr %i.bp, ptr %i.bq, align 8
  %i.br = load i32, ptr %i.be, align 4
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bs
  %i.bu = load i32, ptr %i.bk, align 4
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 1 dereferenceable(32) %i.bw, i64 32, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.by = load float, ptr %i.bx, align 4
  %i.bz = fpext float %i.by to double
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.338, ptr noundef %0, ptr noundef nonnull %i.bg, i32 noundef %i.bm, double noundef %i.bz) #54
  %i.ca = load i32, ptr %i.o, align 4             ; 3 uses
  %.not426.i = icmp eq i32 %i.ca, 0
  br i1 %.not426.i, label %.preheader406.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %wide.trip.count.i = zext i32 %i.ca to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.cb = icmp ult i32 %i.ca, 4
  br i1 %i.cb, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %.lr.ph.i

.preheader406.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader406.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader406.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.preheader406.i.loopexit.unr-lcssa ]
  %lcmp.mod159 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod159)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.cc = getelementptr inbounds nuw [88 x i8], ptr %i.s, i64 %indvars.iv.i.epil
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = getelementptr inbounds nuw [36 x i8], ptr %i.bj, i64 %indvars.iv.i.epil
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  store i32 %i.cd, ptr %i.cf, align 4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader406.i, label %.lr.ph.i.epil, !llvm.loop !178

.preheader406.i:                                  ; preds = %.preheader406.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.h
  %.not427.i = icmp eq i32 %i.bm, 0
  br i1 %.not427.i, label %._crit_edge420.i, label %.lr.ph409.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.cg = getelementptr inbounds nuw [88 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = getelementptr inbounds nuw [36 x i8], ptr %i.bj, i64 %indvars.iv.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  store i32 %i.ch, ptr %i.cj, align 4
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [88 x i8], ptr %i.s, i64 %indvars.iv.next.i
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = getelementptr inbounds nuw [36 x i8], ptr %i.bj, i64 %indvars.iv.next.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  store i32 %i.cl, ptr %i.cn, align 4
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.co = getelementptr inbounds nuw [88 x i8], ptr %i.s, i64 %indvars.iv.next.i.1
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = getelementptr inbounds nuw [36 x i8], ptr %i.bj, i64 %indvars.iv.next.i.1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store i32 %i.cp, ptr %i.cr, align 4
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.cs = getelementptr inbounds nuw [88 x i8], ptr %i.s, i64 %indvars.iv.next.i.2
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = getelementptr inbounds nuw [36 x i8], ptr %i.bj, i64 %indvars.iv.next.i.2
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store i32 %i.ct, ptr %i.cv, align 4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader406.i.loopexit.unr-lcssa, label %.lr.ph.i

.preheader404.lr.ph.i:                            ; preds = %.lr.ph409.i
  %i.cw = load i32, ptr %i.o, align 4
  %.not429.i = icmp eq i32 %i.cw, 0
  br i1 %.not429.i, label %.preheader.lr.ph.i, label %.preheader404.preheader.i

.preheader404.preheader.i:                        ; preds = %.preheader404.lr.ph.i
  %i.cx = load i32, ptr %i.ap, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = mul i32 %i.cz, %i.cx
  br label %.preheader404.i

.lr.ph409.i:                                      ; preds = %.preheader406.i, %.lr.ph409.i
  %indvars.iv435.i = phi i64 [ %indvars.iv.next436.i, %.lr.ph409.i ], [ 0, %.preheader406.i ] ; 2 uses
  %i.db = load i32, ptr %i.o, align 4
  %i.dc = zext i32 %i.db to i64
  %i.dd = mul nuw nsw i64 %i.dc, 40
  %i.de = call noalias ptr @malloc(i64 noundef %i.dd) #56
  %i.df = load ptr, ptr %i.bq, align 8
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv435.i
  store ptr %i.de, ptr %i.dg, align 8
  %indvars.iv.next436.i = add nuw nsw i64 %indvars.iv435.i, 1 ; 2 uses
  %exitcond439.not.i = icmp eq i64 %indvars.iv.next436.i, %i.bo
  br i1 %exitcond439.not.i, label %.preheader404.lr.ph.i, label %.lr.ph409.i

.preheader.lr.ph.i:                               ; preds = %._crit_edge413.i, %.preheader404.lr.ph.i
  %i.dh = load i32, ptr %i.bh, align 8            ; 3 uses
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.preheader.i, label %._crit_edge420.i

.preheader404.i:                                  ; preds = %._crit_edge413.i, %.preheader404.preheader.i
  %i.dj = phi i32 [ 1, %.preheader404.preheader.i ], [ %i.dk, %._crit_edge413.i ]
  %indvars.iv443.i = phi i64 [ 0, %.preheader404.preheader.i ], [ %indvars.iv.next444.i, %._crit_edge413.i ] ; 22 uses
  %.0366415.i = phi i32 [ %i.da, %.preheader404.preheader.i ], [ %.1367.lcssa.i, %._crit_edge413.i ] ; 2 uses
  %.not430.i = icmp eq i32 %i.dj, 0
  br i1 %.not430.i, label %._crit_edge413.i, label %.lr.ph412.i

._crit_edge413.i:                                 ; preds = %bb.ab, %.preheader404.i
  %i.dk = phi i32 [ 0, %.preheader404.i ], [ %i.mr, %bb.ab ]
  %.1367.lcssa.i = phi i32 [ %.0366415.i, %.preheader404.i ], [ %.11.i, %bb.ab ]
  %indvars.iv.next444.i = add nuw nsw i64 %indvars.iv443.i, 1 ; 2 uses
  %exitcond447.not.i = icmp eq i64 %indvars.iv.next444.i, %i.bo
  br i1 %exitcond447.not.i, label %.preheader.lr.ph.i, label %.preheader404.i, !llvm.loop !179

.lr.ph412.i:                                      ; preds = %.preheader404.i, %bb.ab
  %indvars.iv440.i = phi i64 [ %indvars.iv.next441.i, %bb.ab ], [ 0, %.preheader404.i ] ; 23 uses
  %.1367411.i = phi i32 [ %.11.i, %bb.ab ], [ %.0366415.i, %.preheader404.i ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [88 x i8], ptr %i.s, i64 %indvars.iv440.i ; 21 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load float, ptr %i.dm, align 4
  %i.do = load ptr, ptr %i.bq, align 8
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv443.i
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds nuw [40 x i8], ptr %i.dq, i64 %indvars.iv440.i
  store float %i.dn, ptr %i.dr, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dt = load i32, ptr %i.ds, align 4            ; 10 uses
  %i.du = and i32 %i.dt, 1
  %.not376.i = icmp eq i32 %i.du, 0
  br i1 %.not376.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph412.i
  %i.dv = sext i32 %.1367411.i to i64
  %i.dw = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.dv
  %i.dx = load i16, ptr %i.dw, align 2
  %i.dy = uitofp i16 %i.dx to float
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  %i.ea = load float, ptr %i.dz, align 4
  %i.eb = load ptr, ptr %i.bq, align 8
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv443.i
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw [40 x i8], ptr %i.ed, i64 %indvars.iv440.i ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4
  %i.eg = call float @llvm.fmuladd.f32(float %i.dy, float %i.ea, float %i.ef)
  store float %i.eg, ptr %i.ee, align 4
  %i.eh = add nsw i32 %.1367411.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph412.i
  %.2.i = phi i32 [ %i.eh, %bb.i ], [ %.1367411.i, %.lr.ph412.i ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  %i.ej = load float, ptr %i.ei, align 4
  %i.ek = load ptr, ptr %i.bq, align 8
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv443.i
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw [40 x i8], ptr %i.em, i64 %indvars.iv440.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store float %i.ej, ptr %i.eo, align 4
  %i.ep = and i32 %i.dt, 2
  %.not377.i = icmp eq i32 %i.ep, 0
  br i1 %.not377.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eq = sext i32 %.2.i to i64
  %i.er = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.eq
  %i.es = load i16, ptr %i.er, align 2
  %i.et = uitofp i16 %i.es to float
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dl, i64 52
  %i.ev = load float, ptr %i.eu, align 4
  %i.ew = load ptr, ptr %i.bq, align 8
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv443.i
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds nuw [40 x i8], ptr %i.ey, i64 %indvars.iv440.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4 ; 2 uses
  %i.fb = load float, ptr %i.fa, align 4
  %i.fc = call float @llvm.fmuladd.f32(float %i.et, float %i.ev, float %i.fb)
  store float %i.fc, ptr %i.fa, align 4
  %i.fd = add nsw i32 %.2.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.3.i = phi i32 [ %i.fd, %bb.k ], [ %.2.i, %bb.j ] ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.ff = load float, ptr %i.fe, align 4
  %i.fg = load ptr, ptr %i.bq, align 8
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv443.i
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = getelementptr inbounds nuw [40 x i8], ptr %i.fi, i64 %indvars.iv440.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store float %i.ff, ptr %i.fk, align 4
  %i.fl = and i32 %i.dt, 4
  %.not378.i = icmp eq i32 %i.fl, 0
  br i1 %.not378.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fm = sext i32 %.3.i to i64
  %i.fn = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.fm
  %i.fo = load i16, ptr %i.fn, align 2
  %i.fp = uitofp i16 %i.fo to float
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  %i.fr = load float, ptr %i.fq, align 4
  %i.fs = load ptr, ptr %i.bq, align 8
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv443.i
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds nuw [40 x i8], ptr %i.fu, i64 %indvars.iv440.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 2 uses
  %i.fx = load float, ptr %i.fw, align 4
  %i.fy = call float @llvm.fmuladd.f32(float %i.fp, float %i.fr, float %i.fx)
  store float %i.fy, ptr %i.fw, align 4
  %i.fz = add nsw i32 %.3.i, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.4.i = phi i32 [ %i.fz, %bb.m ], [ %.3.i, %bb.l ] ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  %i.gb = load float, ptr %i.ga, align 4
  %i.gc = load ptr, ptr %i.bq, align 8
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv443.i
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = getelementptr inbounds nuw [40 x i8], ptr %i.ge, i64 %indvars.iv440.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  store float %i.gb, ptr %i.gg, align 4
  %i.gh = and i32 %i.dt, 8
  %.not379.i = icmp eq i32 %i.gh, 0
  br i1 %.not379.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gi = sext i32 %.4.i to i64
  %i.gj = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.gi
  %i.gk = load i16, ptr %i.gj, align 2
  %i.gl = uitofp i16 %i.gk to float
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dl, i64 60
  %i.gn = load float, ptr %i.gm, align 4
  %i.go = load ptr, ptr %i.bq, align 8
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv443.i
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = getelementptr inbounds nuw [40 x i8], ptr %i.gq, i64 %indvars.iv440.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 12 ; 2 uses
  %i.gt = load float, ptr %i.gs, align 4
  %i.gu = call float @llvm.fmuladd.f32(float %i.gl, float %i.gn, float %i.gt)
  store float %i.gu, ptr %i.gs, align 4
  %i.gv = add nsw i32 %.4.i, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.5.i = phi i32 [ %i.gv, %bb.o ], [ %.4.i, %bb.n ] ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.gx = load float, ptr %i.gw, align 4
  %i.gy = load ptr, ptr %i.bq, align 8
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv443.i
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = getelementptr inbounds nuw [40 x i8], ptr %i.ha, i64 %indvars.iv440.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store float %i.gx, ptr %i.hc, align 4
  %i.hd = and i32 %i.dt, 16
  %.not380.i = icmp eq i32 %i.hd, 0
  br i1 %.not380.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.he = sext i32 %.5.i to i64
  %i.hf = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.he
  %i.hg = load i16, ptr %i.hf, align 2
  %i.hh = uitofp i16 %i.hg to float
  %i.hi = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  %i.hj = load float, ptr %i.hi, align 4
  %i.hk = load ptr, ptr %i.bq, align 8
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv443.i
end_hunk_13
begin_hunk_14_@UpdateModelAnimationEx:bb.a
  %i.adc = insertelement <4 x float> poison, float %i.rs, i64 0
  %i.add = shufflevector <4 x float> %i.adc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ade = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aat, <4 x float> %i.add, <4 x float> %i.adb)
  %i.adf = shufflevector <4 x float> %i.se, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.adg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abj, <4 x float> %i.adf, <4 x float> %i.ade)
  %i.adh = shufflevector <4 x float> %i.adg, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.adh, ptr %.sroa.15314.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g

bb.w:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @UnloadModelAnimations(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.preheader.preheader, label %._crit_edge15

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv17 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next18, %._crit_edge ] ; 2 uses
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %indvars.iv17 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.b

._crit_edge15:                                    ; preds = %._crit_edge, %bb.a
  tail call void @free(ptr noundef %0) #54
  ret void

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @free(ptr noundef %i.h) #54
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next18, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge15, label %.preheader

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @free(ptr noundef %i.k) #54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = load i32, ptr %i.c, align 4
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %bb.b, label %._crit_edge
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @IsModelAnimationValid(ptr nofree noundef readonly byval(%struct.Model) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.ModelAnimation) align 8 captures(none) %1) local_unnamed_addr #23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.b, %i.d
  ret i1 %.not
}

; Function Attrs: nounwind uwtable
define void @GenMeshPoly(ptr dead_on_unwind noalias nofree writable sret(%struct.Mesh) align 8 captures(none) initializes((0, 120)) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, i8 0, i64 120, i1 false)
  %i.a = icmp slt i32 %1, 3
  br i1 %i.a, label %bb.d, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = mul nuw nsw i32 %1, 3                    ; 5 uses
  %i.c = zext nneg i32 %i.b to i64                ; 12 uses
  %i.d = mul nuw nsw i64 %i.c, 12                 ; 2 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #56 ; 5 uses
  %i.f = uitofp nneg i32 %1 to float
  %i.g = fdiv float 3.600000e+02, %i.f
  %i.h = add nsw i32 %i.b, -2
  %i.i = zext nneg i32 %i.h to i64
  %i.j = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %2, i64 0
  %i.k = shufflevector <4 x float> %i.j, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.d) #56 ; 7 uses
  %n.vec = and i64 %i.c, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %._crit_edge
  %index = phi i64 [ 0, %._crit_edge ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %index
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %index
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store <6 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.m, align 4
  store <6 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.o, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !181

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %.loopexit, label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.08592 = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.w, %.lr.ph ] ; 2 uses
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  %i.r = fmul float %.08592, f0x3C8EFA35          ; 2 uses
  %i.s = tail call float @sinf(float noundef %i.r) #54
  %i.t = tail call float @cosf(float noundef %i.r) #54
  %i.u = fmul float %2, %i.s
  %i.v = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.u, i64 3
  store <4 x float> %i.v, ptr %i.q, align 4
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store float 0.000000e+00, ptr %.sroa.242.0..sroa_idx, align 4
  %.sroa.343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.w = fadd float %i.g, %.08592                 ; 2 uses
  %i.x = fmul float %i.w, f0x3C8EFA35             ; 2 uses
  %i.y = tail call float @sinf(float noundef %i.x) #54
  %i.z = tail call float @cosf(float noundef %i.x) #54
  %i.aa = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.t, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.y, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %i.z, i64 3
  %i.ad = fmul <4 x float> %i.ac, %i.k
  store <4 x float> %i.ad, ptr %.sroa.343.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ae = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  store i32 %i.b, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.af, align 4
  %i.ag = mul nuw nsw i32 %1, 9
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2                ; 2 uses
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ai) #56 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.ak, align 8
  %i.al = mul i32 %1, 6
  %i.am = sext i32 %i.al to i64
  %i.an = shl nsw i64 %i.am, 2
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.an) #56 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.ai) #56 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aq, ptr %i.ar, align 8
  %i.as = add nsw i64 %i.c, -1                    ; 2 uses
  %xtraiter = and i64 %i.c, 1
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.epil.preheader, label %.loopexit.new

.loopexit.new:                                    ; preds = %.loopexit
  %unroll_iter = and i64 %i.c, 2147483646
  br label %bb.b

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %scalar.ph ], [ %n.vec, %middle.block ] ; 2 uses
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %indvars.iv99 ; 2 uses
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.au, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store float 0.000000e+00, ptr %.sroa.3.0..sroa_idx, align 4
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next100, %i.c
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !182

bb.b:                                             ; preds = %bb.b, %.loopexit.new
  %indvars.iv105 = phi i64 [ 0, %.loopexit.new ], [ %indvars.iv.next106.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.loopexit.new ], [ %niter.next.1, %bb.b ]
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv105 ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv105, 12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx ; 2 uses
  %i.ax = load <2 x float>, ptr %i.av, align 4
  store <2 x float> %i.ax, ptr %i.aw, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store float %i.az, ptr %i.ba, align 4
  %indvars.iv.next106 = or disjoint i64 %indvars.iv105, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next106 ; 2 uses
  %.idx.1 = mul nuw nsw i64 %indvars.iv.next106, 12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.1 ; 2 uses
  %i.bd = load <2 x float>, ptr %i.bb, align 4
  store <2 x float> %i.bd, ptr %i.bc, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store float %i.bf, ptr %i.bg, align 4
  %indvars.iv.next106.1 = add nuw nsw i64 %indvars.iv105, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %vector.ph125.unr-lcssa, label %bb.b

vector.ph125.unr-lcssa:                           ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vector.ph125, label %.epil.preheader

.epil.preheader:                                  ; preds = %vector.ph125.unr-lcssa, %.loopexit
  %indvars.iv105.epil.init = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next106.1, %vector.ph125.unr-lcssa ] ; 2 uses
  %lcmp.mod133 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv105.epil.init ; 2 uses
  %.idx.epil = mul nuw nsw i64 %indvars.iv105.epil.init, 12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.epil ; 2 uses
  %i.bj = load <2 x float>, ptr %i.bh, align 4
  store <2 x float> %i.bj, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load float, ptr %i.bk, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store float %i.bl, ptr %i.bm, align 4
  br label %vector.ph125

vector.ph125:                                     ; preds = %vector.ph125.unr-lcssa, %.epil.preheader
  %n.vec126 = and i64 %i.c, 2147483644            ; 3 uses
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next129, %vector.body127 ] ; 3 uses
  %i.bn = shl nuw nsw i64 %index128, 3
  %i.bo = shl i64 %index128, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <4 x float> zeroinitializer, ptr %i.bp, align 4
  store <4 x float> zeroinitializer, ptr %i.br, align 4
  %index.next129 = add nuw i64 %index128, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next129, %n.vec126
  br i1 %i.bs, label %middle.block130, label %vector.body127, !llvm.loop !183

middle.block130:                                  ; preds = %vector.body127
  %cmp.n131 = icmp eq i64 %n.vec126, %i.c
  br i1 %cmp.n131, label %.preheader.preheader, label %.preheader90

.preheader.preheader:                             ; preds = %.preheader90, %middle.block130
  %xtraiter134 = and i64 %i.c, 1
  %i.bt = icmp eq i64 %i.as, 0
  br i1 %i.bt, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter137 = and i64 %i.c, 2147483646
  br label %.preheader

.preheader90:                                     ; preds = %middle.block130, %.preheader90
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %.preheader90 ], [ %n.vec126, %middle.block130 ] ; 2 uses
  %.idx121 = shl nuw nsw i64 %indvars.iv110, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx121
  store <2 x float> zeroinitializer, ptr %i.bu, align 4
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %i.c
  br i1 %exitcond114.not, label %.preheader.preheader, label %.preheader90, !llvm.loop !184

.unr-lcssa:                                       ; preds = %.preheader
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %bb.c, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader.preheader
  %indvars.iv115.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next116.1, %.unr-lcssa ] ; 2 uses
  %lcmp.mod136 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %indvars.iv115.epil.init ; 2 uses
  %.idx122.epil = mul nuw nsw i64 %indvars.iv115.epil.init, 12
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx122.epil ; 2 uses
  %i.bx = load <2 x float>, ptr %i.bv, align 4
  store <2 x float> %i.bx, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bz = load float, ptr %i.by, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store float %i.bz, ptr %i.ca, align 4
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.preheader.epil.preheader
  tail call void @free(ptr noundef nonnull %i.e) #54
  tail call void @free(ptr noundef nonnull %i.l) #54
  tail call void @UploadMesh(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %bb.d

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv115 = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next116.1, %.preheader ] ; 4 uses
  %niter138 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter138.next.1, %.preheader ]
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %indvars.iv115 ; 2 uses
  %.idx122 = mul nuw nsw i64 %indvars.iv115, 12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx122 ; 2 uses
  %i.cd = load <2 x float>, ptr %i.cb, align 4
  store <2 x float> %i.cd, ptr %i.cc, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cf = load float, ptr %i.ce, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store float %i.cf, ptr %i.cg, align 4
  %indvars.iv.next116 = or disjoint i64 %indvars.iv115, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %indvars.iv.next116 ; 2 uses
  %.idx122.1 = mul nuw nsw i64 %indvars.iv.next116, 12
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx122.1 ; 2 uses
  %i.cj = load <2 x float>, ptr %i.ch, align 4
  store <2 x float> %i.cj, ptr %i.ci, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cl = load float, ptr %i.ck, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store float %i.cl, ptr %i.cm, align 4
  %indvars.iv.next116.1 = add nuw nsw i64 %indvars.iv115, 2 ; 2 uses
  %niter138.next.1 = add nuw i64 %niter138, 2     ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %.unr-lcssa, label %.preheader

bb.d:                                             ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @GenMeshPlane(ptr dead_on_unwind noalias nofree writable sret(%struct.Mesh) align 8 captures(none) initializes((0, 120)) %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, i8 0, i64 120, i1 false)
  %i.a = add nsw i32 %3, 1                        ; 6 uses
  %i.b = add i32 %4, 1                            ; 3 uses
  %i.c = mul nsw i32 %i.b, %i.a                   ; 12 uses
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = mul nsw i64 %i.d, 12                     ; 2 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #56 ; 5 uses
  %.not141 = icmp slt i32 %4, 0                   ; 2 uses
  br i1 %.not141, label %._crit_edge145.split, label %.lr.ph144

.lr.ph144:                                        ; preds = %bb.a
  %i.g = uitofp nneg i32 %4 to float
  %.not135139 = icmp slt i32 %3, 0
  %i.h = sitofp i32 %3 to float                   ; 2 uses
  br i1 %.not135139, label %._crit_edge145.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph144
  %i.i = zext nneg i32 %i.a to i64                ; 4 uses
  %wide.trip.count176 = zext i32 %i.b to i64
  %min.iters.check = icmp ult i32 %i.a, 4
  %n.vec = and i64 %i.i, 2147483644               ; 3 uses
  %broadcast.splatinsert224 = insertelement <4 x float> poison, float %i.h, i64 0
  %broadcast.splat225 = shufflevector <4 x float> %broadcast.splatinsert224, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert226 = insertelement <4 x float> poison, float %1, i64 0
  %broadcast.splat227 = shufflevector <4 x float> %broadcast.splatinsert226, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br label %.lr.ph

._crit_edge145.split:                             ; preds = %._crit_edge, %.lr.ph144, %bb.a
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.e) #56 ; 7 uses
  %i.k = icmp sgt i32 %i.c, 0                     ; 2 uses
  br i1 %i.k, label %.lr.ph148.preheader, label %._crit_edge149

.lr.ph148.preheader:                              ; preds = %._crit_edge145.split
  %wide.trip.count181 = zext nneg i32 %i.c to i64 ; 3 uses
  %min.iters.check229 = icmp ult i32 %i.c, 4
  br i1 %min.iters.check229, label %.lr.ph148.preheader284, label %vector.ph230

vector.ph230:                                     ; preds = %.lr.ph148.preheader
  %n.vec231 = and i64 %wide.trip.count181, 2147483644 ; 3 uses
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph230
  %index233 = phi i64 [ 0, %vector.ph230 ], [ %index.next234, %vector.body232 ] ; 3 uses
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %index233
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %index233
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store <6 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.l, align 4
  store <6 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.n, align 4
  %index.next234 = add nuw i64 %index233, 4       ; 2 uses
  %i.o = icmp eq i64 %index.next234, %n.vec231
  br i1 %i.o, label %middle.block235, label %vector.body232, !llvm.loop !185

middle.block235:                                  ; preds = %vector.body232
  %cmp.n236 = icmp eq i64 %n.vec231, %wide.trip.count181
  br i1 %cmp.n236, label %._crit_edge149, label %.lr.ph148.preheader284

.lr.ph148.preheader284:                           ; preds = %.lr.ph148.preheader, %middle.block235
  %indvars.iv178.ph = phi i64 [ 0, %.lr.ph148.preheader ], [ %n.vec231, %middle.block235 ]
  br label %.lr.ph148

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv173 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next174, %._crit_edge ] ; 3 uses
  %i.p = trunc nuw nsw i64 %indvars.iv173 to i32
  %i.q = uitofp nneg i32 %i.p to float
  %i.r = fdiv float %i.q, %i.g
  %i.s = fadd float %i.r, -5.000000e-01
  %i.t = fmul float %2, %i.s                      ; 2 uses
  %i.u = mul nuw nsw i64 %indvars.iv173, %i.i
  %invariant.gep = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %i.u ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.t, i64 0
  %i.v = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.w = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.x = fdiv <4 x float> %i.w, %broadcast.splat225
  %i.y = fadd <4 x float> %i.x, splat (float -5.000000e-01)
  %i.z = fmul <4 x float> %broadcast.splat227, %i.y
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %index
  %i.ab = shufflevector <4 x float> %i.z, <4 x float> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.ab, <8 x float> %i.v, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !186

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.ad = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.t, i64 1
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %exitcond177.not = icmp eq i64 %indvars.iv.next174, %wide.trip.count176
  br i1 %exitcond177.not, label %._crit_edge145.split, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  %i.af = uitofp nneg i32 %i.ae to float
  %i.ag = fdiv float %i.af, %i.h
  %i.ah = fadd float %i.ag, -5.000000e-01
  %i.ai = fmul float %1, %i.ah
  %gep = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  store float %i.ai, ptr %gep, align 4
  %.sroa.275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep, i64 4
  store <2 x float> %i.ad, ptr %.sroa.275.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !187

._crit_edge149:                                   ; preds = %.lr.ph148, %middle.block235, %._crit_edge145.split
  %i.aj = shl nsw i64 %i.d, 3
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.aj) #56 ; 5 uses
  br i1 %.not141, label %._crit_edge156.split, label %.preheader138.lr.ph

.preheader138.lr.ph:                              ; preds = %._crit_edge149
  %.not134150 = icmp slt i32 %3, 0
  %i.al = sitofp i32 %3 to float                  ; 2 uses
  %i.am = uitofp nneg i32 %4 to float
  br i1 %.not134150, label %._crit_edge156.split, label %.preheader138.preheader

.preheader138.preheader:                          ; preds = %.preheader138.lr.ph
  %i.an = zext nneg i32 %i.a to i64               ; 4 uses
  %wide.trip.count191 = zext i32 %i.b to i64
  %min.iters.check239 = icmp ult i32 %i.a, 4
  %n.vec241 = and i64 %i.an, 2147483644           ; 3 uses
  %broadcast.splatinsert244 = insertelement <4 x float> poison, float %i.al, i64 0
  %broadcast.splat245 = shufflevector <4 x float> %broadcast.splatinsert244, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n253 = icmp eq i64 %n.vec241, %i.an
  br label %.preheader138

.lr.ph148:                                        ; preds = %.lr.ph148.preheader284, %.lr.ph148
  %indvars.iv178 = phi i64 [ %indvars.iv.next179, %.lr.ph148 ], [ %indvars.iv178.ph, %.lr.ph148.preheader284 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %indvars.iv178 ; 2 uses
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.ao, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store float 0.000000e+00, ptr %.sroa.3.0..sroa_idx, align 4
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next179, %wide.trip.count181
  br i1 %exitcond182.not, label %._crit_edge149, label %.lr.ph148, !llvm.loop !188

.preheader138:                                    ; preds = %.preheader138.preheader, %._crit_edge153
  %indvars.iv188 = phi i64 [ 0, %.preheader138.preheader ], [ %indvars.iv.next189, %._crit_edge153 ] ; 3 uses
  %i.ap = mul nuw nsw i64 %indvars.iv188, %i.an
  %i.aq = trunc nuw nsw i64 %indvars.iv188 to i32
  %i.ar = uitofp nneg i32 %i.aq to float
  %i.as = fdiv float %i.ar, %i.am                 ; 2 uses
  %invariant.gep222 = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ap ; 2 uses
  br i1 %min.iters.check239, label %scalar.ph238.preheader, label %vector.ph240

vector.ph240:                                     ; preds = %.preheader138
  %broadcast.splatinsert242 = insertelement <4 x float> poison, float %i.as, i64 0
  br label %vector.body246

vector.body246:                                   ; preds = %vector.body246, %vector.ph240
  %index247 = phi i64 [ 0, %vector.ph240 ], [ %index.next250, %vector.body246 ] ; 2 uses
  %vec.ind248 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph240 ], [ %vec.ind.next251, %vector.body246 ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep222, i64 %index247
  %i.au = uitofp nneg <4 x i32> %vec.ind248 to <4 x float>
  %i.av = fdiv <4 x float> %i.au, %broadcast.splat245
  %interleaved.vec249 = shufflevector <4 x float> %i.av, <4 x float> %broadcast.splatinsert242, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x float> %interleaved.vec249, ptr %i.at, align 4
  %index.next250 = add nuw i64 %index247, 4       ; 2 uses
  %vec.ind.next251 = add <4 x i32> %vec.ind248, splat (i32 4)
  %i.aw = icmp eq i64 %index.next250, %n.vec241
  br i1 %i.aw, label %middle.block252, label %vector.body246, !llvm.loop !189

middle.block252:                                  ; preds = %vector.body246
  br i1 %cmp.n253, label %._crit_edge153, label %scalar.ph238.preheader

scalar.ph238.preheader:                           ; preds = %.preheader138, %middle.block252
  %indvars.iv183.ph = phi i64 [ 0, %.preheader138 ], [ %n.vec241, %middle.block252 ]
  br label %scalar.ph238

._crit_edge156.split:                             ; preds = %._crit_edge153, %.preheader138.lr.ph, %._crit_edge149
  %i.ax = mul nsw i32 %4, %3                      ; 4 uses
  %i.ay = mul nsw i32 %i.ax, 6                    ; 3 uses
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = shl nsw i64 %i.az, 2
  %i.bb = tail call noalias ptr @malloc(i64 noundef %i.ba) #56 ; 4 uses
  %i.bc = icmp sgt i32 %i.ax, 0                   ; 2 uses
  br i1 %i.bc, label %.lr.ph160, label %._crit_edge161

._crit_edge153:                                   ; preds = %scalar.ph238, %middle.block252
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next189, %wide.trip.count191
  br i1 %exitcond192.not, label %._crit_edge156.split, label %.preheader138

scalar.ph238:                                     ; preds = %scalar.ph238.preheader, %scalar.ph238
  %indvars.iv183 = phi i64 [ %indvars.iv.next184, %scalar.ph238 ], [ %indvars.iv183.ph, %scalar.ph238.preheader ] ; 3 uses
  %gep223 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep222, i64 %indvars.iv183 ; 2 uses
  %i.bd = trunc nuw nsw i64 %indvars.iv183 to i32
  %i.be = uitofp nneg i32 %i.bd to float
  %i.bf = fdiv float %i.be, %i.al
  store float %i.bf, ptr %gep223, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep223, i64 4
  store float %i.as, ptr %.sroa.2.0..sroa_idx, align 4
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %exitcond187.not = icmp eq i64 %indvars.iv.next184, %i.an
  br i1 %exitcond187.not, label %._crit_edge153, label %scalar.ph238, !llvm.loop !190

._crit_edge161:                                   ; preds = %.lr.ph160, %._crit_edge156.split
  store i32 %i.c, ptr %0, align 8
  %i.bg = shl nsw i32 %i.ax, 1
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bg, ptr %i.bh, align 4
  %i.bi = mul nsw i32 %i.c, 3
  %i.bj = sext i32 %i.bi to i64
  %i.bk = shl nsw i64 %i.bj, 2                    ; 2 uses
  %i.bl = tail call noalias ptr @malloc(i64 noundef %i.bk) #56 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bl, ptr %i.bm, align 8
  %i.bn = shl nsw i32 %i.c, 1
  %i.bo = sext i32 %i.bn to i64
  %i.bp = shl nsw i64 %i.bo, 2
  %i.bq = tail call noalias ptr @malloc(i64 noundef %i.bp) #56 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bq, ptr %i.br, align 8
  %i.bs = tail call noalias ptr @malloc(i64 noundef %i.bk) #56 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bs, ptr %i.bt, align 8
  %i.bu = shl nsw i64 %i.az, 1
  %i.bv = tail call noalias ptr @malloc(i64 noundef %i.bu) #56 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bv, ptr %i.bw, align 8
  br i1 %i.k, label %.lr.ph164.preheader, label %.preheader

.lr.ph164.preheader:                              ; preds = %._crit_edge161
  %wide.trip.count200 = zext nneg i32 %i.c to i64 ; 7 uses
  %i.bx = add nsw i64 %wide.trip.count200, -1     ; 2 uses
  %xtraiter = and i64 %wide.trip.count200, 1
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph164.epil.preheader, label %.lr.ph164.preheader.new

.lr.ph164.preheader.new:                          ; preds = %.lr.ph164.preheader
  %unroll_iter = and i64 %wide.trip.count200, 2147483646
  br label %.lr.ph164

.lr.ph160:                                        ; preds = %._crit_edge156.split, %.lr.ph160
  %indvars.iv193 = phi i64 [ %indvars.iv.next194, %.lr.ph160 ], [ 0, %._crit_edge156.split ] ; 2 uses
  %.0122158 = phi i32 [ %i.ck, %.lr.ph160 ], [ 0, %._crit_edge156.split ] ; 3 uses
  %i.bz = sdiv i32 %.0122158, %3
  %i.ca = add nsw i32 %i.bz, %.0122158            ; 3 uses
  %i.cb = add nsw i32 %i.ca, %i.a                 ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv193 ; 6 uses
  store i32 %i.cb, ptr %i.cc, align 4
  %i.cd = add nsw i32 %i.ca, 1                    ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cc, i64 4
  store i32 %i.cd, ptr %i.ce, align 4
  %i.cf = getelementptr i8, ptr %i.cc, i64 8
  store i32 %i.ca, ptr %i.cf, align 4
  %i.cg = getelementptr i8, ptr %i.cc, i64 12
  store i32 %i.cb, ptr %i.cg, align 4
  %i.ch = add nsw i32 %i.cb, 1
  %i.ci = getelementptr i8, ptr %i.cc, i64 16
  store i32 %i.ch, ptr %i.ci, align 4
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 6
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  store i32 %i.cd, ptr %i.cj, align 4
  %i.ck = add nuw nsw i32 %.0122158, 1            ; 2 uses
  %exitcond196.not = icmp eq i32 %i.ck, %i.ax
  br i1 %exitcond196.not, label %._crit_edge161, label %.lr.ph160

.lr.ph166.preheader.unr-lcssa:                    ; preds = %.lr.ph164
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph166.preheader, label %.lr.ph164.epil.preheader

.lr.ph164.epil.preheader:                         ; preds = %.lr.ph166.preheader.unr-lcssa, %.lr.ph164.preheader
  %indvars.iv197.epil.init = phi i64 [ 0, %.lr.ph164.preheader ], [ %indvars.iv.next198.1, %.lr.ph166.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod285 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod285)
  %i.cl = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %indvars.iv197.epil.init ; 2 uses
  %.idx.epil = mul nuw nsw i64 %indvars.iv197.epil.init, 12
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx.epil ; 2 uses
  %i.cn = load <2 x float>, ptr %i.cl, align 4
  store <2 x float> %i.cn, ptr %i.cm, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cp = load float, ptr %i.co, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store float %i.cp, ptr %i.cq, align 4
  br label %.lr.ph166.preheader

.lr.ph166.preheader:                              ; preds = %.lr.ph166.preheader.unr-lcssa, %.lr.ph164.epil.preheader
  %wide.trip.count205 = zext nneg i32 %i.c to i64
  %min.iters.check256 = icmp ult i32 %i.c, 4
  br i1 %min.iters.check256, label %.lr.ph166.preheader283, label %vector.ph257

vector.ph257:                                     ; preds = %.lr.ph166.preheader
  %n.vec258 = and i64 %wide.trip.count200, 2147483644 ; 3 uses
  br label %vector.body259

vector.body259:                                   ; preds = %vector.body259, %vector.ph257
  %index260 = phi i64 [ 0, %vector.ph257 ], [ %index.next267, %vector.body259 ] ; 4 uses
  %i.cr = or disjoint i64 %index260, 2            ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index260
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.cr
  %wide.vec = load <4 x float>, ptr %i.cs, align 4
  %wide.vec262 = load <4 x float>, ptr %i.ct, align 4
  %i.cu = shl nuw nsw i64 %index260, 3
  %i.cv = shl nuw nsw i64 %i.cr, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cv
  store <4 x float> %wide.vec, ptr %i.cw, align 4
  store <4 x float> %wide.vec262, ptr %i.cx, align 4
  %index.next267 = add nuw i64 %index260, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next267, %n.vec258
  br i1 %i.cy, label %middle.block268, label %vector.body259, !llvm.loop !191

middle.block268:                                  ; preds = %vector.body259
  %cmp.n269 = icmp eq i64 %n.vec258, %wide.trip.count200
  br i1 %cmp.n269, label %.lr.ph168.preheader, label %.lr.ph166.preheader283

.lr.ph166.preheader283:                           ; preds = %.lr.ph166.preheader, %middle.block268
  %indvars.iv202.ph = phi i64 [ 0, %.lr.ph166.preheader ], [ %n.vec258, %middle.block268 ]
  br label %.lr.ph166

.lr.ph164:                                        ; preds = %.lr.ph164, %.lr.ph164.preheader.new
  %indvars.iv197 = phi i64 [ 0, %.lr.ph164.preheader.new ], [ %indvars.iv.next198.1, %.lr.ph164 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph164.preheader.new ], [ %niter.next.1, %.lr.ph164 ]
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %indvars.iv197 ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv197, 12
  %i.da = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx ; 2 uses
  %i.db = load <2 x float>, ptr %i.cz, align 4
  store <2 x float> %i.db, ptr %i.da, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dd = load float, ptr %i.dc, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store float %i.dd, ptr %i.de, align 4
  %indvars.iv.next198 = or disjoint i64 %indvars.iv197, 1 ; 2 uses
  %i.df = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %indvars.iv.next198 ; 2 uses
  %.idx.1 = mul nuw nsw i64 %indvars.iv.next198, 12
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx.1 ; 2 uses
  %i.dh = load <2 x float>, ptr %i.df, align 4
  store <2 x float> %i.dh, ptr %i.dg, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dj = load float, ptr %i.di, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store float %i.dj, ptr %i.dk, align 4
  %indvars.iv.next198.1 = add nuw nsw i64 %indvars.iv197, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph166.preheader.unr-lcssa, label %.lr.ph164

.lr.ph168.preheader:                              ; preds = %.lr.ph166, %middle.block268
  %xtraiter286 = and i64 %wide.trip.count200, 1
  %i.dl = icmp eq i64 %i.bx, 0
  br i1 %i.dl, label %.lr.ph168.epil.preheader, label %.lr.ph168.preheader.new

.lr.ph168.preheader.new:                          ; preds = %.lr.ph168.preheader
  %unroll_iter289 = and i64 %wide.trip.count200, 2147483646
  br label %.lr.ph168

.lr.ph166:                                        ; preds = %.lr.ph166.preheader283, %.lr.ph166
  %indvars.iv202 = phi i64 [ %indvars.iv.next203, %.lr.ph166 ], [ %indvars.iv202.ph, %.lr.ph166.preheader283 ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv202
  %.idx220 = shl nuw nsw i64 %indvars.iv202, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx220
  %i.do = load <2 x float>, ptr %i.dm, align 4
  store <2 x float> %i.do, ptr %i.dn, align 4
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %exitcond206.not = icmp eq i64 %indvars.iv.next203, %wide.trip.count205
  br i1 %exitcond206.not, label %.lr.ph168.preheader, label %.lr.ph166, !llvm.loop !192

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph168
  %lcmp.mod287.not = icmp eq i64 %xtraiter286, 0
  br i1 %lcmp.mod287.not, label %.preheader, label %.lr.ph168.epil.preheader

.lr.ph168.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph168.preheader
  %indvars.iv207.epil.init = phi i64 [ 0, %.lr.ph168.preheader ], [ %indvars.iv.next208.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod288 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod288)
  %i.dp = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %indvars.iv207.epil.init ; 2 uses
  %.idx221.epil = mul nuw nsw i64 %indvars.iv207.epil.init, 12
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx221.epil ; 2 uses
  %i.dr = load <2 x float>, ptr %i.dp, align 4
  store <2 x float> %i.dr, ptr %i.dq, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dt = load float, ptr %i.ds, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store float %i.dt, ptr %i.du, align 4
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph168.epil.preheader, %.preheader.loopexit.unr-lcssa, %._crit_edge161
  br i1 %i.bc, label %.lr.ph170.preheader, label %._crit_edge171

.lr.ph170.preheader:                              ; preds = %.preheader
  %wide.trip.count215 = zext nneg i32 %i.ay to i64 ; 3 uses
  %min.iters.check272 = icmp ult i32 %i.ay, 8
  br i1 %min.iters.check272, label %.lr.ph170.preheader282, label %vector.ph273

vector.ph273:                                     ; preds = %.lr.ph170.preheader
  %n.vec274 = and i64 %wide.trip.count215, 2147483640 ; 3 uses
  br label %vector.body275

vector.body275:                                   ; preds = %vector.body275, %vector.ph273
  %index276 = phi i64 [ 0, %vector.ph273 ], [ %index.next278, %vector.body275 ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index276 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %wide.load = load <4 x i32>, ptr %i.dv, align 4
  %wide.load277 = load <4 x i32>, ptr %i.dw, align 4
  %i.dx = trunc <4 x i32> %wide.load to <4 x i16>
  %i.dy = trunc <4 x i32> %wide.load277 to <4 x i16>
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %index276 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store <4 x i16> %i.dx, ptr %i.dz, align 2
  store <4 x i16> %i.dy, ptr %i.ea, align 2
  %index.next278 = add nuw i64 %index276, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next278, %n.vec274
  br i1 %i.eb, label %middle.block279, label %vector.body275, !llvm.loop !193

middle.block279:                                  ; preds = %vector.body275
  %cmp.n280 = icmp eq i64 %n.vec274, %wide.trip.count215
  br i1 %cmp.n280, label %._crit_edge171, label %.lr.ph170.preheader282

.lr.ph170.preheader282:                           ; preds = %.lr.ph170.preheader, %middle.block279
  %indvars.iv212.ph = phi i64 [ 0, %.lr.ph170.preheader ], [ %n.vec274, %middle.block279 ]
  br label %.lr.ph170

.lr.ph168:                                        ; preds = %.lr.ph168, %.lr.ph168.preheader.new
  %indvars.iv207 = phi i64 [ 0, %.lr.ph168.preheader.new ], [ %indvars.iv.next208.1, %.lr.ph168 ] ; 4 uses
  %niter290 = phi i64 [ 0, %.lr.ph168.preheader.new ], [ %niter290.next.1, %.lr.ph168 ]
  %i.ec = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %indvars.iv207 ; 2 uses
  %.idx221 = mul nuw nsw i64 %indvars.iv207, 12
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx221 ; 2 uses
  %i.ee = load <2 x float>, ptr %i.ec, align 4
  store <2 x float> %i.ee, ptr %i.ed, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eg = load float, ptr %i.ef, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store float %i.eg, ptr %i.eh, align 4
  %indvars.iv.next208 = or disjoint i64 %indvars.iv207, 1 ; 2 uses
  %i.ei = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %indvars.iv.next208 ; 2 uses
  %.idx221.1 = mul nuw nsw i64 %indvars.iv.next208, 12
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx221.1 ; 2 uses
  %i.ek = load <2 x float>, ptr %i.ei, align 4
  store <2 x float> %i.ek, ptr %i.ej, align 4
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.em = load float, ptr %i.el, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store float %i.em, ptr %i.en, align 4
  %indvars.iv.next208.1 = add nuw nsw i64 %indvars.iv207, 2 ; 2 uses
  %niter290.next.1 = add nuw i64 %niter290, 2     ; 2 uses
  %niter290.ncmp.1 = icmp eq i64 %niter290.next.1, %unroll_iter289
  br i1 %niter290.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph168

._crit_edge171:                                   ; preds = %.lr.ph170, %middle.block279, %.preheader
  tail call void @free(ptr noundef %i.f) #54
  tail call void @free(ptr noundef %i.j) #54
  tail call void @free(ptr noundef %i.ak) #54
  tail call void @free(ptr noundef %i.bb) #54
  tail call void @UploadMesh(ptr noundef nonnull %0, i1 noundef zeroext false)
  ret void

.lr.ph170:                                        ; preds = %.lr.ph170.preheader282, %.lr.ph170
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %.lr.ph170 ], [ %indvars.iv212.ph, %.lr.ph170.preheader282 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv212
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = trunc i32 %i.ep to i16
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %indvars.iv212
  store i16 %i.eq, ptr %i.er, align 2
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next213, %wide.trip.count215
  br i1 %exitcond216.not, label %._crit_edge171, label %.lr.ph170, !llvm.loop !194
}

; Function Attrs: nounwind uwtable
define void @GenMeshCube(ptr dead_on_unwind noalias nofree writable sret(%struct.Mesh) align 8 captures(none) initializes((0, 120)) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, i8 0, i64 120, i1 false)
  %i.a = fmul float %1, -5.000000e-01             ; 12 uses
  %i.b = fmul float %2, -5.000000e-01             ; 12 uses
  %i.c = fmul float %3, 5.000000e-01              ; 12 uses
  %i.d = fmul float %1, 5.000000e-01              ; 12 uses
  %i.e = fmul float %2, 5.000000e-01              ; 12 uses
  %i.f = fmul float %3, -5.000000e-01             ; 12 uses
  %i.g = tail call noalias dereferenceable_or_null(288) ptr @malloc(i64 noundef 288) #56 ; 73 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store float %i.a, ptr %i.g, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store float %i.b, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store float %i.c, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store float %i.d, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store float %i.b, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store float %i.c, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store float %i.d, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  store float %i.e, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store float %i.c, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  store float %i.a, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store float %i.e, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  store float %i.c, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store float %i.a, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  store float %i.b, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store float %i.f, ptr %.sroa.17.0..sroa_idx, align 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  store float %i.a, ptr %.sroa.18.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store float %i.e, ptr %.sroa.19.0..sroa_idx, align 4
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  store float %i.f, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store float %i.d, ptr %.sroa.21.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  store float %i.e, ptr %.sroa.22.0..sroa_idx, align 4
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store float %i.f, ptr %.sroa.23.0..sroa_idx, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  store float %i.d, ptr %.sroa.24.0..sroa_idx, align 4
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store float %i.b, ptr %.sroa.25.0..sroa_idx, align 4
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 92
  store float %i.f, ptr %.sroa.26.0..sroa_idx, align 4
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store float %i.a, ptr %.sroa.27.0..sroa_idx, align 4
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 100
  store float %i.e, ptr %.sroa.28.0..sroa_idx, align 4
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store float %i.f, ptr %.sroa.29.0..sroa_idx, align 4
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  store float %i.a, ptr %.sroa.30.0..sroa_idx, align 4
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store float %i.e, ptr %.sroa.31.0..sroa_idx, align 4
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  store float %i.c, ptr %.sroa.32.0..sroa_idx, align 4
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  store float %i.d, ptr %.sroa.33.0..sroa_idx, align 4
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 124
  store float %i.e, ptr %.sroa.34.0..sroa_idx, align 4
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store float %i.c, ptr %.sroa.35.0..sroa_idx, align 4
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 132
  store float %i.d, ptr %.sroa.36.0..sroa_idx, align 4
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  store float %i.e, ptr %.sroa.37.0..sroa_idx, align 4
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 140
  store float %i.f, ptr %.sroa.38.0..sroa_idx, align 4
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  store float %i.a, ptr %.sroa.39.0..sroa_idx, align 4
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 148
  store float %i.b, ptr %.sroa.40.0..sroa_idx, align 4
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  store float %i.f, ptr %.sroa.41.0..sroa_idx, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 156
  store float %i.d, ptr %.sroa.42.0..sroa_idx, align 4
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  store float %i.b, ptr %.sroa.43.0..sroa_idx, align 4
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 164
  store float %i.f, ptr %.sroa.44.0..sroa_idx, align 4
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  store float %i.d, ptr %.sroa.45.0..sroa_idx, align 4
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 172
  store float %i.b, ptr %.sroa.46.0..sroa_idx, align 4
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  store float %i.c, ptr %.sroa.47.0..sroa_idx, align 4
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 180
  store float %i.a, ptr %.sroa.48.0..sroa_idx, align 4
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  store float %i.b, ptr %.sroa.49.0..sroa_idx, align 4
  %.sroa.50.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 188
  store float %i.c, ptr %.sroa.50.0..sroa_idx, align 4
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  store float %i.d, ptr %.sroa.51.0..sroa_idx, align 4
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 196
  store float %i.b, ptr %.sroa.52.0..sroa_idx, align 4
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  store float %i.f, ptr %.sroa.53.0..sroa_idx, align 4
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 204
  store float %i.d, ptr %.sroa.54.0..sroa_idx, align 4
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  store float %i.e, ptr %.sroa.55.0..sroa_idx, align 4
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 212
  store float %i.f, ptr %.sroa.56.0..sroa_idx, align 4
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  store float %i.d, ptr %.sroa.57.0..sroa_idx, align 4
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 220
  store float %i.e, ptr %.sroa.58.0..sroa_idx, align 4
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  store float %i.c, ptr %.sroa.59.0..sroa_idx, align 4
  %.sroa.60.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 228
  store float %i.d, ptr %.sroa.60.0..sroa_idx, align 4
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  store float %i.b, ptr %.sroa.61.0..sroa_idx, align 4
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 236
  store float %i.c, ptr %.sroa.62.0..sroa_idx, align 4
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  store float %i.a, ptr %.sroa.63.0..sroa_idx, align 4
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 244
  store float %i.b, ptr %.sroa.64.0..sroa_idx, align 4
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  store float %i.f, ptr %.sroa.65.0..sroa_idx, align 4
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 252
  store float %i.a, ptr %.sroa.66.0..sroa_idx, align 4
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  store float %i.b, ptr %.sroa.67.0..sroa_idx, align 4
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 260
  store float %i.c, ptr %.sroa.68.0..sroa_idx, align 4
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  store float %i.a, ptr %.sroa.69.0..sroa_idx, align 4
  %.sroa.70.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 268
  store float %i.e, ptr %.sroa.70.0..sroa_idx, align 4
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  store float %i.c, ptr %.sroa.71.0..sroa_idx, align 4
  %.sroa.72.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 276
  store float %i.a, ptr %.sroa.72.0..sroa_idx, align 4
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  store float %i.e, ptr %.sroa.73.0..sroa_idx, align 4
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 284
  store float %i.f, ptr %.sroa.74.0..sroa_idx, align 4
  %i.i = tail call noalias dereferenceable_or_null(192) ptr @malloc(i64 noundef 192) #56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.i, ptr noundef nonnull align 16 dereferenceable(192) @__const.GenMeshCube.texcoords, i64 192, i1 false)
  %i.k = tail call noalias dereferenceable_or_null(288) ptr @malloc(i64 noundef 288) #56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.k, ptr %i.l, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(288) %i.k, ptr noundef nonnull align 16 dereferenceable(288) @__const.GenMeshCube.normals, i64 288, i1 false)
  %i.m = tail call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #56 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.m, ptr %i.n, align 8
  store <8 x i16> <i16 0, i16 1, i16 2, i16 0, i16 2, i16 3, i16 4, i16 5>, ptr %i.m, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <8 x i16> <i16 6, i16 4, i16 6, i16 7, i16 8, i16 9, i16 10, i16 8>, ptr %i.o, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store <8 x i16> <i16 10, i16 11, i16 12, i16 13, i16 14, i16 12, i16 14, i16 15>, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store <8 x i16> <i16 16, i16 17, i16 18, i16 16, i16 18, i16 19, i16 20, i16 21>, ptr %i.q, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store <4 x i16> <i16 22, i16 20, i16 22, i16 23>, ptr %i.r, align 2
  store i32 24, ptr %0, align 8
end_hunk_14
begin_hunk_15_@GenMeshCubicmap:bb.a
  %i.ix = load i8, ptr %i.iw, align 1
  %i.iy = icmp eq i8 %i.ix, 0
  br i1 %i.iy, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.iz = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.ja = load i8, ptr %i.iz, align 1
  %i.jb = icmp eq i8 %i.ja, 0
  br i1 %i.jb, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.jc = getelementptr inbounds nuw i8, ptr %i.bf, i64 3
  %i.jd = load i8, ptr %i.jc, align 1
  %i.je = icmp eq i8 %i.jd, -1
  br i1 %i.je, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.jf = sext i32 %.110361063 to i64
  %i.jg = getelementptr [12 x i8], ptr %i.j, i64 %i.jf ; 36 uses
  store float %i.az, ptr %i.jg, align 4
  %.sroa.11406.0..sroa_idx417 = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.11406.0..sroa_idx417, align 4
  %.sroa.12.0..sroa_idx431 = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store float %i.v, ptr %.sroa.12.0..sroa_idx431, align 4
  %i.jh = getelementptr i8, ptr %i.jg, i64 12
  store float %i.bb, ptr %i.jh, align 4
  %.sroa.10355.0..sroa_idx364 = getelementptr i8, ptr %i.jg, i64 16
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.10355.0..sroa_idx364, align 4
  %.sroa.11368.0..sroa_idx377 = getelementptr i8, ptr %i.jg, i64 20
  store float %i.x, ptr %.sroa.11368.0..sroa_idx377, align 4
  %i.ji = getelementptr i8, ptr %i.jg, i64 24
  store float %i.az, ptr %i.ji, align 4
  %.sroa.7.0..sroa_idx389 = getelementptr i8, ptr %i.jg, i64 28
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.7.0..sroa_idx389, align 4
  %.sroa.8391.0..sroa_idx396 = getelementptr i8, ptr %i.jg, i64 32
  store float %i.x, ptr %.sroa.8391.0..sroa_idx396, align 4
  %i.jj = getelementptr i8, ptr %i.jg, i64 36
  store float %i.az, ptr %i.jj, align 4
  %.sroa.11406.0..sroa_idx419 = getelementptr i8, ptr %i.jg, i64 40
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.11406.0..sroa_idx419, align 4
  %.sroa.12.0..sroa_idx433 = getelementptr i8, ptr %i.jg, i64 44
  store float %i.v, ptr %.sroa.12.0..sroa_idx433, align 4
  %i.jk = getelementptr i8, ptr %i.jg, i64 48
  store float %i.bb, ptr %i.jk, align 4
  %.sroa.8330.0..sroa_idx337 = getelementptr i8, ptr %i.jg, i64 52
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.8330.0..sroa_idx337, align 4
  %.sroa.9339.0..sroa_idx346 = getelementptr i8, ptr %i.jg, i64 56
  store float %i.v, ptr %.sroa.9339.0..sroa_idx346, align 4
  %i.jl = getelementptr i8, ptr %i.jg, i64 60
  store float %i.bb, ptr %i.jl, align 4
  %.sroa.10355.0..sroa_idx366 = getelementptr i8, ptr %i.jg, i64 64
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.10355.0..sroa_idx366, align 4
  %.sroa.11368.0..sroa_idx379 = getelementptr i8, ptr %i.jg, i64 68
  store float %i.x, ptr %.sroa.11368.0..sroa_idx379, align 4
  %i.jm = sext i32 %.110451061 to i64
  %i.jn = getelementptr [12 x i8], ptr %i.m, i64 %i.jm ; 12 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jn, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n4, i64 12, i1 false)
  %i.jo = getelementptr i8, ptr %i.jn, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jo, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n4, i64 12, i1 false)
  %i.jp = getelementptr i8, ptr %i.jn, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jp, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n4, i64 12, i1 false)
  %i.jq = getelementptr i8, ptr %i.jn, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jq, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n4, i64 12, i1 false)
  %i.jr = getelementptr i8, ptr %i.jn, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jr, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n4, i64 12, i1 false)
  %i.js = getelementptr i8, ptr %i.jn, i64 60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.js, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n4, i64 12, i1 false)
  %i.jt = sext i32 %.110391062 to i64
  %i.ju = getelementptr [8 x i8], ptr %i.l, i64 %i.jt ; 6 uses
  store <4 x float> <float 0.000000e+00, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00>, ptr %i.ju, align 4
  %i.jv = getelementptr i8, ptr %i.ju, i64 16
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 5.000000e-01>, ptr %i.jv, align 4
  %i.jw = getelementptr i8, ptr %i.ju, i64 32
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00>, ptr %i.jw, align 4
  %i.jx = getelementptr i8, ptr %i.jg, i64 72
  store float %i.az, ptr %i.jx, align 4
  %.sroa.9281.0..sroa_idx288 = getelementptr i8, ptr %i.jg, i64 76
  store float 0.000000e+00, ptr %.sroa.9281.0..sroa_idx288, align 4
  %.sroa.10292.0..sroa_idx299 = getelementptr i8, ptr %i.jg, i64 80
  store float %i.v, ptr %.sroa.10292.0..sroa_idx299, align 4
  %i.jy = getelementptr i8, ptr %i.jg, i64 84
  store float %i.az, ptr %i.jy, align 4
  %.sroa.9.0..sroa_idx262 = getelementptr i8, ptr %i.jg, i64 88
  store float 0.000000e+00, ptr %.sroa.9.0..sroa_idx262, align 4
  %.sroa.10264.0..sroa_idx273 = getelementptr i8, ptr %i.jg, i64 92
  store float %i.x, ptr %.sroa.10264.0..sroa_idx273, align 4
  %i.jz = getelementptr i8, ptr %i.jg, i64 96
  store float %i.bb, ptr %i.jz, align 4
  %.sroa.10.0..sroa_idx232 = getelementptr i8, ptr %i.jg, i64 100
  store float 0.000000e+00, ptr %.sroa.10.0..sroa_idx232, align 4
  %.sroa.11.0..sroa_idx244 = getelementptr i8, ptr %i.jg, i64 104
  store float %i.x, ptr %.sroa.11.0..sroa_idx244, align 4
  %i.ka = getelementptr i8, ptr %i.jg, i64 108
  store float %i.az, ptr %i.ka, align 4
  %.sroa.9281.0..sroa_idx290 = getelementptr i8, ptr %i.jg, i64 112
  store float 0.000000e+00, ptr %.sroa.9281.0..sroa_idx290, align 4
  %.sroa.10292.0..sroa_idx301 = getelementptr i8, ptr %i.jg, i64 116
  store float %i.v, ptr %.sroa.10292.0..sroa_idx301, align 4
  %i.kb = getelementptr i8, ptr %i.jg, i64 120
  store float %i.bb, ptr %i.kb, align 4
  %.sroa.10.0..sroa_idx234 = getelementptr i8, ptr %i.jg, i64 124
  store float 0.000000e+00, ptr %.sroa.10.0..sroa_idx234, align 4
  %.sroa.11.0..sroa_idx246 = getelementptr i8, ptr %i.jg, i64 128
  store float %i.x, ptr %.sroa.11.0..sroa_idx246, align 4
  %i.kc = getelementptr i8, ptr %i.jg, i64 132
  store float %i.bb, ptr %i.kc, align 4
  %.sroa.8.0..sroa_idx314 = getelementptr i8, ptr %i.jg, i64 136
  store float 0.000000e+00, ptr %.sroa.8.0..sroa_idx314, align 4
  %.sroa.9316.0..sroa_idx323 = getelementptr i8, ptr %i.jg, i64 140
  store float %i.v, ptr %.sroa.9316.0..sroa_idx323, align 4
  %i.kd = add nsw i32 %.110361063, 12
  %i.ke = getelementptr i8, ptr %i.jn, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ke, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n3, i64 12, i1 false)
  %i.kf = getelementptr i8, ptr %i.jn, i64 84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kf, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n3, i64 12, i1 false)
  %i.kg = getelementptr i8, ptr %i.jn, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kg, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n3, i64 12, i1 false)
  %i.kh = getelementptr i8, ptr %i.jn, i64 108
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kh, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n3, i64 12, i1 false)
  %i.ki = getelementptr i8, ptr %i.jn, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ki, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n3, i64 12, i1 false)
  %i.kj = getelementptr i8, ptr %i.jn, i64 132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kj, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n3, i64 12, i1 false)
  %i.kk = add nsw i32 %.110451061, 12
  %i.kl = getelementptr i8, ptr %i.ju, i64 48
  store <4 x float> <float 1.000000e+00, float 5.000000e-01, float 1.000000e+00, float 1.000000e+00>, ptr %i.kl, align 4
  %i.km = getelementptr i8, ptr %i.ju, i64 64
  store <4 x float> <float 5.000000e-01, float 1.000000e+00, float 1.000000e+00, float 5.000000e-01>, ptr %i.km, align 4
  %i.kn = getelementptr i8, ptr %i.ju, i64 80
  store <4 x float> <float 5.000000e-01, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01>, ptr %i.kn, align 4
  %i.ko = add nsw i32 %.110391062, 12
  %.pre1111 = load i32, ptr %i.b, align 8
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.aa, %bb.ab, %bb.ac, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.ae, %bb.ad
  %i.kp = phi i32 [ %.pre.pre, %bb.ae ], [ %.pre.pre, %bb.ad ], [ %i.av, %bb.b ], [ %.pre1111, %bb.ai ], [ %i.av, %bb.ah ], [ %i.av, %bb.ag ], [ %i.av, %bb.af ], [ %.pre.pre, %bb.ac ], [ %.pre.pre, %bb.ab ], [ %.pre.pre, %bb.aa ], [ %i.av, %bb.e ], [ %i.av, %bb.d ], [ %i.av, %bb.c ] ; 5 uses
  %.51049 = phi i32 [ %i.iq, %bb.ae ], [ %.41048, %bb.ad ], [ %.110451061, %bb.b ], [ %i.kk, %bb.ai ], [ %.110451061, %bb.ah ], [ %.110451061, %bb.ag ], [ %.110451061, %bb.af ], [ %.41048, %bb.ac ], [ %.41048, %bb.ab ], [ %.41048, %bb.aa ], [ %.110451061, %bb.e ], [ %.110451061, %bb.d ], [ %.110451061, %bb.c ] ; 2 uses
  %.51043 = phi i32 [ %i.iv, %bb.ae ], [ %.41042, %bb.ad ], [ %.110391062, %bb.b ], [ %i.ko, %bb.ai ], [ %.110391062, %bb.ah ], [ %.110391062, %bb.ag ], [ %.110391062, %bb.af ], [ %.41042, %bb.ac ], [ %.41042, %bb.ab ], [ %.41042, %bb.aa ], [ %.110391062, %bb.e ], [ %.110391062, %bb.d ], [ %.110391062, %bb.c ] ; 2 uses
  %.5 = phi i32 [ %i.ii, %bb.ae ], [ %.4, %bb.ad ], [ %.110361063, %bb.b ], [ %i.kd, %bb.ai ], [ %.110361063, %bb.ah ], [ %.110361063, %bb.ag ], [ %.110361063, %bb.af ], [ %.4, %bb.ac ], [ %.4, %bb.ab ], [ %.4, %bb.aa ], [ %.110361063, %bb.e ], [ %.110361063, %bb.d ], [ %.110361063, %bb.c ] ; 2 uses
  %i.kq = add nuw nsw i32 %.010511059, 1          ; 2 uses
  %i.kr = icmp slt i32 %i.kq, %i.kp
  br i1 %i.kr, label %bb.b, label %._crit_edge.loopexit

.preheader1057.loopexit.unr-lcssa:                ; preds = %.lr.ph1079
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader1057, label %.lr.ph1079.epil.preheader

.lr.ph1079.epil.preheader:                        ; preds = %.preheader1057.loopexit.unr-lcssa, %.lr.ph1079.preheader
  %indvars.iv1088.epil.init = phi i64 [ 0, %.lr.ph1079.preheader ], [ %indvars.iv.next1089.1, %.preheader1057.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph1079.preheader ], [ %indvars.iv.next.1, %.preheader1057.loopexit.unr-lcssa ]
  %lcmp.mod1127 = trunc i32 %.01035.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod1127)
  %i.ks = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %indvars.iv.epil.init ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv1088.epil.init ; 2 uses
  %i.ku = load <2 x float>, ptr %i.ks, align 4
  store <2 x float> %i.ku, ptr %i.kt, align 4
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.kw = load float, ptr %i.kv, align 4
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  store float %i.kw, ptr %i.kx, align 4
  br label %.preheader1057

.preheader1057:                                   ; preds = %.lr.ph1079.epil.preheader, %.preheader1057.loopexit.unr-lcssa, %._crit_edge1070
  %i.ky = icmp sgt i32 %.01044.lcssa, 0
  br i1 %i.ky, label %.lr.ph1082.preheader, label %.preheader

.lr.ph1082.preheader:                             ; preds = %.preheader1057
  %wide.trip.count1100 = zext nneg i32 %.01044.lcssa to i64 ; 2 uses
  %xtraiter1128 = and i64 %wide.trip.count1100, 1
  %i.kz = icmp eq i32 %.01044.lcssa, 1
  br i1 %i.kz, label %.lr.ph1082.epil.preheader, label %.lr.ph1082.preheader.new

.lr.ph1082.preheader.new:                         ; preds = %.lr.ph1082.preheader
  %unroll_iter1131 = and i64 %wide.trip.count1100, 2147483646
  br label %.lr.ph1082

.lr.ph1079:                                       ; preds = %.lr.ph1079, %.lr.ph1079.preheader.new
  %indvars.iv1088 = phi i64 [ 0, %.lr.ph1079.preheader.new ], [ %indvars.iv.next1089.1, %.lr.ph1079 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph1079.preheader.new ], [ %indvars.iv.next.1, %.lr.ph1079 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph1079.preheader.new ], [ %niter.next.1, %.lr.ph1079 ]
  %i.la = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv1088 ; 2 uses
  %i.lc = load <2 x float>, ptr %i.la, align 4
  store <2 x float> %i.lc, ptr %i.lb, align 4
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.le = load float, ptr %i.ld, align 4
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store float %i.le, ptr %i.lf, align 4
  %i.lg = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 12
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv1088 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 12
  %i.lk = load <2 x float>, ptr %i.lh, align 4
  store <2 x float> %i.lk, ptr %i.lj, align 4
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lg, i64 20
  %i.lm = load float, ptr %i.ll, align 4
  %i.ln = getelementptr inbounds nuw i8, ptr %i.li, i64 20
  store float %i.lm, ptr %i.ln, align 4
  %indvars.iv.next1089.1 = add nuw nsw i64 %indvars.iv1088, 6 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader1057.loopexit.unr-lcssa, label %.lr.ph1079

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph1082
  %lcmp.mod1129.not = icmp eq i64 %xtraiter1128, 0
  br i1 %lcmp.mod1129.not, label %.preheader, label %.lr.ph1082.epil.preheader

.lr.ph1082.epil.preheader:                        ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph1082.preheader
  %indvars.iv1095.epil.init = phi i64 [ 0, %.lr.ph1082.preheader ], [ %indvars.iv.next1096.1, %.preheader.loopexit.unr-lcssa ]
  %indvars.iv1093.epil.init = phi i64 [ 0, %.lr.ph1082.preheader ], [ %indvars.iv.next1094.1, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod1130 = trunc i32 %.01044.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod1130)
  %i.lo = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %indvars.iv1093.epil.init ; 2 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv1095.epil.init ; 2 uses
  %i.lq = load <2 x float>, ptr %i.lo, align 4
  store <2 x float> %i.lq, ptr %i.lp, align 4
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.ls = load float, ptr %i.lr, align 4
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store float %i.ls, ptr %i.lt, align 4
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph1082.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader1057
  %i.lu = icmp sgt i32 %.01038.lcssa, 0
  br i1 %i.lu, label %.lr.ph1085.preheader, label %._crit_edge1086

.lr.ph1085.preheader:                             ; preds = %.preheader
  %wide.trip.count1109 = zext nneg i32 %.01038.lcssa to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.01038.lcssa, 4
  br i1 %min.iters.check, label %.lr.ph1085.preheader1126, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1085.preheader
  %n.vec = and i64 %wide.trip.count1109, 2147483644 ; 4 uses
  %i.lv = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.lw = shl nuw i64 %index, 1                   ; 2 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %wide.vec = load <4 x float>, ptr %i.lx, align 4
  %wide.vec1121 = load <4 x float>, ptr %i.lz, align 4
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.lw
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.lw
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  store <4 x float> %wide.vec, ptr %i.ma, align 4
  store <4 x float> %wide.vec1121, ptr %i.mc, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.md = icmp eq i64 %index.next, %n.vec
  br i1 %i.md, label %middle.block, label %vector.body, !llvm.loop !200

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count1109
  br i1 %cmp.n, label %._crit_edge1086, label %.lr.ph1085.preheader1126

.lr.ph1085.preheader1126:                         ; preds = %.lr.ph1085.preheader, %middle.block
  %indvars.iv1104.ph = phi i64 [ 0, %.lr.ph1085.preheader ], [ %i.lv, %middle.block ]
  %indvars.iv1102.ph = phi i64 [ 0, %.lr.ph1085.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph1085

.lr.ph1082:                                       ; preds = %.lr.ph1082, %.lr.ph1082.preheader.new
  %indvars.iv1095 = phi i64 [ 0, %.lr.ph1082.preheader.new ], [ %indvars.iv.next1096.1, %.lr.ph1082 ] ; 3 uses
  %indvars.iv1093 = phi i64 [ 0, %.lr.ph1082.preheader.new ], [ %indvars.iv.next1094.1, %.lr.ph1082 ] ; 3 uses
  %niter1132 = phi i64 [ 0, %.lr.ph1082.preheader.new ], [ %niter1132.next.1, %.lr.ph1082 ]
  %i.me = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %indvars.iv1093 ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv1095 ; 2 uses
  %i.mg = load <2 x float>, ptr %i.me, align 4
  store <2 x float> %i.mg, ptr %i.mf, align 4
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mi = load float, ptr %i.mh, align 4
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store float %i.mi, ptr %i.mj, align 4
  %i.mk = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %indvars.iv1093 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 12
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv1095 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 12
  %i.mo = load <2 x float>, ptr %i.ml, align 4
  store <2 x float> %i.mo, ptr %i.mn, align 4
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 20
  %i.mq = load float, ptr %i.mp, align 4
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mm, i64 20
  store float %i.mq, ptr %i.mr, align 4
  %indvars.iv.next1096.1 = add nuw nsw i64 %indvars.iv1095, 6 ; 2 uses
  %indvars.iv.next1094.1 = add nuw nsw i64 %indvars.iv1093, 2 ; 2 uses
  %niter1132.next.1 = add nuw i64 %niter1132, 2   ; 2 uses
  %niter1132.ncmp.1 = icmp eq i64 %niter1132.next.1, %unroll_iter1131
  br i1 %niter1132.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph1082

._crit_edge1086:                                  ; preds = %.lr.ph1085, %middle.block, %.preheader
  tail call void @free(ptr noundef %i.j) #54
  tail call void @free(ptr noundef %i.m) #54
  tail call void @free(ptr noundef %i.l) #54
  tail call void @UnloadImageColors(ptr noundef %i.a) #54
  tail call void @UploadMesh(ptr noundef nonnull %0, i1 noundef zeroext false)
  ret void

.lr.ph1085:                                       ; preds = %.lr.ph1085.preheader1126, %.lr.ph1085
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %.lr.ph1085 ], [ %indvars.iv1104.ph, %.lr.ph1085.preheader1126 ] ; 2 uses
  %indvars.iv1102 = phi i64 [ %indvars.iv.next1103, %.lr.ph1085 ], [ %indvars.iv1102.ph, %.lr.ph1085.preheader1126 ] ; 2 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv1102
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv1104
  %i.mu = load <2 x float>, ptr %i.ms, align 4
  store <2 x float> %i.mu, ptr %i.mt, align 4
  %indvars.iv.next1105 = add nuw nsw i64 %indvars.iv1104, 2
  %indvars.iv.next1103 = add nuw nsw i64 %indvars.iv1102, 1 ; 2 uses
  %exitcond1110.not = icmp eq i64 %indvars.iv.next1103, %wide.trip.count1109
  br i1 %exitcond1110.not, label %._crit_edge1086, label %.lr.ph1085, !llvm.loop !201
}

; Function Attrs: nounwind uwtable
define void @GenMeshTangents(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #33 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.101) #54
  br label %bb.af

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.l) #54
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.n = load i32, ptr %0, align 8
  %i.o = shl nsw i32 %i.n, 2
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 2
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #56
  store ptr %i.r, ptr %i.k, align 8
  %i.s = load i32, ptr %0, align 8
  %i.t = sext i32 %i.s to i64
  %i.u = tail call noalias ptr @calloc(i64 noundef %i.t, i64 noundef 12) #57 ; 7 uses
  %i.v = load i32, ptr %0, align 8
  %i.w = sext i32 %i.v to i64
  %i.x = tail call noalias ptr @calloc(i64 noundef %i.w, i64 noundef 12) #57 ; 7 uses
  %i.y = icmp eq ptr %i.u, null                   ; 2 uses
  %i.z = icmp eq ptr %i.x, null                   ; 2 uses
  %or.cond = or i1 %i.y, %i.z
  br i1 %or.cond, label %bb.i, label %.preheader423

.preheader423:                                    ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader423
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not352 = icmp eq ptr %i.ae, null
  %i.af = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.ag = load ptr, ptr %i.e, align 8             ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ab to i64
  br label %bb.m

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.102) #54
  br i1 %i.y, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.u) #54
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.z, label %bb.af, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.x) #54
  br label %bb.af

.preheader:                                       ; preds = %bb.p, %.preheader423
  %i.ah = load i32, ptr %0, align 8               ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph426, label %._crit_edge

bb.m:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  br i1 %.not352, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.idx = mul nuw nsw i64 %indvars.iv, 6
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx ; 3 uses
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = zext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = zext i16 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.aq = load i16, ptr %i.ap, align 2
  %i.ar = zext i16 %i.aq to i32
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.as = mul nuw nsw i64 %indvars.iv, 3          ; 3 uses
  %i.at = trunc nuw i64 %i.as to i32
  %i.au = trunc i64 %i.as to i32
  %i.av = add i32 %i.au, 1
  %i.aw = trunc i64 %i.as to i32
  %i.ax = add i32 %i.aw, 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0341 = phi i32 [ %i.ar, %bb.n ], [ %i.ax, %bb.o ] ; 3 uses
  %.0340 = phi i32 [ %i.ao, %bb.n ], [ %i.av, %bb.o ] ; 3 uses
  %.0339 = phi i32 [ %i.al, %bb.n ], [ %i.at, %bb.o ] ; 3 uses
  %i.ay = mul nuw nsw i32 %.0339, 3
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load float, ptr %i.bb, align 4
  %i.bd = mul nsw i32 %.0340, 3
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.be ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %i.bh = load float, ptr %i.bg, align 4
  %i.bi = mul nsw i32 %.0341, 3
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bj ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %i.bm = load float, ptr %i.bl, align 4
  %i.bn = shl nuw nsw i32 %.0339, 1
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bo
  %i.bq = shl nuw nsw i32 %.0340, 1
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.br
  %i.bt = shl nuw nsw i32 %.0341, 1
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bu
  %i.bw = load <2 x float>, ptr %i.bp, align 4    ; 2 uses
  %i.bx = load <2 x float>, ptr %i.bs, align 4    ; 2 uses
  %i.by = load <2 x float>, ptr %i.bv, align 4    ; 2 uses
  %i.bz = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.bh, i64 1
  %i.cb = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fsub <2 x float> %i.ca, %i.cc           ; 2 uses
  %i.ce = shufflevector <2 x float> %i.by, <2 x float> %i.bx, <2 x i32> <i32 0, i32 3>
  %i.cf = fsub <2 x float> %i.ce, %i.bw           ; 5 uses
  %i.cg = shufflevector <2 x float> %i.bx, <2 x float> %i.by, <2 x i32> <i32 0, i32 3>
  %i.ch = fsub <2 x float> %i.cg, %i.bw           ; 5 uses
  %i.ci = extractelement <2 x float> %i.cf, i64 1
  %i.cj = fneg float %i.ci
  %i.ck = extractelement <2 x float> %i.cf, i64 0
  %i.cl = fmul float %i.ck, %i.cj
  %i.cm = extractelement <2 x float> %i.ch, i64 0
  %i.cn = extractelement <2 x float> %i.ch, i64 1
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cn, float %i.cl) ; 2 uses
  %i.cp = tail call float @llvm.fabs.f32(float %i.co)
  %i.cq = fcmp olt float %i.cp, f0x38D1B717
  %i.cr = fdiv float 1.000000e+00, %i.co
  %i.cs = select i1 %i.cq, float 0.000000e+00, float %i.cr ; 3 uses
  %i.ct = fneg <2 x float> %i.cd
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cv = fmul <2 x float> %i.cf, %i.cu
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.cd, <2 x float> %i.cv) ; 2 uses
  %i.cx = extractelement <2 x float> %i.cw, i64 1
  %i.cy = fmul float %i.cx, %i.cs                 ; 3 uses
  %i.cz = extractelement <2 x float> %i.cw, i64 0
  %i.da = fmul float %i.cz, %i.cs                 ; 3 uses
end_hunk_15
begin_hunk_16_@m3d_freehook:bb.a
  tail call void @UnloadFileData(ptr noundef %0) #54
  ret void
}

declare void @UnloadFileData(ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #41

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #42

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @my_strdup(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) unnamed_addr #25 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %length_until_line_feed.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext i32 %1 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  %i.c = load i8, ptr %i.b, align 1
  switch i8 %i.c, label %bb.c [
    i8 10, label %._crit_edge.loopexit.split.loop.exit.i
    i8 13, label %._crit_edge.loopexit.split.loop.exit.i
  ]

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %length_until_line_feed.exit, label %.lr.ph.i

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %.lr.ph.i, %.lr.ph.i
  %i.d = trunc nuw i64 %indvars.iv.i to i32
  br label %length_until_line_feed.exit

length_until_line_feed.exit:                      ; preds = %bb.c, %bb.b, %._crit_edge.loopexit.split.loop.exit.i
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.d, %._crit_edge.loopexit.split.loop.exit.i ], [ %1, %bb.c ] ; 2 uses
  %i.e = add i32 %.0.lcssa.i, 1
  %i.f = zext i32 %i.e to i64
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #56 ; 3 uses
  %i.h = zext i32 %.0.lcssa.i to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %0, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  store i8 0, ptr %i.i, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %length_until_line_feed.exit
  %.0 = phi ptr [ %i.g, %length_until_line_feed.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc float @parseFloat(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #20 {
bb.a:
  %.promoted.i = load ptr, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i, %bb.a
  %i.a = phi ptr [ %i.c, %.critedge.i ], [ %.promoted.i, %bb.a ] ; 7 uses
  %i.b = load i8, ptr %i.a, align 1               ; 5 uses
  switch i8 %i.b, label %skip_space.exit [
    i8 32, label %.critedge.i
    i8 9, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %bb.b, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store ptr %i.c, ptr %0, align 8
  br label %bb.b

skip_space.exit:                                  ; preds = %bb.b, %bb.c
  %i.d = phi i8 [ %.pre, %bb.c ], [ %i.b, %bb.b ]
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  switch i8 %i.d, label %bb.c [
    i8 0, label %until_space.exit
    i8 32, label %until_space.exit
    i8 9, label %until_space.exit
    i8 13, label %until_space.exit
  ]

bb.c:                                             ; preds = %skip_space.exit
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.e, align 1
  br label %skip_space.exit

until_space.exit:                                 ; preds = %skip_space.exit, %skip_space.exit, %skip_space.exit, %skip_space.exit
  %i.f = ptrtoint ptr %.0.i to i64
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = sub i64 %i.f, %i.g
  %sext = shl i64 %i.h, 32
  %i.i = ashr exact i64 %sext, 32                 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %i.i ; 8 uses
  %.not.i = icmp sgt i64 %i.i, 0
  br i1 %.not.i, label %bb.d, label %tryParseDouble.exit

bb.d:                                             ; preds = %until_space.exit
  switch i8 %i.b, label %bb.f [
    i8 43, label %bb.e
    i8 45, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.l = icmp eq i8 %i.b, 43
  %i.m = select i1 %i.l, double 1.000000e+00, double -1.000000e+00
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = sext i8 %i.b to i32
  %i.o = add nsw i32 %i.n, -48
  %i.p = icmp ult i32 %i.o, 10
  br i1 %i.p, label %bb.g, label %tryParseDouble.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0103.i = phi double [ %i.m, %bb.e ], [ 1.000000e+00, %bb.f ]
  %.097.i = phi ptr [ %i.k, %bb.e ], [ %i.a, %bb.f ] ; 2 uses
  %.092.in.not141.i = icmp eq ptr %.097.i, %i.j
  br i1 %.092.in.not141.i, label %tryParseDouble.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %.094144.i = phi i32 [ %i.y, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %.198143.i = phi ptr [ %i.x, %bb.h ], [ %.097.i, %bb.g ] ; 5 uses
  %.0106142.i = phi double [ %i.w, %bb.h ], [ 0.000000e+00, %bb.g ] ; 6 uses
  %i.q = load i8, ptr %.198143.i, align 1         ; 2 uses
  %i.r = sext i8 %i.q to i32
  %i.s = add nsw i32 %i.r, -48                    ; 2 uses
  %i.t = icmp ult i32 %i.s, 10
  br i1 %i.t, label %bb.h, label %.critedge.thread.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.u = fmul double %.0106142.i, 1.000000e+01
  %i.v = uitofp nneg i32 %i.s to double
  %i.w = fadd double %i.u, %i.v                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.198143.i, i64 1 ; 2 uses
  %i.y = add nuw nsw i32 %.094144.i, 1
  %.092.in.not.i = icmp eq ptr %i.x, %i.j
  br i1 %.092.in.not.i, label %._crit_edge.i, label %.lr.ph.i

.critedge.thread.i:                               ; preds = %.lr.ph.i
  %i.z = icmp eq i32 %.094144.i, 0
  br i1 %i.z, label %tryParseDouble.exit, label %bb.i

bb.i:                                             ; preds = %.critedge.thread.i
  switch i8 %i.q, label %._crit_edge.i [
    i8 46, label %.preheader135.i
    i8 101, label %.thread130.i
    i8 69, label %.thread130.i
  ]

.preheader135.i:                                  ; preds = %bb.i
  %.299148.i = getelementptr inbounds nuw i8, ptr %.198143.i, i64 1 ; 2 uses
  %.193.in.not149.i = icmp eq ptr %.299148.i, %i.j
  br i1 %.193.in.not149.i, label %._crit_edge.i, label %.lr.ph153.i

.lr.ph153.i:                                      ; preds = %.preheader135.i, %.epilog-lcssa
  %indvar = phi i32 [ %indvar.next, %.epilog-lcssa ], [ 0, %.preheader135.i ] ; 2 uses
  %.299152.i = phi ptr [ %.299.i, %.epilog-lcssa ], [ %.299148.i, %.preheader135.i ] ; 4 uses
  %.195151.i = phi i32 [ %i.aq, %.epilog-lcssa ], [ 1, %.preheader135.i ] ; 3 uses
  %.1107150.i = phi double [ %i.ap, %.epilog-lcssa ], [ %.0106142.i, %.preheader135.i ] ; 4 uses
  %i.aa = load i8, ptr %.299152.i, align 1        ; 2 uses
  %i.ab = sext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 10
  br i1 %i.ad, label %.preheader134.i.preheader, label %bb.j

.preheader134.i.preheader:                        ; preds = %.lr.ph153.i
  %xtraiter = and i32 %.195151.i, 7               ; 3 uses
  %i.ae = icmp ult i32 %indvar, 7
  br i1 %i.ae, label %.preheader134.i.epil.preheader, label %.preheader134.i.preheader.new

.preheader134.i.preheader.new:                    ; preds = %.preheader134.i.preheader
  %unroll_iter = and i32 %.195151.i, -8
  br label %.preheader134.i

.preheader134.i:                                  ; preds = %.preheader134.i, %.preheader134.i.preheader.new
  %.091146.i = phi double [ 1.000000e+00, %.preheader134.i.preheader.new ], [ %i.am, %.preheader134.i ]
  %niter = phi i32 [ 0, %.preheader134.i.preheader.new ], [ %niter.next.7, %.preheader134.i ]
  %i.af = fmul double %.091146.i, 1.000000e-01
  %i.ag = fmul double %i.af, 1.000000e-01
  %i.ah = fmul double %i.ag, 1.000000e-01
  %i.ai = fmul double %i.ah, 1.000000e-01
  %i.aj = fmul double %i.ai, 1.000000e-01
  %i.ak = fmul double %i.aj, 1.000000e-01
  %i.al = fmul double %i.ak, 1.000000e-01
  %i.am = fmul double %i.al, 1.000000e-01         ; 3 uses
  %niter.next.7 = add nuw i32 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %.preheader134.i

.unr-lcssa:                                       ; preds = %.preheader134.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader134.i.epil.preheader

.preheader134.i.epil.preheader:                   ; preds = %.unr-lcssa, %.preheader134.i.preheader
  %.091146.i.epil.init = phi double [ 1.000000e+00, %.preheader134.i.preheader ], [ %i.am, %.unr-lcssa ]
  %lcmp.mod113 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod113)
  br label %.preheader134.i.epil

.preheader134.i.epil:                             ; preds = %.preheader134.i.epil, %.preheader134.i.epil.preheader
  %.091146.i.epil = phi double [ %i.an, %.preheader134.i.epil ], [ %.091146.i.epil.init, %.preheader134.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader134.i.epil ], [ 0, %.preheader134.i.epil.preheader ]
  %i.an = fmul double %.091146.i.epil, 1.000000e-01 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader134.i.epil, !llvm.loop !205

.epilog-lcssa:                                    ; preds = %.preheader134.i.epil, %.unr-lcssa
  %.lcssa97 = phi double [ %i.am, %.unr-lcssa ], [ %i.an, %.preheader134.i.epil ]
  %i.ao = uitofp nneg i32 %i.ac to double
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %.lcssa97, double %.1107150.i) ; 2 uses
  %i.aq = add nuw i32 %.195151.i, 1
  %.299.i = getelementptr inbounds nuw i8, ptr %.299152.i, i64 1 ; 2 uses
  %.193.in.not.i = icmp eq ptr %.299.i, %i.j
  %indvar.next = add i32 %indvar, 1
  br i1 %.193.in.not.i, label %._crit_edge.i, label %.lr.ph153.i

bb.j:                                             ; preds = %.lr.ph153.i
  switch i8 %i.aa, label %._crit_edge.i [
    i8 101, label %.thread130.i
    i8 69, label %.thread130.i
  ]

.thread130.i:                                     ; preds = %bb.j, %bb.j, %bb.i, %bb.i
  %.4129.i = phi ptr [ %.198143.i, %bb.i ], [ %.299152.i, %bb.j ], [ %.299152.i, %bb.j ], [ %.198143.i, %bb.i ] ; 2 uses
  %.3109128.i = phi double [ %.0106142.i, %bb.i ], [ %.1107150.i, %bb.j ], [ %.1107150.i, %bb.j ], [ %.0106142.i, %bb.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.4129.i, i64 1 ; 3 uses
  %.not121.i = icmp eq ptr %i.ar, %i.j
  %.pre.i = load i8, ptr %i.ar, align 1           ; 3 uses
  br i1 %.not121.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread130.i
  switch i8 %.pre.i, label %bb.m [
    i8 43, label %bb.l
    i8 45, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %.4129.i, i64 2
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %.thread130.i
  %i.at = sext i8 %.pre.i to i32
  %i.au = add nsw i32 %i.at, -48
  %i.av = icmp ult i32 %i.au, 10
  br i1 %i.av, label %bb.n, label %tryParseDouble.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0101.i = phi i8 [ %.pre.i, %bb.l ], [ 43, %bb.m ] ; 3 uses
  %.5.i = phi ptr [ %i.as, %bb.l ], [ %i.ar, %bb.m ] ; 2 uses
  %.3.in.not155.i = icmp eq ptr %.5.i, %i.j
  br i1 %.3.in.not155.i, label %tryParseDouble.exit, label %.lr.ph159.i

.lr.ph159.i:                                      ; preds = %bb.n, %bb.o
  %.296158.i = phi i32 [ %i.bd, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %.6157.i = phi ptr [ %i.bc, %bb.o ], [ %.5.i, %bb.n ] ; 2 uses
  %.0104156.i = phi i32 [ %i.bb, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.aw = load i8, ptr %.6157.i, align 1
  %i.ax = sext i8 %i.aw to i32
  %i.ay = add nsw i32 %i.ax, -48                  ; 2 uses
  %i.az = icmp ult i32 %i.ay, 10
  br i1 %i.az, label %bb.o, label %.critedge4.i

bb.o:                                             ; preds = %.lr.ph159.i
  %i.ba = mul nsw i32 %.0104156.i, 10
  %i.bb = add nsw i32 %i.ay, %i.ba                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.6157.i, i64 1 ; 2 uses
  %i.bd = add nuw nsw i32 %.296158.i, 1
  %.3.in.not.i = icmp eq ptr %i.bc, %i.j
  br i1 %.3.in.not.i, label %.critedge2.i, label %.lr.ph159.i

.critedge4.i:                                     ; preds = %.lr.ph159.i
  %i.be = icmp eq i32 %.296158.i, 0
  br i1 %i.be, label %tryParseDouble.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.o, %.critedge4.i
  %.1105.i = phi i32 [ %.0104156.i, %.critedge4.i ], [ %i.bb, %bb.o ] ; 7 uses
  %i.bf = icmp sgt i32 %.1105.i, 0
  br i1 %i.bf, label %.lr.ph167.i.preheader, label %._crit_edge.i

.lr.ph167.i.preheader:                            ; preds = %.critedge2.i
  %xtraiter114 = and i32 %.1105.i, 7              ; 3 uses
  %i.bg = icmp ult i32 %.1105.i, 8
  br i1 %i.bg, label %.lr.ph167.i.epil.preheader, label %.lr.ph167.i.preheader.new

.lr.ph167.i.preheader.new:                        ; preds = %.lr.ph167.i.preheader
  %unroll_iter119 = and i32 %.1105.i, 2147483640
  br label %.lr.ph167.i

.lr.ph167.i:                                      ; preds = %.lr.ph167.i, %.lr.ph167.i.preheader.new
  %.088165.i = phi double [ 1.000000e+00, %.lr.ph167.i.preheader.new ], [ %i.bo, %.lr.ph167.i ]
  %niter120 = phi i32 [ 0, %.lr.ph167.i.preheader.new ], [ %niter120.next.7, %.lr.ph167.i ]
  %i.bh = fmul double %.088165.i, 5.000000e+00
  %i.bi = fmul double %i.bh, 5.000000e+00
  %i.bj = fmul double %i.bi, 5.000000e+00
  %i.bk = fmul double %i.bj, 5.000000e+00
  %i.bl = fmul double %i.bk, 5.000000e+00
  %i.bm = fmul double %i.bl, 5.000000e+00
  %i.bn = fmul double %i.bm, 5.000000e+00
  %i.bo = fmul double %i.bn, 5.000000e+00         ; 3 uses
  %niter120.next.7 = add nuw nsw i32 %niter120, 8 ; 2 uses
  %niter120.ncmp.7 = icmp eq i32 %niter120.next.7, %unroll_iter119
  br i1 %niter120.ncmp.7, label %.lr.ph171.i.preheader.unr-lcssa, label %.lr.ph167.i

.lr.ph171.i.preheader.unr-lcssa:                  ; preds = %.lr.ph167.i
  %lcmp.mod116.not = icmp eq i32 %xtraiter114, 0
  br i1 %lcmp.mod116.not, label %.lr.ph171.i.preheader, label %.lr.ph167.i.epil.preheader

.lr.ph167.i.epil.preheader:                       ; preds = %.lr.ph171.i.preheader.unr-lcssa, %.lr.ph167.i.preheader
  %.088165.i.epil.init = phi double [ 1.000000e+00, %.lr.ph167.i.preheader ], [ %i.bo, %.lr.ph171.i.preheader.unr-lcssa ]
  %lcmp.mod118 = icmp ne i32 %xtraiter114, 0
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %.lr.ph167.i.epil

.lr.ph167.i.epil:                                 ; preds = %.lr.ph167.i.epil, %.lr.ph167.i.epil.preheader
  %.088165.i.epil = phi double [ %i.bp, %.lr.ph167.i.epil ], [ %.088165.i.epil.init, %.lr.ph167.i.epil.preheader ]
  %epil.iter115 = phi i32 [ %epil.iter115.next, %.lr.ph167.i.epil ], [ 0, %.lr.ph167.i.epil.preheader ]
  %i.bp = fmul double %.088165.i.epil, 5.000000e+00 ; 2 uses
  %epil.iter115.next = add i32 %epil.iter115, 1   ; 2 uses
  %epil.iter115.cmp.not = icmp eq i32 %epil.iter115.next, %xtraiter114
  br i1 %epil.iter115.cmp.not, label %.lr.ph171.i.preheader, label %.lr.ph167.i.epil, !llvm.loop !206

.lr.ph171.i.preheader:                            ; preds = %.lr.ph167.i.epil, %.lr.ph171.i.preheader.unr-lcssa
  %.lcssa92 = phi double [ %i.bo, %.lr.ph171.i.preheader.unr-lcssa ], [ %i.bp, %.lr.ph167.i.epil ] ; 2 uses
  %xtraiter121 = and i32 %.1105.i, 7              ; 3 uses
  %i.bq = icmp ult i32 %.1105.i, 8
  br i1 %i.bq, label %.lr.ph171.i.epil.preheader, label %.lr.ph171.i.preheader.new

.lr.ph171.i.preheader.new:                        ; preds = %.lr.ph171.i.preheader
  %unroll_iter126 = and i32 %.1105.i, 2147483640
  br label %.lr.ph171.i

.lr.ph171.i:                                      ; preds = %.lr.ph171.i, %.lr.ph171.i.preheader.new
  %.086169.i = phi double [ 1.000000e+00, %.lr.ph171.i.preheader.new ], [ %i.by, %.lr.ph171.i ]
  %niter127 = phi i32 [ 0, %.lr.ph171.i.preheader.new ], [ %niter127.next.7, %.lr.ph171.i ]
  %i.br = fmul double %.086169.i, 2.000000e+00
  %i.bs = fmul double %i.br, 2.000000e+00
  %i.bt = fmul double %i.bs, 2.000000e+00
  %i.bu = fmul double %i.bt, 2.000000e+00
  %i.bv = fmul double %i.bu, 2.000000e+00
  %i.bw = fmul double %i.bv, 2.000000e+00
  %i.bx = fmul double %i.bw, 2.000000e+00
  %i.by = fmul double %i.bx, 2.000000e+00         ; 3 uses
  %niter127.next.7 = add nuw i32 %niter127, 8     ; 2 uses
  %niter127.ncmp.7 = icmp eq i32 %niter127.next.7, %unroll_iter126
  br i1 %niter127.ncmp.7, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph171.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph171.i
  %lcmp.mod123.not = icmp eq i32 %xtraiter121, 0
  br i1 %lcmp.mod123.not, label %._crit_edge.i, label %.lr.ph171.i.epil.preheader

.lr.ph171.i.epil.preheader:                       ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph171.i.preheader
  %.086169.i.epil.init = phi double [ 1.000000e+00, %.lr.ph171.i.preheader ], [ %i.by, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod125 = icmp ne i32 %xtraiter121, 0
  tail call void @llvm.assume(i1 %lcmp.mod125)
  br label %.lr.ph171.i.epil

.lr.ph171.i.epil:                                 ; preds = %.lr.ph171.i.epil, %.lr.ph171.i.epil.preheader
  %.086169.i.epil = phi double [ %i.bz, %.lr.ph171.i.epil ], [ %.086169.i.epil.init, %.lr.ph171.i.epil.preheader ]
  %epil.iter122 = phi i32 [ %epil.iter122.next, %.lr.ph171.i.epil ], [ 0, %.lr.ph171.i.epil.preheader ]
  %i.bz = fmul double %.086169.i.epil, 2.000000e+00 ; 2 uses
  %epil.iter122.next = add i32 %epil.iter122, 1   ; 2 uses
  %epil.iter122.cmp.not = icmp eq i32 %epil.iter122.next, %xtraiter121
  br i1 %epil.iter122.cmp.not, label %._crit_edge.i, label %.lr.ph171.i.epil, !llvm.loop !207

._crit_edge.i:                                    ; preds = %bb.h, %.epilog-lcssa, %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph171.i.epil, %.critedge2.i, %bb.j, %.preheader135.i, %bb.i
  %.088.lcssa211.i = phi double [ %.lcssa92, %._crit_edge.i.loopexit.unr-lcssa ], [ 1.000000e+00, %.critedge2.i ], [ 1.000000e+00, %bb.j ], [ 1.000000e+00, %.epilog-lcssa ], [ 1.000000e+00, %bb.i ], [ 1.000000e+00, %.preheader135.i ], [ %.lcssa92, %.lr.ph171.i.epil ], [ 1.000000e+00, %bb.h ] ; 2 uses
  %.4110202210.i = phi double [ %.3109128.i, %._crit_edge.i.loopexit.unr-lcssa ], [ %.3109128.i, %.critedge2.i ], [ %.1107150.i, %bb.j ], [ %i.ap, %.epilog-lcssa ], [ %.0106142.i, %bb.i ], [ %.0106142.i, %.preheader135.i ], [ %.3109128.i, %.lr.ph171.i.epil ], [ %i.w, %bb.h ]
  %.1102204209.i = phi i8 [ %.0101.i, %._crit_edge.i.loopexit.unr-lcssa ], [ %.0101.i, %.critedge2.i ], [ 43, %bb.j ], [ 43, %.epilog-lcssa ], [ 43, %bb.i ], [ 43, %.preheader135.i ], [ %.0101.i, %.lr.ph171.i.epil ], [ 43, %bb.h ]
  %.086.lcssa.i = phi double [ %i.bz, %.lr.ph171.i.epil ], [ 1.000000e+00, %.critedge2.i ], [ 1.000000e+00, %bb.j ], [ 1.000000e+00, %.epilog-lcssa ], [ 1.000000e+00, %bb.i ], [ 1.000000e+00, %.preheader135.i ], [ %i.by, %._crit_edge.i.loopexit.unr-lcssa ], [ 1.000000e+00, %bb.h ] ; 2 uses
  %i.ca = icmp eq i8 %.1102204209.i, 45           ; 2 uses
  %i.cb = insertelement <2 x double> poison, double %.088.lcssa211.i, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %.086.lcssa.i, i64 1
  %i.cd = fdiv <2 x double> splat (double 1.000000e+00), %i.cc ; 2 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 0
  %.189.i = select i1 %i.ca, double %i.ce, double %.088.lcssa211.i
  %i.cf = extractelement <2 x double> %i.cd, i64 1
  %.187.i = select i1 %i.ca, double %i.cf, double %.086.lcssa.i
  %i.cg = fmul double %.4110202210.i, %.189.i
  %i.ch = fmul double %i.cg, %.187.i
  %i.ci = fmul double %.0103.i, %i.ch
  %i.cj = fptrunc double %i.ci to float
  br label %tryParseDouble.exit

tryParseDouble.exit:                              ; preds = %until_space.exit, %bb.f, %bb.g, %.critedge.thread.i, %bb.m, %bb.n, %.critedge4.i, %._crit_edge.i
  %.0 = phi float [ 0.000000e+00, %bb.g ], [ %i.cj, %._crit_edge.i ], [ 0.000000e+00, %.critedge.thread.i ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %.critedge4.i ], [ 0.000000e+00, %bb.m ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %until_space.exit ]
  store ptr %i.j, ptr %0, align 8
  ret float %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @jsmn_parse(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef captures(address_is_null) %3, i64 noundef %4) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %i.d = icmp ult i64 %i.c, %2
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %.not200 = icmp eq ptr %3, null                 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.az
  %i.f = phi i64 [ %i.c, %.lr.ph ], [ %i.eg, %bb.az ] ; 6 uses
  %.0102191 = phi i32 [ %i.b, %.lr.ph ], [ %.1103, %bb.az ] ; 18 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1               ; 3 uses
  switch i8 %i.h, label %.thread163 [
    i8 0, label %.critedge
    i8 123, label %bb.c
    i8 91, label %bb.c
    i8 125, label %bb.g
    i8 93, label %bb.g
    i8 34, label %bb.q
    i8 9, label %bb.az
    i8 13, label %bb.az
    i8 10, label %bb.az
    i8 32, label %bb.az
    i8 58, label %bb.ak
    i8 44, label %bb.al
    i8 45, label %bb.ap
    i8 48, label %bb.ap
    i8 49, label %bb.ap
    i8 50, label %bb.ap
    i8 51, label %bb.ap
    i8 52, label %bb.ap
    i8 53, label %bb.ap
    i8 54, label %bb.ap
    i8 55, label %bb.ap
    i8 56, label %bb.ap
    i8 57, label %bb.ap
    i8 116, label %bb.ap
    i8 102, label %bb.ap
    i8 110, label %bb.ap
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.i = add nsw i32 %.0102191, 1                 ; 2 uses
  br i1 %.not200, label %bb.az, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.a, align 8              ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %.not.i = icmp ugt i64 %4, %i.k
  br i1 %.not.i, label %jsmn_alloc_token.exit, label %.thread163

jsmn_alloc_token.exit:                            ; preds = %bb.d
  %i.l = add i32 %i.j, 1
  store i32 %i.l, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %i.k ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 -1, i64 16, i1 false)
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 28 ; 2 uses
  store i32 -1, ptr %i.p, align 4
  %i.q = load i32, ptr %i.e, align 4              ; 2 uses
  %.not141 = icmp eq i32 %i.q, -1
  br i1 %.not141, label %bb.f, label %bb.e

bb.e:                                             ; preds = %jsmn_alloc_token.exit
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [32 x i8], ptr %3, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 8
  %i.w = load i32, ptr %i.e, align 4
  store i32 %i.w, ptr %i.p, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %jsmn_alloc_token.exit
  %i.x = icmp eq i8 %i.h, 123
  %i.y = select i1 %i.x, i32 1, i32 2
  store i32 %i.y, ptr %i.m, align 8
  %i.z = load i64, ptr %0, align 8
  store i64 %i.z, ptr %i.n, align 8
  %i.aa = load i32, ptr %i.a, align 8
  %i.ab = add i32 %i.aa, -1
  store i32 %i.ab, ptr %i.e, align 4
  br label %bb.az

bb.g:                                             ; preds = %bb.b, %bb.b
  br i1 %.not200, label %bb.az, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = icmp eq i8 %i.h, 125
  %i.ad = select i1 %i.ac, i32 1, i32 2           ; 2 uses
  %i.ae = load i32, ptr %i.a, align 8             ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.thread163, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = add i32 %i.ae, -1
  %i.ah = zext i32 %i.ag to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %bb.i
  %.pn = phi i64 [ %i.ah, %bb.i ], [ %i.av, %bb.n ]
  %.0104 = getelementptr inbounds [32 x i8], ptr %3, i64 %.pn ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0104, i64 8
  %i.aj = load i64, ptr %i.ai, align 8
  %.not138 = icmp eq i64 %i.aj, -1
  br i1 %.not138, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.0104, i64 16
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = icmp eq i64 %i.al, -1
  br i1 %i.am, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.an = load i32, ptr %.0104, align 8
  %.not140 = icmp eq i32 %i.an, %i.ad
  br i1 %.not140, label %bb.m, label %.thread163

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %.0104, i64 16
  %i.ap = add i64 %i.f, 1
  store i64 %i.ap, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.0104, i64 28
  %i.ar = load i32, ptr %i.aq, align 4
  store i32 %i.ar, ptr %i.e, align 4
  br label %bb.az

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %.0104, i64 28
end_hunk_16
begin_hunk_17_@cgltf_parse_json_anisotropy:bb.a

cgltf_skip_json.exit.thread:                      ; preds = %cgltf_json_to_float.exit59, %cgltf_json_to_float.exit, %cgltf_skip_json.exit
  %.1475 = phi i32 [ %.147, %cgltf_skip_json.exit ], [ %i.be, %cgltf_json_to_float.exit59 ], [ %i.am, %cgltf_json_to_float.exit ] ; 2 uses
  %i.ca = add nuw nsw i32 %.04411, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ca, %i.g
  br i1 %exitcond.not, label %cgltf_skip_json.exit.thread6, label %bb.c

cgltf_skip_json.exit.thread6:                     ; preds = %cgltf_skip_json.exit, %bb.c, %bb.d, %cgltf_skip_json.exit.thread, %bb.k, %bb.b, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ -1, %bb.k ], [ %i.h, %bb.b ], [ -1, %bb.c ], [ %.147, %cgltf_skip_json.exit ], [ -1, %bb.d ], [ %.1475, %cgltf_skip_json.exit.thread ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nounwind uwtable
define internal fastcc i32 @cgltf_parse_json_dispersion(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 1, -2147483648) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #45 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.b ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.d, 1
  br i1 %.not, label %bb.b, label %cgltf_skip_json.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = add nuw nsw i32 %1, 1                    ; 2 uses
  %.not3342 = icmp sgt i32 %i.f, 0
  br i1 %.not3342, label %.lr.ph, label %cgltf_skip_json.exit.thread

.lr.ph:                                           ; preds = %bb.b, %bb.k
  %.02744 = phi i32 [ %i.ba, %bb.k ], [ 0, %bb.b ]
  %.02943 = phi i32 [ %.13040, %bb.k ], [ %i.g, %bb.b ] ; 5 uses
  %i.h = zext nneg i32 %.02943 to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.h ; 4 uses
  %i.j = load i32, ptr %i.i, align 8
  %.not32 = icmp eq i32 %i.j, 3
  br i1 %.not32, label %bb.c, label %cgltf_skip_json.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %cgltf_skip_json.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = sub nsw i64 %i.o, %i.q
  %i.s = icmp eq i64 %i.r, 10
  br i1 %i.s, label %cgltf_json_strcmp.exit, label %cgltf_json_strcmp.exit.thread

cgltf_json_strcmp.exit:                           ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %2, i64 %i.q
  %i.u = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(11) @.str.273, i64 noundef 10) #51
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %cgltf_json_strcmp.exit.thread

bb.e:                                             ; preds = %cgltf_json_strcmp.exit
  %i.w = sext i32 %.02943 to i64
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8
  %.not.i34 = icmp eq i32 %i.z, 4
  br i1 %.not.i34, label %bb.f, label %cgltf_skip_json.exit.thread38

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = sub nsw i64 %i.ab, %i.ad
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.ae, i64 127) ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ad
  %i.ag = call ptr @strncpy(ptr noundef nonnull %i.a, ptr noundef readonly %i.af, i64 noundef %spec.select.i) #54 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.i
  store i8 0, ptr %i.ah, align 1
  %i.ai = call double @strtod(ptr noundef nonnull captures(none) %i.a, ptr noundef null) #54, !inline_history !102
  %i.aj = fptrunc double %i.ai to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  br label %cgltf_skip_json.exit.thread38

cgltf_skip_json.exit.thread38:                    ; preds = %bb.f, %bb.e
  %.0.i35 = phi float [ %i.aj, %bb.f ], [ -1.000000e+00, %bb.e ]
  store float %.0.i35, ptr %3, align 4
  %i.ak = add nuw nsw i32 %.02943, 2
  br label %bb.k

cgltf_json_strcmp.exit.thread:                    ; preds = %bb.d, %cgltf_json_strcmp.exit
  %i.al = add nuw nsw i32 %.02943, 1
  %i.am = add nuw nsw i32 %.02943, 2
  %i.an = zext nneg i32 %i.al to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %cgltf_json_strcmp.exit.thread
  %indvars.iv.i = phi i64 [ %i.an, %cgltf_json_strcmp.exit.thread ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %.016.i = phi i32 [ %i.am, %cgltf_json_strcmp.exit.thread ], [ %.1.i, %bb.j ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv.i ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8
  switch i32 %i.ap, label %cgltf_skip_json.exit.thread [
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 4, label %bb.j
    i32 3, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = shl nsw i32 %i.ar, 1
  %i.at = add nsw i32 %i.as, %.016.i
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = add nsw i32 %i.av, %.016.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.g
  %.1.i = phi i32 [ %i.at, %bb.h ], [ %i.aw, %bb.i ], [ %.016.i, %bb.g ], [ %.016.i, %bb.g ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ax = sext i32 %.1.i to i64
  %i.ay = icmp slt i64 %indvars.iv.next.i, %i.ax
  br i1 %i.ay, label %bb.g, label %cgltf_skip_json.exit

cgltf_skip_json.exit:                             ; preds = %bb.j
  %i.az = trunc nsw i64 %indvars.iv.next.i to i32
  br label %bb.k

bb.k:                                             ; preds = %cgltf_skip_json.exit, %cgltf_skip_json.exit.thread38
  %.13040 = phi i32 [ %i.ak, %cgltf_skip_json.exit.thread38 ], [ %i.az, %cgltf_skip_json.exit ] ; 2 uses
  %i.ba = add nuw nsw i32 %.02744, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ba, %i.f
  br i1 %exitcond.not, label %cgltf_skip_json.exit.thread, label %.lr.ph

cgltf_skip_json.exit.thread:                      ; preds = %.lr.ph, %bb.c, %bb.k, %bb.g, %bb.b, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ %i.g, %bb.b ], [ -1, %bb.g ], [ -1, %.lr.ph ], [ -1, %bb.c ], [ %.13040, %bb.k ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @_m3dstbi__zbuild_huffman(ptr nofree noundef nonnull captures(none) initializes((0, 1024)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #46 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  %i.b = alloca [17 x i32], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, i8 0, i64 68, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %i.c = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %2, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod154 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod154)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !279

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %i.al = icmp sgt i32 %.pre, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp sgt i32 %i.an, 4
  %or.cond103 = select i1 %i.al, i1 true, i1 %i.ao
  br i1 %or.cond103, label %.loopexit70, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a
  %.old = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.old101 = load i32, ptr %.old, align 8
  %.old102 = icmp sgt i32 %.old101, 4
  br i1 %.old102, label %.loopexit70, label %bb.b

bb.b:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aq = load <8 x i32>, ptr %i.ap, align 4
  %.fr = freeze <8 x i32> %i.aq
  %i.ar = icmp sgt <8 x i32> %.fr, <i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024> ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.at = load <4 x i32>, ptr %i.as, align 4
  %.fr152 = freeze <4 x i32> %i.at
  %i.au = icmp sgt <4 x i32> %.fr152, <i32 2048, i32 4096, i32 8192, i32 16384>
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp sgt i32 %i.aw, 32768
  %i.ay = shufflevector <8 x i1> %i.ar, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or <4 x i1> %i.ay, %i.au
  %i.az = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ba = shufflevector <8 x i1> %i.az, <8 x i1> %i.ar, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.bb = bitcast <8 x i1> %i.ba to i8
  %i.bc = icmp ne i8 %i.bb, 0
  %op.rdx = select i1 %i.bc, i1 true, i1 %i.ax
  br i1 %op.rdx, label %.loopexit70, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1056
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %indvars.iv87 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next88, %bb.d ] ; 8 uses
  %.06275 = phi i32 [ 0, %.preheader ], [ %i.bu, %bb.d ] ; 3 uses
  %.06374 = phi i32 [ 0, %.preheader ], [ %i.bv, %bb.d ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv87
  store i32 %.06275, ptr %i.bg, align 4
  %i.bh = trunc i32 %.06275 to i16
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %indvars.iv87
  store i16 %i.bh, ptr %i.bi, align 2
  %i.bj = trunc i32 %.06374 to i16
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv87
  store i16 %i.bj, ptr %i.bk, align 2
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv87
  %i.bm = load i32, ptr %i.bl, align 4            ; 3 uses
  %i.bn = add nsw i32 %i.bm, %.06275              ; 3 uses
  %.not68 = icmp ne i32 %i.bm, 0
  %i.bo = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.bp = shl nuw nsw i32 1, %i.bo
  %.not69.not = icmp sgt i32 %i.bn, %i.bp
  %or.cond = select i1 %.not68, i1 %.not69.not, i1 false
  br i1 %or.cond, label %.loopexit70, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = trunc i64 %indvars.iv87 to i32
  %i.br = sub i32 16, %i.bq
  %i.bs = shl i32 %i.bn, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv87
  store i32 %i.bs, ptr %i.bt, align 4
  %i.bu = shl i32 %i.bn, 1
  %i.bv = add nsw i32 %i.bm, %.06374
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, 16
  br i1 %exitcond90.not, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 65536, ptr %i.bw, align 4
  br i1 %i.c, label %.lr.ph81, label %.loopexit70

.lr.ph81:                                         ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %wide.trip.count97 = zext nneg i32 %2 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph81, %bb.i
  %indvars.iv94 = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next95, %bb.i ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv94
  %i.ca = load i8, ptr %i.bz, align 1             ; 5 uses
  %i.cb = zext i8 %i.ca to i32                    ; 3 uses
  %.not = icmp eq i8 %i.ca, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = zext i8 %i.ca to i64                    ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4            ; 3 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cc
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = zext i16 %i.cg to i32
  %i.ci = sub i32 %i.ce, %i.ch
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.cc
  %i.ck = load i16, ptr %i.cj, align 2
  %i.cl = zext i16 %i.ck to i32
  %i.cm = add nsw i32 %i.ci, %i.cl
  %i.cn = shl nuw nsw i32 %i.cb, 9
  %i.co = trunc nuw nsw i64 %indvars.iv94 to i32
  %i.cp = or i32 %i.cn, %i.co
  %i.cq = trunc i32 %i.cp to i16
  %i.cr = sext i32 %i.cm to i64                   ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.bx, i64 %i.cr
  store i8 %i.ca, ptr %i.cs, align 1
  %i.ct = trunc i64 %indvars.iv94 to i16
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.cr
  store i16 %i.ct, ptr %i.cu, align 2
  %i.cv = icmp ult i8 %i.ca, 10
  br i1 %i.cv, label %.lr.ph78, label %.loopexit

.lr.ph78:                                         ; preds = %bb.g
  %trunc.i.i = trunc i32 %i.ce to i16
  %rev.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i)
  %i.cw = zext i16 %rev.i.i to i32
  %i.cx = sub nuw nsw i32 16, %i.cb
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = shl nuw nsw i32 1, %i.cb
  %i.da = zext nneg i32 %i.cy to i64
  %i.db = zext nneg i32 %i.cz to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph78, %bb.h
  %indvars.iv91 = phi i64 [ %i.da, %.lr.ph78 ], [ %indvars.iv.next92, %bb.h ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv91
  store i16 %i.cq, ptr %i.dc, align 2
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, %i.db ; 2 uses
  %i.dd = icmp samesign ult i64 %indvars.iv.next92, 512
  br i1 %i.dd, label %bb.h, label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.g
  %i.de = add nsw i32 %i.ce, 1
  store i32 %i.de, ptr %i.cd, align 4
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.f
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.loopexit70, label %bb.f

.loopexit70:                                      ; preds = %bb.c, %bb.i, %bb.b, %._crit_edge.thread, %._crit_edge, %bb.e
  %.065 = phi i32 [ 1, %bb.e ], [ 0, %bb.b ], [ 1, %bb.i ], [ 0, %._crit_edge ], [ 0, %._crit_edge.thread ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  ret i32 %.065
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @_m3dstbi__create_png_image_raw(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #25 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 5 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = mul i32 %4, %3                           ; 4 uses
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d                       ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 8 uses
  %i.h = shl i32 %3, %i.d                         ; 18 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %_m3dstbi__malloc_mad3.exit.thread
end_hunk_17
begin_hunk_18_@_m3dstbi__create_png_image_raw:bb.a
  br label %.thread681

.thread681:                                       ; preds = %._crit_edge847, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %._crit_edge855, %bb.am, %bb.ak, %bb.ao, %bb.an, %bb.au, %bb.av, %._crit_edge863, %bb.al
  br i1 %.not611, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %.thread681
  %i.apv = load ptr, ptr %i.u, align 8
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apv, i64 %i.akm ; 16 uses
  br i1 %i.ajw, label %.preheader, label %.preheader707

.preheader707:                                    ; preds = %bb.aw
  br i1 %i.ajx, label %.lr.ph869.preheader, label %.loopexit

.lr.ph869.preheader:                              ; preds = %.preheader707
  br i1 %lcmp.mod1669.not.not, label %.lr.ph869.prol, label %.lr.ph869.prol.loopexit

.lr.ph869.prol:                                   ; preds = %.lr.ph869.preheader
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 %i.akf ; 4 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 3
  store i8 -1, ptr %i.apy, align 1
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apw, i64 %i.akg ; 3 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 2
  %i.aqb = load i8, ptr %i.aqa, align 1
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apx, i64 2
  store i8 %i.aqb, ptr %i.aqc, align 1
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.apz, i64 1
  %i.aqe = load i8, ptr %i.aqd, align 1
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.apx, i64 1
  store i8 %i.aqe, ptr %i.aqf, align 1
  %i.aqg = load i8, ptr %i.apz, align 1
  store i8 %i.aqg, ptr %i.apx, align 1
  br label %.lr.ph869.prol.loopexit

.lr.ph869.prol.loopexit:                          ; preds = %.lr.ph869.prol, %.lr.ph869.preheader
  %indvars.iv980.unr = phi i64 [ %i.ajy, %.lr.ph869.preheader ], [ %indvars.iv.next981.prol, %.lr.ph869.prol ]
  br i1 %i.akh, label %.loopexit, label %.lr.ph869

.preheader:                                       ; preds = %bb.aw
  br i1 %i.ajx, label %.lr.ph872.preheader, label %.loopexit

.lr.ph872.preheader:                              ; preds = %.preheader
  br i1 %lcmp.mod1672.not, label %.lr.ph872.prol.loopexit, label %.lr.ph872.prol

.lr.ph872.prol:                                   ; preds = %.lr.ph872.preheader, %.lr.ph872.prol
  %indvars.iv983.prol = phi i64 [ %indvars.iv.next984.prol, %.lr.ph872.prol ], [ %i.ajy, %.lr.ph872.preheader ] ; 3 uses
  %prol.iter1673 = phi i64 [ %prol.iter1673.next, %.lr.ph872.prol ], [ 0, %.lr.ph872.preheader ]
  %i.aqh = shl nuw nsw i64 %indvars.iv983.prol, 1
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.apw, i64 %i.aqh ; 2 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 1
  store i8 -1, ptr %i.aqj, align 1
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.apw, i64 %indvars.iv983.prol
  %i.aql = load i8, ptr %i.aqk, align 1
  store i8 %i.aql, ptr %i.aqi, align 1
  %indvars.iv.next984.prol = add nsw i64 %indvars.iv983.prol, -1 ; 2 uses
  %prol.iter1673.next = add i64 %prol.iter1673, 1 ; 2 uses
  %prol.iter1673.cmp.not = icmp eq i64 %prol.iter1673.next, %xtraiter1671
  br i1 %prol.iter1673.cmp.not, label %.lr.ph872.prol.loopexit, label %.lr.ph872.prol, !llvm.loop !383

.lr.ph872.prol.loopexit:                          ; preds = %.lr.ph872.prol, %.lr.ph872.preheader
  %indvars.iv983.unr = phi i64 [ %i.ajy, %.lr.ph872.preheader ], [ %indvars.iv.next984.prol, %.lr.ph872.prol ]
  br i1 %i.aki, label %.loopexit, label %.lr.ph872

.lr.ph872:                                        ; preds = %.lr.ph872.prol.loopexit, %.lr.ph872
  %indvars.iv983 = phi i64 [ %indvars.iv.next984.3, %.lr.ph872 ], [ %indvars.iv983.unr, %.lr.ph872.prol.loopexit ] ; 6 uses
  %i.aqm = shl nuw nsw i64 %indvars.iv983, 1
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.apw, i64 %i.aqm ; 2 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 1
  store i8 -1, ptr %i.aqo, align 1
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.apw, i64 %indvars.iv983
  %i.aqq = load i8, ptr %i.aqp, align 1
  store i8 %i.aqq, ptr %i.aqn, align 1
  %indvars.iv.next984 = add nsw i64 %indvars.iv983, -1 ; 2 uses
  %i.aqr = shl nuw nsw i64 %indvars.iv.next984, 1
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.apw, i64 %i.aqr ; 2 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 1
  store i8 -1, ptr %i.aqt, align 1
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.apw, i64 %indvars.iv.next984
  %i.aqv = load i8, ptr %i.aqu, align 1
  store i8 %i.aqv, ptr %i.aqs, align 1
  %indvars.iv.next984.1 = add nsw i64 %indvars.iv983, -2 ; 2 uses
  %i.aqw = shl nuw nsw i64 %indvars.iv.next984.1, 1
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.apw, i64 %i.aqw ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqx, i64 1
  store i8 -1, ptr %i.aqy, align 1
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.apw, i64 %indvars.iv.next984.1
  %i.ara = load i8, ptr %i.aqz, align 1
  store i8 %i.ara, ptr %i.aqx, align 1
  %indvars.iv.next984.2 = add nsw i64 %indvars.iv983, -3 ; 3 uses
  %i.arb = shl nuw nsw i64 %indvars.iv.next984.2, 1
  %i.arc = getelementptr inbounds nuw i8, ptr %i.apw, i64 %i.arb ; 2 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arc, i64 1
  store i8 -1, ptr %i.ard, align 1
  %i.are = getelementptr inbounds nuw i8, ptr %i.apw, i64 %indvars.iv.next984.2
  %i.arf = load i8, ptr %i.are, align 1
  store i8 %i.arf, ptr %i.arc, align 1
  %indvars.iv.next984.3 = add nsw i64 %indvars.iv983, -4
  %.not1047.3 = icmp eq i64 %indvars.iv.next984.2, 0
  br i1 %.not1047.3, label %.loopexit, label %.lr.ph872

.lr.ph869:                                        ; preds = %.lr.ph869.prol.loopexit, %.lr.ph869
  %indvars.iv980 = phi i64 [ %indvars.iv.next981.1, %.lr.ph869 ], [ %indvars.iv980.unr, %.lr.ph869.prol.loopexit ] ; 4 uses
  %i.arg = shl nsw i64 %indvars.iv980, 2
  %i.arh = getelementptr inbounds nuw i8, ptr %i.apw, i64 %i.arg ; 4 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 3
  store i8 -1, ptr %i.ari, align 1
  %i.arj = mul nuw nsw i64 %indvars.iv980, 3
  %i.ark = getelementptr inbounds nuw i8, ptr %i.apw, i64 %i.arj ; 3 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ark, i64 2
  %i.arm = load i8, ptr %i.arl, align 1
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arh, i64 2
  store i8 %i.arm, ptr %i.arn, align 1
  %i.aro = getelementptr inbounds nuw i8, ptr %i.ark, i64 1
  %i.arp = load i8, ptr %i.aro, align 1
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arh, i64 1
  store i8 %i.arp, ptr %i.arq, align 1
  %i.arr = load i8, ptr %i.ark, align 1
  store i8 %i.arr, ptr %i.arh, align 1
  %indvars.iv.next981 = add nsw i64 %indvars.iv980, -1 ; 3 uses
  %i.ars = shl nsw i64 %indvars.iv.next981, 2
  %i.art = getelementptr inbounds nuw i8, ptr %i.apw, i64 %i.ars ; 4 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 3
  store i8 -1, ptr %i.aru, align 1
  %i.arv = mul nuw nsw i64 %indvars.iv.next981, 3
  %i.arw = getelementptr inbounds nuw i8, ptr %i.apw, i64 %i.arv ; 3 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arw, i64 2
  %i.ary = load i8, ptr %i.arx, align 1
  %i.arz = getelementptr inbounds nuw i8, ptr %i.art, i64 2
  store i8 %i.ary, ptr %i.arz, align 1
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arw, i64 1
  %i.asb = load i8, ptr %i.asa, align 1
  %i.asc = getelementptr inbounds nuw i8, ptr %i.art, i64 1
  store i8 %i.asb, ptr %i.asc, align 1
  %i.asd = load i8, ptr %i.arw, align 1
  store i8 %i.asd, ptr %i.art, align 1
  %indvars.iv.next981.1 = add nsw i64 %indvars.iv980, -2
  %.not1046.1 = icmp eq i64 %indvars.iv.next981, 0
  br i1 %.not1046.1, label %.loopexit, label %.lr.ph869

.loopexit:                                        ; preds = %.lr.ph869.prol.loopexit, %.lr.ph869, %.lr.ph872.prol.loopexit, %.lr.ph872, %.preheader707, %.preheader, %.thread681
  %indvars.iv.next987 = add nuw nsw i64 %indvars.iv986, 1 ; 2 uses
  %exitcond990.not = icmp eq i64 %indvars.iv.next987, %wide.trip.count989
  br i1 %exitcond990.not, label %.loopexit713, label %bb.ai

bb.ax:                                            ; preds = %._crit_edge837
  br i1 %i.a, label %bb.ay, label %.loopexit713

bb.ay:                                            ; preds = %._crit_edge837.thread, %bb.ax
  %i.ase = mul i32 %i.c, %5                       ; 4 uses
  %.not877 = icmp eq i32 %i.ase, 0
  br i1 %.not877, label %.loopexit713, label %.lr.ph842.preheader

.lr.ph842.preheader:                              ; preds = %bb.ay
  %i.asf = load ptr, ptr %i.u, align 8            ; 2 uses
  %xtraiter1674 = and i32 %i.ase, 3               ; 3 uses
  %i.asg = icmp ult i32 %i.ase, 4
  br i1 %i.asg, label %.lr.ph842.epil.preheader, label %.lr.ph842.preheader.new

.lr.ph842.preheader.new:                          ; preds = %.lr.ph842.preheader
  %unroll_iter1678 = and i32 %i.ase, -4
  br label %.lr.ph842

.lr.ph842:                                        ; preds = %.lr.ph842, %.lr.ph842.preheader.new
  %.0840 = phi ptr [ %i.asf, %.lr.ph842.preheader.new ], [ %i.atm, %.lr.ph842 ] ; 10 uses
  %niter1679 = phi i32 [ 0, %.lr.ph842.preheader.new ], [ %niter1679.next.3, %.lr.ph842 ]
  %i.ash = load i8, ptr %.0840, align 1
  %i.asi = zext i8 %i.ash to i16
  %i.asj = shl nuw i16 %i.asi, 8
  %i.ask = getelementptr inbounds nuw i8, ptr %.0840, i64 1
  %i.asl = load i8, ptr %i.ask, align 1
  %i.asm = zext i8 %i.asl to i16
  %i.asn = or disjoint i16 %i.asj, %i.asm
  store i16 %i.asn, ptr %.0840, align 2
  %i.aso = getelementptr i8, ptr %.0840, i64 2    ; 2 uses
  %i.asp = load i8, ptr %i.aso, align 2
  %i.asq = zext i8 %i.asp to i16
  %i.asr = shl nuw i16 %i.asq, 8
  %i.ass = getelementptr i8, ptr %.0840, i64 3
  %i.ast = load i8, ptr %i.ass, align 1
  %i.asu = zext i8 %i.ast to i16
  %i.asv = or disjoint i16 %i.asr, %i.asu
  store i16 %i.asv, ptr %i.aso, align 2
  %i.asw = getelementptr i8, ptr %.0840, i64 4    ; 2 uses
  %i.asx = load i8, ptr %i.asw, align 2
  %i.asy = zext i8 %i.asx to i16
  %i.asz = shl nuw i16 %i.asy, 8
  %i.ata = getelementptr i8, ptr %.0840, i64 5
  %i.atb = load i8, ptr %i.ata, align 1
  %i.atc = zext i8 %i.atb to i16
  %i.atd = or disjoint i16 %i.asz, %i.atc
  store i16 %i.atd, ptr %i.asw, align 2
  %i.ate = getelementptr i8, ptr %.0840, i64 6    ; 2 uses
  %i.atf = load i8, ptr %i.ate, align 2
  %i.atg = zext i8 %i.atf to i16
  %i.ath = shl nuw i16 %i.atg, 8
  %i.ati = getelementptr i8, ptr %.0840, i64 7
  %i.atj = load i8, ptr %i.ati, align 1
  %i.atk = zext i8 %i.atj to i16
  %i.atl = or disjoint i16 %i.ath, %i.atk
  store i16 %i.atl, ptr %i.ate, align 2
  %i.atm = getelementptr i8, ptr %.0840, i64 8    ; 2 uses
  %niter1679.next.3 = add nuw i32 %niter1679, 4   ; 2 uses
  %niter1679.ncmp.3 = icmp eq i32 %niter1679.next.3, %unroll_iter1678
  br i1 %niter1679.ncmp.3, label %.loopexit713.loopexit.unr-lcssa, label %.lr.ph842

.loopexit713.sink.split:                          ; preds = %bb.k, %bb.i, %bb.h, %_m3dstbi__mul2sizes_valid.exit12.i, %_m3dstbi__mul2sizes_valid.exit.i, %bb.d, %_m3dstbi__mul2sizes_valid.exit.thread15.i, %_m3dstbi__malloc_mad3.exit, %_m3dstbi__malloc_mad3.exit.thread
  %.str.319.sink = phi ptr [ @.str.319, %bb.i ], [ @.str.319, %bb.h ], [ @.str.319, %_m3dstbi__mul2sizes_valid.exit12.i ], [ @.str.320, %_m3dstbi__malloc_mad3.exit ], [ @.str.320, %_m3dstbi__malloc_mad3.exit.thread ], [ @.str.319, %_m3dstbi__mul2sizes_valid.exit.thread15.i ], [ @.str.319, %bb.d ], [ @.str.319, %_m3dstbi__mul2sizes_valid.exit.i ], [ @.str.319, %bb.k ]
  store ptr %.str.319.sink, ptr @_m3dstbi__g_failure_reason, align 8
  br label %.loopexit713

.loopexit713.loopexit.unr-lcssa:                  ; preds = %.lr.ph842
  %lcmp.mod1676.not = icmp eq i32 %xtraiter1674, 0
  br i1 %lcmp.mod1676.not, label %.loopexit713, label %.lr.ph842.epil.preheader

.lr.ph842.epil.preheader:                         ; preds = %.loopexit713.loopexit.unr-lcssa, %.lr.ph842.preheader
  %.0840.epil.init = phi ptr [ %i.asf, %.lr.ph842.preheader ], [ %i.atm, %.loopexit713.loopexit.unr-lcssa ]
  %lcmp.mod1677 = icmp ne i32 %xtraiter1674, 0
  tail call void @llvm.assume(i1 %lcmp.mod1677)
  br label %.lr.ph842.epil

.lr.ph842.epil:                                   ; preds = %.lr.ph842.epil, %.lr.ph842.epil.preheader
  %.0840.epil = phi ptr [ %i.atu, %.lr.ph842.epil ], [ %.0840.epil.init, %.lr.ph842.epil.preheader ] ; 4 uses
  %epil.iter1675 = phi i32 [ %epil.iter1675.next, %.lr.ph842.epil ], [ 0, %.lr.ph842.epil.preheader ]
  %i.atn = load i8, ptr %.0840.epil, align 1
  %i.ato = zext i8 %i.atn to i16
  %i.atp = shl nuw i16 %i.ato, 8
  %i.atq = getelementptr inbounds nuw i8, ptr %.0840.epil, i64 1
  %i.atr = load i8, ptr %i.atq, align 1
  %i.ats = zext i8 %i.atr to i16
  %i.att = or disjoint i16 %i.atp, %i.ats
  store i16 %i.att, ptr %.0840.epil, align 2
  %i.atu = getelementptr i8, ptr %.0840.epil, i64 2
  %epil.iter1675.next = add i32 %epil.iter1675, 1 ; 2 uses
  %epil.iter1675.cmp.not = icmp eq i32 %epil.iter1675.next, %xtraiter1674
  br i1 %epil.iter1675.cmp.not, label %.loopexit713, label %.lr.ph842.epil, !llvm.loop !384

.loopexit713:                                     ; preds = %.loopexit, %.loopexit713.loopexit.unr-lcssa, %.lr.ph842.epil, %.loopexit713.sink.split, %._crit_edge837.thread, %bb.ay, %bb.ax
  %.2578 = phi i32 [ 1, %bb.ax ], [ 1, %bb.ay ], [ 1, %._crit_edge837.thread ], [ 0, %.loopexit713.sink.split ], [ 1, %.loopexit713.loopexit.unr-lcssa ], [ 1, %.lr.ph842.epil ], [ 1, %.loopexit ]
  ret i32 %.2578
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #47

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #32

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #41

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #32

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #48

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @par_shapes__cmp1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #21 {
bb.a:
  %.b = load i1, ptr @par_shapes__sort_context.1, align 8 ; 2 uses
  %i.a = select i1 %.b, i32 20, i32 0             ; 2 uses
  %i.b = load i16, ptr %0, align 2
  %i.c = load ptr, ptr @par_shapes__sort_context.0, align 8 ; 2 uses
  %i.d = zext i16 %i.b to i64
  %.idx = mul nuw nsw i64 %i.d, 12
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx ; 3 uses
  %i.f = load float, ptr %i.e, align 4
  %i.g = fptosi float %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = load float, ptr %i.h, align 4
  %i.j = fptosi float %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load float, ptr %i.k, align 4
  %i.m = fptosi float %i.l to i32
  %i.n = mul nsw i32 %i.a, %i.j
  %i.o = add nsw i32 %i.n, %i.g
  %i.p = select i1 %.b, i32 400, i32 0            ; 2 uses
  %i.q = mul nsw i32 %i.p, %i.m
  %i.r = add nsw i32 %i.o, %i.q
  %i.s = load i16, ptr %1, align 2
  %i.t = zext i16 %i.s to i64
  %.idx28 = mul nuw nsw i64 %i.t, 12
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx28 ; 3 uses
  %i.v = load float, ptr %i.u, align 4
  %i.w = fptosi float %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = load float, ptr %i.x, align 4
  %i.z = fptosi float %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load float, ptr %i.aa, align 4
  %i.ac = fptosi float %i.ab to i32
  %i.ad = mul nsw i32 %i.a, %i.z
  %i.ae = add nsw i32 %i.ad, %i.w
  %i.af = mul nsw i32 %i.p, %i.ac
  %i.ag = add nsw i32 %i.ae, %i.af
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.r, i32 %i.ag)
  ret i32 %.0
}

declare void @LoadTexture(ptr dead_on_unwind writable sret(%struct.Texture) align 4, ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #19

declare ptr @LoadFileText(ptr noundef) local_unnamed_addr #34

declare ptr @GetWorkingDirectory() local_unnamed_addr #34

declare ptr @GetDirectoryPath(ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind
declare i32 @chdir(ptr noundef) local_unnamed_addr #41

declare void @UnloadFileText(ptr noundef) local_unnamed_addr #34

declare ptr @MemAlloc(i32 noundef) local_unnamed_addr #34

declare void @MemFree(ptr noundef) local_unnamed_addr #34

declare ptr @TextFormat(ptr noundef, ...) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define internal fastcc void @BuildPoseFromParentJoints(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #33 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.b = getelementptr inbounds nuw [36 x i8], ptr %0, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.f = zext nneg i32 %i.d to i64
  %i.g = icmp samesign ult i64 %indvars.iv, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.337, i32 noundef %i.h, i32 noundef %i.d) #54
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  %i.k = zext nneg i32 %i.d to i64
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.n = load <2 x float>, ptr %i.m, align 4      ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.p = load <2 x float>, ptr %i.o, align 4      ; 5 uses
  %i.q = load <2 x float>, ptr %i.j, align 4      ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 20 ; 2 uses
  %i.s = load <2 x float>, ptr %i.r, align 4      ; 5 uses
  %i.t = shufflevector <2 x float> %i.n, <2 x float> %i.p, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.u = fneg <2 x float> %i.t                    ; 2 uses
  %i.v = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.w = fmul <2 x float> %i.v, %i.q
  %i.x = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.x, <2 x float> %i.w)
  %i.z = shufflevector <2 x float> %i.s, <2 x float> %i.q, <2 x i32> <i32 0, i32 2>
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.z, <2 x float> %i.y)
  %i.ab = shufflevector <2 x float> %i.p, <2 x float> %i.n, <2 x i32> <i32 0, i32 2>
  %i.ac = fneg <2 x float> %i.ab
  %i.ad = shufflevector <2 x float> %i.q, <2 x float> %i.s, <2 x i32> <i32 1, i32 2>
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ad, <2 x float> %i.aa)
  %i.af = shufflevector <2 x float> %i.p, <2 x float> %i.n, <2 x i32> <i32 1, i32 2>
  %i.ag = fneg <2 x float> %i.q
  %i.ah = shufflevector <2 x float> %i.s, <2 x float> %i.ag, <2 x i32> <i32 0, i32 2>
  %i.ai = fmul <2 x float> %i.af, %i.ah
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.x, <2 x float> %i.ai)
  %i.ak = shufflevector <2 x float> %i.n, <2 x float> %i.u, <2 x i32> <i32 0, i32 2>
  %i.al = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.al, <2 x float> %i.aj)
  %i.an = shufflevector <2 x float> %i.q, <2 x float> %i.s, <2 x i32> <i32 0, i32 2>
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.an, <2 x float> %i.am)
  store <2 x float> %i.ae, ptr %i.j, align 4
  store <2 x float> %i.ao, ptr %i.r, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  %i.aq = load i32, ptr %i.c, align 4
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [40 x i8], ptr %2, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %.sroa.030.0.copyload = load <2 x float>, ptr %i.ap, align 4
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 36 ; 2 uses
  %.sroa.231.0.copyload = load float, ptr %.sroa.231.0..sroa_idx, align 4
end_hunk_18
