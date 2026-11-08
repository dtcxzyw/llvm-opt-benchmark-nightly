Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Shyper?download=true
inline.NumInlined: 104
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 71
begin_hunk_0_@H5Sget_regular_hyperslab:bb.a
  %unroll_iter130 = and i64 %wide.trip.count101, 4294967292
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph85.new
  %indvars.iv98 = phi i64 [ 0, %.lr.ph85.new ], [ %indvars.iv.next99.3, %bb.w ] ; 6 uses
  %niter131 = phi i64 [ 0, %.lr.ph85.new ], [ %niter131.next.3, %bb.w ]
  %i.ei = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %i.ei, i64 %indvars.iv98
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !42
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv98
  store i64 %i.el, ptr %i.em, align 8, !tbaa !18
  %indvars.iv.next99 = or disjoint i64 %indvars.iv98, 1 ; 2 uses
  %i.en = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.eo = getelementptr inbounds nuw [32 x i8], ptr %i.en, i64 %indvars.iv.next99
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !42
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next99
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !18
  %indvars.iv.next99.1 = or disjoint i64 %indvars.iv98, 2 ; 2 uses
  %i.es = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.et = getelementptr inbounds nuw [32 x i8], ptr %i.es, i64 %indvars.iv.next99.1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !42
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next99.1
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !18
  %indvars.iv.next99.2 = or disjoint i64 %indvars.iv98, 3 ; 2 uses
  %i.ex = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.ey = getelementptr inbounds nuw [32 x i8], ptr %i.ex, i64 %indvars.iv.next99.2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !42
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next99.2
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !18
  %indvars.iv.next99.3 = add nuw nsw i64 %indvars.iv98, 4 ; 2 uses
  %niter131.next.3 = add i64 %niter131, 4         ; 2 uses
  %niter131.ncmp.3 = icmp eq i64 %niter131.next.3, %unroll_iter130
  br i1 %niter131.ncmp.3, label %.loopexit76.loopexit.unr-lcssa, label %bb.w, !llvm.loop !216

.loopexit76.loopexit.unr-lcssa:                   ; preds = %bb.w
  %lcmp.mod128.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod128.not, label %.loopexit76, label %.epil.preheader125

.epil.preheader125:                               ; preds = %.loopexit76.loopexit.unr-lcssa, %.lr.ph85
  %indvars.iv98.epil.init = phi i64 [ 0, %.lr.ph85 ], [ %indvars.iv.next99.3, %.loopexit76.loopexit.unr-lcssa ]
  %lcmp.mod129 = icmp ne i64 %xtraiter126, 0
  call void @llvm.assume(i1 %lcmp.mod129)
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.epil.preheader125
  %indvars.iv98.epil = phi i64 [ %indvars.iv98.epil.init, %.epil.preheader125 ], [ %indvars.iv.next99.epil, %bb.x ] ; 3 uses
  %epil.iter127 = phi i64 [ 0, %.epil.preheader125 ], [ %epil.iter127.next, %bb.x ]
  %i.fc = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.fd = getelementptr inbounds nuw [32 x i8], ptr %i.fc, i64 %indvars.iv98.epil
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !42
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv98.epil
  store i64 %i.ff, ptr %i.fg, align 8, !tbaa !18
  %indvars.iv.next99.epil = add nuw nsw i64 %indvars.iv98.epil, 1
  %epil.iter127.next = add i64 %epil.iter127, 1   ; 2 uses
  %epil.iter127.cmp.not = icmp eq i64 %epil.iter127.next, %xtraiter126
  br i1 %epil.iter127.cmp.not, label %.loopexit76, label %bb.x, !llvm.loop !217

.loopexit76:                                      ; preds = %.loopexit76.loopexit.unr-lcssa, %bb.x, %.preheader75, %.loopexit78
  %.not55 = icmp eq ptr %4, null
  br i1 %.not55, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit76
  %i.fh = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !33 ; 3 uses
  %.not91 = icmp eq i32 %i.fi, 0
  br i1 %.not91, label %.loopexit, label %.lr.ph87

.lr.ph87:                                         ; preds = %.preheader
  %wide.trip.count106 = zext i32 %i.fi to i64     ; 2 uses
  %xtraiter133 = and i64 %wide.trip.count106, 3   ; 3 uses
  %i.fj = icmp ult i32 %i.fi, 4
  br i1 %i.fj, label %.epil.preheader132, label %.lr.ph87.new

.lr.ph87.new:                                     ; preds = %.lr.ph87
  %unroll_iter137 = and i64 %wide.trip.count106, 4294967292
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph87.new
  %indvars.iv103 = phi i64 [ 0, %.lr.ph87.new ], [ %indvars.iv.next104.3, %bb.y ] ; 6 uses
  %niter138 = phi i64 [ 0, %.lr.ph87.new ], [ %niter138.next.3, %bb.y ]
  %i.fk = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.fl = getelementptr inbounds nuw [32 x i8], ptr %i.fk, i64 %indvars.iv103
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !52
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv103
  store i64 %i.fn, ptr %i.fo, align 8, !tbaa !18
  %indvars.iv.next104 = or disjoint i64 %indvars.iv103, 1 ; 2 uses
  %i.fp = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.fq = getelementptr inbounds nuw [32 x i8], ptr %i.fp, i64 %indvars.iv.next104
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !52
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next104
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !18
  %indvars.iv.next104.1 = or disjoint i64 %indvars.iv103, 2 ; 2 uses
  %i.fu = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.fv = getelementptr inbounds nuw [32 x i8], ptr %i.fu, i64 %indvars.iv.next104.1
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !52
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next104.1
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !18
  %indvars.iv.next104.2 = or disjoint i64 %indvars.iv103, 3 ; 2 uses
  %i.fz = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.ga = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %indvars.iv.next104.2
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !52
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next104.2
  store i64 %i.gc, ptr %i.gd, align 8, !tbaa !18
  %indvars.iv.next104.3 = add nuw nsw i64 %indvars.iv103, 4 ; 2 uses
  %niter138.next.3 = add i64 %niter138, 4         ; 2 uses
  %niter138.ncmp.3 = icmp eq i64 %niter138.next.3, %unroll_iter137
  br i1 %niter138.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.y, !llvm.loop !218

.thread72:                                        ; preds = %H5S__hyper_is_regular.exit.thread, %bb.l, %bb.j
  %i.ge = call i32 @H5CX_pop(i1 noundef zeroext true) #14 ; 0 uses
  br label %.thread66

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.y
  %lcmp.mod135.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod135.not, label %.loopexit, label %.epil.preheader132

.epil.preheader132:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph87
  %indvars.iv103.epil.init = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next104.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod136 = icmp ne i64 %xtraiter133, 0
  call void @llvm.assume(i1 %lcmp.mod136)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader132
  %indvars.iv103.epil = phi i64 [ %indvars.iv103.epil.init, %.epil.preheader132 ], [ %indvars.iv.next104.epil, %bb.z ] ; 3 uses
  %epil.iter134 = phi i64 [ 0, %.epil.preheader132 ], [ %epil.iter134.next, %bb.z ]
  %i.gf = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.gg = getelementptr inbounds nuw [32 x i8], ptr %i.gf, i64 %indvars.iv103.epil
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !52
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv103.epil
  store i64 %i.gi, ptr %i.gj, align 8, !tbaa !18
  %indvars.iv.next104.epil = add nuw nsw i64 %indvars.iv103.epil, 1
  %epil.iter134.next = add i64 %epil.iter134, 1   ; 2 uses
  %epil.iter134.cmp.not = icmp eq i64 %epil.iter134.next, %xtraiter133
  br i1 %epil.iter134.cmp.not, label %.loopexit, label %bb.z, !llvm.loop !219

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.z, %.preheader, %.loopexit76
  %i.gk = call i32 @H5CX_pop(i1 noundef zeroext true) #14 ; 0 uses
  br label %bb.aa

.thread66:                                        ; preds = %bb.h, %bb.f, %bb.c, %.thread72
  %i.gl = call i32 @H5E_dump_api_stack() #14      ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit, %.thread66
  %.0446169 = phi i32 [ -1, %.thread66 ], [ 0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret i32 %.0446169
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @H5S__hyper_iter_coords(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.loopexit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %i.i = load i8, ptr %i.h, align 4, !tbaa !24, !range !14, !noundef !15
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.l = load i32, ptr %i.k, align 8, !tbaa !24   ; 3 uses
  %.not = icmp ne i32 %i.l, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !70 ; 4 uses
  %i.m = icmp ult i32 %i.l, %.pre
  %or.cond = select i1 %.not, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.d, label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.n = icmp sgt i32 %.pre, 0
  br i1 %i.n, label %.lr.ph56, label %.loopexit

.lr.ph56:                                         ; preds = %bb.d
  %i.o = add nsw i32 %.pre, -1
  %i.p = add nsw i32 %i.l, -1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph56, %.critedge2
  %.055 = phi i32 [ %i.p, %.lr.ph56 ], [ %.2, %.critedge2 ] ; 3 uses
  %.04154 = phi i32 [ %i.o, %.lr.ph56 ], [ %.3, %.critedge2 ] ; 4 uses
  %i.s = zext nneg i32 %.04154 to i64             ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !24, !range !14, !noundef !15
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.preheader.preheader, label %.lr.ph.preheader

.preheader.preheader:                             ; preds = %bb.e
  %i.w = icmp sgt i32 %.04154, 0
  br i1 %i.w, label %.lr.ph80, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.x = sext i32 %.055 to i64
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph80
  %i.y = icmp sgt i32 %i.ad, 0
  br i1 %i.y, label %.lr.ph80, label %.critedge, !llvm.loop !220

.lr.ph80:                                         ; preds = %.preheader.preheader, %.preheader
  %indvars.iv6279 = phi i64 [ %indvars.iv.next63, %.preheader ], [ %i.s, %.preheader.preheader ]
  %indvars.iv.next63 = add nsw i64 %indvars.iv6279, -1 ; 3 uses
  %i.z = and i64 %indvars.iv.next63, 4294967295
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !24, !range !14, !noundef !15
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = trunc i64 %indvars.iv.next63 to i32     ; 2 uses
  br i1 %i.ac, label %.preheader, label %.critedge.split.loop.exit73, !llvm.loop !220

.critedge.split.loop.exit73:                      ; preds = %.lr.ph80
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  br label %.critedge

.critedge:                                        ; preds = %.preheader, %.preheader.preheader, %.critedge.split.loop.exit73
  %.lcssa = phi i32 [ %i.ae, %.critedge.split.loop.exit73 ], [ 0, %.preheader.preheader ], [ 0, %.preheader ] ; 3 uses
  %i.af = sext i32 %.055 to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !24
  %i.ai = add nuw i32 %.04154, 1
  %i.aj = sub i32 %i.ai, %.lcssa
  %i.ak = zext nneg i32 %.lcssa to i64            ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ak
  %i.an = tail call i32 @H5VM_array_calc(i64 noundef %i.ah, i32 noundef %i.aj, ptr noundef nonnull %i.al, ptr noundef %i.am) #14 ; 0 uses
  %i.ao = add nsw i32 %.lcssa, -1
  %i.ap = add nsw i32 %.055, -1
  br label %.critedge2

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv57 = phi i64 [ %i.x, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.24348 = phi i32 [ %.04154, %.lr.ph.preheader ], [ %3, %bb.f ] ; 4 uses
  %2 = zext nneg i32 %.24348 to i64               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 %2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !24, !range !14, !noundef !15
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %.critedge2.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv57
  %i.au = load i64, ptr %i.at, align 8, !tbaa !24
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  store i64 %i.au, ptr %i.av, align 8, !tbaa !18
  %3 = add nsw i32 %.24348, -1
  %indvars.iv.next = add nsw i64 %indvars.iv57, -1
  %i.aw = icmp sgt i32 %.24348, 0
  br i1 %i.aw, label %.lr.ph, label %.loopexit, !llvm.loop !221

.critedge2.loopexit:                              ; preds = %.lr.ph
  %i.ax = trunc nsw i64 %indvars.iv57 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge
  %.3 = phi i32 [ %i.ao, %.critedge ], [ %.24348, %.critedge2.loopexit ] ; 2 uses
  %.2 = phi i32 [ %i.ap, %.critedge ], [ %i.ax, %.critedge2.loopexit ]
  %i.ay = icmp sgt i32 %.3, -1
  br i1 %i.ay, label %bb.e, label %.loopexit, !llvm.loop !222

bb.g:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !70
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.c, %bb.g
  %.sink = phi i32 [ %i.ba, %bb.g ], [ %.pre, %bb.c ]
  %i.bb = zext i32 %.sink to i64
  %i.bc = shl nuw nsw i64 %i.bb, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr nonnull align 8 %i.g, i64 %i.bc, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge2, %bb.f, %.loopexit.sink.split, %bb.d, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5S__hyper_iter_block(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #9 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.loopexit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 552        ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %i.i = load i8, ptr %i.h, align 4, !tbaa !24, !range !14, !noundef !15
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !70   ; 6 uses
  %.not29 = icmp eq i32 %i.l, 0                   ; 2 uses
  br i1 %i.j, label %.preheader, label %.preheader24

.preheader24:                                     ; preds = %bb.b
  br i1 %.not29, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2904 ; 3 uses
  %wide.trip.count = zext i32 %i.l to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.n = icmp eq i32 %i.l, 1
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.c

.preheader:                                       ; preds = %bb.b
  br i1 %.not29, label %.loopexit, label %.lr.ph28.preheader

.lr.ph28.preheader:                               ; preds = %.preheader
  %wide.trip.count35 = zext i32 %i.l to i64       ; 6 uses
  %min.iters.check = icmp ult i32 %i.l, 31
  br i1 %min.iters.check, label %.lr.ph28.preheader74, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph28.preheader
  %i.o = shl nuw nsw i64 %wide.trip.count35, 3    ; 3 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 3 uses
  %i.q = getelementptr i8, ptr %2, i64 %i.o       ; 3 uses
  %i.r = getelementptr i8, ptr %0, i64 1096       ; 2 uses
  %i.s = shl nuw nsw i64 %wide.trip.count35, 5
  %i.t = getelementptr i8, ptr %0, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 1072     ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 %i.o
  %i.w = getelementptr i8, ptr %i.v, i64 552      ; 2 uses
  %bound0 = icmp ult ptr %1, %i.q
  %bound1 = icmp ult ptr %2, %i.p
  %found.conflict = and i1 %bound0, %bound1
  %bound059 = icmp ult ptr %1, %i.u
  %bound160 = icmp ult ptr %i.r, %i.p
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx = or i1 %found.conflict, %found.conflict61
  %bound062 = icmp ult ptr %1, %i.w
  %bound163 = icmp ult ptr %i.g, %i.p
  %found.conflict64 = and i1 %bound062, %bound163
  %conflict.rdx65 = or i1 %conflict.rdx, %found.conflict64
  %bound066 = icmp ult ptr %2, %i.u
  %bound167 = icmp ult ptr %i.r, %i.q
  %found.conflict68 = and i1 %bound066, %bound167
  %conflict.rdx69 = or i1 %conflict.rdx65, %found.conflict68
  %bound070 = icmp ult ptr %2, %i.w
  %bound171 = icmp ult ptr %i.g, %i.q
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx73 = or i1 %conflict.rdx69, %found.conflict72
  br i1 %conflict.rdx73, label %.lr.ph28.preheader74, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.x = add nsw i64 %wide.trip.count35, -1
  %n.vec = and i64 %i.x, -2                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index
  %wide.load = load <2 x i64>, ptr %i.y, align 8, !tbaa !24, !alias.scope !231 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  store <2 x i64> %wide.load, ptr %i.z, align 8, !tbaa !18, !alias.scope !232, !noalias !233
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %index
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %index
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1096
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1128
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !24, !alias.scope !234
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !24, !alias.scope !234
  %i.ag = insertelement <2 x i64> poison, i64 %i.ae, i64 0
  %i.ah = insertelement <2 x i64> %i.ag, i64 %i.af, i64 1
  %i.ai = add <2 x i64> %wide.load, splat (i64 -1)
  %i.aj = add <2 x i64> %i.ai, %i.ah
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  store <2 x i64> %i.aj, ptr %i.ak, align 8, !tbaa !18, !alias.scope !235, !noalias !236
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %.lr.ph28.preheader74, label %vector.body, !llvm.loop !228

.lr.ph28.preheader74:                             ; preds = %vector.body, %vector.memcheck, %.lr.ph28.preheader
  %indvars.iv32.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph28.preheader ], [ %n.vec, %vector.body ] ; 7 uses
  %xtraiter77 = and i64 %wide.trip.count35, 1
  %lcmp.mod78.not = icmp eq i64 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %.lr.ph28.prol.loopexit, label %.lr.ph28.prol

.lr.ph28.prol:                                    ; preds = %.lr.ph28.preheader74
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv32.ph
  %i.an = load i64, ptr %i.am, align 8, !tbaa !24 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv32.ph
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv32.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1096
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !24
  %i.as = add i64 %i.an, -1
  %i.at = add i64 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv32.ph
  store i64 %i.at, ptr %i.au, align 8, !tbaa !18
  %indvars.iv.next33.prol = or disjoint i64 %indvars.iv32.ph, 1
  br label %.lr.ph28.prol.loopexit

.lr.ph28.prol.loopexit:                           ; preds = %.lr.ph28.prol, %.lr.ph28.preheader74
  %indvars.iv32.unr = phi i64 [ %indvars.iv32.ph, %.lr.ph28.preheader74 ], [ %indvars.iv.next33.prol, %.lr.ph28.prol ]
  %i.av = add nsw i64 %wide.trip.count35, -1
  %i.aw = icmp eq i64 %indvars.iv32.ph, %i.av
  br i1 %i.aw, label %.loopexit, label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph28.prol.loopexit, %.lr.ph28
  %indvars.iv32 = phi i64 [ %indvars.iv.next33.1, %.lr.ph28 ], [ %indvars.iv32.unr, %.lr.ph28.prol.loopexit ] ; 6 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !24 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv32
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1096
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !24
  %i.bd = add i64 %i.ay, -1
  %i.be = add i64 %i.bd, %i.bc
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv32
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !18
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next33
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !24 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next33
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv.next33
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1096
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !24
  %i.bm = add i64 %i.bh, -1
  %i.bn = add i64 %i.bm, %i.bl
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next33
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !18
  %indvars.iv.next33.1 = add nuw nsw i64 %indvars.iv32, 2 ; 2 uses
  %exitcond36.not.1 = icmp eq i64 %indvars.iv.next33.1, %wide.trip.count35
  br i1 %exitcond36.not.1, label %.loopexit, label %.lr.ph28, !llvm.loop !229

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !24
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !61
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !18
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !65
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !18
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !61
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !18
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !65
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !18
end_hunk_0
