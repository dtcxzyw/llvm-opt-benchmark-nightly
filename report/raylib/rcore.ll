Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@sinfl_build:bb.a
.lr.ph98.epil.preheader:                          ; preds = %._crit_edge99.loopexit.unr-lcssa, %.lr.ph98.preheader
  %indvars.iv121.epil.init = phi i64 [ 0, %.lr.ph98.preheader ], [ %indvars.iv.next122.1, %._crit_edge99.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod206 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod206)
  %i.cg = trunc i64 %indvars.iv121.epil.init to i16
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv121.epil.init
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4            ; 2 uses
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4
  %i.cn = sext i32 %i.cl to i64
  %i.co = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.cn
  store i16 %i.cg, ptr %i.co, align 2
  br label %._crit_edge99.loopexit

._crit_edge99.loopexit:                           ; preds = %._crit_edge99.loopexit.unr-lcssa, %.lr.ph98.epil.preheader
  %.pre134 = load i32, ptr %i.c, align 16
  %i.cp = sext i32 %.pre134 to i64
  br label %._crit_edge99

._crit_edge99:                                    ; preds = %._crit_edge99.loopexit, %bb.c
  %i.cq = phi i64 [ %i.cp, %._crit_edge99.loopexit ], [ 0, %bb.c ]
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.cq ; 2 uses
  %i.cs = shl nuw nsw i32 1, %3
  %i.ct = icmp slt i32 %i.bm, %i.cs
  br i1 %i.ct, label %.preheader, label %bb.d

.preheader:                                       ; preds = %._crit_edge99, %.preheader
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %.preheader ], [ 0, %._crit_edge99 ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv130
  store i32 1, ptr %i.cu, align 4
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.cv = trunc nuw nsw i64 %indvars.iv.next131 to i32
  %.3.highbits = lshr i32 %i.cv, %2
  %i.cw = icmp eq i32 %.3.highbits, 0
  br i1 %i.cw, label %.preheader, label %sinfl_build_tbl.exit

bb.d:                                             ; preds = %._crit_edge99
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cy = load i32, ptr %i.cx, align 4            ; 2 uses
  %.not59.i = icmp eq i32 %i.cy, 0
  br i1 %.not59.i, label %.lr.ph.i, label %.preheader55.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 1, %bb.d ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.da = load i32, ptr %i.cz, align 4            ; 3 uses
  %.not.i = icmp eq i32 %i.da, 0
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.db = trunc nsw i64 %indvars.iv.next.i to i32 ; 3 uses
  %.not4660.i = icmp slt i32 %2, %i.db
  br i1 %.not4660.i, label %.loopexit, label %.preheader55.lr.ph.i

.preheader55.lr.ph.i:                             ; preds = %bb.d, %._crit_edge.i
  %i.dc = phi i32 [ %i.db, %._crit_edge.i ], [ 1, %bb.d ] ; 2 uses
  %.sroa.17.068 = phi i32 [ %i.da, %._crit_edge.i ], [ %i.cy, %bb.d ]
  %i.dd = shl nuw nsw i32 1, %i.dc
  %i.de = zext nneg i32 %2 to i64
  br label %.preheader55.i

.loopexit54.i:                                    ; preds = %bb.g
  %i.df = trunc nsw i64 %indvars.iv126 to i32
  %i.dg = trunc nsw i64 %indvars.iv.next127 to i32 ; 2 uses
  %.not46.i.not = icmp sgt i32 %2, %i.df
  br i1 %.not46.i.not, label %.preheader55.i, label %.loopexit

.preheader55.i:                                   ; preds = %.loopexit54.i, %.preheader55.lr.ph.i
  %.sroa.0.1 = phi i32 [ %i.dc, %.preheader55.lr.ph.i ], [ %i.dg, %.loopexit54.i ] ; 7 uses
  %.sroa.17.1 = phi i32 [ %.sroa.17.068, %.preheader55.lr.ph.i ], [ %i.et, %.loopexit54.i ]
  %.sroa.26.0 = phi i32 [ 0, %.preheader55.lr.ph.i ], [ %i.el, %.loopexit54.i ]
  %.sroa.3346.0 = phi ptr [ %i.cr, %.preheader55.lr.ph.i ], [ %i.ef, %.loopexit54.i ]
  %.03961.i = phi i32 [ %i.dd, %.preheader55.lr.ph.i ], [ %.5.i, %.loopexit54.i ] ; 5 uses
  %i.dh = add nsw i32 %.03961.i, -1               ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.thread.i, %.preheader55.i
  %.sroa.17.2 = phi i32 [ %.sroa.17.1, %.preheader55.i ], [ %i.em, %.thread.i ]
  %.sroa.26.1 = phi i32 [ %.sroa.26.0, %.preheader55.i ], [ %i.el, %.thread.i ] ; 4 uses
  %.sroa.3346.1 = phi ptr [ %.sroa.3346.0, %.preheader55.i ], [ %i.ef, %.thread.i ] ; 2 uses
  %i.di = load i16, ptr %.sroa.3346.1, align 2
  %i.dj = sext i16 %i.di to i32
  %i.dk = shl nsw i32 %i.dj, 16
  %i.dl = or i32 %i.dk, %.sroa.0.1
  %i.dm = sext i32 %.sroa.26.1 to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dm
  store i32 %i.dl, ptr %i.dn, align 4
  %.not47.i = icmp eq i32 %.sroa.26.1, %i.dh
  br i1 %.not47.i, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %bb.e
  %i.do = icmp slt i32 %.sroa.0.1, %2
  br i1 %i.do, label %.lr.ph63.i.preheader, label %sinfl_build_tbl.exit

.lr.ph63.i.preheader:                             ; preds = %.preheader.i
  %i.dp = sub i32 %2, %.sroa.0.1
  %.neg = add i32 %.sroa.0.1, 1
  %xtraiter211 = and i32 %i.dp, 1
  %lcmp.mod212.not = icmp eq i32 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %.lr.ph63.i.prol.loopexit, label %.lr.ph63.i.prol

.lr.ph63.i.prol:                                  ; preds = %.lr.ph63.i.preheader
  %i.dq = sext i32 %.03961.i to i64               ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dq
  %i.ds = shl nsw i64 %i.dq, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dr, ptr nonnull align 4 %0, i64 %i.ds, i1 false)
  %i.dt = shl i32 %.03961.i, 1
  %i.du = add nsw i32 %.sroa.0.1, 1
  br label %.lr.ph63.i.prol.loopexit

.lr.ph63.i.prol.loopexit:                         ; preds = %.lr.ph63.i.prol, %.lr.ph63.i.preheader
  %.sroa.0.2.unr = phi i32 [ %.sroa.0.1, %.lr.ph63.i.preheader ], [ %i.du, %.lr.ph63.i.prol ]
  %.262.i.unr = phi i32 [ %.03961.i, %.lr.ph63.i.preheader ], [ %i.dt, %.lr.ph63.i.prol ]
  %i.dv = icmp eq i32 %2, %.neg
  br i1 %i.dv, label %sinfl_build_tbl.exit, label %.lr.ph63.i

.lr.ph63.i:                                       ; preds = %.lr.ph63.i.prol.loopexit, %.lr.ph63.i
  %.sroa.0.2 = phi i32 [ %i.ee, %.lr.ph63.i ], [ %.sroa.0.2.unr, %.lr.ph63.i.prol.loopexit ]
  %.262.i = phi i32 [ %i.ed, %.lr.ph63.i ], [ %.262.i.unr, %.lr.ph63.i.prol.loopexit ] ; 3 uses
  %i.dw = sext i32 %.262.i to i64                 ; 2 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dw
  %i.dy = shl nsw i64 %i.dw, 2
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
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 11 uses
  %i.g = add nsw i64 %wide.trip.count.i, -1       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %wide.trip.count.i, 510
  br label %bb.b

.lr.ph.preheader.i.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.i.unr-lcssa, %bb.a
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %.lr.ph.preheader.i.unr-lcssa ]
  %lcmp.mod105 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod105)
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.epil.init
  %i.j = load i32, ptr %i.i, align 4
  %..i.epil = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.f)
  %i.k = zext nneg i32 %..i.epil to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.unr-lcssa, %.epil.preheader
  %wide.trip.count66.i = zext nneg i32 %i.e to i64 ; 2 uses
  %i.o = icmp eq i32 %i.e, 4
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %i.p = add nsw i64 %wide.trip.count66.i, -8
  br label %.lr.ph.i

bb.b:                                             ; preds = %bb.b, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4
  %..i = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.f)
  %i.s = zext nneg i32 %..i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4
  %..i.1 = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.f)
  %i.z = zext nneg i32 %..i.1 to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.i.unr-lcssa, label %bb.b

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv63.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next64.i.3, %.lr.ph.i ] ; 5 uses
  %.053.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.ar, %.lr.ph.i ] ; 2 uses
  %niter111 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter111.next.3, %.lr.ph.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv63.i ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  store i32 %.053.i, ptr %i.ad, align 4
  %i.af = add i32 %i.ae, %.053.i                  ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv63.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  store i32 %i.af, ptr %i.ah, align 4
  %i.aj = add i32 %i.ai, %i.af                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv63.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  store i32 %i.aj, ptr %i.al, align 4
  %i.an = add i32 %i.am, %i.aj                    ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv63.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4
  store i32 %i.an, ptr %i.ap, align 4
  %i.ar = add i32 %i.aq, %i.an                    ; 2 uses
  %indvars.iv.next64.i.3 = add nuw nsw i64 %indvars.iv63.i, 4 ; 2 uses
  %niter111.next.3 = add nuw nsw i64 %niter111, 4
  %niter111.ncmp.3 = icmp eq i64 %niter111, %i.p
  br i1 %niter111.ncmp.3, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv63.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next64.i.3, %.lr.ph.i ]
  %.053.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ar, %.lr.ph.i ]
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv63.i.epil = phi i64 [ %indvars.iv63.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next64.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.053.i.epil = phi i32 [ %.053.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.au, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv63.i.epil ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  store i32 %.053.i.epil, ptr %i.as, align 4
  %i.au = add i32 %i.at, %.053.i.epil             ; 6 uses
  %indvars.iv.next64.i.epil = add nuw nsw i64 %indvars.iv63.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph.i.epil, !llvm.loop !295

.preheader.i:                                     ; preds = %.lr.ph.i.epil, %bb.e
  %indvars.iv68.i = phi i64 [ %indvars.iv.next69.i, %bb.e ], [ 0, %.lr.ph.i.epil ] ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv68.i
  %i.aw = load i32, ptr %i.av, align 4            ; 3 uses
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.ax = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 %i.f)
  %i.ay = shl i32 %i.aw, 10
  %i.az = trunc nuw nsw i64 %indvars.iv68.i to i32
  %i.ba = or i32 %i.ay, %i.az
  %i.bb = zext nneg i32 %i.ax to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4
  %i.bf = zext i32 %i.bd to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bf
  store i32 %i.ba, ptr %i.bg, align 4
  br label %bb.e

bb.d:                                             ; preds = %.preheader.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv68.i
  store i8 0, ptr %i.bh, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %exitcond72.not.i = icmp eq i64 %indvars.iv.next69.i, %wide.trip.count.i
  br i1 %exitcond72.not.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr [4 x i8], ptr %i.b, i64 %wide.trip.count66.i ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 -8
  %i.bk = load i32, ptr %i.bj, align 8            ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bl ; 3 uses
  %i.bn = getelementptr i8, ptr %i.bi, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = sub i32 %i.bo, %i.bk                    ; 6 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 -4 ; 12 uses
  %i.br = lshr i32 %i.bp, 1                       ; 2 uses
  %.not7.i.i.i = icmp eq i32 %i.br, 0
  br i1 %.not7.i.i.i, label %sdefl_heap_array.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.f
  %i.bs = zext i32 %i.bp to i64                   ; 2 uses
  %i.bt = lshr i64 %i.bs, 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %sdefl_heap_sub.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.bt, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %sdefl_heap_sub.exit.i.i.i ] ; 5 uses
  %.08.i.i.i = phi i32 [ %i.br, %.lr.ph.preheader.i.i.i ], [ %i.cp, %sdefl_heap_sub.exit.i.i.i ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i.i.i
  %i.bv = load i32, ptr %i.bu, align 4            ; 2 uses
  %i.bw = shl nuw nsw i64 %indvars.iv.i.i.i, 1    ; 2 uses
  %.not27.i.i.i.i = icmp samesign ugt i64 %i.bw, %i.bs
  br i1 %.not27.i.i.i.i, label %sdefl_heap_sub.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.i.i.i
  %i.bx = trunc nuw i64 %i.bw to i32
  %i.by = trunc nuw i64 %indvars.iv.i.i.i to i32
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.i.preheader.i.i.i
  %i.bz = phi i32 [ %i.cn, %bb.i ], [ %i.bx, %.lr.ph.i.preheader.i.i.i ] ; 6 uses
  %.028.i.i.i.i = phi i32 [ %.022.i.i.i.i, %bb.i ], [ %i.by, %.lr.ph.i.preheader.i.i.i ]
  %i.ca = icmp ult i32 %i.bz, %i.bp
  br i1 %i.ca, label %bb.g, label %.lr.ph._crit_edge.i.i.i.i

.lr.ph._crit_edge.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i
  %.phi.trans.insert.i.i.i.i = zext i32 %i.bz to i64 ; 2 uses
  %.phi.trans.insert31.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.phi.trans.insert.i.i.i.i
  %.pre.i.i.i.i = load i32, ptr %.phi.trans.insert31.i.i.i.i, align 4
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cb = or disjoint i32 %i.bz, 1                ; 2 uses
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4            ; 2 uses
  %i.cf = zext i32 %i.bz to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4            ; 2 uses
  %i.ci = icmp ugt i32 %i.ce, %i.ch
  %spec.select.i.i.i.i = select i1 %i.ci, i32 %i.cb, i32 %i.bz ; 2 uses
  %i.cj = tail call i32 @llvm.umax.i32(i32 %i.ce, i32 %i.ch)
  %.pre33.i.i.i.i = zext i32 %spec.select.i.i.i.i to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph._crit_edge.i.i.i.i
  %.pre-phi34.i.i.i.i = phi i64 [ %.phi.trans.insert.i.i.i.i, %.lr.ph._crit_edge.i.i.i.i ], [ %.pre33.i.i.i.i, %bb.g ]
  %i.ck = phi i32 [ %.pre.i.i.i.i, %.lr.ph._crit_edge.i.i.i.i ], [ %i.cj, %bb.g ] ; 2 uses
  %.022.i.i.i.i = phi i32 [ %i.bz, %.lr.ph._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.g ] ; 2 uses
  %.not26.i.i.i.i = icmp ult i32 %i.bv, %i.ck
  %i.cl = zext i32 %.028.i.i.i.i to i64           ; 2 uses
  br i1 %.not26.i.i.i.i, label %bb.i, label %sdefl_heap_sub.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cl
  store i32 %i.ck, ptr %i.cm, align 4
  %i.cn = shl i32 %.022.i.i.i.i, 1                ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.cn, %i.bp
  br i1 %.not.i.i.i.i, label %sdefl_heap_sub.exit.i.i.i, label %.lr.ph.i.i.i.i

sdefl_heap_sub.exit.i.i.i:                        ; preds = %bb.i, %bb.h, %.lr.ph.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %indvars.iv.i.i.i, %.lr.ph.i.i.i ], [ %.pre-phi34.i.i.i.i, %bb.i ], [ %i.cl, %bb.h ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.pre-phi.i.i.i.i
  store i32 %i.bv, ptr %i.co, align 4
  %i.cp = add nsw i32 %.08.i.i.i, -1              ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.cp, 0
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1
  br i1 %.not.i.i.i, label %sdefl_heap_array.exit.i.i, label %.lr.ph.i.i.i

sdefl_heap_array.exit.i.i:                        ; preds = %sdefl_heap_sub.exit.i.i.i, %bb.f
  %i.cq = icmp ugt i32 %i.bp, 1
  br i1 %i.cq, label %.lr.ph.preheader.i.i, label %sdefl_sort_sym.exit

.lr.ph.preheader.i.i:                             ; preds = %sdefl_heap_array.exit.i.i
  %i.cr = zext i32 %i.bp to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %sdefl_heap_sub.exit.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.cr, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %sdefl_heap_sub.exit.i.i ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i.i ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4            ; 3 uses
  %i.cu = load i32, ptr %i.bm, align 4
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %indvars.i.i = trunc i64 %indvars.iv.next.i.i to i32 ; 3 uses
  store i32 %i.cu, ptr %i.cs, align 4
  store i32 %i.ct, ptr %i.bm, align 4
  %.not27.i.i.i = icmp eq i64 %indvars.iv.i.i, 2
  br i1 %.not27.i.i.i, label %sdefl_sort_sym.exit, label %.lr.ph.i12.i.i

.lr.ph.i12.i.i:                                   ; preds = %.lr.ph.i.i, %bb.l
  %i.cv = phi i32 [ %i.dj, %bb.l ], [ 2, %.lr.ph.i.i ] ; 6 uses
  %.028.i.i.i = phi i32 [ %.022.i.i.i, %bb.l ], [ 1, %.lr.ph.i.i ]
  %i.cw = icmp ult i32 %i.cv, %indvars.i.i
  br i1 %i.cw, label %bb.j, label %.lr.ph._crit_edge.i.i.i

.lr.ph._crit_edge.i.i.i:                          ; preds = %.lr.ph.i12.i.i
  %.phi.trans.insert.i.i.i = zext i32 %i.cv to i64 ; 2 uses
  %.phi.trans.insert31.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.phi.trans.insert.i.i.i
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert31.i.i.i, align 4
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i12.i.i
  %i.cx = or disjoint i32 %i.cv, 1                ; 2 uses
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4            ; 2 uses
  %i.db = zext i32 %i.cv to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4            ; 2 uses
  %i.de = icmp ugt i32 %i.da, %i.dd
  %spec.select.i.i.i = select i1 %i.de, i32 %i.cx, i32 %i.cv ; 2 uses
  %i.df = tail call i32 @llvm.umax.i32(i32 %i.da, i32 %i.dd)
  %.pre33.i.i.i = zext i32 %spec.select.i.i.i to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph._crit_edge.i.i.i
  %.pre-phi34.i.i.i = phi i64 [ %.phi.trans.insert.i.i.i, %.lr.ph._crit_edge.i.i.i ], [ %.pre33.i.i.i, %bb.j ]
  %i.dg = phi i32 [ %.pre.i.i.i, %.lr.ph._crit_edge.i.i.i ], [ %i.df, %bb.j ] ; 2 uses
  %.022.i.i.i = phi i32 [ %i.cv, %.lr.ph._crit_edge.i.i.i ], [ %spec.select.i.i.i, %bb.j ] ; 2 uses
  %.not26.i.i.i = icmp ult i32 %i.ct, %i.dg
  %i.dh = zext i32 %.028.i.i.i to i64             ; 2 uses
  br i1 %.not26.i.i.i, label %bb.l, label %sdefl_heap_sub.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.dh
  store i32 %i.dg, ptr %i.di, align 4
  %i.dj = shl i32 %.022.i.i.i, 1                  ; 2 uses
  %.not.i13.i.i = icmp ugt i32 %i.dj, %indvars.i.i
  br i1 %.not.i13.i.i, label %sdefl_heap_sub.exit.i.i, label %.lr.ph.i12.i.i

sdefl_heap_sub.exit.i.i:                          ; preds = %bb.l, %bb.k
  %.pre-phi.i.i.i = phi i64 [ %i.dh, %bb.k ], [ %.pre-phi34.i.i.i, %bb.l ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.pre-phi.i.i.i
  store i32 %i.ct, ptr %i.dk, align 4
  %i.dl = icmp ugt i32 %indvars.i.i, 1
  br i1 %i.dl, label %.lr.ph.i.i, label %sdefl_sort_sym.exit

sdefl_sort_sym.exit:                              ; preds = %.lr.ph.i.i, %sdefl_heap_sub.exit.i.i, %sdefl_heap_array.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #56
  switch i32 %i.au, label %bb.n [
    i32 0, label %.loopexit
    i32 1, label %bb.m
  ]

bb.m:                                             ; preds = %sdefl_sort_sym.exit
  %i.dm = load i32, ptr %1, align 4
  %i.dn = and i32 %i.dm, 1023
  %i.do = tail call i32 @llvm.umax.i32(i32 %i.dn, i32 1)
  store i32 0, ptr %1, align 4
  store i8 1, ptr %0, align 1
  %i.dp = zext nneg i32 %i.do to i64              ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dp
  store i32 1, ptr %i.dq, align 4
end_hunk_0
begin_hunk_1_@sdefl_huff:bb.a
  store i8 1, ptr %i.dr, align 1
  br label %.loopexit

bb.n:                                             ; preds = %sdefl_sort_sym.exit
  %i.ds = add i32 %i.au, -1
  %wide.trip.count.i35 = zext i32 %i.ds to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.y, %bb.n
  %indvars.iv.i36 = phi i64 [ %indvars.iv.next.i38, %bb.y ], [ 0, %bb.n ] ; 5 uses
  %.043.i = phi i32 [ %.245.i, %bb.y ], [ 0, %bb.n ] ; 5 uses
  %.042.i = phi i32 [ %.2.i, %bb.y ], [ 0, %bb.n ] ; 4 uses
  %.not.i37 = icmp eq i32 %.043.i, %i.au
  br i1 %.not.i37, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dt = zext i32 %.042.i to i64                 ; 2 uses
  %i.du = icmp eq i64 %indvars.iv.i36, %i.dt
  br i1 %i.du, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = zext i32 %.043.i to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = lshr i32 %i.dx, 10
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dt
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = lshr i32 %i.ea, 10
  %.not46.i = icmp samesign ugt i32 %i.dy, %i.eb
  br i1 %.not46.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ec = add i32 %.043.i, 1
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.o
  %i.ed = add i32 %.042.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.144.i = phi i32 [ %i.ec, %bb.r ], [ %.043.i, %bb.s ] ; 5 uses
  %.1.i = phi i32 [ %.042.i, %bb.r ], [ %i.ed, %bb.s ] ; 4 uses
  %.040.i = phi i32 [ %.043.i, %bb.r ], [ %.042.i, %bb.s ]
  %.not47.i = icmp eq i32 %.144.i, %i.au
  br i1 %.not47.i, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ee = zext i32 %.1.i to i64                   ; 2 uses
  %i.ef = icmp eq i64 %indvars.iv.i36, %i.ee
  br i1 %i.ef, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eg = zext i32 %.144.i to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = lshr i32 %i.ei, 10
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ee
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = lshr i32 %i.el, 10
  %.not48.i = icmp samesign ugt i32 %i.ej, %i.em
  br i1 %.not48.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.en = add i32 %.144.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.v, %bb.t
  %i.eo = add i32 %.1.i, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.245.i = phi i32 [ %i.en, %bb.w ], [ %.144.i, %bb.x ]
  %.2.i = phi i32 [ %.1.i, %bb.w ], [ %i.eo, %bb.x ]
  %.0.i = phi i32 [ %.144.i, %bb.w ], [ %.1.i, %bb.x ]
  %i.ep = zext i32 %.040.i to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ep ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4            ; 2 uses
  %i.es = and i32 %i.er, -1024
  %i.et = zext i32 %.0.i to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.et ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = and i32 %i.ev, -1024
  %i.ex = add i32 %i.ew, %i.es
  %i.ey = and i32 %i.er, 1023
  %i.ez = trunc nuw i64 %indvars.iv.i36 to i32
  %i.fa = shl i32 %i.ez, 10                       ; 2 uses
  %i.fb = or disjoint i32 %i.ey, %i.fa
  store i32 %i.fb, ptr %i.eq, align 4
  %i.fc = load i32, ptr %i.eu, align 4
  %i.fd = and i32 %i.fc, 1023
  %i.fe = or disjoint i32 %i.fd, %i.fa
  store i32 %i.fe, ptr %i.eu, align 4
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i36 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4
  %i.fh = and i32 %i.fg, 1023
  %i.fi = or disjoint i32 %i.fh, %i.ex
  store i32 %i.fi, ptr %i.ff, align 4
  %indvars.iv.next.i38 = add nuw nsw i64 %indvars.iv.i36, 1 ; 2 uses
  %exitcond.not.i39 = icmp eq i64 %indvars.iv.next.i38, %wide.trip.count.i35
  br i1 %exitcond.not.i39, label %sdefl_build_tree.exit, label %bb.o

sdefl_build_tree.exit:                            ; preds = %bb.y
  %i.fj = add i32 %i.au, -2                       ; 2 uses
  %i.fk = shl nuw nsw i32 %4, 2
  %narrow.i = add nuw nsw i32 %i.fk, 4
  %i.fl = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, i8 0, i64 %i.fl, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 2, ptr %i.fm, align 4
  %i.fn = zext i32 %i.fj to i64                   ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fn ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = and i32 %i.fp, 1023
  store i32 %i.fq, ptr %i.fo, align 4
  %i.fr = icmp sgt i32 %i.fj, 0
  br i1 %i.fr, label %.lr.ph.i40, label %sdefl_gen_len_cnt.exit

.lr.ph.i40:                                       ; preds = %sdefl_build_tree.exit, %.loopexit.i
  %indvars.iv.i41 = phi i64 [ %indvars.iv.next.i42, %.loopexit.i ], [ %i.fn, %sdefl_build_tree.exit ] ; 2 uses
  %indvars.iv.next.i42 = add nsw i64 %indvars.iv.i41, -1 ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i42 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4            ; 2 uses
  %i.fu = lshr i32 %i.ft, 10
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4
  %i.fy = lshr i32 %i.fx, 10                      ; 2 uses
  %i.fz = add nuw nsw i32 %i.fy, 1                ; 3 uses
  %i.ga = and i32 %i.ft, 1023
  %i.gb = shl i32 %i.fz, 10
  %i.gc = or disjoint i32 %i.gb, %i.ga
  store i32 %i.gc, ptr %i.fs, align 4
  %.not35.i = icmp samesign ult i32 %i.fz, %4
  br i1 %.not35.i, label %.lr.ph..loopexit_crit_edge.i, label %.preheader.i43

.lr.ph..loopexit_crit_edge.i:                     ; preds = %.lr.ph.i40
  %.phi.trans.insert.i = zext nneg i32 %i.fz to i64 ; 2 uses
  %.phi.trans.insert42.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.phi.trans.insert.i
  %.pre.i = load i32, ptr %.phi.trans.insert42.i, align 4
  %i.gd = add nuw nsw i32 %i.fy, 2
  br label %.loopexit.i

.preheader.i43:                                   ; preds = %.lr.ph.i40, %.preheader.i43
  %.0.i44 = phi i32 [ %i.ge, %.preheader.i43 ], [ %4, %.lr.ph.i40 ] ; 2 uses
  %i.ge = add i32 %.0.i44, -1                     ; 2 uses
  %i.gf = zext i32 %i.ge to i64                   ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4            ; 2 uses
  %.not36.i = icmp eq i32 %i.gh, 0
  br i1 %.not36.i, label %.preheader.i43, label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i43, %.lr.ph..loopexit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.phi.trans.insert.i, %.lr.ph..loopexit_crit_edge.i ], [ %i.gf, %.preheader.i43 ]
  %i.gi = phi i32 [ %.pre.i, %.lr.ph..loopexit_crit_edge.i ], [ %i.gh, %.preheader.i43 ]
  %.1.i45 = phi i32 [ %i.gd, %.lr.ph..loopexit_crit_edge.i ], [ %.0.i44, %.preheader.i43 ]
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre-phi.i
  %i.gk = add i32 %i.gi, -1
  store i32 %i.gk, ptr %i.gj, align 4
  %i.gl = zext i32 %.1.i45 to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gl ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = add i32 %i.gn, 2
  store i32 %i.go, ptr %i.gm, align 4
  %i.gp = icmp samesign ugt i64 %indvars.iv.i41, 1
  br i1 %i.gp, label %.lr.ph.i40, label %sdefl_gen_len_cnt.exit

sdefl_gen_len_cnt.exit:                           ; preds = %.loopexit.i, %sdefl_build_tree.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  %i.gq = zext nneg i32 %4 to i64                 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.i, %sdefl_gen_len_cnt.exit
  %indvars.iv.i46 = phi i64 [ %i.gq, %sdefl_gen_len_cnt.exit ], [ %indvars.iv.next.i48, %._crit_edge.i ] ; 3 uses
  %.02532.i = phi i32 [ 0, %sdefl_gen_len_cnt.exit ], [ %.126.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i46
  %i.gs = load i32, ptr %i.gr, align 4            ; 5 uses
  %.not2829.i = icmp eq i32 %i.gs, 0
  br i1 %.not2829.i, label %._crit_edge.i, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %bb.z
  %i.gt = trunc i64 %indvars.iv.i46 to i8         ; 5 uses
  %xtraiter112 = and i32 %i.gs, 3                 ; 2 uses
  %lcmp.mod113.not = icmp eq i32 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i47, %.prol.preheader
  %.031.i.prol = phi i32 [ %i.gu, %.prol.preheader ], [ %i.gs, %.lr.ph.i47 ]
  %.12630.i.prol = phi i32 [ %i.gv, %.prol.preheader ], [ %.02532.i, %.lr.ph.i47 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i47 ]
  %i.gu = add i32 %.031.i.prol, -1                ; 2 uses
  %i.gv = add i32 %.12630.i.prol, 1               ; 3 uses
  %i.gw = zext i32 %.12630.i.prol to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4
  %i.gz = and i32 %i.gy, 1023
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ha
  store i8 %i.gt, ptr %i.hb, align 1
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter112
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !296

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i47
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i47 ], [ %i.gv, %.prol.preheader ]
  %.031.i.unr = phi i32 [ %i.gs, %.lr.ph.i47 ], [ %i.gu, %.prol.preheader ]
  %.12630.i.unr = phi i32 [ %.02532.i, %.lr.ph.i47 ], [ %i.gv, %.prol.preheader ]
  %i.hc = icmp ult i32 %i.gs, 4
  br i1 %i.hc, label %._crit_edge.i, label %.lr.ph.i47.new

.lr.ph.i47.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i47.new
  %.031.i = phi i32 [ %i.hy, %.lr.ph.i47.new ], [ %.031.i.unr, %.prol.loopexit ]
  %.12630.i = phi i32 [ %i.hz, %.lr.ph.i47.new ], [ %.12630.i.unr, %.prol.loopexit ] ; 5 uses
  %i.hd = add i32 %.12630.i, 1
  %i.he = zext i32 %.12630.i to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = and i32 %i.hg, 1023
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 %i.hi
  store i8 %i.gt, ptr %i.hj, align 1
  %i.hk = add i32 %.12630.i, 2
  %i.hl = zext i32 %i.hd to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4
  %i.ho = and i32 %i.hn, 1023
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 %i.hp
  store i8 %i.gt, ptr %i.hq, align 1
  %i.hr = add i32 %.12630.i, 3
  %i.hs = zext i32 %i.hk to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4
  %i.hv = and i32 %i.hu, 1023
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 %i.hw
  store i8 %i.gt, ptr %i.hx, align 1
  %i.hy = add i32 %.031.i, -4                     ; 2 uses
  %i.hz = add i32 %.12630.i, 4                    ; 2 uses
  %i.ia = zext i32 %i.hr to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4
  %i.id = and i32 %i.ic, 1023
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 %i.ie
  store i8 %i.gt, ptr %i.if, align 1
  %.not28.i.3 = icmp eq i32 %i.hy, 0
  br i1 %.not28.i.3, label %._crit_edge.i, label %.lr.ph.i47.new

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i47.new, %bb.z
  %.126.lcssa.i = phi i32 [ %.02532.i, %bb.z ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.hz, %.lr.ph.i47.new ]
  %indvars.iv.next.i48 = add nsw i64 %indvars.iv.i46, -1 ; 2 uses
  %i.ig = and i64 %indvars.iv.next.i48, 4294967295
  %.not.i49 = icmp eq i64 %i.ig, 0
  br i1 %.not.i49, label %.new114, label %bb.z

.new114:                                          ; preds = %._crit_edge.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.ih, align 4
  store i32 0, ptr %i.a, align 16
  %i.ii = add nsw i64 %i.gq, -1                   ; 2 uses
  %xtraiter116 = and i64 %i.ii, 3                 ; 3 uses
  %unroll_iter120 = and i64 %i.ii, -4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.new114
  %i.ij = phi i32 [ 0, %.new114 ], [ %i.jg, %bb.aa ]
  %indvars.iv37.i = phi i64 [ 2, %.new114 ], [ %indvars.iv.next38.i.3, %bb.aa ] ; 6 uses
  %niter121 = phi i64 [ 0, %.new114 ], [ %niter121.next.3, %bb.aa ]
  %i.ik = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv37.i
  %i.il = getelementptr i8, ptr %i.ik, i64 -4
  %i.im = load i32, ptr %i.il, align 4
  %i.in = add i32 %i.im, %i.ij
  %i.io = shl i32 %i.in, 1                        ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv37.i
  store i32 %i.io, ptr %i.ip, align 8
  %indvars.iv.next38.i = or disjoint i64 %indvars.iv37.i, 1 ; 2 uses
  %i.iq = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next38.i
  %i.ir = getelementptr i8, ptr %i.iq, i64 -4
  %i.is = load i32, ptr %i.ir, align 8
  %i.it = add i32 %i.is, %i.io
  %i.iu = shl i32 %i.it, 1                        ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next38.i
  store i32 %i.iu, ptr %i.iv, align 4
  %indvars.iv.next38.i.1 = add nuw nsw i64 %indvars.iv37.i, 2 ; 2 uses
  %i.iw = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next38.i.1
  %i.ix = getelementptr i8, ptr %i.iw, i64 -4
  %i.iy = load i32, ptr %i.ix, align 4
  %i.iz = add i32 %i.iy, %i.iu
  %i.ja = shl i32 %i.iz, 1                        ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next38.i.1
  store i32 %i.ja, ptr %i.jb, align 8
  %indvars.iv.next38.i.2 = add nuw nsw i64 %indvars.iv37.i, 3 ; 2 uses
  %i.jc = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next38.i.2
  %i.jd = getelementptr i8, ptr %i.jc, i64 -4
  %i.je = load i32, ptr %i.jd, align 8
  %i.jf = add i32 %i.je, %i.ja
  %i.jg = shl i32 %i.jf, 1                        ; 3 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next38.i.2
  store i32 %i.jg, ptr %i.jh, align 4
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
  %i.ji = phi i32 [ %i.jg, %.epil.preheader115 ], [ %i.jn, %bb.ab ]
  %indvars.iv37.i.epil = phi i64 [ %indvars.iv.next38.i.3, %.epil.preheader115 ], [ %indvars.iv.next38.i.epil, %bb.ab ] ; 3 uses
  %epil.iter117 = phi i64 [ 0, %.epil.preheader115 ], [ %epil.iter117.next, %bb.ab ]
  %i.jj = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv37.i.epil
  %i.jk = getelementptr i8, ptr %i.jj, i64 -4
  %i.jl = load i32, ptr %i.jk, align 4
  %i.jm = add i32 %i.jl, %i.ji
  %i.jn = shl i32 %i.jm, 1                        ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv37.i.epil
  store i32 %i.jn, ptr %i.jo, align 4
  %indvars.iv.next38.i.epil = add nuw nsw i64 %indvars.iv37.i.epil, 1
  %epil.iter117.next = add i64 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i64 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %.preheader.i52.preheader, label %bb.ab, !llvm.loop !297

.preheader.i52.preheader:                         ; preds = %bb.ab, %.preheader.i52.preheader.unr-lcssa
  %xtraiter122 = and i64 %wide.trip.count.i, 1
  %i.jp = icmp eq i64 %i.g, 0
  br i1 %i.jp, label %.preheader.i52.epil.preheader, label %.preheader.i52.preheader.new

.preheader.i52.preheader.new:                     ; preds = %.preheader.i52.preheader
  %unroll_iter126 = and i64 %wide.trip.count.i, 510
  br label %.preheader.i52

.preheader.i52:                                   ; preds = %.preheader.i52, %.preheader.i52.preheader.new
  %indvars.iv41.i = phi i64 [ 0, %.preheader.i52.preheader.new ], [ %indvars.iv.next42.i.1, %.preheader.i52 ] ; 4 uses
  %niter127 = phi i64 [ 0, %.preheader.i52.preheader.new ], [ %niter127.next.1, %.preheader.i52 ]
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv41.i
  %i.jr = load i8, ptr %i.jq, align 1
  %i.js = zext i8 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.js ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4            ; 2 uses
  %i.jv = add i32 %i.ju, 1
  store i32 %i.jv, ptr %i.jt, align 4
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv41.i
  store i32 %i.ju, ptr %i.jw, align 4
  %indvars.iv.next42.i = or disjoint i64 %indvars.iv41.i, 1 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next42.i
  %i.jy = load i8, ptr %i.jx, align 1
  %i.jz = zext i8 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jz ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4            ; 2 uses
  %i.kc = add i32 %i.kb, 1
  store i32 %i.kc, ptr %i.ka, align 4
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next42.i
  store i32 %i.kb, ptr %i.kd, align 4
  %indvars.iv.next42.i.1 = add nuw nsw i64 %indvars.iv41.i, 2 ; 2 uses
  %niter127.next.1 = add nuw nsw i64 %niter127, 2 ; 2 uses
  %niter127.ncmp.1 = icmp eq i64 %niter127.next.1, %unroll_iter126
  br i1 %niter127.ncmp.1, label %sdefl_gen_codes.exit.unr-lcssa, label %.preheader.i52

sdefl_gen_codes.exit.unr-lcssa:                   ; preds = %.preheader.i52
  %lcmp.mod124.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod124.not, label %sdefl_gen_codes.exit, label %.preheader.i52.epil.preheader

.preheader.i52.epil.preheader:                    ; preds = %sdefl_gen_codes.exit.unr-lcssa, %.preheader.i52.preheader
  %indvars.iv41.i.epil.init = phi i64 [ 0, %.preheader.i52.preheader ], [ %indvars.iv.next42.i.1, %sdefl_gen_codes.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod125 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv41.i.epil.init
  %i.kf = load i8, ptr %i.ke, align 1
  %i.kg = zext i8 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kg ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4            ; 2 uses
  %i.kj = add i32 %i.ki, 1
  store i32 %i.kj, ptr %i.kh, align 4
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv41.i.epil.init
  store i32 %i.ki, ptr %i.kk, align 4
  br label %sdefl_gen_codes.exit

sdefl_gen_codes.exit:                             ; preds = %sdefl_gen_codes.exit.unr-lcssa, %.preheader.i52.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %i.kl = shl nuw nsw i64 %wide.trip.count.i, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.kl
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
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.km, align 4, !alias.scope !303, !noalias !304
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load101 = load <4 x i8>, ptr %i.kn, align 1, !alias.scope !304
  %i.ko = trunc <4 x i32> %wide.load to <4 x i16>
  %i.kp = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.ko)
  %i.kq = zext <4 x i16> %i.kp to <4 x i32>
  %i.kr = zext <4 x i8> %wide.load101 to <4 x i32>
  %i.ks = sub nsw <4 x i32> splat (i32 16), %i.kr
  %i.kt = lshr <4 x i32> %i.kq, %i.ks
  store <4 x i32> %i.kt, ptr %i.km, align 4, !alias.scope !303, !noalias !304
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ku = icmp eq i64 %index.next, %n.vec
  br i1 %i.ku, label %middle.block, label %vector.body, !llvm.loop !301

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %sdefl_gen_codes.exit, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %sdefl_gen_codes.exit ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ky = load i8, ptr %i.kx, align 1
  %trunc.i = trunc i32 %i.kw to i16
  %rev.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i)
  %i.kz = zext i16 %rev.i to i32
  %i.la = zext i8 %i.ky to i32
  %i.lb = sub nsw i32 16, %i.la
  %i.lc = lshr i32 %i.kz, %i.lb
  store i32 %i.lc, ptr %i.kv, align 4
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
attributes #40 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { nocallback nofree nosync nounwind willreturn }
attributes #47 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #48 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #50 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #51 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #52 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #53 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #54 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #55 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #56 = { nounwind }
attributes #57 = { nounwind willreturn memory(read) }
attributes #58 = { nounwind allocsize(0) }
attributes #59 = { cold noreturn nounwind }
attributes #60 = { nounwind allocsize(0,1) }
attributes #61 = { nounwind allocsize(1) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = distinct !{null, ptr @rlViewport}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = !{ptr @rlViewport}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = !{ptr @rlGetActiveFramebuffer}
!11 = !{ptr @rlGetLocationAttrib}
!12 = !{ptr @rlGetLocationUniform}
!13 = !{ptr @rlEnableShader}
!14 = distinct !{null}
!15 = distinct !{null}
!16 = distinct !{null}
!17 = distinct !{null}
!18 = distinct !{null}
!19 = distinct !{null}
!20 = distinct !{null}
!21 = distinct !{null}
!22 = distinct !{null}
!23 = distinct !{null}
!24 = distinct !{null}
!25 = distinct !{null}
!26 = distinct !{null}
!27 = distinct !{null}
!28 = distinct !{null}
!29 = distinct !{null}
!30 = distinct !{null}
!31 = distinct !{null}
!32 = distinct !{null}
!33 = distinct !{null}
!34 = distinct !{null}
!35 = distinct !{null}
!36 = distinct !{null}
!37 = distinct !{null}
!38 = distinct !{null}
!39 = distinct !{null}
!40 = distinct !{null}
!41 = distinct !{null}
!42 = distinct !{null}
!43 = distinct !{null}
!44 = distinct !{null}
!45 = distinct !{null}
!46 = distinct !{null}
!47 = distinct !{null}
!48 = distinct !{null}
!49 = distinct !{null}
!50 = distinct !{null}
!51 = distinct !{null}
!52 = distinct !{null}
!53 = distinct !{null}
!54 = distinct !{null}
!55 = distinct !{null}
!56 = distinct !{null}
!57 = distinct !{null}
!58 = distinct !{null}
!59 = distinct !{null}
!60 = distinct !{null}
!61 = distinct !{null}
!62 = distinct !{null}
!63 = distinct !{null}
!64 = distinct !{null}
!65 = distinct !{null}
!66 = distinct !{null}
!67 = distinct !{null}
!68 = distinct !{null}
!69 = distinct !{null}
!70 = distinct !{null}
!71 = distinct !{null}
!72 = distinct !{null}
!73 = distinct !{null}
!74 = distinct !{null}
!75 = distinct !{null}
!76 = distinct !{null}
!77 = distinct !{null}
!78 = distinct !{null}
!79 = distinct !{null}
!80 = distinct !{null}
!81 = distinct !{null}
!82 = distinct !{null}
!83 = distinct !{null}
!84 = distinct !{null}
!85 = distinct !{null}
!86 = distinct !{null}
!87 = distinct !{null}
!88 = distinct !{null}
!89 = distinct !{null}
!90 = distinct !{null}
!91 = distinct !{null}
!92 = distinct !{null}
!93 = distinct !{null}
!94 = distinct !{null}
!95 = distinct !{null, ptr @gladLoadGLUserPtr}
!96 = distinct !{ptr @gladLoadGLUserPtr, null}
!97 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!98 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!99 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!100 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!101 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!102 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!103 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!104 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!105 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!106 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!107 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!108 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!109 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!110 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!111 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!112 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!113 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!114 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!115 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!116 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!117 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!118 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!119 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!120 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!121 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!122 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!123 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!124 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!125 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!126 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!127 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!128 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!129 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!130 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!131 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!132 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!133 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!134 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!135 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!136 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!137 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!138 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!139 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!140 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!141 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!142 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!143 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!144 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!145 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!146 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!147 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!148 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!149 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!150 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!151 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!152 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!153 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!154 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!155 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!156 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!157 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!158 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!159 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!160 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!161 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!162 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!163 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!164 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!165 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!166 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!167 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!168 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!169 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!170 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!171 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!172 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!173 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!174 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!175 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!176 = !{ptr @gladLoadGLUserPtr}
!177 = distinct !{!177, !"vprintf"}
!178 = distinct !{!178, !177, !"vprintf: argument 0"}
!179 = distinct !{null}
!180 = !{!178}
!181 = distinct !{!181, !"rlMatrixToFloatV"}
!182 = distinct !{!182, !181, !"rlMatrixToFloatV: argument 0"}
!183 = distinct !{!183, !"rlMatrixToFloatV"}
!184 = distinct !{!184, !183, !"rlMatrixToFloatV: argument 0"}
!185 = distinct !{!185, !"rlMatrixToFloatV"}
!186 = distinct !{!186, !185, !"rlMatrixToFloatV: argument 0"}
!187 = distinct !{!187, !"rlMatrixToFloatV"}
!188 = distinct !{!188, !187, !"rlMatrixToFloatV: argument 0"}
!189 = distinct !{!189, !"rlMatrixToFloatV"}
!190 = distinct !{!190, !189, !"rlMatrixToFloatV: argument 0"}
!191 = !{!182}
!192 = !{!184}
!193 = !{!186}
!194 = !{!188}
!195 = !{!190}
!196 = distinct !{null}
!197 = distinct !{!197, !7}
!198 = distinct !{!198, !7}
!199 = distinct !{!199, !7}
!200 = distinct !{!200, !7}
!201 = distinct !{null}
!202 = distinct !{!202, !"rlMatrixToFloatV"}
!203 = distinct !{!203, !202, !"rlMatrixToFloatV: argument 0"}
!204 = !{!203}
!205 = distinct !{!205, !"MatrixLookAt"}
!206 = distinct !{!206, !205, !"MatrixLookAt: argument 0"}
!207 = !{!206}
!208 = distinct !{!208, !"MatrixPerspective"}
!209 = distinct !{!209, !208, !"MatrixPerspective: argument 0"}
!210 = distinct !{!210, !"MatrixOrtho"}
!211 = distinct !{!211, !210, !"MatrixOrtho: argument 0"}
!212 = distinct !{!212, !"MatrixIdentity"}
!213 = distinct !{!213, !212, !"MatrixIdentity: argument 0"}
!214 = !{!209}
!215 = !{!211}
!216 = !{!213}
!217 = distinct !{!217, !"MatrixRotate"}
!218 = distinct !{!218, !217, !"MatrixRotate: argument 0"}
!219 = !{!218}
!220 = distinct !{!220, !8, !9}
!221 = distinct !{!221, !8, !9}
!222 = distinct !{!222, !8}
!223 = distinct !{!223, !8, !9}
!224 = distinct !{!224, !8, !9}
!225 = distinct !{!225, !8}
!226 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!227 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!228 = !{!"branch_weights", i32 8, i32 24}
!229 = distinct !{!229, !7}
!230 = distinct !{!230, !7}
!231 = distinct !{!231, !8, !9}
!232 = distinct !{!232, !7}
!233 = distinct !{ptr @rlglClose, null}
!234 = !{ptr @rlglClose}
!235 = !{ptr @rlClearColor}
!236 = !{ptr @rlClearScreenBuffers}
!237 = distinct !{!237, !"MatrixToFloatV"}
!238 = distinct !{!238, !237, !"MatrixToFloatV: argument 0"}
!239 = !{!238}
!240 = distinct !{!240, !"MatrixToFloatV"}
!241 = distinct !{!241, !240, !"MatrixToFloatV: argument 0"}
!242 = !{!241}
!243 = distinct !{!243, !"MatrixRotate"}
!244 = distinct !{!244, !243, !"MatrixRotate: argument 0"}
!245 = !{!244}
!246 = distinct !{!246, !"MatrixToFloatV"}
!247 = distinct !{!247, !246, !"MatrixToFloatV: argument 0"}
!248 = !{!247}
!249 = distinct !{!249, !"MatrixToFloatV"}
!250 = distinct !{!250, !249, !"MatrixToFloatV: argument 0"}
!251 = !{!250}
!252 = !{ptr @rlEnableDepthTest}
!253 = distinct !{!253, !"MatrixToFloatV"}
!254 = distinct !{!254, !253, !"MatrixToFloatV: argument 0"}
!255 = !{!254}
!256 = !{ptr @rlDisableDepthTest}
!257 = !{ptr @rlEnableFramebuffer}
!258 = distinct !{!258, !"MatrixToFloatV"}
!259 = distinct !{!259, !258, !"MatrixToFloatV: argument 0"}
!260 = !{ptr @rlDisableFramebuffer}
!261 = !{!259}
!262 = !{ptr @rlSetBlendMode}
!263 = !{ptr @rlEnableScissorTest}
!264 = !{ptr @rlScissor}
!265 = !{ptr @rlDisableScissorTest}
!266 = distinct !{!266, !"MatrixPerspective"}
!267 = distinct !{!267, !266, !"MatrixPerspective: argument 0"}
!268 = !{!267}
!269 = !{ptr @rlUnloadShaderProgram}
!270 = !{ptr @SetShaderValueV, ptr @rlEnableShader}
!271 = distinct !{!271, !"rlMatrixToFloatV"}
!272 = distinct !{!272, !271, !"rlMatrixToFloatV: argument 0"}
!273 = !{!272}
!274 = !{ptr @rlSetUniformMatrix}
!275 = !{ptr @rlSetUniformSampler}
!276 = distinct !{!276, !"MatrixLookAt"}
!277 = distinct !{!277, !276, !"MatrixLookAt: argument 0"}
!278 = distinct !{!278, !"MatrixIdentity"}
!279 = distinct !{!279, !278, !"MatrixIdentity: argument 0"}
!280 = distinct !{!280, !"MatrixPerspective"}
!281 = distinct !{!281, !280, !"MatrixPerspective: argument 0"}
!282 = !{!277}
!283 = !{!279}
!284 = !{!281}
!285 = distinct !{!285, !"MatrixLookAt"}
!286 = distinct !{!286, !285, !"MatrixLookAt: argument 0"}
!287 = !{!286}
!288 = distinct !{!288, !"MatrixPerspective"}
!289 = distinct !{!289, !288, !"MatrixPerspective: argument 0"}
!290 = !{!289}
!291 = distinct !{!291, !8, !9}
!292 = distinct !{!292, !9, !8}
!293 = !{!"branch_weights", i32 4, i32 12}
!294 = distinct !{!294, !7}
!295 = distinct !{!295, !7}
!296 = distinct !{!296, !7}
!297 = distinct !{!297, !7}
!298 = distinct !{!298, !"LVerDomain"}
!299 = distinct !{!299, !298}
!300 = distinct !{!300, !298}
!301 = distinct !{!301, !8, !9}
!302 = distinct !{!302, !8}
!303 = !{!299}
!304 = !{!300}
end_hunk_1
