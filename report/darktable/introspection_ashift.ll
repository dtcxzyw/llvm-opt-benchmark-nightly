Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_ashift?download=true
inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 78
begin_hunk_0_@edge_enhance_1d:bb.a
  store <4 x double> %wide.load257, ptr %i.fe, align 8, !tbaa !166
  %index.next258 = add nuw i32 %index253, 16      ; 2 uses
  %i.ff = icmp eq i32 %index.next258, %n.vec251
  br i1 %i.ff, label %middle.block259, label %vector.body252, !llvm.loop !573

middle.block259:                                  ; preds = %vector.body252
  br i1 %cmp.n260, label %._crit_edge102, label %vec.epilog.iter.check264

vec.epilog.iter.check264:                         ; preds = %middle.block259
  br i1 %min.epilog.iters.check265, label %.lr.ph101.split.split.split.preheader, label %vec.epilog.vector.body268, !prof !269

vec.epilog.vector.body268:                        ; preds = %vec.epilog.iter.check264, %vec.epilog.vector.body268
  %index269 = phi i32 [ %index.next271, %vec.epilog.vector.body268 ], [ %n.vec251, %vec.epilog.iter.check264 ] ; 2 uses
  %i.fg = zext nneg i32 %index269 to i64          ; 2 uses
  %i.fh = getelementptr [8 x i8], ptr %i.dp, i64 %i.fg
  %i.fi = getelementptr [8 x i8], ptr %i.dt, i64 %i.fg
  %wide.load270 = load <4 x double>, ptr %i.fi, align 8, !tbaa !166
  store <4 x double> %wide.load270, ptr %i.fh, align 8, !tbaa !166
  %index.next271 = add nuw i32 %index269, 4       ; 2 uses
  %i.fj = icmp eq i32 %index.next271, %n.vec267
  br i1 %i.fj, label %vec.epilog.middle.block272, label %vec.epilog.vector.body268, !llvm.loop !574

vec.epilog.middle.block272:                       ; preds = %vec.epilog.vector.body268
  br i1 %cmp.n273, label %._crit_edge102, label %.lr.ph101.split.split.split.preheader

.lr.ph101.split.split.split.preheader:            ; preds = %iter.check262, %vec.epilog.iter.check264, %vec.epilog.middle.block272
  %.073100.ph = phi i32 [ 0, %iter.check262 ], [ %n.vec251, %vec.epilog.iter.check264 ], [ %n.vec267, %vec.epilog.middle.block272 ]
  br label %.lr.ph101.split.split.split

.lr.ph101.split.split.us:                         ; preds = %.lr.ph101.split, %bb.e
  %.073100.us103 = phi i32 [ %i.fu, %bb.e ], [ 0, %.lr.ph101.split ] ; 7 uses
  %i.fk = sext i32 %.073100.us103 to i64
  %i.fl = getelementptr [8 x i8], ptr %i.dp, i64 %i.fk ; 2 uses
  %i.fm = icmp slt i32 %.073100.us103, 1
  br i1 %i.fm, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph101.split.split.us
  %.not85.us = icmp slt i32 %.073100.us103, %i.am
  br i1 %.not85.us, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.fn = zext nneg i32 %.073100.us103 to i64
  %i.fo = getelementptr [8 x i8], ptr %i.dp, i64 %i.fn
  %i.fp = getelementptr i8, ptr %i.fo, i64 -8
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph101.split.split.us
  %i.fq = sub nsw i32 1, %.073100.us103
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr [8 x i8], ptr %i.dp, i64 %i.fr
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0.us104.in = phi ptr [ %i.fl, %bb.b ], [ %i.fp, %bb.c ], [ %i.fs, %bb.d ]
  %.0.us104 = load double, ptr %.0.us104.in, align 8, !tbaa !166
  store double %.0.us104, ptr %i.fl, align 8, !tbaa !166
  %i.ft = icmp eq i32 %.073100.us103, 1
  %.1.us106 = select i1 %i.ft, i32 %spec.select, i32 %.073100.us103
  %i.fu = add nsw i32 %.1.us106, 1                ; 2 uses
  %i.fv = icmp slt i32 %i.fu, %2
  br i1 %i.fv, label %.lr.ph101.split.split.us, label %._crit_edge102

._crit_edge112.split:                             ; preds = %._crit_edge102, %.preheader.lr.ph, %.preheader87
  ret void

._crit_edge102.loopexit.unr-lcssa:                ; preds = %.lr.ph101.split.us.split.us
  br i1 %lcmp.mod.not, label %._crit_edge102, label %.lr.ph101.split.us.split.us.epil.preheader

.lr.ph101.split.us.split.us.epil.preheader:       ; preds = %._crit_edge102.loopexit.unr-lcssa, %iter.check
  %indvars.iv129.epil.init = phi i64 [ 0, %iter.check ], [ %indvars.iv.next130.7, %._crit_edge102.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod277)
  br label %.lr.ph101.split.us.split.us.epil

.lr.ph101.split.us.split.us.epil:                 ; preds = %.lr.ph101.split.us.split.us.epil, %.lr.ph101.split.us.split.us.epil.preheader
  %indvars.iv129.epil = phi i64 [ %indvars.iv.next130.epil, %.lr.ph101.split.us.split.us.epil ], [ %indvars.iv129.epil.init, %.lr.ph101.split.us.split.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph101.split.us.split.us.epil ], [ 0, %.lr.ph101.split.us.split.us.epil.preheader ]
  %i.fw = getelementptr [8 x i8], ptr %i.dp, i64 %indvars.iv129.epil
  %i.fx = getelementptr [8 x i8], ptr %i.dw, i64 %indvars.iv129.epil
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !166
  store double %i.fy, ptr %i.fw, align 8, !tbaa !166
  %indvars.iv.next130.epil = add nuw nsw i64 %indvars.iv129.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge102, label %.lr.ph101.split.us.split.us.epil, !llvm.loop !575

._crit_edge102:                                   ; preds = %.lr.ph101.split.split.split, %bb.e, %._crit_edge102.loopexit.unr-lcssa, %.lr.ph101.split.us.split.us.epil, %middle.block259, %vec.epilog.middle.block272
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count137
  br i1 %exitcond138.not, label %._crit_edge112.split, label %.preheader

.lr.ph101.split.split.split:                      ; preds = %.lr.ph101.split.split.split.preheader, %.lr.ph101.split.split.split
  %.073100 = phi i32 [ %i.gd, %.lr.ph101.split.split.split ], [ %.073100.ph, %.lr.ph101.split.split.split.preheader ] ; 2 uses
  %i.fz = zext nneg i32 %.073100 to i64           ; 2 uses
  %i.ga = getelementptr [8 x i8], ptr %i.dp, i64 %i.fz
  %i.gb = getelementptr [8 x i8], ptr %i.dt, i64 %i.fz
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !166
  store double %i.gc, ptr %i.ga, align 8, !tbaa !166
  %i.gd = add nuw nsw i32 %.073100, 1             ; 2 uses
  %i.ge = icmp slt i32 %i.gd, %2
  br i1 %i.ge, label %.lr.ph101.split.split.split, label %._crit_edge102, !llvm.loop !576
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #12

; Function Attrs: nounwind uwtable
define internal fastcc void @region_grow(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull captures(none) %5, ptr nofree noundef readonly captures(address_is_null) %6, double noundef %7) unnamed_addr #5 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !289
  %.not = icmp slt i32 %0, %i.c
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !290
  %.not97 = icmp slt i32 %1, %i.e
  br i1 %.not97, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.143) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

.thread:                                          ; preds = %bb.c
  %i.f = load ptr, ptr %2, align 8, !tbaa !291    ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.144) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.f:                                             ; preds = %.thread
  %i.h = icmp eq ptr %3, null
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.145) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.i = icmp eq ptr %6, null
  br i1 %i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = load ptr, ptr %6, align 8, !tbaa !293    ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.148) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.k:                                             ; preds = %bb.i
  store i32 1, ptr %4, align 4, !tbaa !17
  store i32 %0, ptr %3, align 4, !tbaa !303
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %1, ptr %i.l, align 4, !tbaa !304
  %i.m = load i32, ptr %i.b, align 8, !tbaa !289
  %i.n = mul i32 %i.m, %1
  %i.o = add i32 %i.n, %0
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.p
  %i.r = load double, ptr %i.q, align 8, !tbaa !166 ; 2 uses
  store double %i.r, ptr %5, align 8, !tbaa !166
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !294
  %i.u = mul i32 %i.t, %1
  %i.v = add i32 %i.u, %0
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.w
  store i8 1, ptr %i.x, align 1, !tbaa !177
  %i.y = load i32, ptr %4, align 4, !tbaa !17     ; 3 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph156, label %._crit_edge

.lr.ph156:                                        ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.ab = fcmp reassoc nsz arcp contract afn olt double %7, 0.000000e+00
  br i1 %i.ab, label %.lr.ph156.split.us.preheader, label %.lr.ph156.split.preheader

.lr.ph156.split.preheader:                        ; preds = %.lr.ph156
  %sincos = tail call reassoc nsz arcp contract afn { double, double } @llvm.sincos.f64(double %i.r) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0
  %cos = extractvalue { double, double } %sincos, 1
  br label %.lr.ph142

.lr.ph156.split.us.preheader:                     ; preds = %.lr.ph156
  %i.ac = zext nneg i32 %i.y to i64
  br label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph156.split.us.preheader, %._crit_edge143.split.us.us
  %indvars.iv169 = phi i64 [ 0, %.lr.ph156.split.us.preheader ], [ %indvars.iv.next170, %._crit_edge143.split.us.us ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv169 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !303 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !304 ; 2 uses
  %i.ah = add nsw i32 %i.ag, -1
  %i.ai = add nsw i32 %i.ae, -1
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.split.us.us.us
  %.086139.us.us157 = phi i32 [ %i.av, %._crit_edge.split.us.us.us ], [ %i.ai, %.lr.ph.us.us.preheader ] ; 6 uses
  br label %bb.l

bb.l:                                             ; preds = %isaligned.exit.thread.us.us.us, %.lr.ph.us.us
  %.085125.us.us.us = phi i32 [ %i.ah, %.lr.ph.us.us ], [ %i.au, %isaligned.exit.thread.us.us.us ] ; 6 uses
  %i.aj = or i32 %.085125.us.us.us, %.086139.us.us157
  %or.cond3.us.us.us = icmp sgt i32 %i.aj, -1
  br i1 %or.cond3.us.us.us, label %bb.m, label %isaligned.exit.thread.us.us.us

bb.m:                                             ; preds = %bb.l
  %i.ak = load i32, ptr %i.s, align 8, !tbaa !294 ; 2 uses
  %i.al = icmp slt i32 %.086139.us.us157, %i.ak
  br i1 %i.al, label %bb.n, label %isaligned.exit.thread.us.us.us

bb.n:                                             ; preds = %bb.m
  %i.am = load i32, ptr %i.aa, align 4, !tbaa !295
  %i.an = icmp slt i32 %.085125.us.us.us, %i.am
  br i1 %i.an, label %bb.o, label %isaligned.exit.thread.us.us.us

bb.o:                                             ; preds = %bb.n
  %i.ao = load ptr, ptr %6, align 8, !tbaa !293
  %i.ap = mul i32 %i.ak, %.085125.us.us.us
  %i.aq = add i32 %i.ap, %.086139.us.us157
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !177
  %.not100.us.us.us = icmp eq i8 %i.at, 1
  br i1 %.not100.us.us.us, label %isaligned.exit.thread.us.us.us, label %.split149.us

isaligned.exit.thread.us.us.us:                   ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %i.au = add nsw i32 %.085125.us.us.us, 1
  %.not99.us.us.us = icmp sgt i32 %.085125.us.us.us, %i.ag
  br i1 %.not99.us.us.us, label %._crit_edge.split.us.us.us, label %bb.l

._crit_edge.split.us.us.us:                       ; preds = %isaligned.exit.thread.us.us.us
  %i.av = add nsw i32 %.086139.us.us157, 1
  %.not98.us.us158 = icmp sgt i32 %.086139.us.us157, %i.ae
  br i1 %.not98.us.us158, label %._crit_edge143.split.us.us, label %.lr.ph.us.us

._crit_edge143.split.us.us:                       ; preds = %._crit_edge.split.us.us.us
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %8 = icmp samesign ult i64 %indvars.iv.next170, %i.ac
  br i1 %8, label %.lr.ph.us.us.preheader, label %._crit_edge

.lr.ph142:                                        ; preds = %._crit_edge143.split, %.lr.ph156.split.preheader
  %i.aw = phi i32 [ %i.y, %.lr.ph156.split.preheader ], [ %i.dh, %._crit_edge143.split ]
  %indvars.iv = phi i64 [ 0, %.lr.ph156.split.preheader ], [ %indvars.iv.next, %._crit_edge143.split ] ; 2 uses
  %.087154 = phi double [ %sin, %.lr.ph156.split.preheader ], [ %.3, %._crit_edge143.split ]
  %.088153 = phi double [ %cos, %.lr.ph156.split.preheader ], [ %.391, %._crit_edge143.split ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !303
  %i.az = add nsw i32 %i.ay, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  %.pre = load i32, ptr %i.ba, align 4, !tbaa !304
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %._crit_edge.split, %.lr.ph142
  %i.bb = phi i32 [ %i.aw, %.lr.ph142 ], [ %i.dh, %._crit_edge.split ]
  %i.bc = phi i32 [ %.pre, %.lr.ph142 ], [ %i.di, %._crit_edge.split ] ; 2 uses
  %.086139 = phi i32 [ %i.az, %.lr.ph142 ], [ %i.dk, %._crit_edge.split ] ; 9 uses
  %.1138 = phi double [ %.087154, %.lr.ph142 ], [ %.3, %._crit_edge.split ]
  %.189137 = phi double [ %.088153, %.lr.ph142 ], [ %.391, %._crit_edge.split ]
  %i.bd = add nsw i32 %i.bc, -1
  br label %.lr.ph

.split149.us:                                     ; preds = %bb.o
  %i.be = load ptr, ptr %2, align 8, !tbaa !291
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.split.us, label %bb.p

bb.p:                                             ; preds = %.split149.us
  %i.bg = load i32, ptr %i.b, align 8, !tbaa !289
  %.not.i.us = icmp slt i32 %.086139.us.us157, %i.bg
  br i1 %.not.i.us, label %bb.q, label %.split128.us

bb.q:                                             ; preds = %bb.p
  %i.bh = load i32, ptr %i.d, align 4, !tbaa !290
  %.not34.i.us = icmp slt i32 %.085125.us.us.us, %i.bh
  br i1 %.not34.i.us, label %.split130.us, label %.split128.us

.lr.ph:                                           ; preds = %.lr.ph.preheader, %isaligned.exit.thread
  %i.bi = phi i32 [ %i.dh, %isaligned.exit.thread ], [ %i.bb, %.lr.ph.preheader ] ; 6 uses
  %i.bj = phi i32 [ %i.di, %isaligned.exit.thread ], [ %i.bc, %.lr.ph.preheader ] ; 6 uses
  %.085125 = phi i32 [ %i.dj, %isaligned.exit.thread ], [ %i.bd, %.lr.ph.preheader ] ; 9 uses
  %.2124 = phi double [ %.3, %isaligned.exit.thread ], [ %.1138, %.lr.ph.preheader ] ; 7 uses
  %.290123 = phi double [ %.391, %isaligned.exit.thread ], [ %.189137, %.lr.ph.preheader ] ; 7 uses
  %i.bk = or i32 %.085125, %.086139
  %or.cond3 = icmp sgt i32 %i.bk, -1
  br i1 %or.cond3, label %bb.r, label %isaligned.exit.thread

bb.r:                                             ; preds = %.lr.ph
  %i.bl = load i32, ptr %i.s, align 8, !tbaa !294 ; 2 uses
  %i.bm = icmp slt i32 %.086139, %i.bl
  br i1 %i.bm, label %bb.s, label %isaligned.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.bn = load i32, ptr %i.aa, align 4, !tbaa !295
  %i.bo = icmp slt i32 %.085125, %i.bn
  br i1 %i.bo, label %bb.t, label %isaligned.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.bp = load ptr, ptr %6, align 8, !tbaa !293
  %i.bq = mul i32 %i.bl, %.085125
  %i.br = add i32 %i.bq, %.086139
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !177
  %.not100 = icmp eq i8 %i.bu, 1
  br i1 %.not100, label %isaligned.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = load double, ptr %5, align 8, !tbaa !166
  %i.bw = load ptr, ptr %2, align 8, !tbaa !291   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %.split.us, label %bb.v

.split.us:                                        ; preds = %bb.u, %.split149.us
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.149) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.by = load i32, ptr %i.b, align 8, !tbaa !289 ; 2 uses
  %.not.i = icmp slt i32 %.086139, %i.by
  br i1 %.not.i, label %bb.w, label %.split128.us

bb.w:                                             ; preds = %bb.v
  %i.bz = load i32, ptr %i.d, align 4, !tbaa !290
  %.not34.i = icmp slt i32 %.085125, %i.bz
  br i1 %.not34.i, label %bb.x, label %.split128.us

.split128.us:                                     ; preds = %bb.v, %bb.w, %bb.p, %bb.q
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.150) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.ca = mul i32 %i.by, %.085125
  %i.cb = add i32 %i.ca, %.086139
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.cc
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !166 ; 2 uses
  %i.cf = fcmp reassoc nsz arcp contract afn oeq double %i.ce, -1.024000e+03
  br i1 %i.cf, label %isaligned.exit.thread, label %isaligned.exit

.split130.us:                                     ; preds = %bb.q
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.151) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

isaligned.exit:                                   ; preds = %bb.x
  %i.cg = fsub reassoc nsz arcp contract afn double %i.bv, %i.ce ; 3 uses
  %i.ch = fcmp reassoc nsz arcp contract afn olt double %i.cg, 0.000000e+00
  %i.ci = fneg reassoc nsz arcp contract afn double %i.cg
  %spec.select.i = select nsz i1 %i.ch, double %i.ci, double %i.cg ; 3 uses
  %i.cj = fcmp reassoc nsz arcp contract afn ogt double %spec.select.i, f0x4012D97C7F3321D2
  %i.ck = fadd reassoc nsz arcp contract afn double %spec.select.i, f0xC01921FB54442D18 ; 3 uses
  %i.cl = fcmp reassoc nsz arcp contract afn olt double %i.ck, 0.000000e+00
  %i.cm = fneg reassoc nsz arcp contract afn double %i.ck
  %spec.select35.i = select nsz i1 %i.cl, double %i.cm, double %i.ck
  %.1.i = select nsz i1 %i.cj, double %spec.select35.i, double %spec.select.i
  %i.cn = fcmp reassoc nsz arcp contract afn ugt double %.1.i, %7
  br i1 %i.cn, label %isaligned.exit.thread, label %bb.y

bb.y:                                             ; preds = %isaligned.exit
  store i8 1, ptr %i.bt, align 1, !tbaa !177
  %i.co = load i32, ptr %4, align 4, !tbaa !17
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %3, i64 %i.cp
  store i32 %.086139, ptr %i.cq, align 4, !tbaa !303
  %i.cr = load i32, ptr %4, align 4, !tbaa !17
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %3, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i32 %.085125, ptr %i.cu, align 4, !tbaa !304
  %i.cv = load i32, ptr %4, align 4, !tbaa !17
  %i.cw = add nsw i32 %i.cv, 1                    ; 2 uses
  store i32 %i.cw, ptr %4, align 4, !tbaa !17
  %i.cx = load ptr, ptr %2, align 8, !tbaa !291
  %i.cy = load i32, ptr %i.b, align 8, !tbaa !289
  %i.cz = mul i32 %i.cy, %.085125
  %i.da = add i32 %i.cz, %.086139
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !166
  %sincos102 = tail call reassoc nsz arcp contract afn { double, double } @llvm.sincos.f64(double %i.dd) ; 2 uses
  %sin103 = extractvalue { double, double } %sincos102, 0
  %cos104 = extractvalue { double, double } %sincos102, 1
  %i.de = fadd reassoc nsz arcp contract afn double %cos104, %.290123 ; 2 uses
  %i.df = fadd reassoc nsz arcp contract afn double %sin103, %.2124 ; 2 uses
  %i.dg = tail call reassoc nsz arcp contract afn double @llvm.atan2.f64(double %i.df, double %i.de)
  store double %i.dg, ptr %5, align 8, !tbaa !166
  %.pre172 = load i32, ptr %i.ba, align 4, !tbaa !304
  br label %isaligned.exit.thread

isaligned.exit.thread:                            ; preds = %bb.x, %.lr.ph, %bb.r, %bb.s, %bb.t, %isaligned.exit, %bb.y
  %i.dh = phi i32 [ %i.cw, %bb.y ], [ %i.bi, %isaligned.exit ], [ %i.bi, %bb.t ], [ %i.bi, %bb.s ], [ %i.bi, %bb.r ], [ %i.bi, %.lr.ph ], [ %i.bi, %bb.x ] ; 4 uses
  %i.di = phi i32 [ %.pre172, %bb.y ], [ %i.bj, %isaligned.exit ], [ %i.bj, %bb.t ], [ %i.bj, %bb.s ], [ %i.bj, %bb.r ], [ %i.bj, %.lr.ph ], [ %i.bj, %bb.x ] ; 3 uses
  %.391 = phi nsz double [ %i.de, %bb.y ], [ %.290123, %isaligned.exit ], [ %.290123, %bb.t ], [ %.290123, %bb.s ], [ %.290123, %bb.r ], [ %.290123, %.lr.ph ], [ %.290123, %bb.x ] ; 3 uses
  %.3 = phi nsz double [ %i.df, %bb.y ], [ %.2124, %isaligned.exit ], [ %.2124, %bb.t ], [ %.2124, %bb.s ], [ %.2124, %bb.r ], [ %.2124, %.lr.ph ], [ %.2124, %bb.x ] ; 3 uses
  %i.dj = add nsw i32 %.085125, 1
  %.not99 = icmp sgt i32 %.085125, %i.di
  br i1 %.not99, label %._crit_edge.split, label %.lr.ph

._crit_edge.split:                                ; preds = %isaligned.exit.thread
  %.pre173 = load i32, ptr %i.ax, align 4, !tbaa !303
  %i.dk = add nsw i32 %.086139, 1
  %.not98 = icmp sgt i32 %.086139, %.pre173
  br i1 %.not98, label %._crit_edge143.split, label %.lr.ph.preheader

._crit_edge143.split:                             ; preds = %._crit_edge.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dl = sext i32 %i.dh to i64
  %i.dm = icmp slt i64 %indvars.iv.next, %i.dl
  br i1 %i.dm, label %.lr.ph142, label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge143.split, %._crit_edge143.split.us.us, %bb.k
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @region2rect(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, double noundef %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.152) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 2
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.153) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.g, label %bb.f

end_hunk_0
