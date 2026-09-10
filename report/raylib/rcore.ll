Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@sinfl_build:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dx, ptr nonnull align 4 %0, i64 %i.dy, i1 false)
  %i.dz = shl i32 %.262.i, 1
  %i.ea = sext i32 %i.dz to i64                   ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ea
  %i.ec = shl nsw i64 %i.ea, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eb, ptr nonnull align 4 %0, i64 %i.ec, i1 false)
  %i.ed = shl i32 %.262.i, 2
  %i.ee = add nsw i32 %.sroa.0.2, 2               ; 2 uses
  %exitcond129.not.1 = icmp eq i32 %i.ee, %2
  br i1 %exitcond129.not.1, label %sinfl_build_tbl.exit, label %.lr.ph63.i

.thread.i:                                        ; preds = %bb.e
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.3346.1, i64 2 ; 3 uses
  %i.eg = xor i32 %.sroa.26.1, %i.dh
  %i.eh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.eg, i1 true)
  %i.ei = lshr exact i32 -2147483648, %i.eh       ; 2 uses
  %i.ej = add i32 %i.ei, -1
  %i.ek = and i32 %i.ej, %.sroa.26.1
  %i.el = or i32 %i.ek, %i.ei                     ; 3 uses
  %i.em = add nsw i32 %.sroa.17.2, -1             ; 2 uses
  %.not48.i = icmp eq i32 %i.em, 0
  br i1 %.not48.i, label %.preheader53.i.preheader, label %bb.e

.preheader53.i.preheader:                         ; preds = %.thread.i
  %i.en = sext i32 %.sroa.0.1 to i64
  br label %.preheader53.i

.preheader53.i:                                   ; preds = %.preheader53.i.preheader, %bb.g
  %indvars.iv126 = phi i64 [ %i.en, %.preheader53.i.preheader ], [ %indvars.iv.next127, %bb.g ] ; 3 uses
  %.4.i = phi i32 [ %.03961.i, %.preheader53.i.preheader ], [ %.5.i, %bb.g ] ; 3 uses
  %indvars.iv.next127 = add nsw i64 %indvars.iv126, 1 ; 3 uses
  %.not49.not.i = icmp slt i64 %indvars.iv126, %i.de
  br i1 %.not49.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader53.i
  %i.eo = sext i32 %.4.i to i64                   ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eo
  %i.eq = shl nsw i64 %i.eo, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ep, ptr nonnull align 4 %0, i64 %i.eq, i1 false)
  %i.er = shl i32 %.4.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader53.i
  %.5.i = phi i32 [ %i.er, %bb.f ], [ %.4.i, %.preheader53.i ] ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.next127
  %i.et = load i32, ptr %i.es, align 4            ; 3 uses
  %.not50.i = icmp eq i32 %i.et, 0
  br i1 %.not50.i, label %.preheader53.i, label %.loopexit54.i

.loopexit:                                        ; preds = %.loopexit54.i, %._crit_edge.i
  %.sroa.0.3.ph = phi i32 [ %i.db, %._crit_edge.i ], [ %i.dg, %.loopexit54.i ]
  %.sroa.17.3.ph = phi i32 [ %i.da, %._crit_edge.i ], [ %i.et, %.loopexit54.i ]
  %.sroa.26.2.ph = phi i32 [ 0, %._crit_edge.i ], [ %i.el, %.loopexit54.i ]
  %.sroa.3346.2.ph = phi ptr [ %i.cr, %._crit_edge.i ], [ %i.ef, %.loopexit54.i ]
  %i.eu = shl nuw nsw i32 1, %2                   ; 2 uses
  %i.ev = add nsw i32 %i.eu, -1
  %i.ew = sub nsw i32 0, %2
  %i.ex = sext i32 %i.ew to i64
  %i.ey = zext nneg i32 %2 to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.b, i64 %i.ey
  br label %.loopexit.i.outer

.loopexit.i.loopexit:                             ; preds = %bb.l
  %i.ez = trunc nsw i64 %indvars.iv.next79.i to i32
  br label %.loopexit.i.outer

.loopexit.i.outer:                                ; preds = %.loopexit.i.loopexit, %.loopexit
  %.sroa.17.4.ph = phi i32 [ %i.go, %.loopexit.i.loopexit ], [ %.sroa.17.3.ph, %.loopexit ]
  %.sroa.26.3.ph = phi i32 [ %i.gk, %.loopexit.i.loopexit ], [ %.sroa.26.2.ph, %.loopexit ]
  %.sroa.3346.3.ph = phi ptr [ %i.ge, %.loopexit.i.loopexit ], [ %.sroa.3346.2.ph, %.loopexit ]
  %.pre82.i.ph = phi i32 [ %i.ez, %.loopexit.i.loopexit ], [ %.sroa.0.3.ph, %.loopexit ] ; 4 uses
  %.057.i.ph = phi i32 [ %.158.i, %.loopexit.i.loopexit ], [ 0, %.loopexit ]
  %.055.i.ph = phi i32 [ %.156.i, %.loopexit.i.loopexit ], [ -1, %.loopexit ]
  %.054.i.ph = phi i32 [ %.1.i, %.loopexit.i.loopexit ], [ %i.eu, %.loopexit ]
  %.pre136 = sub nsw i32 %.pre82.i.ph, %2         ; 3 uses
  %.pre137 = shl nuw i32 1, %.pre136              ; 3 uses
  %i.fa = sext i32 %.pre82.i.ph to i64
  %i.fb = add nsw i64 %i.fa, %i.ex
  %i.fc = and i32 %.pre136, 15
  %i.fd = sext i32 %.pre137 to i64
  %notmask.i = shl nsw i32 -1, %.pre82.i.ph
  %i.fe = xor i32 %notmask.i, -1                  ; 2 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.outer, %bb.k
  %.sroa.17.4 = phi i32 [ %i.gl, %bb.k ], [ %.sroa.17.4.ph, %.loopexit.i.outer ] ; 3 uses
  %.sroa.26.3 = phi i32 [ %i.gk, %bb.k ], [ %.sroa.26.3.ph, %.loopexit.i.outer ] ; 5 uses
  %.sroa.3346.3 = phi ptr [ %i.ge, %bb.k ], [ %.sroa.3346.3.ph, %.loopexit.i.outer ] ; 2 uses
  %.057.i = phi i32 [ %.158.i, %bb.k ], [ %.057.i.ph, %.loopexit.i.outer ]
  %.055.i = phi i32 [ %.156.i, %bb.k ], [ %.055.i.ph, %.loopexit.i.outer ] ; 2 uses
  %.054.i = phi i32 [ %.1.i, %bb.k ], [ %.054.i.ph, %.loopexit.i.outer ] ; 4 uses
  %i.ff = and i32 %.sroa.26.3, %i.ev              ; 3 uses
  %.not.i35 = icmp eq i32 %i.ff, %.055.i
  br i1 %.not.i35, label %._crit_edge135, label %bb.h

bb.h:                                             ; preds = %.loopexit.i
  %i.fg = icmp slt i32 %.sroa.17.4, %.pre137
  br i1 %i.fg, label %.lr.ph.i37, label %._crit_edge.i36

.lr.ph.i37:                                       ; preds = %bb.h, %.lr.ph.i37
  %indvars.iv.i38 = phi i64 [ %indvars.iv.next.i39, %.lr.ph.i37 ], [ %i.fb, %bb.h ]
  %.05267.i = phi i32 [ %i.fj, %.lr.ph.i37 ], [ %.sroa.17.4, %bb.h ]
  %indvars.iv.next.i39 = add nsw i64 %indvars.iv.i38, 1 ; 3 uses
  %i.fh = shl i32 %.05267.i, 1
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i39
  %i.fi = load i32, ptr %gep.i, align 4
  %i.fj = add nsw i32 %i.fi, %i.fh                ; 2 uses
  %i.fk = trunc nsw i64 %indvars.iv.next.i39 to i32 ; 2 uses
  %i.fl = shl nuw i32 1, %i.fk                    ; 2 uses
  %i.fm = icmp slt i32 %i.fj, %i.fl
  br i1 %i.fm, label %.lr.ph.i37, label %._crit_edge.i36

._crit_edge.i36:                                  ; preds = %.lr.ph.i37, %bb.h
  %.059.lcssa.i = phi i32 [ %.pre136, %bb.h ], [ %i.fk, %.lr.ph.i37 ]
  %.lcssa.i = phi i32 [ %.pre137, %bb.h ], [ %i.fl, %.lr.ph.i37 ]
  %i.fn = add nsw i32 %.lcssa.i, %.054.i
  %i.fo = shl i32 %.054.i, 16
  %i.fp = and i32 %.059.lcssa.i, 15
  %i.fq = or disjoint i32 %i.fp, %i.fo
  %i.fr = or disjoint i32 %i.fq, 16
  %i.fs = zext nneg i32 %i.ff to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fs
  store i32 %i.fr, ptr %i.ft, align 4
  br label %._crit_edge135

._crit_edge135:                                   ; preds = %.loopexit.i, %._crit_edge.i36
  %.158.i = phi i32 [ %.054.i, %._crit_edge.i36 ], [ %.057.i, %.loopexit.i ] ; 3 uses
  %.156.i = phi i32 [ %i.ff, %._crit_edge.i36 ], [ %.055.i, %.loopexit.i ] ; 2 uses
  %.1.i = phi i32 [ %i.fn, %._crit_edge.i36 ], [ %.054.i, %.loopexit.i ] ; 3 uses
  %i.fu = load i16, ptr %.sroa.3346.3, align 2
  %i.fv = sext i16 %i.fu to i32
  %i.fw = shl nsw i32 %i.fv, 16
  %i.fx = or disjoint i32 %i.fw, %i.fc
  %i.fy = ashr i32 %.sroa.26.3, %2
  %i.fz = add i32 %.158.i, %i.fy
  %i.ga = sext i32 %i.fz to i64
  %i.gb = sext i32 %.1.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %._crit_edge135
  %indvars.iv75.i = phi i64 [ %indvars.iv.next76.i, %bb.i ], [ %i.ga, %._crit_edge135 ] ; 2 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv75.i
  store i32 %i.fx, ptr %i.gc, align 4
  %indvars.iv.next76.i = add nsw i64 %indvars.iv75.i, %i.fd ; 2 uses
  %i.gd = icmp slt i64 %indvars.iv.next76.i, %i.gb
  br i1 %i.gd, label %bb.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not65.i = icmp eq i32 %.sroa.26.3, %i.fe
  br i1 %.not65.i, label %sinfl_build_tbl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.3346.3, i64 2 ; 2 uses
  %i.gf = xor i32 %.sroa.26.3, %i.fe
  %i.gg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gf, i1 true)
  %i.gh = lshr exact i32 -2147483648, %i.gg       ; 2 uses
  %i.gi = add nsw i32 %i.gh, -1
  %i.gj = and i32 %i.gi, %.sroa.26.3
  %i.gk = or i32 %i.gj, %i.gh                     ; 2 uses
  %i.gl = add nsw i32 %.sroa.17.4, -1             ; 2 uses
  %.not6469.i = icmp eq i32 %i.gl, 0
  br i1 %.not6469.i, label %.lr.ph71.i, label %.loopexit.i

.lr.ph71.i:                                       ; preds = %bb.k
  %i.gm = sext i32 %.pre82.i.ph to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph71.i
  %indvars.iv78.i = phi i64 [ %i.gm, %.lr.ph71.i ], [ %indvars.iv.next79.i, %bb.l ]
  %indvars.iv.next79.i = add nsw i64 %indvars.iv78.i, 1 ; 3 uses
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.next79.i
  %i.go = load i32, ptr %i.gn, align 4            ; 2 uses
  %.not64.i = icmp eq i32 %i.go, 0
  br i1 %.not64.i, label %bb.l, label %.loopexit.i.loopexit

sinfl_build_tbl.exit:                             ; preds = %.lr.ph63.i.prol.loopexit, %.lr.ph63.i, %bb.j, %.preheader, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #31

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sdefl_huff(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 19, 289) %3, i32 noundef range(i32 7, 16) %4) unnamed_addr #53 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 12 uses
  %i.b = alloca [288 x i32], align 16             ; 13 uses
  %i.c = alloca [16 x i32], align 16              ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1152) %i.b, i8 0, i64 1152, i1 false)
  %i.d = add nuw nsw i32 %3, 3
  %i.e = and i32 %i.d, 1020                       ; 3 uses
  %i.f = add nsw i32 %i.e, -1                     ; 4 uses
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 10 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %unroll_iter = and i64 %wide.trip.count.i, 510
  br label %bb.b

.lr.ph.preheader.i.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.i.unr-lcssa
  %lcmp.mod105 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod105)
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i.1
  %i.h = load i32, ptr %i.g, align 4
  %..i.epil = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.f)
  %i.i = zext nneg i32 %..i.epil to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.unr-lcssa, %.epil.preheader
  %wide.trip.count66.i = zext nneg i32 %i.e to i64 ; 2 uses
  %i.m = icmp eq i32 %i.e, 4
  br i1 %i.m, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %i.n = add nsw i64 %wide.trip.count66.i, -8
  br label %.lr.ph.i

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %bb.a ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.p = load i32, ptr %i.o, align 4
  %..i = tail call i32 @llvm.umin.i32(i32 %i.p, i32 %i.f)
  %i.q = zext nneg i32 %..i to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %..i.1 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.f)
  %i.x = zext nneg i32 %..i.1 to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.i.unr-lcssa, label %bb.b

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv63.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next64.i.3, %.lr.ph.i ] ; 5 uses
  %.053.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %niter111 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter111.next.3, %.lr.ph.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv63.i ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4
  store i32 %.053.i, ptr %i.ab, align 4
  %i.ad = add i32 %i.ac, %.053.i                  ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv63.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  store i32 %i.ad, ptr %i.af, align 4
  %i.ah = add i32 %i.ag, %i.ad                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv63.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  store i32 %i.ah, ptr %i.aj, align 4
  %i.al = add i32 %i.ak, %i.ah                    ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv63.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4
  store i32 %i.al, ptr %i.an, align 4
  %i.ap = add i32 %i.ao, %i.al                    ; 2 uses
  %indvars.iv.next64.i.3 = add nuw nsw i64 %indvars.iv63.i, 4 ; 2 uses
  %niter111.next.3 = add nuw nsw i64 %niter111, 4
  %niter111.ncmp.3 = icmp eq i64 %niter111, %i.n
  br i1 %niter111.ncmp.3, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv63.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next64.i.3, %.lr.ph.i ]
  %.053.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ap, %.lr.ph.i ]
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv63.i.epil = phi i64 [ %indvars.iv63.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next64.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.053.i.epil = phi i32 [ %.053.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.as, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv63.i.epil ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4
  store i32 %.053.i.epil, ptr %i.aq, align 4
  %i.as = add i32 %i.ar, %.053.i.epil             ; 6 uses
  %indvars.iv.next64.i.epil = add nuw nsw i64 %indvars.iv63.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph.i.epil, !llvm.loop !295

.preheader.i:                                     ; preds = %.lr.ph.i.epil, %bb.e
  %indvars.iv68.i = phi i64 [ %indvars.iv.next69.i, %bb.e ], [ 0, %.lr.ph.i.epil ] ; 4 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv68.i
  %i.au = load i32, ptr %i.at, align 4            ; 3 uses
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.av = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.f)
  %i.aw = shl i32 %i.au, 10
  %i.ax = trunc nuw nsw i64 %indvars.iv68.i to i32
  %i.ay = or i32 %i.aw, %i.ax
  %i.az = zext nneg i32 %i.av to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4            ; 2 uses
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4
  %i.bd = zext i32 %i.bb to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bd
  store i32 %i.ay, ptr %i.be, align 4
  br label %bb.e

bb.d:                                             ; preds = %.preheader.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv68.i
  store i8 0, ptr %i.bf, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %exitcond72.not.i = icmp eq i64 %indvars.iv.next69.i, %wide.trip.count.i
  br i1 %exitcond72.not.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  %i.bg = getelementptr [4 x i8], ptr %i.b, i64 %wide.trip.count66.i ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -8
  %i.bi = load i32, ptr %i.bh, align 8            ; 2 uses
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bj ; 3 uses
  %i.bl = getelementptr i8, ptr %i.bg, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = sub i32 %i.bm, %i.bi                    ; 6 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 -4 ; 12 uses
  %i.bp = lshr i32 %i.bn, 1                       ; 2 uses
  %.not7.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not7.i.i.i, label %sdefl_heap_array.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.f
  %i.bq = zext i32 %i.bn to i64                   ; 2 uses
  %i.br = lshr i64 %i.bq, 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %sdefl_heap_sub.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.br, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %sdefl_heap_sub.exit.i.i.i ] ; 5 uses
  %.08.i.i.i = phi i32 [ %i.bp, %.lr.ph.preheader.i.i.i ], [ %i.cn, %sdefl_heap_sub.exit.i.i.i ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i.i
  %i.bt = load i32, ptr %i.bs, align 4            ; 2 uses
  %i.bu = shl nuw nsw i64 %indvars.iv.i.i.i, 1    ; 2 uses
  %.not27.i.i.i.i = icmp samesign ugt i64 %i.bu, %i.bq
  br i1 %.not27.i.i.i.i, label %sdefl_heap_sub.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.i.i.i
  %i.bv = trunc nuw i64 %i.bu to i32
  %i.bw = trunc nuw i64 %indvars.iv.i.i.i to i32
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.i.preheader.i.i.i
  %i.bx = phi i32 [ %i.cl, %bb.i ], [ %i.bv, %.lr.ph.i.preheader.i.i.i ] ; 6 uses
  %.028.i.i.i.i = phi i32 [ %.022.i.i.i.i, %bb.i ], [ %i.bw, %.lr.ph.i.preheader.i.i.i ]
  %i.by = icmp ult i32 %i.bx, %i.bn
  br i1 %i.by, label %bb.g, label %.lr.ph._crit_edge.i.i.i.i

.lr.ph._crit_edge.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i
  %.phi.trans.insert.i.i.i.i = zext i32 %i.bx to i64 ; 2 uses
  %.phi.trans.insert31.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.phi.trans.insert.i.i.i.i
  %.pre.i.i.i.i = load i32, ptr %.phi.trans.insert31.i.i.i.i, align 4
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bz = or disjoint i32 %i.bx, 1                ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4            ; 2 uses
  %i.cd = zext i32 %i.bx to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4            ; 2 uses
  %i.cg = icmp ugt i32 %i.cc, %i.cf
  %spec.select.i.i.i.i = select i1 %i.cg, i32 %i.bz, i32 %i.bx ; 2 uses
  %i.ch = tail call i32 @llvm.umax.i32(i32 %i.cc, i32 %i.cf)
  %.pre33.i.i.i.i = zext i32 %spec.select.i.i.i.i to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph._crit_edge.i.i.i.i
  %.pre-phi34.i.i.i.i = phi i64 [ %.phi.trans.insert.i.i.i.i, %.lr.ph._crit_edge.i.i.i.i ], [ %.pre33.i.i.i.i, %bb.g ]
  %i.ci = phi i32 [ %.pre.i.i.i.i, %.lr.ph._crit_edge.i.i.i.i ], [ %i.ch, %bb.g ] ; 2 uses
  %.022.i.i.i.i = phi i32 [ %i.bx, %.lr.ph._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.g ] ; 2 uses
  %.not26.i.i.i.i = icmp ult i32 %i.bt, %i.ci
  %i.cj = zext i32 %.028.i.i.i.i to i64           ; 2 uses
  br i1 %.not26.i.i.i.i, label %bb.i, label %sdefl_heap_sub.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cj
  store i32 %i.ci, ptr %i.ck, align 4
  %i.cl = shl i32 %.022.i.i.i.i, 1                ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.cl, %i.bn
  br i1 %.not.i.i.i.i, label %sdefl_heap_sub.exit.i.i.i, label %.lr.ph.i.i.i.i

sdefl_heap_sub.exit.i.i.i:                        ; preds = %bb.i, %bb.h, %.lr.ph.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %indvars.iv.i.i.i, %.lr.ph.i.i.i ], [ %.pre-phi34.i.i.i.i, %bb.i ], [ %i.cj, %bb.h ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.pre-phi.i.i.i.i
  store i32 %i.bt, ptr %i.cm, align 4
  %i.cn = add nsw i32 %.08.i.i.i, -1              ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.cn, 0
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1
  br i1 %.not.i.i.i, label %sdefl_heap_array.exit.i.i, label %.lr.ph.i.i.i

sdefl_heap_array.exit.i.i:                        ; preds = %sdefl_heap_sub.exit.i.i.i, %bb.f
  %i.co = icmp ugt i32 %i.bn, 1
  br i1 %i.co, label %.lr.ph.preheader.i.i, label %sdefl_sort_sym.exit

.lr.ph.preheader.i.i:                             ; preds = %sdefl_heap_array.exit.i.i
  %i.cp = zext i32 %i.bn to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %sdefl_heap_sub.exit.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.cp, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %sdefl_heap_sub.exit.i.i ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4            ; 3 uses
  %i.cs = load i32, ptr %i.bk, align 4
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %indvars.i.i = trunc i64 %indvars.iv.next.i.i to i32 ; 3 uses
  store i32 %i.cs, ptr %i.cq, align 4
  store i32 %i.cr, ptr %i.bk, align 4
end_hunk_0
begin_hunk_1_@sdefl_huff:bb.a
  store i32 %i.ga, ptr %i.fq, align 4
  %.not35.i = icmp samesign ult i32 %i.fx, %4
  br i1 %.not35.i, label %.lr.ph..loopexit_crit_edge.i, label %.preheader.i43

.lr.ph..loopexit_crit_edge.i:                     ; preds = %.lr.ph.i40
  %.phi.trans.insert.i = zext nneg i32 %i.fx to i64 ; 2 uses
  %.phi.trans.insert42.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.phi.trans.insert.i
  %.pre.i = load i32, ptr %.phi.trans.insert42.i, align 4
  %i.gb = add nuw nsw i32 %i.fw, 2
  br label %.loopexit.i

.preheader.i43:                                   ; preds = %.lr.ph.i40, %.preheader.i43
  %.0.i44 = phi i32 [ %i.gc, %.preheader.i43 ], [ %4, %.lr.ph.i40 ] ; 2 uses
  %i.gc = add i32 %.0.i44, -1                     ; 2 uses
  %i.gd = zext i32 %i.gc to i64                   ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4            ; 2 uses
  %.not36.i = icmp eq i32 %i.gf, 0
  br i1 %.not36.i, label %.preheader.i43, label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i43, %.lr.ph..loopexit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.phi.trans.insert.i, %.lr.ph..loopexit_crit_edge.i ], [ %i.gd, %.preheader.i43 ]
  %i.gg = phi i32 [ %.pre.i, %.lr.ph..loopexit_crit_edge.i ], [ %i.gf, %.preheader.i43 ]
  %.1.i45 = phi i32 [ %i.gb, %.lr.ph..loopexit_crit_edge.i ], [ %.0.i44, %.preheader.i43 ]
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre-phi.i
  %i.gi = add i32 %i.gg, -1
  store i32 %i.gi, ptr %i.gh, align 4
  %i.gj = zext i32 %.1.i45 to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gj ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4
  %i.gm = add i32 %i.gl, 2
  store i32 %i.gm, ptr %i.gk, align 4
  %i.gn = icmp samesign ugt i64 %indvars.iv.i41, 1
  br i1 %i.gn, label %.lr.ph.i40, label %sdefl_gen_len_cnt.exit

sdefl_gen_len_cnt.exit:                           ; preds = %.loopexit.i, %sdefl_build_tree.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  %i.go = zext nneg i32 %4 to i64                 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.i, %sdefl_gen_len_cnt.exit
  %indvars.iv.i46 = phi i64 [ %i.go, %sdefl_gen_len_cnt.exit ], [ %indvars.iv.next.i48, %._crit_edge.i ] ; 3 uses
  %.02532.i = phi i32 [ 0, %sdefl_gen_len_cnt.exit ], [ %.126.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i46
  %i.gq = load i32, ptr %i.gp, align 4            ; 5 uses
  %.not2829.i = icmp eq i32 %i.gq, 0
  br i1 %.not2829.i, label %._crit_edge.i, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %bb.z
  %i.gr = trunc i64 %indvars.iv.i46 to i8         ; 5 uses
  %xtraiter112 = and i32 %i.gq, 3                 ; 2 uses
  %lcmp.mod113.not = icmp eq i32 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i47, %.prol.preheader
  %.031.i.prol = phi i32 [ %i.gs, %.prol.preheader ], [ %i.gq, %.lr.ph.i47 ]
  %.12630.i.prol = phi i32 [ %i.gt, %.prol.preheader ], [ %.02532.i, %.lr.ph.i47 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i47 ]
  %i.gs = add i32 %.031.i.prol, -1                ; 2 uses
  %i.gt = add i32 %.12630.i.prol, 1               ; 3 uses
  %i.gu = zext i32 %.12630.i.prol to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4
  %i.gx = and i32 %i.gw, 1023
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 %i.gy
  store i8 %i.gr, ptr %i.gz, align 1
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter112
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !296

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i47
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i47 ], [ %i.gt, %.prol.preheader ]
  %.031.i.unr = phi i32 [ %i.gq, %.lr.ph.i47 ], [ %i.gs, %.prol.preheader ]
  %.12630.i.unr = phi i32 [ %.02532.i, %.lr.ph.i47 ], [ %i.gt, %.prol.preheader ]
  %i.ha = icmp ult i32 %i.gq, 4
  br i1 %i.ha, label %._crit_edge.i, label %.lr.ph.i47.new

.lr.ph.i47.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i47.new
  %.031.i = phi i32 [ %i.hw, %.lr.ph.i47.new ], [ %.031.i.unr, %.prol.loopexit ]
  %.12630.i = phi i32 [ %i.hx, %.lr.ph.i47.new ], [ %.12630.i.unr, %.prol.loopexit ] ; 5 uses
  %i.hb = add i32 %.12630.i, 1
  %i.hc = zext i32 %.12630.i to i64
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4
  %i.hf = and i32 %i.he, 1023
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 %i.hg
  store i8 %i.gr, ptr %i.hh, align 1
  %i.hi = add i32 %.12630.i, 2
  %i.hj = zext i32 %i.hb to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4
  %i.hm = and i32 %i.hl, 1023
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 %i.hn
  store i8 %i.gr, ptr %i.ho, align 1
  %i.hp = add i32 %.12630.i, 3
  %i.hq = zext i32 %i.hi to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4
  %i.ht = and i32 %i.hs, 1023
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 %i.hu
  store i8 %i.gr, ptr %i.hv, align 1
  %i.hw = add i32 %.031.i, -4                     ; 2 uses
  %i.hx = add i32 %.12630.i, 4                    ; 2 uses
  %i.hy = zext i32 %i.hp to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hy
  %i.ia = load i32, ptr %i.hz, align 4
  %i.ib = and i32 %i.ia, 1023
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 %i.ic
  store i8 %i.gr, ptr %i.id, align 1
  %.not28.i.3 = icmp eq i32 %i.hw, 0
  br i1 %.not28.i.3, label %._crit_edge.i, label %.lr.ph.i47.new

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i47.new, %bb.z
  %.126.lcssa.i = phi i32 [ %.02532.i, %bb.z ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.hx, %.lr.ph.i47.new ]
  %indvars.iv.next.i48 = add nsw i64 %indvars.iv.i46, -1 ; 2 uses
  %i.ie = and i64 %indvars.iv.next.i48, 4294967295
  %.not.i49 = icmp eq i64 %i.ie, 0
  br i1 %.not.i49, label %.new114, label %bb.z

.new114:                                          ; preds = %._crit_edge.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.if, align 4
  store i32 0, ptr %i.a, align 16
  %i.ig = add nsw i64 %i.go, -1                   ; 2 uses
  %xtraiter116 = and i64 %i.ig, 3                 ; 3 uses
  %unroll_iter120 = and i64 %i.ig, -4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.new114
  %i.ih = phi i32 [ 0, %.new114 ], [ %i.je, %bb.aa ]
  %indvars.iv37.i = phi i64 [ 2, %.new114 ], [ %indvars.iv.next38.i.3, %bb.aa ] ; 6 uses
  %niter121 = phi i64 [ 0, %.new114 ], [ %niter121.next.3, %bb.aa ]
  %i.ii = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv37.i
  %i.ij = getelementptr i8, ptr %i.ii, i64 -4
  %i.ik = load i32, ptr %i.ij, align 4
  %i.il = add i32 %i.ik, %i.ih
  %i.im = shl i32 %i.il, 1                        ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv37.i
  store i32 %i.im, ptr %i.in, align 8
  %indvars.iv.next38.i = or disjoint i64 %indvars.iv37.i, 1 ; 2 uses
  %i.io = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next38.i
  %i.ip = getelementptr i8, ptr %i.io, i64 -4
  %i.iq = load i32, ptr %i.ip, align 8
  %i.ir = add i32 %i.iq, %i.im
  %i.is = shl i32 %i.ir, 1                        ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next38.i
  store i32 %i.is, ptr %i.it, align 4
  %indvars.iv.next38.i.1 = add nuw nsw i64 %indvars.iv37.i, 2 ; 2 uses
  %i.iu = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next38.i.1
  %i.iv = getelementptr i8, ptr %i.iu, i64 -4
  %i.iw = load i32, ptr %i.iv, align 4
  %i.ix = add i32 %i.iw, %i.is
  %i.iy = shl i32 %i.ix, 1                        ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next38.i.1
  store i32 %i.iy, ptr %i.iz, align 8
  %indvars.iv.next38.i.2 = add nuw nsw i64 %indvars.iv37.i, 3 ; 2 uses
  %i.ja = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next38.i.2
  %i.jb = getelementptr i8, ptr %i.ja, i64 -4
  %i.jc = load i32, ptr %i.jb, align 8
  %i.jd = add i32 %i.jc, %i.iy
  %i.je = shl i32 %i.jd, 1                        ; 3 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next38.i.2
  store i32 %i.je, ptr %i.jf, align 4
  %indvars.iv.next38.i.3 = add nuw nsw i64 %indvars.iv37.i, 4 ; 2 uses
  %niter121.next.3 = add nuw i64 %niter121, 4     ; 2 uses
  %niter121.ncmp.3 = icmp eq i64 %niter121.next.3, %unroll_iter120
  br i1 %niter121.ncmp.3, label %.preheader.i52.preheader.unr-lcssa, label %bb.aa

.preheader.i52.preheader.unr-lcssa:               ; preds = %bb.aa
  %lcmp.mod118.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod118.not, label %.preheader.i52.preheader, label %.epil.preheader115

.epil.preheader115:                               ; preds = %.preheader.i52.preheader.unr-lcssa
  %lcmp.mod119 = icmp ne i64 %xtraiter116, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader115
  %i.jg = phi i32 [ %i.je, %.epil.preheader115 ], [ %i.jl, %bb.ab ]
  %indvars.iv37.i.epil = phi i64 [ %indvars.iv.next38.i.3, %.epil.preheader115 ], [ %indvars.iv.next38.i.epil, %bb.ab ] ; 3 uses
  %epil.iter117 = phi i64 [ 0, %.epil.preheader115 ], [ %epil.iter117.next, %bb.ab ]
  %i.jh = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv37.i.epil
  %i.ji = getelementptr i8, ptr %i.jh, i64 -4
  %i.jj = load i32, ptr %i.ji, align 4
  %i.jk = add i32 %i.jj, %i.jg
  %i.jl = shl i32 %i.jk, 1                        ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv37.i.epil
  store i32 %i.jl, ptr %i.jm, align 4
  %indvars.iv.next38.i.epil = add nuw nsw i64 %indvars.iv37.i.epil, 1
  %epil.iter117.next = add i64 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i64 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %.preheader.i52.preheader, label %bb.ab, !llvm.loop !297

.preheader.i52.preheader:                         ; preds = %bb.ab, %.preheader.i52.preheader.unr-lcssa
  %xtraiter122 = and i64 %wide.trip.count.i, 1
  %unroll_iter126 = and i64 %wide.trip.count.i, 510
  br label %.preheader.i52

.preheader.i52:                                   ; preds = %.preheader.i52, %.preheader.i52.preheader
  %indvars.iv41.i = phi i64 [ 0, %.preheader.i52.preheader ], [ %indvars.iv.next42.i.1, %.preheader.i52 ] ; 4 uses
  %niter127 = phi i64 [ 0, %.preheader.i52.preheader ], [ %niter127.next.1, %.preheader.i52 ]
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv41.i
  %i.jo = load i8, ptr %i.jn, align 1
  %i.jp = zext i8 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jp ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4            ; 2 uses
  %i.js = add i32 %i.jr, 1
  store i32 %i.js, ptr %i.jq, align 4
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv41.i
  store i32 %i.jr, ptr %i.jt, align 4
  %indvars.iv.next42.i = or disjoint i64 %indvars.iv41.i, 1 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next42.i
  %i.jv = load i8, ptr %i.ju, align 1
  %i.jw = zext i8 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jw ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4            ; 2 uses
  %i.jz = add i32 %i.jy, 1
  store i32 %i.jz, ptr %i.jx, align 4
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next42.i
  store i32 %i.jy, ptr %i.ka, align 4
  %indvars.iv.next42.i.1 = add nuw nsw i64 %indvars.iv41.i, 2 ; 3 uses
  %niter127.next.1 = add nuw nsw i64 %niter127, 2 ; 2 uses
  %niter127.ncmp.1 = icmp eq i64 %niter127.next.1, %unroll_iter126
  br i1 %niter127.ncmp.1, label %sdefl_gen_codes.exit.unr-lcssa, label %.preheader.i52

sdefl_gen_codes.exit.unr-lcssa:                   ; preds = %.preheader.i52
  %lcmp.mod124.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod124.not, label %sdefl_gen_codes.exit, label %.preheader.i52.epil.preheader

.preheader.i52.epil.preheader:                    ; preds = %sdefl_gen_codes.exit.unr-lcssa
  %lcmp.mod125 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next42.i.1
  %i.kc = load i8, ptr %i.kb, align 1
  %i.kd = zext i8 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kd ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4            ; 2 uses
  %i.kg = add i32 %i.kf, 1
  store i32 %i.kg, ptr %i.ke, align 4
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next42.i.1
  store i32 %i.kf, ptr %i.kh, align 4
  br label %sdefl_gen_codes.exit

sdefl_gen_codes.exit:                             ; preds = %sdefl_gen_codes.exit.unr-lcssa, %.preheader.i52.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %i.ki = shl nuw nsw i64 %wide.trip.count.i, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.ki
  %scevgep100 = getelementptr i8, ptr %0, i64 %wide.trip.count.i
  %bound0 = icmp ult ptr %1, %scevgep100
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %sdefl_gen_codes.exit
  %n.vec = and i64 %wide.trip.count.i, 508        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.kj, align 4, !alias.scope !303, !noalias !304
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load101 = load <4 x i8>, ptr %i.kk, align 1, !alias.scope !304
  %i.kl = trunc <4 x i32> %wide.load to <4 x i16>
  %i.km = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.kl)
  %i.kn = zext <4 x i16> %i.km to <4 x i32>
  %i.ko = zext <4 x i8> %wide.load101 to <4 x i32>
  %i.kp = sub nsw <4 x i32> splat (i32 16), %i.ko
  %i.kq = lshr <4 x i32> %i.kn, %i.kp
  store <4 x i32> %i.kq, ptr %i.kj, align 4, !alias.scope !303, !noalias !304
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kr = icmp eq i64 %index.next, %n.vec
  br i1 %i.kr, label %middle.block, label %vector.body, !llvm.loop !301

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %sdefl_gen_codes.exit, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %sdefl_gen_codes.exit ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.kv = load i8, ptr %i.ku, align 1
  %trunc.i = trunc i32 %i.kt to i16
  %rev.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i)
  %i.kw = zext i16 %rev.i to i32
  %i.kx = zext i8 %i.kv to i32
  %i.ky = sub nsw i32 16, %i.kx
  %i.kz = lshr i32 %i.kw, %i.ky
  store i32 %i.kz, ptr %i.ks, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !302

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %sdefl_sort_sym.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #56
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #35

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #54

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #55

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bitreverse.v4i16(<4 x i16>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { nofree nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
