Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvsFoodWeb_ASAp_kry?download=true
inline.NumInlined: 58
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 46
begin_hunk_0_@doubleIntgr:bb.a
  %indvars.iv134 = phi i64 [ 1, %.lr.ph101.us.preheader ], [ %indvars.iv.next135, %._crit_edge102.us ] ; 2 uses
  %.091104.us = phi double [ %i.bb, %.lr.ph101.us.preheader ], [ %i.co, %._crit_edge102.us ]
  %i.bj = mul nsw i64 %indvars.iv134, %i.be       ; 3 uses
  %i.bk = getelementptr [8 x i8], ptr %i.a, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 40
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !22 ; 2 uses
  %i.bn = trunc nsw i64 %i.bj to i32
  %i.bo = add i32 %i.bn, 5                        ; 3 uses
  br i1 %i.bi, label %.epil.preheader, label %.lr.ph101.us.new

.lr.ph101.us.new:                                 ; preds = %.lr.ph101.us, %.lr.ph101.us.new
  %indvars.iv129 = phi i64 [ %indvars.iv.next130.1, %.lr.ph101.us.new ], [ 1, %.lr.ph101.us ] ; 3 uses
  %.18998.us = phi double [ %i.cd, %.lr.ph101.us.new ], [ %i.bm, %.lr.ph101.us ]
  %niter24 = phi i64 [ %niter24.next.1, %.lr.ph101.us.new ], [ 0, %.lr.ph101.us ]
  %i.bp = trunc i64 %indvars.iv129 to i32
  %i.bq = mul i32 %i.c, %i.bp
  %i.br = add i32 %i.bo, %i.bq
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !22
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bu, double 2.000000e+00, double %.18998.us)
  %i.bw = trunc i64 %indvars.iv129 to i32
  %i.bx = add i32 %i.bw, 1
  %i.by = mul i32 %i.c, %i.bx
  %i.bz = add i32 %i.bo, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ca
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !22
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.cc, double 2.000000e+00, double %i.bv) ; 3 uses
  %indvars.iv.next130.1 = add nuw nsw i64 %indvars.iv129, 2 ; 2 uses
  %niter24.next.1 = add nuw i64 %niter24, 2       ; 2 uses
  %niter24.ncmp.1 = icmp eq i64 %niter24.next.1, %unroll_iter23
  br i1 %niter24.ncmp.1, label %._crit_edge102.us.unr-lcssa, label %.lr.ph101.us.new

._crit_edge102.us.unr-lcssa:                      ; preds = %.lr.ph101.us.new
  br i1 %lcmp.mod20.not, label %._crit_edge102.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge102.us.unr-lcssa, %.lr.ph101.us
  %indvars.iv129.epil.init = phi i64 [ 1, %.lr.ph101.us ], [ %indvars.iv.next130.1, %._crit_edge102.us.unr-lcssa ]
  %.18998.us.epil.init = phi double [ %i.bm, %.lr.ph101.us ], [ %i.cd, %._crit_edge102.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.ce = trunc i64 %indvars.iv129.epil.init to i32
  %i.cf = mul i32 %i.c, %i.ce
  %i.cg = add i32 %i.bo, %i.cf
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ch
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !22
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.cj, double 2.000000e+00, double %.18998.us.epil.init)
  br label %._crit_edge102.us

._crit_edge102.us:                                ; preds = %._crit_edge102.us.unr-lcssa, %.epil.preheader
  %.lcssa5 = phi double [ %i.cd, %._crit_edge102.us.unr-lcssa ], [ %i.ck, %.epil.preheader ]
  %gep151 = getelementptr [8 x i8], ptr %invariant.gep150, i64 %i.bj
  %i.cl = load double, ptr %gep151, align 8, !tbaa !22
  %i.cm = fadd double %.lcssa5, %i.cl
  %i.cn = fmul double %i.ba, %i.cm
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cn, double 2.000000e+00, double %.091104.us) ; 2 uses
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count137
  br i1 %exitcond138.not, label %._crit_edge108, label %.lr.ph101.us

.lr.ph107.split:                                  ; preds = %.lr.ph107.split, %.lr.ph107.split.preheader.new
  %indvars.iv124 = phi i64 [ 1, %.lr.ph107.split.preheader.new ], [ %indvars.iv.next125.1, %.lr.ph107.split ] ; 3 uses
  %.091104 = phi double [ %i.bb, %.lr.ph107.split.preheader.new ], [ %i.de, %.lr.ph107.split ]
  %niter17 = phi i64 [ 0, %.lr.ph107.split.preheader.new ], [ %niter17.next.1, %.lr.ph107.split ]
  %i.cp = mul nsw i64 %indvars.iv124, %i.be       ; 2 uses
  %i.cq = getelementptr [8 x i8], ptr %i.a, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 40
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !22
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cp
  %i.ct = load double, ptr %gep, align 8, !tbaa !22
  %i.cu = fadd double %i.cs, %i.ct
  %i.cv = fmul double %i.ba, %i.cu
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cv, double 2.000000e+00, double %.091104)
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1
  %i.cx = mul nsw i64 %indvars.iv.next125, %i.be  ; 2 uses
  %i.cy = getelementptr [8 x i8], ptr %i.a, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 40
  %i.da = load double, ptr %i.cz, align 8, !tbaa !22
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cx
  %i.db = load double, ptr %gep.1, align 8, !tbaa !22
  %i.dc = fadd double %i.da, %i.db
  %i.dd = fmul double %i.ba, %i.dc
  %i.de = tail call double @llvm.fmuladd.f64(double %i.dd, double 2.000000e+00, double %i.cw) ; 3 uses
  %indvars.iv.next125.1 = add nuw nsw i64 %indvars.iv124, 2 ; 2 uses
  %niter17.next.1 = add nuw i64 %niter17, 2       ; 2 uses
  %niter17.ncmp.1 = icmp eq i64 %niter17.next.1, %unroll_iter16
  br i1 %niter17.ncmp.1, label %._crit_edge108.thread.unr-lcssa, label %.lr.ph107.split

._crit_edge108.thread.unr-lcssa:                  ; preds = %.lr.ph107.split
  %lcmp.mod13.not = icmp eq i64 %xtraiter11, 0
  br i1 %lcmp.mod13.not, label %._crit_edge108.thread, label %.lr.ph107.split.epil.preheader

.lr.ph107.split.epil.preheader:                   ; preds = %._crit_edge108.thread.unr-lcssa, %.lr.ph107.split.preheader
  %indvars.iv124.epil.init = phi i64 [ 1, %.lr.ph107.split.preheader ], [ %indvars.iv.next125.1, %._crit_edge108.thread.unr-lcssa ]
  %.091104.epil.init = phi double [ %i.bb, %.lr.ph107.split.preheader ], [ %i.de, %._crit_edge108.thread.unr-lcssa ]
  %lcmp.mod15 = trunc i64 %i.bf to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %i.df = mul nsw i64 %indvars.iv124.epil.init, %i.be ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.a, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 40
  %i.di = load double, ptr %i.dh, align 8, !tbaa !22
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.df
  %i.dj = load double, ptr %gep.epil, align 8, !tbaa !22
  %i.dk = fadd double %i.di, %i.dj
  %i.dl = fmul double %i.ba, %i.dk
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dl, double 2.000000e+00, double %.091104.epil.init)
  br label %._crit_edge108.thread

._crit_edge108.thread:                            ; preds = %._crit_edge108.thread.unr-lcssa, %.lr.ph107.split.epil.preheader
  %.lcssa7 = phi double [ %i.de, %._crit_edge108.thread.unr-lcssa ], [ %i.dm, %.lr.ph107.split.epil.preheader ]
  %i.dn = mul nsw i32 %i.bc, %i.i                 ; 2 uses
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr [8 x i8], ptr %i.a, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.dp, i64 40
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !22
  br label %._crit_edge116

._crit_edge108:                                   ; preds = %._crit_edge102.us, %._crit_edge
  %.091.lcssa = phi double [ %i.bb, %._crit_edge ], [ %i.co, %._crit_edge102.us ] ; 3 uses
  %i.ds = mul nsw i32 %i.bc, %i.i                 ; 5 uses
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr [8 x i8], ptr %i.a, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 40
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !22 ; 3 uses
  br i1 %i.q, label %.lr.ph115, label %._crit_edge116

.lr.ph115:                                        ; preds = %._crit_edge108
  %i.dx = add i32 %i.ds, 5                        ; 3 uses
  %wide.trip.count142 = zext nneg i32 %i.p to i64
  %i.dy = add nsw i64 %wide.trip.count142, -1     ; 3 uses
  %xtraiter26 = and i64 %i.dy, 1
  %i.dz = icmp eq i32 %i.p, 2
  br i1 %i.dz, label %.epil.preheader25, label %.lr.ph115.new

.lr.ph115.new:                                    ; preds = %.lr.ph115
  %unroll_iter31 = and i64 %i.dy, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph115.new
  %indvars.iv139 = phi i64 [ 1, %.lr.ph115.new ], [ %indvars.iv.next140.1, %bb.b ] ; 3 uses
  %.290112 = phi double [ %i.dw, %.lr.ph115.new ], [ %i.eo, %bb.b ]
  %niter32 = phi i64 [ 0, %.lr.ph115.new ], [ %niter32.next.1, %bb.b ]
  %i.ea = trunc i64 %indvars.iv139 to i32
  %i.eb = mul i32 %i.c, %i.ea
  %i.ec = add i32 %i.dx, %i.eb
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ed
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !22
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ef, double 2.000000e+00, double %.290112)
  %i.eh = trunc i64 %indvars.iv139 to i32
  %i.ei = add i32 %i.eh, 1
  %i.ej = mul i32 %i.c, %i.ei
  %i.ek = add i32 %i.dx, %i.ej
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.el
  %i.en = load double, ptr %i.em, align 8, !tbaa !22
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.en, double 2.000000e+00, double %i.eg) ; 3 uses
  %indvars.iv.next140.1 = add nuw nsw i64 %indvars.iv139, 2 ; 2 uses
  %niter32.next.1 = add nuw i64 %niter32, 2       ; 2 uses
  %niter32.ncmp.1 = icmp eq i64 %niter32.next.1, %unroll_iter31
  br i1 %niter32.ncmp.1, label %._crit_edge116.loopexit.unr-lcssa, label %bb.b

._crit_edge116.loopexit.unr-lcssa:                ; preds = %bb.b
  %lcmp.mod28.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod28.not, label %._crit_edge116, label %.epil.preheader25

.epil.preheader25:                                ; preds = %._crit_edge116.loopexit.unr-lcssa, %.lr.ph115
  %indvars.iv139.epil.init = phi i64 [ 1, %.lr.ph115 ], [ %indvars.iv.next140.1, %._crit_edge116.loopexit.unr-lcssa ]
  %.290112.epil.init = phi double [ %i.dw, %.lr.ph115 ], [ %i.eo, %._crit_edge116.loopexit.unr-lcssa ]
  %lcmp.mod30 = trunc i64 %i.dy to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.ep = trunc i64 %indvars.iv139.epil.init to i32
  %i.eq = mul i32 %i.c, %i.ep
  %i.er = add i32 %i.dx, %i.eq
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8, !tbaa !22
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.eu, double 2.000000e+00, double %.290112.epil.init)
  br label %._crit_edge116

._crit_edge116:                                   ; preds = %.epil.preheader25, %._crit_edge116.loopexit.unr-lcssa, %._crit_edge108.thread, %._crit_edge108
  %i.ew = phi i32 [ %i.ds, %._crit_edge108 ], [ %i.dn, %._crit_edge108.thread ], [ %i.ds, %._crit_edge116.loopexit.unr-lcssa ], [ %i.ds, %.epil.preheader25 ]
  %.091.lcssa145 = phi double [ %.091.lcssa, %._crit_edge108 ], [ %.lcssa7, %._crit_edge108.thread ], [ %.091.lcssa, %._crit_edge116.loopexit.unr-lcssa ], [ %.091.lcssa, %.epil.preheader25 ]
  %.290.lcssa = phi double [ %i.dw, %._crit_edge108 ], [ %i.dr, %._crit_edge108.thread ], [ %i.eo, %._crit_edge116.loopexit.unr-lcssa ], [ %i.ev, %.epil.preheader25 ]
  %i.ex = add nsw i32 %i.av, %i.ew
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ey
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !22
  %i.fb = fadd double %.290.lcssa, %i.fa
  %i.fc = fmul double %i.ba, %i.fb
  %i.fd = fadd double %.091.lcssa145, %i.fc
  %i.fe = fmul double %i.m, 5.000000e-01
  %i.ff = fmul double %i.fe, %i.fd
  ret double %i.ff
}

; Function Attrs: nounwind uwtable
define internal fastcc void @CbInit(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %0) #10 ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24   ; 4 uses
  %.not27 = icmp slt i32 %i.d, 1
  br i1 %.not27, label %.split38.critedge, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !27
  %i.g = zext nneg i32 %i.d to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.h, i1 false), !tbaa !22
  %.40..40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store double 1.000000e+00, ptr %.40..40..sroa_idx, align 8, !tbaa !22
  %i.i = sext i32 %i.f to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = zext nneg i32 %i.d to i64                ; 19 uses
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = zext nneg i32 %i.d to i64
  %i.n = shl nuw nsw i64 %i.m, 3                  ; 20 uses
  %invariant.gep = getelementptr i8, ptr %i.b, i64 %i.l
  %i.o = shl nuw nsw i64 %i.k, 4
  %invariant.gep46 = getelementptr i8, ptr %i.b, i64 %i.o
  %i.p = mul nuw nsw i64 %i.k, 24
  %invariant.gep48 = getelementptr i8, ptr %i.b, i64 %i.p
  %i.q = shl nuw nsw i64 %i.k, 5
  %invariant.gep50 = getelementptr i8, ptr %i.b, i64 %i.q
  %i.r = mul nuw nsw i64 %i.k, 40
  %invariant.gep52 = getelementptr i8, ptr %i.b, i64 %i.r
  %i.s = mul nuw nsw i64 %i.k, 48
  %invariant.gep54 = getelementptr i8, ptr %i.b, i64 %i.s
  %i.t = mul nuw nsw i64 %i.k, 56
  %invariant.gep56 = getelementptr i8, ptr %i.b, i64 %i.t
  %i.u = shl nuw nsw i64 %i.k, 6
  %invariant.gep58 = getelementptr i8, ptr %i.b, i64 %i.u
  %i.v = mul nuw nsw i64 %i.k, 72
  %invariant.gep60 = getelementptr i8, ptr %i.b, i64 %i.v
  %i.w = mul nuw nsw i64 %i.k, 80
  %invariant.gep62 = getelementptr i8, ptr %i.b, i64 %i.w
  %i.x = mul nuw nsw i64 %i.k, 88
  %invariant.gep64 = getelementptr i8, ptr %i.b, i64 %i.x
  %i.y = mul nuw nsw i64 %i.k, 96
  %invariant.gep66 = getelementptr i8, ptr %i.b, i64 %i.y
  %i.z = mul nuw nsw i64 %i.k, 104
  %invariant.gep68 = getelementptr i8, ptr %i.b, i64 %i.z
  %i.aa = mul nuw nsw i64 %i.k, 112
  %invariant.gep70 = getelementptr i8, ptr %i.b, i64 %i.aa
  %i.ab = mul nuw nsw i64 %i.k, 120
  %invariant.gep72 = getelementptr i8, ptr %i.b, i64 %i.ab
  %i.ac = shl nuw nsw i64 %i.k, 7
  %invariant.gep74 = getelementptr i8, ptr %i.b, i64 %i.ac
  %i.ad = mul nuw nsw i64 %i.k, 136
  %invariant.gep76 = getelementptr i8, ptr %i.b, i64 %i.ad
  %i.ae = mul nuw nsw i64 %i.k, 144
  %invariant.gep78 = getelementptr i8, ptr %i.b, i64 %i.ae
  %i.af = mul nuw nsw i64 %i.k, 152
  %invariant.gep80 = getelementptr i8, ptr %i.b, i64 %i.af
  br label %.split

.split:                                           ; preds = %.split.preheader, %.split
  %indvar = phi i64 [ 0, %.split.preheader ], [ %indvar.next, %.split ] ; 2 uses
  %i.ag = mul nsw i64 %i.j, %indvar               ; 20 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep47 = getelementptr i8, ptr %invariant.gep46, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep47, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep49 = getelementptr i8, ptr %invariant.gep48, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep49, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep51 = getelementptr i8, ptr %invariant.gep50, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep51, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep53 = getelementptr i8, ptr %invariant.gep52, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep53, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep55 = getelementptr i8, ptr %invariant.gep54, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep55, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep57 = getelementptr i8, ptr %invariant.gep56, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep57, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep59 = getelementptr i8, ptr %invariant.gep58, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep59, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep61 = getelementptr i8, ptr %invariant.gep60, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep61, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep63 = getelementptr i8, ptr %invariant.gep62, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep63, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep65 = getelementptr i8, ptr %invariant.gep64, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep65, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep67 = getelementptr i8, ptr %invariant.gep66, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep67, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep69 = getelementptr i8, ptr %invariant.gep68, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep69, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep71 = getelementptr i8, ptr %invariant.gep70, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep71, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep73 = getelementptr i8, ptr %invariant.gep72, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep73, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep75 = getelementptr i8, ptr %invariant.gep74, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep75, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep77 = getelementptr i8, ptr %invariant.gep76, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep77, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep79 = getelementptr i8, ptr %invariant.gep78, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep79, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep81 = getelementptr i8, ptr %invariant.gep80, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep81, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvar.next, 20
  br i1 %exitcond.not, label %.split38, label %.split

.split38.critedge:                                ; preds = %bb.a
  %.40..40..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store double 1.000000e+00, ptr %.40..40..sroa_idx1, align 8, !tbaa !22
  br label %.split38

.split38:                                         ; preds = %.split, %.split38.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

declare i32 @CVodeCreateB(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetUserDataB(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeInitB(ptr noundef, i32 noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @fB(double %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 4 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #10 ; 24 uses
  %i.c = tail call ptr @N_VGetArrayPointer(ptr noundef %3) #10 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24   ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 808
  %i.h = getelementptr i8, ptr %4, i64 20008      ; 3 uses
  %i.i = getelementptr i8, ptr %4, i64 688        ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 736 ; 2 uses
  %i.k = load i32, ptr %i.d, align 4, !tbaa !27   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 784
  %i.m = load double, ptr %i.l, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 792
  %i.o = load double, ptr %i.n, align 8, !tbaa !26
  %i.p = sub i32 0, %i.k                          ; 2 uses
  %i.q = getelementptr i8, ptr %4, i64 304        ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 592 ; 6 uses
  %i.s = icmp sgt i32 %i.f, 0
  %i.t = sub i32 0, %i.f                          ; 2 uses
  %.not88 = icmp slt i32 %i.f, 1
  %wide.trip.count.i = zext i32 %i.f to i64       ; 24 uses
  %i.u = add i32 %i.f, 1                          ; 2 uses
  %i.v = sext i32 %i.f to i64                     ; 4 uses
  %i.w = sext i32 %i.k to i64                     ; 4 uses
  %wide.trip.count = zext i32 %i.u to i64         ; 4 uses
  %i.x = add nsw i64 %wide.trip.count, -2         ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 20008
  %i.y = zext i32 %i.k to i64
  %i.z = shl nuw nsw i64 %wide.trip.count, 3      ; 3 uses
  %i.aa = getelementptr i8, ptr %4, i64 %i.z
  %scevgep102 = getelementptr i8, ptr %i.aa, i64 20000
  %i.ab = add nsw i64 %i.z, -8                    ; 6 uses
  %scevgep105 = getelementptr i8, ptr %i.c, i64 %i.ab
  %i.ac = getelementptr i8, ptr %4, i64 %i.z
  %scevgep107 = getelementptr i8, ptr %i.ac, i64 728
  %scevgep109 = getelementptr i8, ptr %i.b, i64 %i.ab
  %scevgep112 = getelementptr i8, ptr %i.b, i64 %i.ab
  %scevgep115 = getelementptr i8, ptr %i.b, i64 %i.ab
  %scevgep118 = getelementptr i8, ptr %i.b, i64 %i.ab
  %scevgep121 = getelementptr i8, ptr %i.b, i64 %i.ab
  %i.ad = shl nuw nsw i64 %wide.trip.count.i, 3   ; 2 uses
  %i.ae = shl nsw i64 %i.w, 3
  %i.af = shl nsw i64 %i.v, 3
  %i.ag = mul nuw nsw i64 %wide.trip.count.i, 56
  %i.ah = getelementptr i8, ptr %4, i64 %i.ag
  %scevgep155 = getelementptr i8, ptr %i.ah, i64 256
  %i.ai = shl nsw i64 %i.w, 3
  %i.aj = mul nsw i64 %i.v, 152
  %i.ak = shl nuw nsw i64 %wide.trip.count.i, 3
  %i.al = add nsw i64 %i.aj, %i.ak                ; 2 uses
  %i.am = shl nsw i64 %i.w, 3
  %i.an = shl nsw i64 %i.v, 3
  %i.ao = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %i.ap = getelementptr i8, ptr %4, i64 %i.al
  %i.aq = getelementptr i8, ptr %i.ap, i64 20008
  %i.ar = getelementptr i8, ptr %4, i64 %i.ad
  %i.as = getelementptr i8, ptr %i.ar, i64 20008
  %min.iters.check214 = icmp ult i32 %i.f, 4
  %n.vec216 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n225 = icmp eq i64 %n.vec216, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter230 = and i64 %wide.trip.count.i, 1
  %i.at = icmp eq i64 %i.ao, 0
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  %lcmp.mod232 = trunc i32 %i.f to i1
  %min.iters.check200 = icmp eq i32 %i.f, 1
  %n.vec202 = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %cmp.n210 = icmp eq i64 %n.vec202, %wide.trip.count.i
  %xtraiter233 = and i64 %wide.trip.count.i, 1
  %lcmp.mod234.not = icmp eq i64 %xtraiter233, 0
  %i.au = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check170 = icmp ult i32 %i.f, 4
  %n.vec172 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n183 = icmp eq i64 %n.vec172, %wide.trip.count.i
  %xtraiter236 = and i64 %wide.trip.count.i, 1
  %lcmp.mod237.not = icmp eq i64 %xtraiter236, 0
  %i.av = add nsw i64 %wide.trip.count.i, -1
  %i.aw = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i32 %i.u, 9
  %i.ax = trunc i64 %i.x to i32                   ; 5 uses
  %i.ay = icmp ugt i64 %i.x, 4294967295
  %n.vec = and i64 %i.aw, -2                      ; 2 uses
  %i.az = or i64 %i.aw, 1
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv97 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next98, %bb.d ] ; 10 uses
  %i.ba = mul i64 %i.am, %indvars.iv97
  %i.bb = mul i64 %i.ai, %indvars.iv97            ; 5 uses
  %i.bc = getelementptr i8, ptr %4, i64 %i.bb
  %scevgep186 = getelementptr i8, ptr %i.bc, i64 808 ; 2 uses
  %scevgep187 = getelementptr i8, ptr %i.aq, i64 %i.bb ; 2 uses
  %scevgep188 = getelementptr i8, ptr %i.b, i64 %i.bb
  %i.bd = add i64 %i.al, %i.bb                    ; 2 uses
  %scevgep189 = getelementptr i8, ptr %i.b, i64 %i.bd
  %scevgep190 = getelementptr i8, ptr %i.a, i64 %i.bb
  %scevgep191 = getelementptr i8, ptr %i.a, i64 %i.bd
  %i.be = mul i64 %i.ae, %indvars.iv97            ; 2 uses
  %i.bf = add i64 %i.ad, %i.be
  %i.bg = mul i64 %indvars.iv97, %i.y             ; 2 uses
  %i.bh = trunc i64 %i.bg to i32                  ; 2 uses
  %i.bi = trunc i64 %indvars.iv97 to i32
  %i.bj = mul i32 %i.k, %i.bi                     ; 2 uses
  %i.bk = trunc nuw nsw i64 %indvars.iv97 to i32
  %i.bl = uitofp nneg i32 %i.bk to double
  %i.bm = fmul double %i.o, %i.bl
  %i.bn = mul nsw i64 %indvars.iv97, %i.w
  %i.bo = icmp eq i64 %indvars.iv97, 19
  %i.bp = select i1 %i.bo, i32 %i.p, i32 %i.k     ; 4 uses
  %i.bq = icmp eq i64 %indvars.iv97, 0
  %i.br = select i1 %i.bq, i32 %i.k, i32 %i.p     ; 4 uses
  %i.bs = add i32 %i.br, %i.bj
  %i.bt = add i32 %i.bp, %i.bj
  %i.bu = add i32 %i.bp, %i.bh
  %i.bv = add i32 %i.br, %i.bh
  %i.bw = insertelement <2 x ptr> poison, ptr %scevgep186, i64 0
  %i.bx = insertelement <2 x ptr> %i.bw, ptr %scevgep190, i64 1
  %i.by = insertelement <2 x ptr> poison, ptr %scevgep189, i64 0
  %i.bz = insertelement <2 x ptr> %i.by, ptr %scevgep187, i64 1
  %i.ca = insertelement <2 x ptr> poison, ptr %scevgep188, i64 0
  %i.cb = insertelement <2 x ptr> %i.ca, ptr %scevgep186, i64 1
  %i.cc = insertelement <2 x ptr> poison, ptr %scevgep187, i64 0
  %i.cd = insertelement <2 x ptr> %i.cc, ptr %scevgep191, i64 1
  %i.ce = getelementptr i8, ptr %i.as, i64 %i.be
  %invariant.op = add i64 215, %i.ba
  %i.cf = icmp ult <2 x ptr> %i.bx, %i.bz
  %i.cg = icmp ult <2 x ptr> %i.cb, %i.cd
  %i.ch = and <2 x i1> %i.cg, %i.cf
  %i.ci = bitcast <2 x i1> %i.ch to i2
  %.not = icmp eq i2 %i.ci, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %indvars.iv93 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next94, %._crit_edge ] ; 9 uses
  %i.cj = mul i64 %i.af, %indvars.iv93            ; 2 uses
  %scevgep154 = getelementptr i8, ptr %i.ce, i64 %i.cj ; 3 uses
  %i.ck = add i64 %i.bf, %i.cj                    ; 2 uses
  %scevgep156 = getelementptr i8, ptr %i.a, i64 %i.ck
  %scevgep157 = getelementptr i8, ptr %i.b, i64 %i.ck
  %i.cl = mul i64 %indvars.iv93, %wide.trip.count.i ; 3 uses
  %i.cm = add i64 %i.bg, %i.cl                    ; 2 uses
  %i.cn = trunc i64 %i.cm to i32                  ; 2 uses
  %sext = shl i64 %i.cm, 32
  %i.co = ashr exact i64 %sext, 29                ; 6 uses
  %scevgep101 = getelementptr i8, ptr %scevgep, i64 %i.co
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.co
  %scevgep104 = getelementptr i8, ptr %i.c, i64 %i.co ; 7 uses
  %scevgep106 = getelementptr i8, ptr %scevgep105, i64 %i.co ; 7 uses
  %i.cp = trunc i64 %i.cl to i32
  %i.cq = add i32 %i.bu, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = shl nsw i64 %i.cr, 3                    ; 2 uses
  %scevgep114 = getelementptr i8, ptr %i.b, i64 %i.cs
  %scevgep116 = getelementptr i8, ptr %scevgep115, i64 %i.cs
  %i.ct = trunc i64 %i.cl to i32
  %i.cu = add i32 %i.bv, %i.ct
  %i.cv = sext i32 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 3                    ; 2 uses
  %scevgep117 = getelementptr i8, ptr %i.b, i64 %i.cw
  %scevgep119 = getelementptr i8, ptr %scevgep118, i64 %i.cw
  %scevgep120 = getelementptr i8, ptr %i.b, i64 %i.co
  %scevgep122 = getelementptr i8, ptr %scevgep121, i64 %i.co
  %i.cx = mul i64 %indvars.iv93, %wide.trip.count.i ; 2 uses
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = add i32 %i.bs, %i.cy                    ; 2 uses
  %i.da = trunc i64 %i.cx to i32
  %i.db = add i32 %i.bt, %i.da                    ; 2 uses
  %i.dc = trunc nuw nsw i64 %indvars.iv93 to i32
  %i.dd = uitofp nneg i32 %i.dc to double
  %i.de = fmul double %i.m, %i.dd
  %i.df = mul nsw i64 %indvars.iv93, %i.v
  %i.dg = add i64 %i.df, %i.bn                    ; 5 uses
  %i.dh = getelementptr [8 x i8], ptr %i.a, i64 %i.dg ; 7 uses
  %i.di = getelementptr [8 x i8], ptr %i.b, i64 %i.dg ; 6 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.dg ; 13 uses
  %i.dk = getelementptr [8 x i8], ptr %i.h, i64 %i.dg ; 11 uses
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.de, double %i.bm, double 1.000000e+00) ; 6 uses
  br i1 %i.s, label %.lr.ph.i.preheader, label %._crit_edge

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.dm = mul i64 %i.an, %indvars.iv93
  %op.rdx227.reass = add i64 %i.dm, %invariant.op
  %diff.check = icmp ult i64 %op.rdx227.reass, 31
end_hunk_0
