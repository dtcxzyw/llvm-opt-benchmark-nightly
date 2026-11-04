Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/mp?download=true
inline.NumInlined: 114
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 68
begin_hunk_0_@mul:.preheader31
  %i.cs = add nuw nsw i64 %i.ck, %i.cr
  %i.ct = add nuw nsw i64 %i.cs, %i.cn            ; 2 uses
  %i.cu = trunc i64 %i.ct to i16
  store i16 %i.cu, ptr %i.cp, align 2, !tbaa !20
  %i.cv = lshr i64 %i.ct, 16
  %i.cw = load i16, ptr %i.k, align 2, !tbaa !20
  %i.cx = zext i16 %i.cw to i64
  %i.cy = mul nuw nsw i64 %i.cx, %i.o
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.db = load i16, ptr %i.da, align 2, !tbaa !20
  %i.dc = zext i16 %i.db to i64
  %i.dd = add nuw nsw i64 %i.cv, %i.dc
  %i.de = add nuw nsw i64 %i.dd, %i.cy            ; 2 uses
  %i.df = trunc i64 %i.de to i16
  store i16 %i.df, ptr %i.da, align 2, !tbaa !20
  %i.dg = lshr i64 %i.de, 16
  %i.dh = load i16, ptr %i.l, align 2, !tbaa !20
  %i.di = zext i16 %i.dh to i64
  %i.dj = mul nuw nsw i64 %i.di, %i.o
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 18 ; 2 uses
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !20
  %i.dn = zext i16 %i.dm to i64
  %i.do = add nuw nsw i64 %i.dg, %i.dn
  %i.dp = add nuw nsw i64 %i.do, %i.dj            ; 2 uses
  %i.dq = trunc i64 %i.dp to i16
  store i16 %i.dq, ptr %i.dl, align 2, !tbaa !20
  %i.dr = lshr i64 %i.dp, 16
  %i.ds = trunc nuw i64 %i.dr to i16
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  store i16 %i.ds, ptr %i.du, align 2, !tbaa !20
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %.preheader.preheader
  %indvars.iv.next.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %indvars.iv.next50, %.preheader.preheader ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, 10
  br i1 %exitcond.not, label %bb.c, label %bb.a, !llvm.loop !37

bb.c:                                             ; preds = %bb.b
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !26
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !26
  %i.dz = add i16 %i.dy, %i.dw                    ; 20 uses
  %i.ea = load i16, ptr %0, align 2, !tbaa !24
  %i.eb = load i16, ptr %1, align 2, !tbaa !24
  %i.ec = mul i16 %i.eb, %i.ea                    ; 2 uses
  %i.ed = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep, align 2, !tbaa !20 ; 2 uses
  %.not.i = icmp eq i16 %i.ed, 0
  br i1 %.not.i, label %bb.d, label %.preheader.i

bb.d:                                             ; preds = %bb.c
  %i.ee = add i16 %i.dz, -1
  %i.ef = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep57, align 4, !tbaa !20 ; 2 uses
  %.not.i.1 = icmp eq i16 %i.ef, 0
  br i1 %.not.i.1, label %bb.e, label %.preheader.i

bb.e:                                             ; preds = %bb.d
  %i.eg = add i16 %i.dz, -2
  %i.eh = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep58, align 2, !tbaa !20 ; 2 uses
  %.not.i.2 = icmp eq i16 %i.eh, 0
  br i1 %.not.i.2, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  %i.ei = add i16 %i.dz, -3
  %i.ej = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep59, align 16, !tbaa !20 ; 2 uses
  %.not.i.3 = icmp eq i16 %i.ej, 0
  br i1 %.not.i.3, label %bb.g, label %.preheader.i

bb.g:                                             ; preds = %bb.f
  %i.ek = add i16 %i.dz, -4
  %i.el = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60, align 2, !tbaa !20 ; 2 uses
  %.not.i.4 = icmp eq i16 %i.el, 0
  br i1 %.not.i.4, label %bb.h, label %.preheader.i

bb.h:                                             ; preds = %bb.g
  %i.em = add i16 %i.dz, -5
  %i.en = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61, align 4, !tbaa !20 ; 2 uses
  %.not.i.5 = icmp eq i16 %i.en, 0
  br i1 %.not.i.5, label %bb.i, label %.preheader.i

bb.i:                                             ; preds = %bb.h
  %i.eo = add i16 %i.dz, -6
  %i.ep = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep62, align 2, !tbaa !20 ; 2 uses
  %.not.i.6 = icmp eq i16 %i.ep, 0
  br i1 %.not.i.6, label %bb.j, label %.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.eq = add i16 %i.dz, -7
  %i.er = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep63, align 8, !tbaa !20 ; 2 uses
  %.not.i.7 = icmp eq i16 %i.er, 0
  br i1 %.not.i.7, label %bb.k, label %.preheader.i

bb.k:                                             ; preds = %bb.j
  %i.es = add i16 %i.dz, -8
  %i.et = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep64, align 2, !tbaa !20 ; 2 uses
  %.not.i.8 = icmp eq i16 %i.et, 0
  br i1 %.not.i.8, label %bb.l, label %.preheader.i

bb.l:                                             ; preds = %bb.k
  %i.eu = add i16 %i.dz, -9
  %i.ev = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep65, align 4, !tbaa !20 ; 2 uses
  %.not.i.9 = icmp eq i16 %i.ev, 0
  br i1 %.not.i.9, label %bb.m, label %.preheader.i

bb.m:                                             ; preds = %bb.l
  %i.ew = add i16 %i.dz, -10
  %i.ex = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep66, align 2, !tbaa !20 ; 2 uses
  %.not.i.10 = icmp eq i16 %i.ex, 0
  br i1 %.not.i.10, label %bb.n, label %.preheader.i

bb.n:                                             ; preds = %bb.m
  %i.ey = add i16 %i.dz, -11
  %i.ez = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep67, align 16, !tbaa !20
  %.not.i.11 = icmp eq i16 %i.ez, 0
  br i1 %.not.i.11, label %bb.o, label %.lr.ph47.i

bb.o:                                             ; preds = %bb.n
  %i.fa = add i16 %i.dz, -12
  %i.fb = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep68, align 2, !tbaa !20
  %.not.i.12 = icmp eq i16 %i.fb, 0
  br i1 %.not.i.12, label %bb.p, label %.lr.ph47.i

bb.p:                                             ; preds = %bb.o
  %i.fc = add i16 %i.dz, -13
  %i.fd = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep69, align 4, !tbaa !20
  %.not.i.13 = icmp eq i16 %i.fd, 0
  br i1 %.not.i.13, label %bb.q, label %.lr.ph47.i

bb.q:                                             ; preds = %bb.p
  %i.fe = add i16 %i.dz, -14
  %i.ff = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep70, align 2, !tbaa !20
  %.not.i.14 = icmp eq i16 %i.ff, 0
  br i1 %.not.i.14, label %bb.r, label %.lr.ph47.i

bb.r:                                             ; preds = %bb.q
  %i.fg = add i16 %i.dz, -15
  %i.fh = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep71, align 8, !tbaa !20
  %.not.i.15 = icmp eq i16 %i.fh, 0
  br i1 %.not.i.15, label %bb.s, label %.lr.ph47.i

bb.s:                                             ; preds = %bb.r
  %i.fi = add i16 %i.dz, -16
  %i.fj = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep72, align 2, !tbaa !20
  %.not.i.16 = icmp eq i16 %i.fj, 0
  br i1 %.not.i.16, label %bb.t, label %.lr.ph47.i

bb.t:                                             ; preds = %bb.s
  %i.fk = add i16 %i.dz, -17
  %i.fl = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep73, align 4, !tbaa !20
  %.not.i.17 = icmp eq i16 %i.fl, 0
  br i1 %.not.i.17, label %bb.u, label %.lr.ph47.i

bb.u:                                             ; preds = %bb.t
  %i.fm = add i16 %i.dz, -18
  %i.fn = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep74, align 2, !tbaa !20
  %.not.i.18 = icmp eq i16 %i.fn, 0
  br i1 %.not.i.18, label %bb.v, label %.lr.ph47.i

bb.v:                                             ; preds = %bb.u
  %i.fo = add i16 %i.dz, -19
  %i.fp = load i16, ptr %i.a, align 16, !tbaa !20
  %.not.i.19 = icmp eq i16 %i.fp, 0
  br i1 %.not.i.19, label %bb.w, label %.lr.ph47.i

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %2, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %pack.exit

.preheader.i:                                     ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.ph = phi i16 [ %i.ex, %bb.m ], [ %i.ev, %bb.l ], [ %i.et, %bb.k ], [ %i.er, %bb.j ], [ %i.ep, %bb.i ], [ %i.en, %bb.h ], [ %i.el, %bb.g ], [ %i.ej, %bb.f ], [ %i.eh, %bb.e ], [ %i.ef, %bb.d ], [ %i.ed, %bb.c ]
  %indvars.iv72.in.i.lcssa.sroa.phi.ph = phi ptr [ %indvars.iv72.i.lcssa.sroa.gep65, %bb.m ], [ %indvars.iv72.i.lcssa.sroa.gep64, %bb.l ], [ %indvars.iv72.i.lcssa.sroa.gep63, %bb.k ], [ %indvars.iv72.i.lcssa.sroa.gep62, %bb.j ], [ %indvars.iv72.i.lcssa.sroa.gep61, %bb.i ], [ %indvars.iv72.i.lcssa.sroa.gep60, %bb.h ], [ %indvars.iv72.i.lcssa.sroa.gep59, %bb.g ], [ %indvars.iv72.i.lcssa.sroa.gep58, %bb.f ], [ %indvars.iv72.i.lcssa.sroa.gep57, %bb.e ], [ %indvars.iv72.i.lcssa.sroa.gep, %bb.d ], [ %indvars.iv72.in.i.lcssa.sroa.gep, %bb.c ] ; 2 uses
  %.03341.i.lcssa.ph = phi i16 [ %i.ew, %bb.m ], [ %i.eu, %bb.l ], [ %i.es, %bb.k ], [ %i.eq, %bb.j ], [ %i.eo, %bb.i ], [ %i.em, %bb.h ], [ %i.ek, %bb.g ], [ %i.ei, %bb.f ], [ %i.eg, %bb.e ], [ %i.ee, %bb.d ], [ %i.dz, %bb.c ]
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %.03341.i.lcssa.ph, ptr %i.fq, align 2, !tbaa !26
  store i16 %i.ec, ptr %2, align 2, !tbaa !24
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i16 %.ph, ptr %i.fs, align 2, !tbaa !20
  %i.ft = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.ph, i64 -4
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !20
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 %i.fu, ptr %i.fv, align 2, !tbaa !20
  %i.fw = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.ph, i64 -20
  %i.fx = load <8 x i16>, ptr %i.fw, align 2, !tbaa !20
  store <8 x i16> %i.fx, ptr %i.fr, align 2, !tbaa !20
  br label %pack.exit

.lr.ph47.i:                                       ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.03341.i.lcssa = phi i16 [ %i.fm, %bb.u ], [ %i.fo, %bb.v ], [ %i.ey, %bb.n ], [ %i.fa, %bb.o ], [ %i.fc, %bb.p ], [ %i.fe, %bb.q ], [ %i.fg, %bb.r ], [ %i.fi, %bb.s ], [ %i.fk, %bb.t ]
  %indvars.iv58.i.lcssa = phi i64 [ 2, %bb.u ], [ 0, %bb.v ], [ 16, %bb.n ], [ 14, %bb.o ], [ 12, %bb.p ], [ 10, %bb.q ], [ 8, %bb.r ], [ 6, %bb.s ], [ 4, %bb.t ] ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %.03341.i.lcssa, ptr %i.fy, align 2, !tbaa !26
  store i16 %i.ec, ptr %2, align 2, !tbaa !24
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ga = sub nuw nsw i64 22, %indvars.iv58.i.lcssa
  %scevgep = getelementptr i8, ptr %2, i64 %i.ga
  %i.gb = add nuw nsw i64 %indvars.iv58.i.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 range(i64 0, 41) %i.gb, i1 false), !tbaa !20
  %i.gc = sub nuw nsw i64 18, %indvars.iv58.i.lcssa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.fz, i8 0, i64 %i.gc, i1 false), !tbaa !20
  br label %pack.exit

pack.exit:                                        ; preds = %bb.w, %.preheader.i, %.lr.ph47.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare void @bench_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @fftaccuracy_done() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @cached_bluestein_w, align 8, !tbaa !30 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @bench_free(ptr noundef nonnull %i.a) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr @cached_bluestein_y, align 8, !tbaa !30 ; 2 uses
  %.not2 = icmp eq ptr %i.b, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @bench_free(ptr noundef nonnull %i.b) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr @cached_bluestein_w, align 8, !tbaa !30
  store ptr null, ptr @cached_bluestein_y, align 8, !tbaa !30
  store i32 -1, ptr @cached_bluestein_n, align 4, !tbaa !31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc double @toreal(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !26   ; 8 uses
  %.not = icmp eq i16 %i.b, -32768
  br i1 %.not, label %bb.b, label %.lr.ph70.preheader

.lr.ph70.preheader:                               ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.e = load i16, ptr %i.d, align 2, !tbaa !20   ; 3 uses
  %.not5863 = icmp eq i16 %i.e, 0
  %i.f = zext i16 %i.e to i64
  %i.g = tail call range(i64 48, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = sub nuw nsw i32 64, %i.h
  %.043.lcssa = select i1 %.not5863, i32 0, i32 %i.i ; 4 uses
  %i.j = uitofp i16 %i.e to double
  %i.k = fmul nnan double %i.j, f0x3EF0000000000000
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load i16, ptr %i.l, align 2, !tbaa !20
  %i.n = uitofp i16 %i.m to double
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double f0x3DF0000000000000, double %i.k) ; 2 uses
  %i.p = icmp samesign ult i32 %.043.lcssa, 22
  br i1 %i.p, label %.lr.ph70.1, label %.preheader61

.preheader61:                                     ; preds = %.lr.ph70.2, %.lr.ph70.1, %.lr.ph70.preheader
  %indvars.iv.lcssa = phi i64 [ 9, %.lr.ph70.preheader ], [ 8, %.lr.ph70.1 ], [ 7, %.lr.ph70.2 ] ; 2 uses
  %.lcssa142 = phi double [ %i.o, %.lr.ph70.preheader ], [ %i.ao, %.lr.ph70.1 ], [ %i.at, %.lr.ph70.2 ]
  %.lcssa141 = phi double [ f0x3CF0000000000000, %.lr.ph70.preheader ], [ f0x3BF0000000000000, %.lr.ph70.1 ], [ f0x3AF0000000000000, %.lr.ph70.2 ] ; 2 uses
  %i.q = getelementptr [2 x i8], ptr %0, i64 %indvars.iv.lcssa
  %i.r = load i16, ptr %i.q, align 2, !tbaa !20
  %i.s = uitofp i16 %i.r to double
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %.lcssa141, double 0.000000e+00)
  %i.u = fmul nnan double %.lcssa141, f0x3EF0000000000000 ; 2 uses
  %i.v = fmul nnan double %i.u, f0x3EF0000000000000 ; 2 uses
  %indvars.iv.next104.2 = add nsw i64 %indvars.iv.lcssa, -4 ; 2 uses
  %i.w = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv.next104.2
  %i.x = load <2 x i16>, ptr %i.w, align 2, !tbaa !20
  %i.y = uitofp <2 x i16> %i.x to <2 x double>    ; 2 uses
  %i.z = extractelement <2 x double> %i.y, i64 1
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double %i.u, double %i.t)
  %i.ab = extractelement <2 x double> %i.y, i64 0
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.v, double %i.aa) ; 2 uses
  %i.ad = fmul nnan double %i.v, f0x3EF0000000000000
  %i.ae = and i64 %indvars.iv.next104.2, 4294967295 ; 5 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %.043.lcssa, i32 22)
  %i.af = add nuw nsw i32 %umax, 15
  %i.ag = sub nsw i32 %i.af, %.043.lcssa
  %i.ah = lshr i32 %i.ag, 4                       ; 2 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %.not134 = icmp eq i32 %i.ah, 5
  %i.aj = select i1 %.not134, i64 6, i64 5
  %i.ak = sub nsw i64 %i.aj, %i.ai                ; 7 uses
  %min.iters.check = icmp ult i64 %i.ak, 4
  br i1 %min.iters.check, label %.lr.ph80.preheader, label %vector.main.loop.iter.check

.lr.ph70.1:                                       ; preds = %.lr.ph70.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.am = load i16, ptr %i.al, align 2, !tbaa !20
  %i.an = uitofp i16 %i.am to double
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.an, double f0x3CF0000000000000, double %i.o) ; 2 uses
  %i.ap = icmp samesign ult i32 %.043.lcssa, 6
  br i1 %i.ap, label %.lr.ph70.2, label %.preheader61

.lr.ph70.2:                                       ; preds = %.lr.ph70.1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !20
  %i.as = uitofp i16 %i.ar to double
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double f0x3BF0000000000000, double %i.ao)
  br label %.preheader61

vector.main.loop.iter.check:                      ; preds = %.preheader61
  %min.iters.check122 = icmp ult i64 %i.ak, 16
  br i1 %min.iters.check122, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.au = and i64 %i.ak, 12
  %n.vec = and i64 %i.ak, -16                     ; 4 uses
  %i.av = sub nsw i64 %i.ae, %n.vec
  %i.aw = getelementptr [2 x i8], ptr %i.c, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.bd, %vector.body ]
  %vec.phi123 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.be, %vector.body ]
  %i.ax = xor i64 %index, -1
  %i.ay = getelementptr [2 x i8], ptr %i.aw, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -14
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -30
  %wide.load = load <8 x i16>, ptr %i.az, align 2, !tbaa !20
  %wide.load124 = load <8 x i16>, ptr %i.ba, align 2, !tbaa !20
  %reverse = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse125 = shufflevector <8 x i16> %wide.load124, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bb = freeze <8 x i16> %reverse
  %i.bc = freeze <8 x i16> %reverse125
  %i.bd = or <8 x i16> %i.bb, %vec.phi            ; 2 uses
  %i.be = or <8 x i16> %i.bc, %vec.phi123         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i16> %i.be, %i.bd
  %i.bg = tail call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.au, 0
  br i1 %min.epilog.iters.check, label %.lr.ph80.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.bg, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec126 = and i64 %i.ak, -4                   ; 3 uses
  %i.bh = sub nsw i64 %i.ae, %n.vec126
  %i.bi = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  %i.bj = getelementptr [2 x i8], ptr %i.c, i64 %i.ae
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index127 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next131, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi128 = phi <4 x i16> [ %i.bi, %vec.epilog.ph ], [ %i.bo, %vec.epilog.vector.body ]
  %i.bk = xor i64 %index127, -1
  %i.bl = getelementptr [2 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -6
  %wide.load129 = load <4 x i16>, ptr %i.bm, align 2, !tbaa !20
  %reverse130 = shufflevector <4 x i16> %wide.load129, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.bn = freeze <4 x i16> %reverse130
  %i.bo = or <4 x i16> %i.bn, %vec.phi128         ; 2 uses
  %index.next131 = add nuw i64 %index127, 4       ; 2 uses
  %i.bp = icmp eq i64 %index.next131, %n.vec126
  br i1 %i.bp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bq = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.bo) ; 2 uses
  %cmp.n132 = icmp eq i64 %i.ak, %n.vec126
  br i1 %cmp.n132, label %._crit_edge, label %.lr.ph80.preheader

.lr.ph80.preheader:                               ; preds = %.preheader61, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv106.ph = phi i64 [ %i.ae, %.preheader61 ], [ %i.av, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  %.079.ph = phi i16 [ 0, %.preheader61 ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  br label %.lr.ph80

.lr.ph80:                                         ; preds = %.lr.ph80.preheader, %.lr.ph80
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %.lr.ph80 ], [ %indvars.iv106.ph, %.lr.ph80.preheader ] ; 2 uses
  %.079 = phi i16 [ %i.bt, %.lr.ph80 ], [ %.079.ph, %.lr.ph80.preheader ]
  %indvars.iv.next107 = add nsw i64 %indvars.iv106, -1 ; 2 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next107
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !20
  %.fr116 = freeze i16 %i.bs
  %i.bt = or i16 %.fr116, %.079                   ; 2 uses
  %i.bu = icmp samesign ugt i64 %indvars.iv106, 1
end_hunk_0
begin_hunk_1_@submag0:bb.a
  %i.bf = add nsw i64 %i.bc, 2147483648
  %i.bg = lshr i64 %i.bf, 16
  %i.bh = add nsw i64 %i.bg, -32768
  %indvars.iv.next46 = or disjoint i64 %indvars.iv45, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next46
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !20
  %i.bk = zext i16 %i.bj to i64
  %i.bl = getelementptr [2 x i8], ptr %i.k, i64 %indvars.iv
  %i.bm = getelementptr i8, ptr %i.bl, i64 2
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !20
  %i.bo = zext i16 %i.bn to i64
  %i.bp = sub nsw i64 %i.bk, %i.bo
  %i.bq = add nsw i64 %i.bp, %i.bh                ; 2 uses
  %i.br = trunc i64 %i.bq to i16
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next46
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !20
  %i.bt = add nsw i64 %i.bq, 2147483648
  %i.bu = lshr i64 %i.bt, 16
  %i.bv = add nsw i64 %i.bu, -32768
  %indvars.iv.next46.1 = or disjoint i64 %indvars.iv45, 2 ; 2 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next46.1
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !20
  %i.by = zext i16 %i.bx to i64
  %i.bz = getelementptr [2 x i8], ptr %i.k, i64 %indvars.iv
  %i.ca = getelementptr i8, ptr %i.bz, i64 4
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !20
  %i.cc = zext i16 %i.cb to i64
  %i.cd = sub nsw i64 %i.by, %i.cc
  %i.ce = add nsw i64 %i.cd, %i.bv                ; 2 uses
  %i.cf = trunc i64 %i.ce to i16
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next46.1
  store i16 %i.cf, ptr %i.cg, align 4, !tbaa !20
  %i.ch = add nsw i64 %i.ce, 2147483648
  %i.ci = lshr i64 %i.ch, 16
  %i.cj = add nsw i64 %i.ci, -32768
  %indvars.iv.next46.2 = or disjoint i64 %indvars.iv45, 3 ; 2 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next46.2
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !20
  %i.cm = zext i16 %i.cl to i64
  %i.cn = getelementptr [2 x i8], ptr %i.k, i64 %indvars.iv
  %i.co = getelementptr i8, ptr %i.cn, i64 6
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !20
  %i.cq = zext i16 %i.cp to i64
  %i.cr = sub nsw i64 %i.cm, %i.cq
  %i.cs = add nsw i64 %i.cr, %i.cj                ; 2 uses
  %i.ct = trunc i64 %i.cs to i16
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next46.2
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !20
  %i.cv = add nsw i64 %i.cs, 2147483648
  %i.cw = lshr i64 %i.cv, 16
  %i.cx = add nsw i64 %i.cw, -32768               ; 3 uses
  %indvars.iv.next46.3 = add nuw nsw i64 %indvars.iv45, 4 ; 2 uses
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.unr-lcssa, label %bb.c, !llvm.loop !3

.lr.ph38.new:                                     ; preds = %.prol.loopexit, %.lr.ph38.new
  %indvars.iv50 = phi i64 [ %indvars.iv.next51.3, %.lr.ph38.new ], [ %indvars.iv50.unr, %.prol.loopexit ] ; 6 uses
  %.137 = phi i64 [ %i.eh, %.lr.ph38.new ], [ %.137.unr, %.prol.loopexit ]
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %indvars.iv50
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !20
  %i.da = zext i16 %i.cz to i64
  %i.db = add nsw i64 %.137, %i.da                ; 2 uses
  %i.dc = trunc i64 %i.db to i16
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv50
  store i16 %i.dc, ptr %i.dd, align 2, !tbaa !20
  %i.de = add nsw i64 %i.db, 2147483648
  %i.df = lshr i64 %i.de, 16
  %i.dg = add nsw i64 %i.df, -32768
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %indvars.iv.next51
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !20
  %i.dj = zext i16 %i.di to i64
  %i.dk = add nsw i64 %i.dg, %i.dj                ; 2 uses
  %i.dl = trunc i64 %i.dk to i16
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next51
  store i16 %i.dl, ptr %i.dm, align 2, !tbaa !20
  %i.dn = add nsw i64 %i.dk, 2147483648
  %i.do = lshr i64 %i.dn, 16
  %i.dp = add nsw i64 %i.do, -32768
  %indvars.iv.next51.1 = add nuw nsw i64 %indvars.iv50, 2 ; 2 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %indvars.iv.next51.1
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !20
  %i.ds = zext i16 %i.dr to i64
  %i.dt = add nsw i64 %i.dp, %i.ds                ; 2 uses
  %i.du = trunc i64 %i.dt to i16
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next51.1
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !20
  %i.dw = add nsw i64 %i.dt, 2147483648
  %i.dx = lshr i64 %i.dw, 16
  %i.dy = add nsw i64 %i.dx, -32768
  %indvars.iv.next51.2 = add nuw nsw i64 %indvars.iv50, 3 ; 2 uses
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %indvars.iv.next51.2
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !20
  %i.eb = zext i16 %i.ea to i64
  %i.ec = add nsw i64 %i.dy, %i.eb                ; 2 uses
  %i.ed = trunc i64 %i.ec to i16
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next51.2
  store i16 %i.ed, ptr %i.ee, align 2, !tbaa !20
  %i.ef = add nsw i64 %i.ec, 2147483648
  %i.eg = lshr i64 %i.ef, 16
  %i.eh = add nsw i64 %i.eg, -32768
  %indvars.iv.next51.3 = add nuw nsw i64 %indvars.iv50, 4 ; 2 uses
  %exitcond53.not.3 = icmp eq i64 %indvars.iv.next51.3, 10
  br i1 %exitcond53.not.3, label %._crit_edge, label %.lr.ph38.new, !llvm.loop !4

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph38.new, %.preheader
  %i.ei = load i16, ptr %1, align 2, !tbaa !24    ; 2 uses
  %i.ej = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep, align 2, !tbaa !20 ; 2 uses
  %.not.i.not.not = icmp eq i16 %i.ej, 0
  br i1 %.not.i.not.not, label %bb.d, label %.preheader.i

bb.d:                                             ; preds = %._crit_edge
  %i.ek = add i16 %i.c, -1
  %i.el = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep54, align 16, !tbaa !20
  %.not.i.1 = icmp eq i16 %i.el, 0
  br i1 %.not.i.1, label %bb.e, label %.lr.ph47.i

bb.e:                                             ; preds = %bb.d
  %i.em = add i16 %i.c, -2
  %i.en = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep55, align 2, !tbaa !20
  %.not.i.2 = icmp eq i16 %i.en, 0
  br i1 %.not.i.2, label %bb.f, label %.lr.ph47.i

bb.f:                                             ; preds = %bb.e
  %i.eo = add i16 %i.c, -3
  %i.ep = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep56, align 4, !tbaa !20
  %.not.i.3 = icmp eq i16 %i.ep, 0
  br i1 %.not.i.3, label %bb.g, label %.lr.ph47.i

bb.g:                                             ; preds = %bb.f
  %i.eq = add i16 %i.c, -4
  %i.er = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep57, align 2, !tbaa !20
  %.not.i.4 = icmp eq i16 %i.er, 0
  br i1 %.not.i.4, label %bb.h, label %.lr.ph47.i

bb.h:                                             ; preds = %bb.g
  %i.es = add i16 %i.c, -5
  %i.et = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep58, align 8, !tbaa !20
  %.not.i.5 = icmp eq i16 %i.et, 0
  br i1 %.not.i.5, label %bb.i, label %.lr.ph47.i

bb.i:                                             ; preds = %bb.h
  %i.eu = add i16 %i.c, -6
  %i.ev = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep59, align 2, !tbaa !20
  %.not.i.6 = icmp eq i16 %i.ev, 0
  br i1 %.not.i.6, label %bb.j, label %.lr.ph47.i

bb.j:                                             ; preds = %bb.i
  %i.ew = add i16 %i.c, -7
  %i.ex = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60, align 4, !tbaa !20
  %.not.i.7 = icmp eq i16 %i.ex, 0
  br i1 %.not.i.7, label %bb.k, label %.lr.ph47.i

bb.k:                                             ; preds = %bb.j
  %i.ey = add i16 %i.c, -8
  %i.ez = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61, align 2, !tbaa !20
  %.not.i.8 = icmp eq i16 %i.ez, 0
  br i1 %.not.i.8, label %bb.l, label %.lr.ph47.i

bb.l:                                             ; preds = %bb.k
  %i.fa = add i16 %i.c, -9
  %i.fb = load i16, ptr %i.a, align 16, !tbaa !20
  %.not.i.9 = icmp eq i16 %i.fb, 0
  br i1 %.not.i.9, label %bb.m, label %.lr.ph47.i

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %3, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %pack.exit

.preheader.i:                                     ; preds = %._crit_edge
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %i.c, ptr %i.fc, align 2, !tbaa !26
  %i.fd = trunc nsw i32 %0 to i16
  %i.fe = mul i16 %i.ei, %i.fd
  store i16 %i.fe, ptr %3, align 2, !tbaa !24
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i16 %i.ej, ptr %i.fg, align 2, !tbaa !20
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fi = load i16, ptr %i.fh, align 16, !tbaa !20
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !20
  %i.fk = load <8 x i16>, ptr %i.a, align 16, !tbaa !20
  store <8 x i16> %i.fk, ptr %i.ff, align 2, !tbaa !20
  br label %pack.exit

.lr.ph47.i:                                       ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.03341.i.lcssa.ph = phi i16 [ %i.fa, %bb.l ], [ %i.ey, %bb.k ], [ %i.ew, %bb.j ], [ %i.eu, %bb.i ], [ %i.es, %bb.h ], [ %i.eq, %bb.g ], [ %i.eo, %bb.f ], [ %i.em, %bb.e ], [ %i.ek, %bb.d ]
  %indvars.iv58.i.lcssa.ph = phi i64 [ 0, %bb.l ], [ 2, %bb.k ], [ 4, %bb.j ], [ 6, %bb.i ], [ 8, %bb.h ], [ 10, %bb.g ], [ 12, %bb.f ], [ 14, %bb.e ], [ 16, %bb.d ] ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %.03341.i.lcssa.ph, ptr %i.fl, align 2, !tbaa !26
  %i.fm = trunc nsw i32 %0 to i16
  %i.fn = mul i16 %i.ei, %i.fm
  store i16 %i.fn, ptr %3, align 2, !tbaa !24
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fp = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph
  %scevgep = getelementptr i8, ptr %3, i64 %i.fp
  %i.fq = add nuw nsw i64 %indvars.iv58.i.lcssa.ph, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 range(i64 0, 21) %i.fq, i1 false), !tbaa !20
  %i.fr = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.fo, i8 0, i64 %i.fr, i1 false), !tbaa !20
  br label %pack.exit

pack.exit:                                        ; preds = %bb.m, %.preheader.i, %.lr.ph47.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @addmag0(i32 noundef range(i32 -1, 2) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [11 x i16], align 16              ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !26   ; 13 uses
  %i.d = sext i16 %i.c to i32                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !26
  %i.g = sext i16 %i.f to i32                     ; 3 uses
  %i.h = sub nsw i32 %i.d, %i.g
  %i.i = icmp slt i32 %i.h, 10
  %indvars.iv72.i.lcssa.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %indvars.iv72.i.lcssa.sroa.gep60 = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %indvars.iv72.i.lcssa.sroa.gep61 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %indvars.iv72.i.lcssa.sroa.gep62 = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %indvars.iv72.i.lcssa.sroa.gep63 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %indvars.iv72.i.lcssa.sroa.gep64 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %indvars.iv72.i.lcssa.sroa.gep65 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %indvars.iv72.i.lcssa.sroa.gep66 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %indvars.iv72.i.lcssa.sroa.gep67 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %indvars.iv72.i.lcssa.sroa.gep68 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %indvars.iv72.in.i.lcssa.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  br i1 %i.i, label %.lr.ph, label %.lr.ph40

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.l = sext i16 %i.c to i64
  %i.m = sub nsw i32 0, %i.g
  %i.n = sext i32 %i.m to i64
  %i.o = add nsw i64 %i.l, %i.n                   ; 2 uses
  %i.p = add nsw i32 %i.g, 10
  %i.q = sub nsw i32 %i.p, %i.d                   ; 5 uses
  %wide.trip.count = zext i32 %i.q to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.r = add nsw i32 %i.q, -1
  %i.s = icmp ult i32 %i.r, 3
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.c

.preheader.unr-lcssa:                             ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.unr-lcssa, %.lr.ph
  %indvars.iv51.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next52.3, %.preheader.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ %i.o, %.lr.ph ], [ %indvars.iv.next.3, %.preheader.unr-lcssa ]
  %.036.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.cl, %.preheader.unr-lcssa ]
  %lcmp.mod103 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod103)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv51.epil = phi i64 [ %indvars.iv51.epil.init, %.epil.preheader ], [ %indvars.iv.next52.epil, %bb.b ] ; 3 uses
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %.036.epil = phi i64 [ %.036.epil.init, %.epil.preheader ], [ %i.ad, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv51.epil
  %i.u = load i16, ptr %i.t, align 2, !tbaa !20
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds [2 x i8], ptr %i.k, i64 %indvars.iv.epil
  %i.x = load i16, ptr %i.w, align 2, !tbaa !20
  %i.y = zext i16 %i.x to i64
  %i.z = add nuw nsw i64 %.036.epil, %i.v
  %i.aa = add nuw nsw i64 %i.z, %i.y              ; 2 uses
  %i.ab = trunc i64 %i.aa to i16
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv51.epil
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !20
  %i.ad = lshr i64 %i.aa, 16                      ; 2 uses
  %indvars.iv.next52.epil = add nuw nsw i64 %indvars.iv51.epil, 1
  %indvars.iv.next.epil = add nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.b, !llvm.loop !50

.preheader:                                       ; preds = %bb.b, %.preheader.unr-lcssa
  %.lcssa101 = phi i64 [ %i.cl, %.preheader.unr-lcssa ], [ %i.ad, %bb.b ] ; 2 uses
  %i.ae = icmp samesign ult i32 %i.q, 10
  br i1 %i.ae, label %.lr.ph40, label %._crit_edge

.lr.ph40:                                         ; preds = %bb.a, %.preheader
  %.0.lcssa94 = phi i64 [ %.lcssa101, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %.027.lcssa93 = phi i32 [ %i.q, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 9 uses
  %i.ag = zext nneg i32 %.027.lcssa93 to i64      ; 3 uses
  %i.ah = sub nsw i64 2, %i.ag
  %xtraiter104 = and i64 %i.ah, 7                 ; 2 uses
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph40, %.prol.preheader
  %indvars.iv56.prol = phi i64 [ %indvars.iv.next57.prol, %.prol.preheader ], [ %i.ag, %.lr.ph40 ] ; 3 uses
  %.139.prol = phi i64 [ %i.ao, %.prol.preheader ], [ %.0.lcssa94, %.lr.ph40 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph40 ]
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv56.prol
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !20
  %i.ak = zext i16 %i.aj to i64
  %i.al = add nuw nsw i64 %.139.prol, %i.ak       ; 2 uses
  %i.am = trunc i64 %i.al to i16
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv56.prol
  store i16 %i.am, ptr %i.an, align 2, !tbaa !20
  %i.ao = lshr i64 %i.al, 16                      ; 3 uses
  %indvars.iv.next57.prol = add nuw nsw i64 %indvars.iv56.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter104
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !51

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph40
  %.lcssa.unr = phi i64 [ poison, %.lr.ph40 ], [ %i.ao, %.prol.preheader ]
  %indvars.iv56.unr = phi i64 [ %i.ag, %.lr.ph40 ], [ %indvars.iv.next57.prol, %.prol.preheader ]
  %.139.unr = phi i64 [ %.0.lcssa94, %.lr.ph40 ], [ %i.ao, %.prol.preheader ]
  %i.ap = add nsw i32 %.027.lcssa93, -3
  %i.aq = icmp ult i32 %i.ap, 7
  br i1 %i.aq, label %._crit_edge, label %.lr.ph40.new

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv51 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next52.3, %bb.c ] ; 6 uses
  %indvars.iv = phi i64 [ %i.o, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %.036 = phi i64 [ 0, %.lr.ph.new ], [ %i.cl, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv51
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !20
  %i.at = zext i16 %i.as to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %i.k, i64 %indvars.iv
  %i.av = load i16, ptr %i.au, align 2, !tbaa !20
  %i.aw = zext i16 %i.av to i64
  %i.ax = add nuw nsw i64 %.036, %i.at
  %i.ay = add nuw nsw i64 %i.ax, %i.aw            ; 2 uses
  %i.az = trunc i64 %i.ay to i16
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv51
  store i16 %i.az, ptr %i.ba, align 8, !tbaa !20
  %i.bb = lshr i64 %i.ay, 16
  %indvars.iv.next52 = or disjoint i64 %indvars.iv51, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next52
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !20
  %i.be = zext i16 %i.bd to i64
  %i.bf = getelementptr [2 x i8], ptr %i.k, i64 %indvars.iv
  %i.bg = getelementptr i8, ptr %i.bf, i64 2
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !20
  %i.bi = zext i16 %i.bh to i64
  %i.bj = add nuw nsw i64 %i.bb, %i.be
  %i.bk = add nuw nsw i64 %i.bj, %i.bi            ; 2 uses
  %i.bl = trunc i64 %i.bk to i16
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next52
  store i16 %i.bl, ptr %i.bm, align 2, !tbaa !20
  %i.bn = lshr i64 %i.bk, 16
  %indvars.iv.next52.1 = or disjoint i64 %indvars.iv51, 2 ; 2 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next52.1
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !20
  %i.bq = zext i16 %i.bp to i64
  %i.br = getelementptr [2 x i8], ptr %i.k, i64 %indvars.iv
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !20
  %i.bu = zext i16 %i.bt to i64
  %i.bv = add nuw nsw i64 %i.bn, %i.bq
  %i.bw = add nuw nsw i64 %i.bv, %i.bu            ; 2 uses
  %i.bx = trunc i64 %i.bw to i16
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next52.1
  store i16 %i.bx, ptr %i.by, align 4, !tbaa !20
  %i.bz = lshr i64 %i.bw, 16
  %indvars.iv.next52.2 = or disjoint i64 %indvars.iv51, 3 ; 2 uses
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next52.2
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !20
  %i.cc = zext i16 %i.cb to i64
  %i.cd = getelementptr [2 x i8], ptr %i.k, i64 %indvars.iv
  %i.ce = getelementptr i8, ptr %i.cd, i64 6
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !20
  %i.cg = zext i16 %i.cf to i64
  %i.ch = add nuw nsw i64 %i.bz, %i.cc
  %i.ci = add nuw nsw i64 %i.ch, %i.cg            ; 2 uses
  %i.cj = trunc i64 %i.ci to i16
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next52.2
  store i16 %i.cj, ptr %i.ck, align 2, !tbaa !20
  %i.cl = lshr i64 %i.ci, 16                      ; 3 uses
  %indvars.iv.next52.3 = add nuw nsw i64 %indvars.iv51, 4 ; 2 uses
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.unr-lcssa, label %bb.c, !llvm.loop !5

.lr.ph40.new:                                     ; preds = %.prol.loopexit, %.lr.ph40.new
  %indvars.iv56 = phi i64 [ %indvars.iv.next57.7, %.lr.ph40.new ], [ %indvars.iv56.unr, %.prol.loopexit ] ; 10 uses
  %.139 = phi i64 [ %i.ep, %.lr.ph40.new ], [ %.139.unr, %.prol.loopexit ]
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv56
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !20
  %i.co = zext i16 %i.cn to i64
  %i.cp = add nuw nsw i64 %.139, %i.co            ; 2 uses
  %i.cq = trunc i64 %i.cp to i16
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv56
  store i16 %i.cq, ptr %i.cr, align 2, !tbaa !20
  %i.cs = lshr i64 %i.cp, 16
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv.next57
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !20
  %i.cv = zext i16 %i.cu to i64
  %i.cw = add nuw nsw i64 %i.cs, %i.cv            ; 2 uses
  %i.cx = trunc i64 %i.cw to i16
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next57
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !20
  %i.cz = lshr i64 %i.cw, 16
  %indvars.iv.next57.1 = add nuw nsw i64 %indvars.iv56, 2 ; 2 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv.next57.1
  %i.db = load i16, ptr %i.da, align 2, !tbaa !20
  %i.dc = zext i16 %i.db to i64
  %i.dd = add nuw nsw i64 %i.cz, %i.dc            ; 2 uses
  %i.de = trunc i64 %i.dd to i16
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next57.1
  store i16 %i.de, ptr %i.df, align 2, !tbaa !20
  %i.dg = lshr i64 %i.dd, 16
  %indvars.iv.next57.2 = add nuw nsw i64 %indvars.iv56, 3 ; 2 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv.next57.2
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !20
  %i.dj = zext i16 %i.di to i64
  %i.dk = add nuw nsw i64 %i.dg, %i.dj            ; 2 uses
  %i.dl = trunc i64 %i.dk to i16
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next57.2
  store i16 %i.dl, ptr %i.dm, align 2, !tbaa !20
  %i.dn = lshr i64 %i.dk, 16
  %indvars.iv.next57.3 = add nuw nsw i64 %indvars.iv56, 4 ; 2 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv.next57.3
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !20
  %i.dq = zext i16 %i.dp to i64
  %i.dr = add nuw nsw i64 %i.dn, %i.dq            ; 2 uses
  %i.ds = trunc i64 %i.dr to i16
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next57.3
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !20
  %i.du = lshr i64 %i.dr, 16
  %indvars.iv.next57.4 = add nuw nsw i64 %indvars.iv56, 5 ; 2 uses
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv.next57.4
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !20
  %i.dx = zext i16 %i.dw to i64
  %i.dy = add nuw nsw i64 %i.du, %i.dx            ; 2 uses
  %i.dz = trunc i64 %i.dy to i16
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next57.4
  store i16 %i.dz, ptr %i.ea, align 2, !tbaa !20
  %i.eb = lshr i64 %i.dy, 16
  %indvars.iv.next57.5 = add nuw nsw i64 %indvars.iv56, 6 ; 2 uses
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv.next57.5
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !20
  %i.ee = zext i16 %i.ed to i64
  %i.ef = add nuw nsw i64 %i.eb, %i.ee            ; 2 uses
  %i.eg = trunc i64 %i.ef to i16
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next57.5
  store i16 %i.eg, ptr %i.eh, align 2, !tbaa !20
  %i.ei = lshr i64 %i.ef, 16
  %indvars.iv.next57.6 = add nuw nsw i64 %indvars.iv56, 7 ; 2 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv.next57.6
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !20
  %i.el = zext i16 %i.ek to i64
  %i.em = add nuw nsw i64 %i.ei, %i.el            ; 2 uses
  %i.en = trunc i64 %i.em to i16
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next57.6
  store i16 %i.en, ptr %i.eo, align 2, !tbaa !20
  %i.ep = lshr i64 %i.em, 16                      ; 2 uses
  %indvars.iv.next57.7 = add nuw nsw i64 %indvars.iv56, 8 ; 2 uses
  %exitcond59.not.7 = icmp eq i64 %indvars.iv.next57.7, 10
  br i1 %exitcond59.not.7, label %._crit_edge, label %.lr.ph40.new, !llvm.loop !6

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph40.new, %.preheader
  %.128.lcssa = phi i32 [ %i.q, %.preheader ], [ 10, %.lr.ph40.new ], [ 10, %.prol.loopexit ]
  %.1.lcssa = phi i64 [ %.lcssa101, %.preheader ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.ep, %.lr.ph40.new ]
  %i.eq = trunc nuw nsw i64 %.1.lcssa to i16
  %i.er = zext nneg i32 %.128.lcssa to i64
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.er
  store i16 %i.eq, ptr %i.es, align 2, !tbaa !20
  %i.et = add i16 %i.c, 1
  %i.eu = load i16, ptr %1, align 2, !tbaa !24    ; 2 uses
  %i.ev = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep, align 4, !tbaa !20 ; 2 uses
  %.not.i = icmp eq i16 %i.ev, 0
  br i1 %.not.i, label %bb.d, label %.preheader.i

bb.d:                                             ; preds = %._crit_edge
  %i.ew = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60, align 2, !tbaa !20 ; 2 uses
  %.not.i.1 = icmp eq i16 %i.ew, 0
  br i1 %.not.i.1, label %bb.e, label %.preheader.i

bb.e:                                             ; preds = %bb.d
  %i.ex = add i16 %i.c, -1
  %i.ey = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61, align 16, !tbaa !20
  %.not.i.2 = icmp eq i16 %i.ey, 0
  br i1 %.not.i.2, label %bb.f, label %.lr.ph47.i

bb.f:                                             ; preds = %bb.e
  %i.ez = add i16 %i.c, -2
  %i.fa = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep62, align 2, !tbaa !20
  %.not.i.3 = icmp eq i16 %i.fa, 0
  br i1 %.not.i.3, label %bb.g, label %.lr.ph47.i

bb.g:                                             ; preds = %bb.f
  %i.fb = add i16 %i.c, -3
  %i.fc = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep63, align 4, !tbaa !20
  %.not.i.4 = icmp eq i16 %i.fc, 0
  br i1 %.not.i.4, label %bb.h, label %.lr.ph47.i

bb.h:                                             ; preds = %bb.g
  %i.fd = add i16 %i.c, -4
  %i.fe = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep64, align 2, !tbaa !20
  %.not.i.5 = icmp eq i16 %i.fe, 0
  br i1 %.not.i.5, label %bb.i, label %.lr.ph47.i

bb.i:                                             ; preds = %bb.h
  %i.ff = add i16 %i.c, -5
  %i.fg = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep65, align 8, !tbaa !20
  %.not.i.6 = icmp eq i16 %i.fg, 0
  br i1 %.not.i.6, label %bb.j, label %.lr.ph47.i

bb.j:                                             ; preds = %bb.i
  %i.fh = add i16 %i.c, -6
  %i.fi = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep66, align 2, !tbaa !20
  %.not.i.7 = icmp eq i16 %i.fi, 0
  br i1 %.not.i.7, label %bb.k, label %.lr.ph47.i

bb.k:                                             ; preds = %bb.j
  %i.fj = add i16 %i.c, -7
  %i.fk = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep67, align 4, !tbaa !20
  %.not.i.8 = icmp eq i16 %i.fk, 0
  br i1 %.not.i.8, label %bb.l, label %.lr.ph47.i

bb.l:                                             ; preds = %bb.k
  %i.fl = add i16 %i.c, -8
  %i.fm = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep68, align 2, !tbaa !20
  %.not.i.9 = icmp eq i16 %i.fm, 0
  br i1 %.not.i.9, label %bb.m, label %.lr.ph47.i

bb.m:                                             ; preds = %bb.l
  %i.fn = add i16 %i.c, -9
  %i.fo = load i16, ptr %i.a, align 16, !tbaa !20
  %.not.i.10 = icmp eq i16 %i.fo, 0
  br i1 %.not.i.10, label %bb.n, label %.lr.ph47.i

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %3, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %pack.exit

.preheader.i:                                     ; preds = %._crit_edge, %bb.d
  %i.fp = phi i16 [ %i.ev, %._crit_edge ], [ %i.ew, %bb.d ]
  %indvars.iv72.in.i.lcssa.sroa.phi = phi ptr [ %indvars.iv72.in.i.lcssa.sroa.gep, %._crit_edge ], [ %indvars.iv72.i.lcssa.sroa.gep, %bb.d ] ; 2 uses
  %.03341.i.lcssa = phi i16 [ %i.et, %._crit_edge ], [ %i.c, %bb.d ]
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %.03341.i.lcssa, ptr %i.fq, align 2, !tbaa !26
  %i.fr = trunc nsw i32 %0 to i16
  %i.fs = mul i16 %i.eu, %i.fr
  store i16 %i.fs, ptr %3, align 2, !tbaa !24
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i16 %i.fp, ptr %i.fu, align 2, !tbaa !20
  %i.fv = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi, i64 -4
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !20
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i16 %i.fw, ptr %i.fx, align 2, !tbaa !20
  %i.fy = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi, i64 -20
  %i.fz = load <8 x i16>, ptr %i.fy, align 2, !tbaa !20
  store <8 x i16> %i.fz, ptr %i.ft, align 2, !tbaa !20
  br label %pack.exit

.lr.ph47.i:                                       ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.03341.i.lcssa.ph = phi i16 [ %i.fn, %bb.m ], [ %i.fl, %bb.l ], [ %i.fj, %bb.k ], [ %i.fh, %bb.j ], [ %i.ff, %bb.i ], [ %i.fd, %bb.h ], [ %i.fb, %bb.g ], [ %i.ez, %bb.f ], [ %i.ex, %bb.e ]
  %indvars.iv58.i.lcssa.ph = phi i64 [ 0, %bb.m ], [ 2, %bb.l ], [ 4, %bb.k ], [ 6, %bb.j ], [ 8, %bb.i ], [ 10, %bb.h ], [ 12, %bb.g ], [ 14, %bb.f ], [ 16, %bb.e ] ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %.03341.i.lcssa.ph, ptr %i.ga, align 2, !tbaa !26
  %i.gb = trunc nsw i32 %0 to i16
  %i.gc = mul i16 %i.eu, %i.gb
  store i16 %i.gc, ptr %3, align 2, !tbaa !24
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ge = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph
  %scevgep = getelementptr i8, ptr %3, i64 %i.ge
  %i.gf = add nuw nsw i64 %indvars.iv58.i.lcssa.ph, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 range(i64 0, 23) %i.gf, i1 false), !tbaa !20
  %i.gg = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.gd, i8 0, i64 %i.gg, i1 false), !tbaa !20
  br label %pack.exit

pack.exit:                                        ; preds = %bb.n, %.preheader.i, %.lr.ph47.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare i32 @power_of_two(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @fft0(i32 noundef %0, ptr nofree noundef %1, i32 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = alloca [10 x i16], align 16              ; 24 uses
  %i.b = alloca [10 x i16], align 16              ; 24 uses
  %i.c = alloca [11 x i16], align 16              ; 30 uses
  %i.d = alloca [11 x i16], align 16              ; 30 uses
  %i.e = alloca [10 x i16], align 16              ; 24 uses
  %i.f = alloca [10 x i16], align 16              ; 24 uses
  %i.g = alloca [11 x i16], align 16              ; 30 uses
  %i.h = alloca [11 x i16], align 16              ; 30 uses
  %i.i = alloca [11 x i16], align 16              ; 30 uses
  %i.j = alloca [11 x i16], align 16              ; 30 uses
  %i.k = alloca [10 x i16], align 16              ; 24 uses
  %i.l = alloca [10 x i16], align 16              ; 24 uses
  %i.m = alloca [11 x i16], align 16              ; 30 uses
  %i.n = alloca [11 x i16], align 16              ; 30 uses
  %i.o = alloca [10 x i16], align 16              ; 24 uses
  %i.p = alloca [10 x i16], align 16              ; 24 uses
  %i.q = alloca [11 x i16], align 16              ; 30 uses
  %i.r = alloca [11 x i16], align 16              ; 30 uses
  %i.s = alloca [10 x i16], align 16              ; 24 uses
  %i.t = alloca [10 x i16], align 16              ; 24 uses
  %i.u = alloca [10 x i16], align 16              ; 24 uses
  %i.v = alloca [10 x i16], align 16              ; 24 uses
  %i.w = alloca [11 x i16], align 16              ; 30 uses
  %i.x = alloca [11 x i16], align 16              ; 30 uses
  %.sroa.0.i = alloca %struct.anon, align 16      ; 6 uses
  %3 = alloca [1 x %struct.anon], align 16        ; 12 uses
  %4 = alloca [1 x %struct.anon], align 16        ; 12 uses
  %5 = alloca [1 x %struct.anon], align 16        ; 15 uses
  %6 = alloca [1 x %struct.anon], align 16        ; 15 uses
  %7 = alloca [1 x %struct.anon], align 16        ; 5 uses
  %8 = alloca [1 x %struct.anon], align 16        ; 5 uses
  %9 = alloca [1 x %struct.anon], align 16        ; 17 uses
  %10 = alloca [1 x %struct.anon], align 16       ; 17 uses
  %11 = alloca [1 x %struct.anon], align 16       ; 30 uses
  %12 = alloca [1 x %struct.anon], align 16       ; 30 uses
  %i.y = icmp sgt i32 %0, 1
  br i1 %i.y, label %.lr.ph.preheader.i, label %._crit_edge1159

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.z = add nsw i32 %0, -1
  %wide.trip.count.i = zext nneg i32 %i.z to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %.02629.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.aj, %bb.d ] ; 3 uses
  %i.aa = zext nneg i32 %.02629.i to i64
  %i.ab = icmp samesign ult i64 %indvars.iv.i, %i.aa
  br i1 %i.ab, label %bb.b, label %.preheader1525

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %.idx.i = mul nuw nsw i64 %indvars.iv.i, 48
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 2 dereferenceable(24) %i.ac, i64 24, i1 false), !tbaa.struct !22
  %i.ad = shl nuw nsw i32 %.02629.i, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.ae ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ac, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.af, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !tbaa.struct !22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 2 dereferenceable(24) %i.ag, i64 24, i1 false), !tbaa.struct !22
  %i.ah = getelementptr i8, ptr %i.af, i64 24     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ag, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ah, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !tbaa.struct !22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %.preheader1525

.preheader1525:                                   ; preds = %bb.b, %.lr.ph.i
  br label %bb.c

bb.c:                                             ; preds = %.preheader1525, %bb.c
  %.1.i = phi i32 [ %i.aj, %bb.c ], [ %.02629.i, %.preheader1525 ]
  %.0.i = phi i32 [ %i.ai, %bb.c ], [ %0, %.preheader1525 ]
  %i.ai = lshr i32 %.0.i, 1                       ; 3 uses
  %i.aj = xor i32 %i.ai, %.1.i                    ; 3 uses
  %i.ak = and i32 %i.aj, %i.ai
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %bb.c, label %bb.d, !llvm.loop !52

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.lr.ph, label %.lr.ph.i, !llvm.loop !53

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 2 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 2 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 70 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 70 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 22 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 22 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 18 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 18 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 14 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 14 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 10 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 10 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 6 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 6 ; 2 uses
  %indvars.iv72.i.lcssa.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.x, i64 20 ; 2 uses
  %indvars.iv72.i.lcssa.sroa.gep60.i = getelementptr inbounds nuw i8, ptr %i.x, i64 18
  %indvars.iv72.i.lcssa.sroa.gep61.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %indvars.iv72.i.lcssa.sroa.gep62.i = getelementptr inbounds nuw i8, ptr %i.x, i64 14
  %indvars.iv72.i.lcssa.sroa.gep63.i = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %indvars.iv72.i.lcssa.sroa.gep64.i = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %indvars.iv72.i.lcssa.sroa.gep65.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %indvars.iv72.i.lcssa.sroa.gep66.i = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %indvars.iv72.i.lcssa.sroa.gep67.i = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %indvars.iv72.i.lcssa.sroa.gep68.i = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %indvars.iv72.in.i.lcssa.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.x, i64 22
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 2 ; 9 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 78 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 22 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 18 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 14 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 10 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 6 ; 2 uses
  %indvars.iv72.i.lcssa.sroa.gep.i45 = getelementptr inbounds nuw i8, ptr %i.w, i64 20 ; 2 uses
  %indvars.iv72.i.lcssa.sroa.gep60.i46 = getelementptr inbounds nuw i8, ptr %i.w, i64 18
  %indvars.iv72.i.lcssa.sroa.gep61.i47 = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %indvars.iv72.i.lcssa.sroa.gep62.i48 = getelementptr inbounds nuw i8, ptr %i.w, i64 14
  %indvars.iv72.i.lcssa.sroa.gep63.i49 = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %indvars.iv72.i.lcssa.sroa.gep64.i50 = getelementptr inbounds nuw i8, ptr %i.w, i64 10
  %indvars.iv72.i.lcssa.sroa.gep65.i51 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %indvars.iv72.i.lcssa.sroa.gep66.i52 = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  %indvars.iv72.i.lcssa.sroa.gep67.i53 = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %indvars.iv72.i.lcssa.sroa.gep68.i54 = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %indvars.iv72.in.i.lcssa.sroa.gep.i55 = getelementptr inbounds nuw i8, ptr %i.w, i64 22
  %indvars.iv72.i.lcssa.sroa.gep.i94 = getelementptr inbounds nuw i8, ptr %i.v, i64 18
  %indvars.iv72.i.lcssa.sroa.gep54.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %indvars.iv72.i.lcssa.sroa.gep55.i = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %indvars.iv72.i.lcssa.sroa.gep56.i = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %indvars.iv72.i.lcssa.sroa.gep57.i = getelementptr inbounds nuw i8, ptr %i.v, i64 10
  %indvars.iv72.i.lcssa.sroa.gep58.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %indvars.iv72.i.lcssa.sroa.gep59.i = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  %indvars.iv72.i.lcssa.sroa.gep60.i95 = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %indvars.iv72.i.lcssa.sroa.gep61.i96 = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %indvars.iv72.i.lcssa.sroa.gep.i118 = getelementptr inbounds nuw i8, ptr %i.u, i64 18
  %indvars.iv72.i.lcssa.sroa.gep54.i119 = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %indvars.iv72.i.lcssa.sroa.gep55.i120 = getelementptr inbounds nuw i8, ptr %i.u, i64 14
  %indvars.iv72.i.lcssa.sroa.gep56.i121 = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %indvars.iv72.i.lcssa.sroa.gep57.i122 = getelementptr inbounds nuw i8, ptr %i.u, i64 10
  %indvars.iv72.i.lcssa.sroa.gep58.i123 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %indvars.iv72.i.lcssa.sroa.gep59.i124 = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  %indvars.iv72.i.lcssa.sroa.gep60.i125 = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %indvars.iv72.i.lcssa.sroa.gep61.i126 = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %indvars.iv72.i.lcssa.sroa.gep.i161 = getelementptr inbounds nuw i8, ptr %i.t, i64 18
  %indvars.iv72.i.lcssa.sroa.gep54.i162 = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %indvars.iv72.i.lcssa.sroa.gep55.i163 = getelementptr inbounds nuw i8, ptr %i.t, i64 14
  %indvars.iv72.i.lcssa.sroa.gep56.i164 = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %indvars.iv72.i.lcssa.sroa.gep57.i165 = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  %indvars.iv72.i.lcssa.sroa.gep58.i166 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %indvars.iv72.i.lcssa.sroa.gep59.i167 = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  %indvars.iv72.i.lcssa.sroa.gep60.i168 = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %indvars.iv72.i.lcssa.sroa.gep61.i169 = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 2 ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 78 uses
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 22 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 18 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 14 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 10 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 6 ; 2 uses
  %indvars.iv72.i.lcssa.sroa.gep.i203 = getelementptr inbounds nuw i8, ptr %i.s, i64 18
  %indvars.iv72.i.lcssa.sroa.gep54.i204 = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %indvars.iv72.i.lcssa.sroa.gep55.i205 = getelementptr inbounds nuw i8, ptr %i.s, i64 14
end_hunk_1
begin_hunk_2_@fft0:bb.a
  %.034.i154 = phi i64 [ 0, %.lr.ph.i150.new ], [ %i.jm, %bb.ah ]
  %niter1564 = phi i64 [ 0, %.lr.ph.i150.new ], [ %niter1564.next.3, %bb.ah ]
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv45.i152
  %i.hl = load i16, ptr %i.hk, align 4, !tbaa !20
  %i.hm = zext i16 %i.hl to i64
  %i.hn = getelementptr inbounds [2 x i8], ptr %i.as, i64 %indvars.iv.i153
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !20
  %i.hp = zext i16 %i.ho to i64
  %i.hq = sub nsw i64 %i.hm, %i.hp
  %i.hr = add nsw i64 %i.hq, %.034.i154           ; 2 uses
  %i.hs = trunc i64 %i.hr to i16
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv45.i152
  store i16 %i.hs, ptr %i.ht, align 8, !tbaa !20
  %i.hu = add nsw i64 %i.hr, 2147483648
  %i.hv = lshr i64 %i.hu, 16
  %i.hw = add nsw i64 %i.hv, -32768
  %indvars.iv.next46.i155 = or disjoint i64 %indvars.iv45.i152, 1 ; 2 uses
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next46.i155
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !20
  %i.hz = zext i16 %i.hy to i64
  %i.ia = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv.i153
  %i.ib = getelementptr i8, ptr %i.ia, i64 2
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !20
  %i.id = zext i16 %i.ic to i64
  %i.ie = sub nsw i64 %i.hz, %i.id
  %i.if = add nsw i64 %i.ie, %i.hw                ; 2 uses
  %i.ig = trunc i64 %i.if to i16
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv.next46.i155
  store i16 %i.ig, ptr %i.ih, align 2, !tbaa !20
  %i.ii = add nsw i64 %i.if, 2147483648
  %i.ij = lshr i64 %i.ii, 16
  %i.ik = add nsw i64 %i.ij, -32768
  %indvars.iv.next46.i155.1 = or disjoint i64 %indvars.iv45.i152, 2 ; 2 uses
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next46.i155.1
  %i.im = load i16, ptr %i.il, align 8, !tbaa !20
  %i.in = zext i16 %i.im to i64
  %i.io = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv.i153
  %i.ip = getelementptr i8, ptr %i.io, i64 4
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !20
  %i.ir = zext i16 %i.iq to i64
  %i.is = sub nsw i64 %i.in, %i.ir
  %i.it = add nsw i64 %i.is, %i.ik                ; 2 uses
  %i.iu = trunc i64 %i.it to i16
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv.next46.i155.1
  store i16 %i.iu, ptr %i.iv, align 4, !tbaa !20
  %i.iw = add nsw i64 %i.it, 2147483648
  %i.ix = lshr i64 %i.iw, 16
  %i.iy = add nsw i64 %i.ix, -32768
  %indvars.iv.next46.i155.2 = or disjoint i64 %indvars.iv45.i152, 3 ; 2 uses
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next46.i155.2
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !20
  %i.jb = zext i16 %i.ja to i64
  %i.jc = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv.i153
  %i.jd = getelementptr i8, ptr %i.jc, i64 6
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !20
  %i.jf = zext i16 %i.je to i64
  %i.jg = sub nsw i64 %i.jb, %i.jf
  %i.jh = add nsw i64 %i.jg, %i.iy                ; 2 uses
  %i.ji = trunc i64 %i.jh to i16
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv.next46.i155.2
  store i16 %i.ji, ptr %i.jj, align 2, !tbaa !20
  %i.jk = add nsw i64 %i.jh, 2147483648
  %i.jl = lshr i64 %i.jk, 16
  %i.jm = add nsw i64 %i.jl, -32768               ; 3 uses
  %indvars.iv.next46.i155.3 = add nuw nsw i64 %indvars.iv45.i152, 4 ; 2 uses
  %indvars.iv.next.i156.3 = add nsw i64 %indvars.iv.i153, 4 ; 2 uses
  %niter1564.next.3 = add i64 %niter1564, 4       ; 2 uses
  %niter1564.ncmp.3 = icmp eq i64 %niter1564.next.3, %unroll_iter1563
  br i1 %niter1564.ncmp.3, label %.preheader.i158.unr-lcssa, label %bb.ah, !llvm.loop !3

.lr.ph38.i127.new:                                ; preds = %.prol.loopexit1566, %.lr.ph38.i127.new
  %indvars.iv50.i130 = phi i64 [ %indvars.iv.next51.i132.3, %.lr.ph38.i127.new ], [ %indvars.iv50.i130.unr, %.prol.loopexit1566 ] ; 6 uses
  %.137.i131 = phi i64 [ %i.kw, %.lr.ph38.i127.new ], [ %.137.i131.unr, %.prol.loopexit1566 ]
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv50.i130
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !20
  %i.jp = zext i16 %i.jo to i64
  %i.jq = add nsw i64 %.137.i131, %i.jp           ; 2 uses
  %i.jr = trunc i64 %i.jq to i16
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv50.i130
  store i16 %i.jr, ptr %i.js, align 2, !tbaa !20
  %i.jt = add nsw i64 %i.jq, 2147483648
  %i.ju = lshr i64 %i.jt, 16
  %i.jv = add nsw i64 %i.ju, -32768
  %indvars.iv.next51.i132 = add nuw nsw i64 %indvars.iv50.i130, 1 ; 2 uses
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next51.i132
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !20
  %i.jy = zext i16 %i.jx to i64
  %i.jz = add nsw i64 %i.jv, %i.jy                ; 2 uses
  %i.ka = trunc i64 %i.jz to i16
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv.next51.i132
  store i16 %i.ka, ptr %i.kb, align 2, !tbaa !20
  %i.kc = add nsw i64 %i.jz, 2147483648
  %i.kd = lshr i64 %i.kc, 16
  %i.ke = add nsw i64 %i.kd, -32768
  %indvars.iv.next51.i132.1 = add nuw nsw i64 %indvars.iv50.i130, 2 ; 2 uses
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next51.i132.1
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !20
  %i.kh = zext i16 %i.kg to i64
  %i.ki = add nsw i64 %i.ke, %i.kh                ; 2 uses
  %i.kj = trunc i64 %i.ki to i16
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv.next51.i132.1
  store i16 %i.kj, ptr %i.kk, align 2, !tbaa !20
  %i.kl = add nsw i64 %i.ki, 2147483648
  %i.km = lshr i64 %i.kl, 16
  %i.kn = add nsw i64 %i.km, -32768
  %indvars.iv.next51.i132.2 = add nuw nsw i64 %indvars.iv50.i130, 3 ; 2 uses
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next51.i132.2
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !20
  %i.kq = zext i16 %i.kp to i64
  %i.kr = add nsw i64 %i.kn, %i.kq                ; 2 uses
  %i.ks = trunc i64 %i.kr to i16
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv.next51.i132.2
  store i16 %i.ks, ptr %i.kt, align 2, !tbaa !20
  %i.ku = add nsw i64 %i.kr, 2147483648
  %i.kv = lshr i64 %i.ku, 16
  %i.kw = add nsw i64 %i.kv, -32768
  %indvars.iv.next51.i132.3 = add nuw nsw i64 %indvars.iv50.i130, 4 ; 2 uses
  %exitcond53.not.i133.3 = icmp eq i64 %indvars.iv.next51.i132.3, 10
  br i1 %exitcond53.not.i133.3, label %._crit_edge.i134, label %.lr.ph38.i127.new, !llvm.loop !4

._crit_edge.i134:                                 ; preds = %.prol.loopexit1566, %.lr.ph38.i127.new, %.preheader.i158
  %i.kx = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep.i118, align 2, !tbaa !20
  %.not.i.not.not.i135 = icmp eq i16 %i.kx, 0
  br i1 %.not.i.not.not.i135, label %bb.ai, label %.preheader.i.i136

bb.ai:                                            ; preds = %._crit_edge.i134
  %i.ky = add i16 %i.eh, -1
  %i.kz = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep54.i119, align 16, !tbaa !20
  %.not.i.1.i137 = icmp eq i16 %i.kz, 0
  br i1 %.not.i.1.i137, label %bb.aj, label %.lr.ph47.i.i138

bb.aj:                                            ; preds = %bb.ai
  %i.la = add i16 %i.eh, -2
  %i.lb = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep55.i120, align 2, !tbaa !20
  %.not.i.2.i142 = icmp eq i16 %i.lb, 0
  br i1 %.not.i.2.i142, label %bb.ak, label %.lr.ph47.i.i138

bb.ak:                                            ; preds = %bb.aj
  %i.lc = add i16 %i.eh, -3
  %i.ld = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep56.i121, align 4, !tbaa !20
  %.not.i.3.i143 = icmp eq i16 %i.ld, 0
  br i1 %.not.i.3.i143, label %bb.al, label %.lr.ph47.i.i138

bb.al:                                            ; preds = %bb.ak
  %i.le = add i16 %i.eh, -4
  %i.lf = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep57.i122, align 2, !tbaa !20
  %.not.i.4.i144 = icmp eq i16 %i.lf, 0
  br i1 %.not.i.4.i144, label %bb.am, label %.lr.ph47.i.i138

bb.am:                                            ; preds = %bb.al
  %i.lg = add i16 %i.eh, -5
  %i.lh = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep58.i123, align 8, !tbaa !20
  %.not.i.5.i145 = icmp eq i16 %i.lh, 0
  br i1 %.not.i.5.i145, label %bb.an, label %.lr.ph47.i.i138

bb.an:                                            ; preds = %bb.am
  %i.li = add i16 %i.eh, -6
  %i.lj = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep59.i124, align 2, !tbaa !20
  %.not.i.6.i146 = icmp eq i16 %i.lj, 0
  br i1 %.not.i.6.i146, label %bb.ao, label %.lr.ph47.i.i138

bb.ao:                                            ; preds = %bb.an
  %i.lk = add i16 %i.eh, -7
  %i.ll = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60.i125, align 4, !tbaa !20
  %.not.i.7.i147 = icmp eq i16 %i.ll, 0
  br i1 %.not.i.7.i147, label %bb.ap, label %.lr.ph47.i.i138

bb.ap:                                            ; preds = %bb.ao
  %i.lm = add i16 %i.eh, -8
  %i.ln = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61.i126, align 2, !tbaa !20
  %.not.i.8.i148 = icmp eq i16 %i.ln, 0
  br i1 %.not.i.8.i148, label %bb.aq, label %.lr.ph47.i.i138

bb.aq:                                            ; preds = %bb.ap
  %i.lo = add i16 %i.eh, -9
  %i.lp = load i16, ptr %i.u, align 16, !tbaa !20
  %.not.i.9.i149 = icmp eq i16 %i.lp, 0
  br i1 %.not.i.9.i149, label %bb.ar, label %.lr.ph47.i.i138

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %submag0.exit159

.preheader.i.i136:                                ; preds = %._crit_edge.i134
  store i16 %i.eh, ptr %i.bl, align 2, !tbaa !26
  store i16 %i.ee, ptr %11, align 16, !tbaa !24
  %i.lq = load <2 x i16>, ptr %indvars.iv72.i.lcssa.sroa.gep54.i119, align 16, !tbaa !20
  store <2 x i16> %i.lq, ptr %i.bo, align 4, !tbaa !20
  %i.lr = load <8 x i16>, ptr %i.u, align 16, !tbaa !20
  store <8 x i16> %i.lr, ptr %i.bm, align 4, !tbaa !20
  br label %submag0.exit159

.lr.ph47.i.i138:                                  ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai
  %.03341.i.lcssa.ph.i139 = phi i16 [ %i.lo, %bb.aq ], [ %i.lm, %bb.ap ], [ %i.lk, %bb.ao ], [ %i.li, %bb.an ], [ %i.lg, %bb.am ], [ %i.le, %bb.al ], [ %i.lc, %bb.ak ], [ %i.la, %bb.aj ], [ %i.ky, %bb.ai ]
  %indvars.iv58.i.lcssa.ph.i140 = phi i64 [ 0, %bb.aq ], [ 2, %bb.ap ], [ 4, %bb.ao ], [ 6, %bb.an ], [ 8, %bb.am ], [ 10, %bb.al ], [ 12, %bb.ak ], [ 14, %bb.aj ], [ 16, %bb.ai ] ; 3 uses
  store i16 %.03341.i.lcssa.ph.i139, ptr %i.bl, align 2, !tbaa !26
  store i16 %i.ee, ptr %11, align 16, !tbaa !24
  %i.ls = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph.i140
  %scevgep.i141 = getelementptr i8, ptr %11, i64 %i.ls
  %i.lt = add nuw nsw i64 %indvars.iv58.i.lcssa.ph.i140, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i141, ptr noundef nonnull align 16 dereferenceable(1) %i.u, i64 range(i64 0, 21) %i.lt, i1 false), !tbaa !20
  %i.lu = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph.i140
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bm, i8 0, i64 %i.lu, i1 false), !tbaa !20
  br label %submag0.exit159

submag0.exit159:                                  ; preds = %bb.ar, %.preheader.i.i136, %.lr.ph47.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #13
  br label %sub.exit

bb.as:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #13
  %i.lv = sext i16 %i.ei to i32                   ; 2 uses
  %i.lw = sext i16 %i.eh to i32                   ; 3 uses
  %i.lx = sub nsw i32 %i.lv, %i.lw
  %i.ly = icmp slt i32 %i.lx, 10
  br i1 %i.ly, label %.lr.ph.i112, label %.lr.ph38.i

.lr.ph.i112:                                      ; preds = %bb.as
  %i.lz = sext i16 %i.ei to i64
  %i.ma = sub nsw i32 0, %i.lw
  %i.mb = sext i32 %i.ma to i64
  %i.mc = add nsw i64 %i.lz, %i.mb                ; 2 uses
  %i.md = add nsw i32 %i.lw, 10
  %i.me = sub nsw i32 %i.md, %i.lv                ; 4 uses
  %wide.trip.count.i113 = zext i32 %i.me to i64   ; 2 uses
  %xtraiter1545 = and i64 %wide.trip.count.i113, 3 ; 3 uses
  %i.mf = add nsw i32 %i.me, -1
  %i.mg = icmp ult i32 %i.mf, 3
  br i1 %i.mg, label %.epil.preheader1544, label %.lr.ph.i112.new

.lr.ph.i112.new:                                  ; preds = %.lr.ph.i112
  %unroll_iter1550 = and i64 %wide.trip.count.i113, 4294967292
  br label %bb.au

.preheader.i117.unr-lcssa:                        ; preds = %bb.au
  %lcmp.mod1547.not = icmp eq i64 %xtraiter1545, 0
  br i1 %lcmp.mod1547.not, label %.preheader.i117, label %.epil.preheader1544

.epil.preheader1544:                              ; preds = %.preheader.i117.unr-lcssa, %.lr.ph.i112
  %indvars.iv45.i.epil.init = phi i64 [ 0, %.lr.ph.i112 ], [ %indvars.iv.next46.i.3, %.preheader.i117.unr-lcssa ]
  %indvars.iv.i114.epil.init = phi i64 [ %i.mc, %.lr.ph.i112 ], [ %indvars.iv.next.i115.3, %.preheader.i117.unr-lcssa ]
  %.034.i.epil.init = phi i64 [ 0, %.lr.ph.i112 ], [ %i.pk, %.preheader.i117.unr-lcssa ]
  %lcmp.mod1549 = icmp ne i64 %xtraiter1545, 0
  tail call void @llvm.assume(i1 %lcmp.mod1549)
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.epil.preheader1544
  %indvars.iv45.i.epil = phi i64 [ %indvars.iv45.i.epil.init, %.epil.preheader1544 ], [ %indvars.iv.next46.i.epil, %bb.at ] ; 3 uses
  %indvars.iv.i114.epil = phi i64 [ %indvars.iv.i114.epil.init, %.epil.preheader1544 ], [ %indvars.iv.next.i115.epil, %bb.at ] ; 2 uses
  %.034.i.epil = phi i64 [ %.034.i.epil.init, %.epil.preheader1544 ], [ %i.mt, %bb.at ]
  %epil.iter1546 = phi i64 [ 0, %.epil.preheader1544 ], [ %epil.iter1546.next, %bb.at ]
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv45.i.epil
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !20
  %i.mj = zext i16 %i.mi to i64
  %i.mk = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %indvars.iv.i114.epil
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !20
  %i.mm = zext i16 %i.ml to i64
  %i.mn = sub nsw i64 %i.mj, %i.mm
  %i.mo = add nsw i64 %i.mn, %.034.i.epil         ; 2 uses
  %i.mp = trunc i64 %i.mo to i16
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv45.i.epil
  store i16 %i.mp, ptr %i.mq, align 2, !tbaa !20
  %i.mr = add nsw i64 %i.mo, 2147483648
  %i.ms = lshr i64 %i.mr, 16
  %i.mt = add nsw i64 %i.ms, -32768               ; 2 uses
  %indvars.iv.next46.i.epil = add nuw nsw i64 %indvars.iv45.i.epil, 1
  %indvars.iv.next.i115.epil = add nsw i64 %indvars.iv.i114.epil, 1
  %epil.iter1546.next = add i64 %epil.iter1546, 1 ; 2 uses
  %epil.iter1546.cmp.not = icmp eq i64 %epil.iter1546.next, %xtraiter1545
  br i1 %epil.iter1546.cmp.not, label %.preheader.i117, label %bb.at, !llvm.loop !56

.preheader.i117:                                  ; preds = %bb.at, %.preheader.i117.unr-lcssa
  %.lcssa1493 = phi i64 [ %i.pk, %.preheader.i117.unr-lcssa ], [ %i.mt, %bb.at ]
  %i.mu = icmp samesign ult i32 %i.me, 10
  br i1 %i.mu, label %.lr.ph38.i, label %._crit_edge.i97

.lr.ph38.i:                                       ; preds = %bb.as, %.preheader.i117
  %.0.lcssa85.i = phi i64 [ %.lcssa1493, %.preheader.i117 ], [ 0, %bb.as ] ; 2 uses
  %.025.lcssa84.i = phi i32 [ %i.me, %.preheader.i117 ], [ 0, %bb.as ] ; 2 uses
  %i.mv = zext nneg i32 %.025.lcssa84.i to i64    ; 3 uses
  %i.mw = sub nsw i64 2, %i.mv
  %xtraiter1554 = and i64 %i.mw, 3                ; 2 uses
  %lcmp.mod1555.not = icmp eq i64 %xtraiter1554, 0
  br i1 %lcmp.mod1555.not, label %.prol.loopexit1553, label %.prol.preheader1552

.prol.preheader1552:                              ; preds = %.lr.ph38.i, %.prol.preheader1552
  %indvars.iv50.i.prol = phi i64 [ %indvars.iv.next51.i.prol, %.prol.preheader1552 ], [ %i.mv, %.lr.ph38.i ] ; 3 uses
  %.137.i.prol = phi i64 [ %i.nf, %.prol.preheader1552 ], [ %.0.lcssa85.i, %.lr.ph38.i ]
  %prol.iter1556 = phi i64 [ %prol.iter1556.next, %.prol.preheader1552 ], [ 0, %.lr.ph38.i ]
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv50.i.prol
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !20
  %i.mz = zext i16 %i.my to i64
  %i.na = add nsw i64 %.137.i.prol, %i.mz         ; 2 uses
  %i.nb = trunc i64 %i.na to i16
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv50.i.prol
  store i16 %i.nb, ptr %i.nc, align 2, !tbaa !20
  %i.nd = add nsw i64 %i.na, 2147483648
  %i.ne = lshr i64 %i.nd, 16
  %i.nf = add nsw i64 %i.ne, -32768               ; 2 uses
  %indvars.iv.next51.i.prol = add nuw nsw i64 %indvars.iv50.i.prol, 1 ; 2 uses
  %prol.iter1556.next = add i64 %prol.iter1556, 1 ; 2 uses
  %prol.iter1556.cmp.not = icmp eq i64 %prol.iter1556.next, %xtraiter1554
  br i1 %prol.iter1556.cmp.not, label %.prol.loopexit1553, label %.prol.preheader1552, !llvm.loop !57

.prol.loopexit1553:                               ; preds = %.prol.preheader1552, %.lr.ph38.i
  %indvars.iv50.i.unr = phi i64 [ %i.mv, %.lr.ph38.i ], [ %indvars.iv.next51.i.prol, %.prol.preheader1552 ]
  %.137.i.unr = phi i64 [ %.0.lcssa85.i, %.lr.ph38.i ], [ %i.nf, %.prol.preheader1552 ]
  %i.ng = add nsw i32 %.025.lcssa84.i, -7
  %i.nh = icmp ult i32 %i.ng, 3
  br i1 %i.nh, label %._crit_edge.i97, label %.lr.ph38.i.new

bb.au:                                            ; preds = %bb.au, %.lr.ph.i112.new
  %indvars.iv45.i = phi i64 [ 0, %.lr.ph.i112.new ], [ %indvars.iv.next46.i.3, %bb.au ] ; 6 uses
  %indvars.iv.i114 = phi i64 [ %i.mc, %.lr.ph.i112.new ], [ %indvars.iv.next.i115.3, %bb.au ] ; 5 uses
  %.034.i = phi i64 [ 0, %.lr.ph.i112.new ], [ %i.pk, %bb.au ]
  %niter1551 = phi i64 [ 0, %.lr.ph.i112.new ], [ %niter1551.next.3, %bb.au ]
  %i.ni = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv45.i
  %i.nj = load i16, ptr %i.ni, align 4, !tbaa !20
  %i.nk = zext i16 %i.nj to i64
  %i.nl = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %indvars.iv.i114
  %i.nm = load i16, ptr %i.nl, align 2, !tbaa !20
  %i.nn = zext i16 %i.nm to i64
  %i.no = sub nsw i64 %i.nk, %i.nn
  %i.np = add nsw i64 %i.no, %.034.i              ; 2 uses
  %i.nq = trunc i64 %i.np to i16
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv45.i
  store i16 %i.nq, ptr %i.nr, align 8, !tbaa !20
  %i.ns = add nsw i64 %i.np, 2147483648
  %i.nt = lshr i64 %i.ns, 16
  %i.nu = add nsw i64 %i.nt, -32768
  %indvars.iv.next46.i = or disjoint i64 %indvars.iv45.i, 1 ; 2 uses
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next46.i
  %i.nw = load i16, ptr %i.nv, align 2, !tbaa !20
  %i.nx = zext i16 %i.nw to i64
  %i.ny = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv.i114
  %i.nz = getelementptr i8, ptr %i.ny, i64 2
  %i.oa = load i16, ptr %i.nz, align 2, !tbaa !20
  %i.ob = zext i16 %i.oa to i64
  %i.oc = sub nsw i64 %i.nx, %i.ob
  %i.od = add nsw i64 %i.oc, %i.nu                ; 2 uses
  %i.oe = trunc i64 %i.od to i16
  %i.of = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv.next46.i
  store i16 %i.oe, ptr %i.of, align 2, !tbaa !20
  %i.og = add nsw i64 %i.od, 2147483648
  %i.oh = lshr i64 %i.og, 16
  %i.oi = add nsw i64 %i.oh, -32768
  %indvars.iv.next46.i.1 = or disjoint i64 %indvars.iv45.i, 2 ; 2 uses
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next46.i.1
  %i.ok = load i16, ptr %i.oj, align 8, !tbaa !20
  %i.ol = zext i16 %i.ok to i64
  %i.om = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv.i114
  %i.on = getelementptr i8, ptr %i.om, i64 4
  %i.oo = load i16, ptr %i.on, align 2, !tbaa !20
  %i.op = zext i16 %i.oo to i64
  %i.oq = sub nsw i64 %i.ol, %i.op
  %i.or = add nsw i64 %i.oq, %i.oi                ; 2 uses
  %i.os = trunc i64 %i.or to i16
  %i.ot = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv.next46.i.1
  store i16 %i.os, ptr %i.ot, align 4, !tbaa !20
  %i.ou = add nsw i64 %i.or, 2147483648
  %i.ov = lshr i64 %i.ou, 16
  %i.ow = add nsw i64 %i.ov, -32768
  %indvars.iv.next46.i.2 = or disjoint i64 %indvars.iv45.i, 3 ; 2 uses
  %i.ox = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next46.i.2
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !20
  %i.oz = zext i16 %i.oy to i64
  %i.pa = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv.i114
  %i.pb = getelementptr i8, ptr %i.pa, i64 6
  %i.pc = load i16, ptr %i.pb, align 2, !tbaa !20
  %i.pd = zext i16 %i.pc to i64
  %i.pe = sub nsw i64 %i.oz, %i.pd
  %i.pf = add nsw i64 %i.pe, %i.ow                ; 2 uses
  %i.pg = trunc i64 %i.pf to i16
  %i.ph = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv.next46.i.2
  store i16 %i.pg, ptr %i.ph, align 2, !tbaa !20
  %i.pi = add nsw i64 %i.pf, 2147483648
  %i.pj = lshr i64 %i.pi, 16
  %i.pk = add nsw i64 %i.pj, -32768               ; 3 uses
  %indvars.iv.next46.i.3 = add nuw nsw i64 %indvars.iv45.i, 4 ; 2 uses
  %indvars.iv.next.i115.3 = add nsw i64 %indvars.iv.i114, 4 ; 2 uses
  %niter1551.next.3 = add i64 %niter1551, 4       ; 2 uses
  %niter1551.ncmp.3 = icmp eq i64 %niter1551.next.3, %unroll_iter1550
  br i1 %niter1551.ncmp.3, label %.preheader.i117.unr-lcssa, label %bb.au, !llvm.loop !3

.lr.ph38.i.new:                                   ; preds = %.prol.loopexit1553, %.lr.ph38.i.new
  %indvars.iv50.i = phi i64 [ %indvars.iv.next51.i.3, %.lr.ph38.i.new ], [ %indvars.iv50.i.unr, %.prol.loopexit1553 ] ; 6 uses
  %.137.i = phi i64 [ %i.qu, %.lr.ph38.i.new ], [ %.137.i.unr, %.prol.loopexit1553 ]
  %i.pl = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv50.i
  %i.pm = load i16, ptr %i.pl, align 2, !tbaa !20
  %i.pn = zext i16 %i.pm to i64
  %i.po = add nsw i64 %.137.i, %i.pn              ; 2 uses
  %i.pp = trunc i64 %i.po to i16
  %i.pq = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv50.i
  store i16 %i.pp, ptr %i.pq, align 2, !tbaa !20
  %i.pr = add nsw i64 %i.po, 2147483648
  %i.ps = lshr i64 %i.pr, 16
  %i.pt = add nsw i64 %i.ps, -32768
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next51.i
  %i.pv = load i16, ptr %i.pu, align 2, !tbaa !20
  %i.pw = zext i16 %i.pv to i64
  %i.px = add nsw i64 %i.pt, %i.pw                ; 2 uses
  %i.py = trunc i64 %i.px to i16
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv.next51.i
  store i16 %i.py, ptr %i.pz, align 2, !tbaa !20
  %i.qa = add nsw i64 %i.px, 2147483648
  %i.qb = lshr i64 %i.qa, 16
  %i.qc = add nsw i64 %i.qb, -32768
  %indvars.iv.next51.i.1 = add nuw nsw i64 %indvars.iv50.i, 2 ; 2 uses
  %i.qd = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next51.i.1
  %i.qe = load i16, ptr %i.qd, align 2, !tbaa !20
  %i.qf = zext i16 %i.qe to i64
  %i.qg = add nsw i64 %i.qc, %i.qf                ; 2 uses
  %i.qh = trunc i64 %i.qg to i16
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv.next51.i.1
  store i16 %i.qh, ptr %i.qi, align 2, !tbaa !20
  %i.qj = add nsw i64 %i.qg, 2147483648
  %i.qk = lshr i64 %i.qj, 16
  %i.ql = add nsw i64 %i.qk, -32768
  %indvars.iv.next51.i.2 = add nuw nsw i64 %indvars.iv50.i, 3 ; 2 uses
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next51.i.2
  %i.qn = load i16, ptr %i.qm, align 2, !tbaa !20
  %i.qo = zext i16 %i.qn to i64
  %i.qp = add nsw i64 %i.ql, %i.qo                ; 2 uses
  %i.qq = trunc i64 %i.qp to i16
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv.next51.i.2
  store i16 %i.qq, ptr %i.qr, align 2, !tbaa !20
  %i.qs = add nsw i64 %i.qp, 2147483648
  %i.qt = lshr i64 %i.qs, 16
  %i.qu = add nsw i64 %i.qt, -32768
  %indvars.iv.next51.i.3 = add nuw nsw i64 %indvars.iv50.i, 4 ; 2 uses
  %exitcond53.not.i.3 = icmp eq i64 %indvars.iv.next51.i.3, 10
  br i1 %exitcond53.not.i.3, label %._crit_edge.i97, label %.lr.ph38.i.new, !llvm.loop !4

._crit_edge.i97:                                  ; preds = %.prol.loopexit1553, %.lr.ph38.i.new, %.preheader.i117
  %i.qv = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep.i94, align 2, !tbaa !20 ; 2 uses
  %.not.i.not.not.i = icmp eq i16 %i.qv, 0
  br i1 %.not.i.not.not.i, label %bb.av, label %.preheader.i.i98

bb.av:                                            ; preds = %._crit_edge.i97
  %i.qw = add i16 %i.ei, -1
  %i.qx = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep54.i, align 16, !tbaa !20
  %.not.i.1.i99 = icmp eq i16 %i.qx, 0
  br i1 %.not.i.1.i99, label %bb.aw, label %.lr.ph47.i.i100

bb.aw:                                            ; preds = %bb.av
  %i.qy = add i16 %i.ei, -2
  %i.qz = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep55.i, align 2, !tbaa !20
  %.not.i.2.i104 = icmp eq i16 %i.qz, 0
  br i1 %.not.i.2.i104, label %bb.ax, label %.lr.ph47.i.i100

bb.ax:                                            ; preds = %bb.aw
  %i.ra = add i16 %i.ei, -3
  %i.rb = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep56.i, align 4, !tbaa !20
  %.not.i.3.i105 = icmp eq i16 %i.rb, 0
  br i1 %.not.i.3.i105, label %bb.ay, label %.lr.ph47.i.i100

bb.ay:                                            ; preds = %bb.ax
  %i.rc = add i16 %i.ei, -4
  %i.rd = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep57.i, align 2, !tbaa !20
  %.not.i.4.i106 = icmp eq i16 %i.rd, 0
  br i1 %.not.i.4.i106, label %bb.az, label %.lr.ph47.i.i100

bb.az:                                            ; preds = %bb.ay
  %i.re = add i16 %i.ei, -5
  %i.rf = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep58.i, align 8, !tbaa !20
  %.not.i.5.i107 = icmp eq i16 %i.rf, 0
  br i1 %.not.i.5.i107, label %bb.ba, label %.lr.ph47.i.i100

bb.ba:                                            ; preds = %bb.az
  %i.rg = add i16 %i.ei, -6
  %i.rh = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep59.i, align 2, !tbaa !20
  %.not.i.6.i108 = icmp eq i16 %i.rh, 0
  br i1 %.not.i.6.i108, label %bb.bb, label %.lr.ph47.i.i100

bb.bb:                                            ; preds = %bb.ba
  %i.ri = add i16 %i.ei, -7
  %i.rj = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60.i95, align 4, !tbaa !20
  %.not.i.7.i109 = icmp eq i16 %i.rj, 0
  br i1 %.not.i.7.i109, label %bb.bc, label %.lr.ph47.i.i100

bb.bc:                                            ; preds = %bb.bb
  %i.rk = add i16 %i.ei, -8
  %i.rl = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61.i96, align 2, !tbaa !20
  %.not.i.8.i110 = icmp eq i16 %i.rl, 0
  br i1 %.not.i.8.i110, label %bb.bd, label %.lr.ph47.i.i100

bb.bd:                                            ; preds = %bb.bc
  %i.rm = add i16 %i.ei, -9
  %i.rn = load i16, ptr %i.v, align 16, !tbaa !20
  %.not.i.9.i111 = icmp eq i16 %i.rn, 0
  br i1 %.not.i.9.i111, label %bb.be, label %.lr.ph47.i.i100

bb.be:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %submag0.exit

.preheader.i.i98:                                 ; preds = %._crit_edge.i97
  store i16 %i.ei, ptr %i.bl, align 2, !tbaa !26
  %i.ro = sub i16 0, %i.ee
  store i16 %i.ro, ptr %11, align 16, !tbaa !24
  store i16 %i.qv, ptr %i.bn, align 2, !tbaa !20
  %i.rp = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep54.i, align 16, !tbaa !20
  store i16 %i.rp, ptr %i.bo, align 4, !tbaa !20
  %i.rq = load <8 x i16>, ptr %i.v, align 16, !tbaa !20
  store <8 x i16> %i.rq, ptr %i.bm, align 4, !tbaa !20
  br label %submag0.exit

.lr.ph47.i.i100:                                  ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av
  %.03341.i.lcssa.ph.i101 = phi i16 [ %i.rm, %bb.bd ], [ %i.rk, %bb.bc ], [ %i.ri, %bb.bb ], [ %i.rg, %bb.ba ], [ %i.re, %bb.az ], [ %i.rc, %bb.ay ], [ %i.ra, %bb.ax ], [ %i.qy, %bb.aw ], [ %i.qw, %bb.av ]
  %indvars.iv58.i.lcssa.ph.i102 = phi i64 [ 0, %bb.bd ], [ 2, %bb.bc ], [ 4, %bb.bb ], [ 6, %bb.ba ], [ 8, %bb.az ], [ 10, %bb.ay ], [ 12, %bb.ax ], [ 14, %bb.aw ], [ 16, %bb.av ] ; 3 uses
  store i16 %.03341.i.lcssa.ph.i101, ptr %i.bl, align 2, !tbaa !26
  %i.rr = sub i16 0, %i.ee
  store i16 %i.rr, ptr %11, align 16, !tbaa !24
  %i.rs = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph.i102
  %scevgep.i103 = getelementptr i8, ptr %11, i64 %i.rs
  %i.rt = add nuw nsw i64 %indvars.iv58.i.lcssa.ph.i102, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i103, ptr noundef nonnull align 16 dereferenceable(1) %i.v, i64 range(i64 0, 21) %i.rt, i1 false), !tbaa !20
  %i.ru = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph.i102
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bm, i8 0, i64 %i.ru, i1 false), !tbaa !20
  br label %submag0.exit

submag0.exit:                                     ; preds = %bb.be, %.preheader.i.i98, %.lr.ph47.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #13
  br label %sub.exit

bb.bf:                                            ; preds = %abscmp.exit
  br i1 %.014.i, label %bb.bg, label %bb.bu

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #13
  %i.rv = sext i16 %i.eh to i32                   ; 2 uses
  %i.rw = sext i16 %i.ei to i32                   ; 3 uses
  %i.rx = sub nsw i32 %i.rv, %i.rw
  %i.ry = icmp slt i32 %i.rx, 10
  br i1 %i.ry, label %.lr.ph.i84, label %.lr.ph40.i56

.lr.ph.i84:                                       ; preds = %bb.bg
  %i.rz = sext i16 %i.eh to i64
  %i.sa = sub nsw i32 0, %i.rw
  %i.sb = sext i32 %i.sa to i64
  %i.sc = add nsw i64 %i.sb, %i.rz                ; 2 uses
  %reass.sub = sub nsw i32 %i.rw, %i.rv           ; 3 uses
  %i.sd = add nsw i32 %reass.sub, 10              ; 3 uses
  %wide.trip.count.i85 = zext i32 %i.sd to i64    ; 2 uses
  %xtraiter1532 = and i64 %wide.trip.count.i85, 3 ; 3 uses
  %i.se = add nsw i32 %reass.sub, 9
  %i.sf = icmp ult i32 %i.se, 3
  br i1 %i.sf, label %.epil.preheader1531, label %.lr.ph.i84.new

.lr.ph.i84.new:                                   ; preds = %.lr.ph.i84
  %unroll_iter1537 = and i64 %wide.trip.count.i85, 4294967292
  br label %bb.bi

.preheader.i92.unr-lcssa:                         ; preds = %bb.bi
  %lcmp.mod1534.not = icmp eq i64 %xtraiter1532, 0
  br i1 %lcmp.mod1534.not, label %.preheader.i92, label %.epil.preheader1531

.epil.preheader1531:                              ; preds = %.preheader.i92.unr-lcssa, %.lr.ph.i84
  %indvars.iv51.i86.epil.init = phi i64 [ 0, %.lr.ph.i84 ], [ %indvars.iv.next52.i89.3, %.preheader.i92.unr-lcssa ]
  %indvars.iv.i87.epil.init = phi i64 [ %i.sc, %.lr.ph.i84 ], [ %indvars.iv.next.i90.3, %.preheader.i92.unr-lcssa ]
  %.036.i88.epil.init = phi i64 [ 0, %.lr.ph.i84 ], [ %i.ux, %.preheader.i92.unr-lcssa ]
  %lcmp.mod1536 = icmp ne i64 %xtraiter1532, 0
  tail call void @llvm.assume(i1 %lcmp.mod1536)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.epil.preheader1531
  %indvars.iv51.i86.epil = phi i64 [ %indvars.iv51.i86.epil.init, %.epil.preheader1531 ], [ %indvars.iv.next52.i89.epil, %bb.bh ] ; 3 uses
  %indvars.iv.i87.epil = phi i64 [ %indvars.iv.i87.epil.init, %.epil.preheader1531 ], [ %indvars.iv.next.i90.epil, %bb.bh ] ; 2 uses
  %.036.i88.epil = phi i64 [ %.036.i88.epil.init, %.epil.preheader1531 ], [ %i.sq, %bb.bh ]
  %epil.iter1533 = phi i64 [ 0, %.epil.preheader1531 ], [ %epil.iter1533.next, %bb.bh ]
  %i.sg = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv51.i86.epil
  %i.sh = load i16, ptr %i.sg, align 2, !tbaa !20
  %i.si = zext i16 %i.sh to i64
  %i.sj = getelementptr inbounds [2 x i8], ptr %i.as, i64 %indvars.iv.i87.epil
  %i.sk = load i16, ptr %i.sj, align 2, !tbaa !20
  %i.sl = zext i16 %i.sk to i64
  %i.sm = add nuw nsw i64 %.036.i88.epil, %i.si
  %i.sn = add nuw nsw i64 %i.sm, %i.sl            ; 2 uses
  %i.so = trunc i64 %i.sn to i16
  %i.sp = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv51.i86.epil
  store i16 %i.so, ptr %i.sp, align 2, !tbaa !20
  %i.sq = lshr i64 %i.sn, 16                      ; 2 uses
  %indvars.iv.next52.i89.epil = add nuw nsw i64 %indvars.iv51.i86.epil, 1
  %indvars.iv.next.i90.epil = add nsw i64 %indvars.iv.i87.epil, 1
  %epil.iter1533.next = add i64 %epil.iter1533, 1 ; 2 uses
  %epil.iter1533.cmp.not = icmp eq i64 %epil.iter1533.next, %xtraiter1532
  br i1 %epil.iter1533.cmp.not, label %.preheader.i92, label %bb.bh, !llvm.loop !58

.preheader.i92:                                   ; preds = %bb.bh, %.preheader.i92.unr-lcssa
  %.lcssa1491 = phi i64 [ %i.ux, %.preheader.i92.unr-lcssa ], [ %i.sq, %bb.bh ] ; 2 uses
  %i.sr = icmp slt i32 %reass.sub, 0
  br i1 %i.sr, label %.lr.ph40.i56, label %._crit_edge.i63

.lr.ph40.i56:                                     ; preds = %bb.bg, %.preheader.i92
  %.0.lcssa94.i57 = phi i64 [ %.lcssa1491, %.preheader.i92 ], [ 0, %bb.bg ] ; 2 uses
  %.027.lcssa93.i58 = phi i32 [ %i.sd, %.preheader.i92 ], [ 0, %bb.bg ] ; 2 uses
  %i.ss = zext i32 %.027.lcssa93.i58 to i64       ; 3 uses
  %i.st = sub nsw i64 2, %i.ss
  %xtraiter1541 = and i64 %i.st, 7                ; 2 uses
  %lcmp.mod1542.not = icmp eq i64 %xtraiter1541, 0
  br i1 %lcmp.mod1542.not, label %.prol.loopexit1540, label %.prol.preheader1539

.prol.preheader1539:                              ; preds = %.lr.ph40.i56, %.prol.preheader1539
  %indvars.iv56.i59.prol = phi i64 [ %indvars.iv.next57.i61.prol, %.prol.preheader1539 ], [ %i.ss, %.lr.ph40.i56 ] ; 3 uses
  %.139.i60.prol = phi i64 [ %i.ta, %.prol.preheader1539 ], [ %.0.lcssa94.i57, %.lr.ph40.i56 ]
  %prol.iter1543 = phi i64 [ %prol.iter1543.next, %.prol.preheader1539 ], [ 0, %.lr.ph40.i56 ]
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv56.i59.prol
  %i.sv = load i16, ptr %i.su, align 2, !tbaa !20
  %i.sw = zext i16 %i.sv to i64
  %i.sx = add nuw nsw i64 %.139.i60.prol, %i.sw   ; 2 uses
  %i.sy = trunc i64 %i.sx to i16
  %i.sz = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv56.i59.prol
  store i16 %i.sy, ptr %i.sz, align 2, !tbaa !20
  %i.ta = lshr i64 %i.sx, 16                      ; 3 uses
  %indvars.iv.next57.i61.prol = add nuw nsw i64 %indvars.iv56.i59.prol, 1 ; 2 uses
  %prol.iter1543.next = add i64 %prol.iter1543, 1 ; 2 uses
  %prol.iter1543.cmp.not = icmp eq i64 %prol.iter1543.next, %xtraiter1541
  br i1 %prol.iter1543.cmp.not, label %.prol.loopexit1540, label %.prol.preheader1539, !llvm.loop !59

.prol.loopexit1540:                               ; preds = %.prol.preheader1539, %.lr.ph40.i56
  %.lcssa1492.unr = phi i64 [ poison, %.lr.ph40.i56 ], [ %i.ta, %.prol.preheader1539 ]
  %indvars.iv56.i59.unr = phi i64 [ %i.ss, %.lr.ph40.i56 ], [ %indvars.iv.next57.i61.prol, %.prol.preheader1539 ]
  %.139.i60.unr = phi i64 [ %.0.lcssa94.i57, %.lr.ph40.i56 ], [ %i.ta, %.prol.preheader1539 ]
  %i.tb = add nsw i32 %.027.lcssa93.i58, -3
  %i.tc = icmp ult i32 %i.tb, 7
  br i1 %i.tc, label %._crit_edge.i63, label %.lr.ph40.i56.new

bb.bi:                                            ; preds = %bb.bi, %.lr.ph.i84.new
  %indvars.iv51.i86 = phi i64 [ 0, %.lr.ph.i84.new ], [ %indvars.iv.next52.i89.3, %bb.bi ] ; 6 uses
  %indvars.iv.i87 = phi i64 [ %i.sc, %.lr.ph.i84.new ], [ %indvars.iv.next.i90.3, %bb.bi ] ; 5 uses
  %.036.i88 = phi i64 [ 0, %.lr.ph.i84.new ], [ %i.ux, %bb.bi ]
  %niter1538 = phi i64 [ 0, %.lr.ph.i84.new ], [ %niter1538.next.3, %bb.bi ]
  %i.td = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv51.i86
  %i.te = load i16, ptr %i.td, align 4, !tbaa !20
  %i.tf = zext i16 %i.te to i64
  %i.tg = getelementptr inbounds [2 x i8], ptr %i.as, i64 %indvars.iv.i87
  %i.th = load i16, ptr %i.tg, align 2, !tbaa !20
  %i.ti = zext i16 %i.th to i64
  %i.tj = add nuw nsw i64 %.036.i88, %i.tf
  %i.tk = add nuw nsw i64 %i.tj, %i.ti            ; 2 uses
  %i.tl = trunc i64 %i.tk to i16
  %i.tm = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv51.i86
  store i16 %i.tl, ptr %i.tm, align 8, !tbaa !20
  %i.tn = lshr i64 %i.tk, 16
  %indvars.iv.next52.i89 = or disjoint i64 %indvars.iv51.i86, 1 ; 2 uses
  %i.to = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next52.i89
  %i.tp = load i16, ptr %i.to, align 2, !tbaa !20
  %i.tq = zext i16 %i.tp to i64
  %i.tr = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv.i87
  %i.ts = getelementptr i8, ptr %i.tr, i64 2
  %i.tt = load i16, ptr %i.ts, align 2, !tbaa !20
  %i.tu = zext i16 %i.tt to i64
  %i.tv = add nuw nsw i64 %i.tn, %i.tq
  %i.tw = add nuw nsw i64 %i.tv, %i.tu            ; 2 uses
  %i.tx = trunc i64 %i.tw to i16
  %i.ty = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next52.i89
  store i16 %i.tx, ptr %i.ty, align 2, !tbaa !20
  %i.tz = lshr i64 %i.tw, 16
  %indvars.iv.next52.i89.1 = or disjoint i64 %indvars.iv51.i86, 2 ; 2 uses
  %i.ua = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next52.i89.1
  %i.ub = load i16, ptr %i.ua, align 8, !tbaa !20
  %i.uc = zext i16 %i.ub to i64
  %i.ud = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv.i87
  %i.ue = getelementptr i8, ptr %i.ud, i64 4
  %i.uf = load i16, ptr %i.ue, align 2, !tbaa !20
  %i.ug = zext i16 %i.uf to i64
  %i.uh = add nuw nsw i64 %i.tz, %i.uc
  %i.ui = add nuw nsw i64 %i.uh, %i.ug            ; 2 uses
  %i.uj = trunc i64 %i.ui to i16
  %i.uk = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next52.i89.1
  store i16 %i.uj, ptr %i.uk, align 4, !tbaa !20
  %i.ul = lshr i64 %i.ui, 16
  %indvars.iv.next52.i89.2 = or disjoint i64 %indvars.iv51.i86, 3 ; 2 uses
  %i.um = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next52.i89.2
  %i.un = load i16, ptr %i.um, align 2, !tbaa !20
  %i.uo = zext i16 %i.un to i64
  %i.up = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv.i87
  %i.uq = getelementptr i8, ptr %i.up, i64 6
  %i.ur = load i16, ptr %i.uq, align 2, !tbaa !20
  %i.us = zext i16 %i.ur to i64
  %i.ut = add nuw nsw i64 %i.ul, %i.uo
  %i.uu = add nuw nsw i64 %i.ut, %i.us            ; 2 uses
  %i.uv = trunc i64 %i.uu to i16
  %i.uw = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next52.i89.2
  store i16 %i.uv, ptr %i.uw, align 2, !tbaa !20
  %i.ux = lshr i64 %i.uu, 16                      ; 3 uses
  %indvars.iv.next52.i89.3 = add nuw nsw i64 %indvars.iv51.i86, 4 ; 2 uses
  %indvars.iv.next.i90.3 = add nsw i64 %indvars.iv.i87, 4 ; 2 uses
  %niter1538.next.3 = add i64 %niter1538, 4       ; 2 uses
  %niter1538.ncmp.3 = icmp eq i64 %niter1538.next.3, %unroll_iter1537
  br i1 %niter1538.ncmp.3, label %.preheader.i92.unr-lcssa, label %bb.bi, !llvm.loop !5

.lr.ph40.i56.new:                                 ; preds = %.prol.loopexit1540, %.lr.ph40.i56.new
  %indvars.iv56.i59 = phi i64 [ %indvars.iv.next57.i61.7, %.lr.ph40.i56.new ], [ %indvars.iv56.i59.unr, %.prol.loopexit1540 ] ; 10 uses
  %.139.i60 = phi i64 [ %i.xb, %.lr.ph40.i56.new ], [ %.139.i60.unr, %.prol.loopexit1540 ]
  %i.uy = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv56.i59
  %i.uz = load i16, ptr %i.uy, align 2, !tbaa !20
  %i.va = zext i16 %i.uz to i64
  %i.vb = add nuw nsw i64 %.139.i60, %i.va        ; 2 uses
  %i.vc = trunc i64 %i.vb to i16
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv56.i59
  store i16 %i.vc, ptr %i.vd, align 2, !tbaa !20
  %i.ve = lshr i64 %i.vb, 16
  %indvars.iv.next57.i61 = add nuw nsw i64 %indvars.iv56.i59, 1 ; 2 uses
  %i.vf = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i61
  %i.vg = load i16, ptr %i.vf, align 2, !tbaa !20
  %i.vh = zext i16 %i.vg to i64
  %i.vi = add nuw nsw i64 %i.ve, %i.vh            ; 2 uses
  %i.vj = trunc i64 %i.vi to i16
  %i.vk = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next57.i61
  store i16 %i.vj, ptr %i.vk, align 2, !tbaa !20
  %i.vl = lshr i64 %i.vi, 16
  %indvars.iv.next57.i61.1 = add nuw nsw i64 %indvars.iv56.i59, 2 ; 2 uses
  %i.vm = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i61.1
  %i.vn = load i16, ptr %i.vm, align 2, !tbaa !20
  %i.vo = zext i16 %i.vn to i64
  %i.vp = add nuw nsw i64 %i.vl, %i.vo            ; 2 uses
  %i.vq = trunc i64 %i.vp to i16
  %i.vr = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next57.i61.1
  store i16 %i.vq, ptr %i.vr, align 2, !tbaa !20
  %i.vs = lshr i64 %i.vp, 16
  %indvars.iv.next57.i61.2 = add nuw nsw i64 %indvars.iv56.i59, 3 ; 2 uses
  %i.vt = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i61.2
  %i.vu = load i16, ptr %i.vt, align 2, !tbaa !20
  %i.vv = zext i16 %i.vu to i64
  %i.vw = add nuw nsw i64 %i.vs, %i.vv            ; 2 uses
  %i.vx = trunc i64 %i.vw to i16
  %i.vy = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next57.i61.2
  store i16 %i.vx, ptr %i.vy, align 2, !tbaa !20
  %i.vz = lshr i64 %i.vw, 16
  %indvars.iv.next57.i61.3 = add nuw nsw i64 %indvars.iv56.i59, 4 ; 2 uses
  %i.wa = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i61.3
  %i.wb = load i16, ptr %i.wa, align 2, !tbaa !20
  %i.wc = zext i16 %i.wb to i64
  %i.wd = add nuw nsw i64 %i.vz, %i.wc            ; 2 uses
  %i.we = trunc i64 %i.wd to i16
  %i.wf = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next57.i61.3
  store i16 %i.we, ptr %i.wf, align 2, !tbaa !20
  %i.wg = lshr i64 %i.wd, 16
  %indvars.iv.next57.i61.4 = add nuw nsw i64 %indvars.iv56.i59, 5 ; 2 uses
  %i.wh = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i61.4
  %i.wi = load i16, ptr %i.wh, align 2, !tbaa !20
  %i.wj = zext i16 %i.wi to i64
  %i.wk = add nuw nsw i64 %i.wg, %i.wj            ; 2 uses
  %i.wl = trunc i64 %i.wk to i16
  %i.wm = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next57.i61.4
  store i16 %i.wl, ptr %i.wm, align 2, !tbaa !20
  %i.wn = lshr i64 %i.wk, 16
  %indvars.iv.next57.i61.5 = add nuw nsw i64 %indvars.iv56.i59, 6 ; 2 uses
  %i.wo = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i61.5
  %i.wp = load i16, ptr %i.wo, align 2, !tbaa !20
  %i.wq = zext i16 %i.wp to i64
  %i.wr = add nuw nsw i64 %i.wn, %i.wq            ; 2 uses
  %i.ws = trunc i64 %i.wr to i16
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next57.i61.5
  store i16 %i.ws, ptr %i.wt, align 2, !tbaa !20
  %i.wu = lshr i64 %i.wr, 16
  %indvars.iv.next57.i61.6 = add nuw nsw i64 %indvars.iv56.i59, 7 ; 2 uses
  %i.wv = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i61.6
  %i.ww = load i16, ptr %i.wv, align 2, !tbaa !20
  %i.wx = zext i16 %i.ww to i64
  %i.wy = add nuw nsw i64 %i.wu, %i.wx            ; 2 uses
  %i.wz = trunc i64 %i.wy to i16
  %i.xa = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next57.i61.6
  store i16 %i.wz, ptr %i.xa, align 2, !tbaa !20
  %i.xb = lshr i64 %i.wy, 16                      ; 2 uses
  %indvars.iv.next57.i61.7 = add nuw nsw i64 %indvars.iv56.i59, 8 ; 2 uses
  %exitcond59.not.i62.7 = icmp eq i64 %indvars.iv.next57.i61.7, 10
  br i1 %exitcond59.not.i62.7, label %._crit_edge.i63, label %.lr.ph40.i56.new, !llvm.loop !6

._crit_edge.i63:                                  ; preds = %.prol.loopexit1540, %.lr.ph40.i56.new, %.preheader.i92
  %.128.lcssa.i64 = phi i32 [ %i.sd, %.preheader.i92 ], [ 10, %.lr.ph40.i56.new ], [ 10, %.prol.loopexit1540 ]
  %.1.lcssa.i65 = phi i64 [ %.lcssa1491, %.preheader.i92 ], [ %.lcssa1492.unr, %.prol.loopexit1540 ], [ %i.xb, %.lr.ph40.i56.new ]
  %i.xc = trunc nuw nsw i64 %.1.lcssa.i65 to i16
  %i.xd = zext nneg i32 %.128.lcssa.i64 to i64
  %i.xe = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.xd
  store i16 %i.xc, ptr %i.xe, align 2, !tbaa !20
  %i.xf = add i16 %i.eh, 1
  %i.xg = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep.i45, align 4, !tbaa !20 ; 2 uses
  %.not.i.i66 = icmp eq i16 %i.xg, 0
  br i1 %.not.i.i66, label %bb.bj, label %.preheader.i.i67

bb.bj:                                            ; preds = %._crit_edge.i63
  %i.xh = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60.i46, align 2, !tbaa !20 ; 2 uses
  %.not.i.1.i70 = icmp eq i16 %i.xh, 0
  br i1 %.not.i.1.i70, label %bb.bk, label %.preheader.i.i67

bb.bk:                                            ; preds = %bb.bj
  %i.xi = add i16 %i.eh, -1
  %i.xj = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61.i47, align 16, !tbaa !20
  %.not.i.2.i71 = icmp eq i16 %i.xj, 0
  br i1 %.not.i.2.i71, label %bb.bl, label %.lr.ph47.i.i72

bb.bl:                                            ; preds = %bb.bk
  %i.xk = add i16 %i.eh, -2
  %i.xl = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep62.i48, align 2, !tbaa !20
  %.not.i.3.i76 = icmp eq i16 %i.xl, 0
  br i1 %.not.i.3.i76, label %bb.bm, label %.lr.ph47.i.i72

bb.bm:                                            ; preds = %bb.bl
  %i.xm = add i16 %i.eh, -3
  %i.xn = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep63.i49, align 4, !tbaa !20
  %.not.i.4.i77 = icmp eq i16 %i.xn, 0
  br i1 %.not.i.4.i77, label %bb.bn, label %.lr.ph47.i.i72

bb.bn:                                            ; preds = %bb.bm
  %i.xo = add i16 %i.eh, -4
  %i.xp = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep64.i50, align 2, !tbaa !20
  %.not.i.5.i78 = icmp eq i16 %i.xp, 0
  br i1 %.not.i.5.i78, label %bb.bo, label %.lr.ph47.i.i72

bb.bo:                                            ; preds = %bb.bn
  %i.xq = add i16 %i.eh, -5
  %i.xr = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep65.i51, align 8, !tbaa !20
  %.not.i.6.i79 = icmp eq i16 %i.xr, 0
  br i1 %.not.i.6.i79, label %bb.bp, label %.lr.ph47.i.i72

bb.bp:                                            ; preds = %bb.bo
  %i.xs = add i16 %i.eh, -6
  %i.xt = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep66.i52, align 2, !tbaa !20
  %.not.i.7.i80 = icmp eq i16 %i.xt, 0
  br i1 %.not.i.7.i80, label %bb.bq, label %.lr.ph47.i.i72

bb.bq:                                            ; preds = %bb.bp
  %i.xu = add i16 %i.eh, -7
  %i.xv = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep67.i53, align 4, !tbaa !20
  %.not.i.8.i81 = icmp eq i16 %i.xv, 0
  br i1 %.not.i.8.i81, label %bb.br, label %.lr.ph47.i.i72

bb.br:                                            ; preds = %bb.bq
  %i.xw = add i16 %i.eh, -8
  %i.xx = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep68.i54, align 2, !tbaa !20
  %.not.i.9.i82 = icmp eq i16 %i.xx, 0
  br i1 %.not.i.9.i82, label %bb.bs, label %.lr.ph47.i.i72

bb.bs:                                            ; preds = %bb.br
  %i.xy = add i16 %i.eh, -9
  %i.xz = load i16, ptr %i.w, align 16, !tbaa !20
  %.not.i.10.i83 = icmp eq i16 %i.xz, 0
  br i1 %.not.i.10.i83, label %bb.bt, label %.lr.ph47.i.i72

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %addmag0.exit93

.preheader.i.i67:                                 ; preds = %bb.bj, %._crit_edge.i63
  %i.ya = phi i16 [ %i.xg, %._crit_edge.i63 ], [ %i.xh, %bb.bj ]
  %indvars.iv72.in.i.lcssa.sroa.phi.i68 = phi ptr [ %indvars.iv72.in.i.lcssa.sroa.gep.i55, %._crit_edge.i63 ], [ %indvars.iv72.i.lcssa.sroa.gep.i45, %bb.bj ] ; 2 uses
  %.03341.i.lcssa.i69 = phi i16 [ %i.xf, %._crit_edge.i63 ], [ %i.eh, %bb.bj ]
  store i16 %.03341.i.lcssa.i69, ptr %i.bl, align 2, !tbaa !26
  store i16 %i.ee, ptr %11, align 16, !tbaa !24
  store i16 %i.ya, ptr %i.bn, align 2, !tbaa !20
  %i.yb = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.i68, i64 -4
  %i.yc = load i16, ptr %i.yb, align 2, !tbaa !20
  store i16 %i.yc, ptr %i.bo, align 4, !tbaa !20
  %i.yd = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.i68, i64 -20
  %i.ye = load <8 x i16>, ptr %i.yd, align 2, !tbaa !20
  store <8 x i16> %i.ye, ptr %i.bm, align 4, !tbaa !20
  br label %addmag0.exit93

.lr.ph47.i.i72:                                   ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk
  %.03341.i.lcssa.ph.i73 = phi i16 [ %i.xy, %bb.bs ], [ %i.xw, %bb.br ], [ %i.xu, %bb.bq ], [ %i.xs, %bb.bp ], [ %i.xq, %bb.bo ], [ %i.xo, %bb.bn ], [ %i.xm, %bb.bm ], [ %i.xk, %bb.bl ], [ %i.xi, %bb.bk ]
  %indvars.iv58.i.lcssa.ph.i74 = phi i64 [ 0, %bb.bs ], [ 2, %bb.br ], [ 4, %bb.bq ], [ 6, %bb.bp ], [ 8, %bb.bo ], [ 10, %bb.bn ], [ 12, %bb.bm ], [ 14, %bb.bl ], [ 16, %bb.bk ] ; 3 uses
  store i16 %.03341.i.lcssa.ph.i73, ptr %i.bl, align 2, !tbaa !26
  store i16 %i.ee, ptr %11, align 16, !tbaa !24
  %i.yf = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph.i74
  %scevgep.i75 = getelementptr i8, ptr %11, i64 %i.yf
  %i.yg = add nuw nsw i64 %indvars.iv58.i.lcssa.ph.i74, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i75, ptr noundef nonnull align 16 dereferenceable(1) %i.w, i64 range(i64 0, 23) %i.yg, i1 false), !tbaa !20
  %i.yh = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph.i74
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bm, i8 0, i64 %i.yh, i1 false), !tbaa !20
  br label %addmag0.exit93

addmag0.exit93:                                   ; preds = %bb.bt, %.preheader.i.i67, %.lr.ph47.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #13
  br label %sub.exit

bb.bu:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #13
  %i.yi = sext i16 %i.ei to i32                   ; 2 uses
  %i.yj = sext i16 %i.eh to i32                   ; 3 uses
  %i.yk = sub nsw i32 %i.yi, %i.yj
  %i.yl = icmp slt i32 %i.yk, 10
  br i1 %i.yl, label %.lr.ph.i39, label %.lr.ph40.i

.lr.ph.i39:                                       ; preds = %bb.bu
  %i.ym = sext i16 %i.ei to i64
  %i.yn = sub nsw i32 0, %i.yj
  %i.yo = sext i32 %i.yn to i64
  %i.yp = add nsw i64 %i.ym, %i.yo                ; 2 uses
  %i.yq = add nsw i32 %i.yj, 10
  %i.yr = sub nsw i32 %i.yq, %i.yi                ; 5 uses
  %wide.trip.count.i40 = zext i32 %i.yr to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i40, 3     ; 3 uses
  %i.ys = add nsw i32 %i.yr, -1
  %i.yt = icmp ult i32 %i.ys, 3
  br i1 %i.yt, label %.epil.preheader, label %.lr.ph.i39.new

.lr.ph.i39.new:                                   ; preds = %.lr.ph.i39
  %unroll_iter = and i64 %wide.trip.count.i40, 4294967292
  br label %bb.bw

.preheader.i44.unr-lcssa:                         ; preds = %bb.bw
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i44, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i44.unr-lcssa, %.lr.ph.i39
  %indvars.iv51.i.epil.init = phi i64 [ 0, %.lr.ph.i39 ], [ %indvars.iv.next52.i.3, %.preheader.i44.unr-lcssa ]
  %indvars.iv.i41.epil.init = phi i64 [ %i.yp, %.lr.ph.i39 ], [ %indvars.iv.next.i42.3, %.preheader.i44.unr-lcssa ]
  %.036.i.epil.init = phi i64 [ 0, %.lr.ph.i39 ], [ %i.abl, %.preheader.i44.unr-lcssa ]
  %lcmp.mod1528 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1528)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.epil.preheader
  %indvars.iv51.i.epil = phi i64 [ %indvars.iv51.i.epil.init, %.epil.preheader ], [ %indvars.iv.next52.i.epil, %bb.bv ] ; 3 uses
  %indvars.iv.i41.epil = phi i64 [ %indvars.iv.i41.epil.init, %.epil.preheader ], [ %indvars.iv.next.i42.epil, %bb.bv ] ; 2 uses
  %.036.i.epil = phi i64 [ %.036.i.epil.init, %.epil.preheader ], [ %i.ze, %bb.bv ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bv ]
  %i.yu = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv51.i.epil
  %i.yv = load i16, ptr %i.yu, align 2, !tbaa !20
  %i.yw = zext i16 %i.yv to i64
  %i.yx = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %indvars.iv.i41.epil
  %i.yy = load i16, ptr %i.yx, align 2, !tbaa !20
  %i.yz = zext i16 %i.yy to i64
  %i.za = add nuw nsw i64 %.036.i.epil, %i.yw
  %i.zb = add nuw nsw i64 %i.za, %i.yz            ; 2 uses
  %i.zc = trunc i64 %i.zb to i16
  %i.zd = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv51.i.epil
  store i16 %i.zc, ptr %i.zd, align 2, !tbaa !20
  %i.ze = lshr i64 %i.zb, 16                      ; 2 uses
  %indvars.iv.next52.i.epil = add nuw nsw i64 %indvars.iv51.i.epil, 1
  %indvars.iv.next.i42.epil = add nsw i64 %indvars.iv.i41.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i44, label %bb.bv, !llvm.loop !60

.preheader.i44:                                   ; preds = %bb.bv, %.preheader.i44.unr-lcssa
  %.lcssa = phi i64 [ %i.abl, %.preheader.i44.unr-lcssa ], [ %i.ze, %bb.bv ] ; 2 uses
  %i.zf = icmp samesign ult i32 %i.yr, 10
  br i1 %i.zf, label %.lr.ph40.i, label %._crit_edge.i38

.lr.ph40.i:                                       ; preds = %bb.bu, %.preheader.i44
  %.0.lcssa94.i = phi i64 [ %.lcssa, %.preheader.i44 ], [ 0, %bb.bu ] ; 2 uses
  %.027.lcssa93.i = phi i32 [ %i.yr, %.preheader.i44 ], [ 0, %bb.bu ] ; 2 uses
  %i.zg = zext nneg i32 %.027.lcssa93.i to i64    ; 3 uses
  %i.zh = sub nsw i64 2, %i.zg
  %xtraiter1529 = and i64 %i.zh, 7                ; 2 uses
  %lcmp.mod1530.not = icmp eq i64 %xtraiter1529, 0
  br i1 %lcmp.mod1530.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph40.i, %.prol.preheader
  %indvars.iv56.i.prol = phi i64 [ %indvars.iv.next57.i.prol, %.prol.preheader ], [ %i.zg, %.lr.ph40.i ] ; 3 uses
  %.139.i.prol = phi i64 [ %i.zo, %.prol.preheader ], [ %.0.lcssa94.i, %.lr.ph40.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph40.i ]
  %i.zi = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv56.i.prol
  %i.zj = load i16, ptr %i.zi, align 2, !tbaa !20
  %i.zk = zext i16 %i.zj to i64
  %i.zl = add nuw nsw i64 %.139.i.prol, %i.zk     ; 2 uses
  %i.zm = trunc i64 %i.zl to i16
  %i.zn = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv56.i.prol
  store i16 %i.zm, ptr %i.zn, align 2, !tbaa !20
  %i.zo = lshr i64 %i.zl, 16                      ; 3 uses
  %indvars.iv.next57.i.prol = add nuw nsw i64 %indvars.iv56.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1529
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !61

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph40.i
  %.lcssa1490.unr = phi i64 [ poison, %.lr.ph40.i ], [ %i.zo, %.prol.preheader ]
  %indvars.iv56.i.unr = phi i64 [ %i.zg, %.lr.ph40.i ], [ %indvars.iv.next57.i.prol, %.prol.preheader ]
  %.139.i.unr = phi i64 [ %.0.lcssa94.i, %.lr.ph40.i ], [ %i.zo, %.prol.preheader ]
  %i.zp = add nsw i32 %.027.lcssa93.i, -3
  %i.zq = icmp ult i32 %i.zp, 7
  br i1 %i.zq, label %._crit_edge.i38, label %.lr.ph40.i.new

bb.bw:                                            ; preds = %bb.bw, %.lr.ph.i39.new
  %indvars.iv51.i = phi i64 [ 0, %.lr.ph.i39.new ], [ %indvars.iv.next52.i.3, %bb.bw ] ; 6 uses
  %indvars.iv.i41 = phi i64 [ %i.yp, %.lr.ph.i39.new ], [ %indvars.iv.next.i42.3, %bb.bw ] ; 5 uses
  %.036.i = phi i64 [ 0, %.lr.ph.i39.new ], [ %i.abl, %bb.bw ]
  %niter = phi i64 [ 0, %.lr.ph.i39.new ], [ %niter.next.3, %bb.bw ]
  %i.zr = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv51.i
  %i.zs = load i16, ptr %i.zr, align 4, !tbaa !20
  %i.zt = zext i16 %i.zs to i64
  %i.zu = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %indvars.iv.i41
  %i.zv = load i16, ptr %i.zu, align 2, !tbaa !20
  %i.zw = zext i16 %i.zv to i64
  %i.zx = add nuw nsw i64 %.036.i, %i.zt
  %i.zy = add nuw nsw i64 %i.zx, %i.zw            ; 2 uses
  %i.zz = trunc i64 %i.zy to i16
  %i.aaa = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv51.i
  store i16 %i.zz, ptr %i.aaa, align 8, !tbaa !20
  %i.aab = lshr i64 %i.zy, 16
  %indvars.iv.next52.i = or disjoint i64 %indvars.iv51.i, 1 ; 2 uses
  %i.aac = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next52.i
  %i.aad = load i16, ptr %i.aac, align 2, !tbaa !20
  %i.aae = zext i16 %i.aad to i64
  %i.aaf = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv.i41
  %i.aag = getelementptr i8, ptr %i.aaf, i64 2
  %i.aah = load i16, ptr %i.aag, align 2, !tbaa !20
  %i.aai = zext i16 %i.aah to i64
  %i.aaj = add nuw nsw i64 %i.aab, %i.aae
  %i.aak = add nuw nsw i64 %i.aaj, %i.aai         ; 2 uses
  %i.aal = trunc i64 %i.aak to i16
  %i.aam = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.next52.i
  store i16 %i.aal, ptr %i.aam, align 2, !tbaa !20
  %i.aan = lshr i64 %i.aak, 16
  %indvars.iv.next52.i.1 = or disjoint i64 %indvars.iv51.i, 2 ; 2 uses
  %i.aao = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next52.i.1
  %i.aap = load i16, ptr %i.aao, align 8, !tbaa !20
  %i.aaq = zext i16 %i.aap to i64
  %i.aar = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv.i41
  %i.aas = getelementptr i8, ptr %i.aar, i64 4
  %i.aat = load i16, ptr %i.aas, align 2, !tbaa !20
  %i.aau = zext i16 %i.aat to i64
  %i.aav = add nuw nsw i64 %i.aan, %i.aaq
  %i.aaw = add nuw nsw i64 %i.aav, %i.aau         ; 2 uses
  %i.aax = trunc i64 %i.aaw to i16
  %i.aay = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.next52.i.1
  store i16 %i.aax, ptr %i.aay, align 4, !tbaa !20
  %i.aaz = lshr i64 %i.aaw, 16
  %indvars.iv.next52.i.2 = or disjoint i64 %indvars.iv51.i, 3 ; 2 uses
  %i.aba = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next52.i.2
  %i.abb = load i16, ptr %i.aba, align 2, !tbaa !20
  %i.abc = zext i16 %i.abb to i64
  %i.abd = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv.i41
  %i.abe = getelementptr i8, ptr %i.abd, i64 6
  %i.abf = load i16, ptr %i.abe, align 2, !tbaa !20
  %i.abg = zext i16 %i.abf to i64
  %i.abh = add nuw nsw i64 %i.aaz, %i.abc
  %i.abi = add nuw nsw i64 %i.abh, %i.abg         ; 2 uses
  %i.abj = trunc i64 %i.abi to i16
  %i.abk = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.next52.i.2
  store i16 %i.abj, ptr %i.abk, align 2, !tbaa !20
  %i.abl = lshr i64 %i.abi, 16                    ; 3 uses
  %indvars.iv.next52.i.3 = add nuw nsw i64 %indvars.iv51.i, 4 ; 2 uses
  %indvars.iv.next.i42.3 = add nsw i64 %indvars.iv.i41, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i44.unr-lcssa, label %bb.bw, !llvm.loop !5

.lr.ph40.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph40.i.new
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i.7, %.lr.ph40.i.new ], [ %indvars.iv56.i.unr, %.prol.loopexit ] ; 10 uses
  %.139.i = phi i64 [ %i.adp, %.lr.ph40.i.new ], [ %.139.i.unr, %.prol.loopexit ]
  %i.abm = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv56.i
  %i.abn = load i16, ptr %i.abm, align 2, !tbaa !20
  %i.abo = zext i16 %i.abn to i64
  %i.abp = add nuw nsw i64 %.139.i, %i.abo        ; 2 uses
  %i.abq = trunc i64 %i.abp to i16
  %i.abr = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv56.i
  store i16 %i.abq, ptr %i.abr, align 2, !tbaa !20
  %i.abs = lshr i64 %i.abp, 16
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %i.abt = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i
  %i.abu = load i16, ptr %i.abt, align 2, !tbaa !20
  %i.abv = zext i16 %i.abu to i64
  %i.abw = add nuw nsw i64 %i.abs, %i.abv         ; 2 uses
  %i.abx = trunc i64 %i.abw to i16
  %i.aby = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.next57.i
  store i16 %i.abx, ptr %i.aby, align 2, !tbaa !20
  %i.abz = lshr i64 %i.abw, 16
  %indvars.iv.next57.i.1 = add nuw nsw i64 %indvars.iv56.i, 2 ; 2 uses
  %i.aca = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i.1
  %i.acb = load i16, ptr %i.aca, align 2, !tbaa !20
  %i.acc = zext i16 %i.acb to i64
  %i.acd = add nuw nsw i64 %i.abz, %i.acc         ; 2 uses
  %i.ace = trunc i64 %i.acd to i16
  %i.acf = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.next57.i.1
  store i16 %i.ace, ptr %i.acf, align 2, !tbaa !20
  %i.acg = lshr i64 %i.acd, 16
  %indvars.iv.next57.i.2 = add nuw nsw i64 %indvars.iv56.i, 3 ; 2 uses
  %i.ach = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i.2
  %i.aci = load i16, ptr %i.ach, align 2, !tbaa !20
  %i.acj = zext i16 %i.aci to i64
  %i.ack = add nuw nsw i64 %i.acg, %i.acj         ; 2 uses
  %i.acl = trunc i64 %i.ack to i16
  %i.acm = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.next57.i.2
  store i16 %i.acl, ptr %i.acm, align 2, !tbaa !20
  %i.acn = lshr i64 %i.ack, 16
  %indvars.iv.next57.i.3 = add nuw nsw i64 %indvars.iv56.i, 4 ; 2 uses
  %i.aco = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i.3
  %i.acp = load i16, ptr %i.aco, align 2, !tbaa !20
  %i.acq = zext i16 %i.acp to i64
  %i.acr = add nuw nsw i64 %i.acn, %i.acq         ; 2 uses
  %i.acs = trunc i64 %i.acr to i16
  %i.act = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.next57.i.3
  store i16 %i.acs, ptr %i.act, align 2, !tbaa !20
  %i.acu = lshr i64 %i.acr, 16
  %indvars.iv.next57.i.4 = add nuw nsw i64 %indvars.iv56.i, 5 ; 2 uses
  %i.acv = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i.4
  %i.acw = load i16, ptr %i.acv, align 2, !tbaa !20
  %i.acx = zext i16 %i.acw to i64
  %i.acy = add nuw nsw i64 %i.acu, %i.acx         ; 2 uses
  %i.acz = trunc i64 %i.acy to i16
  %i.ada = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.next57.i.4
  store i16 %i.acz, ptr %i.ada, align 2, !tbaa !20
  %i.adb = lshr i64 %i.acy, 16
  %indvars.iv.next57.i.5 = add nuw nsw i64 %indvars.iv56.i, 6 ; 2 uses
  %i.adc = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i.5
  %i.add = load i16, ptr %i.adc, align 2, !tbaa !20
  %i.ade = zext i16 %i.add to i64
  %i.adf = add nuw nsw i64 %i.adb, %i.ade         ; 2 uses
  %i.adg = trunc i64 %i.adf to i16
  %i.adh = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.next57.i.5
  store i16 %i.adg, ptr %i.adh, align 2, !tbaa !20
  %i.adi = lshr i64 %i.adf, 16
  %indvars.iv.next57.i.6 = add nuw nsw i64 %indvars.iv56.i, 7 ; 2 uses
  %i.adj = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i.6
  %i.adk = load i16, ptr %i.adj, align 2, !tbaa !20
  %i.adl = zext i16 %i.adk to i64
  %i.adm = add nuw nsw i64 %i.adi, %i.adl         ; 2 uses
  %i.adn = trunc i64 %i.adm to i16
  %i.ado = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.next57.i.6
  store i16 %i.adn, ptr %i.ado, align 2, !tbaa !20
  %i.adp = lshr i64 %i.adm, 16                    ; 2 uses
  %indvars.iv.next57.i.7 = add nuw nsw i64 %indvars.iv56.i, 8 ; 2 uses
  %exitcond59.not.i.7 = icmp eq i64 %indvars.iv.next57.i.7, 10
  br i1 %exitcond59.not.i.7, label %._crit_edge.i38, label %.lr.ph40.i.new, !llvm.loop !6

._crit_edge.i38:                                  ; preds = %.prol.loopexit, %.lr.ph40.i.new, %.preheader.i44
  %.128.lcssa.i = phi i32 [ %i.yr, %.preheader.i44 ], [ 10, %.lr.ph40.i.new ], [ 10, %.prol.loopexit ]
  %.1.lcssa.i = phi i64 [ %.lcssa, %.preheader.i44 ], [ %.lcssa1490.unr, %.prol.loopexit ], [ %i.adp, %.lr.ph40.i.new ]
  %i.adq = trunc nuw nsw i64 %.1.lcssa.i to i16
  %i.adr = zext nneg i32 %.128.lcssa.i to i64
  %i.ads = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.adr
  store i16 %i.adq, ptr %i.ads, align 2, !tbaa !20
  %i.adt = add i16 %i.ei, 1
  %i.adu = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep.i, align 4, !tbaa !20 ; 2 uses
  %.not.i.i = icmp eq i16 %i.adu, 0
  br i1 %.not.i.i, label %bb.bx, label %.preheader.i.i

bb.bx:                                            ; preds = %._crit_edge.i38
  %i.adv = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60.i, align 2, !tbaa !20 ; 2 uses
  %.not.i.1.i = icmp eq i16 %i.adv, 0
  br i1 %.not.i.1.i, label %bb.by, label %.preheader.i.i

bb.by:                                            ; preds = %bb.bx
  %i.adw = add i16 %i.ei, -1
  %i.adx = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61.i, align 16, !tbaa !20
  %.not.i.2.i = icmp eq i16 %i.adx, 0
  br i1 %.not.i.2.i, label %bb.bz, label %.lr.ph47.i.i

bb.bz:                                            ; preds = %bb.by
  %i.ady = add i16 %i.ei, -2
  %i.adz = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep62.i, align 2, !tbaa !20
  %.not.i.3.i = icmp eq i16 %i.adz, 0
  br i1 %.not.i.3.i, label %bb.ca, label %.lr.ph47.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.aea = add i16 %i.ei, -3
  %i.aeb = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep63.i, align 4, !tbaa !20
  %.not.i.4.i = icmp eq i16 %i.aeb, 0
  br i1 %.not.i.4.i, label %bb.cb, label %.lr.ph47.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.aec = add i16 %i.ei, -4
  %i.aed = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep64.i, align 2, !tbaa !20
  %.not.i.5.i = icmp eq i16 %i.aed, 0
  br i1 %.not.i.5.i, label %bb.cc, label %.lr.ph47.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.aee = add i16 %i.ei, -5
  %i.aef = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep65.i, align 8, !tbaa !20
  %.not.i.6.i = icmp eq i16 %i.aef, 0
  br i1 %.not.i.6.i, label %bb.cd, label %.lr.ph47.i.i

bb.cd:                                            ; preds = %bb.cc
  %i.aeg = add i16 %i.ei, -6
  %i.aeh = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep66.i, align 2, !tbaa !20
  %.not.i.7.i = icmp eq i16 %i.aeh, 0
  br i1 %.not.i.7.i, label %bb.ce, label %.lr.ph47.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.aei = add i16 %i.ei, -7
  %i.aej = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep67.i, align 4, !tbaa !20
  %.not.i.8.i = icmp eq i16 %i.aej, 0
  br i1 %.not.i.8.i, label %bb.cf, label %.lr.ph47.i.i

bb.cf:                                            ; preds = %bb.ce
  %i.aek = add i16 %i.ei, -8
  %i.ael = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep68.i, align 2, !tbaa !20
  %.not.i.9.i = icmp eq i16 %i.ael, 0
  br i1 %.not.i.9.i, label %bb.cg, label %.lr.ph47.i.i

bb.cg:                                            ; preds = %bb.cf
  %i.aem = add i16 %i.ei, -9
  %i.aen = load i16, ptr %i.x, align 16, !tbaa !20
  %.not.i.10.i = icmp eq i16 %i.aen, 0
  br i1 %.not.i.10.i, label %bb.ch, label %.lr.ph47.i.i

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %addmag0.exit

.preheader.i.i:                                   ; preds = %bb.bx, %._crit_edge.i38
  %i.aeo = phi i16 [ %i.adu, %._crit_edge.i38 ], [ %i.adv, %bb.bx ]
  %indvars.iv72.in.i.lcssa.sroa.phi.i = phi ptr [ %indvars.iv72.in.i.lcssa.sroa.gep.i, %._crit_edge.i38 ], [ %indvars.iv72.i.lcssa.sroa.gep.i, %bb.bx ] ; 2 uses
  %.03341.i.lcssa.i = phi i16 [ %i.adt, %._crit_edge.i38 ], [ %i.ei, %bb.bx ]
  store i16 %.03341.i.lcssa.i, ptr %i.bl, align 2, !tbaa !26
  %i.aep = sub i16 0, %i.ef
  store i16 %i.aep, ptr %11, align 16, !tbaa !24
  store i16 %i.aeo, ptr %i.bn, align 2, !tbaa !20
  %i.aeq = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.i, i64 -4
  %i.aer = load i16, ptr %i.aeq, align 2, !tbaa !20
  store i16 %i.aer, ptr %i.bo, align 4, !tbaa !20
  %i.aes = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.i, i64 -20
  %i.aet = load <8 x i16>, ptr %i.aes, align 2, !tbaa !20
  store <8 x i16> %i.aet, ptr %i.bm, align 4, !tbaa !20
  br label %addmag0.exit

.lr.ph47.i.i:                                     ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by
  %.03341.i.lcssa.ph.i = phi i16 [ %i.aem, %bb.cg ], [ %i.aek, %bb.cf ], [ %i.aei, %bb.ce ], [ %i.aeg, %bb.cd ], [ %i.aee, %bb.cc ], [ %i.aec, %bb.cb ], [ %i.aea, %bb.ca ], [ %i.ady, %bb.bz ], [ %i.adw, %bb.by ]
  %indvars.iv58.i.lcssa.ph.i = phi i64 [ 0, %bb.cg ], [ 2, %bb.cf ], [ 4, %bb.ce ], [ 6, %bb.cd ], [ 8, %bb.cc ], [ 10, %bb.cb ], [ 12, %bb.ca ], [ 14, %bb.bz ], [ 16, %bb.by ] ; 3 uses
  store i16 %.03341.i.lcssa.ph.i, ptr %i.bl, align 2, !tbaa !26
  %i.aeu = sub i16 0, %i.ef
  store i16 %i.aeu, ptr %11, align 16, !tbaa !24
  %i.aev = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph.i
  %scevgep.i = getelementptr i8, ptr %11, i64 %i.aev
  %i.aew = add nuw nsw i64 %indvars.iv58.i.lcssa.ph.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 16 dereferenceable(1) %i.x, i64 range(i64 0, 23) %i.aew, i1 false), !tbaa !20
  %i.aex = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bm, i8 0, i64 %i.aex, i1 false), !tbaa !20
  br label %addmag0.exit

addmag0.exit:                                     ; preds = %bb.ch, %.preheader.i.i, %.lr.ph47.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #13
  br label %sub.exit

sub.exit:                                         ; preds = %submag0.exit159, %submag0.exit, %addmag0.exit93, %addmag0.exit
  call fastcc void @mul(ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %9)
  call fastcc void @mul(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %10)
  %i.aey = load i16, ptr %9, align 16, !tbaa !24  ; 7 uses
  %i.aez = load i16, ptr %10, align 16, !tbaa !24 ; 3 uses
  %i.afa = icmp eq i16 %i.aey, %i.aez
  %i.afb = load i16, ptr %i.ap, align 2, !tbaa !26 ; 29 uses
  %i.afc = load i16, ptr %i.aq, align 2, !tbaa !26 ; 29 uses
  %i.afd = icmp sgt i16 %i.afb, %i.afc
  br i1 %i.afd, label %abscmp.exit346, label %bb.ci

bb.ci:                                            ; preds = %sub.exit
  %i.afe = icmp slt i16 %i.afb, %i.afc
  br i1 %i.afe, label %abscmp.exit346, label %.preheader.i343

.preheader.i343:                                  ; preds = %bb.ci
  %i.aff = load i16, ptr %i.at, align 2, !tbaa !20 ; 2 uses
  %i.afg = load i16, ptr %i.au, align 2, !tbaa !20 ; 2 uses
  %i.afh = icmp ugt i16 %i.aff, %i.afg
  br i1 %i.afh, label %abscmp.exit346, label %bb.da

bb.cj:                                            ; preds = %bb.da
  %i.afi = load i16, ptr %i.av, align 4, !tbaa !20 ; 2 uses
  %i.afj = load i16, ptr %i.aw, align 4, !tbaa !20 ; 2 uses
  %i.afk = icmp ugt i16 %i.afi, %i.afj
  br i1 %i.afk, label %abscmp.exit346, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.afl = icmp ult i16 %i.afi, %i.afj
  br i1 %i.afl, label %abscmp.exit346, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.afm = load i16, ptr %i.ax, align 2, !tbaa !20 ; 2 uses
  %i.afn = load i16, ptr %i.ay, align 2, !tbaa !20 ; 2 uses
  %i.afo = icmp ugt i16 %i.afm, %i.afn
  br i1 %i.afo, label %abscmp.exit346, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.afp = icmp ult i16 %i.afm, %i.afn
  br i1 %i.afp, label %abscmp.exit346, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.afq = load i16, ptr %i.az, align 16, !tbaa !20 ; 2 uses
  %i.afr = load i16, ptr %i.ba, align 16, !tbaa !20 ; 2 uses
  %i.afs = icmp ugt i16 %i.afq, %i.afr
  br i1 %i.afs, label %abscmp.exit346, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.aft = icmp ult i16 %i.afq, %i.afr
  br i1 %i.aft, label %abscmp.exit346, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.afu = load i16, ptr %i.bb, align 2, !tbaa !20 ; 2 uses
  %i.afv = load i16, ptr %i.bc, align 2, !tbaa !20 ; 2 uses
  %i.afw = icmp ugt i16 %i.afu, %i.afv
  br i1 %i.afw, label %abscmp.exit346, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.afx = icmp ult i16 %i.afu, %i.afv
  br i1 %i.afx, label %abscmp.exit346, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.afy = load i16, ptr %i.bd, align 4, !tbaa !20 ; 2 uses
  %i.afz = load i16, ptr %i.be, align 4, !tbaa !20 ; 2 uses
  %i.aga = icmp ugt i16 %i.afy, %i.afz
  br i1 %i.aga, label %abscmp.exit346, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.agb = icmp ult i16 %i.afy, %i.afz
  br i1 %i.agb, label %abscmp.exit346, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.agc = load i16, ptr %i.bf, align 2, !tbaa !20 ; 2 uses
  %i.agd = load i16, ptr %i.bg, align 2, !tbaa !20 ; 2 uses
  %i.age = icmp ugt i16 %i.agc, %i.agd
  br i1 %i.age, label %abscmp.exit346, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.agf = icmp ult i16 %i.agc, %i.agd
  br i1 %i.agf, label %abscmp.exit346, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.agg = load i16, ptr %i.bh, align 8, !tbaa !20 ; 2 uses
  %i.agh = load i16, ptr %i.bi, align 8, !tbaa !20 ; 2 uses
  %i.agi = icmp ugt i16 %i.agg, %i.agh
  br i1 %i.agi, label %abscmp.exit346, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.agj = icmp ult i16 %i.agg, %i.agh
  br i1 %i.agj, label %abscmp.exit346, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.agk = load i16, ptr %i.bj, align 2, !tbaa !20 ; 2 uses
  %i.agl = load i16, ptr %i.bk, align 2, !tbaa !20 ; 2 uses
  %i.agm = icmp ugt i16 %i.agk, %i.agl
  br i1 %i.agm, label %abscmp.exit346, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.agn = icmp ult i16 %i.agk, %i.agl
  br i1 %i.agn, label %abscmp.exit346, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ago = load i16, ptr %i.ar, align 4, !tbaa !20
  %i.agp = load i16, ptr %i.as, align 4, !tbaa !20
  %i.agq = icmp ugt i16 %i.ago, %i.agp
  br label %abscmp.exit346

bb.da:                                            ; preds = %.preheader.i343
  %i.agr = icmp ult i16 %i.aff, %i.afg
  br i1 %i.agr, label %abscmp.exit346, label %bb.cj

abscmp.exit346:                                   ; preds = %bb.cz, %sub.exit, %bb.ci, %.preheader.i343, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cq, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cx, %bb.cy, %bb.da
  %.014.i345 = phi i1 [ false, %bb.ci ], [ true, %sub.exit ], [ false, %bb.da ], [ true, %.preheader.i343 ], [ false, %bb.cw ], [ true, %bb.cj ], [ false, %bb.ck ], [ false, %bb.cu ], [ true, %bb.cl ], [ false, %bb.cm ], [ %i.agq, %bb.cz ], [ true, %bb.cn ], [ false, %bb.co ], [ true, %bb.cv ], [ true, %bb.cp ], [ false, %bb.cq ], [ false, %bb.cy ], [ true, %bb.cr ], [ false, %bb.cs ], [ true, %bb.cx ], [ true, %bb.ct ] ; 2 uses
  br i1 %i.afa, label %bb.db, label %bb.ee

bb.db:                                            ; preds = %abscmp.exit346
  br i1 %.014.i345, label %bb.dc, label %bb.dq

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #13
  %i.ags = sext i16 %i.afb to i32                 ; 2 uses
  %i.agt = sext i16 %i.afc to i32                 ; 3 uses
  %i.agu = sub nsw i32 %i.ags, %i.agt
  %i.agv = icmp slt i32 %i.agu, 10
  br i1 %i.agv, label %.lr.ph.i333, label %.lr.ph40.i305

.lr.ph.i333:                                      ; preds = %bb.dc
  %i.agw = sext i16 %i.afb to i64
  %i.agx = sub nsw i32 0, %i.agt
  %i.agy = sext i32 %i.agx to i64
  %i.agz = add nsw i64 %i.agy, %i.agw             ; 2 uses
  %reass.sub1162 = sub nsw i32 %i.agt, %i.ags     ; 3 uses
  %i.aha = add nsw i32 %reass.sub1162, 10         ; 3 uses
  %wide.trip.count.i334 = zext i32 %i.aha to i64  ; 2 uses
  %xtraiter1610 = and i64 %wide.trip.count.i334, 3 ; 3 uses
  %i.ahb = add nsw i32 %reass.sub1162, 9
  %i.ahc = icmp ult i32 %i.ahb, 3
  br i1 %i.ahc, label %.epil.preheader1609, label %.lr.ph.i333.new

.lr.ph.i333.new:                                  ; preds = %.lr.ph.i333
  %unroll_iter1615 = and i64 %wide.trip.count.i334, 4294967292
  br label %bb.de

.preheader.i341.unr-lcssa:                        ; preds = %bb.de
  %lcmp.mod1612.not = icmp eq i64 %xtraiter1610, 0
  br i1 %lcmp.mod1612.not, label %.preheader.i341, label %.epil.preheader1609

.epil.preheader1609:                              ; preds = %.preheader.i341.unr-lcssa, %.lr.ph.i333
  %indvars.iv51.i335.epil.init = phi i64 [ 0, %.lr.ph.i333 ], [ %indvars.iv.next52.i338.3, %.preheader.i341.unr-lcssa ]
  %indvars.iv.i336.epil.init = phi i64 [ %i.agz, %.lr.ph.i333 ], [ %indvars.iv.next.i339.3, %.preheader.i341.unr-lcssa ]
  %.036.i337.epil.init = phi i64 [ 0, %.lr.ph.i333 ], [ %i.aju, %.preheader.i341.unr-lcssa ]
  %lcmp.mod1614 = icmp ne i64 %xtraiter1610, 0
  tail call void @llvm.assume(i1 %lcmp.mod1614)
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dd, %.epil.preheader1609
  %indvars.iv51.i335.epil = phi i64 [ %indvars.iv51.i335.epil.init, %.epil.preheader1609 ], [ %indvars.iv.next52.i338.epil, %bb.dd ] ; 3 uses
  %indvars.iv.i336.epil = phi i64 [ %indvars.iv.i336.epil.init, %.epil.preheader1609 ], [ %indvars.iv.next.i339.epil, %bb.dd ] ; 2 uses
  %.036.i337.epil = phi i64 [ %.036.i337.epil.init, %.epil.preheader1609 ], [ %i.ahn, %bb.dd ]
  %epil.iter1611 = phi i64 [ 0, %.epil.preheader1609 ], [ %epil.iter1611.next, %bb.dd ]
  %i.ahd = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv51.i335.epil
  %i.ahe = load i16, ptr %i.ahd, align 2, !tbaa !20
  %i.ahf = zext i16 %i.ahe to i64
  %i.ahg = getelementptr inbounds [2 x i8], ptr %i.as, i64 %indvars.iv.i336.epil
  %i.ahh = load i16, ptr %i.ahg, align 2, !tbaa !20
  %i.ahi = zext i16 %i.ahh to i64
  %i.ahj = add nuw nsw i64 %.036.i337.epil, %i.ahf
  %i.ahk = add nuw nsw i64 %i.ahj, %i.ahi         ; 2 uses
  %i.ahl = trunc i64 %i.ahk to i16
  %i.ahm = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv51.i335.epil
  store i16 %i.ahl, ptr %i.ahm, align 2, !tbaa !20
  %i.ahn = lshr i64 %i.ahk, 16                    ; 2 uses
  %indvars.iv.next52.i338.epil = add nuw nsw i64 %indvars.iv51.i335.epil, 1
  %indvars.iv.next.i339.epil = add nsw i64 %indvars.iv.i336.epil, 1
  %epil.iter1611.next = add i64 %epil.iter1611, 1 ; 2 uses
  %epil.iter1611.cmp.not = icmp eq i64 %epil.iter1611.next, %xtraiter1610
  br i1 %epil.iter1611.cmp.not, label %.preheader.i341, label %bb.dd, !llvm.loop !62

.preheader.i341:                                  ; preds = %bb.dd, %.preheader.i341.unr-lcssa
  %.lcssa1499 = phi i64 [ %i.aju, %.preheader.i341.unr-lcssa ], [ %i.ahn, %bb.dd ] ; 2 uses
  %i.aho = icmp slt i32 %reass.sub1162, 0
  br i1 %i.aho, label %.lr.ph40.i305, label %._crit_edge.i312

.lr.ph40.i305:                                    ; preds = %bb.dc, %.preheader.i341
  %.0.lcssa94.i306 = phi i64 [ %.lcssa1499, %.preheader.i341 ], [ 0, %bb.dc ] ; 2 uses
  %.027.lcssa93.i307 = phi i32 [ %i.aha, %.preheader.i341 ], [ 0, %bb.dc ] ; 2 uses
  %i.ahp = zext i32 %.027.lcssa93.i307 to i64     ; 3 uses
  %i.ahq = sub nsw i64 2, %i.ahp
  %xtraiter1619 = and i64 %i.ahq, 7               ; 2 uses
  %lcmp.mod1620.not = icmp eq i64 %xtraiter1619, 0
  br i1 %lcmp.mod1620.not, label %.prol.loopexit1618, label %.prol.preheader1617

end_hunk_2
begin_hunk_3_@fft0:bb.a
  %i.ajg = trunc i64 %i.ajf to i16
  %i.ajh = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv.next52.i338.1
  store i16 %i.ajg, ptr %i.ajh, align 4, !tbaa !20
  %i.aji = lshr i64 %i.ajf, 16
  %indvars.iv.next52.i338.2 = or disjoint i64 %indvars.iv51.i335, 3 ; 2 uses
  %i.ajj = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next52.i338.2
  %i.ajk = load i16, ptr %i.ajj, align 2, !tbaa !20
  %i.ajl = zext i16 %i.ajk to i64
  %i.ajm = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv.i336
  %i.ajn = getelementptr i8, ptr %i.ajm, i64 6
  %i.ajo = load i16, ptr %i.ajn, align 2, !tbaa !20
  %i.ajp = zext i16 %i.ajo to i64
  %i.ajq = add nuw nsw i64 %i.aji, %i.ajl
  %i.ajr = add nuw nsw i64 %i.ajq, %i.ajp         ; 2 uses
  %i.ajs = trunc i64 %i.ajr to i16
  %i.ajt = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv.next52.i338.2
  store i16 %i.ajs, ptr %i.ajt, align 2, !tbaa !20
  %i.aju = lshr i64 %i.ajr, 16                    ; 3 uses
  %indvars.iv.next52.i338.3 = add nuw nsw i64 %indvars.iv51.i335, 4 ; 2 uses
  %indvars.iv.next.i339.3 = add nsw i64 %indvars.iv.i336, 4 ; 2 uses
  %niter1616.next.3 = add i64 %niter1616, 4       ; 2 uses
  %niter1616.ncmp.3 = icmp eq i64 %niter1616.next.3, %unroll_iter1615
  br i1 %niter1616.ncmp.3, label %.preheader.i341.unr-lcssa, label %bb.de, !llvm.loop !5

.lr.ph40.i305.new:                                ; preds = %.prol.loopexit1618, %.lr.ph40.i305.new
  %indvars.iv56.i308 = phi i64 [ %indvars.iv.next57.i310.7, %.lr.ph40.i305.new ], [ %indvars.iv56.i308.unr, %.prol.loopexit1618 ] ; 10 uses
  %.139.i309 = phi i64 [ %i.aly, %.lr.ph40.i305.new ], [ %.139.i309.unr, %.prol.loopexit1618 ]
  %i.ajv = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv56.i308
  %i.ajw = load i16, ptr %i.ajv, align 2, !tbaa !20
  %i.ajx = zext i16 %i.ajw to i64
  %i.ajy = add nuw nsw i64 %.139.i309, %i.ajx     ; 2 uses
  %i.ajz = trunc i64 %i.ajy to i16
  %i.aka = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv56.i308
  store i16 %i.ajz, ptr %i.aka, align 2, !tbaa !20
  %i.akb = lshr i64 %i.ajy, 16
  %indvars.iv.next57.i310 = add nuw nsw i64 %indvars.iv56.i308, 1 ; 2 uses
  %i.akc = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i310
  %i.akd = load i16, ptr %i.akc, align 2, !tbaa !20
  %i.ake = zext i16 %i.akd to i64
  %i.akf = add nuw nsw i64 %i.akb, %i.ake         ; 2 uses
  %i.akg = trunc i64 %i.akf to i16
  %i.akh = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv.next57.i310
  store i16 %i.akg, ptr %i.akh, align 2, !tbaa !20
  %i.aki = lshr i64 %i.akf, 16
  %indvars.iv.next57.i310.1 = add nuw nsw i64 %indvars.iv56.i308, 2 ; 2 uses
  %i.akj = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i310.1
  %i.akk = load i16, ptr %i.akj, align 2, !tbaa !20
  %i.akl = zext i16 %i.akk to i64
  %i.akm = add nuw nsw i64 %i.aki, %i.akl         ; 2 uses
  %i.akn = trunc i64 %i.akm to i16
  %i.ako = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv.next57.i310.1
  store i16 %i.akn, ptr %i.ako, align 2, !tbaa !20
  %i.akp = lshr i64 %i.akm, 16
  %indvars.iv.next57.i310.2 = add nuw nsw i64 %indvars.iv56.i308, 3 ; 2 uses
  %i.akq = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i310.2
  %i.akr = load i16, ptr %i.akq, align 2, !tbaa !20
  %i.aks = zext i16 %i.akr to i64
  %i.akt = add nuw nsw i64 %i.akp, %i.aks         ; 2 uses
  %i.aku = trunc i64 %i.akt to i16
  %i.akv = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv.next57.i310.2
  store i16 %i.aku, ptr %i.akv, align 2, !tbaa !20
  %i.akw = lshr i64 %i.akt, 16
  %indvars.iv.next57.i310.3 = add nuw nsw i64 %indvars.iv56.i308, 4 ; 2 uses
  %i.akx = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i310.3
  %i.aky = load i16, ptr %i.akx, align 2, !tbaa !20
  %i.akz = zext i16 %i.aky to i64
  %i.ala = add nuw nsw i64 %i.akw, %i.akz         ; 2 uses
  %i.alb = trunc i64 %i.ala to i16
  %i.alc = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv.next57.i310.3
  store i16 %i.alb, ptr %i.alc, align 2, !tbaa !20
  %i.ald = lshr i64 %i.ala, 16
  %indvars.iv.next57.i310.4 = add nuw nsw i64 %indvars.iv56.i308, 5 ; 2 uses
  %i.ale = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i310.4
  %i.alf = load i16, ptr %i.ale, align 2, !tbaa !20
  %i.alg = zext i16 %i.alf to i64
  %i.alh = add nuw nsw i64 %i.ald, %i.alg         ; 2 uses
  %i.ali = trunc i64 %i.alh to i16
  %i.alj = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv.next57.i310.4
  store i16 %i.ali, ptr %i.alj, align 2, !tbaa !20
  %i.alk = lshr i64 %i.alh, 16
  %indvars.iv.next57.i310.5 = add nuw nsw i64 %indvars.iv56.i308, 6 ; 2 uses
  %i.all = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i310.5
  %i.alm = load i16, ptr %i.all, align 2, !tbaa !20
  %i.aln = zext i16 %i.alm to i64
  %i.alo = add nuw nsw i64 %i.alk, %i.aln         ; 2 uses
  %i.alp = trunc i64 %i.alo to i16
  %i.alq = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv.next57.i310.5
  store i16 %i.alp, ptr %i.alq, align 2, !tbaa !20
  %i.alr = lshr i64 %i.alo, 16
  %indvars.iv.next57.i310.6 = add nuw nsw i64 %indvars.iv56.i308, 7 ; 2 uses
  %i.als = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i310.6
  %i.alt = load i16, ptr %i.als, align 2, !tbaa !20
  %i.alu = zext i16 %i.alt to i64
  %i.alv = add nuw nsw i64 %i.alr, %i.alu         ; 2 uses
  %i.alw = trunc i64 %i.alv to i16
  %i.alx = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv.next57.i310.6
  store i16 %i.alw, ptr %i.alx, align 2, !tbaa !20
  %i.aly = lshr i64 %i.alv, 16                    ; 2 uses
  %indvars.iv.next57.i310.7 = add nuw nsw i64 %indvars.iv56.i308, 8 ; 2 uses
  %exitcond59.not.i311.7 = icmp eq i64 %indvars.iv.next57.i310.7, 10
  br i1 %exitcond59.not.i311.7, label %._crit_edge.i312, label %.lr.ph40.i305.new, !llvm.loop !6

._crit_edge.i312:                                 ; preds = %.prol.loopexit1618, %.lr.ph40.i305.new, %.preheader.i341
  %.128.lcssa.i313 = phi i32 [ %i.aha, %.preheader.i341 ], [ 10, %.lr.ph40.i305.new ], [ 10, %.prol.loopexit1618 ]
  %.1.lcssa.i314 = phi i64 [ %.lcssa1499, %.preheader.i341 ], [ %.lcssa1500.unr, %.prol.loopexit1618 ], [ %i.aly, %.lr.ph40.i305.new ]
  %i.alz = trunc nuw nsw i64 %.1.lcssa.i314 to i16
  %i.ama = zext nneg i32 %.128.lcssa.i313 to i64
  %i.amb = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.ama
  store i16 %i.alz, ptr %i.amb, align 2, !tbaa !20
  %i.amc = add i16 %i.afb, 1
  %i.amd = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep.i294, align 4, !tbaa !20 ; 2 uses
  %.not.i.i315 = icmp eq i16 %i.amd, 0
  br i1 %.not.i.i315, label %bb.df, label %.preheader.i.i316

bb.df:                                            ; preds = %._crit_edge.i312
  %i.ame = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60.i295, align 2, !tbaa !20 ; 2 uses
  %.not.i.1.i319 = icmp eq i16 %i.ame, 0
  br i1 %.not.i.1.i319, label %bb.dg, label %.preheader.i.i316

bb.dg:                                            ; preds = %bb.df
  %i.amf = add i16 %i.afb, -1
  %i.amg = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61.i296, align 16, !tbaa !20
  %.not.i.2.i320 = icmp eq i16 %i.amg, 0
  br i1 %.not.i.2.i320, label %bb.dh, label %.lr.ph47.i.i321

bb.dh:                                            ; preds = %bb.dg
  %i.amh = add i16 %i.afb, -2
  %i.ami = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep62.i297, align 2, !tbaa !20
  %.not.i.3.i325 = icmp eq i16 %i.ami, 0
  br i1 %.not.i.3.i325, label %bb.di, label %.lr.ph47.i.i321

bb.di:                                            ; preds = %bb.dh
  %i.amj = add i16 %i.afb, -3
  %i.amk = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep63.i298, align 4, !tbaa !20
  %.not.i.4.i326 = icmp eq i16 %i.amk, 0
  br i1 %.not.i.4.i326, label %bb.dj, label %.lr.ph47.i.i321

bb.dj:                                            ; preds = %bb.di
  %i.aml = add i16 %i.afb, -4
  %i.amm = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep64.i299, align 2, !tbaa !20
  %.not.i.5.i327 = icmp eq i16 %i.amm, 0
  br i1 %.not.i.5.i327, label %bb.dk, label %.lr.ph47.i.i321

bb.dk:                                            ; preds = %bb.dj
  %i.amn = add i16 %i.afb, -5
  %i.amo = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep65.i300, align 8, !tbaa !20
  %.not.i.6.i328 = icmp eq i16 %i.amo, 0
  br i1 %.not.i.6.i328, label %bb.dl, label %.lr.ph47.i.i321

bb.dl:                                            ; preds = %bb.dk
  %i.amp = add i16 %i.afb, -6
  %i.amq = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep66.i301, align 2, !tbaa !20
  %.not.i.7.i329 = icmp eq i16 %i.amq, 0
  br i1 %.not.i.7.i329, label %bb.dm, label %.lr.ph47.i.i321

bb.dm:                                            ; preds = %bb.dl
  %i.amr = add i16 %i.afb, -7
  %i.ams = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep67.i302, align 4, !tbaa !20
  %.not.i.8.i330 = icmp eq i16 %i.ams, 0
  br i1 %.not.i.8.i330, label %bb.dn, label %.lr.ph47.i.i321

bb.dn:                                            ; preds = %bb.dm
  %i.amt = add i16 %i.afb, -8
  %i.amu = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep68.i303, align 2, !tbaa !20
  %.not.i.9.i331 = icmp eq i16 %i.amu, 0
  br i1 %.not.i.9.i331, label %bb.do, label %.lr.ph47.i.i321

bb.do:                                            ; preds = %bb.dn
  %i.amv = add i16 %i.afb, -9
  %i.amw = load i16, ptr %i.q, align 16, !tbaa !20
  %.not.i.10.i332 = icmp eq i16 %i.amw, 0
  br i1 %.not.i.10.i332, label %bb.dp, label %.lr.ph47.i.i321

bb.dp:                                            ; preds = %bb.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %12, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %addmag0.exit342

.preheader.i.i316:                                ; preds = %bb.df, %._crit_edge.i312
  %i.amx = phi i16 [ %i.amd, %._crit_edge.i312 ], [ %i.ame, %bb.df ]
  %indvars.iv72.in.i.lcssa.sroa.phi.i317 = phi ptr [ %indvars.iv72.in.i.lcssa.sroa.gep.i304, %._crit_edge.i312 ], [ %indvars.iv72.i.lcssa.sroa.gep.i294, %bb.df ] ; 2 uses
  %.03341.i.lcssa.i318 = phi i16 [ %i.amc, %._crit_edge.i312 ], [ %i.afb, %bb.df ]
  store i16 %.03341.i.lcssa.i318, ptr %i.bw, align 2, !tbaa !26
  store i16 %i.aey, ptr %12, align 16, !tbaa !24
  store i16 %i.amx, ptr %i.by, align 2, !tbaa !20
  %i.amy = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.i317, i64 -4
  %i.amz = load i16, ptr %i.amy, align 2, !tbaa !20
  store i16 %i.amz, ptr %i.bz, align 4, !tbaa !20
  %i.ana = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.i317, i64 -20
  %i.anb = load <8 x i16>, ptr %i.ana, align 2, !tbaa !20
  store <8 x i16> %i.anb, ptr %i.bx, align 4, !tbaa !20
  br label %addmag0.exit342

.lr.ph47.i.i321:                                  ; preds = %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg
  %.03341.i.lcssa.ph.i322 = phi i16 [ %i.amv, %bb.do ], [ %i.amt, %bb.dn ], [ %i.amr, %bb.dm ], [ %i.amp, %bb.dl ], [ %i.amn, %bb.dk ], [ %i.aml, %bb.dj ], [ %i.amj, %bb.di ], [ %i.amh, %bb.dh ], [ %i.amf, %bb.dg ]
  %indvars.iv58.i.lcssa.ph.i323 = phi i64 [ 0, %bb.do ], [ 2, %bb.dn ], [ 4, %bb.dm ], [ 6, %bb.dl ], [ 8, %bb.dk ], [ 10, %bb.dj ], [ 12, %bb.di ], [ 14, %bb.dh ], [ 16, %bb.dg ] ; 3 uses
  store i16 %.03341.i.lcssa.ph.i322, ptr %i.bw, align 2, !tbaa !26
  store i16 %i.aey, ptr %12, align 16, !tbaa !24
  %i.anc = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph.i323
  %scevgep.i324 = getelementptr i8, ptr %12, i64 %i.anc
  %i.and = add nuw nsw i64 %indvars.iv58.i.lcssa.ph.i323, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i324, ptr noundef nonnull align 16 dereferenceable(1) %i.q, i64 range(i64 0, 23) %i.and, i1 false), !tbaa !20
  %i.ane = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph.i323
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bx, i8 0, i64 %i.ane, i1 false), !tbaa !20
  br label %addmag0.exit342

addmag0.exit342:                                  ; preds = %bb.dp, %.preheader.i.i316, %.lr.ph47.i.i321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #13
  br label %add.exit

bb.dq:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #13
  %i.anf = sext i16 %i.afc to i32                 ; 2 uses
  %i.ang = sext i16 %i.afb to i32                 ; 3 uses
  %i.anh = sub nsw i32 %i.anf, %i.ang
  %i.ani = icmp slt i32 %i.anh, 10
  br i1 %i.ani, label %.lr.ph.i284, label %.lr.ph40.i256

.lr.ph.i284:                                      ; preds = %bb.dq
  %i.anj = sext i16 %i.afc to i64
  %i.ank = sub nsw i32 0, %i.ang
  %i.anl = sext i32 %i.ank to i64
  %i.anm = add nsw i64 %i.anj, %i.anl             ; 2 uses
  %i.ann = add nsw i32 %i.ang, 10
  %i.ano = sub nsw i32 %i.ann, %i.anf             ; 5 uses
  %wide.trip.count.i285 = zext i32 %i.ano to i64  ; 2 uses
  %xtraiter1597 = and i64 %wide.trip.count.i285, 3 ; 3 uses
  %i.anp = add nsw i32 %i.ano, -1
  %i.anq = icmp ult i32 %i.anp, 3
  br i1 %i.anq, label %.epil.preheader1596, label %.lr.ph.i284.new

.lr.ph.i284.new:                                  ; preds = %.lr.ph.i284
  %unroll_iter1602 = and i64 %wide.trip.count.i285, 4294967292
  br label %bb.ds

.preheader.i292.unr-lcssa:                        ; preds = %bb.ds
  %lcmp.mod1599.not = icmp eq i64 %xtraiter1597, 0
  br i1 %lcmp.mod1599.not, label %.preheader.i292, label %.epil.preheader1596

.epil.preheader1596:                              ; preds = %.preheader.i292.unr-lcssa, %.lr.ph.i284
  %indvars.iv51.i286.epil.init = phi i64 [ 0, %.lr.ph.i284 ], [ %indvars.iv.next52.i289.3, %.preheader.i292.unr-lcssa ]
  %indvars.iv.i287.epil.init = phi i64 [ %i.anm, %.lr.ph.i284 ], [ %indvars.iv.next.i290.3, %.preheader.i292.unr-lcssa ]
  %.036.i288.epil.init = phi i64 [ 0, %.lr.ph.i284 ], [ %i.aqi, %.preheader.i292.unr-lcssa ]
  %lcmp.mod1601 = icmp ne i64 %xtraiter1597, 0
  tail call void @llvm.assume(i1 %lcmp.mod1601)
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dr, %.epil.preheader1596
  %indvars.iv51.i286.epil = phi i64 [ %indvars.iv51.i286.epil.init, %.epil.preheader1596 ], [ %indvars.iv.next52.i289.epil, %bb.dr ] ; 3 uses
  %indvars.iv.i287.epil = phi i64 [ %indvars.iv.i287.epil.init, %.epil.preheader1596 ], [ %indvars.iv.next.i290.epil, %bb.dr ] ; 2 uses
  %.036.i288.epil = phi i64 [ %.036.i288.epil.init, %.epil.preheader1596 ], [ %i.aob, %bb.dr ]
  %epil.iter1598 = phi i64 [ 0, %.epil.preheader1596 ], [ %epil.iter1598.next, %bb.dr ]
  %i.anr = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv51.i286.epil
  %i.ans = load i16, ptr %i.anr, align 2, !tbaa !20
  %i.ant = zext i16 %i.ans to i64
  %i.anu = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %indvars.iv.i287.epil
  %i.anv = load i16, ptr %i.anu, align 2, !tbaa !20
  %i.anw = zext i16 %i.anv to i64
  %i.anx = add nuw nsw i64 %.036.i288.epil, %i.ant
  %i.any = add nuw nsw i64 %i.anx, %i.anw         ; 2 uses
  %i.anz = trunc i64 %i.any to i16
  %i.aoa = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv51.i286.epil
  store i16 %i.anz, ptr %i.aoa, align 2, !tbaa !20
  %i.aob = lshr i64 %i.any, 16                    ; 2 uses
  %indvars.iv.next52.i289.epil = add nuw nsw i64 %indvars.iv51.i286.epil, 1
  %indvars.iv.next.i290.epil = add nsw i64 %indvars.iv.i287.epil, 1
  %epil.iter1598.next = add i64 %epil.iter1598, 1 ; 2 uses
  %epil.iter1598.cmp.not = icmp eq i64 %epil.iter1598.next, %xtraiter1597
  br i1 %epil.iter1598.cmp.not, label %.preheader.i292, label %bb.dr, !llvm.loop !64

.preheader.i292:                                  ; preds = %bb.dr, %.preheader.i292.unr-lcssa
  %.lcssa1497 = phi i64 [ %i.aqi, %.preheader.i292.unr-lcssa ], [ %i.aob, %bb.dr ] ; 2 uses
  %i.aoc = icmp samesign ult i32 %i.ano, 10
  br i1 %i.aoc, label %.lr.ph40.i256, label %._crit_edge.i263

.lr.ph40.i256:                                    ; preds = %bb.dq, %.preheader.i292
  %.0.lcssa94.i257 = phi i64 [ %.lcssa1497, %.preheader.i292 ], [ 0, %bb.dq ] ; 2 uses
  %.027.lcssa93.i258 = phi i32 [ %i.ano, %.preheader.i292 ], [ 0, %bb.dq ] ; 2 uses
  %i.aod = zext nneg i32 %.027.lcssa93.i258 to i64 ; 3 uses
  %i.aoe = sub nsw i64 2, %i.aod
  %xtraiter1606 = and i64 %i.aoe, 7               ; 2 uses
  %lcmp.mod1607.not = icmp eq i64 %xtraiter1606, 0
  br i1 %lcmp.mod1607.not, label %.prol.loopexit1605, label %.prol.preheader1604

.prol.preheader1604:                              ; preds = %.lr.ph40.i256, %.prol.preheader1604
  %indvars.iv56.i259.prol = phi i64 [ %indvars.iv.next57.i261.prol, %.prol.preheader1604 ], [ %i.aod, %.lr.ph40.i256 ] ; 3 uses
  %.139.i260.prol = phi i64 [ %i.aol, %.prol.preheader1604 ], [ %.0.lcssa94.i257, %.lr.ph40.i256 ]
  %prol.iter1608 = phi i64 [ %prol.iter1608.next, %.prol.preheader1604 ], [ 0, %.lr.ph40.i256 ]
  %i.aof = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv56.i259.prol
  %i.aog = load i16, ptr %i.aof, align 2, !tbaa !20
  %i.aoh = zext i16 %i.aog to i64
  %i.aoi = add nuw nsw i64 %.139.i260.prol, %i.aoh ; 2 uses
  %i.aoj = trunc i64 %i.aoi to i16
  %i.aok = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv56.i259.prol
  store i16 %i.aoj, ptr %i.aok, align 2, !tbaa !20
  %i.aol = lshr i64 %i.aoi, 16                    ; 3 uses
  %indvars.iv.next57.i261.prol = add nuw nsw i64 %indvars.iv56.i259.prol, 1 ; 2 uses
  %prol.iter1608.next = add i64 %prol.iter1608, 1 ; 2 uses
  %prol.iter1608.cmp.not = icmp eq i64 %prol.iter1608.next, %xtraiter1606
  br i1 %prol.iter1608.cmp.not, label %.prol.loopexit1605, label %.prol.preheader1604, !llvm.loop !65

.prol.loopexit1605:                               ; preds = %.prol.preheader1604, %.lr.ph40.i256
  %.lcssa1498.unr = phi i64 [ poison, %.lr.ph40.i256 ], [ %i.aol, %.prol.preheader1604 ]
  %indvars.iv56.i259.unr = phi i64 [ %i.aod, %.lr.ph40.i256 ], [ %indvars.iv.next57.i261.prol, %.prol.preheader1604 ]
  %.139.i260.unr = phi i64 [ %.0.lcssa94.i257, %.lr.ph40.i256 ], [ %i.aol, %.prol.preheader1604 ]
  %i.aom = add nsw i32 %.027.lcssa93.i258, -3
  %i.aon = icmp ult i32 %i.aom, 7
  br i1 %i.aon, label %._crit_edge.i263, label %.lr.ph40.i256.new

bb.ds:                                            ; preds = %bb.ds, %.lr.ph.i284.new
  %indvars.iv51.i286 = phi i64 [ 0, %.lr.ph.i284.new ], [ %indvars.iv.next52.i289.3, %bb.ds ] ; 6 uses
  %indvars.iv.i287 = phi i64 [ %i.anm, %.lr.ph.i284.new ], [ %indvars.iv.next.i290.3, %bb.ds ] ; 5 uses
  %.036.i288 = phi i64 [ 0, %.lr.ph.i284.new ], [ %i.aqi, %bb.ds ]
  %niter1603 = phi i64 [ 0, %.lr.ph.i284.new ], [ %niter1603.next.3, %bb.ds ]
  %i.aoo = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv51.i286
  %i.aop = load i16, ptr %i.aoo, align 4, !tbaa !20
  %i.aoq = zext i16 %i.aop to i64
  %i.aor = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %indvars.iv.i287
  %i.aos = load i16, ptr %i.aor, align 2, !tbaa !20
  %i.aot = zext i16 %i.aos to i64
  %i.aou = add nuw nsw i64 %.036.i288, %i.aoq
  %i.aov = add nuw nsw i64 %i.aou, %i.aot         ; 2 uses
  %i.aow = trunc i64 %i.aov to i16
  %i.aox = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv51.i286
  store i16 %i.aow, ptr %i.aox, align 8, !tbaa !20
  %i.aoy = lshr i64 %i.aov, 16
  %indvars.iv.next52.i289 = or disjoint i64 %indvars.iv51.i286, 1 ; 2 uses
  %i.aoz = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next52.i289
  %i.apa = load i16, ptr %i.aoz, align 2, !tbaa !20
  %i.apb = zext i16 %i.apa to i64
  %i.apc = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv.i287
  %i.apd = getelementptr i8, ptr %i.apc, i64 2
  %i.ape = load i16, ptr %i.apd, align 2, !tbaa !20
  %i.apf = zext i16 %i.ape to i64
  %i.apg = add nuw nsw i64 %i.aoy, %i.apb
  %i.aph = add nuw nsw i64 %i.apg, %i.apf         ; 2 uses
  %i.api = trunc i64 %i.aph to i16
  %i.apj = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next52.i289
  store i16 %i.api, ptr %i.apj, align 2, !tbaa !20
  %i.apk = lshr i64 %i.aph, 16
  %indvars.iv.next52.i289.1 = or disjoint i64 %indvars.iv51.i286, 2 ; 2 uses
  %i.apl = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next52.i289.1
  %i.apm = load i16, ptr %i.apl, align 8, !tbaa !20
  %i.apn = zext i16 %i.apm to i64
  %i.apo = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv.i287
  %i.app = getelementptr i8, ptr %i.apo, i64 4
  %i.apq = load i16, ptr %i.app, align 2, !tbaa !20
  %i.apr = zext i16 %i.apq to i64
  %i.aps = add nuw nsw i64 %i.apk, %i.apn
  %i.apt = add nuw nsw i64 %i.aps, %i.apr         ; 2 uses
  %i.apu = trunc i64 %i.apt to i16
  %i.apv = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next52.i289.1
  store i16 %i.apu, ptr %i.apv, align 4, !tbaa !20
  %i.apw = lshr i64 %i.apt, 16
  %indvars.iv.next52.i289.2 = or disjoint i64 %indvars.iv51.i286, 3 ; 2 uses
  %i.apx = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next52.i289.2
  %i.apy = load i16, ptr %i.apx, align 2, !tbaa !20
  %i.apz = zext i16 %i.apy to i64
  %i.aqa = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv.i287
  %i.aqb = getelementptr i8, ptr %i.aqa, i64 6
  %i.aqc = load i16, ptr %i.aqb, align 2, !tbaa !20
  %i.aqd = zext i16 %i.aqc to i64
  %i.aqe = add nuw nsw i64 %i.apw, %i.apz
  %i.aqf = add nuw nsw i64 %i.aqe, %i.aqd         ; 2 uses
  %i.aqg = trunc i64 %i.aqf to i16
  %i.aqh = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next52.i289.2
  store i16 %i.aqg, ptr %i.aqh, align 2, !tbaa !20
  %i.aqi = lshr i64 %i.aqf, 16                    ; 3 uses
  %indvars.iv.next52.i289.3 = add nuw nsw i64 %indvars.iv51.i286, 4 ; 2 uses
  %indvars.iv.next.i290.3 = add nsw i64 %indvars.iv.i287, 4 ; 2 uses
  %niter1603.next.3 = add i64 %niter1603, 4       ; 2 uses
  %niter1603.ncmp.3 = icmp eq i64 %niter1603.next.3, %unroll_iter1602
  br i1 %niter1603.ncmp.3, label %.preheader.i292.unr-lcssa, label %bb.ds, !llvm.loop !5

.lr.ph40.i256.new:                                ; preds = %.prol.loopexit1605, %.lr.ph40.i256.new
  %indvars.iv56.i259 = phi i64 [ %indvars.iv.next57.i261.7, %.lr.ph40.i256.new ], [ %indvars.iv56.i259.unr, %.prol.loopexit1605 ] ; 10 uses
  %.139.i260 = phi i64 [ %i.asm, %.lr.ph40.i256.new ], [ %.139.i260.unr, %.prol.loopexit1605 ]
  %i.aqj = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv56.i259
  %i.aqk = load i16, ptr %i.aqj, align 2, !tbaa !20
  %i.aql = zext i16 %i.aqk to i64
  %i.aqm = add nuw nsw i64 %.139.i260, %i.aql     ; 2 uses
  %i.aqn = trunc i64 %i.aqm to i16
  %i.aqo = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv56.i259
  store i16 %i.aqn, ptr %i.aqo, align 2, !tbaa !20
  %i.aqp = lshr i64 %i.aqm, 16
  %indvars.iv.next57.i261 = add nuw nsw i64 %indvars.iv56.i259, 1 ; 2 uses
  %i.aqq = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i261
  %i.aqr = load i16, ptr %i.aqq, align 2, !tbaa !20
  %i.aqs = zext i16 %i.aqr to i64
  %i.aqt = add nuw nsw i64 %i.aqp, %i.aqs         ; 2 uses
  %i.aqu = trunc i64 %i.aqt to i16
  %i.aqv = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next57.i261
  store i16 %i.aqu, ptr %i.aqv, align 2, !tbaa !20
  %i.aqw = lshr i64 %i.aqt, 16
  %indvars.iv.next57.i261.1 = add nuw nsw i64 %indvars.iv56.i259, 2 ; 2 uses
  %i.aqx = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i261.1
  %i.aqy = load i16, ptr %i.aqx, align 2, !tbaa !20
  %i.aqz = zext i16 %i.aqy to i64
  %i.ara = add nuw nsw i64 %i.aqw, %i.aqz         ; 2 uses
  %i.arb = trunc i64 %i.ara to i16
  %i.arc = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next57.i261.1
  store i16 %i.arb, ptr %i.arc, align 2, !tbaa !20
  %i.ard = lshr i64 %i.ara, 16
  %indvars.iv.next57.i261.2 = add nuw nsw i64 %indvars.iv56.i259, 3 ; 2 uses
  %i.are = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i261.2
  %i.arf = load i16, ptr %i.are, align 2, !tbaa !20
  %i.arg = zext i16 %i.arf to i64
  %i.arh = add nuw nsw i64 %i.ard, %i.arg         ; 2 uses
  %i.ari = trunc i64 %i.arh to i16
  %i.arj = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next57.i261.2
  store i16 %i.ari, ptr %i.arj, align 2, !tbaa !20
  %i.ark = lshr i64 %i.arh, 16
  %indvars.iv.next57.i261.3 = add nuw nsw i64 %indvars.iv56.i259, 4 ; 2 uses
  %i.arl = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i261.3
  %i.arm = load i16, ptr %i.arl, align 2, !tbaa !20
  %i.arn = zext i16 %i.arm to i64
  %i.aro = add nuw nsw i64 %i.ark, %i.arn         ; 2 uses
  %i.arp = trunc i64 %i.aro to i16
  %i.arq = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next57.i261.3
  store i16 %i.arp, ptr %i.arq, align 2, !tbaa !20
  %i.arr = lshr i64 %i.aro, 16
  %indvars.iv.next57.i261.4 = add nuw nsw i64 %indvars.iv56.i259, 5 ; 2 uses
  %i.ars = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i261.4
  %i.art = load i16, ptr %i.ars, align 2, !tbaa !20
  %i.aru = zext i16 %i.art to i64
  %i.arv = add nuw nsw i64 %i.arr, %i.aru         ; 2 uses
  %i.arw = trunc i64 %i.arv to i16
  %i.arx = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next57.i261.4
  store i16 %i.arw, ptr %i.arx, align 2, !tbaa !20
  %i.ary = lshr i64 %i.arv, 16
  %indvars.iv.next57.i261.5 = add nuw nsw i64 %indvars.iv56.i259, 6 ; 2 uses
  %i.arz = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i261.5
  %i.asa = load i16, ptr %i.arz, align 2, !tbaa !20
  %i.asb = zext i16 %i.asa to i64
  %i.asc = add nuw nsw i64 %i.ary, %i.asb         ; 2 uses
  %i.asd = trunc i64 %i.asc to i16
  %i.ase = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next57.i261.5
  store i16 %i.asd, ptr %i.ase, align 2, !tbaa !20
  %i.asf = lshr i64 %i.asc, 16
  %indvars.iv.next57.i261.6 = add nuw nsw i64 %indvars.iv56.i259, 7 ; 2 uses
  %i.asg = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i261.6
  %i.ash = load i16, ptr %i.asg, align 2, !tbaa !20
  %i.asi = zext i16 %i.ash to i64
  %i.asj = add nuw nsw i64 %i.asf, %i.asi         ; 2 uses
  %i.ask = trunc i64 %i.asj to i16
  %i.asl = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next57.i261.6
  store i16 %i.ask, ptr %i.asl, align 2, !tbaa !20
  %i.asm = lshr i64 %i.asj, 16                    ; 2 uses
  %indvars.iv.next57.i261.7 = add nuw nsw i64 %indvars.iv56.i259, 8 ; 2 uses
  %exitcond59.not.i262.7 = icmp eq i64 %indvars.iv.next57.i261.7, 10
  br i1 %exitcond59.not.i262.7, label %._crit_edge.i263, label %.lr.ph40.i256.new, !llvm.loop !6

._crit_edge.i263:                                 ; preds = %.prol.loopexit1605, %.lr.ph40.i256.new, %.preheader.i292
  %.128.lcssa.i264 = phi i32 [ %i.ano, %.preheader.i292 ], [ 10, %.lr.ph40.i256.new ], [ 10, %.prol.loopexit1605 ]
  %.1.lcssa.i265 = phi i64 [ %.lcssa1497, %.preheader.i292 ], [ %.lcssa1498.unr, %.prol.loopexit1605 ], [ %i.asm, %.lr.ph40.i256.new ]
  %i.asn = trunc nuw nsw i64 %.1.lcssa.i265 to i16
  %i.aso = zext nneg i32 %.128.lcssa.i264 to i64
  %i.asp = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.aso
  store i16 %i.asn, ptr %i.asp, align 2, !tbaa !20
  %i.asq = add i16 %i.afc, 1
  %i.asr = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep.i245, align 4, !tbaa !20 ; 2 uses
  %.not.i.i266 = icmp eq i16 %i.asr, 0
  br i1 %.not.i.i266, label %bb.dt, label %.preheader.i.i267

bb.dt:                                            ; preds = %._crit_edge.i263
  %i.ass = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60.i246, align 2, !tbaa !20 ; 2 uses
  %.not.i.1.i270 = icmp eq i16 %i.ass, 0
  br i1 %.not.i.1.i270, label %bb.du, label %.preheader.i.i267

bb.du:                                            ; preds = %bb.dt
  %i.ast = add i16 %i.afc, -1
  %i.asu = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61.i247, align 16, !tbaa !20
  %.not.i.2.i271 = icmp eq i16 %i.asu, 0
  br i1 %.not.i.2.i271, label %bb.dv, label %.lr.ph47.i.i272

bb.dv:                                            ; preds = %bb.du
  %i.asv = add i16 %i.afc, -2
  %i.asw = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep62.i248, align 2, !tbaa !20
  %.not.i.3.i276 = icmp eq i16 %i.asw, 0
  br i1 %.not.i.3.i276, label %bb.dw, label %.lr.ph47.i.i272

bb.dw:                                            ; preds = %bb.dv
  %i.asx = add i16 %i.afc, -3
  %i.asy = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep63.i249, align 4, !tbaa !20
  %.not.i.4.i277 = icmp eq i16 %i.asy, 0
  br i1 %.not.i.4.i277, label %bb.dx, label %.lr.ph47.i.i272

bb.dx:                                            ; preds = %bb.dw
  %i.asz = add i16 %i.afc, -4
  %i.ata = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep64.i250, align 2, !tbaa !20
  %.not.i.5.i278 = icmp eq i16 %i.ata, 0
  br i1 %.not.i.5.i278, label %bb.dy, label %.lr.ph47.i.i272

bb.dy:                                            ; preds = %bb.dx
  %i.atb = add i16 %i.afc, -5
  %i.atc = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep65.i251, align 8, !tbaa !20
  %.not.i.6.i279 = icmp eq i16 %i.atc, 0
  br i1 %.not.i.6.i279, label %bb.dz, label %.lr.ph47.i.i272

bb.dz:                                            ; preds = %bb.dy
  %i.atd = add i16 %i.afc, -6
  %i.ate = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep66.i252, align 2, !tbaa !20
  %.not.i.7.i280 = icmp eq i16 %i.ate, 0
  br i1 %.not.i.7.i280, label %bb.ea, label %.lr.ph47.i.i272

bb.ea:                                            ; preds = %bb.dz
  %i.atf = add i16 %i.afc, -7
  %i.atg = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep67.i253, align 4, !tbaa !20
  %.not.i.8.i281 = icmp eq i16 %i.atg, 0
  br i1 %.not.i.8.i281, label %bb.eb, label %.lr.ph47.i.i272

bb.eb:                                            ; preds = %bb.ea
  %i.ath = add i16 %i.afc, -8
  %i.ati = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep68.i254, align 2, !tbaa !20
  %.not.i.9.i282 = icmp eq i16 %i.ati, 0
  br i1 %.not.i.9.i282, label %bb.ec, label %.lr.ph47.i.i272

bb.ec:                                            ; preds = %bb.eb
  %i.atj = add i16 %i.afc, -9
  %i.atk = load i16, ptr %i.r, align 16, !tbaa !20
  %.not.i.10.i283 = icmp eq i16 %i.atk, 0
  br i1 %.not.i.10.i283, label %bb.ed, label %.lr.ph47.i.i272

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %12, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %addmag0.exit293

.preheader.i.i267:                                ; preds = %bb.dt, %._crit_edge.i263
  %i.atl = phi i16 [ %i.asr, %._crit_edge.i263 ], [ %i.ass, %bb.dt ]
  %indvars.iv72.in.i.lcssa.sroa.phi.i268 = phi ptr [ %indvars.iv72.in.i.lcssa.sroa.gep.i255, %._crit_edge.i263 ], [ %indvars.iv72.i.lcssa.sroa.gep.i245, %bb.dt ] ; 2 uses
  %.03341.i.lcssa.i269 = phi i16 [ %i.asq, %._crit_edge.i263 ], [ %i.afc, %bb.dt ]
  store i16 %.03341.i.lcssa.i269, ptr %i.bw, align 2, !tbaa !26
  store i16 %i.aey, ptr %12, align 16, !tbaa !24
  store i16 %i.atl, ptr %i.by, align 2, !tbaa !20
  %i.atm = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.i268, i64 -4
  %i.atn = load i16, ptr %i.atm, align 2, !tbaa !20
  store i16 %i.atn, ptr %i.bz, align 4, !tbaa !20
  %i.ato = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.i268, i64 -20
  %i.atp = load <8 x i16>, ptr %i.ato, align 2, !tbaa !20
  store <8 x i16> %i.atp, ptr %i.bx, align 4, !tbaa !20
  br label %addmag0.exit293

.lr.ph47.i.i272:                                  ; preds = %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du
  %.03341.i.lcssa.ph.i273 = phi i16 [ %i.atj, %bb.ec ], [ %i.ath, %bb.eb ], [ %i.atf, %bb.ea ], [ %i.atd, %bb.dz ], [ %i.atb, %bb.dy ], [ %i.asz, %bb.dx ], [ %i.asx, %bb.dw ], [ %i.asv, %bb.dv ], [ %i.ast, %bb.du ]
  %indvars.iv58.i.lcssa.ph.i274 = phi i64 [ 0, %bb.ec ], [ 2, %bb.eb ], [ 4, %bb.ea ], [ 6, %bb.dz ], [ 8, %bb.dy ], [ 10, %bb.dx ], [ 12, %bb.dw ], [ 14, %bb.dv ], [ 16, %bb.du ] ; 3 uses
  store i16 %.03341.i.lcssa.ph.i273, ptr %i.bw, align 2, !tbaa !26
  store i16 %i.aey, ptr %12, align 16, !tbaa !24
  %i.atq = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph.i274
  %scevgep.i275 = getelementptr i8, ptr %12, i64 %i.atq
  %i.atr = add nuw nsw i64 %indvars.iv58.i.lcssa.ph.i274, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i275, ptr noundef nonnull align 16 dereferenceable(1) %i.r, i64 range(i64 0, 23) %i.atr, i1 false), !tbaa !20
  %i.ats = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph.i274
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bx, i8 0, i64 %i.ats, i1 false), !tbaa !20
  br label %addmag0.exit293

addmag0.exit293:                                  ; preds = %bb.ed, %.preheader.i.i267, %.lr.ph47.i.i272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #13
  br label %add.exit

bb.ee:                                            ; preds = %abscmp.exit346
  br i1 %.014.i345, label %bb.ef, label %bb.es

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #13
  %i.att = sext i16 %i.afb to i32                 ; 2 uses
  %i.atu = sext i16 %i.afc to i32                 ; 3 uses
  %i.atv = sub nsw i32 %i.att, %i.atu
  %i.atw = icmp slt i32 %i.atv, 10
  br i1 %i.atw, label %.lr.ph.i235, label %.lr.ph38.i212

.lr.ph.i235:                                      ; preds = %bb.ef
  %i.atx = sext i16 %i.afb to i64
  %i.aty = sub nsw i32 0, %i.atu
  %i.atz = sext i32 %i.aty to i64
  %i.aua = add nsw i64 %i.atz, %i.atx             ; 2 uses
  %reass.sub1161 = sub nsw i32 %i.atu, %i.att     ; 3 uses
  %i.aub = add nsw i32 %reass.sub1161, 10         ; 2 uses
  %wide.trip.count.i236 = zext i32 %i.aub to i64  ; 2 uses
  %xtraiter1584 = and i64 %wide.trip.count.i236, 3 ; 3 uses
  %i.auc = add nsw i32 %reass.sub1161, 9
  %i.aud = icmp ult i32 %i.auc, 3
  br i1 %i.aud, label %.epil.preheader1583, label %.lr.ph.i235.new

.lr.ph.i235.new:                                  ; preds = %.lr.ph.i235
  %unroll_iter1589 = and i64 %wide.trip.count.i236, 4294967292
  br label %bb.eh

.preheader.i243.unr-lcssa:                        ; preds = %bb.eh
  %lcmp.mod1586.not = icmp eq i64 %xtraiter1584, 0
  br i1 %lcmp.mod1586.not, label %.preheader.i243, label %.epil.preheader1583

.epil.preheader1583:                              ; preds = %.preheader.i243.unr-lcssa, %.lr.ph.i235
  %indvars.iv45.i237.epil.init = phi i64 [ 0, %.lr.ph.i235 ], [ %indvars.iv.next46.i240.3, %.preheader.i243.unr-lcssa ]
  %indvars.iv.i238.epil.init = phi i64 [ %i.aua, %.lr.ph.i235 ], [ %indvars.iv.next.i241.3, %.preheader.i243.unr-lcssa ]
  %.034.i239.epil.init = phi i64 [ 0, %.lr.ph.i235 ], [ %i.axh, %.preheader.i243.unr-lcssa ]
  %lcmp.mod1588 = icmp ne i64 %xtraiter1584, 0
  tail call void @llvm.assume(i1 %lcmp.mod1588)
  br label %bb.eg

bb.eg:                                            ; preds = %bb.eg, %.epil.preheader1583
  %indvars.iv45.i237.epil = phi i64 [ %indvars.iv45.i237.epil.init, %.epil.preheader1583 ], [ %indvars.iv.next46.i240.epil, %bb.eg ] ; 3 uses
  %indvars.iv.i238.epil = phi i64 [ %indvars.iv.i238.epil.init, %.epil.preheader1583 ], [ %indvars.iv.next.i241.epil, %bb.eg ] ; 2 uses
  %.034.i239.epil = phi i64 [ %.034.i239.epil.init, %.epil.preheader1583 ], [ %i.auq, %bb.eg ]
  %epil.iter1585 = phi i64 [ 0, %.epil.preheader1583 ], [ %epil.iter1585.next, %bb.eg ]
  %i.aue = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv45.i237.epil
  %i.auf = load i16, ptr %i.aue, align 2, !tbaa !20
  %i.aug = zext i16 %i.auf to i64
  %i.auh = getelementptr inbounds [2 x i8], ptr %i.as, i64 %indvars.iv.i238.epil
  %i.aui = load i16, ptr %i.auh, align 2, !tbaa !20
  %i.auj = zext i16 %i.aui to i64
  %i.auk = sub nsw i64 %i.aug, %i.auj
  %i.aul = add nsw i64 %i.auk, %.034.i239.epil    ; 2 uses
  %i.aum = trunc i64 %i.aul to i16
  %i.aun = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv45.i237.epil
  store i16 %i.aum, ptr %i.aun, align 2, !tbaa !20
  %i.auo = add nsw i64 %i.aul, 2147483648
  %i.aup = lshr i64 %i.auo, 16
  %i.auq = add nsw i64 %i.aup, -32768             ; 2 uses
  %indvars.iv.next46.i240.epil = add nuw nsw i64 %indvars.iv45.i237.epil, 1
  %indvars.iv.next.i241.epil = add nsw i64 %indvars.iv.i238.epil, 1
  %epil.iter1585.next = add i64 %epil.iter1585, 1 ; 2 uses
  %epil.iter1585.cmp.not = icmp eq i64 %epil.iter1585.next, %xtraiter1584
  br i1 %epil.iter1585.cmp.not, label %.preheader.i243, label %bb.eg, !llvm.loop !66

.preheader.i243:                                  ; preds = %bb.eg, %.preheader.i243.unr-lcssa
  %.lcssa1496 = phi i64 [ %i.axh, %.preheader.i243.unr-lcssa ], [ %i.auq, %bb.eg ]
  %i.aur = icmp slt i32 %reass.sub1161, 0
  br i1 %i.aur, label %.lr.ph38.i212, label %._crit_edge.i219

.lr.ph38.i212:                                    ; preds = %bb.ef, %.preheader.i243
  %.0.lcssa85.i213 = phi i64 [ %.lcssa1496, %.preheader.i243 ], [ 0, %bb.ef ] ; 2 uses
  %.025.lcssa84.i214 = phi i32 [ %i.aub, %.preheader.i243 ], [ 0, %bb.ef ] ; 2 uses
  %i.aus = zext i32 %.025.lcssa84.i214 to i64     ; 3 uses
  %i.aut = sub nsw i64 2, %i.aus
  %xtraiter1593 = and i64 %i.aut, 3               ; 2 uses
  %lcmp.mod1594.not = icmp eq i64 %xtraiter1593, 0
  br i1 %lcmp.mod1594.not, label %.prol.loopexit1592, label %.prol.preheader1591

.prol.preheader1591:                              ; preds = %.lr.ph38.i212, %.prol.preheader1591
  %indvars.iv50.i215.prol = phi i64 [ %indvars.iv.next51.i217.prol, %.prol.preheader1591 ], [ %i.aus, %.lr.ph38.i212 ] ; 3 uses
  %.137.i216.prol = phi i64 [ %i.avc, %.prol.preheader1591 ], [ %.0.lcssa85.i213, %.lr.ph38.i212 ]
  %prol.iter1595 = phi i64 [ %prol.iter1595.next, %.prol.preheader1591 ], [ 0, %.lr.ph38.i212 ]
  %i.auu = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv50.i215.prol
  %i.auv = load i16, ptr %i.auu, align 2, !tbaa !20
  %i.auw = zext i16 %i.auv to i64
  %i.aux = add nsw i64 %.137.i216.prol, %i.auw    ; 2 uses
  %i.auy = trunc i64 %i.aux to i16
  %i.auz = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv50.i215.prol
  store i16 %i.auy, ptr %i.auz, align 2, !tbaa !20
  %i.ava = add nsw i64 %i.aux, 2147483648
  %i.avb = lshr i64 %i.ava, 16
  %i.avc = add nsw i64 %i.avb, -32768             ; 2 uses
  %indvars.iv.next51.i217.prol = add nuw nsw i64 %indvars.iv50.i215.prol, 1 ; 2 uses
  %prol.iter1595.next = add i64 %prol.iter1595, 1 ; 2 uses
  %prol.iter1595.cmp.not = icmp eq i64 %prol.iter1595.next, %xtraiter1593
  br i1 %prol.iter1595.cmp.not, label %.prol.loopexit1592, label %.prol.preheader1591, !llvm.loop !67

.prol.loopexit1592:                               ; preds = %.prol.preheader1591, %.lr.ph38.i212
  %indvars.iv50.i215.unr = phi i64 [ %i.aus, %.lr.ph38.i212 ], [ %indvars.iv.next51.i217.prol, %.prol.preheader1591 ]
  %.137.i216.unr = phi i64 [ %.0.lcssa85.i213, %.lr.ph38.i212 ], [ %i.avc, %.prol.preheader1591 ]
  %i.avd = add nsw i32 %.025.lcssa84.i214, -7
  %i.ave = icmp ult i32 %i.avd, 3
  br i1 %i.ave, label %._crit_edge.i219, label %.lr.ph38.i212.new

bb.eh:                                            ; preds = %bb.eh, %.lr.ph.i235.new
  %indvars.iv45.i237 = phi i64 [ 0, %.lr.ph.i235.new ], [ %indvars.iv.next46.i240.3, %bb.eh ] ; 6 uses
  %indvars.iv.i238 = phi i64 [ %i.aua, %.lr.ph.i235.new ], [ %indvars.iv.next.i241.3, %bb.eh ] ; 5 uses
  %.034.i239 = phi i64 [ 0, %.lr.ph.i235.new ], [ %i.axh, %bb.eh ]
  %niter1590 = phi i64 [ 0, %.lr.ph.i235.new ], [ %niter1590.next.3, %bb.eh ]
  %i.avf = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv45.i237
  %i.avg = load i16, ptr %i.avf, align 4, !tbaa !20
  %i.avh = zext i16 %i.avg to i64
  %i.avi = getelementptr inbounds [2 x i8], ptr %i.as, i64 %indvars.iv.i238
  %i.avj = load i16, ptr %i.avi, align 2, !tbaa !20
  %i.avk = zext i16 %i.avj to i64
  %i.avl = sub nsw i64 %i.avh, %i.avk
  %i.avm = add nsw i64 %i.avl, %.034.i239         ; 2 uses
  %i.avn = trunc i64 %i.avm to i16
  %i.avo = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv45.i237
  store i16 %i.avn, ptr %i.avo, align 8, !tbaa !20
  %i.avp = add nsw i64 %i.avm, 2147483648
  %i.avq = lshr i64 %i.avp, 16
  %i.avr = add nsw i64 %i.avq, -32768
  %indvars.iv.next46.i240 = or disjoint i64 %indvars.iv45.i237, 1 ; 2 uses
  %i.avs = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next46.i240
  %i.avt = load i16, ptr %i.avs, align 2, !tbaa !20
  %i.avu = zext i16 %i.avt to i64
  %i.avv = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv.i238
  %i.avw = getelementptr i8, ptr %i.avv, i64 2
  %i.avx = load i16, ptr %i.avw, align 2, !tbaa !20
  %i.avy = zext i16 %i.avx to i64
  %i.avz = sub nsw i64 %i.avu, %i.avy
  %i.awa = add nsw i64 %i.avz, %i.avr             ; 2 uses
  %i.awb = trunc i64 %i.awa to i16
  %i.awc = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next46.i240
  store i16 %i.awb, ptr %i.awc, align 2, !tbaa !20
  %i.awd = add nsw i64 %i.awa, 2147483648
  %i.awe = lshr i64 %i.awd, 16
  %i.awf = add nsw i64 %i.awe, -32768
  %indvars.iv.next46.i240.1 = or disjoint i64 %indvars.iv45.i237, 2 ; 2 uses
  %i.awg = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next46.i240.1
  %i.awh = load i16, ptr %i.awg, align 8, !tbaa !20
  %i.awi = zext i16 %i.awh to i64
  %i.awj = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv.i238
  %i.awk = getelementptr i8, ptr %i.awj, i64 4
  %i.awl = load i16, ptr %i.awk, align 2, !tbaa !20
  %i.awm = zext i16 %i.awl to i64
  %i.awn = sub nsw i64 %i.awi, %i.awm
  %i.awo = add nsw i64 %i.awn, %i.awf             ; 2 uses
  %i.awp = trunc i64 %i.awo to i16
  %i.awq = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next46.i240.1
  store i16 %i.awp, ptr %i.awq, align 4, !tbaa !20
  %i.awr = add nsw i64 %i.awo, 2147483648
  %i.aws = lshr i64 %i.awr, 16
  %i.awt = add nsw i64 %i.aws, -32768
  %indvars.iv.next46.i240.2 = or disjoint i64 %indvars.iv45.i237, 3 ; 2 uses
  %i.awu = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next46.i240.2
  %i.awv = load i16, ptr %i.awu, align 2, !tbaa !20
  %i.aww = zext i16 %i.awv to i64
  %i.awx = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv.i238
  %i.awy = getelementptr i8, ptr %i.awx, i64 6
  %i.awz = load i16, ptr %i.awy, align 2, !tbaa !20
  %i.axa = zext i16 %i.awz to i64
  %i.axb = sub nsw i64 %i.aww, %i.axa
  %i.axc = add nsw i64 %i.axb, %i.awt             ; 2 uses
  %i.axd = trunc i64 %i.axc to i16
  %i.axe = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next46.i240.2
  store i16 %i.axd, ptr %i.axe, align 2, !tbaa !20
  %i.axf = add nsw i64 %i.axc, 2147483648
  %i.axg = lshr i64 %i.axf, 16
  %i.axh = add nsw i64 %i.axg, -32768             ; 3 uses
  %indvars.iv.next46.i240.3 = add nuw nsw i64 %indvars.iv45.i237, 4 ; 2 uses
  %indvars.iv.next.i241.3 = add nsw i64 %indvars.iv.i238, 4 ; 2 uses
  %niter1590.next.3 = add i64 %niter1590, 4       ; 2 uses
  %niter1590.ncmp.3 = icmp eq i64 %niter1590.next.3, %unroll_iter1589
  br i1 %niter1590.ncmp.3, label %.preheader.i243.unr-lcssa, label %bb.eh, !llvm.loop !3

.lr.ph38.i212.new:                                ; preds = %.prol.loopexit1592, %.lr.ph38.i212.new
  %indvars.iv50.i215 = phi i64 [ %indvars.iv.next51.i217.3, %.lr.ph38.i212.new ], [ %indvars.iv50.i215.unr, %.prol.loopexit1592 ] ; 6 uses
  %.137.i216 = phi i64 [ %i.ayr, %.lr.ph38.i212.new ], [ %.137.i216.unr, %.prol.loopexit1592 ]
  %i.axi = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv50.i215
  %i.axj = load i16, ptr %i.axi, align 2, !tbaa !20
  %i.axk = zext i16 %i.axj to i64
  %i.axl = add nsw i64 %.137.i216, %i.axk         ; 2 uses
  %i.axm = trunc i64 %i.axl to i16
  %i.axn = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv50.i215
  store i16 %i.axm, ptr %i.axn, align 2, !tbaa !20
  %i.axo = add nsw i64 %i.axl, 2147483648
  %i.axp = lshr i64 %i.axo, 16
  %i.axq = add nsw i64 %i.axp, -32768
  %indvars.iv.next51.i217 = add nuw nsw i64 %indvars.iv50.i215, 1 ; 2 uses
  %i.axr = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next51.i217
  %i.axs = load i16, ptr %i.axr, align 2, !tbaa !20
  %i.axt = zext i16 %i.axs to i64
  %i.axu = add nsw i64 %i.axq, %i.axt             ; 2 uses
  %i.axv = trunc i64 %i.axu to i16
  %i.axw = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next51.i217
  store i16 %i.axv, ptr %i.axw, align 2, !tbaa !20
  %i.axx = add nsw i64 %i.axu, 2147483648
  %i.axy = lshr i64 %i.axx, 16
  %i.axz = add nsw i64 %i.axy, -32768
  %indvars.iv.next51.i217.1 = add nuw nsw i64 %indvars.iv50.i215, 2 ; 2 uses
  %i.aya = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next51.i217.1
  %i.ayb = load i16, ptr %i.aya, align 2, !tbaa !20
  %i.ayc = zext i16 %i.ayb to i64
  %i.ayd = add nsw i64 %i.axz, %i.ayc             ; 2 uses
  %i.aye = trunc i64 %i.ayd to i16
  %i.ayf = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next51.i217.1
  store i16 %i.aye, ptr %i.ayf, align 2, !tbaa !20
  %i.ayg = add nsw i64 %i.ayd, 2147483648
  %i.ayh = lshr i64 %i.ayg, 16
  %i.ayi = add nsw i64 %i.ayh, -32768
  %indvars.iv.next51.i217.2 = add nuw nsw i64 %indvars.iv50.i215, 3 ; 2 uses
  %i.ayj = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next51.i217.2
  %i.ayk = load i16, ptr %i.ayj, align 2, !tbaa !20
  %i.ayl = zext i16 %i.ayk to i64
  %i.aym = add nsw i64 %i.ayi, %i.ayl             ; 2 uses
  %i.ayn = trunc i64 %i.aym to i16
  %i.ayo = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next51.i217.2
  store i16 %i.ayn, ptr %i.ayo, align 2, !tbaa !20
  %i.ayp = add nsw i64 %i.aym, 2147483648
  %i.ayq = lshr i64 %i.ayp, 16
  %i.ayr = add nsw i64 %i.ayq, -32768
  %indvars.iv.next51.i217.3 = add nuw nsw i64 %indvars.iv50.i215, 4 ; 2 uses
  %exitcond53.not.i218.3 = icmp eq i64 %indvars.iv.next51.i217.3, 10
  br i1 %exitcond53.not.i218.3, label %._crit_edge.i219, label %.lr.ph38.i212.new, !llvm.loop !4

._crit_edge.i219:                                 ; preds = %.prol.loopexit1592, %.lr.ph38.i212.new, %.preheader.i243
  %i.ays = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep.i203, align 2, !tbaa !20
  %.not.i.not.not.i220 = icmp eq i16 %i.ays, 0
  br i1 %.not.i.not.not.i220, label %bb.ei, label %.preheader.i.i221

bb.ei:                                            ; preds = %._crit_edge.i219
  %i.ayt = add i16 %i.afb, -1
  %i.ayu = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep54.i204, align 16, !tbaa !20
  %.not.i.1.i222 = icmp eq i16 %i.ayu, 0
  br i1 %.not.i.1.i222, label %bb.ej, label %.lr.ph47.i.i223

bb.ej:                                            ; preds = %bb.ei
  %i.ayv = add i16 %i.afb, -2
  %i.ayw = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep55.i205, align 2, !tbaa !20
  %.not.i.2.i227 = icmp eq i16 %i.ayw, 0
  br i1 %.not.i.2.i227, label %bb.ek, label %.lr.ph47.i.i223

bb.ek:                                            ; preds = %bb.ej
  %i.ayx = add i16 %i.afb, -3
  %i.ayy = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep56.i206, align 4, !tbaa !20
  %.not.i.3.i228 = icmp eq i16 %i.ayy, 0
  br i1 %.not.i.3.i228, label %bb.el, label %.lr.ph47.i.i223

bb.el:                                            ; preds = %bb.ek
  %i.ayz = add i16 %i.afb, -4
  %i.aza = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep57.i207, align 2, !tbaa !20
  %.not.i.4.i229 = icmp eq i16 %i.aza, 0
  br i1 %.not.i.4.i229, label %bb.em, label %.lr.ph47.i.i223

bb.em:                                            ; preds = %bb.el
  %i.azb = add i16 %i.afb, -5
  %i.azc = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep58.i208, align 8, !tbaa !20
  %.not.i.5.i230 = icmp eq i16 %i.azc, 0
  br i1 %.not.i.5.i230, label %bb.en, label %.lr.ph47.i.i223

bb.en:                                            ; preds = %bb.em
  %i.azd = add i16 %i.afb, -6
  %i.aze = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep59.i209, align 2, !tbaa !20
  %.not.i.6.i231 = icmp eq i16 %i.aze, 0
  br i1 %.not.i.6.i231, label %bb.eo, label %.lr.ph47.i.i223

bb.eo:                                            ; preds = %bb.en
  %i.azf = add i16 %i.afb, -7
  %i.azg = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60.i210, align 4, !tbaa !20
  %.not.i.7.i232 = icmp eq i16 %i.azg, 0
  br i1 %.not.i.7.i232, label %bb.ep, label %.lr.ph47.i.i223

bb.ep:                                            ; preds = %bb.eo
  %i.azh = add i16 %i.afb, -8
  %i.azi = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61.i211, align 2, !tbaa !20
  %.not.i.8.i233 = icmp eq i16 %i.azi, 0
  br i1 %.not.i.8.i233, label %bb.eq, label %.lr.ph47.i.i223

bb.eq:                                            ; preds = %bb.ep
  %i.azj = add i16 %i.afb, -9
  %i.azk = load i16, ptr %i.s, align 16, !tbaa !20
  %.not.i.9.i234 = icmp eq i16 %i.azk, 0
  br i1 %.not.i.9.i234, label %bb.er, label %.lr.ph47.i.i223

bb.er:                                            ; preds = %bb.eq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %12, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %submag0.exit244

.preheader.i.i221:                                ; preds = %._crit_edge.i219
  store i16 %i.afb, ptr %i.bw, align 2, !tbaa !26
  store i16 %i.aey, ptr %12, align 16, !tbaa !24
  %i.azl = load <2 x i16>, ptr %indvars.iv72.i.lcssa.sroa.gep54.i204, align 16, !tbaa !20
  store <2 x i16> %i.azl, ptr %i.bz, align 4, !tbaa !20
  %i.azm = load <8 x i16>, ptr %i.s, align 16, !tbaa !20
  store <8 x i16> %i.azm, ptr %i.bx, align 4, !tbaa !20
  br label %submag0.exit244

.lr.ph47.i.i223:                                  ; preds = %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei
  %.03341.i.lcssa.ph.i224 = phi i16 [ %i.azj, %bb.eq ], [ %i.azh, %bb.ep ], [ %i.azf, %bb.eo ], [ %i.azd, %bb.en ], [ %i.azb, %bb.em ], [ %i.ayz, %bb.el ], [ %i.ayx, %bb.ek ], [ %i.ayv, %bb.ej ], [ %i.ayt, %bb.ei ]
  %indvars.iv58.i.lcssa.ph.i225 = phi i64 [ 0, %bb.eq ], [ 2, %bb.ep ], [ 4, %bb.eo ], [ 6, %bb.en ], [ 8, %bb.em ], [ 10, %bb.el ], [ 12, %bb.ek ], [ 14, %bb.ej ], [ 16, %bb.ei ] ; 3 uses
  store i16 %.03341.i.lcssa.ph.i224, ptr %i.bw, align 2, !tbaa !26
  store i16 %i.aey, ptr %12, align 16, !tbaa !24
  %i.azn = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph.i225
  %scevgep.i226 = getelementptr i8, ptr %12, i64 %i.azn
  %i.azo = add nuw nsw i64 %indvars.iv58.i.lcssa.ph.i225, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i226, ptr noundef nonnull align 16 dereferenceable(1) %i.s, i64 range(i64 0, 21) %i.azo, i1 false), !tbaa !20
  %i.azp = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph.i225
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bx, i8 0, i64 %i.azp, i1 false), !tbaa !20
  br label %submag0.exit244

submag0.exit244:                                  ; preds = %bb.er, %.preheader.i.i221, %.lr.ph47.i.i223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #13
  br label %add.exit

bb.es:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #13
  %i.azq = sext i16 %i.afc to i32                 ; 2 uses
  %i.azr = sext i16 %i.afb to i32                 ; 3 uses
  %i.azs = sub nsw i32 %i.azq, %i.azr
  %i.azt = icmp slt i32 %i.azs, 10
  br i1 %i.azt, label %.lr.ph.i193, label %.lr.ph38.i170

.lr.ph.i193:                                      ; preds = %bb.es
  %i.azu = sext i16 %i.afc to i64
  %i.azv = sub nsw i32 0, %i.azr
  %i.azw = sext i32 %i.azv to i64
  %i.azx = add nsw i64 %i.azu, %i.azw             ; 2 uses
  %i.azy = add nsw i32 %i.azr, 10
  %i.azz = sub nsw i32 %i.azy, %i.azq             ; 4 uses
  %wide.trip.count.i194 = zext i32 %i.azz to i64  ; 2 uses
  %xtraiter1571 = and i64 %wide.trip.count.i194, 3 ; 3 uses
  %i.baa = add nsw i32 %i.azz, -1
  %i.bab = icmp ult i32 %i.baa, 3
  br i1 %i.bab, label %.epil.preheader1570, label %.lr.ph.i193.new

.lr.ph.i193.new:                                  ; preds = %.lr.ph.i193
  %unroll_iter1576 = and i64 %wide.trip.count.i194, 4294967292
  br label %bb.eu

.preheader.i201.unr-lcssa:                        ; preds = %bb.eu
  %lcmp.mod1573.not = icmp eq i64 %xtraiter1571, 0
  br i1 %lcmp.mod1573.not, label %.preheader.i201, label %.epil.preheader1570

.epil.preheader1570:                              ; preds = %.preheader.i201.unr-lcssa, %.lr.ph.i193
  %indvars.iv45.i195.epil.init = phi i64 [ 0, %.lr.ph.i193 ], [ %indvars.iv.next46.i198.3, %.preheader.i201.unr-lcssa ]
  %indvars.iv.i196.epil.init = phi i64 [ %i.azx, %.lr.ph.i193 ], [ %indvars.iv.next.i199.3, %.preheader.i201.unr-lcssa ]
  %.034.i197.epil.init = phi i64 [ 0, %.lr.ph.i193 ], [ %i.bdf, %.preheader.i201.unr-lcssa ]
  %lcmp.mod1575 = icmp ne i64 %xtraiter1571, 0
  tail call void @llvm.assume(i1 %lcmp.mod1575)
  br label %bb.et

bb.et:                                            ; preds = %bb.et, %.epil.preheader1570
  %indvars.iv45.i195.epil = phi i64 [ %indvars.iv45.i195.epil.init, %.epil.preheader1570 ], [ %indvars.iv.next46.i198.epil, %bb.et ] ; 3 uses
  %indvars.iv.i196.epil = phi i64 [ %indvars.iv.i196.epil.init, %.epil.preheader1570 ], [ %indvars.iv.next.i199.epil, %bb.et ] ; 2 uses
  %.034.i197.epil = phi i64 [ %.034.i197.epil.init, %.epil.preheader1570 ], [ %i.bao, %bb.et ]
  %epil.iter1572 = phi i64 [ 0, %.epil.preheader1570 ], [ %epil.iter1572.next, %bb.et ]
  %i.bac = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv45.i195.epil
  %i.bad = load i16, ptr %i.bac, align 2, !tbaa !20
  %i.bae = zext i16 %i.bad to i64
  %i.baf = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %indvars.iv.i196.epil
  %i.bag = load i16, ptr %i.baf, align 2, !tbaa !20
  %i.bah = zext i16 %i.bag to i64
  %i.bai = sub nsw i64 %i.bae, %i.bah
  %i.baj = add nsw i64 %i.bai, %.034.i197.epil    ; 2 uses
  %i.bak = trunc i64 %i.baj to i16
  %i.bal = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv45.i195.epil
  store i16 %i.bak, ptr %i.bal, align 2, !tbaa !20
  %i.bam = add nsw i64 %i.baj, 2147483648
  %i.ban = lshr i64 %i.bam, 16
  %i.bao = add nsw i64 %i.ban, -32768             ; 2 uses
  %indvars.iv.next46.i198.epil = add nuw nsw i64 %indvars.iv45.i195.epil, 1
  %indvars.iv.next.i199.epil = add nsw i64 %indvars.iv.i196.epil, 1
  %epil.iter1572.next = add i64 %epil.iter1572, 1 ; 2 uses
  %epil.iter1572.cmp.not = icmp eq i64 %epil.iter1572.next, %xtraiter1571
  br i1 %epil.iter1572.cmp.not, label %.preheader.i201, label %bb.et, !llvm.loop !68

.preheader.i201:                                  ; preds = %bb.et, %.preheader.i201.unr-lcssa
  %.lcssa1495 = phi i64 [ %i.bdf, %.preheader.i201.unr-lcssa ], [ %i.bao, %bb.et ]
  %i.bap = icmp samesign ult i32 %i.azz, 10
  br i1 %i.bap, label %.lr.ph38.i170, label %._crit_edge.i177

.lr.ph38.i170:                                    ; preds = %bb.es, %.preheader.i201
  %.0.lcssa85.i171 = phi i64 [ %.lcssa1495, %.preheader.i201 ], [ 0, %bb.es ] ; 2 uses
  %.025.lcssa84.i172 = phi i32 [ %i.azz, %.preheader.i201 ], [ 0, %bb.es ] ; 2 uses
  %i.baq = zext nneg i32 %.025.lcssa84.i172 to i64 ; 3 uses
  %i.bar = sub nsw i64 2, %i.baq
  %xtraiter1580 = and i64 %i.bar, 3               ; 2 uses
  %lcmp.mod1581.not = icmp eq i64 %xtraiter1580, 0
  br i1 %lcmp.mod1581.not, label %.prol.loopexit1579, label %.prol.preheader1578

.prol.preheader1578:                              ; preds = %.lr.ph38.i170, %.prol.preheader1578
  %indvars.iv50.i173.prol = phi i64 [ %indvars.iv.next51.i175.prol, %.prol.preheader1578 ], [ %i.baq, %.lr.ph38.i170 ] ; 3 uses
  %.137.i174.prol = phi i64 [ %i.bba, %.prol.preheader1578 ], [ %.0.lcssa85.i171, %.lr.ph38.i170 ]
  %prol.iter1582 = phi i64 [ %prol.iter1582.next, %.prol.preheader1578 ], [ 0, %.lr.ph38.i170 ]
  %i.bas = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv50.i173.prol
  %i.bat = load i16, ptr %i.bas, align 2, !tbaa !20
  %i.bau = zext i16 %i.bat to i64
  %i.bav = add nsw i64 %.137.i174.prol, %i.bau    ; 2 uses
  %i.baw = trunc i64 %i.bav to i16
  %i.bax = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv50.i173.prol
  store i16 %i.baw, ptr %i.bax, align 2, !tbaa !20
  %i.bay = add nsw i64 %i.bav, 2147483648
  %i.baz = lshr i64 %i.bay, 16
  %i.bba = add nsw i64 %i.baz, -32768             ; 2 uses
  %indvars.iv.next51.i175.prol = add nuw nsw i64 %indvars.iv50.i173.prol, 1 ; 2 uses
  %prol.iter1582.next = add i64 %prol.iter1582, 1 ; 2 uses
  %prol.iter1582.cmp.not = icmp eq i64 %prol.iter1582.next, %xtraiter1580
  br i1 %prol.iter1582.cmp.not, label %.prol.loopexit1579, label %.prol.preheader1578, !llvm.loop !69

.prol.loopexit1579:                               ; preds = %.prol.preheader1578, %.lr.ph38.i170
  %indvars.iv50.i173.unr = phi i64 [ %i.baq, %.lr.ph38.i170 ], [ %indvars.iv.next51.i175.prol, %.prol.preheader1578 ]
  %.137.i174.unr = phi i64 [ %.0.lcssa85.i171, %.lr.ph38.i170 ], [ %i.bba, %.prol.preheader1578 ]
  %i.bbb = add nsw i32 %.025.lcssa84.i172, -7
  %i.bbc = icmp ult i32 %i.bbb, 3
  br i1 %i.bbc, label %._crit_edge.i177, label %.lr.ph38.i170.new

bb.eu:                                            ; preds = %bb.eu, %.lr.ph.i193.new
  %indvars.iv45.i195 = phi i64 [ 0, %.lr.ph.i193.new ], [ %indvars.iv.next46.i198.3, %bb.eu ] ; 6 uses
  %indvars.iv.i196 = phi i64 [ %i.azx, %.lr.ph.i193.new ], [ %indvars.iv.next.i199.3, %bb.eu ] ; 5 uses
  %.034.i197 = phi i64 [ 0, %.lr.ph.i193.new ], [ %i.bdf, %bb.eu ]
  %niter1577 = phi i64 [ 0, %.lr.ph.i193.new ], [ %niter1577.next.3, %bb.eu ]
  %i.bbd = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv45.i195
  %i.bbe = load i16, ptr %i.bbd, align 4, !tbaa !20
  %i.bbf = zext i16 %i.bbe to i64
  %i.bbg = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %indvars.iv.i196
  %i.bbh = load i16, ptr %i.bbg, align 2, !tbaa !20
  %i.bbi = zext i16 %i.bbh to i64
  %i.bbj = sub nsw i64 %i.bbf, %i.bbi
  %i.bbk = add nsw i64 %i.bbj, %.034.i197         ; 2 uses
  %i.bbl = trunc i64 %i.bbk to i16
  %i.bbm = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv45.i195
  store i16 %i.bbl, ptr %i.bbm, align 8, !tbaa !20
  %i.bbn = add nsw i64 %i.bbk, 2147483648
  %i.bbo = lshr i64 %i.bbn, 16
  %i.bbp = add nsw i64 %i.bbo, -32768
  %indvars.iv.next46.i198 = or disjoint i64 %indvars.iv45.i195, 1 ; 2 uses
  %i.bbq = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next46.i198
  %i.bbr = load i16, ptr %i.bbq, align 2, !tbaa !20
  %i.bbs = zext i16 %i.bbr to i64
  %i.bbt = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv.i196
  %i.bbu = getelementptr i8, ptr %i.bbt, i64 2
  %i.bbv = load i16, ptr %i.bbu, align 2, !tbaa !20
  %i.bbw = zext i16 %i.bbv to i64
  %i.bbx = sub nsw i64 %i.bbs, %i.bbw
  %i.bby = add nsw i64 %i.bbx, %i.bbp             ; 2 uses
  %i.bbz = trunc i64 %i.bby to i16
  %i.bca = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv.next46.i198
  store i16 %i.bbz, ptr %i.bca, align 2, !tbaa !20
  %i.bcb = add nsw i64 %i.bby, 2147483648
  %i.bcc = lshr i64 %i.bcb, 16
  %i.bcd = add nsw i64 %i.bcc, -32768
  %indvars.iv.next46.i198.1 = or disjoint i64 %indvars.iv45.i195, 2 ; 2 uses
  %i.bce = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next46.i198.1
  %i.bcf = load i16, ptr %i.bce, align 8, !tbaa !20
  %i.bcg = zext i16 %i.bcf to i64
  %i.bch = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv.i196
  %i.bci = getelementptr i8, ptr %i.bch, i64 4
  %i.bcj = load i16, ptr %i.bci, align 2, !tbaa !20
  %i.bck = zext i16 %i.bcj to i64
  %i.bcl = sub nsw i64 %i.bcg, %i.bck
  %i.bcm = add nsw i64 %i.bcl, %i.bcd             ; 2 uses
  %i.bcn = trunc i64 %i.bcm to i16
  %i.bco = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv.next46.i198.1
  store i16 %i.bcn, ptr %i.bco, align 4, !tbaa !20
  %i.bcp = add nsw i64 %i.bcm, 2147483648
  %i.bcq = lshr i64 %i.bcp, 16
  %i.bcr = add nsw i64 %i.bcq, -32768
  %indvars.iv.next46.i198.2 = or disjoint i64 %indvars.iv45.i195, 3 ; 2 uses
  %i.bcs = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next46.i198.2
  %i.bct = load i16, ptr %i.bcs, align 2, !tbaa !20
  %i.bcu = zext i16 %i.bct to i64
  %i.bcv = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv.i196
  %i.bcw = getelementptr i8, ptr %i.bcv, i64 6
  %i.bcx = load i16, ptr %i.bcw, align 2, !tbaa !20
  %i.bcy = zext i16 %i.bcx to i64
  %i.bcz = sub nsw i64 %i.bcu, %i.bcy
  %i.bda = add nsw i64 %i.bcz, %i.bcr             ; 2 uses
  %i.bdb = trunc i64 %i.bda to i16
  %i.bdc = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv.next46.i198.2
  store i16 %i.bdb, ptr %i.bdc, align 2, !tbaa !20
  %i.bdd = add nsw i64 %i.bda, 2147483648
  %i.bde = lshr i64 %i.bdd, 16
  %i.bdf = add nsw i64 %i.bde, -32768             ; 3 uses
  %indvars.iv.next46.i198.3 = add nuw nsw i64 %indvars.iv45.i195, 4 ; 2 uses
  %indvars.iv.next.i199.3 = add nsw i64 %indvars.iv.i196, 4 ; 2 uses
  %niter1577.next.3 = add i64 %niter1577, 4       ; 2 uses
  %niter1577.ncmp.3 = icmp eq i64 %niter1577.next.3, %unroll_iter1576
  br i1 %niter1577.ncmp.3, label %.preheader.i201.unr-lcssa, label %bb.eu, !llvm.loop !3

.lr.ph38.i170.new:                                ; preds = %.prol.loopexit1579, %.lr.ph38.i170.new
  %indvars.iv50.i173 = phi i64 [ %indvars.iv.next51.i175.3, %.lr.ph38.i170.new ], [ %indvars.iv50.i173.unr, %.prol.loopexit1579 ] ; 6 uses
  %.137.i174 = phi i64 [ %i.bep, %.lr.ph38.i170.new ], [ %.137.i174.unr, %.prol.loopexit1579 ]
  %i.bdg = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv50.i173
  %i.bdh = load i16, ptr %i.bdg, align 2, !tbaa !20
  %i.bdi = zext i16 %i.bdh to i64
  %i.bdj = add nsw i64 %.137.i174, %i.bdi         ; 2 uses
  %i.bdk = trunc i64 %i.bdj to i16
  %i.bdl = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv50.i173
  store i16 %i.bdk, ptr %i.bdl, align 2, !tbaa !20
  %i.bdm = add nsw i64 %i.bdj, 2147483648
  %i.bdn = lshr i64 %i.bdm, 16
  %i.bdo = add nsw i64 %i.bdn, -32768
  %indvars.iv.next51.i175 = add nuw nsw i64 %indvars.iv50.i173, 1 ; 2 uses
  %i.bdp = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next51.i175
  %i.bdq = load i16, ptr %i.bdp, align 2, !tbaa !20
  %i.bdr = zext i16 %i.bdq to i64
  %i.bds = add nsw i64 %i.bdo, %i.bdr             ; 2 uses
  %i.bdt = trunc i64 %i.bds to i16
  %i.bdu = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv.next51.i175
  store i16 %i.bdt, ptr %i.bdu, align 2, !tbaa !20
  %i.bdv = add nsw i64 %i.bds, 2147483648
  %i.bdw = lshr i64 %i.bdv, 16
  %i.bdx = add nsw i64 %i.bdw, -32768
  %indvars.iv.next51.i175.1 = add nuw nsw i64 %indvars.iv50.i173, 2 ; 2 uses
  %i.bdy = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next51.i175.1
  %i.bdz = load i16, ptr %i.bdy, align 2, !tbaa !20
  %i.bea = zext i16 %i.bdz to i64
  %i.beb = add nsw i64 %i.bdx, %i.bea             ; 2 uses
  %i.bec = trunc i64 %i.beb to i16
  %i.bed = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv.next51.i175.1
  store i16 %i.bec, ptr %i.bed, align 2, !tbaa !20
  %i.bee = add nsw i64 %i.beb, 2147483648
  %i.bef = lshr i64 %i.bee, 16
  %i.beg = add nsw i64 %i.bef, -32768
  %indvars.iv.next51.i175.2 = add nuw nsw i64 %indvars.iv50.i173, 3 ; 2 uses
  %i.beh = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next51.i175.2
  %i.bei = load i16, ptr %i.beh, align 2, !tbaa !20
  %i.bej = zext i16 %i.bei to i64
  %i.bek = add nsw i64 %i.beg, %i.bej             ; 2 uses
  %i.bel = trunc i64 %i.bek to i16
  %i.bem = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv.next51.i175.2
  store i16 %i.bel, ptr %i.bem, align 2, !tbaa !20
  %i.ben = add nsw i64 %i.bek, 2147483648
  %i.beo = lshr i64 %i.ben, 16
  %i.bep = add nsw i64 %i.beo, -32768
  %indvars.iv.next51.i175.3 = add nuw nsw i64 %indvars.iv50.i173, 4 ; 2 uses
  %exitcond53.not.i176.3 = icmp eq i64 %indvars.iv.next51.i175.3, 10
  br i1 %exitcond53.not.i176.3, label %._crit_edge.i177, label %.lr.ph38.i170.new, !llvm.loop !4

._crit_edge.i177:                                 ; preds = %.prol.loopexit1579, %.lr.ph38.i170.new, %.preheader.i201
  %i.beq = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep.i161, align 2, !tbaa !20
  %.not.i.not.not.i178 = icmp eq i16 %i.beq, 0
  br i1 %.not.i.not.not.i178, label %bb.ev, label %.preheader.i.i179

bb.ev:                                            ; preds = %._crit_edge.i177
  %i.ber = add i16 %i.afc, -1
  %i.bes = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep54.i162, align 16, !tbaa !20
  %.not.i.1.i180 = icmp eq i16 %i.bes, 0
  br i1 %.not.i.1.i180, label %bb.ew, label %.lr.ph47.i.i181

bb.ew:                                            ; preds = %bb.ev
  %i.bet = add i16 %i.afc, -2
  %i.beu = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep55.i163, align 2, !tbaa !20
  %.not.i.2.i185 = icmp eq i16 %i.beu, 0
  br i1 %.not.i.2.i185, label %bb.ex, label %.lr.ph47.i.i181

bb.ex:                                            ; preds = %bb.ew
  %i.bev = add i16 %i.afc, -3
  %i.bew = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep56.i164, align 4, !tbaa !20
  %.not.i.3.i186 = icmp eq i16 %i.bew, 0
  br i1 %.not.i.3.i186, label %bb.ey, label %.lr.ph47.i.i181

bb.ey:                                            ; preds = %bb.ex
  %i.bex = add i16 %i.afc, -4
  %i.bey = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep57.i165, align 2, !tbaa !20
  %.not.i.4.i187 = icmp eq i16 %i.bey, 0
  br i1 %.not.i.4.i187, label %bb.ez, label %.lr.ph47.i.i181

bb.ez:                                            ; preds = %bb.ey
  %i.bez = add i16 %i.afc, -5
  %i.bfa = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep58.i166, align 8, !tbaa !20
  %.not.i.5.i188 = icmp eq i16 %i.bfa, 0
  br i1 %.not.i.5.i188, label %bb.fa, label %.lr.ph47.i.i181

bb.fa:                                            ; preds = %bb.ez
  %i.bfb = add i16 %i.afc, -6
  %i.bfc = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep59.i167, align 2, !tbaa !20
  %.not.i.6.i189 = icmp eq i16 %i.bfc, 0
  br i1 %.not.i.6.i189, label %bb.fb, label %.lr.ph47.i.i181

bb.fb:                                            ; preds = %bb.fa
  %i.bfd = add i16 %i.afc, -7
  %i.bfe = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60.i168, align 4, !tbaa !20
  %.not.i.7.i190 = icmp eq i16 %i.bfe, 0
  br i1 %.not.i.7.i190, label %bb.fc, label %.lr.ph47.i.i181

bb.fc:                                            ; preds = %bb.fb
  %i.bff = add i16 %i.afc, -8
  %i.bfg = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61.i169, align 2, !tbaa !20
  %.not.i.8.i191 = icmp eq i16 %i.bfg, 0
  br i1 %.not.i.8.i191, label %bb.fd, label %.lr.ph47.i.i181

bb.fd:                                            ; preds = %bb.fc
  %i.bfh = add i16 %i.afc, -9
  %i.bfi = load i16, ptr %i.t, align 16, !tbaa !20
  %.not.i.9.i192 = icmp eq i16 %i.bfi, 0
  br i1 %.not.i.9.i192, label %bb.fe, label %.lr.ph47.i.i181

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %12, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %submag0.exit202

.preheader.i.i179:                                ; preds = %._crit_edge.i177
  store i16 %i.afc, ptr %i.bw, align 2, !tbaa !26
  store i16 %i.aez, ptr %12, align 16, !tbaa !24
  %i.bfj = load <2 x i16>, ptr %indvars.iv72.i.lcssa.sroa.gep54.i162, align 16, !tbaa !20
  store <2 x i16> %i.bfj, ptr %i.bz, align 4, !tbaa !20
  %i.bfk = load <8 x i16>, ptr %i.t, align 16, !tbaa !20
  store <8 x i16> %i.bfk, ptr %i.bx, align 4, !tbaa !20
  br label %submag0.exit202

.lr.ph47.i.i181:                                  ; preds = %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev
  %.03341.i.lcssa.ph.i182 = phi i16 [ %i.bfh, %bb.fd ], [ %i.bff, %bb.fc ], [ %i.bfd, %bb.fb ], [ %i.bfb, %bb.fa ], [ %i.bez, %bb.ez ], [ %i.bex, %bb.ey ], [ %i.bev, %bb.ex ], [ %i.bet, %bb.ew ], [ %i.ber, %bb.ev ]
  %indvars.iv58.i.lcssa.ph.i183 = phi i64 [ 0, %bb.fd ], [ 2, %bb.fc ], [ 4, %bb.fb ], [ 6, %bb.fa ], [ 8, %bb.ez ], [ 10, %bb.ey ], [ 12, %bb.ex ], [ 14, %bb.ew ], [ 16, %bb.ev ] ; 3 uses
  store i16 %.03341.i.lcssa.ph.i182, ptr %i.bw, align 2, !tbaa !26
  store i16 %i.aez, ptr %12, align 16, !tbaa !24
  %i.bfl = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph.i183
  %scevgep.i184 = getelementptr i8, ptr %12, i64 %i.bfl
  %i.bfm = add nuw nsw i64 %indvars.iv58.i.lcssa.ph.i183, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i184, ptr noundef nonnull align 16 dereferenceable(1) %i.t, i64 range(i64 0, 21) %i.bfm, i1 false), !tbaa !20
  %i.bfn = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph.i183
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bx, i8 0, i64 %i.bfn, i1 false), !tbaa !20
  br label %submag0.exit202

submag0.exit202:                                  ; preds = %bb.fe, %.preheader.i.i179, %.lr.ph47.i.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #13
  br label %add.exit

add.exit:                                         ; preds = %addmag0.exit342, %addmag0.exit293, %submag0.exit244, %submag0.exit202
  %i.bfo = load i16, ptr %5, align 16, !tbaa !24  ; 13 uses
  %i.bfp = load i16, ptr %11, align 16, !tbaa !24 ; 5 uses
  %i.bfq = icmp eq i16 %i.bfo, %i.bfp             ; 2 uses
  %i.bfr = load i16, ptr %i.ch, align 2, !tbaa !26 ; 57 uses
  %i.bfs = load i16, ptr %i.bl, align 2, !tbaa !26 ; 57 uses
  %i.bft = icmp sgt i16 %i.bfr, %i.bfs            ; 2 uses
  br i1 %i.bft, label %abscmp.exit532, label %bb.ff

bb.ff:                                            ; preds = %add.exit
  %i.bfu = icmp slt i16 %i.bfr, %i.bfs
  br i1 %i.bfu, label %abscmp.exit532, label %.preheader.i529

.preheader.i529:                                  ; preds = %bb.ff
  %i.bfv = load i16, ptr %i.cj, align 2, !tbaa !20 ; 2 uses
  %i.bfw = load i16, ptr %i.bn, align 2, !tbaa !20 ; 2 uses
  %i.bfx = icmp ugt i16 %i.bfv, %i.bfw
  br i1 %i.bfx, label %abscmp.exit532, label %bb.fx

bb.fg:                                            ; preds = %bb.fx
  %i.bfy = load i16, ptr %i.ck, align 4, !tbaa !20 ; 2 uses
  %i.bfz = load i16, ptr %i.bo, align 4, !tbaa !20 ; 2 uses
  %i.bga = icmp ugt i16 %i.bfy, %i.bfz
  br i1 %i.bga, label %abscmp.exit532, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.bgb = icmp ult i16 %i.bfy, %i.bfz
  br i1 %i.bgb, label %abscmp.exit532, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.bgc = load i16, ptr %i.cl, align 2, !tbaa !20 ; 2 uses
  %i.bgd = load i16, ptr %i.bp, align 2, !tbaa !20 ; 2 uses
  %i.bge = icmp ugt i16 %i.bgc, %i.bgd
  br i1 %i.bge, label %abscmp.exit532, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.bgf = icmp ult i16 %i.bgc, %i.bgd
  br i1 %i.bgf, label %abscmp.exit532, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.bgg = load i16, ptr %i.cm, align 16, !tbaa !20 ; 2 uses
  %i.bgh = load i16, ptr %i.bq, align 16, !tbaa !20 ; 2 uses
  %i.bgi = icmp ugt i16 %i.bgg, %i.bgh
  br i1 %i.bgi, label %abscmp.exit532, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.bgj = icmp ult i16 %i.bgg, %i.bgh
  br i1 %i.bgj, label %abscmp.exit532, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.bgk = load i16, ptr %i.cn, align 2, !tbaa !20 ; 2 uses
  %i.bgl = load i16, ptr %i.br, align 2, !tbaa !20 ; 2 uses
  %i.bgm = icmp ugt i16 %i.bgk, %i.bgl
  br i1 %i.bgm, label %abscmp.exit532, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.bgn = icmp ult i16 %i.bgk, %i.bgl
  br i1 %i.bgn, label %abscmp.exit532, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.bgo = load i16, ptr %i.co, align 4, !tbaa !20 ; 2 uses
  %i.bgp = load i16, ptr %i.bs, align 4, !tbaa !20 ; 2 uses
  %i.bgq = icmp ugt i16 %i.bgo, %i.bgp
  br i1 %i.bgq, label %abscmp.exit532, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.bgr = icmp ult i16 %i.bgo, %i.bgp
  br i1 %i.bgr, label %abscmp.exit532, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.bgs = load i16, ptr %i.cp, align 2, !tbaa !20 ; 2 uses
  %i.bgt = load i16, ptr %i.bt, align 2, !tbaa !20 ; 2 uses
  %i.bgu = icmp ugt i16 %i.bgs, %i.bgt
  br i1 %i.bgu, label %abscmp.exit532, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.bgv = icmp ult i16 %i.bgs, %i.bgt
  br i1 %i.bgv, label %abscmp.exit532, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.bgw = load i16, ptr %i.cq, align 8, !tbaa !20 ; 2 uses
  %i.bgx = load i16, ptr %i.bu, align 8, !tbaa !20 ; 2 uses
  %i.bgy = icmp ugt i16 %i.bgw, %i.bgx
  br i1 %i.bgy, label %abscmp.exit532, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.bgz = icmp ult i16 %i.bgw, %i.bgx
  br i1 %i.bgz, label %abscmp.exit532, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.bha = load i16, ptr %i.cr, align 2, !tbaa !20 ; 2 uses
  %i.bhb = load i16, ptr %i.bv, align 2, !tbaa !20 ; 2 uses
  %i.bhc = icmp ugt i16 %i.bha, %i.bhb
  br i1 %i.bhc, label %abscmp.exit532, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.bhd = icmp ult i16 %i.bha, %i.bhb
  br i1 %i.bhd, label %abscmp.exit532, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.bhe = load i16, ptr %i.ci, align 4, !tbaa !20
  %i.bhf = load i16, ptr %i.bm, align 4, !tbaa !20
  %i.bhg = icmp ugt i16 %i.bhe, %i.bhf
  br label %abscmp.exit532

bb.fx:                                            ; preds = %.preheader.i529
  %i.bhh = icmp ult i16 %i.bfv, %i.bfw
  br i1 %i.bhh, label %abscmp.exit532, label %bb.fg

abscmp.exit532:                                   ; preds = %bb.fw, %add.exit, %bb.ff, %.preheader.i529, %bb.fg, %bb.fh, %bb.fi, %bb.fj, %bb.fk, %bb.fl, %bb.fm, %bb.fn, %bb.fo, %bb.fp, %bb.fq, %bb.fr, %bb.fs, %bb.ft, %bb.fu, %bb.fv, %bb.fx
  %.014.i531 = phi i1 [ false, %bb.ff ], [ true, %add.exit ], [ false, %bb.fx ], [ true, %.preheader.i529 ], [ false, %bb.ft ], [ true, %bb.fg ], [ false, %bb.fh ], [ false, %bb.fr ], [ true, %bb.fi ], [ false, %bb.fj ], [ %i.bhg, %bb.fw ], [ true, %bb.fk ], [ false, %bb.fl ], [ true, %bb.fs ], [ true, %bb.fm ], [ false, %bb.fn ], [ false, %bb.fv ], [ true, %bb.fo ], [ false, %bb.fp ], [ true, %bb.fu ], [ true, %bb.fq ] ; 2 uses
  br i1 %i.bfq, label %bb.fy, label %bb.hb

bb.fy:                                            ; preds = %abscmp.exit532
  br i1 %.014.i531, label %bb.fz, label %bb.gn

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #13
  %i.bhi = sext i16 %i.bfr to i32                 ; 2 uses
  %i.bhj = sext i16 %i.bfs to i32                 ; 3 uses
  %i.bhk = sub nsw i32 %i.bhi, %i.bhj
  %i.bhl = icmp slt i32 %i.bhk, 10
  br i1 %i.bhl, label %.lr.ph.i519, label %.lr.ph40.i491

.lr.ph.i519:                                      ; preds = %bb.fz
  %i.bhm = sext i16 %i.bfr to i64
  %i.bhn = sub nsw i32 0, %i.bhj
  %i.bho = sext i32 %i.bhn to i64
  %i.bhp = add nsw i64 %i.bho, %i.bhm             ; 2 uses
  %reass.sub1164 = sub nsw i32 %i.bhj, %i.bhi     ; 3 uses
  %i.bhq = add nsw i32 %reass.sub1164, 10         ; 3 uses
  %wide.trip.count.i520 = zext i32 %i.bhq to i64  ; 2 uses
  %xtraiter1662 = and i64 %wide.trip.count.i520, 3 ; 3 uses
  %i.bhr = add nsw i32 %reass.sub1164, 9
  %i.bhs = icmp ult i32 %i.bhr, 3
  br i1 %i.bhs, label %.epil.preheader1661, label %.lr.ph.i519.new

.lr.ph.i519.new:                                  ; preds = %.lr.ph.i519
  %unroll_iter1667 = and i64 %wide.trip.count.i520, 4294967292
  br label %bb.gb

.preheader.i527.unr-lcssa:                        ; preds = %bb.gb
  %lcmp.mod1664.not = icmp eq i64 %xtraiter1662, 0
  br i1 %lcmp.mod1664.not, label %.preheader.i527, label %.epil.preheader1661

.epil.preheader1661:                              ; preds = %.preheader.i527.unr-lcssa, %.lr.ph.i519
  %indvars.iv51.i521.epil.init = phi i64 [ 0, %.lr.ph.i519 ], [ %indvars.iv.next52.i524.3, %.preheader.i527.unr-lcssa ]
  %indvars.iv.i522.epil.init = phi i64 [ %i.bhp, %.lr.ph.i519 ], [ %indvars.iv.next.i525.3, %.preheader.i527.unr-lcssa ]
  %.036.i523.epil.init = phi i64 [ 0, %.lr.ph.i519 ], [ %i.bkk, %.preheader.i527.unr-lcssa ]
  %lcmp.mod1666 = icmp ne i64 %xtraiter1662, 0
  tail call void @llvm.assume(i1 %lcmp.mod1666)
  br label %bb.ga

bb.ga:                                            ; preds = %bb.ga, %.epil.preheader1661
  %indvars.iv51.i521.epil = phi i64 [ %indvars.iv51.i521.epil.init, %.epil.preheader1661 ], [ %indvars.iv.next52.i524.epil, %bb.ga ] ; 3 uses
  %indvars.iv.i522.epil = phi i64 [ %indvars.iv.i522.epil.init, %.epil.preheader1661 ], [ %indvars.iv.next.i525.epil, %bb.ga ] ; 2 uses
  %.036.i523.epil = phi i64 [ %.036.i523.epil.init, %.epil.preheader1661 ], [ %i.bid, %bb.ga ]
  %epil.iter1663 = phi i64 [ 0, %.epil.preheader1661 ], [ %epil.iter1663.next, %bb.ga ]
  %i.bht = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv51.i521.epil
  %i.bhu = load i16, ptr %i.bht, align 2, !tbaa !20
  %i.bhv = zext i16 %i.bhu to i64
  %i.bhw = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %indvars.iv.i522.epil
  %i.bhx = load i16, ptr %i.bhw, align 2, !tbaa !20
  %i.bhy = zext i16 %i.bhx to i64
  %i.bhz = add nuw nsw i64 %.036.i523.epil, %i.bhv
  %i.bia = add nuw nsw i64 %i.bhz, %i.bhy         ; 2 uses
  %i.bib = trunc i64 %i.bia to i16
  %i.bic = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv51.i521.epil
  store i16 %i.bib, ptr %i.bic, align 2, !tbaa !20
  %i.bid = lshr i64 %i.bia, 16                    ; 2 uses
  %indvars.iv.next52.i524.epil = add nuw nsw i64 %indvars.iv51.i521.epil, 1
  %indvars.iv.next.i525.epil = add nsw i64 %indvars.iv.i522.epil, 1
  %epil.iter1663.next = add i64 %epil.iter1663, 1 ; 2 uses
  %epil.iter1663.cmp.not = icmp eq i64 %epil.iter1663.next, %xtraiter1662
  br i1 %epil.iter1663.cmp.not, label %.preheader.i527, label %bb.ga, !llvm.loop !70

.preheader.i527:                                  ; preds = %bb.ga, %.preheader.i527.unr-lcssa
  %.lcssa1505 = phi i64 [ %i.bkk, %.preheader.i527.unr-lcssa ], [ %i.bid, %bb.ga ] ; 2 uses
  %i.bie = icmp slt i32 %reass.sub1164, 0
  br i1 %i.bie, label %.lr.ph40.i491, label %._crit_edge.i498

.lr.ph40.i491:                                    ; preds = %bb.fz, %.preheader.i527
  %.0.lcssa94.i492 = phi i64 [ %.lcssa1505, %.preheader.i527 ], [ 0, %bb.fz ] ; 2 uses
  %.027.lcssa93.i493 = phi i32 [ %i.bhq, %.preheader.i527 ], [ 0, %bb.fz ] ; 2 uses
  %i.bif = zext i32 %.027.lcssa93.i493 to i64     ; 3 uses
  %i.big = sub nsw i64 2, %i.bif
  %xtraiter1671 = and i64 %i.big, 7               ; 2 uses
  %lcmp.mod1672.not = icmp eq i64 %xtraiter1671, 0
  br i1 %lcmp.mod1672.not, label %.prol.loopexit1670, label %.prol.preheader1669

.prol.preheader1669:                              ; preds = %.lr.ph40.i491, %.prol.preheader1669
  %indvars.iv56.i494.prol = phi i64 [ %indvars.iv.next57.i496.prol, %.prol.preheader1669 ], [ %i.bif, %.lr.ph40.i491 ] ; 3 uses
end_hunk_3
begin_hunk_4_@fft0:bb.a
  %i.bka = load i16, ptr %i.bjz, align 2, !tbaa !20
  %i.bkb = zext i16 %i.bka to i64
  %i.bkc = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv.i522
  %i.bkd = getelementptr i8, ptr %i.bkc, i64 6
  %i.bke = load i16, ptr %i.bkd, align 2, !tbaa !20
  %i.bkf = zext i16 %i.bke to i64
  %i.bkg = add nuw nsw i64 %i.bjy, %i.bkb
  %i.bkh = add nuw nsw i64 %i.bkg, %i.bkf         ; 2 uses
  %i.bki = trunc i64 %i.bkh to i16
  %i.bkj = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.next52.i524.2
  store i16 %i.bki, ptr %i.bkj, align 2, !tbaa !20
  %i.bkk = lshr i64 %i.bkh, 16                    ; 3 uses
  %indvars.iv.next52.i524.3 = add nuw nsw i64 %indvars.iv51.i521, 4 ; 2 uses
  %indvars.iv.next.i525.3 = add nsw i64 %indvars.iv.i522, 4 ; 2 uses
  %niter1668.next.3 = add i64 %niter1668, 4       ; 2 uses
  %niter1668.ncmp.3 = icmp eq i64 %niter1668.next.3, %unroll_iter1667
  br i1 %niter1668.ncmp.3, label %.preheader.i527.unr-lcssa, label %bb.gb, !llvm.loop !5

.lr.ph40.i491.new:                                ; preds = %.prol.loopexit1670, %.lr.ph40.i491.new
  %indvars.iv56.i494 = phi i64 [ %indvars.iv.next57.i496.7, %.lr.ph40.i491.new ], [ %indvars.iv56.i494.unr, %.prol.loopexit1670 ] ; 10 uses
  %.139.i495 = phi i64 [ %i.bmo, %.lr.ph40.i491.new ], [ %.139.i495.unr, %.prol.loopexit1670 ]
  %i.bkl = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv56.i494
  %i.bkm = load i16, ptr %i.bkl, align 2, !tbaa !20
  %i.bkn = zext i16 %i.bkm to i64
  %i.bko = add nuw nsw i64 %.139.i495, %i.bkn     ; 2 uses
  %i.bkp = trunc i64 %i.bko to i16
  %i.bkq = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv56.i494
  store i16 %i.bkp, ptr %i.bkq, align 2, !tbaa !20
  %i.bkr = lshr i64 %i.bko, 16
  %indvars.iv.next57.i496 = add nuw nsw i64 %indvars.iv56.i494, 1 ; 2 uses
  %i.bks = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i496
  %i.bkt = load i16, ptr %i.bks, align 2, !tbaa !20
  %i.bku = zext i16 %i.bkt to i64
  %i.bkv = add nuw nsw i64 %i.bkr, %i.bku         ; 2 uses
  %i.bkw = trunc i64 %i.bkv to i16
  %i.bkx = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.next57.i496
  store i16 %i.bkw, ptr %i.bkx, align 2, !tbaa !20
  %i.bky = lshr i64 %i.bkv, 16
  %indvars.iv.next57.i496.1 = add nuw nsw i64 %indvars.iv56.i494, 2 ; 2 uses
  %i.bkz = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i496.1
  %i.bla = load i16, ptr %i.bkz, align 2, !tbaa !20
  %i.blb = zext i16 %i.bla to i64
  %i.blc = add nuw nsw i64 %i.bky, %i.blb         ; 2 uses
  %i.bld = trunc i64 %i.blc to i16
  %i.ble = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.next57.i496.1
  store i16 %i.bld, ptr %i.ble, align 2, !tbaa !20
  %i.blf = lshr i64 %i.blc, 16
  %indvars.iv.next57.i496.2 = add nuw nsw i64 %indvars.iv56.i494, 3 ; 2 uses
  %i.blg = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i496.2
  %i.blh = load i16, ptr %i.blg, align 2, !tbaa !20
  %i.bli = zext i16 %i.blh to i64
  %i.blj = add nuw nsw i64 %i.blf, %i.bli         ; 2 uses
  %i.blk = trunc i64 %i.blj to i16
  %i.bll = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.next57.i496.2
  store i16 %i.blk, ptr %i.bll, align 2, !tbaa !20
  %i.blm = lshr i64 %i.blj, 16
  %indvars.iv.next57.i496.3 = add nuw nsw i64 %indvars.iv56.i494, 4 ; 2 uses
  %i.bln = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i496.3
  %i.blo = load i16, ptr %i.bln, align 2, !tbaa !20
  %i.blp = zext i16 %i.blo to i64
  %i.blq = add nuw nsw i64 %i.blm, %i.blp         ; 2 uses
  %i.blr = trunc i64 %i.blq to i16
  %i.bls = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.next57.i496.3
  store i16 %i.blr, ptr %i.bls, align 2, !tbaa !20
  %i.blt = lshr i64 %i.blq, 16
  %indvars.iv.next57.i496.4 = add nuw nsw i64 %indvars.iv56.i494, 5 ; 2 uses
  %i.blu = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i496.4
  %i.blv = load i16, ptr %i.blu, align 2, !tbaa !20
  %i.blw = zext i16 %i.blv to i64
  %i.blx = add nuw nsw i64 %i.blt, %i.blw         ; 2 uses
  %i.bly = trunc i64 %i.blx to i16
  %i.blz = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.next57.i496.4
  store i16 %i.bly, ptr %i.blz, align 2, !tbaa !20
  %i.bma = lshr i64 %i.blx, 16
  %indvars.iv.next57.i496.5 = add nuw nsw i64 %indvars.iv56.i494, 6 ; 2 uses
  %i.bmb = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i496.5
  %i.bmc = load i16, ptr %i.bmb, align 2, !tbaa !20
  %i.bmd = zext i16 %i.bmc to i64
  %i.bme = add nuw nsw i64 %i.bma, %i.bmd         ; 2 uses
  %i.bmf = trunc i64 %i.bme to i16
  %i.bmg = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.next57.i496.5
  store i16 %i.bmf, ptr %i.bmg, align 2, !tbaa !20
  %i.bmh = lshr i64 %i.bme, 16
  %indvars.iv.next57.i496.6 = add nuw nsw i64 %indvars.iv56.i494, 7 ; 2 uses
  %i.bmi = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i496.6
  %i.bmj = load i16, ptr %i.bmi, align 2, !tbaa !20
  %i.bmk = zext i16 %i.bmj to i64
  %i.bml = add nuw nsw i64 %i.bmh, %i.bmk         ; 2 uses
  %i.bmm = trunc i64 %i.bml to i16
  %i.bmn = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.next57.i496.6
  store i16 %i.bmm, ptr %i.bmn, align 2, !tbaa !20
  %i.bmo = lshr i64 %i.bml, 16                    ; 2 uses
  %indvars.iv.next57.i496.7 = add nuw nsw i64 %indvars.iv56.i494, 8 ; 2 uses
  %exitcond59.not.i497.7 = icmp eq i64 %indvars.iv.next57.i496.7, 10
  br i1 %exitcond59.not.i497.7, label %._crit_edge.i498, label %.lr.ph40.i491.new, !llvm.loop !6

._crit_edge.i498:                                 ; preds = %.prol.loopexit1670, %.lr.ph40.i491.new, %.preheader.i527
  %.128.lcssa.i499 = phi i32 [ %i.bhq, %.preheader.i527 ], [ 10, %.lr.ph40.i491.new ], [ 10, %.prol.loopexit1670 ]
  %.1.lcssa.i500 = phi i64 [ %.lcssa1505, %.preheader.i527 ], [ %.lcssa1506.unr, %.prol.loopexit1670 ], [ %i.bmo, %.lr.ph40.i491.new ]
  %i.bmp = trunc nuw nsw i64 %.1.lcssa.i500 to i16
  %i.bmq = zext nneg i32 %.128.lcssa.i499 to i64
  %i.bmr = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.bmq
  store i16 %i.bmp, ptr %i.bmr, align 2, !tbaa !20
  %i.bms = add i16 %i.bfr, 1
  %i.bmt = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep.i480, align 4, !tbaa !20 ; 2 uses
  %.not.i.i501 = icmp eq i16 %i.bmt, 0
  br i1 %.not.i.i501, label %bb.gc, label %.preheader.i.i502

bb.gc:                                            ; preds = %._crit_edge.i498
  %i.bmu = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60.i481, align 2, !tbaa !20 ; 2 uses
  %.not.i.1.i505 = icmp eq i16 %i.bmu, 0
  br i1 %.not.i.1.i505, label %bb.gd, label %.preheader.i.i502

bb.gd:                                            ; preds = %bb.gc
  %i.bmv = add i16 %i.bfr, -1
  %i.bmw = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61.i482, align 16, !tbaa !20
  %.not.i.2.i506 = icmp eq i16 %i.bmw, 0
  br i1 %.not.i.2.i506, label %bb.ge, label %.lr.ph47.i.i507

bb.ge:                                            ; preds = %bb.gd
  %i.bmx = add i16 %i.bfr, -2
  %i.bmy = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep62.i483, align 2, !tbaa !20
  %.not.i.3.i511 = icmp eq i16 %i.bmy, 0
  br i1 %.not.i.3.i511, label %bb.gf, label %.lr.ph47.i.i507

bb.gf:                                            ; preds = %bb.ge
  %i.bmz = add i16 %i.bfr, -3
  %i.bna = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep63.i484, align 4, !tbaa !20
  %.not.i.4.i512 = icmp eq i16 %i.bna, 0
  br i1 %.not.i.4.i512, label %bb.gg, label %.lr.ph47.i.i507

bb.gg:                                            ; preds = %bb.gf
  %i.bnb = add i16 %i.bfr, -4
  %i.bnc = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep64.i485, align 2, !tbaa !20
  %.not.i.5.i513 = icmp eq i16 %i.bnc, 0
  br i1 %.not.i.5.i513, label %bb.gh, label %.lr.ph47.i.i507

bb.gh:                                            ; preds = %bb.gg
  %i.bnd = add i16 %i.bfr, -5
  %i.bne = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep65.i486, align 8, !tbaa !20
  %.not.i.6.i514 = icmp eq i16 %i.bne, 0
  br i1 %.not.i.6.i514, label %bb.gi, label %.lr.ph47.i.i507

bb.gi:                                            ; preds = %bb.gh
  %i.bnf = add i16 %i.bfr, -6
  %i.bng = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep66.i487, align 2, !tbaa !20
  %.not.i.7.i515 = icmp eq i16 %i.bng, 0
  br i1 %.not.i.7.i515, label %bb.gj, label %.lr.ph47.i.i507

bb.gj:                                            ; preds = %bb.gi
  %i.bnh = add i16 %i.bfr, -7
  %i.bni = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep67.i488, align 4, !tbaa !20
  %.not.i.8.i516 = icmp eq i16 %i.bni, 0
  br i1 %.not.i.8.i516, label %bb.gk, label %.lr.ph47.i.i507

bb.gk:                                            ; preds = %bb.gj
  %i.bnj = add i16 %i.bfr, -8
  %i.bnk = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep68.i489, align 2, !tbaa !20
  %.not.i.9.i517 = icmp eq i16 %i.bnk, 0
  br i1 %.not.i.9.i517, label %bb.gl, label %.lr.ph47.i.i507

bb.gl:                                            ; preds = %bb.gk
  %i.bnl = add i16 %i.bfr, -9
  %i.bnm = load i16, ptr %i.m, align 16, !tbaa !20
  %.not.i.10.i518 = icmp eq i16 %i.bnm, 0
  br i1 %.not.i.10.i518, label %bb.gm, label %.lr.ph47.i.i507

bb.gm:                                            ; preds = %bb.gl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ea, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %addmag0.exit528

.preheader.i.i502:                                ; preds = %bb.gc, %._crit_edge.i498
  %i.bnn = phi i16 [ %i.bmt, %._crit_edge.i498 ], [ %i.bmu, %bb.gc ]
  %indvars.iv72.in.i.lcssa.sroa.phi.i503 = phi ptr [ %indvars.iv72.in.i.lcssa.sroa.gep.i490, %._crit_edge.i498 ], [ %indvars.iv72.i.lcssa.sroa.gep.i480, %bb.gc ] ; 2 uses
  %.03341.i.lcssa.i504 = phi i16 [ %i.bms, %._crit_edge.i498 ], [ %i.bfr, %bb.gc ]
  %i.bno = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store i16 %.03341.i.lcssa.i504, ptr %i.bno, align 2, !tbaa !26
  store i16 %i.bfo, ptr %i.ea, align 2, !tbaa !24
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.ea, i64 22
  store i16 %i.bnn, ptr %i.bnq, align 2, !tbaa !20
  %i.bnr = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.i503, i64 -4
  %i.bns = load i16, ptr %i.bnr, align 2, !tbaa !20
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  store i16 %i.bns, ptr %i.bnt, align 2, !tbaa !20
  %i.bnu = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.i503, i64 -20
  %i.bnv = load <8 x i16>, ptr %i.bnu, align 2, !tbaa !20
  store <8 x i16> %i.bnv, ptr %i.bnp, align 2, !tbaa !20
  br label %addmag0.exit528

.lr.ph47.i.i507:                                  ; preds = %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd
  %.03341.i.lcssa.ph.i508 = phi i16 [ %i.bnl, %bb.gl ], [ %i.bnj, %bb.gk ], [ %i.bnh, %bb.gj ], [ %i.bnf, %bb.gi ], [ %i.bnd, %bb.gh ], [ %i.bnb, %bb.gg ], [ %i.bmz, %bb.gf ], [ %i.bmx, %bb.ge ], [ %i.bmv, %bb.gd ]
  %indvars.iv58.i.lcssa.ph.i509 = phi i64 [ 0, %bb.gl ], [ 2, %bb.gk ], [ 4, %bb.gj ], [ 6, %bb.gi ], [ 8, %bb.gh ], [ 10, %bb.gg ], [ 12, %bb.gf ], [ 14, %bb.ge ], [ 16, %bb.gd ] ; 3 uses
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store i16 %.03341.i.lcssa.ph.i508, ptr %i.bnw, align 2, !tbaa !26
  store i16 %i.bfo, ptr %i.ea, align 2, !tbaa !24
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.bny = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph.i509
  %scevgep.i510 = getelementptr i8, ptr %i.ea, i64 %i.bny
  %i.bnz = add nuw nsw i64 %indvars.iv58.i.lcssa.ph.i509, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i510, ptr noundef nonnull align 16 dereferenceable(1) %i.m, i64 range(i64 0, 23) %i.bnz, i1 false), !tbaa !20
  %i.boa = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph.i509
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.bnx, i8 0, i64 %i.boa, i1 false), !tbaa !20
  br label %addmag0.exit528

addmag0.exit528:                                  ; preds = %bb.gm, %.preheader.i.i502, %.lr.ph47.i.i507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #13
  br label %add.exit34

bb.gn:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #13
  %i.bob = sext i16 %i.bfs to i32                 ; 2 uses
  %i.boc = sext i16 %i.bfr to i32                 ; 3 uses
  %i.bod = sub nsw i32 %i.bob, %i.boc
  %i.boe = icmp slt i32 %i.bod, 10
  br i1 %i.boe, label %.lr.ph.i470, label %.lr.ph40.i442

.lr.ph.i470:                                      ; preds = %bb.gn
  %i.bof = sext i16 %i.bfs to i64
  %i.bog = sub nsw i32 0, %i.boc
  %i.boh = sext i32 %i.bog to i64
  %i.boi = add nsw i64 %i.bof, %i.boh             ; 2 uses
  %i.boj = add nsw i32 %i.boc, 10
  %i.bok = sub nsw i32 %i.boj, %i.bob             ; 5 uses
  %wide.trip.count.i471 = zext i32 %i.bok to i64  ; 2 uses
  %xtraiter1649 = and i64 %wide.trip.count.i471, 3 ; 3 uses
  %i.bol = add nsw i32 %i.bok, -1
  %i.bom = icmp ult i32 %i.bol, 3
  br i1 %i.bom, label %.epil.preheader1648, label %.lr.ph.i470.new

.lr.ph.i470.new:                                  ; preds = %.lr.ph.i470
  %unroll_iter1654 = and i64 %wide.trip.count.i471, 4294967292
  br label %bb.gp

.preheader.i478.unr-lcssa:                        ; preds = %bb.gp
  %lcmp.mod1651.not = icmp eq i64 %xtraiter1649, 0
  br i1 %lcmp.mod1651.not, label %.preheader.i478, label %.epil.preheader1648

.epil.preheader1648:                              ; preds = %.preheader.i478.unr-lcssa, %.lr.ph.i470
  %indvars.iv51.i472.epil.init = phi i64 [ 0, %.lr.ph.i470 ], [ %indvars.iv.next52.i475.3, %.preheader.i478.unr-lcssa ]
  %indvars.iv.i473.epil.init = phi i64 [ %i.boi, %.lr.ph.i470 ], [ %indvars.iv.next.i476.3, %.preheader.i478.unr-lcssa ]
  %.036.i474.epil.init = phi i64 [ 0, %.lr.ph.i470 ], [ %i.bre, %.preheader.i478.unr-lcssa ]
  %lcmp.mod1653 = icmp ne i64 %xtraiter1649, 0
  tail call void @llvm.assume(i1 %lcmp.mod1653)
  br label %bb.go

bb.go:                                            ; preds = %bb.go, %.epil.preheader1648
  %indvars.iv51.i472.epil = phi i64 [ %indvars.iv51.i472.epil.init, %.epil.preheader1648 ], [ %indvars.iv.next52.i475.epil, %bb.go ] ; 3 uses
  %indvars.iv.i473.epil = phi i64 [ %indvars.iv.i473.epil.init, %.epil.preheader1648 ], [ %indvars.iv.next.i476.epil, %bb.go ] ; 2 uses
  %.036.i474.epil = phi i64 [ %.036.i474.epil.init, %.epil.preheader1648 ], [ %i.box, %bb.go ]
  %epil.iter1650 = phi i64 [ 0, %.epil.preheader1648 ], [ %epil.iter1650.next, %bb.go ]
  %i.bon = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv51.i472.epil
  %i.boo = load i16, ptr %i.bon, align 2, !tbaa !20
  %i.bop = zext i16 %i.boo to i64
  %i.boq = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %indvars.iv.i473.epil
  %i.bor = load i16, ptr %i.boq, align 2, !tbaa !20
  %i.bos = zext i16 %i.bor to i64
  %i.bot = add nuw nsw i64 %.036.i474.epil, %i.bop
  %i.bou = add nuw nsw i64 %i.bot, %i.bos         ; 2 uses
  %i.bov = trunc i64 %i.bou to i16
  %i.bow = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv51.i472.epil
  store i16 %i.bov, ptr %i.bow, align 2, !tbaa !20
  %i.box = lshr i64 %i.bou, 16                    ; 2 uses
  %indvars.iv.next52.i475.epil = add nuw nsw i64 %indvars.iv51.i472.epil, 1
  %indvars.iv.next.i476.epil = add nsw i64 %indvars.iv.i473.epil, 1
  %epil.iter1650.next = add i64 %epil.iter1650, 1 ; 2 uses
  %epil.iter1650.cmp.not = icmp eq i64 %epil.iter1650.next, %xtraiter1649
  br i1 %epil.iter1650.cmp.not, label %.preheader.i478, label %bb.go, !llvm.loop !72

.preheader.i478:                                  ; preds = %bb.go, %.preheader.i478.unr-lcssa
  %.lcssa1503 = phi i64 [ %i.bre, %.preheader.i478.unr-lcssa ], [ %i.box, %bb.go ] ; 2 uses
  %i.boy = icmp samesign ult i32 %i.bok, 10
  br i1 %i.boy, label %.lr.ph40.i442, label %._crit_edge.i449

.lr.ph40.i442:                                    ; preds = %bb.gn, %.preheader.i478
  %.0.lcssa94.i443 = phi i64 [ %.lcssa1503, %.preheader.i478 ], [ 0, %bb.gn ] ; 2 uses
  %.027.lcssa93.i444 = phi i32 [ %i.bok, %.preheader.i478 ], [ 0, %bb.gn ] ; 2 uses
  %i.boz = zext nneg i32 %.027.lcssa93.i444 to i64 ; 3 uses
  %i.bpa = sub nsw i64 2, %i.boz
  %xtraiter1658 = and i64 %i.bpa, 7               ; 2 uses
  %lcmp.mod1659.not = icmp eq i64 %xtraiter1658, 0
  br i1 %lcmp.mod1659.not, label %.prol.loopexit1657, label %.prol.preheader1656

.prol.preheader1656:                              ; preds = %.lr.ph40.i442, %.prol.preheader1656
  %indvars.iv56.i445.prol = phi i64 [ %indvars.iv.next57.i447.prol, %.prol.preheader1656 ], [ %i.boz, %.lr.ph40.i442 ] ; 3 uses
  %.139.i446.prol = phi i64 [ %i.bph, %.prol.preheader1656 ], [ %.0.lcssa94.i443, %.lr.ph40.i442 ]
  %prol.iter1660 = phi i64 [ %prol.iter1660.next, %.prol.preheader1656 ], [ 0, %.lr.ph40.i442 ]
  %i.bpb = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv56.i445.prol
  %i.bpc = load i16, ptr %i.bpb, align 2, !tbaa !20
  %i.bpd = zext i16 %i.bpc to i64
  %i.bpe = add nuw nsw i64 %.139.i446.prol, %i.bpd ; 2 uses
  %i.bpf = trunc i64 %i.bpe to i16
  %i.bpg = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv56.i445.prol
  store i16 %i.bpf, ptr %i.bpg, align 2, !tbaa !20
  %i.bph = lshr i64 %i.bpe, 16                    ; 3 uses
  %indvars.iv.next57.i447.prol = add nuw nsw i64 %indvars.iv56.i445.prol, 1 ; 2 uses
  %prol.iter1660.next = add i64 %prol.iter1660, 1 ; 2 uses
  %prol.iter1660.cmp.not = icmp eq i64 %prol.iter1660.next, %xtraiter1658
  br i1 %prol.iter1660.cmp.not, label %.prol.loopexit1657, label %.prol.preheader1656, !llvm.loop !73

.prol.loopexit1657:                               ; preds = %.prol.preheader1656, %.lr.ph40.i442
  %.lcssa1504.unr = phi i64 [ poison, %.lr.ph40.i442 ], [ %i.bph, %.prol.preheader1656 ]
  %indvars.iv56.i445.unr = phi i64 [ %i.boz, %.lr.ph40.i442 ], [ %indvars.iv.next57.i447.prol, %.prol.preheader1656 ]
  %.139.i446.unr = phi i64 [ %.0.lcssa94.i443, %.lr.ph40.i442 ], [ %i.bph, %.prol.preheader1656 ]
  %i.bpi = add nsw i32 %.027.lcssa93.i444, -3
  %i.bpj = icmp ult i32 %i.bpi, 7
  br i1 %i.bpj, label %._crit_edge.i449, label %.lr.ph40.i442.new

bb.gp:                                            ; preds = %bb.gp, %.lr.ph.i470.new
  %indvars.iv51.i472 = phi i64 [ 0, %.lr.ph.i470.new ], [ %indvars.iv.next52.i475.3, %bb.gp ] ; 6 uses
  %indvars.iv.i473 = phi i64 [ %i.boi, %.lr.ph.i470.new ], [ %indvars.iv.next.i476.3, %bb.gp ] ; 5 uses
  %.036.i474 = phi i64 [ 0, %.lr.ph.i470.new ], [ %i.bre, %bb.gp ]
  %niter1655 = phi i64 [ 0, %.lr.ph.i470.new ], [ %niter1655.next.3, %bb.gp ]
  %i.bpk = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv51.i472
  %i.bpl = load i16, ptr %i.bpk, align 4, !tbaa !20
  %i.bpm = zext i16 %i.bpl to i64
  %i.bpn = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %indvars.iv.i473
  %i.bpo = load i16, ptr %i.bpn, align 2, !tbaa !20
  %i.bpp = zext i16 %i.bpo to i64
  %i.bpq = add nuw nsw i64 %.036.i474, %i.bpm
  %i.bpr = add nuw nsw i64 %i.bpq, %i.bpp         ; 2 uses
  %i.bps = trunc i64 %i.bpr to i16
  %i.bpt = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv51.i472
  store i16 %i.bps, ptr %i.bpt, align 8, !tbaa !20
  %i.bpu = lshr i64 %i.bpr, 16
  %indvars.iv.next52.i475 = or disjoint i64 %indvars.iv51.i472, 1 ; 2 uses
  %i.bpv = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next52.i475
  %i.bpw = load i16, ptr %i.bpv, align 2, !tbaa !20
  %i.bpx = zext i16 %i.bpw to i64
  %i.bpy = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i473
  %i.bpz = getelementptr i8, ptr %i.bpy, i64 2
  %i.bqa = load i16, ptr %i.bpz, align 2, !tbaa !20
  %i.bqb = zext i16 %i.bqa to i64
  %i.bqc = add nuw nsw i64 %i.bpu, %i.bpx
  %i.bqd = add nuw nsw i64 %i.bqc, %i.bqb         ; 2 uses
  %i.bqe = trunc i64 %i.bqd to i16
  %i.bqf = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next52.i475
  store i16 %i.bqe, ptr %i.bqf, align 2, !tbaa !20
  %i.bqg = lshr i64 %i.bqd, 16
  %indvars.iv.next52.i475.1 = or disjoint i64 %indvars.iv51.i472, 2 ; 2 uses
  %i.bqh = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next52.i475.1
  %i.bqi = load i16, ptr %i.bqh, align 8, !tbaa !20
  %i.bqj = zext i16 %i.bqi to i64
  %i.bqk = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i473
  %i.bql = getelementptr i8, ptr %i.bqk, i64 4
  %i.bqm = load i16, ptr %i.bql, align 2, !tbaa !20
  %i.bqn = zext i16 %i.bqm to i64
  %i.bqo = add nuw nsw i64 %i.bqg, %i.bqj
  %i.bqp = add nuw nsw i64 %i.bqo, %i.bqn         ; 2 uses
  %i.bqq = trunc i64 %i.bqp to i16
  %i.bqr = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next52.i475.1
  store i16 %i.bqq, ptr %i.bqr, align 4, !tbaa !20
  %i.bqs = lshr i64 %i.bqp, 16
  %indvars.iv.next52.i475.2 = or disjoint i64 %indvars.iv51.i472, 3 ; 2 uses
  %i.bqt = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next52.i475.2
  %i.bqu = load i16, ptr %i.bqt, align 2, !tbaa !20
  %i.bqv = zext i16 %i.bqu to i64
  %i.bqw = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i473
  %i.bqx = getelementptr i8, ptr %i.bqw, i64 6
  %i.bqy = load i16, ptr %i.bqx, align 2, !tbaa !20
  %i.bqz = zext i16 %i.bqy to i64
  %i.bra = add nuw nsw i64 %i.bqs, %i.bqv
  %i.brb = add nuw nsw i64 %i.bra, %i.bqz         ; 2 uses
  %i.brc = trunc i64 %i.brb to i16
  %i.brd = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next52.i475.2
  store i16 %i.brc, ptr %i.brd, align 2, !tbaa !20
  %i.bre = lshr i64 %i.brb, 16                    ; 3 uses
  %indvars.iv.next52.i475.3 = add nuw nsw i64 %indvars.iv51.i472, 4 ; 2 uses
  %indvars.iv.next.i476.3 = add nsw i64 %indvars.iv.i473, 4 ; 2 uses
  %niter1655.next.3 = add i64 %niter1655, 4       ; 2 uses
  %niter1655.ncmp.3 = icmp eq i64 %niter1655.next.3, %unroll_iter1654
  br i1 %niter1655.ncmp.3, label %.preheader.i478.unr-lcssa, label %bb.gp, !llvm.loop !5

.lr.ph40.i442.new:                                ; preds = %.prol.loopexit1657, %.lr.ph40.i442.new
  %indvars.iv56.i445 = phi i64 [ %indvars.iv.next57.i447.7, %.lr.ph40.i442.new ], [ %indvars.iv56.i445.unr, %.prol.loopexit1657 ] ; 10 uses
  %.139.i446 = phi i64 [ %i.bti, %.lr.ph40.i442.new ], [ %.139.i446.unr, %.prol.loopexit1657 ]
  %i.brf = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv56.i445
  %i.brg = load i16, ptr %i.brf, align 2, !tbaa !20
  %i.brh = zext i16 %i.brg to i64
  %i.bri = add nuw nsw i64 %.139.i446, %i.brh     ; 2 uses
  %i.brj = trunc i64 %i.bri to i16
  %i.brk = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv56.i445
  store i16 %i.brj, ptr %i.brk, align 2, !tbaa !20
  %i.brl = lshr i64 %i.bri, 16
  %indvars.iv.next57.i447 = add nuw nsw i64 %indvars.iv56.i445, 1 ; 2 uses
  %i.brm = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i447
  %i.brn = load i16, ptr %i.brm, align 2, !tbaa !20
  %i.bro = zext i16 %i.brn to i64
  %i.brp = add nuw nsw i64 %i.brl, %i.bro         ; 2 uses
  %i.brq = trunc i64 %i.brp to i16
  %i.brr = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next57.i447
  store i16 %i.brq, ptr %i.brr, align 2, !tbaa !20
  %i.brs = lshr i64 %i.brp, 16
  %indvars.iv.next57.i447.1 = add nuw nsw i64 %indvars.iv56.i445, 2 ; 2 uses
  %i.brt = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i447.1
  %i.bru = load i16, ptr %i.brt, align 2, !tbaa !20
  %i.brv = zext i16 %i.bru to i64
  %i.brw = add nuw nsw i64 %i.brs, %i.brv         ; 2 uses
  %i.brx = trunc i64 %i.brw to i16
  %i.bry = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next57.i447.1
  store i16 %i.brx, ptr %i.bry, align 2, !tbaa !20
  %i.brz = lshr i64 %i.brw, 16
  %indvars.iv.next57.i447.2 = add nuw nsw i64 %indvars.iv56.i445, 3 ; 2 uses
  %i.bsa = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i447.2
  %i.bsb = load i16, ptr %i.bsa, align 2, !tbaa !20
  %i.bsc = zext i16 %i.bsb to i64
  %i.bsd = add nuw nsw i64 %i.brz, %i.bsc         ; 2 uses
  %i.bse = trunc i64 %i.bsd to i16
  %i.bsf = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next57.i447.2
  store i16 %i.bse, ptr %i.bsf, align 2, !tbaa !20
  %i.bsg = lshr i64 %i.bsd, 16
  %indvars.iv.next57.i447.3 = add nuw nsw i64 %indvars.iv56.i445, 4 ; 2 uses
  %i.bsh = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i447.3
  %i.bsi = load i16, ptr %i.bsh, align 2, !tbaa !20
  %i.bsj = zext i16 %i.bsi to i64
  %i.bsk = add nuw nsw i64 %i.bsg, %i.bsj         ; 2 uses
  %i.bsl = trunc i64 %i.bsk to i16
  %i.bsm = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next57.i447.3
  store i16 %i.bsl, ptr %i.bsm, align 2, !tbaa !20
  %i.bsn = lshr i64 %i.bsk, 16
  %indvars.iv.next57.i447.4 = add nuw nsw i64 %indvars.iv56.i445, 5 ; 2 uses
  %i.bso = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i447.4
  %i.bsp = load i16, ptr %i.bso, align 2, !tbaa !20
  %i.bsq = zext i16 %i.bsp to i64
  %i.bsr = add nuw nsw i64 %i.bsn, %i.bsq         ; 2 uses
  %i.bss = trunc i64 %i.bsr to i16
  %i.bst = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next57.i447.4
  store i16 %i.bss, ptr %i.bst, align 2, !tbaa !20
  %i.bsu = lshr i64 %i.bsr, 16
  %indvars.iv.next57.i447.5 = add nuw nsw i64 %indvars.iv56.i445, 6 ; 2 uses
  %i.bsv = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i447.5
  %i.bsw = load i16, ptr %i.bsv, align 2, !tbaa !20
  %i.bsx = zext i16 %i.bsw to i64
  %i.bsy = add nuw nsw i64 %i.bsu, %i.bsx         ; 2 uses
  %i.bsz = trunc i64 %i.bsy to i16
  %i.bta = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next57.i447.5
  store i16 %i.bsz, ptr %i.bta, align 2, !tbaa !20
  %i.btb = lshr i64 %i.bsy, 16
  %indvars.iv.next57.i447.6 = add nuw nsw i64 %indvars.iv56.i445, 7 ; 2 uses
  %i.btc = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i447.6
  %i.btd = load i16, ptr %i.btc, align 2, !tbaa !20
  %i.bte = zext i16 %i.btd to i64
  %i.btf = add nuw nsw i64 %i.btb, %i.bte         ; 2 uses
  %i.btg = trunc i64 %i.btf to i16
  %i.bth = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next57.i447.6
  store i16 %i.btg, ptr %i.bth, align 2, !tbaa !20
  %i.bti = lshr i64 %i.btf, 16                    ; 2 uses
  %indvars.iv.next57.i447.7 = add nuw nsw i64 %indvars.iv56.i445, 8 ; 2 uses
  %exitcond59.not.i448.7 = icmp eq i64 %indvars.iv.next57.i447.7, 10
  br i1 %exitcond59.not.i448.7, label %._crit_edge.i449, label %.lr.ph40.i442.new, !llvm.loop !6

._crit_edge.i449:                                 ; preds = %.prol.loopexit1657, %.lr.ph40.i442.new, %.preheader.i478
  %.128.lcssa.i450 = phi i32 [ %i.bok, %.preheader.i478 ], [ 10, %.lr.ph40.i442.new ], [ 10, %.prol.loopexit1657 ]
  %.1.lcssa.i451 = phi i64 [ %.lcssa1503, %.preheader.i478 ], [ %.lcssa1504.unr, %.prol.loopexit1657 ], [ %i.bti, %.lr.ph40.i442.new ]
  %i.btj = trunc nuw nsw i64 %.1.lcssa.i451 to i16
  %i.btk = zext nneg i32 %.128.lcssa.i450 to i64
  %i.btl = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.btk
  store i16 %i.btj, ptr %i.btl, align 2, !tbaa !20
  %i.btm = add i16 %i.bfs, 1
  %i.btn = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep.i431, align 4, !tbaa !20 ; 2 uses
  %.not.i.i452 = icmp eq i16 %i.btn, 0
  br i1 %.not.i.i452, label %bb.gq, label %.preheader.i.i453

bb.gq:                                            ; preds = %._crit_edge.i449
  %i.bto = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60.i432, align 2, !tbaa !20 ; 2 uses
  %.not.i.1.i456 = icmp eq i16 %i.bto, 0
  br i1 %.not.i.1.i456, label %bb.gr, label %.preheader.i.i453

bb.gr:                                            ; preds = %bb.gq
  %i.btp = add i16 %i.bfs, -1
  %i.btq = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61.i433, align 16, !tbaa !20
  %.not.i.2.i457 = icmp eq i16 %i.btq, 0
  br i1 %.not.i.2.i457, label %bb.gs, label %.lr.ph47.i.i458

bb.gs:                                            ; preds = %bb.gr
  %i.btr = add i16 %i.bfs, -2
  %i.bts = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep62.i434, align 2, !tbaa !20
  %.not.i.3.i462 = icmp eq i16 %i.bts, 0
  br i1 %.not.i.3.i462, label %bb.gt, label %.lr.ph47.i.i458

bb.gt:                                            ; preds = %bb.gs
  %i.btt = add i16 %i.bfs, -3
  %i.btu = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep63.i435, align 4, !tbaa !20
  %.not.i.4.i463 = icmp eq i16 %i.btu, 0
  br i1 %.not.i.4.i463, label %bb.gu, label %.lr.ph47.i.i458

bb.gu:                                            ; preds = %bb.gt
  %i.btv = add i16 %i.bfs, -4
  %i.btw = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep64.i436, align 2, !tbaa !20
  %.not.i.5.i464 = icmp eq i16 %i.btw, 0
  br i1 %.not.i.5.i464, label %bb.gv, label %.lr.ph47.i.i458

bb.gv:                                            ; preds = %bb.gu
  %i.btx = add i16 %i.bfs, -5
  %i.bty = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep65.i437, align 8, !tbaa !20
  %.not.i.6.i465 = icmp eq i16 %i.bty, 0
  br i1 %.not.i.6.i465, label %bb.gw, label %.lr.ph47.i.i458

bb.gw:                                            ; preds = %bb.gv
  %i.btz = add i16 %i.bfs, -6
  %i.bua = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep66.i438, align 2, !tbaa !20
  %.not.i.7.i466 = icmp eq i16 %i.bua, 0
  br i1 %.not.i.7.i466, label %bb.gx, label %.lr.ph47.i.i458

bb.gx:                                            ; preds = %bb.gw
  %i.bub = add i16 %i.bfs, -7
  %i.buc = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep67.i439, align 4, !tbaa !20
  %.not.i.8.i467 = icmp eq i16 %i.buc, 0
  br i1 %.not.i.8.i467, label %bb.gy, label %.lr.ph47.i.i458

bb.gy:                                            ; preds = %bb.gx
  %i.bud = add i16 %i.bfs, -8
  %i.bue = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep68.i440, align 2, !tbaa !20
  %.not.i.9.i468 = icmp eq i16 %i.bue, 0
  br i1 %.not.i.9.i468, label %bb.gz, label %.lr.ph47.i.i458

bb.gz:                                            ; preds = %bb.gy
  %i.buf = add i16 %i.bfs, -9
  %i.bug = load i16, ptr %i.n, align 16, !tbaa !20
  %.not.i.10.i469 = icmp eq i16 %i.bug, 0
  br i1 %.not.i.10.i469, label %bb.ha, label %.lr.ph47.i.i458

bb.ha:                                            ; preds = %bb.gz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ea, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %addmag0.exit479

.preheader.i.i453:                                ; preds = %bb.gq, %._crit_edge.i449
  %i.buh = phi i16 [ %i.btn, %._crit_edge.i449 ], [ %i.bto, %bb.gq ]
  %indvars.iv72.in.i.lcssa.sroa.phi.i454 = phi ptr [ %indvars.iv72.in.i.lcssa.sroa.gep.i441, %._crit_edge.i449 ], [ %indvars.iv72.i.lcssa.sroa.gep.i431, %bb.gq ] ; 2 uses
  %.03341.i.lcssa.i455 = phi i16 [ %i.btm, %._crit_edge.i449 ], [ %i.bfs, %bb.gq ]
  %i.bui = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store i16 %.03341.i.lcssa.i455, ptr %i.bui, align 2, !tbaa !26
  store i16 %i.bfo, ptr %i.ea, align 2, !tbaa !24
  %i.buj = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.buk = getelementptr inbounds nuw i8, ptr %i.ea, i64 22
  store i16 %i.buh, ptr %i.buk, align 2, !tbaa !20
  %i.bul = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.i454, i64 -4
  %i.bum = load i16, ptr %i.bul, align 2, !tbaa !20
  %i.bun = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  store i16 %i.bum, ptr %i.bun, align 2, !tbaa !20
  %i.buo = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.i454, i64 -20
  %i.bup = load <8 x i16>, ptr %i.buo, align 2, !tbaa !20
  store <8 x i16> %i.bup, ptr %i.buj, align 2, !tbaa !20
  br label %addmag0.exit479

.lr.ph47.i.i458:                                  ; preds = %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr
  %.03341.i.lcssa.ph.i459 = phi i16 [ %i.buf, %bb.gz ], [ %i.bud, %bb.gy ], [ %i.bub, %bb.gx ], [ %i.btz, %bb.gw ], [ %i.btx, %bb.gv ], [ %i.btv, %bb.gu ], [ %i.btt, %bb.gt ], [ %i.btr, %bb.gs ], [ %i.btp, %bb.gr ]
  %indvars.iv58.i.lcssa.ph.i460 = phi i64 [ 0, %bb.gz ], [ 2, %bb.gy ], [ 4, %bb.gx ], [ 6, %bb.gw ], [ 8, %bb.gv ], [ 10, %bb.gu ], [ 12, %bb.gt ], [ 14, %bb.gs ], [ 16, %bb.gr ] ; 3 uses
  %i.buq = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store i16 %.03341.i.lcssa.ph.i459, ptr %i.buq, align 2, !tbaa !26
  store i16 %i.bfo, ptr %i.ea, align 2, !tbaa !24
  %i.bur = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.bus = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph.i460
  %scevgep.i461 = getelementptr i8, ptr %i.ea, i64 %i.bus
  %i.but = add nuw nsw i64 %indvars.iv58.i.lcssa.ph.i460, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i461, ptr noundef nonnull align 16 dereferenceable(1) %i.n, i64 range(i64 0, 23) %i.but, i1 false), !tbaa !20
  %i.buu = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph.i460
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.bur, i8 0, i64 %i.buu, i1 false), !tbaa !20
  br label %addmag0.exit479

addmag0.exit479:                                  ; preds = %bb.ha, %.preheader.i.i453, %.lr.ph47.i.i458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #13
  br label %add.exit34

bb.hb:                                            ; preds = %abscmp.exit532
  br i1 %.014.i531, label %bb.hc, label %bb.hp

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #13
  %i.buv = sext i16 %i.bfr to i32                 ; 2 uses
  %i.buw = sext i16 %i.bfs to i32                 ; 3 uses
  %i.bux = sub nsw i32 %i.buv, %i.buw
  %i.buy = icmp slt i32 %i.bux, 10
  br i1 %i.buy, label %.lr.ph.i421, label %.lr.ph38.i398

.lr.ph.i421:                                      ; preds = %bb.hc
  %i.buz = sext i16 %i.bfr to i64
  %i.bva = sub nsw i32 0, %i.buw
  %i.bvb = sext i32 %i.bva to i64
  %i.bvc = add nsw i64 %i.bvb, %i.buz             ; 2 uses
  %reass.sub1163 = sub nsw i32 %i.buw, %i.buv     ; 3 uses
  %i.bvd = add nsw i32 %reass.sub1163, 10         ; 2 uses
  %wide.trip.count.i422 = zext i32 %i.bvd to i64  ; 2 uses
  %xtraiter1636 = and i64 %wide.trip.count.i422, 3 ; 3 uses
  %i.bve = add nsw i32 %reass.sub1163, 9
  %i.bvf = icmp ult i32 %i.bve, 3
  br i1 %i.bvf, label %.epil.preheader1635, label %.lr.ph.i421.new

.lr.ph.i421.new:                                  ; preds = %.lr.ph.i421
  %unroll_iter1641 = and i64 %wide.trip.count.i422, 4294967292
  br label %bb.he

.preheader.i429.unr-lcssa:                        ; preds = %bb.he
  %lcmp.mod1638.not = icmp eq i64 %xtraiter1636, 0
  br i1 %lcmp.mod1638.not, label %.preheader.i429, label %.epil.preheader1635

.epil.preheader1635:                              ; preds = %.preheader.i429.unr-lcssa, %.lr.ph.i421
  %indvars.iv45.i423.epil.init = phi i64 [ 0, %.lr.ph.i421 ], [ %indvars.iv.next46.i426.3, %.preheader.i429.unr-lcssa ]
  %indvars.iv.i424.epil.init = phi i64 [ %i.bvc, %.lr.ph.i421 ], [ %indvars.iv.next.i427.3, %.preheader.i429.unr-lcssa ]
  %.034.i425.epil.init = phi i64 [ 0, %.lr.ph.i421 ], [ %i.byj, %.preheader.i429.unr-lcssa ]
  %lcmp.mod1640 = icmp ne i64 %xtraiter1636, 0
  tail call void @llvm.assume(i1 %lcmp.mod1640)
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hd, %.epil.preheader1635
  %indvars.iv45.i423.epil = phi i64 [ %indvars.iv45.i423.epil.init, %.epil.preheader1635 ], [ %indvars.iv.next46.i426.epil, %bb.hd ] ; 3 uses
  %indvars.iv.i424.epil = phi i64 [ %indvars.iv.i424.epil.init, %.epil.preheader1635 ], [ %indvars.iv.next.i427.epil, %bb.hd ] ; 2 uses
  %.034.i425.epil = phi i64 [ %.034.i425.epil.init, %.epil.preheader1635 ], [ %i.bvs, %bb.hd ]
  %epil.iter1637 = phi i64 [ 0, %.epil.preheader1635 ], [ %epil.iter1637.next, %bb.hd ]
  %i.bvg = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv45.i423.epil
  %i.bvh = load i16, ptr %i.bvg, align 2, !tbaa !20
  %i.bvi = zext i16 %i.bvh to i64
  %i.bvj = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %indvars.iv.i424.epil
  %i.bvk = load i16, ptr %i.bvj, align 2, !tbaa !20
  %i.bvl = zext i16 %i.bvk to i64
  %i.bvm = sub nsw i64 %i.bvi, %i.bvl
  %i.bvn = add nsw i64 %i.bvm, %.034.i425.epil    ; 2 uses
  %i.bvo = trunc i64 %i.bvn to i16
  %i.bvp = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv45.i423.epil
  store i16 %i.bvo, ptr %i.bvp, align 2, !tbaa !20
  %i.bvq = add nsw i64 %i.bvn, 2147483648
  %i.bvr = lshr i64 %i.bvq, 16
  %i.bvs = add nsw i64 %i.bvr, -32768             ; 2 uses
  %indvars.iv.next46.i426.epil = add nuw nsw i64 %indvars.iv45.i423.epil, 1
  %indvars.iv.next.i427.epil = add nsw i64 %indvars.iv.i424.epil, 1
  %epil.iter1637.next = add i64 %epil.iter1637, 1 ; 2 uses
  %epil.iter1637.cmp.not = icmp eq i64 %epil.iter1637.next, %xtraiter1636
  br i1 %epil.iter1637.cmp.not, label %.preheader.i429, label %bb.hd, !llvm.loop !74

.preheader.i429:                                  ; preds = %bb.hd, %.preheader.i429.unr-lcssa
  %.lcssa1502 = phi i64 [ %i.byj, %.preheader.i429.unr-lcssa ], [ %i.bvs, %bb.hd ]
  %i.bvt = icmp slt i32 %reass.sub1163, 0
  br i1 %i.bvt, label %.lr.ph38.i398, label %._crit_edge.i405

.lr.ph38.i398:                                    ; preds = %bb.hc, %.preheader.i429
  %.0.lcssa85.i399 = phi i64 [ %.lcssa1502, %.preheader.i429 ], [ 0, %bb.hc ] ; 2 uses
  %.025.lcssa84.i400 = phi i32 [ %i.bvd, %.preheader.i429 ], [ 0, %bb.hc ] ; 2 uses
  %i.bvu = zext i32 %.025.lcssa84.i400 to i64     ; 3 uses
  %i.bvv = sub nsw i64 2, %i.bvu
  %xtraiter1645 = and i64 %i.bvv, 3               ; 2 uses
  %lcmp.mod1646.not = icmp eq i64 %xtraiter1645, 0
  br i1 %lcmp.mod1646.not, label %.prol.loopexit1644, label %.prol.preheader1643

.prol.preheader1643:                              ; preds = %.lr.ph38.i398, %.prol.preheader1643
  %indvars.iv50.i401.prol = phi i64 [ %indvars.iv.next51.i403.prol, %.prol.preheader1643 ], [ %i.bvu, %.lr.ph38.i398 ] ; 3 uses
  %.137.i402.prol = phi i64 [ %i.bwe, %.prol.preheader1643 ], [ %.0.lcssa85.i399, %.lr.ph38.i398 ]
  %prol.iter1647 = phi i64 [ %prol.iter1647.next, %.prol.preheader1643 ], [ 0, %.lr.ph38.i398 ]
  %i.bvw = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv50.i401.prol
  %i.bvx = load i16, ptr %i.bvw, align 2, !tbaa !20
  %i.bvy = zext i16 %i.bvx to i64
  %i.bvz = add nsw i64 %.137.i402.prol, %i.bvy    ; 2 uses
  %i.bwa = trunc i64 %i.bvz to i16
  %i.bwb = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv50.i401.prol
  store i16 %i.bwa, ptr %i.bwb, align 2, !tbaa !20
  %i.bwc = add nsw i64 %i.bvz, 2147483648
  %i.bwd = lshr i64 %i.bwc, 16
  %i.bwe = add nsw i64 %i.bwd, -32768             ; 2 uses
  %indvars.iv.next51.i403.prol = add nuw nsw i64 %indvars.iv50.i401.prol, 1 ; 2 uses
  %prol.iter1647.next = add i64 %prol.iter1647, 1 ; 2 uses
  %prol.iter1647.cmp.not = icmp eq i64 %prol.iter1647.next, %xtraiter1645
  br i1 %prol.iter1647.cmp.not, label %.prol.loopexit1644, label %.prol.preheader1643, !llvm.loop !75

.prol.loopexit1644:                               ; preds = %.prol.preheader1643, %.lr.ph38.i398
  %indvars.iv50.i401.unr = phi i64 [ %i.bvu, %.lr.ph38.i398 ], [ %indvars.iv.next51.i403.prol, %.prol.preheader1643 ]
  %.137.i402.unr = phi i64 [ %.0.lcssa85.i399, %.lr.ph38.i398 ], [ %i.bwe, %.prol.preheader1643 ]
  %i.bwf = add nsw i32 %.025.lcssa84.i400, -7
  %i.bwg = icmp ult i32 %i.bwf, 3
  br i1 %i.bwg, label %._crit_edge.i405, label %.lr.ph38.i398.new

bb.he:                                            ; preds = %bb.he, %.lr.ph.i421.new
  %indvars.iv45.i423 = phi i64 [ 0, %.lr.ph.i421.new ], [ %indvars.iv.next46.i426.3, %bb.he ] ; 6 uses
  %indvars.iv.i424 = phi i64 [ %i.bvc, %.lr.ph.i421.new ], [ %indvars.iv.next.i427.3, %bb.he ] ; 5 uses
  %.034.i425 = phi i64 [ 0, %.lr.ph.i421.new ], [ %i.byj, %bb.he ]
  %niter1642 = phi i64 [ 0, %.lr.ph.i421.new ], [ %niter1642.next.3, %bb.he ]
  %i.bwh = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv45.i423
  %i.bwi = load i16, ptr %i.bwh, align 4, !tbaa !20
  %i.bwj = zext i16 %i.bwi to i64
  %i.bwk = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %indvars.iv.i424
  %i.bwl = load i16, ptr %i.bwk, align 2, !tbaa !20
  %i.bwm = zext i16 %i.bwl to i64
  %i.bwn = sub nsw i64 %i.bwj, %i.bwm
  %i.bwo = add nsw i64 %i.bwn, %.034.i425         ; 2 uses
  %i.bwp = trunc i64 %i.bwo to i16
  %i.bwq = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv45.i423
  store i16 %i.bwp, ptr %i.bwq, align 8, !tbaa !20
  %i.bwr = add nsw i64 %i.bwo, 2147483648
  %i.bws = lshr i64 %i.bwr, 16
  %i.bwt = add nsw i64 %i.bws, -32768
  %indvars.iv.next46.i426 = or disjoint i64 %indvars.iv45.i423, 1 ; 2 uses
  %i.bwu = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next46.i426
  %i.bwv = load i16, ptr %i.bwu, align 2, !tbaa !20
  %i.bww = zext i16 %i.bwv to i64
  %i.bwx = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv.i424
  %i.bwy = getelementptr i8, ptr %i.bwx, i64 2
  %i.bwz = load i16, ptr %i.bwy, align 2, !tbaa !20
  %i.bxa = zext i16 %i.bwz to i64
  %i.bxb = sub nsw i64 %i.bww, %i.bxa
  %i.bxc = add nsw i64 %i.bxb, %i.bwt             ; 2 uses
  %i.bxd = trunc i64 %i.bxc to i16
  %i.bxe = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv.next46.i426
  store i16 %i.bxd, ptr %i.bxe, align 2, !tbaa !20
  %i.bxf = add nsw i64 %i.bxc, 2147483648
  %i.bxg = lshr i64 %i.bxf, 16
  %i.bxh = add nsw i64 %i.bxg, -32768
  %indvars.iv.next46.i426.1 = or disjoint i64 %indvars.iv45.i423, 2 ; 2 uses
  %i.bxi = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next46.i426.1
  %i.bxj = load i16, ptr %i.bxi, align 8, !tbaa !20
  %i.bxk = zext i16 %i.bxj to i64
  %i.bxl = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv.i424
  %i.bxm = getelementptr i8, ptr %i.bxl, i64 4
  %i.bxn = load i16, ptr %i.bxm, align 2, !tbaa !20
  %i.bxo = zext i16 %i.bxn to i64
  %i.bxp = sub nsw i64 %i.bxk, %i.bxo
  %i.bxq = add nsw i64 %i.bxp, %i.bxh             ; 2 uses
  %i.bxr = trunc i64 %i.bxq to i16
  %i.bxs = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv.next46.i426.1
  store i16 %i.bxr, ptr %i.bxs, align 4, !tbaa !20
  %i.bxt = add nsw i64 %i.bxq, 2147483648
  %i.bxu = lshr i64 %i.bxt, 16
  %i.bxv = add nsw i64 %i.bxu, -32768
  %indvars.iv.next46.i426.2 = or disjoint i64 %indvars.iv45.i423, 3 ; 2 uses
  %i.bxw = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next46.i426.2
  %i.bxx = load i16, ptr %i.bxw, align 2, !tbaa !20
  %i.bxy = zext i16 %i.bxx to i64
  %i.bxz = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv.i424
  %i.bya = getelementptr i8, ptr %i.bxz, i64 6
  %i.byb = load i16, ptr %i.bya, align 2, !tbaa !20
  %i.byc = zext i16 %i.byb to i64
  %i.byd = sub nsw i64 %i.bxy, %i.byc
  %i.bye = add nsw i64 %i.byd, %i.bxv             ; 2 uses
  %i.byf = trunc i64 %i.bye to i16
  %i.byg = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv.next46.i426.2
  store i16 %i.byf, ptr %i.byg, align 2, !tbaa !20
  %i.byh = add nsw i64 %i.bye, 2147483648
  %i.byi = lshr i64 %i.byh, 16
  %i.byj = add nsw i64 %i.byi, -32768             ; 3 uses
  %indvars.iv.next46.i426.3 = add nuw nsw i64 %indvars.iv45.i423, 4 ; 2 uses
  %indvars.iv.next.i427.3 = add nsw i64 %indvars.iv.i424, 4 ; 2 uses
  %niter1642.next.3 = add i64 %niter1642, 4       ; 2 uses
  %niter1642.ncmp.3 = icmp eq i64 %niter1642.next.3, %unroll_iter1641
  br i1 %niter1642.ncmp.3, label %.preheader.i429.unr-lcssa, label %bb.he, !llvm.loop !3

.lr.ph38.i398.new:                                ; preds = %.prol.loopexit1644, %.lr.ph38.i398.new
  %indvars.iv50.i401 = phi i64 [ %indvars.iv.next51.i403.3, %.lr.ph38.i398.new ], [ %indvars.iv50.i401.unr, %.prol.loopexit1644 ] ; 6 uses
  %.137.i402 = phi i64 [ %i.bzt, %.lr.ph38.i398.new ], [ %.137.i402.unr, %.prol.loopexit1644 ]
  %i.byk = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv50.i401
  %i.byl = load i16, ptr %i.byk, align 2, !tbaa !20
  %i.bym = zext i16 %i.byl to i64
  %i.byn = add nsw i64 %.137.i402, %i.bym         ; 2 uses
  %i.byo = trunc i64 %i.byn to i16
  %i.byp = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv50.i401
  store i16 %i.byo, ptr %i.byp, align 2, !tbaa !20
  %i.byq = add nsw i64 %i.byn, 2147483648
  %i.byr = lshr i64 %i.byq, 16
  %i.bys = add nsw i64 %i.byr, -32768
  %indvars.iv.next51.i403 = add nuw nsw i64 %indvars.iv50.i401, 1 ; 2 uses
  %i.byt = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next51.i403
  %i.byu = load i16, ptr %i.byt, align 2, !tbaa !20
  %i.byv = zext i16 %i.byu to i64
  %i.byw = add nsw i64 %i.bys, %i.byv             ; 2 uses
  %i.byx = trunc i64 %i.byw to i16
  %i.byy = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv.next51.i403
  store i16 %i.byx, ptr %i.byy, align 2, !tbaa !20
  %i.byz = add nsw i64 %i.byw, 2147483648
  %i.bza = lshr i64 %i.byz, 16
  %i.bzb = add nsw i64 %i.bza, -32768
  %indvars.iv.next51.i403.1 = add nuw nsw i64 %indvars.iv50.i401, 2 ; 2 uses
  %i.bzc = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next51.i403.1
  %i.bzd = load i16, ptr %i.bzc, align 2, !tbaa !20
  %i.bze = zext i16 %i.bzd to i64
  %i.bzf = add nsw i64 %i.bzb, %i.bze             ; 2 uses
  %i.bzg = trunc i64 %i.bzf to i16
  %i.bzh = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv.next51.i403.1
  store i16 %i.bzg, ptr %i.bzh, align 2, !tbaa !20
  %i.bzi = add nsw i64 %i.bzf, 2147483648
  %i.bzj = lshr i64 %i.bzi, 16
  %i.bzk = add nsw i64 %i.bzj, -32768
  %indvars.iv.next51.i403.2 = add nuw nsw i64 %indvars.iv50.i401, 3 ; 2 uses
  %i.bzl = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next51.i403.2
  %i.bzm = load i16, ptr %i.bzl, align 2, !tbaa !20
  %i.bzn = zext i16 %i.bzm to i64
  %i.bzo = add nsw i64 %i.bzk, %i.bzn             ; 2 uses
  %i.bzp = trunc i64 %i.bzo to i16
  %i.bzq = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv.next51.i403.2
  store i16 %i.bzp, ptr %i.bzq, align 2, !tbaa !20
  %i.bzr = add nsw i64 %i.bzo, 2147483648
  %i.bzs = lshr i64 %i.bzr, 16
  %i.bzt = add nsw i64 %i.bzs, -32768
  %indvars.iv.next51.i403.3 = add nuw nsw i64 %indvars.iv50.i401, 4 ; 2 uses
  %exitcond53.not.i404.3 = icmp eq i64 %indvars.iv.next51.i403.3, 10
  br i1 %exitcond53.not.i404.3, label %._crit_edge.i405, label %.lr.ph38.i398.new, !llvm.loop !4

._crit_edge.i405:                                 ; preds = %.prol.loopexit1644, %.lr.ph38.i398.new, %.preheader.i429
  %i.bzu = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep.i389, align 2, !tbaa !20
  %.not.i.not.not.i406 = icmp eq i16 %i.bzu, 0
  br i1 %.not.i.not.not.i406, label %bb.hf, label %.preheader.i.i407

bb.hf:                                            ; preds = %._crit_edge.i405
  %i.bzv = add i16 %i.bfr, -1
  %i.bzw = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep54.i390, align 16, !tbaa !20
  %.not.i.1.i408 = icmp eq i16 %i.bzw, 0
  br i1 %.not.i.1.i408, label %bb.hg, label %.lr.ph47.i.i409

bb.hg:                                            ; preds = %bb.hf
  %i.bzx = add i16 %i.bfr, -2
  %i.bzy = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep55.i391, align 2, !tbaa !20
  %.not.i.2.i413 = icmp eq i16 %i.bzy, 0
  br i1 %.not.i.2.i413, label %bb.hh, label %.lr.ph47.i.i409

bb.hh:                                            ; preds = %bb.hg
  %i.bzz = add i16 %i.bfr, -3
  %i.caa = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep56.i392, align 4, !tbaa !20
  %.not.i.3.i414 = icmp eq i16 %i.caa, 0
  br i1 %.not.i.3.i414, label %bb.hi, label %.lr.ph47.i.i409

bb.hi:                                            ; preds = %bb.hh
  %i.cab = add i16 %i.bfr, -4
  %i.cac = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep57.i393, align 2, !tbaa !20
  %.not.i.4.i415 = icmp eq i16 %i.cac, 0
  br i1 %.not.i.4.i415, label %bb.hj, label %.lr.ph47.i.i409

bb.hj:                                            ; preds = %bb.hi
  %i.cad = add i16 %i.bfr, -5
  %i.cae = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep58.i394, align 8, !tbaa !20
  %.not.i.5.i416 = icmp eq i16 %i.cae, 0
  br i1 %.not.i.5.i416, label %bb.hk, label %.lr.ph47.i.i409

bb.hk:                                            ; preds = %bb.hj
  %i.caf = add i16 %i.bfr, -6
  %i.cag = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep59.i395, align 2, !tbaa !20
  %.not.i.6.i417 = icmp eq i16 %i.cag, 0
  br i1 %.not.i.6.i417, label %bb.hl, label %.lr.ph47.i.i409

bb.hl:                                            ; preds = %bb.hk
  %i.cah = add i16 %i.bfr, -7
  %i.cai = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60.i396, align 4, !tbaa !20
  %.not.i.7.i418 = icmp eq i16 %i.cai, 0
  br i1 %.not.i.7.i418, label %bb.hm, label %.lr.ph47.i.i409

bb.hm:                                            ; preds = %bb.hl
  %i.caj = add i16 %i.bfr, -8
  %i.cak = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61.i397, align 2, !tbaa !20
  %.not.i.8.i419 = icmp eq i16 %i.cak, 0
  br i1 %.not.i.8.i419, label %bb.hn, label %.lr.ph47.i.i409

bb.hn:                                            ; preds = %bb.hm
  %i.cal = add i16 %i.bfr, -9
  %i.cam = load i16, ptr %i.o, align 16, !tbaa !20
  %.not.i.9.i420 = icmp eq i16 %i.cam, 0
  br i1 %.not.i.9.i420, label %bb.ho, label %.lr.ph47.i.i409

bb.ho:                                            ; preds = %bb.hn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ea, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %submag0.exit430

.preheader.i.i407:                                ; preds = %._crit_edge.i405
  %i.can = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store i16 %i.bfr, ptr %i.can, align 2, !tbaa !26
  store i16 %i.bfo, ptr %i.ea, align 2, !tbaa !24
  %i.cao = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.cap = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  %i.caq = load <2 x i16>, ptr %indvars.iv72.i.lcssa.sroa.gep54.i390, align 16, !tbaa !20
  store <2 x i16> %i.caq, ptr %i.cap, align 2, !tbaa !20
  %i.car = load <8 x i16>, ptr %i.o, align 16, !tbaa !20
  store <8 x i16> %i.car, ptr %i.cao, align 2, !tbaa !20
  br label %submag0.exit430

.lr.ph47.i.i409:                                  ; preds = %bb.hn, %bb.hm, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf
  %.03341.i.lcssa.ph.i410 = phi i16 [ %i.cal, %bb.hn ], [ %i.caj, %bb.hm ], [ %i.cah, %bb.hl ], [ %i.caf, %bb.hk ], [ %i.cad, %bb.hj ], [ %i.cab, %bb.hi ], [ %i.bzz, %bb.hh ], [ %i.bzx, %bb.hg ], [ %i.bzv, %bb.hf ]
  %indvars.iv58.i.lcssa.ph.i411 = phi i64 [ 0, %bb.hn ], [ 2, %bb.hm ], [ 4, %bb.hl ], [ 6, %bb.hk ], [ 8, %bb.hj ], [ 10, %bb.hi ], [ 12, %bb.hh ], [ 14, %bb.hg ], [ 16, %bb.hf ] ; 3 uses
  %i.cas = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store i16 %.03341.i.lcssa.ph.i410, ptr %i.cas, align 2, !tbaa !26
  store i16 %i.bfo, ptr %i.ea, align 2, !tbaa !24
  %i.cat = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.cau = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph.i411
  %scevgep.i412 = getelementptr i8, ptr %i.ea, i64 %i.cau
  %i.cav = add nuw nsw i64 %indvars.iv58.i.lcssa.ph.i411, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i412, ptr noundef nonnull align 16 dereferenceable(1) %i.o, i64 range(i64 0, 21) %i.cav, i1 false), !tbaa !20
  %i.caw = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph.i411
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.cat, i8 0, i64 %i.caw, i1 false), !tbaa !20
  br label %submag0.exit430

submag0.exit430:                                  ; preds = %bb.ho, %.preheader.i.i407, %.lr.ph47.i.i409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #13
  br label %add.exit34

bb.hp:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #13
  %i.cax = sext i16 %i.bfs to i32                 ; 2 uses
  %i.cay = sext i16 %i.bfr to i32                 ; 3 uses
  %i.caz = sub nsw i32 %i.cax, %i.cay
  %i.cba = icmp slt i32 %i.caz, 10
  br i1 %i.cba, label %.lr.ph.i379, label %.lr.ph38.i356

.lr.ph.i379:                                      ; preds = %bb.hp
  %i.cbb = sext i16 %i.bfs to i64
  %i.cbc = sub nsw i32 0, %i.cay
  %i.cbd = sext i32 %i.cbc to i64
  %i.cbe = add nsw i64 %i.cbb, %i.cbd             ; 2 uses
  %i.cbf = add nsw i32 %i.cay, 10
  %i.cbg = sub nsw i32 %i.cbf, %i.cax             ; 4 uses
  %wide.trip.count.i380 = zext i32 %i.cbg to i64  ; 2 uses
  %xtraiter1623 = and i64 %wide.trip.count.i380, 3 ; 3 uses
  %i.cbh = add nsw i32 %i.cbg, -1
  %i.cbi = icmp ult i32 %i.cbh, 3
  br i1 %i.cbi, label %.epil.preheader1622, label %.lr.ph.i379.new

.lr.ph.i379.new:                                  ; preds = %.lr.ph.i379
  %unroll_iter1628 = and i64 %wide.trip.count.i380, 4294967292
  br label %bb.hr

.preheader.i387.unr-lcssa:                        ; preds = %bb.hr
  %lcmp.mod1625.not = icmp eq i64 %xtraiter1623, 0
  br i1 %lcmp.mod1625.not, label %.preheader.i387, label %.epil.preheader1622

.epil.preheader1622:                              ; preds = %.preheader.i387.unr-lcssa, %.lr.ph.i379
  %indvars.iv45.i381.epil.init = phi i64 [ 0, %.lr.ph.i379 ], [ %indvars.iv.next46.i384.3, %.preheader.i387.unr-lcssa ]
  %indvars.iv.i382.epil.init = phi i64 [ %i.cbe, %.lr.ph.i379 ], [ %indvars.iv.next.i385.3, %.preheader.i387.unr-lcssa ]
  %.034.i383.epil.init = phi i64 [ 0, %.lr.ph.i379 ], [ %i.cem, %.preheader.i387.unr-lcssa ]
  %lcmp.mod1627 = icmp ne i64 %xtraiter1623, 0
  tail call void @llvm.assume(i1 %lcmp.mod1627)
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hq, %.epil.preheader1622
  %indvars.iv45.i381.epil = phi i64 [ %indvars.iv45.i381.epil.init, %.epil.preheader1622 ], [ %indvars.iv.next46.i384.epil, %bb.hq ] ; 3 uses
  %indvars.iv.i382.epil = phi i64 [ %indvars.iv.i382.epil.init, %.epil.preheader1622 ], [ %indvars.iv.next.i385.epil, %bb.hq ] ; 2 uses
  %.034.i383.epil = phi i64 [ %.034.i383.epil.init, %.epil.preheader1622 ], [ %i.cbv, %bb.hq ]
  %epil.iter1624 = phi i64 [ 0, %.epil.preheader1622 ], [ %epil.iter1624.next, %bb.hq ]
  %i.cbj = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv45.i381.epil
  %i.cbk = load i16, ptr %i.cbj, align 2, !tbaa !20
  %i.cbl = zext i16 %i.cbk to i64
  %i.cbm = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %indvars.iv.i382.epil
  %i.cbn = load i16, ptr %i.cbm, align 2, !tbaa !20
  %i.cbo = zext i16 %i.cbn to i64
  %i.cbp = sub nsw i64 %i.cbl, %i.cbo
  %i.cbq = add nsw i64 %i.cbp, %.034.i383.epil    ; 2 uses
  %i.cbr = trunc i64 %i.cbq to i16
  %i.cbs = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv45.i381.epil
  store i16 %i.cbr, ptr %i.cbs, align 2, !tbaa !20
  %i.cbt = add nsw i64 %i.cbq, 2147483648
  %i.cbu = lshr i64 %i.cbt, 16
  %i.cbv = add nsw i64 %i.cbu, -32768             ; 2 uses
  %indvars.iv.next46.i384.epil = add nuw nsw i64 %indvars.iv45.i381.epil, 1
  %indvars.iv.next.i385.epil = add nsw i64 %indvars.iv.i382.epil, 1
  %epil.iter1624.next = add i64 %epil.iter1624, 1 ; 2 uses
  %epil.iter1624.cmp.not = icmp eq i64 %epil.iter1624.next, %xtraiter1623
  br i1 %epil.iter1624.cmp.not, label %.preheader.i387, label %bb.hq, !llvm.loop !76

.preheader.i387:                                  ; preds = %bb.hq, %.preheader.i387.unr-lcssa
  %.lcssa1501 = phi i64 [ %i.cem, %.preheader.i387.unr-lcssa ], [ %i.cbv, %bb.hq ]
  %i.cbw = icmp samesign ult i32 %i.cbg, 10
  br i1 %i.cbw, label %.lr.ph38.i356, label %._crit_edge.i363

.lr.ph38.i356:                                    ; preds = %bb.hp, %.preheader.i387
  %.0.lcssa85.i357 = phi i64 [ %.lcssa1501, %.preheader.i387 ], [ 0, %bb.hp ] ; 2 uses
  %.025.lcssa84.i358 = phi i32 [ %i.cbg, %.preheader.i387 ], [ 0, %bb.hp ] ; 2 uses
  %i.cbx = zext nneg i32 %.025.lcssa84.i358 to i64 ; 3 uses
  %i.cby = sub nsw i64 2, %i.cbx
  %xtraiter1632 = and i64 %i.cby, 3               ; 2 uses
  %lcmp.mod1633.not = icmp eq i64 %xtraiter1632, 0
  br i1 %lcmp.mod1633.not, label %.prol.loopexit1631, label %.prol.preheader1630

.prol.preheader1630:                              ; preds = %.lr.ph38.i356, %.prol.preheader1630
  %indvars.iv50.i359.prol = phi i64 [ %indvars.iv.next51.i361.prol, %.prol.preheader1630 ], [ %i.cbx, %.lr.ph38.i356 ] ; 3 uses
  %.137.i360.prol = phi i64 [ %i.cch, %.prol.preheader1630 ], [ %.0.lcssa85.i357, %.lr.ph38.i356 ]
  %prol.iter1634 = phi i64 [ %prol.iter1634.next, %.prol.preheader1630 ], [ 0, %.lr.ph38.i356 ]
  %i.cbz = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv50.i359.prol
  %i.cca = load i16, ptr %i.cbz, align 2, !tbaa !20
  %i.ccb = zext i16 %i.cca to i64
  %i.ccc = add nsw i64 %.137.i360.prol, %i.ccb    ; 2 uses
  %i.ccd = trunc i64 %i.ccc to i16
  %i.cce = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv50.i359.prol
  store i16 %i.ccd, ptr %i.cce, align 2, !tbaa !20
  %i.ccf = add nsw i64 %i.ccc, 2147483648
  %i.ccg = lshr i64 %i.ccf, 16
  %i.cch = add nsw i64 %i.ccg, -32768             ; 2 uses
  %indvars.iv.next51.i361.prol = add nuw nsw i64 %indvars.iv50.i359.prol, 1 ; 2 uses
  %prol.iter1634.next = add i64 %prol.iter1634, 1 ; 2 uses
  %prol.iter1634.cmp.not = icmp eq i64 %prol.iter1634.next, %xtraiter1632
  br i1 %prol.iter1634.cmp.not, label %.prol.loopexit1631, label %.prol.preheader1630, !llvm.loop !77

.prol.loopexit1631:                               ; preds = %.prol.preheader1630, %.lr.ph38.i356
  %indvars.iv50.i359.unr = phi i64 [ %i.cbx, %.lr.ph38.i356 ], [ %indvars.iv.next51.i361.prol, %.prol.preheader1630 ]
  %.137.i360.unr = phi i64 [ %.0.lcssa85.i357, %.lr.ph38.i356 ], [ %i.cch, %.prol.preheader1630 ]
  %i.cci = add nsw i32 %.025.lcssa84.i358, -7
  %i.ccj = icmp ult i32 %i.cci, 3
  br i1 %i.ccj, label %._crit_edge.i363, label %.lr.ph38.i356.new

bb.hr:                                            ; preds = %bb.hr, %.lr.ph.i379.new
  %indvars.iv45.i381 = phi i64 [ 0, %.lr.ph.i379.new ], [ %indvars.iv.next46.i384.3, %bb.hr ] ; 6 uses
  %indvars.iv.i382 = phi i64 [ %i.cbe, %.lr.ph.i379.new ], [ %indvars.iv.next.i385.3, %bb.hr ] ; 5 uses
  %.034.i383 = phi i64 [ 0, %.lr.ph.i379.new ], [ %i.cem, %bb.hr ]
  %niter1629 = phi i64 [ 0, %.lr.ph.i379.new ], [ %niter1629.next.3, %bb.hr ]
  %i.cck = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv45.i381
  %i.ccl = load i16, ptr %i.cck, align 4, !tbaa !20
  %i.ccm = zext i16 %i.ccl to i64
  %i.ccn = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %indvars.iv.i382
  %i.cco = load i16, ptr %i.ccn, align 2, !tbaa !20
  %i.ccp = zext i16 %i.cco to i64
  %i.ccq = sub nsw i64 %i.ccm, %i.ccp
  %i.ccr = add nsw i64 %i.ccq, %.034.i383         ; 2 uses
  %i.ccs = trunc i64 %i.ccr to i16
  %i.cct = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv45.i381
  store i16 %i.ccs, ptr %i.cct, align 8, !tbaa !20
  %i.ccu = add nsw i64 %i.ccr, 2147483648
  %i.ccv = lshr i64 %i.ccu, 16
  %i.ccw = add nsw i64 %i.ccv, -32768
  %indvars.iv.next46.i384 = or disjoint i64 %indvars.iv45.i381, 1 ; 2 uses
  %i.ccx = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next46.i384
  %i.ccy = load i16, ptr %i.ccx, align 2, !tbaa !20
  %i.ccz = zext i16 %i.ccy to i64
  %i.cda = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i382
  %i.cdb = getelementptr i8, ptr %i.cda, i64 2
  %i.cdc = load i16, ptr %i.cdb, align 2, !tbaa !20
  %i.cdd = zext i16 %i.cdc to i64
  %i.cde = sub nsw i64 %i.ccz, %i.cdd
  %i.cdf = add nsw i64 %i.cde, %i.ccw             ; 2 uses
  %i.cdg = trunc i64 %i.cdf to i16
  %i.cdh = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv.next46.i384
  store i16 %i.cdg, ptr %i.cdh, align 2, !tbaa !20
  %i.cdi = add nsw i64 %i.cdf, 2147483648
  %i.cdj = lshr i64 %i.cdi, 16
  %i.cdk = add nsw i64 %i.cdj, -32768
  %indvars.iv.next46.i384.1 = or disjoint i64 %indvars.iv45.i381, 2 ; 2 uses
  %i.cdl = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next46.i384.1
  %i.cdm = load i16, ptr %i.cdl, align 8, !tbaa !20
  %i.cdn = zext i16 %i.cdm to i64
  %i.cdo = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i382
  %i.cdp = getelementptr i8, ptr %i.cdo, i64 4
  %i.cdq = load i16, ptr %i.cdp, align 2, !tbaa !20
  %i.cdr = zext i16 %i.cdq to i64
  %i.cds = sub nsw i64 %i.cdn, %i.cdr
  %i.cdt = add nsw i64 %i.cds, %i.cdk             ; 2 uses
  %i.cdu = trunc i64 %i.cdt to i16
  %i.cdv = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv.next46.i384.1
  store i16 %i.cdu, ptr %i.cdv, align 4, !tbaa !20
  %i.cdw = add nsw i64 %i.cdt, 2147483648
  %i.cdx = lshr i64 %i.cdw, 16
  %i.cdy = add nsw i64 %i.cdx, -32768
  %indvars.iv.next46.i384.2 = or disjoint i64 %indvars.iv45.i381, 3 ; 2 uses
  %i.cdz = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next46.i384.2
  %i.cea = load i16, ptr %i.cdz, align 2, !tbaa !20
  %i.ceb = zext i16 %i.cea to i64
  %i.cec = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i382
  %i.ced = getelementptr i8, ptr %i.cec, i64 6
  %i.cee = load i16, ptr %i.ced, align 2, !tbaa !20
  %i.cef = zext i16 %i.cee to i64
  %i.ceg = sub nsw i64 %i.ceb, %i.cef
  %i.ceh = add nsw i64 %i.ceg, %i.cdy             ; 2 uses
  %i.cei = trunc i64 %i.ceh to i16
  %i.cej = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv.next46.i384.2
  store i16 %i.cei, ptr %i.cej, align 2, !tbaa !20
  %i.cek = add nsw i64 %i.ceh, 2147483648
  %i.cel = lshr i64 %i.cek, 16
  %i.cem = add nsw i64 %i.cel, -32768             ; 3 uses
  %indvars.iv.next46.i384.3 = add nuw nsw i64 %indvars.iv45.i381, 4 ; 2 uses
  %indvars.iv.next.i385.3 = add nsw i64 %indvars.iv.i382, 4 ; 2 uses
  %niter1629.next.3 = add i64 %niter1629, 4       ; 2 uses
  %niter1629.ncmp.3 = icmp eq i64 %niter1629.next.3, %unroll_iter1628
  br i1 %niter1629.ncmp.3, label %.preheader.i387.unr-lcssa, label %bb.hr, !llvm.loop !3

.lr.ph38.i356.new:                                ; preds = %.prol.loopexit1631, %.lr.ph38.i356.new
  %indvars.iv50.i359 = phi i64 [ %indvars.iv.next51.i361.3, %.lr.ph38.i356.new ], [ %indvars.iv50.i359.unr, %.prol.loopexit1631 ] ; 6 uses
  %.137.i360 = phi i64 [ %i.cfw, %.lr.ph38.i356.new ], [ %.137.i360.unr, %.prol.loopexit1631 ]
  %i.cen = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv50.i359
  %i.ceo = load i16, ptr %i.cen, align 2, !tbaa !20
  %i.cep = zext i16 %i.ceo to i64
  %i.ceq = add nsw i64 %.137.i360, %i.cep         ; 2 uses
  %i.cer = trunc i64 %i.ceq to i16
  %i.ces = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv50.i359
  store i16 %i.cer, ptr %i.ces, align 2, !tbaa !20
  %i.cet = add nsw i64 %i.ceq, 2147483648
  %i.ceu = lshr i64 %i.cet, 16
  %i.cev = add nsw i64 %i.ceu, -32768
  %indvars.iv.next51.i361 = add nuw nsw i64 %indvars.iv50.i359, 1 ; 2 uses
  %i.cew = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next51.i361
  %i.cex = load i16, ptr %i.cew, align 2, !tbaa !20
  %i.cey = zext i16 %i.cex to i64
  %i.cez = add nsw i64 %i.cev, %i.cey             ; 2 uses
  %i.cfa = trunc i64 %i.cez to i16
  %i.cfb = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv.next51.i361
  store i16 %i.cfa, ptr %i.cfb, align 2, !tbaa !20
  %i.cfc = add nsw i64 %i.cez, 2147483648
  %i.cfd = lshr i64 %i.cfc, 16
  %i.cfe = add nsw i64 %i.cfd, -32768
  %indvars.iv.next51.i361.1 = add nuw nsw i64 %indvars.iv50.i359, 2 ; 2 uses
  %i.cff = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next51.i361.1
  %i.cfg = load i16, ptr %i.cff, align 2, !tbaa !20
  %i.cfh = zext i16 %i.cfg to i64
  %i.cfi = add nsw i64 %i.cfe, %i.cfh             ; 2 uses
  %i.cfj = trunc i64 %i.cfi to i16
  %i.cfk = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv.next51.i361.1
  store i16 %i.cfj, ptr %i.cfk, align 2, !tbaa !20
  %i.cfl = add nsw i64 %i.cfi, 2147483648
  %i.cfm = lshr i64 %i.cfl, 16
  %i.cfn = add nsw i64 %i.cfm, -32768
  %indvars.iv.next51.i361.2 = add nuw nsw i64 %indvars.iv50.i359, 3 ; 2 uses
  %i.cfo = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next51.i361.2
  %i.cfp = load i16, ptr %i.cfo, align 2, !tbaa !20
  %i.cfq = zext i16 %i.cfp to i64
  %i.cfr = add nsw i64 %i.cfn, %i.cfq             ; 2 uses
  %i.cfs = trunc i64 %i.cfr to i16
  %i.cft = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv.next51.i361.2
  store i16 %i.cfs, ptr %i.cft, align 2, !tbaa !20
  %i.cfu = add nsw i64 %i.cfr, 2147483648
  %i.cfv = lshr i64 %i.cfu, 16
  %i.cfw = add nsw i64 %i.cfv, -32768
  %indvars.iv.next51.i361.3 = add nuw nsw i64 %indvars.iv50.i359, 4 ; 2 uses
  %exitcond53.not.i362.3 = icmp eq i64 %indvars.iv.next51.i361.3, 10
  br i1 %exitcond53.not.i362.3, label %._crit_edge.i363, label %.lr.ph38.i356.new, !llvm.loop !4

._crit_edge.i363:                                 ; preds = %.prol.loopexit1631, %.lr.ph38.i356.new, %.preheader.i387
  %i.cfx = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep.i347, align 2, !tbaa !20
  %.not.i.not.not.i364 = icmp eq i16 %i.cfx, 0
  br i1 %.not.i.not.not.i364, label %bb.hs, label %.preheader.i.i365

bb.hs:                                            ; preds = %._crit_edge.i363
  %i.cfy = add i16 %i.bfs, -1
  %i.cfz = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep54.i348, align 16, !tbaa !20
  %.not.i.1.i366 = icmp eq i16 %i.cfz, 0
  br i1 %.not.i.1.i366, label %bb.ht, label %.lr.ph47.i.i367

bb.ht:                                            ; preds = %bb.hs
  %i.cga = add i16 %i.bfs, -2
  %i.cgb = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep55.i349, align 2, !tbaa !20
  %.not.i.2.i371 = icmp eq i16 %i.cgb, 0
  br i1 %.not.i.2.i371, label %bb.hu, label %.lr.ph47.i.i367

bb.hu:                                            ; preds = %bb.ht
  %i.cgc = add i16 %i.bfs, -3
  %i.cgd = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep56.i350, align 4, !tbaa !20
  %.not.i.3.i372 = icmp eq i16 %i.cgd, 0
  br i1 %.not.i.3.i372, label %bb.hv, label %.lr.ph47.i.i367

bb.hv:                                            ; preds = %bb.hu
  %i.cge = add i16 %i.bfs, -4
  %i.cgf = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep57.i351, align 2, !tbaa !20
  %.not.i.4.i373 = icmp eq i16 %i.cgf, 0
  br i1 %.not.i.4.i373, label %bb.hw, label %.lr.ph47.i.i367

bb.hw:                                            ; preds = %bb.hv
  %i.cgg = add i16 %i.bfs, -5
  %i.cgh = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep58.i352, align 8, !tbaa !20
  %.not.i.5.i374 = icmp eq i16 %i.cgh, 0
  br i1 %.not.i.5.i374, label %bb.hx, label %.lr.ph47.i.i367

bb.hx:                                            ; preds = %bb.hw
  %i.cgi = add i16 %i.bfs, -6
  %i.cgj = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep59.i353, align 2, !tbaa !20
  %.not.i.6.i375 = icmp eq i16 %i.cgj, 0
  br i1 %.not.i.6.i375, label %bb.hy, label %.lr.ph47.i.i367

bb.hy:                                            ; preds = %bb.hx
  %i.cgk = add i16 %i.bfs, -7
  %i.cgl = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60.i354, align 4, !tbaa !20
  %.not.i.7.i376 = icmp eq i16 %i.cgl, 0
  br i1 %.not.i.7.i376, label %bb.hz, label %.lr.ph47.i.i367

bb.hz:                                            ; preds = %bb.hy
  %i.cgm = add i16 %i.bfs, -8
  %i.cgn = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61.i355, align 2, !tbaa !20
  %.not.i.8.i377 = icmp eq i16 %i.cgn, 0
  br i1 %.not.i.8.i377, label %bb.ia, label %.lr.ph47.i.i367

bb.ia:                                            ; preds = %bb.hz
  %i.cgo = add i16 %i.bfs, -9
  %i.cgp = load i16, ptr %i.p, align 16, !tbaa !20
  %.not.i.9.i378 = icmp eq i16 %i.cgp, 0
  br i1 %.not.i.9.i378, label %bb.ib, label %.lr.ph47.i.i367

bb.ib:                                            ; preds = %bb.ia
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ea, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %submag0.exit388

.preheader.i.i365:                                ; preds = %._crit_edge.i363
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store i16 %i.bfs, ptr %i.cgq, align 2, !tbaa !26
  store i16 %i.bfp, ptr %i.ea, align 2, !tbaa !24
  %i.cgr = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  %i.cgt = load <2 x i16>, ptr %indvars.iv72.i.lcssa.sroa.gep54.i348, align 16, !tbaa !20
  store <2 x i16> %i.cgt, ptr %i.cgs, align 2, !tbaa !20
  %i.cgu = load <8 x i16>, ptr %i.p, align 16, !tbaa !20
  store <8 x i16> %i.cgu, ptr %i.cgr, align 2, !tbaa !20
  br label %submag0.exit388

.lr.ph47.i.i367:                                  ; preds = %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %bb.hs
  %.03341.i.lcssa.ph.i368 = phi i16 [ %i.cgo, %bb.ia ], [ %i.cgm, %bb.hz ], [ %i.cgk, %bb.hy ], [ %i.cgi, %bb.hx ], [ %i.cgg, %bb.hw ], [ %i.cge, %bb.hv ], [ %i.cgc, %bb.hu ], [ %i.cga, %bb.ht ], [ %i.cfy, %bb.hs ]
  %indvars.iv58.i.lcssa.ph.i369 = phi i64 [ 0, %bb.ia ], [ 2, %bb.hz ], [ 4, %bb.hy ], [ 6, %bb.hx ], [ 8, %bb.hw ], [ 10, %bb.hv ], [ 12, %bb.hu ], [ 14, %bb.ht ], [ 16, %bb.hs ] ; 3 uses
  %i.cgv = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store i16 %.03341.i.lcssa.ph.i368, ptr %i.cgv, align 2, !tbaa !26
  store i16 %i.bfp, ptr %i.ea, align 2, !tbaa !24
  %i.cgw = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.cgx = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph.i369
  %scevgep.i370 = getelementptr i8, ptr %i.ea, i64 %i.cgx
  %i.cgy = add nuw nsw i64 %indvars.iv58.i.lcssa.ph.i369, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i370, ptr noundef nonnull align 16 dereferenceable(1) %i.p, i64 range(i64 0, 21) %i.cgy, i1 false), !tbaa !20
  %i.cgz = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph.i369
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.cgw, i8 0, i64 %i.cgz, i1 false), !tbaa !20
  br label %submag0.exit388

submag0.exit388:                                  ; preds = %bb.ib, %.preheader.i.i365, %.lr.ph47.i.i367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #13
  br label %add.exit34

add.exit34:                                       ; preds = %addmag0.exit528, %addmag0.exit479, %submag0.exit430, %submag0.exit388
  %i.cha = load i16, ptr %6, align 16, !tbaa !24  ; 13 uses
  %i.chb = load i16, ptr %12, align 16, !tbaa !24 ; 5 uses
  %i.chc = icmp eq i16 %i.cha, %i.chb             ; 2 uses
  %i.chd = load i16, ptr %i.cs, align 2, !tbaa !26 ; 57 uses
  %i.che = load i16, ptr %i.bw, align 2, !tbaa !26 ; 57 uses
  %i.chf = icmp sgt i16 %i.chd, %i.che            ; 2 uses
  br i1 %i.chf, label %abscmp.exit718, label %bb.ic

bb.ic:                                            ; preds = %add.exit34
  %i.chg = icmp slt i16 %i.chd, %i.che
  br i1 %i.chg, label %abscmp.exit718, label %.preheader.i715

.preheader.i715:                                  ; preds = %bb.ic
  %i.chh = load i16, ptr %i.cu, align 2, !tbaa !20 ; 2 uses
  %i.chi = load i16, ptr %i.by, align 2, !tbaa !20 ; 2 uses
  %i.chj = icmp ugt i16 %i.chh, %i.chi
  br i1 %i.chj, label %abscmp.exit718, label %bb.iu

bb.id:                                            ; preds = %bb.iu
  %i.chk = load i16, ptr %i.cv, align 4, !tbaa !20 ; 2 uses
  %i.chl = load i16, ptr %i.bz, align 4, !tbaa !20 ; 2 uses
  %i.chm = icmp ugt i16 %i.chk, %i.chl
  br i1 %i.chm, label %abscmp.exit718, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.chn = icmp ult i16 %i.chk, %i.chl
  br i1 %i.chn, label %abscmp.exit718, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.cho = load i16, ptr %i.cw, align 2, !tbaa !20 ; 2 uses
  %i.chp = load i16, ptr %i.ca, align 2, !tbaa !20 ; 2 uses
  %i.chq = icmp ugt i16 %i.cho, %i.chp
  br i1 %i.chq, label %abscmp.exit718, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.chr = icmp ult i16 %i.cho, %i.chp
  br i1 %i.chr, label %abscmp.exit718, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.chs = load i16, ptr %i.cx, align 16, !tbaa !20 ; 2 uses
  %i.cht = load i16, ptr %i.cb, align 16, !tbaa !20 ; 2 uses
  %i.chu = icmp ugt i16 %i.chs, %i.cht
  br i1 %i.chu, label %abscmp.exit718, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.chv = icmp ult i16 %i.chs, %i.cht
  br i1 %i.chv, label %abscmp.exit718, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.chw = load i16, ptr %i.cy, align 2, !tbaa !20 ; 2 uses
  %i.chx = load i16, ptr %i.cc, align 2, !tbaa !20 ; 2 uses
  %i.chy = icmp ugt i16 %i.chw, %i.chx
  br i1 %i.chy, label %abscmp.exit718, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.chz = icmp ult i16 %i.chw, %i.chx
  br i1 %i.chz, label %abscmp.exit718, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.cia = load i16, ptr %i.cz, align 4, !tbaa !20 ; 2 uses
  %i.cib = load i16, ptr %i.cd, align 4, !tbaa !20 ; 2 uses
  %i.cic = icmp ugt i16 %i.cia, %i.cib
  br i1 %i.cic, label %abscmp.exit718, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.cid = icmp ult i16 %i.cia, %i.cib
  br i1 %i.cid, label %abscmp.exit718, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.cie = load i16, ptr %i.da, align 2, !tbaa !20 ; 2 uses
  %i.cif = load i16, ptr %i.ce, align 2, !tbaa !20 ; 2 uses
  %i.cig = icmp ugt i16 %i.cie, %i.cif
  br i1 %i.cig, label %abscmp.exit718, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.cih = icmp ult i16 %i.cie, %i.cif
  br i1 %i.cih, label %abscmp.exit718, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.cii = load i16, ptr %i.db, align 8, !tbaa !20 ; 2 uses
  %i.cij = load i16, ptr %i.cf, align 8, !tbaa !20 ; 2 uses
  %i.cik = icmp ugt i16 %i.cii, %i.cij
  br i1 %i.cik, label %abscmp.exit718, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.cil = icmp ult i16 %i.cii, %i.cij
  br i1 %i.cil, label %abscmp.exit718, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.cim = load i16, ptr %i.dc, align 2, !tbaa !20 ; 2 uses
  %i.cin = load i16, ptr %i.cg, align 2, !tbaa !20 ; 2 uses
  %i.cio = icmp ugt i16 %i.cim, %i.cin
  br i1 %i.cio, label %abscmp.exit718, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.cip = icmp ult i16 %i.cim, %i.cin
  br i1 %i.cip, label %abscmp.exit718, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.ciq = load i16, ptr %i.ct, align 4, !tbaa !20
  %i.cir = load i16, ptr %i.bx, align 4, !tbaa !20
  %i.cis = icmp ugt i16 %i.ciq, %i.cir
  br label %abscmp.exit718

bb.iu:                                            ; preds = %.preheader.i715
  %i.cit = icmp ult i16 %i.chh, %i.chi
  br i1 %i.cit, label %abscmp.exit718, label %bb.id

abscmp.exit718:                                   ; preds = %bb.it, %add.exit34, %bb.ic, %.preheader.i715, %bb.id, %bb.ie, %bb.if, %bb.ig, %bb.ih, %bb.ii, %bb.ij, %bb.ik, %bb.il, %bb.im, %bb.in, %bb.io, %bb.ip, %bb.iq, %bb.ir, %bb.is, %bb.iu
  %.014.i717 = phi i1 [ false, %bb.ic ], [ true, %add.exit34 ], [ false, %bb.iu ], [ true, %.preheader.i715 ], [ false, %bb.iq ], [ true, %bb.id ], [ false, %bb.ie ], [ false, %bb.io ], [ true, %bb.if ], [ false, %bb.ig ], [ %i.cis, %bb.it ], [ true, %bb.ih ], [ false, %bb.ii ], [ true, %bb.ip ], [ true, %bb.ij ], [ false, %bb.ik ], [ false, %bb.is ], [ true, %bb.il ], [ false, %bb.im ], [ true, %bb.ir ], [ true, %bb.in ] ; 2 uses
  br i1 %i.chc, label %bb.iv, label %bb.jy

bb.iv:                                            ; preds = %abscmp.exit718
  br i1 %.014.i717, label %bb.iw, label %bb.jk

bb.iw:                                            ; preds = %bb.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  %i.ciu = sext i16 %i.chd to i32                 ; 2 uses
  %i.civ = sext i16 %i.che to i32                 ; 3 uses
  %i.ciw = sub nsw i32 %i.ciu, %i.civ
  %i.cix = icmp slt i32 %i.ciw, 10
  br i1 %i.cix, label %.lr.ph.i705, label %.lr.ph40.i677

.lr.ph.i705:                                      ; preds = %bb.iw
  %i.ciy = sext i16 %i.chd to i64
  %i.ciz = sub nsw i32 0, %i.civ
  %i.cja = sext i32 %i.ciz to i64
  %i.cjb = add nsw i64 %i.cja, %i.ciy             ; 2 uses
  %reass.sub1166 = sub nsw i32 %i.civ, %i.ciu     ; 3 uses
  %i.cjc = add nsw i32 %reass.sub1166, 10         ; 3 uses
  %wide.trip.count.i706 = zext i32 %i.cjc to i64  ; 2 uses
  %xtraiter1714 = and i64 %wide.trip.count.i706, 3 ; 3 uses
  %i.cjd = add nsw i32 %reass.sub1166, 9
  %i.cje = icmp ult i32 %i.cjd, 3
  br i1 %i.cje, label %.epil.preheader1713, label %.lr.ph.i705.new

.lr.ph.i705.new:                                  ; preds = %.lr.ph.i705
  %unroll_iter1719 = and i64 %wide.trip.count.i706, 4294967292
  br label %bb.iy

.preheader.i713.unr-lcssa:                        ; preds = %bb.iy
  %lcmp.mod1716.not = icmp eq i64 %xtraiter1714, 0
  br i1 %lcmp.mod1716.not, label %.preheader.i713, label %.epil.preheader1713

.epil.preheader1713:                              ; preds = %.preheader.i713.unr-lcssa, %.lr.ph.i705
  %indvars.iv51.i707.epil.init = phi i64 [ 0, %.lr.ph.i705 ], [ %indvars.iv.next52.i710.3, %.preheader.i713.unr-lcssa ]
  %indvars.iv.i708.epil.init = phi i64 [ %i.cjb, %.lr.ph.i705 ], [ %indvars.iv.next.i711.3, %.preheader.i713.unr-lcssa ]
  %.036.i709.epil.init = phi i64 [ 0, %.lr.ph.i705 ], [ %i.clw, %.preheader.i713.unr-lcssa ]
  %lcmp.mod1718 = icmp ne i64 %xtraiter1714, 0
  tail call void @llvm.assume(i1 %lcmp.mod1718)
  br label %bb.ix

bb.ix:                                            ; preds = %bb.ix, %.epil.preheader1713
  %indvars.iv51.i707.epil = phi i64 [ %indvars.iv51.i707.epil.init, %.epil.preheader1713 ], [ %indvars.iv.next52.i710.epil, %bb.ix ] ; 3 uses
  %indvars.iv.i708.epil = phi i64 [ %indvars.iv.i708.epil.init, %.epil.preheader1713 ], [ %indvars.iv.next.i711.epil, %bb.ix ] ; 2 uses
  %.036.i709.epil = phi i64 [ %.036.i709.epil.init, %.epil.preheader1713 ], [ %i.cjp, %bb.ix ]
  %epil.iter1715 = phi i64 [ 0, %.epil.preheader1713 ], [ %epil.iter1715.next, %bb.ix ]
  %i.cjf = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv51.i707.epil
  %i.cjg = load i16, ptr %i.cjf, align 2, !tbaa !20
  %i.cjh = zext i16 %i.cjg to i64
  %i.cji = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %indvars.iv.i708.epil
  %i.cjj = load i16, ptr %i.cji, align 2, !tbaa !20
  %i.cjk = zext i16 %i.cjj to i64
  %i.cjl = add nuw nsw i64 %.036.i709.epil, %i.cjh
  %i.cjm = add nuw nsw i64 %i.cjl, %i.cjk         ; 2 uses
  %i.cjn = trunc i64 %i.cjm to i16
  %i.cjo = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv51.i707.epil
  store i16 %i.cjn, ptr %i.cjo, align 2, !tbaa !20
  %i.cjp = lshr i64 %i.cjm, 16                    ; 2 uses
  %indvars.iv.next52.i710.epil = add nuw nsw i64 %indvars.iv51.i707.epil, 1
  %indvars.iv.next.i711.epil = add nsw i64 %indvars.iv.i708.epil, 1
  %epil.iter1715.next = add i64 %epil.iter1715, 1 ; 2 uses
  %epil.iter1715.cmp.not = icmp eq i64 %epil.iter1715.next, %xtraiter1714
  br i1 %epil.iter1715.cmp.not, label %.preheader.i713, label %bb.ix, !llvm.loop !78

.preheader.i713:                                  ; preds = %bb.ix, %.preheader.i713.unr-lcssa
  %.lcssa1511 = phi i64 [ %i.clw, %.preheader.i713.unr-lcssa ], [ %i.cjp, %bb.ix ] ; 2 uses
  %i.cjq = icmp slt i32 %reass.sub1166, 0
  br i1 %i.cjq, label %.lr.ph40.i677, label %._crit_edge.i684

.lr.ph40.i677:                                    ; preds = %bb.iw, %.preheader.i713
  %.0.lcssa94.i678 = phi i64 [ %.lcssa1511, %.preheader.i713 ], [ 0, %bb.iw ] ; 2 uses
  %.027.lcssa93.i679 = phi i32 [ %i.cjc, %.preheader.i713 ], [ 0, %bb.iw ] ; 2 uses
  %i.cjr = zext i32 %.027.lcssa93.i679 to i64     ; 3 uses
  %i.cjs = sub nsw i64 2, %i.cjr
  %xtraiter1723 = and i64 %i.cjs, 7               ; 2 uses
  %lcmp.mod1724.not = icmp eq i64 %xtraiter1723, 0
  br i1 %lcmp.mod1724.not, label %.prol.loopexit1722, label %.prol.preheader1721

.prol.preheader1721:                              ; preds = %.lr.ph40.i677, %.prol.preheader1721
  %indvars.iv56.i680.prol = phi i64 [ %indvars.iv.next57.i682.prol, %.prol.preheader1721 ], [ %i.cjr, %.lr.ph40.i677 ] ; 3 uses
end_hunk_4
begin_hunk_5_@fft0:bb.a
  %i.clm = load i16, ptr %i.cll, align 2, !tbaa !20
  %i.cln = zext i16 %i.clm to i64
  %i.clo = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv.i708
  %i.clp = getelementptr i8, ptr %i.clo, i64 6
  %i.clq = load i16, ptr %i.clp, align 2, !tbaa !20
  %i.clr = zext i16 %i.clq to i64
  %i.cls = add nuw nsw i64 %i.clk, %i.cln
  %i.clt = add nuw nsw i64 %i.cls, %i.clr         ; 2 uses
  %i.clu = trunc i64 %i.clt to i16
  %i.clv = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.next52.i710.2
  store i16 %i.clu, ptr %i.clv, align 2, !tbaa !20
  %i.clw = lshr i64 %i.clt, 16                    ; 3 uses
  %indvars.iv.next52.i710.3 = add nuw nsw i64 %indvars.iv51.i707, 4 ; 2 uses
  %indvars.iv.next.i711.3 = add nsw i64 %indvars.iv.i708, 4 ; 2 uses
  %niter1720.next.3 = add i64 %niter1720, 4       ; 2 uses
  %niter1720.ncmp.3 = icmp eq i64 %niter1720.next.3, %unroll_iter1719
  br i1 %niter1720.ncmp.3, label %.preheader.i713.unr-lcssa, label %bb.iy, !llvm.loop !5

.lr.ph40.i677.new:                                ; preds = %.prol.loopexit1722, %.lr.ph40.i677.new
  %indvars.iv56.i680 = phi i64 [ %indvars.iv.next57.i682.7, %.lr.ph40.i677.new ], [ %indvars.iv56.i680.unr, %.prol.loopexit1722 ] ; 10 uses
  %.139.i681 = phi i64 [ %i.coa, %.lr.ph40.i677.new ], [ %.139.i681.unr, %.prol.loopexit1722 ]
  %i.clx = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv56.i680
  %i.cly = load i16, ptr %i.clx, align 2, !tbaa !20
  %i.clz = zext i16 %i.cly to i64
  %i.cma = add nuw nsw i64 %.139.i681, %i.clz     ; 2 uses
  %i.cmb = trunc i64 %i.cma to i16
  %i.cmc = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv56.i680
  store i16 %i.cmb, ptr %i.cmc, align 2, !tbaa !20
  %i.cmd = lshr i64 %i.cma, 16
  %indvars.iv.next57.i682 = add nuw nsw i64 %indvars.iv56.i680, 1 ; 2 uses
  %i.cme = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i682
  %i.cmf = load i16, ptr %i.cme, align 2, !tbaa !20
  %i.cmg = zext i16 %i.cmf to i64
  %i.cmh = add nuw nsw i64 %i.cmd, %i.cmg         ; 2 uses
  %i.cmi = trunc i64 %i.cmh to i16
  %i.cmj = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.next57.i682
  store i16 %i.cmi, ptr %i.cmj, align 2, !tbaa !20
  %i.cmk = lshr i64 %i.cmh, 16
  %indvars.iv.next57.i682.1 = add nuw nsw i64 %indvars.iv56.i680, 2 ; 2 uses
  %i.cml = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i682.1
  %i.cmm = load i16, ptr %i.cml, align 2, !tbaa !20
  %i.cmn = zext i16 %i.cmm to i64
  %i.cmo = add nuw nsw i64 %i.cmk, %i.cmn         ; 2 uses
  %i.cmp = trunc i64 %i.cmo to i16
  %i.cmq = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.next57.i682.1
  store i16 %i.cmp, ptr %i.cmq, align 2, !tbaa !20
  %i.cmr = lshr i64 %i.cmo, 16
  %indvars.iv.next57.i682.2 = add nuw nsw i64 %indvars.iv56.i680, 3 ; 2 uses
  %i.cms = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i682.2
  %i.cmt = load i16, ptr %i.cms, align 2, !tbaa !20
  %i.cmu = zext i16 %i.cmt to i64
  %i.cmv = add nuw nsw i64 %i.cmr, %i.cmu         ; 2 uses
  %i.cmw = trunc i64 %i.cmv to i16
  %i.cmx = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.next57.i682.2
  store i16 %i.cmw, ptr %i.cmx, align 2, !tbaa !20
  %i.cmy = lshr i64 %i.cmv, 16
  %indvars.iv.next57.i682.3 = add nuw nsw i64 %indvars.iv56.i680, 4 ; 2 uses
  %i.cmz = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i682.3
  %i.cna = load i16, ptr %i.cmz, align 2, !tbaa !20
  %i.cnb = zext i16 %i.cna to i64
  %i.cnc = add nuw nsw i64 %i.cmy, %i.cnb         ; 2 uses
  %i.cnd = trunc i64 %i.cnc to i16
  %i.cne = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.next57.i682.3
  store i16 %i.cnd, ptr %i.cne, align 2, !tbaa !20
  %i.cnf = lshr i64 %i.cnc, 16
  %indvars.iv.next57.i682.4 = add nuw nsw i64 %indvars.iv56.i680, 5 ; 2 uses
  %i.cng = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i682.4
  %i.cnh = load i16, ptr %i.cng, align 2, !tbaa !20
  %i.cni = zext i16 %i.cnh to i64
  %i.cnj = add nuw nsw i64 %i.cnf, %i.cni         ; 2 uses
  %i.cnk = trunc i64 %i.cnj to i16
  %i.cnl = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.next57.i682.4
  store i16 %i.cnk, ptr %i.cnl, align 2, !tbaa !20
  %i.cnm = lshr i64 %i.cnj, 16
  %indvars.iv.next57.i682.5 = add nuw nsw i64 %indvars.iv56.i680, 6 ; 2 uses
  %i.cnn = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i682.5
  %i.cno = load i16, ptr %i.cnn, align 2, !tbaa !20
  %i.cnp = zext i16 %i.cno to i64
  %i.cnq = add nuw nsw i64 %i.cnm, %i.cnp         ; 2 uses
  %i.cnr = trunc i64 %i.cnq to i16
  %i.cns = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.next57.i682.5
  store i16 %i.cnr, ptr %i.cns, align 2, !tbaa !20
  %i.cnt = lshr i64 %i.cnq, 16
  %indvars.iv.next57.i682.6 = add nuw nsw i64 %indvars.iv56.i680, 7 ; 2 uses
  %i.cnu = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i682.6
  %i.cnv = load i16, ptr %i.cnu, align 2, !tbaa !20
  %i.cnw = zext i16 %i.cnv to i64
  %i.cnx = add nuw nsw i64 %i.cnt, %i.cnw         ; 2 uses
  %i.cny = trunc i64 %i.cnx to i16
  %i.cnz = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.next57.i682.6
  store i16 %i.cny, ptr %i.cnz, align 2, !tbaa !20
  %i.coa = lshr i64 %i.cnx, 16                    ; 2 uses
  %indvars.iv.next57.i682.7 = add nuw nsw i64 %indvars.iv56.i680, 8 ; 2 uses
  %exitcond59.not.i683.7 = icmp eq i64 %indvars.iv.next57.i682.7, 10
  br i1 %exitcond59.not.i683.7, label %._crit_edge.i684, label %.lr.ph40.i677.new, !llvm.loop !6

._crit_edge.i684:                                 ; preds = %.prol.loopexit1722, %.lr.ph40.i677.new, %.preheader.i713
  %.128.lcssa.i685 = phi i32 [ %i.cjc, %.preheader.i713 ], [ 10, %.lr.ph40.i677.new ], [ 10, %.prol.loopexit1722 ]
  %.1.lcssa.i686 = phi i64 [ %.lcssa1511, %.preheader.i713 ], [ %.lcssa1512.unr, %.prol.loopexit1722 ], [ %i.coa, %.lr.ph40.i677.new ]
  %i.cob = trunc nuw nsw i64 %.1.lcssa.i686 to i16
  %i.coc = zext nneg i32 %.128.lcssa.i685 to i64
  %i.cod = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.coc
  store i16 %i.cob, ptr %i.cod, align 2, !tbaa !20
  %i.coe = add i16 %i.chd, 1
  %i.cof = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep.i666, align 4, !tbaa !20 ; 2 uses
  %.not.i.i687 = icmp eq i16 %i.cof, 0
  br i1 %.not.i.i687, label %bb.iz, label %.preheader.i.i688

bb.iz:                                            ; preds = %._crit_edge.i684
  %i.cog = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60.i667, align 2, !tbaa !20 ; 2 uses
  %.not.i.1.i691 = icmp eq i16 %i.cog, 0
  br i1 %.not.i.1.i691, label %bb.ja, label %.preheader.i.i688

bb.ja:                                            ; preds = %bb.iz
  %i.coh = add i16 %i.chd, -1
  %i.coi = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61.i668, align 16, !tbaa !20
  %.not.i.2.i692 = icmp eq i16 %i.coi, 0
  br i1 %.not.i.2.i692, label %bb.jb, label %.lr.ph47.i.i693

bb.jb:                                            ; preds = %bb.ja
  %i.coj = add i16 %i.chd, -2
  %i.cok = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep62.i669, align 2, !tbaa !20
  %.not.i.3.i697 = icmp eq i16 %i.cok, 0
  br i1 %.not.i.3.i697, label %bb.jc, label %.lr.ph47.i.i693

bb.jc:                                            ; preds = %bb.jb
  %i.col = add i16 %i.chd, -3
  %i.com = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep63.i670, align 4, !tbaa !20
  %.not.i.4.i698 = icmp eq i16 %i.com, 0
  br i1 %.not.i.4.i698, label %bb.jd, label %.lr.ph47.i.i693

bb.jd:                                            ; preds = %bb.jc
  %i.con = add i16 %i.chd, -4
  %i.coo = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep64.i671, align 2, !tbaa !20
  %.not.i.5.i699 = icmp eq i16 %i.coo, 0
  br i1 %.not.i.5.i699, label %bb.je, label %.lr.ph47.i.i693

bb.je:                                            ; preds = %bb.jd
  %i.cop = add i16 %i.chd, -5
  %i.coq = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep65.i672, align 8, !tbaa !20
  %.not.i.6.i700 = icmp eq i16 %i.coq, 0
  br i1 %.not.i.6.i700, label %bb.jf, label %.lr.ph47.i.i693

bb.jf:                                            ; preds = %bb.je
  %i.cor = add i16 %i.chd, -6
  %i.cos = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep66.i673, align 2, !tbaa !20
  %.not.i.7.i701 = icmp eq i16 %i.cos, 0
  br i1 %.not.i.7.i701, label %bb.jg, label %.lr.ph47.i.i693

bb.jg:                                            ; preds = %bb.jf
  %i.cot = add i16 %i.chd, -7
  %i.cou = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep67.i674, align 4, !tbaa !20
  %.not.i.8.i702 = icmp eq i16 %i.cou, 0
  br i1 %.not.i.8.i702, label %bb.jh, label %.lr.ph47.i.i693

bb.jh:                                            ; preds = %bb.jg
  %i.cov = add i16 %i.chd, -8
  %i.cow = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep68.i675, align 2, !tbaa !20
  %.not.i.9.i703 = icmp eq i16 %i.cow, 0
  br i1 %.not.i.9.i703, label %bb.ji, label %.lr.ph47.i.i693

bb.ji:                                            ; preds = %bb.jh
  %i.cox = add i16 %i.chd, -9
  %i.coy = load i16, ptr %i.i, align 16, !tbaa !20
  %.not.i.10.i704 = icmp eq i16 %i.coy, 0
  br i1 %.not.i.10.i704, label %bb.jj, label %.lr.ph47.i.i693

bb.jj:                                            ; preds = %bb.ji
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ec, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %addmag0.exit714

.preheader.i.i688:                                ; preds = %bb.iz, %._crit_edge.i684
  %i.coz = phi i16 [ %i.cof, %._crit_edge.i684 ], [ %i.cog, %bb.iz ]
  %indvars.iv72.in.i.lcssa.sroa.phi.i689 = phi ptr [ %indvars.iv72.in.i.lcssa.sroa.gep.i676, %._crit_edge.i684 ], [ %indvars.iv72.i.lcssa.sroa.gep.i666, %bb.iz ] ; 2 uses
  %.03341.i.lcssa.i690 = phi i16 [ %i.coe, %._crit_edge.i684 ], [ %i.chd, %bb.iz ]
  %i.cpa = getelementptr inbounds nuw i8, ptr %i.ea, i64 26
  store i16 %.03341.i.lcssa.i690, ptr %i.cpa, align 2, !tbaa !26
  store i16 %i.cha, ptr %i.ec, align 2, !tbaa !24
  %i.cpb = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %i.cpc = getelementptr inbounds nuw i8, ptr %i.ea, i64 46
  store i16 %i.coz, ptr %i.cpc, align 2, !tbaa !20
  %i.cpd = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.i689, i64 -4
  %i.cpe = load i16, ptr %i.cpd, align 2, !tbaa !20
  %i.cpf = getelementptr inbounds nuw i8, ptr %i.ea, i64 44
  store i16 %i.cpe, ptr %i.cpf, align 2, !tbaa !20
  %i.cpg = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.i689, i64 -20
  %i.cph = load <8 x i16>, ptr %i.cpg, align 2, !tbaa !20
  store <8 x i16> %i.cph, ptr %i.cpb, align 2, !tbaa !20
  br label %addmag0.exit714

.lr.ph47.i.i693:                                  ; preds = %bb.ji, %bb.jh, %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.jc, %bb.jb, %bb.ja
  %.03341.i.lcssa.ph.i694 = phi i16 [ %i.cox, %bb.ji ], [ %i.cov, %bb.jh ], [ %i.cot, %bb.jg ], [ %i.cor, %bb.jf ], [ %i.cop, %bb.je ], [ %i.con, %bb.jd ], [ %i.col, %bb.jc ], [ %i.coj, %bb.jb ], [ %i.coh, %bb.ja ]
  %indvars.iv58.i.lcssa.ph.i695 = phi i64 [ 0, %bb.ji ], [ 2, %bb.jh ], [ 4, %bb.jg ], [ 6, %bb.jf ], [ 8, %bb.je ], [ 10, %bb.jd ], [ 12, %bb.jc ], [ 14, %bb.jb ], [ 16, %bb.ja ] ; 3 uses
  %i.cpi = getelementptr inbounds nuw i8, ptr %i.ea, i64 26
  store i16 %.03341.i.lcssa.ph.i694, ptr %i.cpi, align 2, !tbaa !26
  store i16 %i.cha, ptr %i.ec, align 2, !tbaa !24
  %i.cpj = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %i.cpk = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph.i695
  %scevgep.i696 = getelementptr i8, ptr %i.ec, i64 %i.cpk
  %i.cpl = add nuw nsw i64 %indvars.iv58.i.lcssa.ph.i695, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i696, ptr noundef nonnull align 16 dereferenceable(1) %i.i, i64 range(i64 0, 23) %i.cpl, i1 false), !tbaa !20
  %i.cpm = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph.i695
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.cpj, i8 0, i64 %i.cpm, i1 false), !tbaa !20
  br label %addmag0.exit714

addmag0.exit714:                                  ; preds = %bb.jj, %.preheader.i.i688, %.lr.ph47.i.i693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  br label %add.exit35

bb.jk:                                            ; preds = %bb.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  %i.cpn = sext i16 %i.che to i32                 ; 2 uses
  %i.cpo = sext i16 %i.chd to i32                 ; 3 uses
  %i.cpp = sub nsw i32 %i.cpn, %i.cpo
  %i.cpq = icmp slt i32 %i.cpp, 10
  br i1 %i.cpq, label %.lr.ph.i656, label %.lr.ph40.i628

.lr.ph.i656:                                      ; preds = %bb.jk
  %i.cpr = sext i16 %i.che to i64
  %i.cps = sub nsw i32 0, %i.cpo
  %i.cpt = sext i32 %i.cps to i64
  %i.cpu = add nsw i64 %i.cpr, %i.cpt             ; 2 uses
  %i.cpv = add nsw i32 %i.cpo, 10
  %i.cpw = sub nsw i32 %i.cpv, %i.cpn             ; 5 uses
  %wide.trip.count.i657 = zext i32 %i.cpw to i64  ; 2 uses
  %xtraiter1701 = and i64 %wide.trip.count.i657, 3 ; 3 uses
  %i.cpx = add nsw i32 %i.cpw, -1
  %i.cpy = icmp ult i32 %i.cpx, 3
  br i1 %i.cpy, label %.epil.preheader1700, label %.lr.ph.i656.new

.lr.ph.i656.new:                                  ; preds = %.lr.ph.i656
  %unroll_iter1706 = and i64 %wide.trip.count.i657, 4294967292
  br label %bb.jm

.preheader.i664.unr-lcssa:                        ; preds = %bb.jm
  %lcmp.mod1703.not = icmp eq i64 %xtraiter1701, 0
  br i1 %lcmp.mod1703.not, label %.preheader.i664, label %.epil.preheader1700

.epil.preheader1700:                              ; preds = %.preheader.i664.unr-lcssa, %.lr.ph.i656
  %indvars.iv51.i658.epil.init = phi i64 [ 0, %.lr.ph.i656 ], [ %indvars.iv.next52.i661.3, %.preheader.i664.unr-lcssa ]
  %indvars.iv.i659.epil.init = phi i64 [ %i.cpu, %.lr.ph.i656 ], [ %indvars.iv.next.i662.3, %.preheader.i664.unr-lcssa ]
  %.036.i660.epil.init = phi i64 [ 0, %.lr.ph.i656 ], [ %i.csq, %.preheader.i664.unr-lcssa ]
  %lcmp.mod1705 = icmp ne i64 %xtraiter1701, 0
  tail call void @llvm.assume(i1 %lcmp.mod1705)
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jl, %.epil.preheader1700
  %indvars.iv51.i658.epil = phi i64 [ %indvars.iv51.i658.epil.init, %.epil.preheader1700 ], [ %indvars.iv.next52.i661.epil, %bb.jl ] ; 3 uses
  %indvars.iv.i659.epil = phi i64 [ %indvars.iv.i659.epil.init, %.epil.preheader1700 ], [ %indvars.iv.next.i662.epil, %bb.jl ] ; 2 uses
  %.036.i660.epil = phi i64 [ %.036.i660.epil.init, %.epil.preheader1700 ], [ %i.cqj, %bb.jl ]
  %epil.iter1702 = phi i64 [ 0, %.epil.preheader1700 ], [ %epil.iter1702.next, %bb.jl ]
  %i.cpz = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv51.i658.epil
  %i.cqa = load i16, ptr %i.cpz, align 2, !tbaa !20
  %i.cqb = zext i16 %i.cqa to i64
  %i.cqc = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %indvars.iv.i659.epil
  %i.cqd = load i16, ptr %i.cqc, align 2, !tbaa !20
  %i.cqe = zext i16 %i.cqd to i64
  %i.cqf = add nuw nsw i64 %.036.i660.epil, %i.cqb
  %i.cqg = add nuw nsw i64 %i.cqf, %i.cqe         ; 2 uses
  %i.cqh = trunc i64 %i.cqg to i16
  %i.cqi = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv51.i658.epil
  store i16 %i.cqh, ptr %i.cqi, align 2, !tbaa !20
  %i.cqj = lshr i64 %i.cqg, 16                    ; 2 uses
  %indvars.iv.next52.i661.epil = add nuw nsw i64 %indvars.iv51.i658.epil, 1
  %indvars.iv.next.i662.epil = add nsw i64 %indvars.iv.i659.epil, 1
  %epil.iter1702.next = add i64 %epil.iter1702, 1 ; 2 uses
  %epil.iter1702.cmp.not = icmp eq i64 %epil.iter1702.next, %xtraiter1701
  br i1 %epil.iter1702.cmp.not, label %.preheader.i664, label %bb.jl, !llvm.loop !80

.preheader.i664:                                  ; preds = %bb.jl, %.preheader.i664.unr-lcssa
  %.lcssa1509 = phi i64 [ %i.csq, %.preheader.i664.unr-lcssa ], [ %i.cqj, %bb.jl ] ; 2 uses
  %i.cqk = icmp samesign ult i32 %i.cpw, 10
  br i1 %i.cqk, label %.lr.ph40.i628, label %._crit_edge.i635

.lr.ph40.i628:                                    ; preds = %bb.jk, %.preheader.i664
  %.0.lcssa94.i629 = phi i64 [ %.lcssa1509, %.preheader.i664 ], [ 0, %bb.jk ] ; 2 uses
  %.027.lcssa93.i630 = phi i32 [ %i.cpw, %.preheader.i664 ], [ 0, %bb.jk ] ; 2 uses
  %i.cql = zext nneg i32 %.027.lcssa93.i630 to i64 ; 3 uses
  %i.cqm = sub nsw i64 2, %i.cql
  %xtraiter1710 = and i64 %i.cqm, 7               ; 2 uses
  %lcmp.mod1711.not = icmp eq i64 %xtraiter1710, 0
  br i1 %lcmp.mod1711.not, label %.prol.loopexit1709, label %.prol.preheader1708

.prol.preheader1708:                              ; preds = %.lr.ph40.i628, %.prol.preheader1708
  %indvars.iv56.i631.prol = phi i64 [ %indvars.iv.next57.i633.prol, %.prol.preheader1708 ], [ %i.cql, %.lr.ph40.i628 ] ; 3 uses
  %.139.i632.prol = phi i64 [ %i.cqt, %.prol.preheader1708 ], [ %.0.lcssa94.i629, %.lr.ph40.i628 ]
  %prol.iter1712 = phi i64 [ %prol.iter1712.next, %.prol.preheader1708 ], [ 0, %.lr.ph40.i628 ]
  %i.cqn = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv56.i631.prol
  %i.cqo = load i16, ptr %i.cqn, align 2, !tbaa !20
  %i.cqp = zext i16 %i.cqo to i64
  %i.cqq = add nuw nsw i64 %.139.i632.prol, %i.cqp ; 2 uses
  %i.cqr = trunc i64 %i.cqq to i16
  %i.cqs = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv56.i631.prol
  store i16 %i.cqr, ptr %i.cqs, align 2, !tbaa !20
  %i.cqt = lshr i64 %i.cqq, 16                    ; 3 uses
  %indvars.iv.next57.i633.prol = add nuw nsw i64 %indvars.iv56.i631.prol, 1 ; 2 uses
  %prol.iter1712.next = add i64 %prol.iter1712, 1 ; 2 uses
  %prol.iter1712.cmp.not = icmp eq i64 %prol.iter1712.next, %xtraiter1710
  br i1 %prol.iter1712.cmp.not, label %.prol.loopexit1709, label %.prol.preheader1708, !llvm.loop !81

.prol.loopexit1709:                               ; preds = %.prol.preheader1708, %.lr.ph40.i628
  %.lcssa1510.unr = phi i64 [ poison, %.lr.ph40.i628 ], [ %i.cqt, %.prol.preheader1708 ]
  %indvars.iv56.i631.unr = phi i64 [ %i.cql, %.lr.ph40.i628 ], [ %indvars.iv.next57.i633.prol, %.prol.preheader1708 ]
  %.139.i632.unr = phi i64 [ %.0.lcssa94.i629, %.lr.ph40.i628 ], [ %i.cqt, %.prol.preheader1708 ]
  %i.cqu = add nsw i32 %.027.lcssa93.i630, -3
  %i.cqv = icmp ult i32 %i.cqu, 7
  br i1 %i.cqv, label %._crit_edge.i635, label %.lr.ph40.i628.new

bb.jm:                                            ; preds = %bb.jm, %.lr.ph.i656.new
  %indvars.iv51.i658 = phi i64 [ 0, %.lr.ph.i656.new ], [ %indvars.iv.next52.i661.3, %bb.jm ] ; 6 uses
  %indvars.iv.i659 = phi i64 [ %i.cpu, %.lr.ph.i656.new ], [ %indvars.iv.next.i662.3, %bb.jm ] ; 5 uses
  %.036.i660 = phi i64 [ 0, %.lr.ph.i656.new ], [ %i.csq, %bb.jm ]
  %niter1707 = phi i64 [ 0, %.lr.ph.i656.new ], [ %niter1707.next.3, %bb.jm ]
  %i.cqw = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv51.i658
  %i.cqx = load i16, ptr %i.cqw, align 4, !tbaa !20
  %i.cqy = zext i16 %i.cqx to i64
  %i.cqz = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %indvars.iv.i659
  %i.cra = load i16, ptr %i.cqz, align 2, !tbaa !20
  %i.crb = zext i16 %i.cra to i64
  %i.crc = add nuw nsw i64 %.036.i660, %i.cqy
  %i.crd = add nuw nsw i64 %i.crc, %i.crb         ; 2 uses
  %i.cre = trunc i64 %i.crd to i16
  %i.crf = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv51.i658
  store i16 %i.cre, ptr %i.crf, align 8, !tbaa !20
  %i.crg = lshr i64 %i.crd, 16
  %indvars.iv.next52.i661 = or disjoint i64 %indvars.iv51.i658, 1 ; 2 uses
  %i.crh = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next52.i661
  %i.cri = load i16, ptr %i.crh, align 2, !tbaa !20
  %i.crj = zext i16 %i.cri to i64
  %i.crk = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.i659
  %i.crl = getelementptr i8, ptr %i.crk, i64 2
  %i.crm = load i16, ptr %i.crl, align 2, !tbaa !20
  %i.crn = zext i16 %i.crm to i64
  %i.cro = add nuw nsw i64 %i.crg, %i.crj
  %i.crp = add nuw nsw i64 %i.cro, %i.crn         ; 2 uses
  %i.crq = trunc i64 %i.crp to i16
  %i.crr = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next52.i661
  store i16 %i.crq, ptr %i.crr, align 2, !tbaa !20
  %i.crs = lshr i64 %i.crp, 16
  %indvars.iv.next52.i661.1 = or disjoint i64 %indvars.iv51.i658, 2 ; 2 uses
  %i.crt = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next52.i661.1
  %i.cru = load i16, ptr %i.crt, align 8, !tbaa !20
  %i.crv = zext i16 %i.cru to i64
  %i.crw = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.i659
  %i.crx = getelementptr i8, ptr %i.crw, i64 4
  %i.cry = load i16, ptr %i.crx, align 2, !tbaa !20
  %i.crz = zext i16 %i.cry to i64
  %i.csa = add nuw nsw i64 %i.crs, %i.crv
  %i.csb = add nuw nsw i64 %i.csa, %i.crz         ; 2 uses
  %i.csc = trunc i64 %i.csb to i16
  %i.csd = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next52.i661.1
  store i16 %i.csc, ptr %i.csd, align 4, !tbaa !20
  %i.cse = lshr i64 %i.csb, 16
  %indvars.iv.next52.i661.2 = or disjoint i64 %indvars.iv51.i658, 3 ; 2 uses
  %i.csf = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next52.i661.2
  %i.csg = load i16, ptr %i.csf, align 2, !tbaa !20
  %i.csh = zext i16 %i.csg to i64
  %i.csi = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.i659
  %i.csj = getelementptr i8, ptr %i.csi, i64 6
  %i.csk = load i16, ptr %i.csj, align 2, !tbaa !20
  %i.csl = zext i16 %i.csk to i64
  %i.csm = add nuw nsw i64 %i.cse, %i.csh
  %i.csn = add nuw nsw i64 %i.csm, %i.csl         ; 2 uses
  %i.cso = trunc i64 %i.csn to i16
  %i.csp = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next52.i661.2
  store i16 %i.cso, ptr %i.csp, align 2, !tbaa !20
  %i.csq = lshr i64 %i.csn, 16                    ; 3 uses
  %indvars.iv.next52.i661.3 = add nuw nsw i64 %indvars.iv51.i658, 4 ; 2 uses
  %indvars.iv.next.i662.3 = add nsw i64 %indvars.iv.i659, 4 ; 2 uses
  %niter1707.next.3 = add i64 %niter1707, 4       ; 2 uses
  %niter1707.ncmp.3 = icmp eq i64 %niter1707.next.3, %unroll_iter1706
  br i1 %niter1707.ncmp.3, label %.preheader.i664.unr-lcssa, label %bb.jm, !llvm.loop !5

.lr.ph40.i628.new:                                ; preds = %.prol.loopexit1709, %.lr.ph40.i628.new
  %indvars.iv56.i631 = phi i64 [ %indvars.iv.next57.i633.7, %.lr.ph40.i628.new ], [ %indvars.iv56.i631.unr, %.prol.loopexit1709 ] ; 10 uses
  %.139.i632 = phi i64 [ %i.cuu, %.lr.ph40.i628.new ], [ %.139.i632.unr, %.prol.loopexit1709 ]
  %i.csr = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv56.i631
  %i.css = load i16, ptr %i.csr, align 2, !tbaa !20
  %i.cst = zext i16 %i.css to i64
  %i.csu = add nuw nsw i64 %.139.i632, %i.cst     ; 2 uses
  %i.csv = trunc i64 %i.csu to i16
  %i.csw = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv56.i631
  store i16 %i.csv, ptr %i.csw, align 2, !tbaa !20
  %i.csx = lshr i64 %i.csu, 16
  %indvars.iv.next57.i633 = add nuw nsw i64 %indvars.iv56.i631, 1 ; 2 uses
  %i.csy = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i633
  %i.csz = load i16, ptr %i.csy, align 2, !tbaa !20
  %i.cta = zext i16 %i.csz to i64
  %i.ctb = add nuw nsw i64 %i.csx, %i.cta         ; 2 uses
  %i.ctc = trunc i64 %i.ctb to i16
  %i.ctd = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next57.i633
  store i16 %i.ctc, ptr %i.ctd, align 2, !tbaa !20
  %i.cte = lshr i64 %i.ctb, 16
  %indvars.iv.next57.i633.1 = add nuw nsw i64 %indvars.iv56.i631, 2 ; 2 uses
  %i.ctf = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i633.1
  %i.ctg = load i16, ptr %i.ctf, align 2, !tbaa !20
  %i.cth = zext i16 %i.ctg to i64
  %i.cti = add nuw nsw i64 %i.cte, %i.cth         ; 2 uses
  %i.ctj = trunc i64 %i.cti to i16
  %i.ctk = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next57.i633.1
  store i16 %i.ctj, ptr %i.ctk, align 2, !tbaa !20
  %i.ctl = lshr i64 %i.cti, 16
  %indvars.iv.next57.i633.2 = add nuw nsw i64 %indvars.iv56.i631, 3 ; 2 uses
  %i.ctm = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i633.2
  %i.ctn = load i16, ptr %i.ctm, align 2, !tbaa !20
  %i.cto = zext i16 %i.ctn to i64
  %i.ctp = add nuw nsw i64 %i.ctl, %i.cto         ; 2 uses
  %i.ctq = trunc i64 %i.ctp to i16
  %i.ctr = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next57.i633.2
  store i16 %i.ctq, ptr %i.ctr, align 2, !tbaa !20
  %i.cts = lshr i64 %i.ctp, 16
  %indvars.iv.next57.i633.3 = add nuw nsw i64 %indvars.iv56.i631, 4 ; 2 uses
  %i.ctt = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i633.3
  %i.ctu = load i16, ptr %i.ctt, align 2, !tbaa !20
  %i.ctv = zext i16 %i.ctu to i64
  %i.ctw = add nuw nsw i64 %i.cts, %i.ctv         ; 2 uses
  %i.ctx = trunc i64 %i.ctw to i16
  %i.cty = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next57.i633.3
  store i16 %i.ctx, ptr %i.cty, align 2, !tbaa !20
  %i.ctz = lshr i64 %i.ctw, 16
  %indvars.iv.next57.i633.4 = add nuw nsw i64 %indvars.iv56.i631, 5 ; 2 uses
  %i.cua = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i633.4
  %i.cub = load i16, ptr %i.cua, align 2, !tbaa !20
  %i.cuc = zext i16 %i.cub to i64
  %i.cud = add nuw nsw i64 %i.ctz, %i.cuc         ; 2 uses
  %i.cue = trunc i64 %i.cud to i16
  %i.cuf = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next57.i633.4
  store i16 %i.cue, ptr %i.cuf, align 2, !tbaa !20
  %i.cug = lshr i64 %i.cud, 16
  %indvars.iv.next57.i633.5 = add nuw nsw i64 %indvars.iv56.i631, 6 ; 2 uses
  %i.cuh = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i633.5
  %i.cui = load i16, ptr %i.cuh, align 2, !tbaa !20
  %i.cuj = zext i16 %i.cui to i64
  %i.cuk = add nuw nsw i64 %i.cug, %i.cuj         ; 2 uses
  %i.cul = trunc i64 %i.cuk to i16
  %i.cum = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next57.i633.5
  store i16 %i.cul, ptr %i.cum, align 2, !tbaa !20
  %i.cun = lshr i64 %i.cuk, 16
  %indvars.iv.next57.i633.6 = add nuw nsw i64 %indvars.iv56.i631, 7 ; 2 uses
  %i.cuo = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i633.6
  %i.cup = load i16, ptr %i.cuo, align 2, !tbaa !20
  %i.cuq = zext i16 %i.cup to i64
  %i.cur = add nuw nsw i64 %i.cun, %i.cuq         ; 2 uses
  %i.cus = trunc i64 %i.cur to i16
  %i.cut = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next57.i633.6
  store i16 %i.cus, ptr %i.cut, align 2, !tbaa !20
  %i.cuu = lshr i64 %i.cur, 16                    ; 2 uses
  %indvars.iv.next57.i633.7 = add nuw nsw i64 %indvars.iv56.i631, 8 ; 2 uses
  %exitcond59.not.i634.7 = icmp eq i64 %indvars.iv.next57.i633.7, 10
  br i1 %exitcond59.not.i634.7, label %._crit_edge.i635, label %.lr.ph40.i628.new, !llvm.loop !6

._crit_edge.i635:                                 ; preds = %.prol.loopexit1709, %.lr.ph40.i628.new, %.preheader.i664
  %.128.lcssa.i636 = phi i32 [ %i.cpw, %.preheader.i664 ], [ 10, %.lr.ph40.i628.new ], [ 10, %.prol.loopexit1709 ]
  %.1.lcssa.i637 = phi i64 [ %.lcssa1509, %.preheader.i664 ], [ %.lcssa1510.unr, %.prol.loopexit1709 ], [ %i.cuu, %.lr.ph40.i628.new ]
  %i.cuv = trunc nuw nsw i64 %.1.lcssa.i637 to i16
  %i.cuw = zext nneg i32 %.128.lcssa.i636 to i64
  %i.cux = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.cuw
  store i16 %i.cuv, ptr %i.cux, align 2, !tbaa !20
  %i.cuy = add i16 %i.che, 1
  %i.cuz = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep.i617, align 4, !tbaa !20 ; 2 uses
  %.not.i.i638 = icmp eq i16 %i.cuz, 0
  br i1 %.not.i.i638, label %bb.jn, label %.preheader.i.i639

bb.jn:                                            ; preds = %._crit_edge.i635
  %i.cva = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60.i618, align 2, !tbaa !20 ; 2 uses
  %.not.i.1.i642 = icmp eq i16 %i.cva, 0
  br i1 %.not.i.1.i642, label %bb.jo, label %.preheader.i.i639

bb.jo:                                            ; preds = %bb.jn
  %i.cvb = add i16 %i.che, -1
  %i.cvc = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61.i619, align 16, !tbaa !20
  %.not.i.2.i643 = icmp eq i16 %i.cvc, 0
  br i1 %.not.i.2.i643, label %bb.jp, label %.lr.ph47.i.i644

bb.jp:                                            ; preds = %bb.jo
  %i.cvd = add i16 %i.che, -2
  %i.cve = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep62.i620, align 2, !tbaa !20
  %.not.i.3.i648 = icmp eq i16 %i.cve, 0
  br i1 %.not.i.3.i648, label %bb.jq, label %.lr.ph47.i.i644

bb.jq:                                            ; preds = %bb.jp
  %i.cvf = add i16 %i.che, -3
  %i.cvg = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep63.i621, align 4, !tbaa !20
  %.not.i.4.i649 = icmp eq i16 %i.cvg, 0
  br i1 %.not.i.4.i649, label %bb.jr, label %.lr.ph47.i.i644

bb.jr:                                            ; preds = %bb.jq
  %i.cvh = add i16 %i.che, -4
  %i.cvi = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep64.i622, align 2, !tbaa !20
  %.not.i.5.i650 = icmp eq i16 %i.cvi, 0
  br i1 %.not.i.5.i650, label %bb.js, label %.lr.ph47.i.i644

bb.js:                                            ; preds = %bb.jr
  %i.cvj = add i16 %i.che, -5
  %i.cvk = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep65.i623, align 8, !tbaa !20
  %.not.i.6.i651 = icmp eq i16 %i.cvk, 0
  br i1 %.not.i.6.i651, label %bb.jt, label %.lr.ph47.i.i644

bb.jt:                                            ; preds = %bb.js
  %i.cvl = add i16 %i.che, -6
  %i.cvm = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep66.i624, align 2, !tbaa !20
  %.not.i.7.i652 = icmp eq i16 %i.cvm, 0
  br i1 %.not.i.7.i652, label %bb.ju, label %.lr.ph47.i.i644

bb.ju:                                            ; preds = %bb.jt
  %i.cvn = add i16 %i.che, -7
  %i.cvo = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep67.i625, align 4, !tbaa !20
  %.not.i.8.i653 = icmp eq i16 %i.cvo, 0
  br i1 %.not.i.8.i653, label %bb.jv, label %.lr.ph47.i.i644

bb.jv:                                            ; preds = %bb.ju
  %i.cvp = add i16 %i.che, -8
  %i.cvq = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep68.i626, align 2, !tbaa !20
  %.not.i.9.i654 = icmp eq i16 %i.cvq, 0
  br i1 %.not.i.9.i654, label %bb.jw, label %.lr.ph47.i.i644

bb.jw:                                            ; preds = %bb.jv
  %i.cvr = add i16 %i.che, -9
  %i.cvs = load i16, ptr %i.j, align 16, !tbaa !20
  %.not.i.10.i655 = icmp eq i16 %i.cvs, 0
  br i1 %.not.i.10.i655, label %bb.jx, label %.lr.ph47.i.i644

bb.jx:                                            ; preds = %bb.jw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ec, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %addmag0.exit665

.preheader.i.i639:                                ; preds = %bb.jn, %._crit_edge.i635
  %i.cvt = phi i16 [ %i.cuz, %._crit_edge.i635 ], [ %i.cva, %bb.jn ]
  %indvars.iv72.in.i.lcssa.sroa.phi.i640 = phi ptr [ %indvars.iv72.in.i.lcssa.sroa.gep.i627, %._crit_edge.i635 ], [ %indvars.iv72.i.lcssa.sroa.gep.i617, %bb.jn ] ; 2 uses
  %.03341.i.lcssa.i641 = phi i16 [ %i.cuy, %._crit_edge.i635 ], [ %i.che, %bb.jn ]
  %i.cvu = getelementptr inbounds nuw i8, ptr %i.ea, i64 26
  store i16 %.03341.i.lcssa.i641, ptr %i.cvu, align 2, !tbaa !26
  store i16 %i.cha, ptr %i.ec, align 2, !tbaa !24
  %i.cvv = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %i.cvw = getelementptr inbounds nuw i8, ptr %i.ea, i64 46
  store i16 %i.cvt, ptr %i.cvw, align 2, !tbaa !20
  %i.cvx = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.i640, i64 -4
  %i.cvy = load i16, ptr %i.cvx, align 2, !tbaa !20
  %i.cvz = getelementptr inbounds nuw i8, ptr %i.ea, i64 44
  store i16 %i.cvy, ptr %i.cvz, align 2, !tbaa !20
  %i.cwa = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.i640, i64 -20
  %i.cwb = load <8 x i16>, ptr %i.cwa, align 2, !tbaa !20
  store <8 x i16> %i.cwb, ptr %i.cvv, align 2, !tbaa !20
  br label %addmag0.exit665

.lr.ph47.i.i644:                                  ; preds = %bb.jw, %bb.jv, %bb.ju, %bb.jt, %bb.js, %bb.jr, %bb.jq, %bb.jp, %bb.jo
  %.03341.i.lcssa.ph.i645 = phi i16 [ %i.cvr, %bb.jw ], [ %i.cvp, %bb.jv ], [ %i.cvn, %bb.ju ], [ %i.cvl, %bb.jt ], [ %i.cvj, %bb.js ], [ %i.cvh, %bb.jr ], [ %i.cvf, %bb.jq ], [ %i.cvd, %bb.jp ], [ %i.cvb, %bb.jo ]
  %indvars.iv58.i.lcssa.ph.i646 = phi i64 [ 0, %bb.jw ], [ 2, %bb.jv ], [ 4, %bb.ju ], [ 6, %bb.jt ], [ 8, %bb.js ], [ 10, %bb.jr ], [ 12, %bb.jq ], [ 14, %bb.jp ], [ 16, %bb.jo ] ; 3 uses
  %i.cwc = getelementptr inbounds nuw i8, ptr %i.ea, i64 26
  store i16 %.03341.i.lcssa.ph.i645, ptr %i.cwc, align 2, !tbaa !26
  store i16 %i.cha, ptr %i.ec, align 2, !tbaa !24
  %i.cwd = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %i.cwe = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph.i646
  %scevgep.i647 = getelementptr i8, ptr %i.ec, i64 %i.cwe
  %i.cwf = add nuw nsw i64 %indvars.iv58.i.lcssa.ph.i646, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i647, ptr noundef nonnull align 16 dereferenceable(1) %i.j, i64 range(i64 0, 23) %i.cwf, i1 false), !tbaa !20
  %i.cwg = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph.i646
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.cwd, i8 0, i64 %i.cwg, i1 false), !tbaa !20
  br label %addmag0.exit665

addmag0.exit665:                                  ; preds = %bb.jx, %.preheader.i.i639, %.lr.ph47.i.i644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  br label %add.exit35

bb.jy:                                            ; preds = %abscmp.exit718
  br i1 %.014.i717, label %bb.jz, label %bb.km

bb.jz:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #13
  %i.cwh = sext i16 %i.chd to i32                 ; 2 uses
  %i.cwi = sext i16 %i.che to i32                 ; 3 uses
  %i.cwj = sub nsw i32 %i.cwh, %i.cwi
  %i.cwk = icmp slt i32 %i.cwj, 10
  br i1 %i.cwk, label %.lr.ph.i607, label %.lr.ph38.i584

.lr.ph.i607:                                      ; preds = %bb.jz
  %i.cwl = sext i16 %i.chd to i64
  %i.cwm = sub nsw i32 0, %i.cwi
  %i.cwn = sext i32 %i.cwm to i64
  %i.cwo = add nsw i64 %i.cwn, %i.cwl             ; 2 uses
  %reass.sub1165 = sub nsw i32 %i.cwi, %i.cwh     ; 3 uses
  %i.cwp = add nsw i32 %reass.sub1165, 10         ; 2 uses
  %wide.trip.count.i608 = zext i32 %i.cwp to i64  ; 2 uses
  %xtraiter1688 = and i64 %wide.trip.count.i608, 3 ; 3 uses
  %i.cwq = add nsw i32 %reass.sub1165, 9
  %i.cwr = icmp ult i32 %i.cwq, 3
  br i1 %i.cwr, label %.epil.preheader1687, label %.lr.ph.i607.new

.lr.ph.i607.new:                                  ; preds = %.lr.ph.i607
  %unroll_iter1693 = and i64 %wide.trip.count.i608, 4294967292
  br label %bb.kb

.preheader.i615.unr-lcssa:                        ; preds = %bb.kb
  %lcmp.mod1690.not = icmp eq i64 %xtraiter1688, 0
  br i1 %lcmp.mod1690.not, label %.preheader.i615, label %.epil.preheader1687

.epil.preheader1687:                              ; preds = %.preheader.i615.unr-lcssa, %.lr.ph.i607
  %indvars.iv45.i609.epil.init = phi i64 [ 0, %.lr.ph.i607 ], [ %indvars.iv.next46.i612.3, %.preheader.i615.unr-lcssa ]
  %indvars.iv.i610.epil.init = phi i64 [ %i.cwo, %.lr.ph.i607 ], [ %indvars.iv.next.i613.3, %.preheader.i615.unr-lcssa ]
  %.034.i611.epil.init = phi i64 [ 0, %.lr.ph.i607 ], [ %i.czv, %.preheader.i615.unr-lcssa ]
  %lcmp.mod1692 = icmp ne i64 %xtraiter1688, 0
  tail call void @llvm.assume(i1 %lcmp.mod1692)
  br label %bb.ka

bb.ka:                                            ; preds = %bb.ka, %.epil.preheader1687
  %indvars.iv45.i609.epil = phi i64 [ %indvars.iv45.i609.epil.init, %.epil.preheader1687 ], [ %indvars.iv.next46.i612.epil, %bb.ka ] ; 3 uses
  %indvars.iv.i610.epil = phi i64 [ %indvars.iv.i610.epil.init, %.epil.preheader1687 ], [ %indvars.iv.next.i613.epil, %bb.ka ] ; 2 uses
  %.034.i611.epil = phi i64 [ %.034.i611.epil.init, %.epil.preheader1687 ], [ %i.cxe, %bb.ka ]
  %epil.iter1689 = phi i64 [ 0, %.epil.preheader1687 ], [ %epil.iter1689.next, %bb.ka ]
  %i.cws = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv45.i609.epil
  %i.cwt = load i16, ptr %i.cws, align 2, !tbaa !20
  %i.cwu = zext i16 %i.cwt to i64
  %i.cwv = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %indvars.iv.i610.epil
  %i.cww = load i16, ptr %i.cwv, align 2, !tbaa !20
  %i.cwx = zext i16 %i.cww to i64
  %i.cwy = sub nsw i64 %i.cwu, %i.cwx
  %i.cwz = add nsw i64 %i.cwy, %.034.i611.epil    ; 2 uses
  %i.cxa = trunc i64 %i.cwz to i16
  %i.cxb = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv45.i609.epil
  store i16 %i.cxa, ptr %i.cxb, align 2, !tbaa !20
  %i.cxc = add nsw i64 %i.cwz, 2147483648
  %i.cxd = lshr i64 %i.cxc, 16
  %i.cxe = add nsw i64 %i.cxd, -32768             ; 2 uses
  %indvars.iv.next46.i612.epil = add nuw nsw i64 %indvars.iv45.i609.epil, 1
  %indvars.iv.next.i613.epil = add nsw i64 %indvars.iv.i610.epil, 1
  %epil.iter1689.next = add i64 %epil.iter1689, 1 ; 2 uses
  %epil.iter1689.cmp.not = icmp eq i64 %epil.iter1689.next, %xtraiter1688
  br i1 %epil.iter1689.cmp.not, label %.preheader.i615, label %bb.ka, !llvm.loop !82

.preheader.i615:                                  ; preds = %bb.ka, %.preheader.i615.unr-lcssa
  %.lcssa1508 = phi i64 [ %i.czv, %.preheader.i615.unr-lcssa ], [ %i.cxe, %bb.ka ]
  %i.cxf = icmp slt i32 %reass.sub1165, 0
  br i1 %i.cxf, label %.lr.ph38.i584, label %._crit_edge.i591

.lr.ph38.i584:                                    ; preds = %bb.jz, %.preheader.i615
  %.0.lcssa85.i585 = phi i64 [ %.lcssa1508, %.preheader.i615 ], [ 0, %bb.jz ] ; 2 uses
  %.025.lcssa84.i586 = phi i32 [ %i.cwp, %.preheader.i615 ], [ 0, %bb.jz ] ; 2 uses
  %i.cxg = zext i32 %.025.lcssa84.i586 to i64     ; 3 uses
  %i.cxh = sub nsw i64 2, %i.cxg
  %xtraiter1697 = and i64 %i.cxh, 3               ; 2 uses
  %lcmp.mod1698.not = icmp eq i64 %xtraiter1697, 0
  br i1 %lcmp.mod1698.not, label %.prol.loopexit1696, label %.prol.preheader1695

.prol.preheader1695:                              ; preds = %.lr.ph38.i584, %.prol.preheader1695
  %indvars.iv50.i587.prol = phi i64 [ %indvars.iv.next51.i589.prol, %.prol.preheader1695 ], [ %i.cxg, %.lr.ph38.i584 ] ; 3 uses
  %.137.i588.prol = phi i64 [ %i.cxq, %.prol.preheader1695 ], [ %.0.lcssa85.i585, %.lr.ph38.i584 ]
  %prol.iter1699 = phi i64 [ %prol.iter1699.next, %.prol.preheader1695 ], [ 0, %.lr.ph38.i584 ]
  %i.cxi = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv50.i587.prol
  %i.cxj = load i16, ptr %i.cxi, align 2, !tbaa !20
  %i.cxk = zext i16 %i.cxj to i64
  %i.cxl = add nsw i64 %.137.i588.prol, %i.cxk    ; 2 uses
  %i.cxm = trunc i64 %i.cxl to i16
  %i.cxn = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv50.i587.prol
  store i16 %i.cxm, ptr %i.cxn, align 2, !tbaa !20
  %i.cxo = add nsw i64 %i.cxl, 2147483648
  %i.cxp = lshr i64 %i.cxo, 16
  %i.cxq = add nsw i64 %i.cxp, -32768             ; 2 uses
  %indvars.iv.next51.i589.prol = add nuw nsw i64 %indvars.iv50.i587.prol, 1 ; 2 uses
  %prol.iter1699.next = add i64 %prol.iter1699, 1 ; 2 uses
  %prol.iter1699.cmp.not = icmp eq i64 %prol.iter1699.next, %xtraiter1697
  br i1 %prol.iter1699.cmp.not, label %.prol.loopexit1696, label %.prol.preheader1695, !llvm.loop !83

.prol.loopexit1696:                               ; preds = %.prol.preheader1695, %.lr.ph38.i584
  %indvars.iv50.i587.unr = phi i64 [ %i.cxg, %.lr.ph38.i584 ], [ %indvars.iv.next51.i589.prol, %.prol.preheader1695 ]
  %.137.i588.unr = phi i64 [ %.0.lcssa85.i585, %.lr.ph38.i584 ], [ %i.cxq, %.prol.preheader1695 ]
  %i.cxr = add nsw i32 %.025.lcssa84.i586, -7
  %i.cxs = icmp ult i32 %i.cxr, 3
  br i1 %i.cxs, label %._crit_edge.i591, label %.lr.ph38.i584.new

bb.kb:                                            ; preds = %bb.kb, %.lr.ph.i607.new
  %indvars.iv45.i609 = phi i64 [ 0, %.lr.ph.i607.new ], [ %indvars.iv.next46.i612.3, %bb.kb ] ; 6 uses
  %indvars.iv.i610 = phi i64 [ %i.cwo, %.lr.ph.i607.new ], [ %indvars.iv.next.i613.3, %bb.kb ] ; 5 uses
  %.034.i611 = phi i64 [ 0, %.lr.ph.i607.new ], [ %i.czv, %bb.kb ]
  %niter1694 = phi i64 [ 0, %.lr.ph.i607.new ], [ %niter1694.next.3, %bb.kb ]
  %i.cxt = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv45.i609
  %i.cxu = load i16, ptr %i.cxt, align 4, !tbaa !20
  %i.cxv = zext i16 %i.cxu to i64
  %i.cxw = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %indvars.iv.i610
  %i.cxx = load i16, ptr %i.cxw, align 2, !tbaa !20
  %i.cxy = zext i16 %i.cxx to i64
  %i.cxz = sub nsw i64 %i.cxv, %i.cxy
  %i.cya = add nsw i64 %i.cxz, %.034.i611         ; 2 uses
  %i.cyb = trunc i64 %i.cya to i16
  %i.cyc = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv45.i609
  store i16 %i.cyb, ptr %i.cyc, align 8, !tbaa !20
  %i.cyd = add nsw i64 %i.cya, 2147483648
  %i.cye = lshr i64 %i.cyd, 16
  %i.cyf = add nsw i64 %i.cye, -32768
  %indvars.iv.next46.i612 = or disjoint i64 %indvars.iv45.i609, 1 ; 2 uses
  %i.cyg = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next46.i612
  %i.cyh = load i16, ptr %i.cyg, align 2, !tbaa !20
  %i.cyi = zext i16 %i.cyh to i64
  %i.cyj = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv.i610
  %i.cyk = getelementptr i8, ptr %i.cyj, i64 2
  %i.cyl = load i16, ptr %i.cyk, align 2, !tbaa !20
  %i.cym = zext i16 %i.cyl to i64
  %i.cyn = sub nsw i64 %i.cyi, %i.cym
  %i.cyo = add nsw i64 %i.cyn, %i.cyf             ; 2 uses
  %i.cyp = trunc i64 %i.cyo to i16
  %i.cyq = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.next46.i612
  store i16 %i.cyp, ptr %i.cyq, align 2, !tbaa !20
  %i.cyr = add nsw i64 %i.cyo, 2147483648
  %i.cys = lshr i64 %i.cyr, 16
  %i.cyt = add nsw i64 %i.cys, -32768
  %indvars.iv.next46.i612.1 = or disjoint i64 %indvars.iv45.i609, 2 ; 2 uses
  %i.cyu = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next46.i612.1
  %i.cyv = load i16, ptr %i.cyu, align 8, !tbaa !20
  %i.cyw = zext i16 %i.cyv to i64
  %i.cyx = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv.i610
  %i.cyy = getelementptr i8, ptr %i.cyx, i64 4
  %i.cyz = load i16, ptr %i.cyy, align 2, !tbaa !20
  %i.cza = zext i16 %i.cyz to i64
  %i.czb = sub nsw i64 %i.cyw, %i.cza
  %i.czc = add nsw i64 %i.czb, %i.cyt             ; 2 uses
  %i.czd = trunc i64 %i.czc to i16
  %i.cze = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.next46.i612.1
  store i16 %i.czd, ptr %i.cze, align 4, !tbaa !20
  %i.czf = add nsw i64 %i.czc, 2147483648
  %i.czg = lshr i64 %i.czf, 16
  %i.czh = add nsw i64 %i.czg, -32768
  %indvars.iv.next46.i612.2 = or disjoint i64 %indvars.iv45.i609, 3 ; 2 uses
  %i.czi = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next46.i612.2
  %i.czj = load i16, ptr %i.czi, align 2, !tbaa !20
  %i.czk = zext i16 %i.czj to i64
  %i.czl = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv.i610
  %i.czm = getelementptr i8, ptr %i.czl, i64 6
  %i.czn = load i16, ptr %i.czm, align 2, !tbaa !20
  %i.czo = zext i16 %i.czn to i64
  %i.czp = sub nsw i64 %i.czk, %i.czo
  %i.czq = add nsw i64 %i.czp, %i.czh             ; 2 uses
  %i.czr = trunc i64 %i.czq to i16
  %i.czs = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.next46.i612.2
  store i16 %i.czr, ptr %i.czs, align 2, !tbaa !20
  %i.czt = add nsw i64 %i.czq, 2147483648
  %i.czu = lshr i64 %i.czt, 16
  %i.czv = add nsw i64 %i.czu, -32768             ; 3 uses
  %indvars.iv.next46.i612.3 = add nuw nsw i64 %indvars.iv45.i609, 4 ; 2 uses
  %indvars.iv.next.i613.3 = add nsw i64 %indvars.iv.i610, 4 ; 2 uses
  %niter1694.next.3 = add i64 %niter1694, 4       ; 2 uses
  %niter1694.ncmp.3 = icmp eq i64 %niter1694.next.3, %unroll_iter1693
  br i1 %niter1694.ncmp.3, label %.preheader.i615.unr-lcssa, label %bb.kb, !llvm.loop !3

.lr.ph38.i584.new:                                ; preds = %.prol.loopexit1696, %.lr.ph38.i584.new
  %indvars.iv50.i587 = phi i64 [ %indvars.iv.next51.i589.3, %.lr.ph38.i584.new ], [ %indvars.iv50.i587.unr, %.prol.loopexit1696 ] ; 6 uses
  %.137.i588 = phi i64 [ %i.dbf, %.lr.ph38.i584.new ], [ %.137.i588.unr, %.prol.loopexit1696 ]
  %i.czw = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv50.i587
  %i.czx = load i16, ptr %i.czw, align 2, !tbaa !20
  %i.czy = zext i16 %i.czx to i64
  %i.czz = add nsw i64 %.137.i588, %i.czy         ; 2 uses
  %i.daa = trunc i64 %i.czz to i16
  %i.dab = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv50.i587
  store i16 %i.daa, ptr %i.dab, align 2, !tbaa !20
  %i.dac = add nsw i64 %i.czz, 2147483648
  %i.dad = lshr i64 %i.dac, 16
  %i.dae = add nsw i64 %i.dad, -32768
  %indvars.iv.next51.i589 = add nuw nsw i64 %indvars.iv50.i587, 1 ; 2 uses
  %i.daf = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next51.i589
  %i.dag = load i16, ptr %i.daf, align 2, !tbaa !20
  %i.dah = zext i16 %i.dag to i64
  %i.dai = add nsw i64 %i.dae, %i.dah             ; 2 uses
  %i.daj = trunc i64 %i.dai to i16
  %i.dak = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.next51.i589
  store i16 %i.daj, ptr %i.dak, align 2, !tbaa !20
  %i.dal = add nsw i64 %i.dai, 2147483648
  %i.dam = lshr i64 %i.dal, 16
  %i.dan = add nsw i64 %i.dam, -32768
  %indvars.iv.next51.i589.1 = add nuw nsw i64 %indvars.iv50.i587, 2 ; 2 uses
  %i.dao = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next51.i589.1
  %i.dap = load i16, ptr %i.dao, align 2, !tbaa !20
  %i.daq = zext i16 %i.dap to i64
  %i.dar = add nsw i64 %i.dan, %i.daq             ; 2 uses
  %i.das = trunc i64 %i.dar to i16
  %i.dat = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.next51.i589.1
  store i16 %i.das, ptr %i.dat, align 2, !tbaa !20
  %i.dau = add nsw i64 %i.dar, 2147483648
  %i.dav = lshr i64 %i.dau, 16
  %i.daw = add nsw i64 %i.dav, -32768
  %indvars.iv.next51.i589.2 = add nuw nsw i64 %indvars.iv50.i587, 3 ; 2 uses
  %i.dax = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next51.i589.2
  %i.day = load i16, ptr %i.dax, align 2, !tbaa !20
  %i.daz = zext i16 %i.day to i64
  %i.dba = add nsw i64 %i.daw, %i.daz             ; 2 uses
  %i.dbb = trunc i64 %i.dba to i16
  %i.dbc = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.next51.i589.2
  store i16 %i.dbb, ptr %i.dbc, align 2, !tbaa !20
  %i.dbd = add nsw i64 %i.dba, 2147483648
  %i.dbe = lshr i64 %i.dbd, 16
  %i.dbf = add nsw i64 %i.dbe, -32768
  %indvars.iv.next51.i589.3 = add nuw nsw i64 %indvars.iv50.i587, 4 ; 2 uses
  %exitcond53.not.i590.3 = icmp eq i64 %indvars.iv.next51.i589.3, 10
  br i1 %exitcond53.not.i590.3, label %._crit_edge.i591, label %.lr.ph38.i584.new, !llvm.loop !4

._crit_edge.i591:                                 ; preds = %.prol.loopexit1696, %.lr.ph38.i584.new, %.preheader.i615
  %i.dbg = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep.i575, align 2, !tbaa !20
  %.not.i.not.not.i592 = icmp eq i16 %i.dbg, 0
  br i1 %.not.i.not.not.i592, label %bb.kc, label %.preheader.i.i593

bb.kc:                                            ; preds = %._crit_edge.i591
  %i.dbh = add i16 %i.chd, -1
  %i.dbi = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep54.i576, align 16, !tbaa !20
  %.not.i.1.i594 = icmp eq i16 %i.dbi, 0
  br i1 %.not.i.1.i594, label %bb.kd, label %.lr.ph47.i.i595

bb.kd:                                            ; preds = %bb.kc
  %i.dbj = add i16 %i.chd, -2
  %i.dbk = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep55.i577, align 2, !tbaa !20
  %.not.i.2.i599 = icmp eq i16 %i.dbk, 0
  br i1 %.not.i.2.i599, label %bb.ke, label %.lr.ph47.i.i595

bb.ke:                                            ; preds = %bb.kd
  %i.dbl = add i16 %i.chd, -3
  %i.dbm = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep56.i578, align 4, !tbaa !20
  %.not.i.3.i600 = icmp eq i16 %i.dbm, 0
  br i1 %.not.i.3.i600, label %bb.kf, label %.lr.ph47.i.i595

bb.kf:                                            ; preds = %bb.ke
  %i.dbn = add i16 %i.chd, -4
  %i.dbo = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep57.i579, align 2, !tbaa !20
  %.not.i.4.i601 = icmp eq i16 %i.dbo, 0
  br i1 %.not.i.4.i601, label %bb.kg, label %.lr.ph47.i.i595

bb.kg:                                            ; preds = %bb.kf
  %i.dbp = add i16 %i.chd, -5
  %i.dbq = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep58.i580, align 8, !tbaa !20
  %.not.i.5.i602 = icmp eq i16 %i.dbq, 0
  br i1 %.not.i.5.i602, label %bb.kh, label %.lr.ph47.i.i595

bb.kh:                                            ; preds = %bb.kg
  %i.dbr = add i16 %i.chd, -6
  %i.dbs = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep59.i581, align 2, !tbaa !20
  %.not.i.6.i603 = icmp eq i16 %i.dbs, 0
  br i1 %.not.i.6.i603, label %bb.ki, label %.lr.ph47.i.i595

bb.ki:                                            ; preds = %bb.kh
  %i.dbt = add i16 %i.chd, -7
  %i.dbu = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60.i582, align 4, !tbaa !20
  %.not.i.7.i604 = icmp eq i16 %i.dbu, 0
  br i1 %.not.i.7.i604, label %bb.kj, label %.lr.ph47.i.i595

bb.kj:                                            ; preds = %bb.ki
  %i.dbv = add i16 %i.chd, -8
  %i.dbw = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61.i583, align 2, !tbaa !20
  %.not.i.8.i605 = icmp eq i16 %i.dbw, 0
  br i1 %.not.i.8.i605, label %bb.kk, label %.lr.ph47.i.i595

bb.kk:                                            ; preds = %bb.kj
  %i.dbx = add i16 %i.chd, -9
  %i.dby = load i16, ptr %i.k, align 16, !tbaa !20
  %.not.i.9.i606 = icmp eq i16 %i.dby, 0
  br i1 %.not.i.9.i606, label %bb.kl, label %.lr.ph47.i.i595

bb.kl:                                            ; preds = %bb.kk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ec, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %submag0.exit616

.preheader.i.i593:                                ; preds = %._crit_edge.i591
  %i.dbz = getelementptr inbounds nuw i8, ptr %i.ea, i64 26
  store i16 %i.chd, ptr %i.dbz, align 2, !tbaa !26
  store i16 %i.cha, ptr %i.ec, align 2, !tbaa !24
  %i.dca = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %i.dcb = getelementptr inbounds nuw i8, ptr %i.ea, i64 44
  %i.dcc = load <2 x i16>, ptr %indvars.iv72.i.lcssa.sroa.gep54.i576, align 16, !tbaa !20
  store <2 x i16> %i.dcc, ptr %i.dcb, align 2, !tbaa !20
  %i.dcd = load <8 x i16>, ptr %i.k, align 16, !tbaa !20
  store <8 x i16> %i.dcd, ptr %i.dca, align 2, !tbaa !20
  br label %submag0.exit616

.lr.ph47.i.i595:                                  ; preds = %bb.kk, %bb.kj, %bb.ki, %bb.kh, %bb.kg, %bb.kf, %bb.ke, %bb.kd, %bb.kc
  %.03341.i.lcssa.ph.i596 = phi i16 [ %i.dbx, %bb.kk ], [ %i.dbv, %bb.kj ], [ %i.dbt, %bb.ki ], [ %i.dbr, %bb.kh ], [ %i.dbp, %bb.kg ], [ %i.dbn, %bb.kf ], [ %i.dbl, %bb.ke ], [ %i.dbj, %bb.kd ], [ %i.dbh, %bb.kc ]
  %indvars.iv58.i.lcssa.ph.i597 = phi i64 [ 0, %bb.kk ], [ 2, %bb.kj ], [ 4, %bb.ki ], [ 6, %bb.kh ], [ 8, %bb.kg ], [ 10, %bb.kf ], [ 12, %bb.ke ], [ 14, %bb.kd ], [ 16, %bb.kc ] ; 3 uses
  %i.dce = getelementptr inbounds nuw i8, ptr %i.ea, i64 26
  store i16 %.03341.i.lcssa.ph.i596, ptr %i.dce, align 2, !tbaa !26
  store i16 %i.cha, ptr %i.ec, align 2, !tbaa !24
  %i.dcf = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %i.dcg = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph.i597
  %scevgep.i598 = getelementptr i8, ptr %i.ec, i64 %i.dcg
  %i.dch = add nuw nsw i64 %indvars.iv58.i.lcssa.ph.i597, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i598, ptr noundef nonnull align 16 dereferenceable(1) %i.k, i64 range(i64 0, 21) %i.dch, i1 false), !tbaa !20
  %i.dci = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph.i597
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.dcf, i8 0, i64 %i.dci, i1 false), !tbaa !20
  br label %submag0.exit616

submag0.exit616:                                  ; preds = %bb.kl, %.preheader.i.i593, %.lr.ph47.i.i595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  br label %add.exit35

bb.km:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #13
  %i.dcj = sext i16 %i.che to i32                 ; 2 uses
  %i.dck = sext i16 %i.chd to i32                 ; 3 uses
  %i.dcl = sub nsw i32 %i.dcj, %i.dck
  %i.dcm = icmp slt i32 %i.dcl, 10
  br i1 %i.dcm, label %.lr.ph.i565, label %.lr.ph38.i542

.lr.ph.i565:                                      ; preds = %bb.km
  %i.dcn = sext i16 %i.che to i64
  %i.dco = sub nsw i32 0, %i.dck
  %i.dcp = sext i32 %i.dco to i64
  %i.dcq = add nsw i64 %i.dcn, %i.dcp             ; 2 uses
  %i.dcr = add nsw i32 %i.dck, 10
  %i.dcs = sub nsw i32 %i.dcr, %i.dcj             ; 4 uses
  %wide.trip.count.i566 = zext i32 %i.dcs to i64  ; 2 uses
  %xtraiter1675 = and i64 %wide.trip.count.i566, 3 ; 3 uses
  %i.dct = add nsw i32 %i.dcs, -1
  %i.dcu = icmp ult i32 %i.dct, 3
  br i1 %i.dcu, label %.epil.preheader1674, label %.lr.ph.i565.new

.lr.ph.i565.new:                                  ; preds = %.lr.ph.i565
  %unroll_iter1680 = and i64 %wide.trip.count.i566, 4294967292
  br label %bb.ko

.preheader.i573.unr-lcssa:                        ; preds = %bb.ko
  %lcmp.mod1677.not = icmp eq i64 %xtraiter1675, 0
  br i1 %lcmp.mod1677.not, label %.preheader.i573, label %.epil.preheader1674

.epil.preheader1674:                              ; preds = %.preheader.i573.unr-lcssa, %.lr.ph.i565
  %indvars.iv45.i567.epil.init = phi i64 [ 0, %.lr.ph.i565 ], [ %indvars.iv.next46.i570.3, %.preheader.i573.unr-lcssa ]
  %indvars.iv.i568.epil.init = phi i64 [ %i.dcq, %.lr.ph.i565 ], [ %indvars.iv.next.i571.3, %.preheader.i573.unr-lcssa ]
  %.034.i569.epil.init = phi i64 [ 0, %.lr.ph.i565 ], [ %i.dfy, %.preheader.i573.unr-lcssa ]
  %lcmp.mod1679 = icmp ne i64 %xtraiter1675, 0
  tail call void @llvm.assume(i1 %lcmp.mod1679)
  br label %bb.kn

bb.kn:                                            ; preds = %bb.kn, %.epil.preheader1674
  %indvars.iv45.i567.epil = phi i64 [ %indvars.iv45.i567.epil.init, %.epil.preheader1674 ], [ %indvars.iv.next46.i570.epil, %bb.kn ] ; 3 uses
  %indvars.iv.i568.epil = phi i64 [ %indvars.iv.i568.epil.init, %.epil.preheader1674 ], [ %indvars.iv.next.i571.epil, %bb.kn ] ; 2 uses
  %.034.i569.epil = phi i64 [ %.034.i569.epil.init, %.epil.preheader1674 ], [ %i.ddh, %bb.kn ]
  %epil.iter1676 = phi i64 [ 0, %.epil.preheader1674 ], [ %epil.iter1676.next, %bb.kn ]
  %i.dcv = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv45.i567.epil
  %i.dcw = load i16, ptr %i.dcv, align 2, !tbaa !20
  %i.dcx = zext i16 %i.dcw to i64
  %i.dcy = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %indvars.iv.i568.epil
  %i.dcz = load i16, ptr %i.dcy, align 2, !tbaa !20
  %i.dda = zext i16 %i.dcz to i64
  %i.ddb = sub nsw i64 %i.dcx, %i.dda
  %i.ddc = add nsw i64 %i.ddb, %.034.i569.epil    ; 2 uses
  %i.ddd = trunc i64 %i.ddc to i16
  %i.dde = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv45.i567.epil
  store i16 %i.ddd, ptr %i.dde, align 2, !tbaa !20
  %i.ddf = add nsw i64 %i.ddc, 2147483648
  %i.ddg = lshr i64 %i.ddf, 16
  %i.ddh = add nsw i64 %i.ddg, -32768             ; 2 uses
  %indvars.iv.next46.i570.epil = add nuw nsw i64 %indvars.iv45.i567.epil, 1
  %indvars.iv.next.i571.epil = add nsw i64 %indvars.iv.i568.epil, 1
  %epil.iter1676.next = add i64 %epil.iter1676, 1 ; 2 uses
  %epil.iter1676.cmp.not = icmp eq i64 %epil.iter1676.next, %xtraiter1675
  br i1 %epil.iter1676.cmp.not, label %.preheader.i573, label %bb.kn, !llvm.loop !84

.preheader.i573:                                  ; preds = %bb.kn, %.preheader.i573.unr-lcssa
  %.lcssa1507 = phi i64 [ %i.dfy, %.preheader.i573.unr-lcssa ], [ %i.ddh, %bb.kn ]
  %i.ddi = icmp samesign ult i32 %i.dcs, 10
  br i1 %i.ddi, label %.lr.ph38.i542, label %._crit_edge.i549

.lr.ph38.i542:                                    ; preds = %bb.km, %.preheader.i573
  %.0.lcssa85.i543 = phi i64 [ %.lcssa1507, %.preheader.i573 ], [ 0, %bb.km ] ; 2 uses
  %.025.lcssa84.i544 = phi i32 [ %i.dcs, %.preheader.i573 ], [ 0, %bb.km ] ; 2 uses
  %i.ddj = zext nneg i32 %.025.lcssa84.i544 to i64 ; 3 uses
  %i.ddk = sub nsw i64 2, %i.ddj
  %xtraiter1684 = and i64 %i.ddk, 3               ; 2 uses
  %lcmp.mod1685.not = icmp eq i64 %xtraiter1684, 0
  br i1 %lcmp.mod1685.not, label %.prol.loopexit1683, label %.prol.preheader1682

.prol.preheader1682:                              ; preds = %.lr.ph38.i542, %.prol.preheader1682
  %indvars.iv50.i545.prol = phi i64 [ %indvars.iv.next51.i547.prol, %.prol.preheader1682 ], [ %i.ddj, %.lr.ph38.i542 ] ; 3 uses
  %.137.i546.prol = phi i64 [ %i.ddt, %.prol.preheader1682 ], [ %.0.lcssa85.i543, %.lr.ph38.i542 ]
  %prol.iter1686 = phi i64 [ %prol.iter1686.next, %.prol.preheader1682 ], [ 0, %.lr.ph38.i542 ]
  %i.ddl = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv50.i545.prol
  %i.ddm = load i16, ptr %i.ddl, align 2, !tbaa !20
  %i.ddn = zext i16 %i.ddm to i64
  %i.ddo = add nsw i64 %.137.i546.prol, %i.ddn    ; 2 uses
  %i.ddp = trunc i64 %i.ddo to i16
  %i.ddq = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv50.i545.prol
  store i16 %i.ddp, ptr %i.ddq, align 2, !tbaa !20
  %i.ddr = add nsw i64 %i.ddo, 2147483648
  %i.dds = lshr i64 %i.ddr, 16
  %i.ddt = add nsw i64 %i.dds, -32768             ; 2 uses
  %indvars.iv.next51.i547.prol = add nuw nsw i64 %indvars.iv50.i545.prol, 1 ; 2 uses
  %prol.iter1686.next = add i64 %prol.iter1686, 1 ; 2 uses
  %prol.iter1686.cmp.not = icmp eq i64 %prol.iter1686.next, %xtraiter1684
  br i1 %prol.iter1686.cmp.not, label %.prol.loopexit1683, label %.prol.preheader1682, !llvm.loop !85

.prol.loopexit1683:                               ; preds = %.prol.preheader1682, %.lr.ph38.i542
  %indvars.iv50.i545.unr = phi i64 [ %i.ddj, %.lr.ph38.i542 ], [ %indvars.iv.next51.i547.prol, %.prol.preheader1682 ]
  %.137.i546.unr = phi i64 [ %.0.lcssa85.i543, %.lr.ph38.i542 ], [ %i.ddt, %.prol.preheader1682 ]
  %i.ddu = add nsw i32 %.025.lcssa84.i544, -7
  %i.ddv = icmp ult i32 %i.ddu, 3
  br i1 %i.ddv, label %._crit_edge.i549, label %.lr.ph38.i542.new

bb.ko:                                            ; preds = %bb.ko, %.lr.ph.i565.new
  %indvars.iv45.i567 = phi i64 [ 0, %.lr.ph.i565.new ], [ %indvars.iv.next46.i570.3, %bb.ko ] ; 6 uses
  %indvars.iv.i568 = phi i64 [ %i.dcq, %.lr.ph.i565.new ], [ %indvars.iv.next.i571.3, %bb.ko ] ; 5 uses
  %.034.i569 = phi i64 [ 0, %.lr.ph.i565.new ], [ %i.dfy, %bb.ko ]
  %niter1681 = phi i64 [ 0, %.lr.ph.i565.new ], [ %niter1681.next.3, %bb.ko ]
  %i.ddw = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv45.i567
  %i.ddx = load i16, ptr %i.ddw, align 4, !tbaa !20
  %i.ddy = zext i16 %i.ddx to i64
  %i.ddz = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %indvars.iv.i568
  %i.dea = load i16, ptr %i.ddz, align 2, !tbaa !20
  %i.deb = zext i16 %i.dea to i64
  %i.dec = sub nsw i64 %i.ddy, %i.deb
  %i.ded = add nsw i64 %i.dec, %.034.i569         ; 2 uses
  %i.dee = trunc i64 %i.ded to i16
  %i.def = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv45.i567
  store i16 %i.dee, ptr %i.def, align 8, !tbaa !20
  %i.deg = add nsw i64 %i.ded, 2147483648
  %i.deh = lshr i64 %i.deg, 16
  %i.dei = add nsw i64 %i.deh, -32768
  %indvars.iv.next46.i570 = or disjoint i64 %indvars.iv45.i567, 1 ; 2 uses
  %i.dej = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next46.i570
  %i.dek = load i16, ptr %i.dej, align 2, !tbaa !20
  %i.del = zext i16 %i.dek to i64
  %i.dem = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.i568
  %i.den = getelementptr i8, ptr %i.dem, i64 2
  %i.deo = load i16, ptr %i.den, align 2, !tbaa !20
  %i.dep = zext i16 %i.deo to i64
  %i.deq = sub nsw i64 %i.del, %i.dep
  %i.der = add nsw i64 %i.deq, %i.dei             ; 2 uses
  %i.des = trunc i64 %i.der to i16
  %i.det = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.next46.i570
  store i16 %i.des, ptr %i.det, align 2, !tbaa !20
  %i.deu = add nsw i64 %i.der, 2147483648
  %i.dev = lshr i64 %i.deu, 16
  %i.dew = add nsw i64 %i.dev, -32768
  %indvars.iv.next46.i570.1 = or disjoint i64 %indvars.iv45.i567, 2 ; 2 uses
  %i.dex = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next46.i570.1
  %i.dey = load i16, ptr %i.dex, align 8, !tbaa !20
  %i.dez = zext i16 %i.dey to i64
  %i.dfa = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.i568
  %i.dfb = getelementptr i8, ptr %i.dfa, i64 4
  %i.dfc = load i16, ptr %i.dfb, align 2, !tbaa !20
  %i.dfd = zext i16 %i.dfc to i64
  %i.dfe = sub nsw i64 %i.dez, %i.dfd
  %i.dff = add nsw i64 %i.dfe, %i.dew             ; 2 uses
  %i.dfg = trunc i64 %i.dff to i16
  %i.dfh = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.next46.i570.1
  store i16 %i.dfg, ptr %i.dfh, align 4, !tbaa !20
  %i.dfi = add nsw i64 %i.dff, 2147483648
  %i.dfj = lshr i64 %i.dfi, 16
  %i.dfk = add nsw i64 %i.dfj, -32768
  %indvars.iv.next46.i570.2 = or disjoint i64 %indvars.iv45.i567, 3 ; 2 uses
  %i.dfl = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next46.i570.2
  %i.dfm = load i16, ptr %i.dfl, align 2, !tbaa !20
  %i.dfn = zext i16 %i.dfm to i64
  %i.dfo = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.i568
  %i.dfp = getelementptr i8, ptr %i.dfo, i64 6
  %i.dfq = load i16, ptr %i.dfp, align 2, !tbaa !20
  %i.dfr = zext i16 %i.dfq to i64
  %i.dfs = sub nsw i64 %i.dfn, %i.dfr
  %i.dft = add nsw i64 %i.dfs, %i.dfk             ; 2 uses
  %i.dfu = trunc i64 %i.dft to i16
  %i.dfv = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.next46.i570.2
  store i16 %i.dfu, ptr %i.dfv, align 2, !tbaa !20
  %i.dfw = add nsw i64 %i.dft, 2147483648
  %i.dfx = lshr i64 %i.dfw, 16
  %i.dfy = add nsw i64 %i.dfx, -32768             ; 3 uses
  %indvars.iv.next46.i570.3 = add nuw nsw i64 %indvars.iv45.i567, 4 ; 2 uses
  %indvars.iv.next.i571.3 = add nsw i64 %indvars.iv.i568, 4 ; 2 uses
  %niter1681.next.3 = add i64 %niter1681, 4       ; 2 uses
  %niter1681.ncmp.3 = icmp eq i64 %niter1681.next.3, %unroll_iter1680
  br i1 %niter1681.ncmp.3, label %.preheader.i573.unr-lcssa, label %bb.ko, !llvm.loop !3

.lr.ph38.i542.new:                                ; preds = %.prol.loopexit1683, %.lr.ph38.i542.new
  %indvars.iv50.i545 = phi i64 [ %indvars.iv.next51.i547.3, %.lr.ph38.i542.new ], [ %indvars.iv50.i545.unr, %.prol.loopexit1683 ] ; 6 uses
  %.137.i546 = phi i64 [ %i.dhi, %.lr.ph38.i542.new ], [ %.137.i546.unr, %.prol.loopexit1683 ]
  %i.dfz = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv50.i545
  %i.dga = load i16, ptr %i.dfz, align 2, !tbaa !20
  %i.dgb = zext i16 %i.dga to i64
  %i.dgc = add nsw i64 %.137.i546, %i.dgb         ; 2 uses
  %i.dgd = trunc i64 %i.dgc to i16
  %i.dge = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv50.i545
  store i16 %i.dgd, ptr %i.dge, align 2, !tbaa !20
  %i.dgf = add nsw i64 %i.dgc, 2147483648
  %i.dgg = lshr i64 %i.dgf, 16
  %i.dgh = add nsw i64 %i.dgg, -32768
  %indvars.iv.next51.i547 = add nuw nsw i64 %indvars.iv50.i545, 1 ; 2 uses
  %i.dgi = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next51.i547
  %i.dgj = load i16, ptr %i.dgi, align 2, !tbaa !20
  %i.dgk = zext i16 %i.dgj to i64
  %i.dgl = add nsw i64 %i.dgh, %i.dgk             ; 2 uses
  %i.dgm = trunc i64 %i.dgl to i16
  %i.dgn = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.next51.i547
  store i16 %i.dgm, ptr %i.dgn, align 2, !tbaa !20
  %i.dgo = add nsw i64 %i.dgl, 2147483648
  %i.dgp = lshr i64 %i.dgo, 16
  %i.dgq = add nsw i64 %i.dgp, -32768
  %indvars.iv.next51.i547.1 = add nuw nsw i64 %indvars.iv50.i545, 2 ; 2 uses
  %i.dgr = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next51.i547.1
  %i.dgs = load i16, ptr %i.dgr, align 2, !tbaa !20
  %i.dgt = zext i16 %i.dgs to i64
  %i.dgu = add nsw i64 %i.dgq, %i.dgt             ; 2 uses
  %i.dgv = trunc i64 %i.dgu to i16
  %i.dgw = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.next51.i547.1
  store i16 %i.dgv, ptr %i.dgw, align 2, !tbaa !20
  %i.dgx = add nsw i64 %i.dgu, 2147483648
  %i.dgy = lshr i64 %i.dgx, 16
  %i.dgz = add nsw i64 %i.dgy, -32768
  %indvars.iv.next51.i547.2 = add nuw nsw i64 %indvars.iv50.i545, 3 ; 2 uses
  %i.dha = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next51.i547.2
  %i.dhb = load i16, ptr %i.dha, align 2, !tbaa !20
  %i.dhc = zext i16 %i.dhb to i64
  %i.dhd = add nsw i64 %i.dgz, %i.dhc             ; 2 uses
  %i.dhe = trunc i64 %i.dhd to i16
  %i.dhf = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.next51.i547.2
  store i16 %i.dhe, ptr %i.dhf, align 2, !tbaa !20
  %i.dhg = add nsw i64 %i.dhd, 2147483648
  %i.dhh = lshr i64 %i.dhg, 16
  %i.dhi = add nsw i64 %i.dhh, -32768
  %indvars.iv.next51.i547.3 = add nuw nsw i64 %indvars.iv50.i545, 4 ; 2 uses
  %exitcond53.not.i548.3 = icmp eq i64 %indvars.iv.next51.i547.3, 10
  br i1 %exitcond53.not.i548.3, label %._crit_edge.i549, label %.lr.ph38.i542.new, !llvm.loop !4

._crit_edge.i549:                                 ; preds = %.prol.loopexit1683, %.lr.ph38.i542.new, %.preheader.i573
  %i.dhj = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep.i533, align 2, !tbaa !20
  %.not.i.not.not.i550 = icmp eq i16 %i.dhj, 0
  br i1 %.not.i.not.not.i550, label %bb.kp, label %.preheader.i.i551

bb.kp:                                            ; preds = %._crit_edge.i549
  %i.dhk = add i16 %i.che, -1
  %i.dhl = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep54.i534, align 16, !tbaa !20
  %.not.i.1.i552 = icmp eq i16 %i.dhl, 0
  br i1 %.not.i.1.i552, label %bb.kq, label %.lr.ph47.i.i553

bb.kq:                                            ; preds = %bb.kp
  %i.dhm = add i16 %i.che, -2
  %i.dhn = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep55.i535, align 2, !tbaa !20
  %.not.i.2.i557 = icmp eq i16 %i.dhn, 0
  br i1 %.not.i.2.i557, label %bb.kr, label %.lr.ph47.i.i553

bb.kr:                                            ; preds = %bb.kq
  %i.dho = add i16 %i.che, -3
  %i.dhp = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep56.i536, align 4, !tbaa !20
  %.not.i.3.i558 = icmp eq i16 %i.dhp, 0
  br i1 %.not.i.3.i558, label %bb.ks, label %.lr.ph47.i.i553

bb.ks:                                            ; preds = %bb.kr
  %i.dhq = add i16 %i.che, -4
  %i.dhr = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep57.i537, align 2, !tbaa !20
  %.not.i.4.i559 = icmp eq i16 %i.dhr, 0
  br i1 %.not.i.4.i559, label %bb.kt, label %.lr.ph47.i.i553

bb.kt:                                            ; preds = %bb.ks
  %i.dhs = add i16 %i.che, -5
  %i.dht = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep58.i538, align 8, !tbaa !20
  %.not.i.5.i560 = icmp eq i16 %i.dht, 0
  br i1 %.not.i.5.i560, label %bb.ku, label %.lr.ph47.i.i553

bb.ku:                                            ; preds = %bb.kt
  %i.dhu = add i16 %i.che, -6
  %i.dhv = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep59.i539, align 2, !tbaa !20
  %.not.i.6.i561 = icmp eq i16 %i.dhv, 0
  br i1 %.not.i.6.i561, label %bb.kv, label %.lr.ph47.i.i553

bb.kv:                                            ; preds = %bb.ku
  %i.dhw = add i16 %i.che, -7
  %i.dhx = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60.i540, align 4, !tbaa !20
  %.not.i.7.i562 = icmp eq i16 %i.dhx, 0
  br i1 %.not.i.7.i562, label %bb.kw, label %.lr.ph47.i.i553

bb.kw:                                            ; preds = %bb.kv
  %i.dhy = add i16 %i.che, -8
  %i.dhz = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61.i541, align 2, !tbaa !20
  %.not.i.8.i563 = icmp eq i16 %i.dhz, 0
  br i1 %.not.i.8.i563, label %bb.kx, label %.lr.ph47.i.i553

bb.kx:                                            ; preds = %bb.kw
  %i.dia = add i16 %i.che, -9
  %i.dib = load i16, ptr %i.l, align 16, !tbaa !20
  %.not.i.9.i564 = icmp eq i16 %i.dib, 0
  br i1 %.not.i.9.i564, label %bb.ky, label %.lr.ph47.i.i553

bb.ky:                                            ; preds = %bb.kx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ec, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %submag0.exit574

.preheader.i.i551:                                ; preds = %._crit_edge.i549
  %i.dic = getelementptr inbounds nuw i8, ptr %i.ea, i64 26
  store i16 %i.che, ptr %i.dic, align 2, !tbaa !26
  store i16 %i.chb, ptr %i.ec, align 2, !tbaa !24
  %i.did = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %i.die = getelementptr inbounds nuw i8, ptr %i.ea, i64 44
  %i.dif = load <2 x i16>, ptr %indvars.iv72.i.lcssa.sroa.gep54.i534, align 16, !tbaa !20
  store <2 x i16> %i.dif, ptr %i.die, align 2, !tbaa !20
  %i.dig = load <8 x i16>, ptr %i.l, align 16, !tbaa !20
  store <8 x i16> %i.dig, ptr %i.did, align 2, !tbaa !20
  br label %submag0.exit574

.lr.ph47.i.i553:                                  ; preds = %bb.kx, %bb.kw, %bb.kv, %bb.ku, %bb.kt, %bb.ks, %bb.kr, %bb.kq, %bb.kp
  %.03341.i.lcssa.ph.i554 = phi i16 [ %i.dia, %bb.kx ], [ %i.dhy, %bb.kw ], [ %i.dhw, %bb.kv ], [ %i.dhu, %bb.ku ], [ %i.dhs, %bb.kt ], [ %i.dhq, %bb.ks ], [ %i.dho, %bb.kr ], [ %i.dhm, %bb.kq ], [ %i.dhk, %bb.kp ]
  %indvars.iv58.i.lcssa.ph.i555 = phi i64 [ 0, %bb.kx ], [ 2, %bb.kw ], [ 4, %bb.kv ], [ 6, %bb.ku ], [ 8, %bb.kt ], [ 10, %bb.ks ], [ 12, %bb.kr ], [ 14, %bb.kq ], [ 16, %bb.kp ] ; 3 uses
  %i.dih = getelementptr inbounds nuw i8, ptr %i.ea, i64 26
  store i16 %.03341.i.lcssa.ph.i554, ptr %i.dih, align 2, !tbaa !26
  store i16 %i.chb, ptr %i.ec, align 2, !tbaa !24
  %i.dii = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %i.dij = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph.i555
  %scevgep.i556 = getelementptr i8, ptr %i.ec, i64 %i.dij
  %i.dik = add nuw nsw i64 %indvars.iv58.i.lcssa.ph.i555, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i556, ptr noundef nonnull align 16 dereferenceable(1) %i.l, i64 range(i64 0, 21) %i.dik, i1 false), !tbaa !20
  %i.dil = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph.i555
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.dii, i8 0, i64 %i.dil, i1 false), !tbaa !20
  br label %submag0.exit574

submag0.exit574:                                  ; preds = %bb.ky, %.preheader.i.i551, %.lr.ph47.i.i553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #13
  br label %add.exit35

add.exit35:                                       ; preds = %addmag0.exit714, %addmag0.exit665, %submag0.exit616, %submag0.exit574
  br i1 %i.bft, label %abscmp.exit904, label %bb.kz

bb.kz:                                            ; preds = %add.exit35
  %i.dim = icmp slt i16 %i.bfr, %i.bfs
  br i1 %i.dim, label %abscmp.exit904, label %.preheader.i901

.preheader.i901:                                  ; preds = %bb.kz
  %i.din = load i16, ptr %i.cj, align 2, !tbaa !20 ; 2 uses
  %i.dio = load i16, ptr %i.bn, align 2, !tbaa !20 ; 2 uses
  %i.dip = icmp ugt i16 %i.din, %i.dio
  br i1 %i.dip, label %abscmp.exit904, label %bb.lr

bb.la:                                            ; preds = %bb.lr
  %i.diq = load i16, ptr %i.ck, align 4, !tbaa !20 ; 2 uses
  %i.dir = load i16, ptr %i.bo, align 4, !tbaa !20 ; 2 uses
  %i.dis = icmp ugt i16 %i.diq, %i.dir
  br i1 %i.dis, label %abscmp.exit904, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.dit = icmp ult i16 %i.diq, %i.dir
  br i1 %i.dit, label %abscmp.exit904, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.diu = load i16, ptr %i.cl, align 2, !tbaa !20 ; 2 uses
  %i.div = load i16, ptr %i.bp, align 2, !tbaa !20 ; 2 uses
  %i.diw = icmp ugt i16 %i.diu, %i.div
  br i1 %i.diw, label %abscmp.exit904, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.dix = icmp ult i16 %i.diu, %i.div
  br i1 %i.dix, label %abscmp.exit904, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.diy = load i16, ptr %i.cm, align 16, !tbaa !20 ; 2 uses
  %i.diz = load i16, ptr %i.bq, align 16, !tbaa !20 ; 2 uses
  %i.dja = icmp ugt i16 %i.diy, %i.diz
  br i1 %i.dja, label %abscmp.exit904, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.djb = icmp ult i16 %i.diy, %i.diz
  br i1 %i.djb, label %abscmp.exit904, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.djc = load i16, ptr %i.cn, align 2, !tbaa !20 ; 2 uses
  %i.djd = load i16, ptr %i.br, align 2, !tbaa !20 ; 2 uses
  %i.dje = icmp ugt i16 %i.djc, %i.djd
  br i1 %i.dje, label %abscmp.exit904, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.djf = icmp ult i16 %i.djc, %i.djd
  br i1 %i.djf, label %abscmp.exit904, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.djg = load i16, ptr %i.co, align 4, !tbaa !20 ; 2 uses
  %i.djh = load i16, ptr %i.bs, align 4, !tbaa !20 ; 2 uses
  %i.dji = icmp ugt i16 %i.djg, %i.djh
  br i1 %i.dji, label %abscmp.exit904, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.djj = icmp ult i16 %i.djg, %i.djh
  br i1 %i.djj, label %abscmp.exit904, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.djk = load i16, ptr %i.cp, align 2, !tbaa !20 ; 2 uses
  %i.djl = load i16, ptr %i.bt, align 2, !tbaa !20 ; 2 uses
  %i.djm = icmp ugt i16 %i.djk, %i.djl
  br i1 %i.djm, label %abscmp.exit904, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.djn = icmp ult i16 %i.djk, %i.djl
  br i1 %i.djn, label %abscmp.exit904, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.djo = load i16, ptr %i.cq, align 8, !tbaa !20 ; 2 uses
  %i.djp = load i16, ptr %i.bu, align 8, !tbaa !20 ; 2 uses
  %i.djq = icmp ugt i16 %i.djo, %i.djp
  br i1 %i.djq, label %abscmp.exit904, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.djr = icmp ult i16 %i.djo, %i.djp
  br i1 %i.djr, label %abscmp.exit904, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.djs = load i16, ptr %i.cr, align 2, !tbaa !20 ; 2 uses
  %i.djt = load i16, ptr %i.bv, align 2, !tbaa !20 ; 2 uses
  %i.dju = icmp ugt i16 %i.djs, %i.djt
  br i1 %i.dju, label %abscmp.exit904, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.djv = icmp ult i16 %i.djs, %i.djt
  br i1 %i.djv, label %abscmp.exit904, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.djw = load i16, ptr %i.ci, align 4, !tbaa !20
  %i.djx = load i16, ptr %i.bm, align 4, !tbaa !20
  %i.djy = icmp ugt i16 %i.djw, %i.djx
  br label %abscmp.exit904

bb.lr:                                            ; preds = %.preheader.i901
  %i.djz = icmp ult i16 %i.din, %i.dio
  br i1 %i.djz, label %abscmp.exit904, label %bb.la

abscmp.exit904:                                   ; preds = %bb.lq, %add.exit35, %bb.kz, %.preheader.i901, %bb.la, %bb.lb, %bb.lc, %bb.ld, %bb.le, %bb.lf, %bb.lg, %bb.lh, %bb.li, %bb.lj, %bb.lk, %bb.ll, %bb.lm, %bb.ln, %bb.lo, %bb.lp, %bb.lr
  %.014.i903 = phi i1 [ false, %bb.kz ], [ true, %add.exit35 ], [ false, %bb.lr ], [ true, %.preheader.i901 ], [ false, %bb.ln ], [ true, %bb.la ], [ false, %bb.lb ], [ false, %bb.ll ], [ true, %bb.lc ], [ false, %bb.ld ], [ %i.djy, %bb.lq ], [ true, %bb.le ], [ false, %bb.lf ], [ true, %bb.lm ], [ true, %bb.lg ], [ false, %bb.lh ], [ false, %bb.lp ], [ true, %bb.li ], [ false, %bb.lj ], [ true, %bb.lo ], [ true, %bb.lk ] ; 2 uses
  br i1 %i.bfq, label %bb.ls, label %bb.mt

bb.ls:                                            ; preds = %abscmp.exit904
  br i1 %.014.i903, label %bb.lt, label %bb.mg

bb.lt:                                            ; preds = %bb.ls
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.dka = sext i16 %i.bfr to i32                 ; 2 uses
  %i.dkb = sext i16 %i.bfs to i32                 ; 3 uses
  %i.dkc = sub nsw i32 %i.dka, %i.dkb
  %i.dkd = icmp slt i32 %i.dkc, 10
  br i1 %i.dkd, label %.lr.ph.i891, label %.lr.ph38.i868

.lr.ph.i891:                                      ; preds = %bb.lt
  %i.dke = sext i16 %i.bfr to i64
  %i.dkf = sub nsw i32 0, %i.dkb
  %i.dkg = sext i32 %i.dkf to i64
  %i.dkh = add nsw i64 %i.dkg, %i.dke             ; 2 uses
  %reass.sub1168 = sub nsw i32 %i.dkb, %i.dka     ; 3 uses
  %i.dki = add nsw i32 %reass.sub1168, 10         ; 2 uses
  %wide.trip.count.i892 = zext i32 %i.dki to i64  ; 2 uses
  %xtraiter1766 = and i64 %wide.trip.count.i892, 3 ; 3 uses
  %i.dkj = add nsw i32 %reass.sub1168, 9
  %i.dkk = icmp ult i32 %i.dkj, 3
  br i1 %i.dkk, label %.epil.preheader1765, label %.lr.ph.i891.new

.lr.ph.i891.new:                                  ; preds = %.lr.ph.i891
  %unroll_iter1771 = and i64 %wide.trip.count.i892, 4294967292
  br label %bb.lv

.preheader.i899.unr-lcssa:                        ; preds = %bb.lv
  %lcmp.mod1768.not = icmp eq i64 %xtraiter1766, 0
  br i1 %lcmp.mod1768.not, label %.preheader.i899, label %.epil.preheader1765

.epil.preheader1765:                              ; preds = %.preheader.i899.unr-lcssa, %.lr.ph.i891
  %indvars.iv45.i893.epil.init = phi i64 [ 0, %.lr.ph.i891 ], [ %indvars.iv.next46.i896.3, %.preheader.i899.unr-lcssa ]
  %indvars.iv.i894.epil.init = phi i64 [ %i.dkh, %.lr.ph.i891 ], [ %indvars.iv.next.i897.3, %.preheader.i899.unr-lcssa ]
  %.034.i895.epil.init = phi i64 [ 0, %.lr.ph.i891 ], [ %i.dno, %.preheader.i899.unr-lcssa ]
  %lcmp.mod1770 = icmp ne i64 %xtraiter1766, 0
  tail call void @llvm.assume(i1 %lcmp.mod1770)
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lu, %.epil.preheader1765
  %indvars.iv45.i893.epil = phi i64 [ %indvars.iv45.i893.epil.init, %.epil.preheader1765 ], [ %indvars.iv.next46.i896.epil, %bb.lu ] ; 3 uses
  %indvars.iv.i894.epil = phi i64 [ %indvars.iv.i894.epil.init, %.epil.preheader1765 ], [ %indvars.iv.next.i897.epil, %bb.lu ] ; 2 uses
  %.034.i895.epil = phi i64 [ %.034.i895.epil.init, %.epil.preheader1765 ], [ %i.dkx, %bb.lu ]
  %epil.iter1767 = phi i64 [ 0, %.epil.preheader1765 ], [ %epil.iter1767.next, %bb.lu ]
  %i.dkl = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv45.i893.epil
  %i.dkm = load i16, ptr %i.dkl, align 2, !tbaa !20
  %i.dkn = zext i16 %i.dkm to i64
  %i.dko = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %indvars.iv.i894.epil
  %i.dkp = load i16, ptr %i.dko, align 2, !tbaa !20
  %i.dkq = zext i16 %i.dkp to i64
  %i.dkr = sub nsw i64 %i.dkn, %i.dkq
  %i.dks = add nsw i64 %i.dkr, %.034.i895.epil    ; 2 uses
  %i.dkt = trunc i64 %i.dks to i16
  %i.dku = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv45.i893.epil
  store i16 %i.dkt, ptr %i.dku, align 2, !tbaa !20
  %i.dkv = add nsw i64 %i.dks, 2147483648
  %i.dkw = lshr i64 %i.dkv, 16
  %i.dkx = add nsw i64 %i.dkw, -32768             ; 2 uses
  %indvars.iv.next46.i896.epil = add nuw nsw i64 %indvars.iv45.i893.epil, 1
  %indvars.iv.next.i897.epil = add nsw i64 %indvars.iv.i894.epil, 1
  %epil.iter1767.next = add i64 %epil.iter1767, 1 ; 2 uses
  %epil.iter1767.cmp.not = icmp eq i64 %epil.iter1767.next, %xtraiter1766
  br i1 %epil.iter1767.cmp.not, label %.preheader.i899, label %bb.lu, !llvm.loop !86

.preheader.i899:                                  ; preds = %bb.lu, %.preheader.i899.unr-lcssa
  %.lcssa1518 = phi i64 [ %i.dno, %.preheader.i899.unr-lcssa ], [ %i.dkx, %bb.lu ]
  %i.dky = icmp slt i32 %reass.sub1168, 0
  br i1 %i.dky, label %.lr.ph38.i868, label %._crit_edge.i875

.lr.ph38.i868:                                    ; preds = %bb.lt, %.preheader.i899
  %.0.lcssa85.i869 = phi i64 [ %.lcssa1518, %.preheader.i899 ], [ 0, %bb.lt ] ; 2 uses
  %.025.lcssa84.i870 = phi i32 [ %i.dki, %.preheader.i899 ], [ 0, %bb.lt ] ; 2 uses
  %i.dkz = zext i32 %.025.lcssa84.i870 to i64     ; 3 uses
  %i.dla = sub nsw i64 2, %i.dkz
  %xtraiter1775 = and i64 %i.dla, 3               ; 2 uses
  %lcmp.mod1776.not = icmp eq i64 %xtraiter1775, 0
  br i1 %lcmp.mod1776.not, label %.prol.loopexit1774, label %.prol.preheader1773

.prol.preheader1773:                              ; preds = %.lr.ph38.i868, %.prol.preheader1773
  %indvars.iv50.i871.prol = phi i64 [ %indvars.iv.next51.i873.prol, %.prol.preheader1773 ], [ %i.dkz, %.lr.ph38.i868 ] ; 3 uses
  %.137.i872.prol = phi i64 [ %i.dlj, %.prol.preheader1773 ], [ %.0.lcssa85.i869, %.lr.ph38.i868 ]
  %prol.iter1777 = phi i64 [ %prol.iter1777.next, %.prol.preheader1773 ], [ 0, %.lr.ph38.i868 ]
  %i.dlb = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv50.i871.prol
  %i.dlc = load i16, ptr %i.dlb, align 2, !tbaa !20
end_hunk_5
begin_hunk_6_@fft0:bb.a
  %i.dlp = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %indvars.iv.i894
  %i.dlq = load i16, ptr %i.dlp, align 2, !tbaa !20
  %i.dlr = zext i16 %i.dlq to i64
  %i.dls = sub nsw i64 %i.dlo, %i.dlr
  %i.dlt = add nsw i64 %i.dls, %.034.i895         ; 2 uses
  %i.dlu = trunc i64 %i.dlt to i16
  %i.dlv = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv45.i893
  store i16 %i.dlu, ptr %i.dlv, align 8, !tbaa !20
  %i.dlw = add nsw i64 %i.dlt, 2147483648
  %i.dlx = lshr i64 %i.dlw, 16
  %i.dly = add nsw i64 %i.dlx, -32768
  %indvars.iv.next46.i896 = or disjoint i64 %indvars.iv45.i893, 1 ; 2 uses
  %i.dlz = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next46.i896
  %i.dma = load i16, ptr %i.dlz, align 2, !tbaa !20
  %i.dmb = zext i16 %i.dma to i64
  %i.dmc = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv.i894
  %i.dmd = getelementptr i8, ptr %i.dmc, i64 2
  %i.dme = load i16, ptr %i.dmd, align 2, !tbaa !20
  %i.dmf = zext i16 %i.dme to i64
  %i.dmg = sub nsw i64 %i.dmb, %i.dmf
  %i.dmh = add nsw i64 %i.dmg, %i.dly             ; 2 uses
  %i.dmi = trunc i64 %i.dmh to i16
  %i.dmj = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next46.i896
  store i16 %i.dmi, ptr %i.dmj, align 2, !tbaa !20
  %i.dmk = add nsw i64 %i.dmh, 2147483648
  %i.dml = lshr i64 %i.dmk, 16
  %i.dmm = add nsw i64 %i.dml, -32768
  %indvars.iv.next46.i896.1 = or disjoint i64 %indvars.iv45.i893, 2 ; 2 uses
  %i.dmn = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next46.i896.1
  %i.dmo = load i16, ptr %i.dmn, align 8, !tbaa !20
  %i.dmp = zext i16 %i.dmo to i64
  %i.dmq = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv.i894
  %i.dmr = getelementptr i8, ptr %i.dmq, i64 4
  %i.dms = load i16, ptr %i.dmr, align 2, !tbaa !20
  %i.dmt = zext i16 %i.dms to i64
  %i.dmu = sub nsw i64 %i.dmp, %i.dmt
  %i.dmv = add nsw i64 %i.dmu, %i.dmm             ; 2 uses
  %i.dmw = trunc i64 %i.dmv to i16
  %i.dmx = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next46.i896.1
  store i16 %i.dmw, ptr %i.dmx, align 4, !tbaa !20
  %i.dmy = add nsw i64 %i.dmv, 2147483648
  %i.dmz = lshr i64 %i.dmy, 16
  %i.dna = add nsw i64 %i.dmz, -32768
  %indvars.iv.next46.i896.2 = or disjoint i64 %indvars.iv45.i893, 3 ; 2 uses
  %i.dnb = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next46.i896.2
  %i.dnc = load i16, ptr %i.dnb, align 2, !tbaa !20
  %i.dnd = zext i16 %i.dnc to i64
  %i.dne = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv.i894
  %i.dnf = getelementptr i8, ptr %i.dne, i64 6
  %i.dng = load i16, ptr %i.dnf, align 2, !tbaa !20
  %i.dnh = zext i16 %i.dng to i64
  %i.dni = sub nsw i64 %i.dnd, %i.dnh
  %i.dnj = add nsw i64 %i.dni, %i.dna             ; 2 uses
  %i.dnk = trunc i64 %i.dnj to i16
  %i.dnl = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next46.i896.2
  store i16 %i.dnk, ptr %i.dnl, align 2, !tbaa !20
  %i.dnm = add nsw i64 %i.dnj, 2147483648
  %i.dnn = lshr i64 %i.dnm, 16
  %i.dno = add nsw i64 %i.dnn, -32768             ; 3 uses
  %indvars.iv.next46.i896.3 = add nuw nsw i64 %indvars.iv45.i893, 4 ; 2 uses
  %indvars.iv.next.i897.3 = add nsw i64 %indvars.iv.i894, 4 ; 2 uses
  %niter1772.next.3 = add i64 %niter1772, 4       ; 2 uses
  %niter1772.ncmp.3 = icmp eq i64 %niter1772.next.3, %unroll_iter1771
  br i1 %niter1772.ncmp.3, label %.preheader.i899.unr-lcssa, label %bb.lv, !llvm.loop !3

.lr.ph38.i868.new:                                ; preds = %.prol.loopexit1774, %.lr.ph38.i868.new
  %indvars.iv50.i871 = phi i64 [ %indvars.iv.next51.i873.3, %.lr.ph38.i868.new ], [ %indvars.iv50.i871.unr, %.prol.loopexit1774 ] ; 6 uses
  %.137.i872 = phi i64 [ %i.doy, %.lr.ph38.i868.new ], [ %.137.i872.unr, %.prol.loopexit1774 ]
  %i.dnp = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv50.i871
  %i.dnq = load i16, ptr %i.dnp, align 2, !tbaa !20
  %i.dnr = zext i16 %i.dnq to i64
  %i.dns = add nsw i64 %.137.i872, %i.dnr         ; 2 uses
  %i.dnt = trunc i64 %i.dns to i16
  %i.dnu = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv50.i871
  store i16 %i.dnt, ptr %i.dnu, align 2, !tbaa !20
  %i.dnv = add nsw i64 %i.dns, 2147483648
  %i.dnw = lshr i64 %i.dnv, 16
  %i.dnx = add nsw i64 %i.dnw, -32768
  %indvars.iv.next51.i873 = add nuw nsw i64 %indvars.iv50.i871, 1 ; 2 uses
  %i.dny = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next51.i873
  %i.dnz = load i16, ptr %i.dny, align 2, !tbaa !20
  %i.doa = zext i16 %i.dnz to i64
  %i.dob = add nsw i64 %i.dnx, %i.doa             ; 2 uses
  %i.doc = trunc i64 %i.dob to i16
  %i.dod = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next51.i873
  store i16 %i.doc, ptr %i.dod, align 2, !tbaa !20
  %i.doe = add nsw i64 %i.dob, 2147483648
  %i.dof = lshr i64 %i.doe, 16
  %i.dog = add nsw i64 %i.dof, -32768
  %indvars.iv.next51.i873.1 = add nuw nsw i64 %indvars.iv50.i871, 2 ; 2 uses
  %i.doh = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next51.i873.1
  %i.doi = load i16, ptr %i.doh, align 2, !tbaa !20
  %i.doj = zext i16 %i.doi to i64
  %i.dok = add nsw i64 %i.dog, %i.doj             ; 2 uses
  %i.dol = trunc i64 %i.dok to i16
  %i.dom = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next51.i873.1
  store i16 %i.dol, ptr %i.dom, align 2, !tbaa !20
  %i.don = add nsw i64 %i.dok, 2147483648
  %i.doo = lshr i64 %i.don, 16
  %i.dop = add nsw i64 %i.doo, -32768
  %indvars.iv.next51.i873.2 = add nuw nsw i64 %indvars.iv50.i871, 3 ; 2 uses
  %i.doq = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next51.i873.2
  %i.dor = load i16, ptr %i.doq, align 2, !tbaa !20
  %i.dos = zext i16 %i.dor to i64
  %i.dot = add nsw i64 %i.dop, %i.dos             ; 2 uses
  %i.dou = trunc i64 %i.dot to i16
  %i.dov = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next51.i873.2
  store i16 %i.dou, ptr %i.dov, align 2, !tbaa !20
  %i.dow = add nsw i64 %i.dot, 2147483648
  %i.dox = lshr i64 %i.dow, 16
  %i.doy = add nsw i64 %i.dox, -32768
  %indvars.iv.next51.i873.3 = add nuw nsw i64 %indvars.iv50.i871, 4 ; 2 uses
  %exitcond53.not.i874.3 = icmp eq i64 %indvars.iv.next51.i873.3, 10
  br i1 %exitcond53.not.i874.3, label %._crit_edge.i875, label %.lr.ph38.i868.new, !llvm.loop !4

._crit_edge.i875:                                 ; preds = %.prol.loopexit1774, %.lr.ph38.i868.new, %.preheader.i899
  %i.doz = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep.i859, align 2, !tbaa !20
  %.not.i.not.not.i876 = icmp eq i16 %i.doz, 0
  br i1 %.not.i.not.not.i876, label %bb.lw, label %.preheader.i.i877

bb.lw:                                            ; preds = %._crit_edge.i875
  %i.dpa = add i16 %i.bfr, -1
  %i.dpb = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep54.i860, align 16, !tbaa !20
  %.not.i.1.i878 = icmp eq i16 %i.dpb, 0
  br i1 %.not.i.1.i878, label %bb.lx, label %.lr.ph47.i.i879

bb.lx:                                            ; preds = %bb.lw
  %i.dpc = add i16 %i.bfr, -2
  %i.dpd = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep55.i861, align 2, !tbaa !20
  %.not.i.2.i883 = icmp eq i16 %i.dpd, 0
  br i1 %.not.i.2.i883, label %bb.ly, label %.lr.ph47.i.i879

bb.ly:                                            ; preds = %bb.lx
  %i.dpe = add i16 %i.bfr, -3
  %i.dpf = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep56.i862, align 4, !tbaa !20
  %.not.i.3.i884 = icmp eq i16 %i.dpf, 0
  br i1 %.not.i.3.i884, label %bb.lz, label %.lr.ph47.i.i879

bb.lz:                                            ; preds = %bb.ly
  %i.dpg = add i16 %i.bfr, -4
  %i.dph = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep57.i863, align 2, !tbaa !20
  %.not.i.4.i885 = icmp eq i16 %i.dph, 0
  br i1 %.not.i.4.i885, label %bb.ma, label %.lr.ph47.i.i879

bb.ma:                                            ; preds = %bb.lz
  %i.dpi = add i16 %i.bfr, -5
  %i.dpj = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep58.i864, align 8, !tbaa !20
  %.not.i.5.i886 = icmp eq i16 %i.dpj, 0
  br i1 %.not.i.5.i886, label %bb.mb, label %.lr.ph47.i.i879

bb.mb:                                            ; preds = %bb.ma
  %i.dpk = add i16 %i.bfr, -6
  %i.dpl = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep59.i865, align 2, !tbaa !20
  %.not.i.6.i887 = icmp eq i16 %i.dpl, 0
  br i1 %.not.i.6.i887, label %bb.mc, label %.lr.ph47.i.i879

bb.mc:                                            ; preds = %bb.mb
  %i.dpm = add i16 %i.bfr, -7
  %i.dpn = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60.i866, align 4, !tbaa !20
  %.not.i.7.i888 = icmp eq i16 %i.dpn, 0
  br i1 %.not.i.7.i888, label %bb.md, label %.lr.ph47.i.i879

bb.md:                                            ; preds = %bb.mc
  %i.dpo = add i16 %i.bfr, -8
  %i.dpp = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61.i867, align 2, !tbaa !20
  %.not.i.8.i889 = icmp eq i16 %i.dpp, 0
  br i1 %.not.i.8.i889, label %bb.me, label %.lr.ph47.i.i879

bb.me:                                            ; preds = %bb.md
  %i.dpq = add i16 %i.bfr, -9
  %i.dpr = load i16, ptr %i.e, align 16, !tbaa !20
  %.not.i.9.i890 = icmp eq i16 %i.dpr, 0
  br i1 %.not.i.9.i890, label %bb.mf, label %.lr.ph47.i.i879

bb.mf:                                            ; preds = %bb.me
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.eb, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %submag0.exit900

.preheader.i.i877:                                ; preds = %._crit_edge.i875
  %i.dps = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  store i16 %i.bfr, ptr %i.dps, align 2, !tbaa !26
  store i16 %i.bfo, ptr %i.eb, align 2, !tbaa !24
  %i.dpt = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.dpu = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  %i.dpv = load <2 x i16>, ptr %indvars.iv72.i.lcssa.sroa.gep54.i860, align 16, !tbaa !20
  store <2 x i16> %i.dpv, ptr %i.dpu, align 2, !tbaa !20
  %i.dpw = load <8 x i16>, ptr %i.e, align 16, !tbaa !20
  store <8 x i16> %i.dpw, ptr %i.dpt, align 2, !tbaa !20
  br label %submag0.exit900

.lr.ph47.i.i879:                                  ; preds = %bb.me, %bb.md, %bb.mc, %bb.mb, %bb.ma, %bb.lz, %bb.ly, %bb.lx, %bb.lw
  %.03341.i.lcssa.ph.i880 = phi i16 [ %i.dpq, %bb.me ], [ %i.dpo, %bb.md ], [ %i.dpm, %bb.mc ], [ %i.dpk, %bb.mb ], [ %i.dpi, %bb.ma ], [ %i.dpg, %bb.lz ], [ %i.dpe, %bb.ly ], [ %i.dpc, %bb.lx ], [ %i.dpa, %bb.lw ]
  %indvars.iv58.i.lcssa.ph.i881 = phi i64 [ 0, %bb.me ], [ 2, %bb.md ], [ 4, %bb.mc ], [ 6, %bb.mb ], [ 8, %bb.ma ], [ 10, %bb.lz ], [ 12, %bb.ly ], [ 14, %bb.lx ], [ 16, %bb.lw ] ; 3 uses
  %i.dpx = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  store i16 %.03341.i.lcssa.ph.i880, ptr %i.dpx, align 2, !tbaa !26
  store i16 %i.bfo, ptr %i.eb, align 2, !tbaa !24
  %i.dpy = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.dpz = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph.i881
  %scevgep.i882 = getelementptr i8, ptr %i.eb, i64 %i.dpz
  %i.dqa = add nuw nsw i64 %indvars.iv58.i.lcssa.ph.i881, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i882, ptr noundef nonnull align 16 dereferenceable(1) %i.e, i64 range(i64 0, 21) %i.dqa, i1 false), !tbaa !20
  %i.dqb = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph.i881
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.dpy, i8 0, i64 %i.dqb, i1 false), !tbaa !20
  br label %submag0.exit900

submag0.exit900:                                  ; preds = %bb.mf, %.preheader.i.i877, %.lr.ph47.i.i879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %sub.exit36

bb.mg:                                            ; preds = %bb.ls
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.dqc = sext i16 %i.bfs to i32                 ; 2 uses
  %i.dqd = sext i16 %i.bfr to i32                 ; 3 uses
  %i.dqe = sub nsw i32 %i.dqc, %i.dqd
  %i.dqf = icmp slt i32 %i.dqe, 10
  br i1 %i.dqf, label %.lr.ph.i849, label %.lr.ph38.i826

.lr.ph.i849:                                      ; preds = %bb.mg
  %i.dqg = sext i16 %i.bfs to i64
  %i.dqh = sub nsw i32 0, %i.dqd
  %i.dqi = sext i32 %i.dqh to i64
  %i.dqj = add nsw i64 %i.dqg, %i.dqi             ; 2 uses
  %i.dqk = add nsw i32 %i.dqd, 10
  %i.dql = sub nsw i32 %i.dqk, %i.dqc             ; 4 uses
  %wide.trip.count.i850 = zext i32 %i.dql to i64  ; 2 uses
  %xtraiter1753 = and i64 %wide.trip.count.i850, 3 ; 3 uses
  %i.dqm = add nsw i32 %i.dql, -1
  %i.dqn = icmp ult i32 %i.dqm, 3
  br i1 %i.dqn, label %.epil.preheader1752, label %.lr.ph.i849.new

.lr.ph.i849.new:                                  ; preds = %.lr.ph.i849
  %unroll_iter1758 = and i64 %wide.trip.count.i850, 4294967292
  br label %bb.mi

.preheader.i857.unr-lcssa:                        ; preds = %bb.mi
  %lcmp.mod1755.not = icmp eq i64 %xtraiter1753, 0
  br i1 %lcmp.mod1755.not, label %.preheader.i857, label %.epil.preheader1752

.epil.preheader1752:                              ; preds = %.preheader.i857.unr-lcssa, %.lr.ph.i849
  %indvars.iv45.i851.epil.init = phi i64 [ 0, %.lr.ph.i849 ], [ %indvars.iv.next46.i854.3, %.preheader.i857.unr-lcssa ]
  %indvars.iv.i852.epil.init = phi i64 [ %i.dqj, %.lr.ph.i849 ], [ %indvars.iv.next.i855.3, %.preheader.i857.unr-lcssa ]
  %.034.i853.epil.init = phi i64 [ 0, %.lr.ph.i849 ], [ %i.dtr, %.preheader.i857.unr-lcssa ]
  %lcmp.mod1757 = icmp ne i64 %xtraiter1753, 0
  tail call void @llvm.assume(i1 %lcmp.mod1757)
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mh, %.epil.preheader1752
  %indvars.iv45.i851.epil = phi i64 [ %indvars.iv45.i851.epil.init, %.epil.preheader1752 ], [ %indvars.iv.next46.i854.epil, %bb.mh ] ; 3 uses
  %indvars.iv.i852.epil = phi i64 [ %indvars.iv.i852.epil.init, %.epil.preheader1752 ], [ %indvars.iv.next.i855.epil, %bb.mh ] ; 2 uses
  %.034.i853.epil = phi i64 [ %.034.i853.epil.init, %.epil.preheader1752 ], [ %i.dra, %bb.mh ]
  %epil.iter1754 = phi i64 [ 0, %.epil.preheader1752 ], [ %epil.iter1754.next, %bb.mh ]
  %i.dqo = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv45.i851.epil
  %i.dqp = load i16, ptr %i.dqo, align 2, !tbaa !20
  %i.dqq = zext i16 %i.dqp to i64
  %i.dqr = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %indvars.iv.i852.epil
  %i.dqs = load i16, ptr %i.dqr, align 2, !tbaa !20
  %i.dqt = zext i16 %i.dqs to i64
  %i.dqu = sub nsw i64 %i.dqq, %i.dqt
  %i.dqv = add nsw i64 %i.dqu, %.034.i853.epil    ; 2 uses
  %i.dqw = trunc i64 %i.dqv to i16
  %i.dqx = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv45.i851.epil
  store i16 %i.dqw, ptr %i.dqx, align 2, !tbaa !20
  %i.dqy = add nsw i64 %i.dqv, 2147483648
  %i.dqz = lshr i64 %i.dqy, 16
  %i.dra = add nsw i64 %i.dqz, -32768             ; 2 uses
  %indvars.iv.next46.i854.epil = add nuw nsw i64 %indvars.iv45.i851.epil, 1
  %indvars.iv.next.i855.epil = add nsw i64 %indvars.iv.i852.epil, 1
  %epil.iter1754.next = add i64 %epil.iter1754, 1 ; 2 uses
  %epil.iter1754.cmp.not = icmp eq i64 %epil.iter1754.next, %xtraiter1753
  br i1 %epil.iter1754.cmp.not, label %.preheader.i857, label %bb.mh, !llvm.loop !88

.preheader.i857:                                  ; preds = %bb.mh, %.preheader.i857.unr-lcssa
  %.lcssa1517 = phi i64 [ %i.dtr, %.preheader.i857.unr-lcssa ], [ %i.dra, %bb.mh ]
  %i.drb = icmp samesign ult i32 %i.dql, 10
  br i1 %i.drb, label %.lr.ph38.i826, label %._crit_edge.i833

.lr.ph38.i826:                                    ; preds = %bb.mg, %.preheader.i857
  %.0.lcssa85.i827 = phi i64 [ %.lcssa1517, %.preheader.i857 ], [ 0, %bb.mg ] ; 2 uses
  %.025.lcssa84.i828 = phi i32 [ %i.dql, %.preheader.i857 ], [ 0, %bb.mg ] ; 2 uses
  %i.drc = zext nneg i32 %.025.lcssa84.i828 to i64 ; 3 uses
  %i.drd = sub nsw i64 2, %i.drc
  %xtraiter1762 = and i64 %i.drd, 3               ; 2 uses
  %lcmp.mod1763.not = icmp eq i64 %xtraiter1762, 0
  br i1 %lcmp.mod1763.not, label %.prol.loopexit1761, label %.prol.preheader1760

.prol.preheader1760:                              ; preds = %.lr.ph38.i826, %.prol.preheader1760
  %indvars.iv50.i829.prol = phi i64 [ %indvars.iv.next51.i831.prol, %.prol.preheader1760 ], [ %i.drc, %.lr.ph38.i826 ] ; 3 uses
  %.137.i830.prol = phi i64 [ %i.drm, %.prol.preheader1760 ], [ %.0.lcssa85.i827, %.lr.ph38.i826 ]
  %prol.iter1764 = phi i64 [ %prol.iter1764.next, %.prol.preheader1760 ], [ 0, %.lr.ph38.i826 ]
  %i.dre = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv50.i829.prol
  %i.drf = load i16, ptr %i.dre, align 2, !tbaa !20
  %i.drg = zext i16 %i.drf to i64
  %i.drh = add nsw i64 %.137.i830.prol, %i.drg    ; 2 uses
  %i.dri = trunc i64 %i.drh to i16
  %i.drj = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv50.i829.prol
  store i16 %i.dri, ptr %i.drj, align 2, !tbaa !20
  %i.drk = add nsw i64 %i.drh, 2147483648
  %i.drl = lshr i64 %i.drk, 16
  %i.drm = add nsw i64 %i.drl, -32768             ; 2 uses
  %indvars.iv.next51.i831.prol = add nuw nsw i64 %indvars.iv50.i829.prol, 1 ; 2 uses
  %prol.iter1764.next = add i64 %prol.iter1764, 1 ; 2 uses
  %prol.iter1764.cmp.not = icmp eq i64 %prol.iter1764.next, %xtraiter1762
  br i1 %prol.iter1764.cmp.not, label %.prol.loopexit1761, label %.prol.preheader1760, !llvm.loop !89

.prol.loopexit1761:                               ; preds = %.prol.preheader1760, %.lr.ph38.i826
  %indvars.iv50.i829.unr = phi i64 [ %i.drc, %.lr.ph38.i826 ], [ %indvars.iv.next51.i831.prol, %.prol.preheader1760 ]
  %.137.i830.unr = phi i64 [ %.0.lcssa85.i827, %.lr.ph38.i826 ], [ %i.drm, %.prol.preheader1760 ]
  %i.drn = add nsw i32 %.025.lcssa84.i828, -7
  %i.dro = icmp ult i32 %i.drn, 3
  br i1 %i.dro, label %._crit_edge.i833, label %.lr.ph38.i826.new

bb.mi:                                            ; preds = %bb.mi, %.lr.ph.i849.new
  %indvars.iv45.i851 = phi i64 [ 0, %.lr.ph.i849.new ], [ %indvars.iv.next46.i854.3, %bb.mi ] ; 6 uses
  %indvars.iv.i852 = phi i64 [ %i.dqj, %.lr.ph.i849.new ], [ %indvars.iv.next.i855.3, %bb.mi ] ; 5 uses
  %.034.i853 = phi i64 [ 0, %.lr.ph.i849.new ], [ %i.dtr, %bb.mi ]
  %niter1759 = phi i64 [ 0, %.lr.ph.i849.new ], [ %niter1759.next.3, %bb.mi ]
  %i.drp = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv45.i851
  %i.drq = load i16, ptr %i.drp, align 4, !tbaa !20
  %i.drr = zext i16 %i.drq to i64
  %i.drs = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %indvars.iv.i852
  %i.drt = load i16, ptr %i.drs, align 2, !tbaa !20
  %i.dru = zext i16 %i.drt to i64
  %i.drv = sub nsw i64 %i.drr, %i.dru
  %i.drw = add nsw i64 %i.drv, %.034.i853         ; 2 uses
  %i.drx = trunc i64 %i.drw to i16
  %i.dry = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv45.i851
  store i16 %i.drx, ptr %i.dry, align 8, !tbaa !20
  %i.drz = add nsw i64 %i.drw, 2147483648
  %i.dsa = lshr i64 %i.drz, 16
  %i.dsb = add nsw i64 %i.dsa, -32768
  %indvars.iv.next46.i854 = or disjoint i64 %indvars.iv45.i851, 1 ; 2 uses
  %i.dsc = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next46.i854
  %i.dsd = load i16, ptr %i.dsc, align 2, !tbaa !20
  %i.dse = zext i16 %i.dsd to i64
  %i.dsf = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i852
  %i.dsg = getelementptr i8, ptr %i.dsf, i64 2
  %i.dsh = load i16, ptr %i.dsg, align 2, !tbaa !20
  %i.dsi = zext i16 %i.dsh to i64
  %i.dsj = sub nsw i64 %i.dse, %i.dsi
  %i.dsk = add nsw i64 %i.dsj, %i.dsb             ; 2 uses
  %i.dsl = trunc i64 %i.dsk to i16
  %i.dsm = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next46.i854
  store i16 %i.dsl, ptr %i.dsm, align 2, !tbaa !20
  %i.dsn = add nsw i64 %i.dsk, 2147483648
  %i.dso = lshr i64 %i.dsn, 16
  %i.dsp = add nsw i64 %i.dso, -32768
  %indvars.iv.next46.i854.1 = or disjoint i64 %indvars.iv45.i851, 2 ; 2 uses
  %i.dsq = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next46.i854.1
  %i.dsr = load i16, ptr %i.dsq, align 8, !tbaa !20
  %i.dss = zext i16 %i.dsr to i64
  %i.dst = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i852
  %i.dsu = getelementptr i8, ptr %i.dst, i64 4
  %i.dsv = load i16, ptr %i.dsu, align 2, !tbaa !20
  %i.dsw = zext i16 %i.dsv to i64
  %i.dsx = sub nsw i64 %i.dss, %i.dsw
  %i.dsy = add nsw i64 %i.dsx, %i.dsp             ; 2 uses
  %i.dsz = trunc i64 %i.dsy to i16
  %i.dta = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next46.i854.1
  store i16 %i.dsz, ptr %i.dta, align 4, !tbaa !20
  %i.dtb = add nsw i64 %i.dsy, 2147483648
  %i.dtc = lshr i64 %i.dtb, 16
  %i.dtd = add nsw i64 %i.dtc, -32768
  %indvars.iv.next46.i854.2 = or disjoint i64 %indvars.iv45.i851, 3 ; 2 uses
  %i.dte = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next46.i854.2
  %i.dtf = load i16, ptr %i.dte, align 2, !tbaa !20
  %i.dtg = zext i16 %i.dtf to i64
  %i.dth = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i852
  %i.dti = getelementptr i8, ptr %i.dth, i64 6
  %i.dtj = load i16, ptr %i.dti, align 2, !tbaa !20
  %i.dtk = zext i16 %i.dtj to i64
  %i.dtl = sub nsw i64 %i.dtg, %i.dtk
  %i.dtm = add nsw i64 %i.dtl, %i.dtd             ; 2 uses
  %i.dtn = trunc i64 %i.dtm to i16
  %i.dto = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next46.i854.2
  store i16 %i.dtn, ptr %i.dto, align 2, !tbaa !20
  %i.dtp = add nsw i64 %i.dtm, 2147483648
  %i.dtq = lshr i64 %i.dtp, 16
  %i.dtr = add nsw i64 %i.dtq, -32768             ; 3 uses
  %indvars.iv.next46.i854.3 = add nuw nsw i64 %indvars.iv45.i851, 4 ; 2 uses
  %indvars.iv.next.i855.3 = add nsw i64 %indvars.iv.i852, 4 ; 2 uses
  %niter1759.next.3 = add i64 %niter1759, 4       ; 2 uses
  %niter1759.ncmp.3 = icmp eq i64 %niter1759.next.3, %unroll_iter1758
  br i1 %niter1759.ncmp.3, label %.preheader.i857.unr-lcssa, label %bb.mi, !llvm.loop !3

.lr.ph38.i826.new:                                ; preds = %.prol.loopexit1761, %.lr.ph38.i826.new
  %indvars.iv50.i829 = phi i64 [ %indvars.iv.next51.i831.3, %.lr.ph38.i826.new ], [ %indvars.iv50.i829.unr, %.prol.loopexit1761 ] ; 6 uses
  %.137.i830 = phi i64 [ %i.dvb, %.lr.ph38.i826.new ], [ %.137.i830.unr, %.prol.loopexit1761 ]
  %i.dts = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv50.i829
  %i.dtt = load i16, ptr %i.dts, align 2, !tbaa !20
  %i.dtu = zext i16 %i.dtt to i64
  %i.dtv = add nsw i64 %.137.i830, %i.dtu         ; 2 uses
  %i.dtw = trunc i64 %i.dtv to i16
  %i.dtx = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv50.i829
  store i16 %i.dtw, ptr %i.dtx, align 2, !tbaa !20
  %i.dty = add nsw i64 %i.dtv, 2147483648
  %i.dtz = lshr i64 %i.dty, 16
  %i.dua = add nsw i64 %i.dtz, -32768
  %indvars.iv.next51.i831 = add nuw nsw i64 %indvars.iv50.i829, 1 ; 2 uses
  %i.dub = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next51.i831
  %i.duc = load i16, ptr %i.dub, align 2, !tbaa !20
  %i.dud = zext i16 %i.duc to i64
  %i.due = add nsw i64 %i.dua, %i.dud             ; 2 uses
  %i.duf = trunc i64 %i.due to i16
  %i.dug = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next51.i831
  store i16 %i.duf, ptr %i.dug, align 2, !tbaa !20
  %i.duh = add nsw i64 %i.due, 2147483648
  %i.dui = lshr i64 %i.duh, 16
  %i.duj = add nsw i64 %i.dui, -32768
  %indvars.iv.next51.i831.1 = add nuw nsw i64 %indvars.iv50.i829, 2 ; 2 uses
  %i.duk = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next51.i831.1
  %i.dul = load i16, ptr %i.duk, align 2, !tbaa !20
  %i.dum = zext i16 %i.dul to i64
  %i.dun = add nsw i64 %i.duj, %i.dum             ; 2 uses
  %i.duo = trunc i64 %i.dun to i16
  %i.dup = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next51.i831.1
  store i16 %i.duo, ptr %i.dup, align 2, !tbaa !20
  %i.duq = add nsw i64 %i.dun, 2147483648
  %i.dur = lshr i64 %i.duq, 16
  %i.dus = add nsw i64 %i.dur, -32768
  %indvars.iv.next51.i831.2 = add nuw nsw i64 %indvars.iv50.i829, 3 ; 2 uses
  %i.dut = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next51.i831.2
  %i.duu = load i16, ptr %i.dut, align 2, !tbaa !20
  %i.duv = zext i16 %i.duu to i64
  %i.duw = add nsw i64 %i.dus, %i.duv             ; 2 uses
  %i.dux = trunc i64 %i.duw to i16
  %i.duy = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next51.i831.2
  store i16 %i.dux, ptr %i.duy, align 2, !tbaa !20
  %i.duz = add nsw i64 %i.duw, 2147483648
  %i.dva = lshr i64 %i.duz, 16
  %i.dvb = add nsw i64 %i.dva, -32768
  %indvars.iv.next51.i831.3 = add nuw nsw i64 %indvars.iv50.i829, 4 ; 2 uses
  %exitcond53.not.i832.3 = icmp eq i64 %indvars.iv.next51.i831.3, 10
  br i1 %exitcond53.not.i832.3, label %._crit_edge.i833, label %.lr.ph38.i826.new, !llvm.loop !4

._crit_edge.i833:                                 ; preds = %.prol.loopexit1761, %.lr.ph38.i826.new, %.preheader.i857
  %i.dvc = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep.i817, align 2, !tbaa !20 ; 2 uses
  %.not.i.not.not.i834 = icmp eq i16 %i.dvc, 0
  br i1 %.not.i.not.not.i834, label %bb.mj, label %.preheader.i.i835

bb.mj:                                            ; preds = %._crit_edge.i833
  %i.dvd = add i16 %i.bfs, -1
  %i.dve = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep54.i818, align 16, !tbaa !20
  %.not.i.1.i836 = icmp eq i16 %i.dve, 0
  br i1 %.not.i.1.i836, label %bb.mk, label %.lr.ph47.i.i837

bb.mk:                                            ; preds = %bb.mj
  %i.dvf = add i16 %i.bfs, -2
  %i.dvg = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep55.i819, align 2, !tbaa !20
  %.not.i.2.i841 = icmp eq i16 %i.dvg, 0
  br i1 %.not.i.2.i841, label %bb.ml, label %.lr.ph47.i.i837

bb.ml:                                            ; preds = %bb.mk
  %i.dvh = add i16 %i.bfs, -3
  %i.dvi = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep56.i820, align 4, !tbaa !20
  %.not.i.3.i842 = icmp eq i16 %i.dvi, 0
  br i1 %.not.i.3.i842, label %bb.mm, label %.lr.ph47.i.i837

bb.mm:                                            ; preds = %bb.ml
  %i.dvj = add i16 %i.bfs, -4
  %i.dvk = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep57.i821, align 2, !tbaa !20
  %.not.i.4.i843 = icmp eq i16 %i.dvk, 0
  br i1 %.not.i.4.i843, label %bb.mn, label %.lr.ph47.i.i837

bb.mn:                                            ; preds = %bb.mm
  %i.dvl = add i16 %i.bfs, -5
  %i.dvm = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep58.i822, align 8, !tbaa !20
  %.not.i.5.i844 = icmp eq i16 %i.dvm, 0
  br i1 %.not.i.5.i844, label %bb.mo, label %.lr.ph47.i.i837

bb.mo:                                            ; preds = %bb.mn
  %i.dvn = add i16 %i.bfs, -6
  %i.dvo = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep59.i823, align 2, !tbaa !20
  %.not.i.6.i845 = icmp eq i16 %i.dvo, 0
  br i1 %.not.i.6.i845, label %bb.mp, label %.lr.ph47.i.i837

bb.mp:                                            ; preds = %bb.mo
  %i.dvp = add i16 %i.bfs, -7
  %i.dvq = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60.i824, align 4, !tbaa !20
  %.not.i.7.i846 = icmp eq i16 %i.dvq, 0
  br i1 %.not.i.7.i846, label %bb.mq, label %.lr.ph47.i.i837

bb.mq:                                            ; preds = %bb.mp
  %i.dvr = add i16 %i.bfs, -8
  %i.dvs = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61.i825, align 2, !tbaa !20
  %.not.i.8.i847 = icmp eq i16 %i.dvs, 0
  br i1 %.not.i.8.i847, label %bb.mr, label %.lr.ph47.i.i837

bb.mr:                                            ; preds = %bb.mq
  %i.dvt = add i16 %i.bfs, -9
  %i.dvu = load i16, ptr %i.f, align 16, !tbaa !20
  %.not.i.9.i848 = icmp eq i16 %i.dvu, 0
  br i1 %.not.i.9.i848, label %bb.ms, label %.lr.ph47.i.i837

bb.ms:                                            ; preds = %bb.mr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.eb, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %submag0.exit858

.preheader.i.i835:                                ; preds = %._crit_edge.i833
  %i.dvv = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  store i16 %i.bfs, ptr %i.dvv, align 2, !tbaa !26
  %i.dvw = sub i16 0, %i.bfo
  store i16 %i.dvw, ptr %i.eb, align 2, !tbaa !24
  %i.dvx = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.dvy = getelementptr inbounds nuw i8, ptr %i.eb, i64 22
  store i16 %i.dvc, ptr %i.dvy, align 2, !tbaa !20
  %i.dvz = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep54.i818, align 16, !tbaa !20
  %i.dwa = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  store i16 %i.dvz, ptr %i.dwa, align 2, !tbaa !20
  %i.dwb = load <8 x i16>, ptr %i.f, align 16, !tbaa !20
  store <8 x i16> %i.dwb, ptr %i.dvx, align 2, !tbaa !20
  br label %submag0.exit858

.lr.ph47.i.i837:                                  ; preds = %bb.mr, %bb.mq, %bb.mp, %bb.mo, %bb.mn, %bb.mm, %bb.ml, %bb.mk, %bb.mj
  %.03341.i.lcssa.ph.i838 = phi i16 [ %i.dvt, %bb.mr ], [ %i.dvr, %bb.mq ], [ %i.dvp, %bb.mp ], [ %i.dvn, %bb.mo ], [ %i.dvl, %bb.mn ], [ %i.dvj, %bb.mm ], [ %i.dvh, %bb.ml ], [ %i.dvf, %bb.mk ], [ %i.dvd, %bb.mj ]
  %indvars.iv58.i.lcssa.ph.i839 = phi i64 [ 0, %bb.mr ], [ 2, %bb.mq ], [ 4, %bb.mp ], [ 6, %bb.mo ], [ 8, %bb.mn ], [ 10, %bb.mm ], [ 12, %bb.ml ], [ 14, %bb.mk ], [ 16, %bb.mj ] ; 3 uses
  %i.dwc = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  store i16 %.03341.i.lcssa.ph.i838, ptr %i.dwc, align 2, !tbaa !26
  %i.dwd = sub i16 0, %i.bfo
  store i16 %i.dwd, ptr %i.eb, align 2, !tbaa !24
  %i.dwe = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.dwf = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph.i839
  %scevgep.i840 = getelementptr i8, ptr %i.eb, i64 %i.dwf
  %i.dwg = add nuw nsw i64 %indvars.iv58.i.lcssa.ph.i839, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i840, ptr noundef nonnull align 16 dereferenceable(1) %i.f, i64 range(i64 0, 21) %i.dwg, i1 false), !tbaa !20
  %i.dwh = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph.i839
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.dwe, i8 0, i64 %i.dwh, i1 false), !tbaa !20
  br label %submag0.exit858

submag0.exit858:                                  ; preds = %bb.ms, %.preheader.i.i835, %.lr.ph47.i.i837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  br label %sub.exit36

bb.mt:                                            ; preds = %abscmp.exit904
  br i1 %.014.i903, label %bb.mu, label %bb.ni

bb.mu:                                            ; preds = %bb.mt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.dwi = sext i16 %i.bfr to i32                 ; 2 uses
  %i.dwj = sext i16 %i.bfs to i32                 ; 3 uses
  %i.dwk = sub nsw i32 %i.dwi, %i.dwj
  %i.dwl = icmp slt i32 %i.dwk, 10
  br i1 %i.dwl, label %.lr.ph.i807, label %.lr.ph40.i779

.lr.ph.i807:                                      ; preds = %bb.mu
  %i.dwm = sext i16 %i.bfr to i64
  %i.dwn = sub nsw i32 0, %i.dwj
  %i.dwo = sext i32 %i.dwn to i64
  %i.dwp = add nsw i64 %i.dwo, %i.dwm             ; 2 uses
  %reass.sub1167 = sub nsw i32 %i.dwj, %i.dwi     ; 3 uses
  %i.dwq = add nsw i32 %reass.sub1167, 10         ; 3 uses
  %wide.trip.count.i808 = zext i32 %i.dwq to i64  ; 2 uses
  %xtraiter1740 = and i64 %wide.trip.count.i808, 3 ; 3 uses
  %i.dwr = add nsw i32 %reass.sub1167, 9
  %i.dws = icmp ult i32 %i.dwr, 3
  br i1 %i.dws, label %.epil.preheader1739, label %.lr.ph.i807.new

.lr.ph.i807.new:                                  ; preds = %.lr.ph.i807
  %unroll_iter1745 = and i64 %wide.trip.count.i808, 4294967292
  br label %bb.mw

.preheader.i815.unr-lcssa:                        ; preds = %bb.mw
  %lcmp.mod1742.not = icmp eq i64 %xtraiter1740, 0
  br i1 %lcmp.mod1742.not, label %.preheader.i815, label %.epil.preheader1739

.epil.preheader1739:                              ; preds = %.preheader.i815.unr-lcssa, %.lr.ph.i807
  %indvars.iv51.i809.epil.init = phi i64 [ 0, %.lr.ph.i807 ], [ %indvars.iv.next52.i812.3, %.preheader.i815.unr-lcssa ]
  %indvars.iv.i810.epil.init = phi i64 [ %i.dwp, %.lr.ph.i807 ], [ %indvars.iv.next.i813.3, %.preheader.i815.unr-lcssa ]
  %.036.i811.epil.init = phi i64 [ 0, %.lr.ph.i807 ], [ %i.dzk, %.preheader.i815.unr-lcssa ]
  %lcmp.mod1744 = icmp ne i64 %xtraiter1740, 0
  tail call void @llvm.assume(i1 %lcmp.mod1744)
  br label %bb.mv

bb.mv:                                            ; preds = %bb.mv, %.epil.preheader1739
  %indvars.iv51.i809.epil = phi i64 [ %indvars.iv51.i809.epil.init, %.epil.preheader1739 ], [ %indvars.iv.next52.i812.epil, %bb.mv ] ; 3 uses
  %indvars.iv.i810.epil = phi i64 [ %indvars.iv.i810.epil.init, %.epil.preheader1739 ], [ %indvars.iv.next.i813.epil, %bb.mv ] ; 2 uses
  %.036.i811.epil = phi i64 [ %.036.i811.epil.init, %.epil.preheader1739 ], [ %i.dxd, %bb.mv ]
  %epil.iter1741 = phi i64 [ 0, %.epil.preheader1739 ], [ %epil.iter1741.next, %bb.mv ]
  %i.dwt = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv51.i809.epil
  %i.dwu = load i16, ptr %i.dwt, align 2, !tbaa !20
  %i.dwv = zext i16 %i.dwu to i64
  %i.dww = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %indvars.iv.i810.epil
  %i.dwx = load i16, ptr %i.dww, align 2, !tbaa !20
  %i.dwy = zext i16 %i.dwx to i64
  %i.dwz = add nuw nsw i64 %.036.i811.epil, %i.dwv
  %i.dxa = add nuw nsw i64 %i.dwz, %i.dwy         ; 2 uses
  %i.dxb = trunc i64 %i.dxa to i16
  %i.dxc = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv51.i809.epil
  store i16 %i.dxb, ptr %i.dxc, align 2, !tbaa !20
  %i.dxd = lshr i64 %i.dxa, 16                    ; 2 uses
  %indvars.iv.next52.i812.epil = add nuw nsw i64 %indvars.iv51.i809.epil, 1
  %indvars.iv.next.i813.epil = add nsw i64 %indvars.iv.i810.epil, 1
  %epil.iter1741.next = add i64 %epil.iter1741, 1 ; 2 uses
  %epil.iter1741.cmp.not = icmp eq i64 %epil.iter1741.next, %xtraiter1740
  br i1 %epil.iter1741.cmp.not, label %.preheader.i815, label %bb.mv, !llvm.loop !90

.preheader.i815:                                  ; preds = %bb.mv, %.preheader.i815.unr-lcssa
  %.lcssa1515 = phi i64 [ %i.dzk, %.preheader.i815.unr-lcssa ], [ %i.dxd, %bb.mv ] ; 2 uses
  %i.dxe = icmp slt i32 %reass.sub1167, 0
  br i1 %i.dxe, label %.lr.ph40.i779, label %._crit_edge.i786

.lr.ph40.i779:                                    ; preds = %bb.mu, %.preheader.i815
  %.0.lcssa94.i780 = phi i64 [ %.lcssa1515, %.preheader.i815 ], [ 0, %bb.mu ] ; 2 uses
  %.027.lcssa93.i781 = phi i32 [ %i.dwq, %.preheader.i815 ], [ 0, %bb.mu ] ; 2 uses
  %i.dxf = zext i32 %.027.lcssa93.i781 to i64     ; 3 uses
  %i.dxg = sub nsw i64 2, %i.dxf
  %xtraiter1749 = and i64 %i.dxg, 7               ; 2 uses
  %lcmp.mod1750.not = icmp eq i64 %xtraiter1749, 0
  br i1 %lcmp.mod1750.not, label %.prol.loopexit1748, label %.prol.preheader1747

.prol.preheader1747:                              ; preds = %.lr.ph40.i779, %.prol.preheader1747
  %indvars.iv56.i782.prol = phi i64 [ %indvars.iv.next57.i784.prol, %.prol.preheader1747 ], [ %i.dxf, %.lr.ph40.i779 ] ; 3 uses
  %.139.i783.prol = phi i64 [ %i.dxn, %.prol.preheader1747 ], [ %.0.lcssa94.i780, %.lr.ph40.i779 ]
  %prol.iter1751 = phi i64 [ %prol.iter1751.next, %.prol.preheader1747 ], [ 0, %.lr.ph40.i779 ]
  %i.dxh = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv56.i782.prol
  %i.dxi = load i16, ptr %i.dxh, align 2, !tbaa !20
  %i.dxj = zext i16 %i.dxi to i64
  %i.dxk = add nuw nsw i64 %.139.i783.prol, %i.dxj ; 2 uses
  %i.dxl = trunc i64 %i.dxk to i16
  %i.dxm = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv56.i782.prol
  store i16 %i.dxl, ptr %i.dxm, align 2, !tbaa !20
  %i.dxn = lshr i64 %i.dxk, 16                    ; 3 uses
  %indvars.iv.next57.i784.prol = add nuw nsw i64 %indvars.iv56.i782.prol, 1 ; 2 uses
  %prol.iter1751.next = add i64 %prol.iter1751, 1 ; 2 uses
  %prol.iter1751.cmp.not = icmp eq i64 %prol.iter1751.next, %xtraiter1749
  br i1 %prol.iter1751.cmp.not, label %.prol.loopexit1748, label %.prol.preheader1747, !llvm.loop !91

.prol.loopexit1748:                               ; preds = %.prol.preheader1747, %.lr.ph40.i779
  %.lcssa1516.unr = phi i64 [ poison, %.lr.ph40.i779 ], [ %i.dxn, %.prol.preheader1747 ]
  %indvars.iv56.i782.unr = phi i64 [ %i.dxf, %.lr.ph40.i779 ], [ %indvars.iv.next57.i784.prol, %.prol.preheader1747 ]
  %.139.i783.unr = phi i64 [ %.0.lcssa94.i780, %.lr.ph40.i779 ], [ %i.dxn, %.prol.preheader1747 ]
  %i.dxo = add nsw i32 %.027.lcssa93.i781, -3
  %i.dxp = icmp ult i32 %i.dxo, 7
  br i1 %i.dxp, label %._crit_edge.i786, label %.lr.ph40.i779.new

bb.mw:                                            ; preds = %bb.mw, %.lr.ph.i807.new
  %indvars.iv51.i809 = phi i64 [ 0, %.lr.ph.i807.new ], [ %indvars.iv.next52.i812.3, %bb.mw ] ; 6 uses
  %indvars.iv.i810 = phi i64 [ %i.dwp, %.lr.ph.i807.new ], [ %indvars.iv.next.i813.3, %bb.mw ] ; 5 uses
  %.036.i811 = phi i64 [ 0, %.lr.ph.i807.new ], [ %i.dzk, %bb.mw ]
  %niter1746 = phi i64 [ 0, %.lr.ph.i807.new ], [ %niter1746.next.3, %bb.mw ]
  %i.dxq = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv51.i809
  %i.dxr = load i16, ptr %i.dxq, align 4, !tbaa !20
  %i.dxs = zext i16 %i.dxr to i64
  %i.dxt = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %indvars.iv.i810
  %i.dxu = load i16, ptr %i.dxt, align 2, !tbaa !20
  %i.dxv = zext i16 %i.dxu to i64
  %i.dxw = add nuw nsw i64 %.036.i811, %i.dxs
  %i.dxx = add nuw nsw i64 %i.dxw, %i.dxv         ; 2 uses
  %i.dxy = trunc i64 %i.dxx to i16
  %i.dxz = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv51.i809
  store i16 %i.dxy, ptr %i.dxz, align 8, !tbaa !20
  %i.dya = lshr i64 %i.dxx, 16
  %indvars.iv.next52.i812 = or disjoint i64 %indvars.iv51.i809, 1 ; 2 uses
  %i.dyb = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next52.i812
  %i.dyc = load i16, ptr %i.dyb, align 2, !tbaa !20
  %i.dyd = zext i16 %i.dyc to i64
  %i.dye = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv.i810
  %i.dyf = getelementptr i8, ptr %i.dye, i64 2
  %i.dyg = load i16, ptr %i.dyf, align 2, !tbaa !20
  %i.dyh = zext i16 %i.dyg to i64
  %i.dyi = add nuw nsw i64 %i.dya, %i.dyd
  %i.dyj = add nuw nsw i64 %i.dyi, %i.dyh         ; 2 uses
  %i.dyk = trunc i64 %i.dyj to i16
  %i.dyl = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next52.i812
  store i16 %i.dyk, ptr %i.dyl, align 2, !tbaa !20
  %i.dym = lshr i64 %i.dyj, 16
  %indvars.iv.next52.i812.1 = or disjoint i64 %indvars.iv51.i809, 2 ; 2 uses
  %i.dyn = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next52.i812.1
  %i.dyo = load i16, ptr %i.dyn, align 8, !tbaa !20
  %i.dyp = zext i16 %i.dyo to i64
  %i.dyq = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv.i810
  %i.dyr = getelementptr i8, ptr %i.dyq, i64 4
  %i.dys = load i16, ptr %i.dyr, align 2, !tbaa !20
  %i.dyt = zext i16 %i.dys to i64
  %i.dyu = add nuw nsw i64 %i.dym, %i.dyp
  %i.dyv = add nuw nsw i64 %i.dyu, %i.dyt         ; 2 uses
  %i.dyw = trunc i64 %i.dyv to i16
  %i.dyx = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next52.i812.1
  store i16 %i.dyw, ptr %i.dyx, align 4, !tbaa !20
  %i.dyy = lshr i64 %i.dyv, 16
  %indvars.iv.next52.i812.2 = or disjoint i64 %indvars.iv51.i809, 3 ; 2 uses
  %i.dyz = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next52.i812.2
  %i.dza = load i16, ptr %i.dyz, align 2, !tbaa !20
  %i.dzb = zext i16 %i.dza to i64
  %i.dzc = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv.i810
  %i.dzd = getelementptr i8, ptr %i.dzc, i64 6
  %i.dze = load i16, ptr %i.dzd, align 2, !tbaa !20
  %i.dzf = zext i16 %i.dze to i64
  %i.dzg = add nuw nsw i64 %i.dyy, %i.dzb
  %i.dzh = add nuw nsw i64 %i.dzg, %i.dzf         ; 2 uses
  %i.dzi = trunc i64 %i.dzh to i16
  %i.dzj = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next52.i812.2
  store i16 %i.dzi, ptr %i.dzj, align 2, !tbaa !20
  %i.dzk = lshr i64 %i.dzh, 16                    ; 3 uses
  %indvars.iv.next52.i812.3 = add nuw nsw i64 %indvars.iv51.i809, 4 ; 2 uses
  %indvars.iv.next.i813.3 = add nsw i64 %indvars.iv.i810, 4 ; 2 uses
  %niter1746.next.3 = add i64 %niter1746, 4       ; 2 uses
  %niter1746.ncmp.3 = icmp eq i64 %niter1746.next.3, %unroll_iter1745
  br i1 %niter1746.ncmp.3, label %.preheader.i815.unr-lcssa, label %bb.mw, !llvm.loop !5

.lr.ph40.i779.new:                                ; preds = %.prol.loopexit1748, %.lr.ph40.i779.new
  %indvars.iv56.i782 = phi i64 [ %indvars.iv.next57.i784.7, %.lr.ph40.i779.new ], [ %indvars.iv56.i782.unr, %.prol.loopexit1748 ] ; 10 uses
  %.139.i783 = phi i64 [ %i.ebo, %.lr.ph40.i779.new ], [ %.139.i783.unr, %.prol.loopexit1748 ]
  %i.dzl = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv56.i782
  %i.dzm = load i16, ptr %i.dzl, align 2, !tbaa !20
  %i.dzn = zext i16 %i.dzm to i64
  %i.dzo = add nuw nsw i64 %.139.i783, %i.dzn     ; 2 uses
  %i.dzp = trunc i64 %i.dzo to i16
  %i.dzq = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv56.i782
  store i16 %i.dzp, ptr %i.dzq, align 2, !tbaa !20
  %i.dzr = lshr i64 %i.dzo, 16
  %indvars.iv.next57.i784 = add nuw nsw i64 %indvars.iv56.i782, 1 ; 2 uses
  %i.dzs = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i784
  %i.dzt = load i16, ptr %i.dzs, align 2, !tbaa !20
  %i.dzu = zext i16 %i.dzt to i64
  %i.dzv = add nuw nsw i64 %i.dzr, %i.dzu         ; 2 uses
  %i.dzw = trunc i64 %i.dzv to i16
  %i.dzx = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next57.i784
  store i16 %i.dzw, ptr %i.dzx, align 2, !tbaa !20
  %i.dzy = lshr i64 %i.dzv, 16
  %indvars.iv.next57.i784.1 = add nuw nsw i64 %indvars.iv56.i782, 2 ; 2 uses
  %i.dzz = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i784.1
  %i.eaa = load i16, ptr %i.dzz, align 2, !tbaa !20
  %i.eab = zext i16 %i.eaa to i64
  %i.eac = add nuw nsw i64 %i.dzy, %i.eab         ; 2 uses
  %i.ead = trunc i64 %i.eac to i16
  %i.eae = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next57.i784.1
  store i16 %i.ead, ptr %i.eae, align 2, !tbaa !20
  %i.eaf = lshr i64 %i.eac, 16
  %indvars.iv.next57.i784.2 = add nuw nsw i64 %indvars.iv56.i782, 3 ; 2 uses
  %i.eag = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i784.2
  %i.eah = load i16, ptr %i.eag, align 2, !tbaa !20
  %i.eai = zext i16 %i.eah to i64
  %i.eaj = add nuw nsw i64 %i.eaf, %i.eai         ; 2 uses
  %i.eak = trunc i64 %i.eaj to i16
  %i.eal = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next57.i784.2
  store i16 %i.eak, ptr %i.eal, align 2, !tbaa !20
  %i.eam = lshr i64 %i.eaj, 16
  %indvars.iv.next57.i784.3 = add nuw nsw i64 %indvars.iv56.i782, 4 ; 2 uses
  %i.ean = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i784.3
  %i.eao = load i16, ptr %i.ean, align 2, !tbaa !20
  %i.eap = zext i16 %i.eao to i64
  %i.eaq = add nuw nsw i64 %i.eam, %i.eap         ; 2 uses
  %i.ear = trunc i64 %i.eaq to i16
  %i.eas = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next57.i784.3
  store i16 %i.ear, ptr %i.eas, align 2, !tbaa !20
  %i.eat = lshr i64 %i.eaq, 16
  %indvars.iv.next57.i784.4 = add nuw nsw i64 %indvars.iv56.i782, 5 ; 2 uses
  %i.eau = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i784.4
  %i.eav = load i16, ptr %i.eau, align 2, !tbaa !20
  %i.eaw = zext i16 %i.eav to i64
  %i.eax = add nuw nsw i64 %i.eat, %i.eaw         ; 2 uses
  %i.eay = trunc i64 %i.eax to i16
  %i.eaz = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next57.i784.4
  store i16 %i.eay, ptr %i.eaz, align 2, !tbaa !20
  %i.eba = lshr i64 %i.eax, 16
  %indvars.iv.next57.i784.5 = add nuw nsw i64 %indvars.iv56.i782, 6 ; 2 uses
  %i.ebb = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i784.5
  %i.ebc = load i16, ptr %i.ebb, align 2, !tbaa !20
  %i.ebd = zext i16 %i.ebc to i64
  %i.ebe = add nuw nsw i64 %i.eba, %i.ebd         ; 2 uses
  %i.ebf = trunc i64 %i.ebe to i16
  %i.ebg = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next57.i784.5
  store i16 %i.ebf, ptr %i.ebg, align 2, !tbaa !20
  %i.ebh = lshr i64 %i.ebe, 16
  %indvars.iv.next57.i784.6 = add nuw nsw i64 %indvars.iv56.i782, 7 ; 2 uses
  %i.ebi = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i784.6
  %i.ebj = load i16, ptr %i.ebi, align 2, !tbaa !20
  %i.ebk = zext i16 %i.ebj to i64
  %i.ebl = add nuw nsw i64 %i.ebh, %i.ebk         ; 2 uses
  %i.ebm = trunc i64 %i.ebl to i16
  %i.ebn = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next57.i784.6
  store i16 %i.ebm, ptr %i.ebn, align 2, !tbaa !20
  %i.ebo = lshr i64 %i.ebl, 16                    ; 2 uses
  %indvars.iv.next57.i784.7 = add nuw nsw i64 %indvars.iv56.i782, 8 ; 2 uses
  %exitcond59.not.i785.7 = icmp eq i64 %indvars.iv.next57.i784.7, 10
  br i1 %exitcond59.not.i785.7, label %._crit_edge.i786, label %.lr.ph40.i779.new, !llvm.loop !6

._crit_edge.i786:                                 ; preds = %.prol.loopexit1748, %.lr.ph40.i779.new, %.preheader.i815
  %.128.lcssa.i787 = phi i32 [ %i.dwq, %.preheader.i815 ], [ 10, %.lr.ph40.i779.new ], [ 10, %.prol.loopexit1748 ]
  %.1.lcssa.i788 = phi i64 [ %.lcssa1515, %.preheader.i815 ], [ %.lcssa1516.unr, %.prol.loopexit1748 ], [ %i.ebo, %.lr.ph40.i779.new ]
  %i.ebp = trunc nuw nsw i64 %.1.lcssa.i788 to i16
  %i.ebq = zext nneg i32 %.128.lcssa.i787 to i64
  %i.ebr = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ebq
  store i16 %i.ebp, ptr %i.ebr, align 2, !tbaa !20
  %i.ebs = add i16 %i.bfr, 1
  %i.ebt = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep.i768, align 4, !tbaa !20 ; 2 uses
  %.not.i.i789 = icmp eq i16 %i.ebt, 0
  br i1 %.not.i.i789, label %bb.mx, label %.preheader.i.i790

bb.mx:                                            ; preds = %._crit_edge.i786
  %i.ebu = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60.i769, align 2, !tbaa !20 ; 2 uses
  %.not.i.1.i793 = icmp eq i16 %i.ebu, 0
  br i1 %.not.i.1.i793, label %bb.my, label %.preheader.i.i790

bb.my:                                            ; preds = %bb.mx
  %i.ebv = add i16 %i.bfr, -1
  %i.ebw = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61.i770, align 16, !tbaa !20
  %.not.i.2.i794 = icmp eq i16 %i.ebw, 0
  br i1 %.not.i.2.i794, label %bb.mz, label %.lr.ph47.i.i795

bb.mz:                                            ; preds = %bb.my
  %i.ebx = add i16 %i.bfr, -2
  %i.eby = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep62.i771, align 2, !tbaa !20
  %.not.i.3.i799 = icmp eq i16 %i.eby, 0
  br i1 %.not.i.3.i799, label %bb.na, label %.lr.ph47.i.i795

bb.na:                                            ; preds = %bb.mz
  %i.ebz = add i16 %i.bfr, -3
  %i.eca = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep63.i772, align 4, !tbaa !20
  %.not.i.4.i800 = icmp eq i16 %i.eca, 0
  br i1 %.not.i.4.i800, label %bb.nb, label %.lr.ph47.i.i795

bb.nb:                                            ; preds = %bb.na
  %i.ecb = add i16 %i.bfr, -4
  %i.ecc = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep64.i773, align 2, !tbaa !20
  %.not.i.5.i801 = icmp eq i16 %i.ecc, 0
  br i1 %.not.i.5.i801, label %bb.nc, label %.lr.ph47.i.i795

bb.nc:                                            ; preds = %bb.nb
  %i.ecd = add i16 %i.bfr, -5
  %i.ece = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep65.i774, align 8, !tbaa !20
  %.not.i.6.i802 = icmp eq i16 %i.ece, 0
  br i1 %.not.i.6.i802, label %bb.nd, label %.lr.ph47.i.i795

bb.nd:                                            ; preds = %bb.nc
  %i.ecf = add i16 %i.bfr, -6
  %i.ecg = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep66.i775, align 2, !tbaa !20
  %.not.i.7.i803 = icmp eq i16 %i.ecg, 0
  br i1 %.not.i.7.i803, label %bb.ne, label %.lr.ph47.i.i795

bb.ne:                                            ; preds = %bb.nd
  %i.ech = add i16 %i.bfr, -7
  %i.eci = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep67.i776, align 4, !tbaa !20
  %.not.i.8.i804 = icmp eq i16 %i.eci, 0
  br i1 %.not.i.8.i804, label %bb.nf, label %.lr.ph47.i.i795

bb.nf:                                            ; preds = %bb.ne
  %i.ecj = add i16 %i.bfr, -8
  %i.eck = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep68.i777, align 2, !tbaa !20
  %.not.i.9.i805 = icmp eq i16 %i.eck, 0
  br i1 %.not.i.9.i805, label %bb.ng, label %.lr.ph47.i.i795

bb.ng:                                            ; preds = %bb.nf
  %i.ecl = add i16 %i.bfr, -9
  %i.ecm = load i16, ptr %i.g, align 16, !tbaa !20
  %.not.i.10.i806 = icmp eq i16 %i.ecm, 0
  br i1 %.not.i.10.i806, label %bb.nh, label %.lr.ph47.i.i795

bb.nh:                                            ; preds = %bb.ng
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.eb, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %addmag0.exit816

.preheader.i.i790:                                ; preds = %bb.mx, %._crit_edge.i786
  %i.ecn = phi i16 [ %i.ebt, %._crit_edge.i786 ], [ %i.ebu, %bb.mx ]
  %indvars.iv72.in.i.lcssa.sroa.phi.i791 = phi ptr [ %indvars.iv72.in.i.lcssa.sroa.gep.i778, %._crit_edge.i786 ], [ %indvars.iv72.i.lcssa.sroa.gep.i768, %bb.mx ] ; 2 uses
  %.03341.i.lcssa.i792 = phi i16 [ %i.ebs, %._crit_edge.i786 ], [ %i.bfr, %bb.mx ]
  %i.eco = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  store i16 %.03341.i.lcssa.i792, ptr %i.eco, align 2, !tbaa !26
  store i16 %i.bfo, ptr %i.eb, align 2, !tbaa !24
  %i.ecp = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ecq = getelementptr inbounds nuw i8, ptr %i.eb, i64 22
  store i16 %i.ecn, ptr %i.ecq, align 2, !tbaa !20
  %i.ecr = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.i791, i64 -4
  %i.ecs = load i16, ptr %i.ecr, align 2, !tbaa !20
  %i.ect = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  store i16 %i.ecs, ptr %i.ect, align 2, !tbaa !20
  %i.ecu = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.i791, i64 -20
  %i.ecv = load <8 x i16>, ptr %i.ecu, align 2, !tbaa !20
  store <8 x i16> %i.ecv, ptr %i.ecp, align 2, !tbaa !20
  br label %addmag0.exit816

.lr.ph47.i.i795:                                  ; preds = %bb.ng, %bb.nf, %bb.ne, %bb.nd, %bb.nc, %bb.nb, %bb.na, %bb.mz, %bb.my
  %.03341.i.lcssa.ph.i796 = phi i16 [ %i.ecl, %bb.ng ], [ %i.ecj, %bb.nf ], [ %i.ech, %bb.ne ], [ %i.ecf, %bb.nd ], [ %i.ecd, %bb.nc ], [ %i.ecb, %bb.nb ], [ %i.ebz, %bb.na ], [ %i.ebx, %bb.mz ], [ %i.ebv, %bb.my ]
  %indvars.iv58.i.lcssa.ph.i797 = phi i64 [ 0, %bb.ng ], [ 2, %bb.nf ], [ 4, %bb.ne ], [ 6, %bb.nd ], [ 8, %bb.nc ], [ 10, %bb.nb ], [ 12, %bb.na ], [ 14, %bb.mz ], [ 16, %bb.my ] ; 3 uses
  %i.ecw = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  store i16 %.03341.i.lcssa.ph.i796, ptr %i.ecw, align 2, !tbaa !26
  store i16 %i.bfo, ptr %i.eb, align 2, !tbaa !24
  %i.ecx = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ecy = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph.i797
  %scevgep.i798 = getelementptr i8, ptr %i.eb, i64 %i.ecy
  %i.ecz = add nuw nsw i64 %indvars.iv58.i.lcssa.ph.i797, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i798, ptr noundef nonnull align 16 dereferenceable(1) %i.g, i64 range(i64 0, 23) %i.ecz, i1 false), !tbaa !20
  %i.eda = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph.i797
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.ecx, i8 0, i64 %i.eda, i1 false), !tbaa !20
  br label %addmag0.exit816

addmag0.exit816:                                  ; preds = %bb.nh, %.preheader.i.i790, %.lr.ph47.i.i795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  br label %sub.exit36

bb.ni:                                            ; preds = %bb.mt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  %i.edb = sext i16 %i.bfs to i32                 ; 2 uses
  %i.edc = sext i16 %i.bfr to i32                 ; 3 uses
  %i.edd = sub nsw i32 %i.edb, %i.edc
  %i.ede = icmp slt i32 %i.edd, 10
  br i1 %i.ede, label %.lr.ph.i758, label %.lr.ph40.i730

.lr.ph.i758:                                      ; preds = %bb.ni
  %i.edf = sext i16 %i.bfs to i64
  %i.edg = sub nsw i32 0, %i.edc
  %i.edh = sext i32 %i.edg to i64
  %i.edi = add nsw i64 %i.edf, %i.edh             ; 2 uses
  %i.edj = add nsw i32 %i.edc, 10
  %i.edk = sub nsw i32 %i.edj, %i.edb             ; 5 uses
  %wide.trip.count.i759 = zext i32 %i.edk to i64  ; 2 uses
  %xtraiter1727 = and i64 %wide.trip.count.i759, 3 ; 3 uses
  %i.edl = add nsw i32 %i.edk, -1
  %i.edm = icmp ult i32 %i.edl, 3
  br i1 %i.edm, label %.epil.preheader1726, label %.lr.ph.i758.new

.lr.ph.i758.new:                                  ; preds = %.lr.ph.i758
  %unroll_iter1732 = and i64 %wide.trip.count.i759, 4294967292
  br label %bb.nk

.preheader.i766.unr-lcssa:                        ; preds = %bb.nk
  %lcmp.mod1729.not = icmp eq i64 %xtraiter1727, 0
  br i1 %lcmp.mod1729.not, label %.preheader.i766, label %.epil.preheader1726

.epil.preheader1726:                              ; preds = %.preheader.i766.unr-lcssa, %.lr.ph.i758
  %indvars.iv51.i760.epil.init = phi i64 [ 0, %.lr.ph.i758 ], [ %indvars.iv.next52.i763.3, %.preheader.i766.unr-lcssa ]
  %indvars.iv.i761.epil.init = phi i64 [ %i.edi, %.lr.ph.i758 ], [ %indvars.iv.next.i764.3, %.preheader.i766.unr-lcssa ]
  %.036.i762.epil.init = phi i64 [ 0, %.lr.ph.i758 ], [ %i.ege, %.preheader.i766.unr-lcssa ]
  %lcmp.mod1731 = icmp ne i64 %xtraiter1727, 0
  tail call void @llvm.assume(i1 %lcmp.mod1731)
  br label %bb.nj

bb.nj:                                            ; preds = %bb.nj, %.epil.preheader1726
  %indvars.iv51.i760.epil = phi i64 [ %indvars.iv51.i760.epil.init, %.epil.preheader1726 ], [ %indvars.iv.next52.i763.epil, %bb.nj ] ; 3 uses
  %indvars.iv.i761.epil = phi i64 [ %indvars.iv.i761.epil.init, %.epil.preheader1726 ], [ %indvars.iv.next.i764.epil, %bb.nj ] ; 2 uses
  %.036.i762.epil = phi i64 [ %.036.i762.epil.init, %.epil.preheader1726 ], [ %i.edx, %bb.nj ]
  %epil.iter1728 = phi i64 [ 0, %.epil.preheader1726 ], [ %epil.iter1728.next, %bb.nj ]
  %i.edn = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv51.i760.epil
  %i.edo = load i16, ptr %i.edn, align 2, !tbaa !20
  %i.edp = zext i16 %i.edo to i64
  %i.edq = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %indvars.iv.i761.epil
  %i.edr = load i16, ptr %i.edq, align 2, !tbaa !20
  %i.eds = zext i16 %i.edr to i64
  %i.edt = add nuw nsw i64 %.036.i762.epil, %i.edp
  %i.edu = add nuw nsw i64 %i.edt, %i.eds         ; 2 uses
  %i.edv = trunc i64 %i.edu to i16
  %i.edw = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv51.i760.epil
  store i16 %i.edv, ptr %i.edw, align 2, !tbaa !20
  %i.edx = lshr i64 %i.edu, 16                    ; 2 uses
  %indvars.iv.next52.i763.epil = add nuw nsw i64 %indvars.iv51.i760.epil, 1
  %indvars.iv.next.i764.epil = add nsw i64 %indvars.iv.i761.epil, 1
  %epil.iter1728.next = add i64 %epil.iter1728, 1 ; 2 uses
  %epil.iter1728.cmp.not = icmp eq i64 %epil.iter1728.next, %xtraiter1727
  br i1 %epil.iter1728.cmp.not, label %.preheader.i766, label %bb.nj, !llvm.loop !92

.preheader.i766:                                  ; preds = %bb.nj, %.preheader.i766.unr-lcssa
  %.lcssa1513 = phi i64 [ %i.ege, %.preheader.i766.unr-lcssa ], [ %i.edx, %bb.nj ] ; 2 uses
  %i.edy = icmp samesign ult i32 %i.edk, 10
  br i1 %i.edy, label %.lr.ph40.i730, label %._crit_edge.i737

.lr.ph40.i730:                                    ; preds = %bb.ni, %.preheader.i766
  %.0.lcssa94.i731 = phi i64 [ %.lcssa1513, %.preheader.i766 ], [ 0, %bb.ni ] ; 2 uses
  %.027.lcssa93.i732 = phi i32 [ %i.edk, %.preheader.i766 ], [ 0, %bb.ni ] ; 2 uses
  %i.edz = zext nneg i32 %.027.lcssa93.i732 to i64 ; 3 uses
  %i.eea = sub nsw i64 2, %i.edz
  %xtraiter1736 = and i64 %i.eea, 7               ; 2 uses
  %lcmp.mod1737.not = icmp eq i64 %xtraiter1736, 0
  br i1 %lcmp.mod1737.not, label %.prol.loopexit1735, label %.prol.preheader1734

.prol.preheader1734:                              ; preds = %.lr.ph40.i730, %.prol.preheader1734
  %indvars.iv56.i733.prol = phi i64 [ %indvars.iv.next57.i735.prol, %.prol.preheader1734 ], [ %i.edz, %.lr.ph40.i730 ] ; 3 uses
  %.139.i734.prol = phi i64 [ %i.eeh, %.prol.preheader1734 ], [ %.0.lcssa94.i731, %.lr.ph40.i730 ]
  %prol.iter1738 = phi i64 [ %prol.iter1738.next, %.prol.preheader1734 ], [ 0, %.lr.ph40.i730 ]
  %i.eeb = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv56.i733.prol
  %i.eec = load i16, ptr %i.eeb, align 2, !tbaa !20
  %i.eed = zext i16 %i.eec to i64
  %i.eee = add nuw nsw i64 %.139.i734.prol, %i.eed ; 2 uses
  %i.eef = trunc i64 %i.eee to i16
  %i.eeg = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv56.i733.prol
  store i16 %i.eef, ptr %i.eeg, align 2, !tbaa !20
  %i.eeh = lshr i64 %i.eee, 16                    ; 3 uses
  %indvars.iv.next57.i735.prol = add nuw nsw i64 %indvars.iv56.i733.prol, 1 ; 2 uses
  %prol.iter1738.next = add i64 %prol.iter1738, 1 ; 2 uses
  %prol.iter1738.cmp.not = icmp eq i64 %prol.iter1738.next, %xtraiter1736
  br i1 %prol.iter1738.cmp.not, label %.prol.loopexit1735, label %.prol.preheader1734, !llvm.loop !93

.prol.loopexit1735:                               ; preds = %.prol.preheader1734, %.lr.ph40.i730
  %.lcssa1514.unr = phi i64 [ poison, %.lr.ph40.i730 ], [ %i.eeh, %.prol.preheader1734 ]
  %indvars.iv56.i733.unr = phi i64 [ %i.edz, %.lr.ph40.i730 ], [ %indvars.iv.next57.i735.prol, %.prol.preheader1734 ]
  %.139.i734.unr = phi i64 [ %.0.lcssa94.i731, %.lr.ph40.i730 ], [ %i.eeh, %.prol.preheader1734 ]
  %i.eei = add nsw i32 %.027.lcssa93.i732, -3
  %i.eej = icmp ult i32 %i.eei, 7
  br i1 %i.eej, label %._crit_edge.i737, label %.lr.ph40.i730.new

bb.nk:                                            ; preds = %bb.nk, %.lr.ph.i758.new
  %indvars.iv51.i760 = phi i64 [ 0, %.lr.ph.i758.new ], [ %indvars.iv.next52.i763.3, %bb.nk ] ; 6 uses
  %indvars.iv.i761 = phi i64 [ %i.edi, %.lr.ph.i758.new ], [ %indvars.iv.next.i764.3, %bb.nk ] ; 5 uses
  %.036.i762 = phi i64 [ 0, %.lr.ph.i758.new ], [ %i.ege, %bb.nk ]
  %niter1733 = phi i64 [ 0, %.lr.ph.i758.new ], [ %niter1733.next.3, %bb.nk ]
  %i.eek = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv51.i760
  %i.eel = load i16, ptr %i.eek, align 4, !tbaa !20
  %i.eem = zext i16 %i.eel to i64
  %i.een = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %indvars.iv.i761
  %i.eeo = load i16, ptr %i.een, align 2, !tbaa !20
  %i.eep = zext i16 %i.eeo to i64
  %i.eeq = add nuw nsw i64 %.036.i762, %i.eem
  %i.eer = add nuw nsw i64 %i.eeq, %i.eep         ; 2 uses
  %i.ees = trunc i64 %i.eer to i16
  %i.eet = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv51.i760
  store i16 %i.ees, ptr %i.eet, align 8, !tbaa !20
  %i.eeu = lshr i64 %i.eer, 16
  %indvars.iv.next52.i763 = or disjoint i64 %indvars.iv51.i760, 1 ; 2 uses
  %i.eev = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next52.i763
  %i.eew = load i16, ptr %i.eev, align 2, !tbaa !20
  %i.eex = zext i16 %i.eew to i64
  %i.eey = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i761
  %i.eez = getelementptr i8, ptr %i.eey, i64 2
  %i.efa = load i16, ptr %i.eez, align 2, !tbaa !20
  %i.efb = zext i16 %i.efa to i64
  %i.efc = add nuw nsw i64 %i.eeu, %i.eex
  %i.efd = add nuw nsw i64 %i.efc, %i.efb         ; 2 uses
  %i.efe = trunc i64 %i.efd to i16
  %i.eff = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next52.i763
  store i16 %i.efe, ptr %i.eff, align 2, !tbaa !20
  %i.efg = lshr i64 %i.efd, 16
  %indvars.iv.next52.i763.1 = or disjoint i64 %indvars.iv51.i760, 2 ; 2 uses
  %i.efh = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next52.i763.1
  %i.efi = load i16, ptr %i.efh, align 8, !tbaa !20
  %i.efj = zext i16 %i.efi to i64
  %i.efk = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i761
  %i.efl = getelementptr i8, ptr %i.efk, i64 4
  %i.efm = load i16, ptr %i.efl, align 2, !tbaa !20
  %i.efn = zext i16 %i.efm to i64
  %i.efo = add nuw nsw i64 %i.efg, %i.efj
  %i.efp = add nuw nsw i64 %i.efo, %i.efn         ; 2 uses
  %i.efq = trunc i64 %i.efp to i16
  %i.efr = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next52.i763.1
  store i16 %i.efq, ptr %i.efr, align 4, !tbaa !20
  %i.efs = lshr i64 %i.efp, 16
  %indvars.iv.next52.i763.2 = or disjoint i64 %indvars.iv51.i760, 3 ; 2 uses
  %i.eft = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next52.i763.2
  %i.efu = load i16, ptr %i.eft, align 2, !tbaa !20
  %i.efv = zext i16 %i.efu to i64
  %i.efw = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i761
  %i.efx = getelementptr i8, ptr %i.efw, i64 6
  %i.efy = load i16, ptr %i.efx, align 2, !tbaa !20
  %i.efz = zext i16 %i.efy to i64
  %i.ega = add nuw nsw i64 %i.efs, %i.efv
  %i.egb = add nuw nsw i64 %i.ega, %i.efz         ; 2 uses
  %i.egc = trunc i64 %i.egb to i16
  %i.egd = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next52.i763.2
  store i16 %i.egc, ptr %i.egd, align 2, !tbaa !20
  %i.ege = lshr i64 %i.egb, 16                    ; 3 uses
  %indvars.iv.next52.i763.3 = add nuw nsw i64 %indvars.iv51.i760, 4 ; 2 uses
  %indvars.iv.next.i764.3 = add nsw i64 %indvars.iv.i761, 4 ; 2 uses
  %niter1733.next.3 = add i64 %niter1733, 4       ; 2 uses
  %niter1733.ncmp.3 = icmp eq i64 %niter1733.next.3, %unroll_iter1732
  br i1 %niter1733.ncmp.3, label %.preheader.i766.unr-lcssa, label %bb.nk, !llvm.loop !5

.lr.ph40.i730.new:                                ; preds = %.prol.loopexit1735, %.lr.ph40.i730.new
  %indvars.iv56.i733 = phi i64 [ %indvars.iv.next57.i735.7, %.lr.ph40.i730.new ], [ %indvars.iv56.i733.unr, %.prol.loopexit1735 ] ; 10 uses
  %.139.i734 = phi i64 [ %i.eii, %.lr.ph40.i730.new ], [ %.139.i734.unr, %.prol.loopexit1735 ]
  %i.egf = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv56.i733
  %i.egg = load i16, ptr %i.egf, align 2, !tbaa !20
  %i.egh = zext i16 %i.egg to i64
  %i.egi = add nuw nsw i64 %.139.i734, %i.egh     ; 2 uses
  %i.egj = trunc i64 %i.egi to i16
  %i.egk = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv56.i733
  store i16 %i.egj, ptr %i.egk, align 2, !tbaa !20
  %i.egl = lshr i64 %i.egi, 16
  %indvars.iv.next57.i735 = add nuw nsw i64 %indvars.iv56.i733, 1 ; 2 uses
  %i.egm = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i735
  %i.egn = load i16, ptr %i.egm, align 2, !tbaa !20
  %i.ego = zext i16 %i.egn to i64
  %i.egp = add nuw nsw i64 %i.egl, %i.ego         ; 2 uses
  %i.egq = trunc i64 %i.egp to i16
  %i.egr = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next57.i735
  store i16 %i.egq, ptr %i.egr, align 2, !tbaa !20
  %i.egs = lshr i64 %i.egp, 16
  %indvars.iv.next57.i735.1 = add nuw nsw i64 %indvars.iv56.i733, 2 ; 2 uses
  %i.egt = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i735.1
  %i.egu = load i16, ptr %i.egt, align 2, !tbaa !20
  %i.egv = zext i16 %i.egu to i64
  %i.egw = add nuw nsw i64 %i.egs, %i.egv         ; 2 uses
  %i.egx = trunc i64 %i.egw to i16
  %i.egy = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next57.i735.1
  store i16 %i.egx, ptr %i.egy, align 2, !tbaa !20
  %i.egz = lshr i64 %i.egw, 16
  %indvars.iv.next57.i735.2 = add nuw nsw i64 %indvars.iv56.i733, 3 ; 2 uses
  %i.eha = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i735.2
  %i.ehb = load i16, ptr %i.eha, align 2, !tbaa !20
  %i.ehc = zext i16 %i.ehb to i64
  %i.ehd = add nuw nsw i64 %i.egz, %i.ehc         ; 2 uses
  %i.ehe = trunc i64 %i.ehd to i16
  %i.ehf = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next57.i735.2
  store i16 %i.ehe, ptr %i.ehf, align 2, !tbaa !20
  %i.ehg = lshr i64 %i.ehd, 16
  %indvars.iv.next57.i735.3 = add nuw nsw i64 %indvars.iv56.i733, 4 ; 2 uses
  %i.ehh = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i735.3
  %i.ehi = load i16, ptr %i.ehh, align 2, !tbaa !20
  %i.ehj = zext i16 %i.ehi to i64
  %i.ehk = add nuw nsw i64 %i.ehg, %i.ehj         ; 2 uses
  %i.ehl = trunc i64 %i.ehk to i16
  %i.ehm = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next57.i735.3
  store i16 %i.ehl, ptr %i.ehm, align 2, !tbaa !20
  %i.ehn = lshr i64 %i.ehk, 16
  %indvars.iv.next57.i735.4 = add nuw nsw i64 %indvars.iv56.i733, 5 ; 2 uses
  %i.eho = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i735.4
  %i.ehp = load i16, ptr %i.eho, align 2, !tbaa !20
  %i.ehq = zext i16 %i.ehp to i64
  %i.ehr = add nuw nsw i64 %i.ehn, %i.ehq         ; 2 uses
  %i.ehs = trunc i64 %i.ehr to i16
  %i.eht = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next57.i735.4
  store i16 %i.ehs, ptr %i.eht, align 2, !tbaa !20
  %i.ehu = lshr i64 %i.ehr, 16
  %indvars.iv.next57.i735.5 = add nuw nsw i64 %indvars.iv56.i733, 6 ; 2 uses
  %i.ehv = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i735.5
  %i.ehw = load i16, ptr %i.ehv, align 2, !tbaa !20
  %i.ehx = zext i16 %i.ehw to i64
  %i.ehy = add nuw nsw i64 %i.ehu, %i.ehx         ; 2 uses
  %i.ehz = trunc i64 %i.ehy to i16
  %i.eia = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next57.i735.5
  store i16 %i.ehz, ptr %i.eia, align 2, !tbaa !20
  %i.eib = lshr i64 %i.ehy, 16
  %indvars.iv.next57.i735.6 = add nuw nsw i64 %indvars.iv56.i733, 7 ; 2 uses
  %i.eic = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i735.6
  %i.eid = load i16, ptr %i.eic, align 2, !tbaa !20
  %i.eie = zext i16 %i.eid to i64
  %i.eif = add nuw nsw i64 %i.eib, %i.eie         ; 2 uses
  %i.eig = trunc i64 %i.eif to i16
  %i.eih = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next57.i735.6
  store i16 %i.eig, ptr %i.eih, align 2, !tbaa !20
  %i.eii = lshr i64 %i.eif, 16                    ; 2 uses
  %indvars.iv.next57.i735.7 = add nuw nsw i64 %indvars.iv56.i733, 8 ; 2 uses
  %exitcond59.not.i736.7 = icmp eq i64 %indvars.iv.next57.i735.7, 10
  br i1 %exitcond59.not.i736.7, label %._crit_edge.i737, label %.lr.ph40.i730.new, !llvm.loop !6

._crit_edge.i737:                                 ; preds = %.prol.loopexit1735, %.lr.ph40.i730.new, %.preheader.i766
  %.128.lcssa.i738 = phi i32 [ %i.edk, %.preheader.i766 ], [ 10, %.lr.ph40.i730.new ], [ 10, %.prol.loopexit1735 ]
  %.1.lcssa.i739 = phi i64 [ %.lcssa1513, %.preheader.i766 ], [ %.lcssa1514.unr, %.prol.loopexit1735 ], [ %i.eii, %.lr.ph40.i730.new ]
  %i.eij = trunc nuw nsw i64 %.1.lcssa.i739 to i16
  %i.eik = zext nneg i32 %.128.lcssa.i738 to i64
  %i.eil = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.eik
  store i16 %i.eij, ptr %i.eil, align 2, !tbaa !20
  %i.eim = add i16 %i.bfs, 1
  %i.ein = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep.i719, align 4, !tbaa !20 ; 2 uses
  %.not.i.i740 = icmp eq i16 %i.ein, 0
  br i1 %.not.i.i740, label %bb.nl, label %.preheader.i.i741

bb.nl:                                            ; preds = %._crit_edge.i737
  %i.eio = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60.i720, align 2, !tbaa !20 ; 2 uses
  %.not.i.1.i744 = icmp eq i16 %i.eio, 0
  br i1 %.not.i.1.i744, label %bb.nm, label %.preheader.i.i741

bb.nm:                                            ; preds = %bb.nl
  %i.eip = add i16 %i.bfs, -1
  %i.eiq = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61.i721, align 16, !tbaa !20
  %.not.i.2.i745 = icmp eq i16 %i.eiq, 0
  br i1 %.not.i.2.i745, label %bb.nn, label %.lr.ph47.i.i746

bb.nn:                                            ; preds = %bb.nm
  %i.eir = add i16 %i.bfs, -2
  %i.eis = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep62.i722, align 2, !tbaa !20
  %.not.i.3.i750 = icmp eq i16 %i.eis, 0
  br i1 %.not.i.3.i750, label %bb.no, label %.lr.ph47.i.i746

bb.no:                                            ; preds = %bb.nn
  %i.eit = add i16 %i.bfs, -3
  %i.eiu = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep63.i723, align 4, !tbaa !20
  %.not.i.4.i751 = icmp eq i16 %i.eiu, 0
  br i1 %.not.i.4.i751, label %bb.np, label %.lr.ph47.i.i746

bb.np:                                            ; preds = %bb.no
  %i.eiv = add i16 %i.bfs, -4
  %i.eiw = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep64.i724, align 2, !tbaa !20
  %.not.i.5.i752 = icmp eq i16 %i.eiw, 0
  br i1 %.not.i.5.i752, label %bb.nq, label %.lr.ph47.i.i746

bb.nq:                                            ; preds = %bb.np
  %i.eix = add i16 %i.bfs, -5
  %i.eiy = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep65.i725, align 8, !tbaa !20
  %.not.i.6.i753 = icmp eq i16 %i.eiy, 0
  br i1 %.not.i.6.i753, label %bb.nr, label %.lr.ph47.i.i746

bb.nr:                                            ; preds = %bb.nq
  %i.eiz = add i16 %i.bfs, -6
  %i.eja = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep66.i726, align 2, !tbaa !20
  %.not.i.7.i754 = icmp eq i16 %i.eja, 0
  br i1 %.not.i.7.i754, label %bb.ns, label %.lr.ph47.i.i746

bb.ns:                                            ; preds = %bb.nr
  %i.ejb = add i16 %i.bfs, -7
  %i.ejc = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep67.i727, align 4, !tbaa !20
  %.not.i.8.i755 = icmp eq i16 %i.ejc, 0
  br i1 %.not.i.8.i755, label %bb.nt, label %.lr.ph47.i.i746

bb.nt:                                            ; preds = %bb.ns
  %i.ejd = add i16 %i.bfs, -8
  %i.eje = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep68.i728, align 2, !tbaa !20
  %.not.i.9.i756 = icmp eq i16 %i.eje, 0
  br i1 %.not.i.9.i756, label %bb.nu, label %.lr.ph47.i.i746

bb.nu:                                            ; preds = %bb.nt
  %i.ejf = add i16 %i.bfs, -9
  %i.ejg = load i16, ptr %i.h, align 16, !tbaa !20
  %.not.i.10.i757 = icmp eq i16 %i.ejg, 0
  br i1 %.not.i.10.i757, label %bb.nv, label %.lr.ph47.i.i746

bb.nv:                                            ; preds = %bb.nu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.eb, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %addmag0.exit767

.preheader.i.i741:                                ; preds = %bb.nl, %._crit_edge.i737
  %i.ejh = phi i16 [ %i.ein, %._crit_edge.i737 ], [ %i.eio, %bb.nl ]
  %indvars.iv72.in.i.lcssa.sroa.phi.i742 = phi ptr [ %indvars.iv72.in.i.lcssa.sroa.gep.i729, %._crit_edge.i737 ], [ %indvars.iv72.i.lcssa.sroa.gep.i719, %bb.nl ] ; 2 uses
  %.03341.i.lcssa.i743 = phi i16 [ %i.eim, %._crit_edge.i737 ], [ %i.bfs, %bb.nl ]
  %i.eji = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  store i16 %.03341.i.lcssa.i743, ptr %i.eji, align 2, !tbaa !26
  %i.ejj = sub i16 0, %i.bfp
  store i16 %i.ejj, ptr %i.eb, align 2, !tbaa !24
  %i.ejk = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ejl = getelementptr inbounds nuw i8, ptr %i.eb, i64 22
  store i16 %i.ejh, ptr %i.ejl, align 2, !tbaa !20
  %i.ejm = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.i742, i64 -4
  %i.ejn = load i16, ptr %i.ejm, align 2, !tbaa !20
  %i.ejo = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  store i16 %i.ejn, ptr %i.ejo, align 2, !tbaa !20
  %i.ejp = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.i742, i64 -20
  %i.ejq = load <8 x i16>, ptr %i.ejp, align 2, !tbaa !20
  store <8 x i16> %i.ejq, ptr %i.ejk, align 2, !tbaa !20
  br label %addmag0.exit767

.lr.ph47.i.i746:                                  ; preds = %bb.nu, %bb.nt, %bb.ns, %bb.nr, %bb.nq, %bb.np, %bb.no, %bb.nn, %bb.nm
  %.03341.i.lcssa.ph.i747 = phi i16 [ %i.ejf, %bb.nu ], [ %i.ejd, %bb.nt ], [ %i.ejb, %bb.ns ], [ %i.eiz, %bb.nr ], [ %i.eix, %bb.nq ], [ %i.eiv, %bb.np ], [ %i.eit, %bb.no ], [ %i.eir, %bb.nn ], [ %i.eip, %bb.nm ]
  %indvars.iv58.i.lcssa.ph.i748 = phi i64 [ 0, %bb.nu ], [ 2, %bb.nt ], [ 4, %bb.ns ], [ 6, %bb.nr ], [ 8, %bb.nq ], [ 10, %bb.np ], [ 12, %bb.no ], [ 14, %bb.nn ], [ 16, %bb.nm ] ; 3 uses
  %i.ejr = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  store i16 %.03341.i.lcssa.ph.i747, ptr %i.ejr, align 2, !tbaa !26
  %i.ejs = sub i16 0, %i.bfp
  store i16 %i.ejs, ptr %i.eb, align 2, !tbaa !24
  %i.ejt = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.eju = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph.i748
  %scevgep.i749 = getelementptr i8, ptr %i.eb, i64 %i.eju
  %i.ejv = add nuw nsw i64 %indvars.iv58.i.lcssa.ph.i748, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i749, ptr noundef nonnull align 16 dereferenceable(1) %i.h, i64 range(i64 0, 23) %i.ejv, i1 false), !tbaa !20
  %i.ejw = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph.i748
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.ejt, i8 0, i64 %i.ejw, i1 false), !tbaa !20
  br label %addmag0.exit767

addmag0.exit767:                                  ; preds = %bb.nv, %.preheader.i.i741, %.lr.ph47.i.i746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  br label %sub.exit36

sub.exit36:                                       ; preds = %submag0.exit900, %submag0.exit858, %addmag0.exit816, %addmag0.exit767
  br i1 %i.chf, label %abscmp.exit1090, label %bb.nw

bb.nw:                                            ; preds = %sub.exit36
  %i.ejx = icmp slt i16 %i.chd, %i.che
  br i1 %i.ejx, label %abscmp.exit1090, label %.preheader.i1087

.preheader.i1087:                                 ; preds = %bb.nw
  %i.ejy = load i16, ptr %i.cu, align 2, !tbaa !20 ; 2 uses
  %i.ejz = load i16, ptr %i.by, align 2, !tbaa !20 ; 2 uses
  %i.eka = icmp ugt i16 %i.ejy, %i.ejz
  br i1 %i.eka, label %abscmp.exit1090, label %bb.oo

bb.nx:                                            ; preds = %bb.oo
  %i.ekb = load i16, ptr %i.cv, align 4, !tbaa !20 ; 2 uses
  %i.ekc = load i16, ptr %i.bz, align 4, !tbaa !20 ; 2 uses
  %i.ekd = icmp ugt i16 %i.ekb, %i.ekc
  br i1 %i.ekd, label %abscmp.exit1090, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.eke = icmp ult i16 %i.ekb, %i.ekc
  br i1 %i.eke, label %abscmp.exit1090, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.ekf = load i16, ptr %i.cw, align 2, !tbaa !20 ; 2 uses
  %i.ekg = load i16, ptr %i.ca, align 2, !tbaa !20 ; 2 uses
  %i.ekh = icmp ugt i16 %i.ekf, %i.ekg
  br i1 %i.ekh, label %abscmp.exit1090, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.eki = icmp ult i16 %i.ekf, %i.ekg
  br i1 %i.eki, label %abscmp.exit1090, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %i.ekj = load i16, ptr %i.cx, align 16, !tbaa !20 ; 2 uses
  %i.ekk = load i16, ptr %i.cb, align 16, !tbaa !20 ; 2 uses
  %i.ekl = icmp ugt i16 %i.ekj, %i.ekk
  br i1 %i.ekl, label %abscmp.exit1090, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.ekm = icmp ult i16 %i.ekj, %i.ekk
  br i1 %i.ekm, label %abscmp.exit1090, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.ekn = load i16, ptr %i.cy, align 2, !tbaa !20 ; 2 uses
  %i.eko = load i16, ptr %i.cc, align 2, !tbaa !20 ; 2 uses
  %i.ekp = icmp ugt i16 %i.ekn, %i.eko
  br i1 %i.ekp, label %abscmp.exit1090, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.ekq = icmp ult i16 %i.ekn, %i.eko
  br i1 %i.ekq, label %abscmp.exit1090, label %bb.of

bb.of:                                            ; preds = %bb.oe
  %i.ekr = load i16, ptr %i.cz, align 4, !tbaa !20 ; 2 uses
  %i.eks = load i16, ptr %i.cd, align 4, !tbaa !20 ; 2 uses
  %i.ekt = icmp ugt i16 %i.ekr, %i.eks
  br i1 %i.ekt, label %abscmp.exit1090, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.eku = icmp ult i16 %i.ekr, %i.eks
  br i1 %i.eku, label %abscmp.exit1090, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.ekv = load i16, ptr %i.da, align 2, !tbaa !20 ; 2 uses
  %i.ekw = load i16, ptr %i.ce, align 2, !tbaa !20 ; 2 uses
  %i.ekx = icmp ugt i16 %i.ekv, %i.ekw
  br i1 %i.ekx, label %abscmp.exit1090, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.eky = icmp ult i16 %i.ekv, %i.ekw
  br i1 %i.eky, label %abscmp.exit1090, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  %i.ekz = load i16, ptr %i.db, align 8, !tbaa !20 ; 2 uses
  %i.ela = load i16, ptr %i.cf, align 8, !tbaa !20 ; 2 uses
  %i.elb = icmp ugt i16 %i.ekz, %i.ela
  br i1 %i.elb, label %abscmp.exit1090, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.elc = icmp ult i16 %i.ekz, %i.ela
  br i1 %i.elc, label %abscmp.exit1090, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.eld = load i16, ptr %i.dc, align 2, !tbaa !20 ; 2 uses
  %i.ele = load i16, ptr %i.cg, align 2, !tbaa !20 ; 2 uses
  %i.elf = icmp ugt i16 %i.eld, %i.ele
  br i1 %i.elf, label %abscmp.exit1090, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.elg = icmp ult i16 %i.eld, %i.ele
  br i1 %i.elg, label %abscmp.exit1090, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.elh = load i16, ptr %i.ct, align 4, !tbaa !20
  %i.eli = load i16, ptr %i.bx, align 4, !tbaa !20
  %i.elj = icmp ugt i16 %i.elh, %i.eli
  br label %abscmp.exit1090

bb.oo:                                            ; preds = %.preheader.i1087
  %i.elk = icmp ult i16 %i.ejy, %i.ejz
  br i1 %i.elk, label %abscmp.exit1090, label %bb.nx

abscmp.exit1090:                                  ; preds = %bb.on, %sub.exit36, %bb.nw, %.preheader.i1087, %bb.nx, %bb.ny, %bb.nz, %bb.oa, %bb.ob, %bb.oc, %bb.od, %bb.oe, %bb.of, %bb.og, %bb.oh, %bb.oi, %bb.oj, %bb.ok, %bb.ol, %bb.om, %bb.oo
  %.014.i1089 = phi i1 [ false, %bb.nw ], [ true, %sub.exit36 ], [ false, %bb.oo ], [ true, %.preheader.i1087 ], [ false, %bb.ok ], [ true, %bb.nx ], [ false, %bb.ny ], [ false, %bb.oi ], [ true, %bb.nz ], [ false, %bb.oa ], [ %i.elj, %bb.on ], [ true, %bb.ob ], [ false, %bb.oc ], [ true, %bb.oj ], [ true, %bb.od ], [ false, %bb.oe ], [ false, %bb.om ], [ true, %bb.of ], [ false, %bb.og ], [ true, %bb.ol ], [ true, %bb.oh ] ; 2 uses
  br i1 %i.chc, label %bb.op, label %bb.pq

bb.op:                                            ; preds = %abscmp.exit1090
  br i1 %.014.i1089, label %bb.oq, label %bb.pd

bb.oq:                                            ; preds = %bb.op
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ell = sext i16 %i.chd to i32                 ; 2 uses
  %i.elm = sext i16 %i.che to i32                 ; 3 uses
  %i.eln = sub nsw i32 %i.ell, %i.elm
  %i.elo = icmp slt i32 %i.eln, 10
  br i1 %i.elo, label %.lr.ph.i1077, label %.lr.ph38.i1054

.lr.ph.i1077:                                     ; preds = %bb.oq
  %i.elp = sext i16 %i.chd to i64
  %i.elq = sub nsw i32 0, %i.elm
  %i.elr = sext i32 %i.elq to i64
  %i.els = add nsw i64 %i.elr, %i.elp             ; 2 uses
  %reass.sub1170 = sub nsw i32 %i.elm, %i.ell     ; 3 uses
  %i.elt = add nsw i32 %reass.sub1170, 10         ; 2 uses
  %wide.trip.count.i1078 = zext i32 %i.elt to i64 ; 2 uses
  %xtraiter1818 = and i64 %wide.trip.count.i1078, 3 ; 3 uses
  %i.elu = add nsw i32 %reass.sub1170, 9
  %i.elv = icmp ult i32 %i.elu, 3
  br i1 %i.elv, label %.epil.preheader1817, label %.lr.ph.i1077.new

.lr.ph.i1077.new:                                 ; preds = %.lr.ph.i1077
  %unroll_iter1823 = and i64 %wide.trip.count.i1078, 4294967292
  br label %bb.os

.preheader.i1085.unr-lcssa:                       ; preds = %bb.os
  %lcmp.mod1820.not = icmp eq i64 %xtraiter1818, 0
  br i1 %lcmp.mod1820.not, label %.preheader.i1085, label %.epil.preheader1817

.epil.preheader1817:                              ; preds = %.preheader.i1085.unr-lcssa, %.lr.ph.i1077
  %indvars.iv45.i1079.epil.init = phi i64 [ 0, %.lr.ph.i1077 ], [ %indvars.iv.next46.i1082.3, %.preheader.i1085.unr-lcssa ]
  %indvars.iv.i1080.epil.init = phi i64 [ %i.els, %.lr.ph.i1077 ], [ %indvars.iv.next.i1083.3, %.preheader.i1085.unr-lcssa ]
  %.034.i1081.epil.init = phi i64 [ 0, %.lr.ph.i1077 ], [ %i.eoz, %.preheader.i1085.unr-lcssa ]
  %lcmp.mod1822 = icmp ne i64 %xtraiter1818, 0
  tail call void @llvm.assume(i1 %lcmp.mod1822)
  br label %bb.or

bb.or:                                            ; preds = %bb.or, %.epil.preheader1817
  %indvars.iv45.i1079.epil = phi i64 [ %indvars.iv45.i1079.epil.init, %.epil.preheader1817 ], [ %indvars.iv.next46.i1082.epil, %bb.or ] ; 3 uses
  %indvars.iv.i1080.epil = phi i64 [ %indvars.iv.i1080.epil.init, %.epil.preheader1817 ], [ %indvars.iv.next.i1083.epil, %bb.or ] ; 2 uses
  %.034.i1081.epil = phi i64 [ %.034.i1081.epil.init, %.epil.preheader1817 ], [ %i.emi, %bb.or ]
  %epil.iter1819 = phi i64 [ 0, %.epil.preheader1817 ], [ %epil.iter1819.next, %bb.or ]
  %i.elw = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv45.i1079.epil
  %i.elx = load i16, ptr %i.elw, align 2, !tbaa !20
  %i.ely = zext i16 %i.elx to i64
  %i.elz = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %indvars.iv.i1080.epil
  %i.ema = load i16, ptr %i.elz, align 2, !tbaa !20
  %i.emb = zext i16 %i.ema to i64
  %i.emc = sub nsw i64 %i.ely, %i.emb
  %i.emd = add nsw i64 %i.emc, %.034.i1081.epil   ; 2 uses
  %i.eme = trunc i64 %i.emd to i16
  %i.emf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv45.i1079.epil
  store i16 %i.eme, ptr %i.emf, align 2, !tbaa !20
  %i.emg = add nsw i64 %i.emd, 2147483648
  %i.emh = lshr i64 %i.emg, 16
  %i.emi = add nsw i64 %i.emh, -32768             ; 2 uses
  %indvars.iv.next46.i1082.epil = add nuw nsw i64 %indvars.iv45.i1079.epil, 1
  %indvars.iv.next.i1083.epil = add nsw i64 %indvars.iv.i1080.epil, 1
  %epil.iter1819.next = add i64 %epil.iter1819, 1 ; 2 uses
  %epil.iter1819.cmp.not = icmp eq i64 %epil.iter1819.next, %xtraiter1818
  br i1 %epil.iter1819.cmp.not, label %.preheader.i1085, label %bb.or, !llvm.loop !94

.preheader.i1085:                                 ; preds = %bb.or, %.preheader.i1085.unr-lcssa
  %.lcssa1524 = phi i64 [ %i.eoz, %.preheader.i1085.unr-lcssa ], [ %i.emi, %bb.or ]
  %i.emj = icmp slt i32 %reass.sub1170, 0
  br i1 %i.emj, label %.lr.ph38.i1054, label %._crit_edge.i1061

.lr.ph38.i1054:                                   ; preds = %bb.oq, %.preheader.i1085
  %.0.lcssa85.i1055 = phi i64 [ %.lcssa1524, %.preheader.i1085 ], [ 0, %bb.oq ] ; 2 uses
  %.025.lcssa84.i1056 = phi i32 [ %i.elt, %.preheader.i1085 ], [ 0, %bb.oq ] ; 2 uses
  %i.emk = zext i32 %.025.lcssa84.i1056 to i64    ; 3 uses
  %i.eml = sub nsw i64 2, %i.emk
  %xtraiter1827 = and i64 %i.eml, 3               ; 2 uses
  %lcmp.mod1828.not = icmp eq i64 %xtraiter1827, 0
  br i1 %lcmp.mod1828.not, label %.prol.loopexit1826, label %.prol.preheader1825

.prol.preheader1825:                              ; preds = %.lr.ph38.i1054, %.prol.preheader1825
  %indvars.iv50.i1057.prol = phi i64 [ %indvars.iv.next51.i1059.prol, %.prol.preheader1825 ], [ %i.emk, %.lr.ph38.i1054 ] ; 3 uses
  %.137.i1058.prol = phi i64 [ %i.emu, %.prol.preheader1825 ], [ %.0.lcssa85.i1055, %.lr.ph38.i1054 ]
  %prol.iter1829 = phi i64 [ %prol.iter1829.next, %.prol.preheader1825 ], [ 0, %.lr.ph38.i1054 ]
  %i.emm = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv50.i1057.prol
  %i.emn = load i16, ptr %i.emm, align 2, !tbaa !20
end_hunk_6
begin_hunk_7_@fft0:bb.a
  %i.ena = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %indvars.iv.i1080
  %i.enb = load i16, ptr %i.ena, align 2, !tbaa !20
  %i.enc = zext i16 %i.enb to i64
  %i.end = sub nsw i64 %i.emz, %i.enc
  %i.ene = add nsw i64 %i.end, %.034.i1081        ; 2 uses
  %i.enf = trunc i64 %i.ene to i16
  %i.eng = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv45.i1079
  store i16 %i.enf, ptr %i.eng, align 8, !tbaa !20
  %i.enh = add nsw i64 %i.ene, 2147483648
  %i.eni = lshr i64 %i.enh, 16
  %i.enj = add nsw i64 %i.eni, -32768
  %indvars.iv.next46.i1082 = or disjoint i64 %indvars.iv45.i1079, 1 ; 2 uses
  %i.enk = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next46.i1082
  %i.enl = load i16, ptr %i.enk, align 2, !tbaa !20
  %i.enm = zext i16 %i.enl to i64
  %i.enn = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv.i1080
  %i.eno = getelementptr i8, ptr %i.enn, i64 2
  %i.enp = load i16, ptr %i.eno, align 2, !tbaa !20
  %i.enq = zext i16 %i.enp to i64
  %i.enr = sub nsw i64 %i.enm, %i.enq
  %i.ens = add nsw i64 %i.enr, %i.enj             ; 2 uses
  %i.ent = trunc i64 %i.ens to i16
  %i.enu = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next46.i1082
  store i16 %i.ent, ptr %i.enu, align 2, !tbaa !20
  %i.env = add nsw i64 %i.ens, 2147483648
  %i.enw = lshr i64 %i.env, 16
  %i.enx = add nsw i64 %i.enw, -32768
  %indvars.iv.next46.i1082.1 = or disjoint i64 %indvars.iv45.i1079, 2 ; 2 uses
  %i.eny = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next46.i1082.1
  %i.enz = load i16, ptr %i.eny, align 8, !tbaa !20
  %i.eoa = zext i16 %i.enz to i64
  %i.eob = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv.i1080
  %i.eoc = getelementptr i8, ptr %i.eob, i64 4
  %i.eod = load i16, ptr %i.eoc, align 2, !tbaa !20
  %i.eoe = zext i16 %i.eod to i64
  %i.eof = sub nsw i64 %i.eoa, %i.eoe
  %i.eog = add nsw i64 %i.eof, %i.enx             ; 2 uses
  %i.eoh = trunc i64 %i.eog to i16
  %i.eoi = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next46.i1082.1
  store i16 %i.eoh, ptr %i.eoi, align 4, !tbaa !20
  %i.eoj = add nsw i64 %i.eog, 2147483648
  %i.eok = lshr i64 %i.eoj, 16
  %i.eol = add nsw i64 %i.eok, -32768
  %indvars.iv.next46.i1082.2 = or disjoint i64 %indvars.iv45.i1079, 3 ; 2 uses
  %i.eom = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next46.i1082.2
  %i.eon = load i16, ptr %i.eom, align 2, !tbaa !20
  %i.eoo = zext i16 %i.eon to i64
  %i.eop = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv.i1080
  %i.eoq = getelementptr i8, ptr %i.eop, i64 6
  %i.eor = load i16, ptr %i.eoq, align 2, !tbaa !20
  %i.eos = zext i16 %i.eor to i64
  %i.eot = sub nsw i64 %i.eoo, %i.eos
  %i.eou = add nsw i64 %i.eot, %i.eol             ; 2 uses
  %i.eov = trunc i64 %i.eou to i16
  %i.eow = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next46.i1082.2
  store i16 %i.eov, ptr %i.eow, align 2, !tbaa !20
  %i.eox = add nsw i64 %i.eou, 2147483648
  %i.eoy = lshr i64 %i.eox, 16
  %i.eoz = add nsw i64 %i.eoy, -32768             ; 3 uses
  %indvars.iv.next46.i1082.3 = add nuw nsw i64 %indvars.iv45.i1079, 4 ; 2 uses
  %indvars.iv.next.i1083.3 = add nsw i64 %indvars.iv.i1080, 4 ; 2 uses
  %niter1824.next.3 = add i64 %niter1824, 4       ; 2 uses
  %niter1824.ncmp.3 = icmp eq i64 %niter1824.next.3, %unroll_iter1823
  br i1 %niter1824.ncmp.3, label %.preheader.i1085.unr-lcssa, label %bb.os, !llvm.loop !3

.lr.ph38.i1054.new:                               ; preds = %.prol.loopexit1826, %.lr.ph38.i1054.new
  %indvars.iv50.i1057 = phi i64 [ %indvars.iv.next51.i1059.3, %.lr.ph38.i1054.new ], [ %indvars.iv50.i1057.unr, %.prol.loopexit1826 ] ; 6 uses
  %.137.i1058 = phi i64 [ %i.eqj, %.lr.ph38.i1054.new ], [ %.137.i1058.unr, %.prol.loopexit1826 ]
  %i.epa = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv50.i1057
  %i.epb = load i16, ptr %i.epa, align 2, !tbaa !20
  %i.epc = zext i16 %i.epb to i64
  %i.epd = add nsw i64 %.137.i1058, %i.epc        ; 2 uses
  %i.epe = trunc i64 %i.epd to i16
  %i.epf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv50.i1057
  store i16 %i.epe, ptr %i.epf, align 2, !tbaa !20
  %i.epg = add nsw i64 %i.epd, 2147483648
  %i.eph = lshr i64 %i.epg, 16
  %i.epi = add nsw i64 %i.eph, -32768
  %indvars.iv.next51.i1059 = add nuw nsw i64 %indvars.iv50.i1057, 1 ; 2 uses
  %i.epj = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next51.i1059
  %i.epk = load i16, ptr %i.epj, align 2, !tbaa !20
  %i.epl = zext i16 %i.epk to i64
  %i.epm = add nsw i64 %i.epi, %i.epl             ; 2 uses
  %i.epn = trunc i64 %i.epm to i16
  %i.epo = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next51.i1059
  store i16 %i.epn, ptr %i.epo, align 2, !tbaa !20
  %i.epp = add nsw i64 %i.epm, 2147483648
  %i.epq = lshr i64 %i.epp, 16
  %i.epr = add nsw i64 %i.epq, -32768
  %indvars.iv.next51.i1059.1 = add nuw nsw i64 %indvars.iv50.i1057, 2 ; 2 uses
  %i.eps = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next51.i1059.1
  %i.ept = load i16, ptr %i.eps, align 2, !tbaa !20
  %i.epu = zext i16 %i.ept to i64
  %i.epv = add nsw i64 %i.epr, %i.epu             ; 2 uses
  %i.epw = trunc i64 %i.epv to i16
  %i.epx = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next51.i1059.1
  store i16 %i.epw, ptr %i.epx, align 2, !tbaa !20
  %i.epy = add nsw i64 %i.epv, 2147483648
  %i.epz = lshr i64 %i.epy, 16
  %i.eqa = add nsw i64 %i.epz, -32768
  %indvars.iv.next51.i1059.2 = add nuw nsw i64 %indvars.iv50.i1057, 3 ; 2 uses
  %i.eqb = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next51.i1059.2
  %i.eqc = load i16, ptr %i.eqb, align 2, !tbaa !20
  %i.eqd = zext i16 %i.eqc to i64
  %i.eqe = add nsw i64 %i.eqa, %i.eqd             ; 2 uses
  %i.eqf = trunc i64 %i.eqe to i16
  %i.eqg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next51.i1059.2
  store i16 %i.eqf, ptr %i.eqg, align 2, !tbaa !20
  %i.eqh = add nsw i64 %i.eqe, 2147483648
  %i.eqi = lshr i64 %i.eqh, 16
  %i.eqj = add nsw i64 %i.eqi, -32768
  %indvars.iv.next51.i1059.3 = add nuw nsw i64 %indvars.iv50.i1057, 4 ; 2 uses
  %exitcond53.not.i1060.3 = icmp eq i64 %indvars.iv.next51.i1059.3, 10
  br i1 %exitcond53.not.i1060.3, label %._crit_edge.i1061, label %.lr.ph38.i1054.new, !llvm.loop !4

._crit_edge.i1061:                                ; preds = %.prol.loopexit1826, %.lr.ph38.i1054.new, %.preheader.i1085
  %i.eqk = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep.i1045, align 2, !tbaa !20
  %.not.i.not.not.i1062 = icmp eq i16 %i.eqk, 0
  br i1 %.not.i.not.not.i1062, label %bb.ot, label %.preheader.i.i1063

bb.ot:                                            ; preds = %._crit_edge.i1061
  %i.eql = add i16 %i.chd, -1
  %i.eqm = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep54.i1046, align 16, !tbaa !20
  %.not.i.1.i1064 = icmp eq i16 %i.eqm, 0
  br i1 %.not.i.1.i1064, label %bb.ou, label %.lr.ph47.i.i1065

bb.ou:                                            ; preds = %bb.ot
  %i.eqn = add i16 %i.chd, -2
  %i.eqo = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep55.i1047, align 2, !tbaa !20
  %.not.i.2.i1069 = icmp eq i16 %i.eqo, 0
  br i1 %.not.i.2.i1069, label %bb.ov, label %.lr.ph47.i.i1065

bb.ov:                                            ; preds = %bb.ou
  %i.eqp = add i16 %i.chd, -3
  %i.eqq = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep56.i1048, align 4, !tbaa !20
  %.not.i.3.i1070 = icmp eq i16 %i.eqq, 0
  br i1 %.not.i.3.i1070, label %bb.ow, label %.lr.ph47.i.i1065

bb.ow:                                            ; preds = %bb.ov
  %i.eqr = add i16 %i.chd, -4
  %i.eqs = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep57.i1049, align 2, !tbaa !20
  %.not.i.4.i1071 = icmp eq i16 %i.eqs, 0
  br i1 %.not.i.4.i1071, label %bb.ox, label %.lr.ph47.i.i1065

bb.ox:                                            ; preds = %bb.ow
  %i.eqt = add i16 %i.chd, -5
  %i.equ = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep58.i1050, align 8, !tbaa !20
  %.not.i.5.i1072 = icmp eq i16 %i.equ, 0
  br i1 %.not.i.5.i1072, label %bb.oy, label %.lr.ph47.i.i1065

bb.oy:                                            ; preds = %bb.ox
  %i.eqv = add i16 %i.chd, -6
  %i.eqw = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep59.i1051, align 2, !tbaa !20
  %.not.i.6.i1073 = icmp eq i16 %i.eqw, 0
  br i1 %.not.i.6.i1073, label %bb.oz, label %.lr.ph47.i.i1065

bb.oz:                                            ; preds = %bb.oy
  %i.eqx = add i16 %i.chd, -7
  %i.eqy = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60.i1052, align 4, !tbaa !20
  %.not.i.7.i1074 = icmp eq i16 %i.eqy, 0
  br i1 %.not.i.7.i1074, label %bb.pa, label %.lr.ph47.i.i1065

bb.pa:                                            ; preds = %bb.oz
  %i.eqz = add i16 %i.chd, -8
  %i.era = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61.i1053, align 2, !tbaa !20
  %.not.i.8.i1075 = icmp eq i16 %i.era, 0
  br i1 %.not.i.8.i1075, label %bb.pb, label %.lr.ph47.i.i1065

bb.pb:                                            ; preds = %bb.pa
  %i.erb = add i16 %i.chd, -9
  %i.erc = load i16, ptr %i.a, align 16, !tbaa !20
  %.not.i.9.i1076 = icmp eq i16 %i.erc, 0
  br i1 %.not.i.9.i1076, label %bb.pc, label %.lr.ph47.i.i1065

bb.pc:                                            ; preds = %bb.pb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ed, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %submag0.exit1086

.preheader.i.i1063:                               ; preds = %._crit_edge.i1061
  %i.erd = getelementptr inbounds nuw i8, ptr %i.eb, i64 26
  store i16 %i.chd, ptr %i.erd, align 2, !tbaa !26
  store i16 %i.cha, ptr %i.ed, align 2, !tbaa !24
  %i.ere = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.erf = getelementptr inbounds nuw i8, ptr %i.eb, i64 44
  %i.erg = load <2 x i16>, ptr %indvars.iv72.i.lcssa.sroa.gep54.i1046, align 16, !tbaa !20
  store <2 x i16> %i.erg, ptr %i.erf, align 2, !tbaa !20
  %i.erh = load <8 x i16>, ptr %i.a, align 16, !tbaa !20
  store <8 x i16> %i.erh, ptr %i.ere, align 2, !tbaa !20
  br label %submag0.exit1086

.lr.ph47.i.i1065:                                 ; preds = %bb.pb, %bb.pa, %bb.oz, %bb.oy, %bb.ox, %bb.ow, %bb.ov, %bb.ou, %bb.ot
  %.03341.i.lcssa.ph.i1066 = phi i16 [ %i.erb, %bb.pb ], [ %i.eqz, %bb.pa ], [ %i.eqx, %bb.oz ], [ %i.eqv, %bb.oy ], [ %i.eqt, %bb.ox ], [ %i.eqr, %bb.ow ], [ %i.eqp, %bb.ov ], [ %i.eqn, %bb.ou ], [ %i.eql, %bb.ot ]
  %indvars.iv58.i.lcssa.ph.i1067 = phi i64 [ 0, %bb.pb ], [ 2, %bb.pa ], [ 4, %bb.oz ], [ 6, %bb.oy ], [ 8, %bb.ox ], [ 10, %bb.ow ], [ 12, %bb.ov ], [ 14, %bb.ou ], [ 16, %bb.ot ] ; 3 uses
  %i.eri = getelementptr inbounds nuw i8, ptr %i.eb, i64 26
  store i16 %.03341.i.lcssa.ph.i1066, ptr %i.eri, align 2, !tbaa !26
  store i16 %i.cha, ptr %i.ed, align 2, !tbaa !24
  %i.erj = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.erk = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph.i1067
  %scevgep.i1068 = getelementptr i8, ptr %i.ed, i64 %i.erk
  %i.erl = add nuw nsw i64 %indvars.iv58.i.lcssa.ph.i1067, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i1068, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 range(i64 0, 21) %i.erl, i1 false), !tbaa !20
  %i.erm = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph.i1067
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.erj, i8 0, i64 %i.erm, i1 false), !tbaa !20
  br label %submag0.exit1086

submag0.exit1086:                                 ; preds = %bb.pc, %.preheader.i.i1063, %.lr.ph47.i.i1065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %sub.exit37

bb.pd:                                            ; preds = %bb.op
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.ern = sext i16 %i.che to i32                 ; 2 uses
  %i.ero = sext i16 %i.chd to i32                 ; 3 uses
  %i.erp = sub nsw i32 %i.ern, %i.ero
  %i.erq = icmp slt i32 %i.erp, 10
  br i1 %i.erq, label %.lr.ph.i1035, label %.lr.ph38.i1012

.lr.ph.i1035:                                     ; preds = %bb.pd
  %i.err = sext i16 %i.che to i64
  %i.ers = sub nsw i32 0, %i.ero
  %i.ert = sext i32 %i.ers to i64
  %i.eru = add nsw i64 %i.err, %i.ert             ; 2 uses
  %i.erv = add nsw i32 %i.ero, 10
  %i.erw = sub nsw i32 %i.erv, %i.ern             ; 4 uses
  %wide.trip.count.i1036 = zext i32 %i.erw to i64 ; 2 uses
  %xtraiter1805 = and i64 %wide.trip.count.i1036, 3 ; 3 uses
  %i.erx = add nsw i32 %i.erw, -1
  %i.ery = icmp ult i32 %i.erx, 3
  br i1 %i.ery, label %.epil.preheader1804, label %.lr.ph.i1035.new

.lr.ph.i1035.new:                                 ; preds = %.lr.ph.i1035
  %unroll_iter1810 = and i64 %wide.trip.count.i1036, 4294967292
  br label %bb.pf

.preheader.i1043.unr-lcssa:                       ; preds = %bb.pf
  %lcmp.mod1807.not = icmp eq i64 %xtraiter1805, 0
  br i1 %lcmp.mod1807.not, label %.preheader.i1043, label %.epil.preheader1804

.epil.preheader1804:                              ; preds = %.preheader.i1043.unr-lcssa, %.lr.ph.i1035
  %indvars.iv45.i1037.epil.init = phi i64 [ 0, %.lr.ph.i1035 ], [ %indvars.iv.next46.i1040.3, %.preheader.i1043.unr-lcssa ]
  %indvars.iv.i1038.epil.init = phi i64 [ %i.eru, %.lr.ph.i1035 ], [ %indvars.iv.next.i1041.3, %.preheader.i1043.unr-lcssa ]
  %.034.i1039.epil.init = phi i64 [ 0, %.lr.ph.i1035 ], [ %i.evc, %.preheader.i1043.unr-lcssa ]
  %lcmp.mod1809 = icmp ne i64 %xtraiter1805, 0
  tail call void @llvm.assume(i1 %lcmp.mod1809)
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pe, %.epil.preheader1804
  %indvars.iv45.i1037.epil = phi i64 [ %indvars.iv45.i1037.epil.init, %.epil.preheader1804 ], [ %indvars.iv.next46.i1040.epil, %bb.pe ] ; 3 uses
  %indvars.iv.i1038.epil = phi i64 [ %indvars.iv.i1038.epil.init, %.epil.preheader1804 ], [ %indvars.iv.next.i1041.epil, %bb.pe ] ; 2 uses
  %.034.i1039.epil = phi i64 [ %.034.i1039.epil.init, %.epil.preheader1804 ], [ %i.esl, %bb.pe ]
  %epil.iter1806 = phi i64 [ 0, %.epil.preheader1804 ], [ %epil.iter1806.next, %bb.pe ]
  %i.erz = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv45.i1037.epil
  %i.esa = load i16, ptr %i.erz, align 2, !tbaa !20
  %i.esb = zext i16 %i.esa to i64
  %i.esc = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %indvars.iv.i1038.epil
  %i.esd = load i16, ptr %i.esc, align 2, !tbaa !20
  %i.ese = zext i16 %i.esd to i64
  %i.esf = sub nsw i64 %i.esb, %i.ese
  %i.esg = add nsw i64 %i.esf, %.034.i1039.epil   ; 2 uses
  %i.esh = trunc i64 %i.esg to i16
  %i.esi = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv45.i1037.epil
  store i16 %i.esh, ptr %i.esi, align 2, !tbaa !20
  %i.esj = add nsw i64 %i.esg, 2147483648
  %i.esk = lshr i64 %i.esj, 16
  %i.esl = add nsw i64 %i.esk, -32768             ; 2 uses
  %indvars.iv.next46.i1040.epil = add nuw nsw i64 %indvars.iv45.i1037.epil, 1
  %indvars.iv.next.i1041.epil = add nsw i64 %indvars.iv.i1038.epil, 1
  %epil.iter1806.next = add i64 %epil.iter1806, 1 ; 2 uses
  %epil.iter1806.cmp.not = icmp eq i64 %epil.iter1806.next, %xtraiter1805
  br i1 %epil.iter1806.cmp.not, label %.preheader.i1043, label %bb.pe, !llvm.loop !96

.preheader.i1043:                                 ; preds = %bb.pe, %.preheader.i1043.unr-lcssa
  %.lcssa1523 = phi i64 [ %i.evc, %.preheader.i1043.unr-lcssa ], [ %i.esl, %bb.pe ]
  %i.esm = icmp samesign ult i32 %i.erw, 10
  br i1 %i.esm, label %.lr.ph38.i1012, label %._crit_edge.i1019

.lr.ph38.i1012:                                   ; preds = %bb.pd, %.preheader.i1043
  %.0.lcssa85.i1013 = phi i64 [ %.lcssa1523, %.preheader.i1043 ], [ 0, %bb.pd ] ; 2 uses
  %.025.lcssa84.i1014 = phi i32 [ %i.erw, %.preheader.i1043 ], [ 0, %bb.pd ] ; 2 uses
  %i.esn = zext nneg i32 %.025.lcssa84.i1014 to i64 ; 3 uses
  %i.eso = sub nsw i64 2, %i.esn
  %xtraiter1814 = and i64 %i.eso, 3               ; 2 uses
  %lcmp.mod1815.not = icmp eq i64 %xtraiter1814, 0
  br i1 %lcmp.mod1815.not, label %.prol.loopexit1813, label %.prol.preheader1812

.prol.preheader1812:                              ; preds = %.lr.ph38.i1012, %.prol.preheader1812
  %indvars.iv50.i1015.prol = phi i64 [ %indvars.iv.next51.i1017.prol, %.prol.preheader1812 ], [ %i.esn, %.lr.ph38.i1012 ] ; 3 uses
  %.137.i1016.prol = phi i64 [ %i.esx, %.prol.preheader1812 ], [ %.0.lcssa85.i1013, %.lr.ph38.i1012 ]
  %prol.iter1816 = phi i64 [ %prol.iter1816.next, %.prol.preheader1812 ], [ 0, %.lr.ph38.i1012 ]
  %i.esp = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv50.i1015.prol
  %i.esq = load i16, ptr %i.esp, align 2, !tbaa !20
  %i.esr = zext i16 %i.esq to i64
  %i.ess = add nsw i64 %.137.i1016.prol, %i.esr   ; 2 uses
  %i.est = trunc i64 %i.ess to i16
  %i.esu = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv50.i1015.prol
  store i16 %i.est, ptr %i.esu, align 2, !tbaa !20
  %i.esv = add nsw i64 %i.ess, 2147483648
  %i.esw = lshr i64 %i.esv, 16
  %i.esx = add nsw i64 %i.esw, -32768             ; 2 uses
  %indvars.iv.next51.i1017.prol = add nuw nsw i64 %indvars.iv50.i1015.prol, 1 ; 2 uses
  %prol.iter1816.next = add i64 %prol.iter1816, 1 ; 2 uses
  %prol.iter1816.cmp.not = icmp eq i64 %prol.iter1816.next, %xtraiter1814
  br i1 %prol.iter1816.cmp.not, label %.prol.loopexit1813, label %.prol.preheader1812, !llvm.loop !97

.prol.loopexit1813:                               ; preds = %.prol.preheader1812, %.lr.ph38.i1012
  %indvars.iv50.i1015.unr = phi i64 [ %i.esn, %.lr.ph38.i1012 ], [ %indvars.iv.next51.i1017.prol, %.prol.preheader1812 ]
  %.137.i1016.unr = phi i64 [ %.0.lcssa85.i1013, %.lr.ph38.i1012 ], [ %i.esx, %.prol.preheader1812 ]
  %i.esy = add nsw i32 %.025.lcssa84.i1014, -7
  %i.esz = icmp ult i32 %i.esy, 3
  br i1 %i.esz, label %._crit_edge.i1019, label %.lr.ph38.i1012.new

bb.pf:                                            ; preds = %bb.pf, %.lr.ph.i1035.new
  %indvars.iv45.i1037 = phi i64 [ 0, %.lr.ph.i1035.new ], [ %indvars.iv.next46.i1040.3, %bb.pf ] ; 6 uses
  %indvars.iv.i1038 = phi i64 [ %i.eru, %.lr.ph.i1035.new ], [ %indvars.iv.next.i1041.3, %bb.pf ] ; 5 uses
  %.034.i1039 = phi i64 [ 0, %.lr.ph.i1035.new ], [ %i.evc, %bb.pf ]
  %niter1811 = phi i64 [ 0, %.lr.ph.i1035.new ], [ %niter1811.next.3, %bb.pf ]
  %i.eta = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv45.i1037
  %i.etb = load i16, ptr %i.eta, align 4, !tbaa !20
  %i.etc = zext i16 %i.etb to i64
  %i.etd = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %indvars.iv.i1038
  %i.ete = load i16, ptr %i.etd, align 2, !tbaa !20
  %i.etf = zext i16 %i.ete to i64
  %i.etg = sub nsw i64 %i.etc, %i.etf
  %i.eth = add nsw i64 %i.etg, %.034.i1039        ; 2 uses
  %i.eti = trunc i64 %i.eth to i16
  %i.etj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv45.i1037
  store i16 %i.eti, ptr %i.etj, align 8, !tbaa !20
  %i.etk = add nsw i64 %i.eth, 2147483648
  %i.etl = lshr i64 %i.etk, 16
  %i.etm = add nsw i64 %i.etl, -32768
  %indvars.iv.next46.i1040 = or disjoint i64 %indvars.iv45.i1037, 1 ; 2 uses
  %i.etn = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next46.i1040
  %i.eto = load i16, ptr %i.etn, align 2, !tbaa !20
  %i.etp = zext i16 %i.eto to i64
  %i.etq = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.i1038
  %i.etr = getelementptr i8, ptr %i.etq, i64 2
  %i.ets = load i16, ptr %i.etr, align 2, !tbaa !20
  %i.ett = zext i16 %i.ets to i64
  %i.etu = sub nsw i64 %i.etp, %i.ett
  %i.etv = add nsw i64 %i.etu, %i.etm             ; 2 uses
  %i.etw = trunc i64 %i.etv to i16
  %i.etx = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next46.i1040
  store i16 %i.etw, ptr %i.etx, align 2, !tbaa !20
  %i.ety = add nsw i64 %i.etv, 2147483648
  %i.etz = lshr i64 %i.ety, 16
  %i.eua = add nsw i64 %i.etz, -32768
  %indvars.iv.next46.i1040.1 = or disjoint i64 %indvars.iv45.i1037, 2 ; 2 uses
  %i.eub = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next46.i1040.1
  %i.euc = load i16, ptr %i.eub, align 8, !tbaa !20
  %i.eud = zext i16 %i.euc to i64
  %i.eue = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.i1038
  %i.euf = getelementptr i8, ptr %i.eue, i64 4
  %i.eug = load i16, ptr %i.euf, align 2, !tbaa !20
  %i.euh = zext i16 %i.eug to i64
  %i.eui = sub nsw i64 %i.eud, %i.euh
  %i.euj = add nsw i64 %i.eui, %i.eua             ; 2 uses
  %i.euk = trunc i64 %i.euj to i16
  %i.eul = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next46.i1040.1
  store i16 %i.euk, ptr %i.eul, align 4, !tbaa !20
  %i.eum = add nsw i64 %i.euj, 2147483648
  %i.eun = lshr i64 %i.eum, 16
  %i.euo = add nsw i64 %i.eun, -32768
  %indvars.iv.next46.i1040.2 = or disjoint i64 %indvars.iv45.i1037, 3 ; 2 uses
  %i.eup = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next46.i1040.2
  %i.euq = load i16, ptr %i.eup, align 2, !tbaa !20
  %i.eur = zext i16 %i.euq to i64
  %i.eus = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.i1038
  %i.eut = getelementptr i8, ptr %i.eus, i64 6
  %i.euu = load i16, ptr %i.eut, align 2, !tbaa !20
  %i.euv = zext i16 %i.euu to i64
  %i.euw = sub nsw i64 %i.eur, %i.euv
  %i.eux = add nsw i64 %i.euw, %i.euo             ; 2 uses
  %i.euy = trunc i64 %i.eux to i16
  %i.euz = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next46.i1040.2
  store i16 %i.euy, ptr %i.euz, align 2, !tbaa !20
  %i.eva = add nsw i64 %i.eux, 2147483648
  %i.evb = lshr i64 %i.eva, 16
  %i.evc = add nsw i64 %i.evb, -32768             ; 3 uses
  %indvars.iv.next46.i1040.3 = add nuw nsw i64 %indvars.iv45.i1037, 4 ; 2 uses
  %indvars.iv.next.i1041.3 = add nsw i64 %indvars.iv.i1038, 4 ; 2 uses
  %niter1811.next.3 = add i64 %niter1811, 4       ; 2 uses
  %niter1811.ncmp.3 = icmp eq i64 %niter1811.next.3, %unroll_iter1810
  br i1 %niter1811.ncmp.3, label %.preheader.i1043.unr-lcssa, label %bb.pf, !llvm.loop !3

.lr.ph38.i1012.new:                               ; preds = %.prol.loopexit1813, %.lr.ph38.i1012.new
  %indvars.iv50.i1015 = phi i64 [ %indvars.iv.next51.i1017.3, %.lr.ph38.i1012.new ], [ %indvars.iv50.i1015.unr, %.prol.loopexit1813 ] ; 6 uses
  %.137.i1016 = phi i64 [ %i.ewm, %.lr.ph38.i1012.new ], [ %.137.i1016.unr, %.prol.loopexit1813 ]
  %i.evd = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv50.i1015
  %i.eve = load i16, ptr %i.evd, align 2, !tbaa !20
  %i.evf = zext i16 %i.eve to i64
  %i.evg = add nsw i64 %.137.i1016, %i.evf        ; 2 uses
  %i.evh = trunc i64 %i.evg to i16
  %i.evi = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv50.i1015
  store i16 %i.evh, ptr %i.evi, align 2, !tbaa !20
  %i.evj = add nsw i64 %i.evg, 2147483648
  %i.evk = lshr i64 %i.evj, 16
  %i.evl = add nsw i64 %i.evk, -32768
  %indvars.iv.next51.i1017 = add nuw nsw i64 %indvars.iv50.i1015, 1 ; 2 uses
  %i.evm = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next51.i1017
  %i.evn = load i16, ptr %i.evm, align 2, !tbaa !20
  %i.evo = zext i16 %i.evn to i64
  %i.evp = add nsw i64 %i.evl, %i.evo             ; 2 uses
  %i.evq = trunc i64 %i.evp to i16
  %i.evr = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next51.i1017
  store i16 %i.evq, ptr %i.evr, align 2, !tbaa !20
  %i.evs = add nsw i64 %i.evp, 2147483648
  %i.evt = lshr i64 %i.evs, 16
  %i.evu = add nsw i64 %i.evt, -32768
  %indvars.iv.next51.i1017.1 = add nuw nsw i64 %indvars.iv50.i1015, 2 ; 2 uses
  %i.evv = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next51.i1017.1
  %i.evw = load i16, ptr %i.evv, align 2, !tbaa !20
  %i.evx = zext i16 %i.evw to i64
  %i.evy = add nsw i64 %i.evu, %i.evx             ; 2 uses
  %i.evz = trunc i64 %i.evy to i16
  %i.ewa = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next51.i1017.1
  store i16 %i.evz, ptr %i.ewa, align 2, !tbaa !20
  %i.ewb = add nsw i64 %i.evy, 2147483648
  %i.ewc = lshr i64 %i.ewb, 16
  %i.ewd = add nsw i64 %i.ewc, -32768
  %indvars.iv.next51.i1017.2 = add nuw nsw i64 %indvars.iv50.i1015, 3 ; 2 uses
  %i.ewe = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next51.i1017.2
  %i.ewf = load i16, ptr %i.ewe, align 2, !tbaa !20
  %i.ewg = zext i16 %i.ewf to i64
  %i.ewh = add nsw i64 %i.ewd, %i.ewg             ; 2 uses
  %i.ewi = trunc i64 %i.ewh to i16
  %i.ewj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next51.i1017.2
  store i16 %i.ewi, ptr %i.ewj, align 2, !tbaa !20
  %i.ewk = add nsw i64 %i.ewh, 2147483648
  %i.ewl = lshr i64 %i.ewk, 16
  %i.ewm = add nsw i64 %i.ewl, -32768
  %indvars.iv.next51.i1017.3 = add nuw nsw i64 %indvars.iv50.i1015, 4 ; 2 uses
  %exitcond53.not.i1018.3 = icmp eq i64 %indvars.iv.next51.i1017.3, 10
  br i1 %exitcond53.not.i1018.3, label %._crit_edge.i1019, label %.lr.ph38.i1012.new, !llvm.loop !4

._crit_edge.i1019:                                ; preds = %.prol.loopexit1813, %.lr.ph38.i1012.new, %.preheader.i1043
  %i.ewn = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep.i1003, align 2, !tbaa !20 ; 2 uses
  %.not.i.not.not.i1020 = icmp eq i16 %i.ewn, 0
  br i1 %.not.i.not.not.i1020, label %bb.pg, label %.preheader.i.i1021

bb.pg:                                            ; preds = %._crit_edge.i1019
  %i.ewo = add i16 %i.che, -1
  %i.ewp = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep54.i1004, align 16, !tbaa !20
  %.not.i.1.i1022 = icmp eq i16 %i.ewp, 0
  br i1 %.not.i.1.i1022, label %bb.ph, label %.lr.ph47.i.i1023

bb.ph:                                            ; preds = %bb.pg
  %i.ewq = add i16 %i.che, -2
  %i.ewr = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep55.i1005, align 2, !tbaa !20
  %.not.i.2.i1027 = icmp eq i16 %i.ewr, 0
  br i1 %.not.i.2.i1027, label %bb.pi, label %.lr.ph47.i.i1023

bb.pi:                                            ; preds = %bb.ph
  %i.ews = add i16 %i.che, -3
  %i.ewt = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep56.i1006, align 4, !tbaa !20
  %.not.i.3.i1028 = icmp eq i16 %i.ewt, 0
  br i1 %.not.i.3.i1028, label %bb.pj, label %.lr.ph47.i.i1023

bb.pj:                                            ; preds = %bb.pi
  %i.ewu = add i16 %i.che, -4
  %i.ewv = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep57.i1007, align 2, !tbaa !20
  %.not.i.4.i1029 = icmp eq i16 %i.ewv, 0
  br i1 %.not.i.4.i1029, label %bb.pk, label %.lr.ph47.i.i1023

bb.pk:                                            ; preds = %bb.pj
  %i.eww = add i16 %i.che, -5
  %i.ewx = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep58.i1008, align 8, !tbaa !20
  %.not.i.5.i1030 = icmp eq i16 %i.ewx, 0
  br i1 %.not.i.5.i1030, label %bb.pl, label %.lr.ph47.i.i1023

bb.pl:                                            ; preds = %bb.pk
  %i.ewy = add i16 %i.che, -6
  %i.ewz = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep59.i1009, align 2, !tbaa !20
  %.not.i.6.i1031 = icmp eq i16 %i.ewz, 0
  br i1 %.not.i.6.i1031, label %bb.pm, label %.lr.ph47.i.i1023

bb.pm:                                            ; preds = %bb.pl
  %i.exa = add i16 %i.che, -7
  %i.exb = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60.i1010, align 4, !tbaa !20
  %.not.i.7.i1032 = icmp eq i16 %i.exb, 0
  br i1 %.not.i.7.i1032, label %bb.pn, label %.lr.ph47.i.i1023

bb.pn:                                            ; preds = %bb.pm
  %i.exc = add i16 %i.che, -8
  %i.exd = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61.i1011, align 2, !tbaa !20
  %.not.i.8.i1033 = icmp eq i16 %i.exd, 0
  br i1 %.not.i.8.i1033, label %bb.po, label %.lr.ph47.i.i1023

bb.po:                                            ; preds = %bb.pn
  %i.exe = add i16 %i.che, -9
  %i.exf = load i16, ptr %i.b, align 16, !tbaa !20
  %.not.i.9.i1034 = icmp eq i16 %i.exf, 0
  br i1 %.not.i.9.i1034, label %bb.pp, label %.lr.ph47.i.i1023

bb.pp:                                            ; preds = %bb.po
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ed, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %submag0.exit1044

.preheader.i.i1021:                               ; preds = %._crit_edge.i1019
  %i.exg = getelementptr inbounds nuw i8, ptr %i.eb, i64 26
  store i16 %i.che, ptr %i.exg, align 2, !tbaa !26
  %i.exh = sub i16 0, %i.cha
  store i16 %i.exh, ptr %i.ed, align 2, !tbaa !24
  %i.exi = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.exj = getelementptr inbounds nuw i8, ptr %i.eb, i64 46
  store i16 %i.ewn, ptr %i.exj, align 2, !tbaa !20
  %i.exk = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep54.i1004, align 16, !tbaa !20
  %i.exl = getelementptr inbounds nuw i8, ptr %i.eb, i64 44
  store i16 %i.exk, ptr %i.exl, align 2, !tbaa !20
  %i.exm = load <8 x i16>, ptr %i.b, align 16, !tbaa !20
  store <8 x i16> %i.exm, ptr %i.exi, align 2, !tbaa !20
  br label %submag0.exit1044

.lr.ph47.i.i1023:                                 ; preds = %bb.po, %bb.pn, %bb.pm, %bb.pl, %bb.pk, %bb.pj, %bb.pi, %bb.ph, %bb.pg
  %.03341.i.lcssa.ph.i1024 = phi i16 [ %i.exe, %bb.po ], [ %i.exc, %bb.pn ], [ %i.exa, %bb.pm ], [ %i.ewy, %bb.pl ], [ %i.eww, %bb.pk ], [ %i.ewu, %bb.pj ], [ %i.ews, %bb.pi ], [ %i.ewq, %bb.ph ], [ %i.ewo, %bb.pg ]
  %indvars.iv58.i.lcssa.ph.i1025 = phi i64 [ 0, %bb.po ], [ 2, %bb.pn ], [ 4, %bb.pm ], [ 6, %bb.pl ], [ 8, %bb.pk ], [ 10, %bb.pj ], [ 12, %bb.pi ], [ 14, %bb.ph ], [ 16, %bb.pg ] ; 3 uses
  %i.exn = getelementptr inbounds nuw i8, ptr %i.eb, i64 26
  store i16 %.03341.i.lcssa.ph.i1024, ptr %i.exn, align 2, !tbaa !26
  %i.exo = sub i16 0, %i.cha
  store i16 %i.exo, ptr %i.ed, align 2, !tbaa !24
  %i.exp = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.exq = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph.i1025
  %scevgep.i1026 = getelementptr i8, ptr %i.ed, i64 %i.exq
  %i.exr = add nuw nsw i64 %indvars.iv58.i.lcssa.ph.i1025, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i1026, ptr noundef nonnull align 16 dereferenceable(1) %i.b, i64 range(i64 0, 21) %i.exr, i1 false), !tbaa !20
  %i.exs = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph.i1025
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.exp, i8 0, i64 %i.exs, i1 false), !tbaa !20
  br label %submag0.exit1044

submag0.exit1044:                                 ; preds = %bb.pp, %.preheader.i.i1021, %.lr.ph47.i.i1023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %sub.exit37

bb.pq:                                            ; preds = %abscmp.exit1090
  br i1 %.014.i1089, label %bb.pr, label %bb.qf

bb.pr:                                            ; preds = %bb.pq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.ext = sext i16 %i.chd to i32                 ; 2 uses
  %i.exu = sext i16 %i.che to i32                 ; 3 uses
  %i.exv = sub nsw i32 %i.ext, %i.exu
  %i.exw = icmp slt i32 %i.exv, 10
  br i1 %i.exw, label %.lr.ph.i993, label %.lr.ph40.i965

.lr.ph.i993:                                      ; preds = %bb.pr
  %i.exx = sext i16 %i.chd to i64
  %i.exy = sub nsw i32 0, %i.exu
  %i.exz = sext i32 %i.exy to i64
  %i.eya = add nsw i64 %i.exz, %i.exx             ; 2 uses
  %reass.sub1169 = sub nsw i32 %i.exu, %i.ext     ; 3 uses
  %i.eyb = add nsw i32 %reass.sub1169, 10         ; 3 uses
  %wide.trip.count.i994 = zext i32 %i.eyb to i64  ; 2 uses
  %xtraiter1792 = and i64 %wide.trip.count.i994, 3 ; 3 uses
  %i.eyc = add nsw i32 %reass.sub1169, 9
  %i.eyd = icmp ult i32 %i.eyc, 3
  br i1 %i.eyd, label %.epil.preheader1791, label %.lr.ph.i993.new

.lr.ph.i993.new:                                  ; preds = %.lr.ph.i993
  %unroll_iter1797 = and i64 %wide.trip.count.i994, 4294967292
  br label %bb.pt

.preheader.i1001.unr-lcssa:                       ; preds = %bb.pt
  %lcmp.mod1794.not = icmp eq i64 %xtraiter1792, 0
  br i1 %lcmp.mod1794.not, label %.preheader.i1001, label %.epil.preheader1791

.epil.preheader1791:                              ; preds = %.preheader.i1001.unr-lcssa, %.lr.ph.i993
  %indvars.iv51.i995.epil.init = phi i64 [ 0, %.lr.ph.i993 ], [ %indvars.iv.next52.i998.3, %.preheader.i1001.unr-lcssa ]
  %indvars.iv.i996.epil.init = phi i64 [ %i.eya, %.lr.ph.i993 ], [ %indvars.iv.next.i999.3, %.preheader.i1001.unr-lcssa ]
  %.036.i997.epil.init = phi i64 [ 0, %.lr.ph.i993 ], [ %i.fav, %.preheader.i1001.unr-lcssa ]
  %lcmp.mod1796 = icmp ne i64 %xtraiter1792, 0
  tail call void @llvm.assume(i1 %lcmp.mod1796)
  br label %bb.ps

bb.ps:                                            ; preds = %bb.ps, %.epil.preheader1791
  %indvars.iv51.i995.epil = phi i64 [ %indvars.iv51.i995.epil.init, %.epil.preheader1791 ], [ %indvars.iv.next52.i998.epil, %bb.ps ] ; 3 uses
  %indvars.iv.i996.epil = phi i64 [ %indvars.iv.i996.epil.init, %.epil.preheader1791 ], [ %indvars.iv.next.i999.epil, %bb.ps ] ; 2 uses
  %.036.i997.epil = phi i64 [ %.036.i997.epil.init, %.epil.preheader1791 ], [ %i.eyo, %bb.ps ]
  %epil.iter1793 = phi i64 [ 0, %.epil.preheader1791 ], [ %epil.iter1793.next, %bb.ps ]
  %i.eye = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv51.i995.epil
  %i.eyf = load i16, ptr %i.eye, align 2, !tbaa !20
  %i.eyg = zext i16 %i.eyf to i64
  %i.eyh = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %indvars.iv.i996.epil
  %i.eyi = load i16, ptr %i.eyh, align 2, !tbaa !20
  %i.eyj = zext i16 %i.eyi to i64
  %i.eyk = add nuw nsw i64 %.036.i997.epil, %i.eyg
  %i.eyl = add nuw nsw i64 %i.eyk, %i.eyj         ; 2 uses
  %i.eym = trunc i64 %i.eyl to i16
  %i.eyn = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv51.i995.epil
  store i16 %i.eym, ptr %i.eyn, align 2, !tbaa !20
  %i.eyo = lshr i64 %i.eyl, 16                    ; 2 uses
  %indvars.iv.next52.i998.epil = add nuw nsw i64 %indvars.iv51.i995.epil, 1
  %indvars.iv.next.i999.epil = add nsw i64 %indvars.iv.i996.epil, 1
  %epil.iter1793.next = add i64 %epil.iter1793, 1 ; 2 uses
  %epil.iter1793.cmp.not = icmp eq i64 %epil.iter1793.next, %xtraiter1792
  br i1 %epil.iter1793.cmp.not, label %.preheader.i1001, label %bb.ps, !llvm.loop !98

.preheader.i1001:                                 ; preds = %bb.ps, %.preheader.i1001.unr-lcssa
  %.lcssa1521 = phi i64 [ %i.fav, %.preheader.i1001.unr-lcssa ], [ %i.eyo, %bb.ps ] ; 2 uses
  %i.eyp = icmp slt i32 %reass.sub1169, 0
  br i1 %i.eyp, label %.lr.ph40.i965, label %._crit_edge.i972

.lr.ph40.i965:                                    ; preds = %bb.pr, %.preheader.i1001
  %.0.lcssa94.i966 = phi i64 [ %.lcssa1521, %.preheader.i1001 ], [ 0, %bb.pr ] ; 2 uses
  %.027.lcssa93.i967 = phi i32 [ %i.eyb, %.preheader.i1001 ], [ 0, %bb.pr ] ; 2 uses
  %i.eyq = zext i32 %.027.lcssa93.i967 to i64     ; 3 uses
  %i.eyr = sub nsw i64 2, %i.eyq
  %xtraiter1801 = and i64 %i.eyr, 7               ; 2 uses
  %lcmp.mod1802.not = icmp eq i64 %xtraiter1801, 0
  br i1 %lcmp.mod1802.not, label %.prol.loopexit1800, label %.prol.preheader1799

.prol.preheader1799:                              ; preds = %.lr.ph40.i965, %.prol.preheader1799
  %indvars.iv56.i968.prol = phi i64 [ %indvars.iv.next57.i970.prol, %.prol.preheader1799 ], [ %i.eyq, %.lr.ph40.i965 ] ; 3 uses
  %.139.i969.prol = phi i64 [ %i.eyy, %.prol.preheader1799 ], [ %.0.lcssa94.i966, %.lr.ph40.i965 ]
  %prol.iter1803 = phi i64 [ %prol.iter1803.next, %.prol.preheader1799 ], [ 0, %.lr.ph40.i965 ]
  %i.eys = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv56.i968.prol
  %i.eyt = load i16, ptr %i.eys, align 2, !tbaa !20
  %i.eyu = zext i16 %i.eyt to i64
  %i.eyv = add nuw nsw i64 %.139.i969.prol, %i.eyu ; 2 uses
  %i.eyw = trunc i64 %i.eyv to i16
  %i.eyx = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv56.i968.prol
  store i16 %i.eyw, ptr %i.eyx, align 2, !tbaa !20
  %i.eyy = lshr i64 %i.eyv, 16                    ; 3 uses
  %indvars.iv.next57.i970.prol = add nuw nsw i64 %indvars.iv56.i968.prol, 1 ; 2 uses
  %prol.iter1803.next = add i64 %prol.iter1803, 1 ; 2 uses
  %prol.iter1803.cmp.not = icmp eq i64 %prol.iter1803.next, %xtraiter1801
  br i1 %prol.iter1803.cmp.not, label %.prol.loopexit1800, label %.prol.preheader1799, !llvm.loop !99

.prol.loopexit1800:                               ; preds = %.prol.preheader1799, %.lr.ph40.i965
  %.lcssa1522.unr = phi i64 [ poison, %.lr.ph40.i965 ], [ %i.eyy, %.prol.preheader1799 ]
  %indvars.iv56.i968.unr = phi i64 [ %i.eyq, %.lr.ph40.i965 ], [ %indvars.iv.next57.i970.prol, %.prol.preheader1799 ]
  %.139.i969.unr = phi i64 [ %.0.lcssa94.i966, %.lr.ph40.i965 ], [ %i.eyy, %.prol.preheader1799 ]
  %i.eyz = add nsw i32 %.027.lcssa93.i967, -3
  %i.eza = icmp ult i32 %i.eyz, 7
  br i1 %i.eza, label %._crit_edge.i972, label %.lr.ph40.i965.new

bb.pt:                                            ; preds = %bb.pt, %.lr.ph.i993.new
  %indvars.iv51.i995 = phi i64 [ 0, %.lr.ph.i993.new ], [ %indvars.iv.next52.i998.3, %bb.pt ] ; 6 uses
  %indvars.iv.i996 = phi i64 [ %i.eya, %.lr.ph.i993.new ], [ %indvars.iv.next.i999.3, %bb.pt ] ; 5 uses
  %.036.i997 = phi i64 [ 0, %.lr.ph.i993.new ], [ %i.fav, %bb.pt ]
  %niter1798 = phi i64 [ 0, %.lr.ph.i993.new ], [ %niter1798.next.3, %bb.pt ]
  %i.ezb = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv51.i995
  %i.ezc = load i16, ptr %i.ezb, align 4, !tbaa !20
  %i.ezd = zext i16 %i.ezc to i64
  %i.eze = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %indvars.iv.i996
  %i.ezf = load i16, ptr %i.eze, align 2, !tbaa !20
  %i.ezg = zext i16 %i.ezf to i64
  %i.ezh = add nuw nsw i64 %.036.i997, %i.ezd
  %i.ezi = add nuw nsw i64 %i.ezh, %i.ezg         ; 2 uses
  %i.ezj = trunc i64 %i.ezi to i16
  %i.ezk = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv51.i995
  store i16 %i.ezj, ptr %i.ezk, align 8, !tbaa !20
  %i.ezl = lshr i64 %i.ezi, 16
  %indvars.iv.next52.i998 = or disjoint i64 %indvars.iv51.i995, 1 ; 2 uses
  %i.ezm = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next52.i998
  %i.ezn = load i16, ptr %i.ezm, align 2, !tbaa !20
  %i.ezo = zext i16 %i.ezn to i64
  %i.ezp = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv.i996
  %i.ezq = getelementptr i8, ptr %i.ezp, i64 2
  %i.ezr = load i16, ptr %i.ezq, align 2, !tbaa !20
  %i.ezs = zext i16 %i.ezr to i64
  %i.ezt = add nuw nsw i64 %i.ezl, %i.ezo
  %i.ezu = add nuw nsw i64 %i.ezt, %i.ezs         ; 2 uses
  %i.ezv = trunc i64 %i.ezu to i16
  %i.ezw = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next52.i998
  store i16 %i.ezv, ptr %i.ezw, align 2, !tbaa !20
  %i.ezx = lshr i64 %i.ezu, 16
  %indvars.iv.next52.i998.1 = or disjoint i64 %indvars.iv51.i995, 2 ; 2 uses
  %i.ezy = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next52.i998.1
  %i.ezz = load i16, ptr %i.ezy, align 8, !tbaa !20
  %i.faa = zext i16 %i.ezz to i64
  %i.fab = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv.i996
  %i.fac = getelementptr i8, ptr %i.fab, i64 4
  %i.fad = load i16, ptr %i.fac, align 2, !tbaa !20
  %i.fae = zext i16 %i.fad to i64
  %i.faf = add nuw nsw i64 %i.ezx, %i.faa
  %i.fag = add nuw nsw i64 %i.faf, %i.fae         ; 2 uses
  %i.fah = trunc i64 %i.fag to i16
  %i.fai = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next52.i998.1
  store i16 %i.fah, ptr %i.fai, align 4, !tbaa !20
  %i.faj = lshr i64 %i.fag, 16
  %indvars.iv.next52.i998.2 = or disjoint i64 %indvars.iv51.i995, 3 ; 2 uses
  %i.fak = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next52.i998.2
  %i.fal = load i16, ptr %i.fak, align 2, !tbaa !20
  %i.fam = zext i16 %i.fal to i64
  %i.fan = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv.i996
  %i.fao = getelementptr i8, ptr %i.fan, i64 6
  %i.fap = load i16, ptr %i.fao, align 2, !tbaa !20
  %i.faq = zext i16 %i.fap to i64
  %i.far = add nuw nsw i64 %i.faj, %i.fam
  %i.fas = add nuw nsw i64 %i.far, %i.faq         ; 2 uses
  %i.fat = trunc i64 %i.fas to i16
  %i.fau = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next52.i998.2
  store i16 %i.fat, ptr %i.fau, align 2, !tbaa !20
  %i.fav = lshr i64 %i.fas, 16                    ; 3 uses
  %indvars.iv.next52.i998.3 = add nuw nsw i64 %indvars.iv51.i995, 4 ; 2 uses
  %indvars.iv.next.i999.3 = add nsw i64 %indvars.iv.i996, 4 ; 2 uses
  %niter1798.next.3 = add i64 %niter1798, 4       ; 2 uses
  %niter1798.ncmp.3 = icmp eq i64 %niter1798.next.3, %unroll_iter1797
  br i1 %niter1798.ncmp.3, label %.preheader.i1001.unr-lcssa, label %bb.pt, !llvm.loop !5

.lr.ph40.i965.new:                                ; preds = %.prol.loopexit1800, %.lr.ph40.i965.new
  %indvars.iv56.i968 = phi i64 [ %indvars.iv.next57.i970.7, %.lr.ph40.i965.new ], [ %indvars.iv56.i968.unr, %.prol.loopexit1800 ] ; 10 uses
  %.139.i969 = phi i64 [ %i.fcz, %.lr.ph40.i965.new ], [ %.139.i969.unr, %.prol.loopexit1800 ]
  %i.faw = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv56.i968
  %i.fax = load i16, ptr %i.faw, align 2, !tbaa !20
  %i.fay = zext i16 %i.fax to i64
  %i.faz = add nuw nsw i64 %.139.i969, %i.fay     ; 2 uses
  %i.fba = trunc i64 %i.faz to i16
  %i.fbb = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv56.i968
  store i16 %i.fba, ptr %i.fbb, align 2, !tbaa !20
  %i.fbc = lshr i64 %i.faz, 16
  %indvars.iv.next57.i970 = add nuw nsw i64 %indvars.iv56.i968, 1 ; 2 uses
  %i.fbd = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i970
  %i.fbe = load i16, ptr %i.fbd, align 2, !tbaa !20
  %i.fbf = zext i16 %i.fbe to i64
  %i.fbg = add nuw nsw i64 %i.fbc, %i.fbf         ; 2 uses
  %i.fbh = trunc i64 %i.fbg to i16
  %i.fbi = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next57.i970
  store i16 %i.fbh, ptr %i.fbi, align 2, !tbaa !20
  %i.fbj = lshr i64 %i.fbg, 16
  %indvars.iv.next57.i970.1 = add nuw nsw i64 %indvars.iv56.i968, 2 ; 2 uses
  %i.fbk = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i970.1
  %i.fbl = load i16, ptr %i.fbk, align 2, !tbaa !20
  %i.fbm = zext i16 %i.fbl to i64
  %i.fbn = add nuw nsw i64 %i.fbj, %i.fbm         ; 2 uses
  %i.fbo = trunc i64 %i.fbn to i16
  %i.fbp = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next57.i970.1
  store i16 %i.fbo, ptr %i.fbp, align 2, !tbaa !20
  %i.fbq = lshr i64 %i.fbn, 16
  %indvars.iv.next57.i970.2 = add nuw nsw i64 %indvars.iv56.i968, 3 ; 2 uses
  %i.fbr = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i970.2
  %i.fbs = load i16, ptr %i.fbr, align 2, !tbaa !20
  %i.fbt = zext i16 %i.fbs to i64
  %i.fbu = add nuw nsw i64 %i.fbq, %i.fbt         ; 2 uses
  %i.fbv = trunc i64 %i.fbu to i16
  %i.fbw = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next57.i970.2
  store i16 %i.fbv, ptr %i.fbw, align 2, !tbaa !20
  %i.fbx = lshr i64 %i.fbu, 16
  %indvars.iv.next57.i970.3 = add nuw nsw i64 %indvars.iv56.i968, 4 ; 2 uses
  %i.fby = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i970.3
  %i.fbz = load i16, ptr %i.fby, align 2, !tbaa !20
  %i.fca = zext i16 %i.fbz to i64
  %i.fcb = add nuw nsw i64 %i.fbx, %i.fca         ; 2 uses
  %i.fcc = trunc i64 %i.fcb to i16
  %i.fcd = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next57.i970.3
  store i16 %i.fcc, ptr %i.fcd, align 2, !tbaa !20
  %i.fce = lshr i64 %i.fcb, 16
  %indvars.iv.next57.i970.4 = add nuw nsw i64 %indvars.iv56.i968, 5 ; 2 uses
  %i.fcf = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i970.4
  %i.fcg = load i16, ptr %i.fcf, align 2, !tbaa !20
  %i.fch = zext i16 %i.fcg to i64
  %i.fci = add nuw nsw i64 %i.fce, %i.fch         ; 2 uses
  %i.fcj = trunc i64 %i.fci to i16
  %i.fck = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next57.i970.4
  store i16 %i.fcj, ptr %i.fck, align 2, !tbaa !20
  %i.fcl = lshr i64 %i.fci, 16
  %indvars.iv.next57.i970.5 = add nuw nsw i64 %indvars.iv56.i968, 6 ; 2 uses
  %i.fcm = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i970.5
  %i.fcn = load i16, ptr %i.fcm, align 2, !tbaa !20
  %i.fco = zext i16 %i.fcn to i64
  %i.fcp = add nuw nsw i64 %i.fcl, %i.fco         ; 2 uses
  %i.fcq = trunc i64 %i.fcp to i16
  %i.fcr = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next57.i970.5
  store i16 %i.fcq, ptr %i.fcr, align 2, !tbaa !20
  %i.fcs = lshr i64 %i.fcp, 16
  %indvars.iv.next57.i970.6 = add nuw nsw i64 %indvars.iv56.i968, 7 ; 2 uses
  %i.fct = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i970.6
  %i.fcu = load i16, ptr %i.fct, align 2, !tbaa !20
  %i.fcv = zext i16 %i.fcu to i64
  %i.fcw = add nuw nsw i64 %i.fcs, %i.fcv         ; 2 uses
  %i.fcx = trunc i64 %i.fcw to i16
  %i.fcy = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next57.i970.6
  store i16 %i.fcx, ptr %i.fcy, align 2, !tbaa !20
  %i.fcz = lshr i64 %i.fcw, 16                    ; 2 uses
  %indvars.iv.next57.i970.7 = add nuw nsw i64 %indvars.iv56.i968, 8 ; 2 uses
  %exitcond59.not.i971.7 = icmp eq i64 %indvars.iv.next57.i970.7, 10
  br i1 %exitcond59.not.i971.7, label %._crit_edge.i972, label %.lr.ph40.i965.new, !llvm.loop !6

._crit_edge.i972:                                 ; preds = %.prol.loopexit1800, %.lr.ph40.i965.new, %.preheader.i1001
  %.128.lcssa.i973 = phi i32 [ %i.eyb, %.preheader.i1001 ], [ 10, %.lr.ph40.i965.new ], [ 10, %.prol.loopexit1800 ]
  %.1.lcssa.i974 = phi i64 [ %.lcssa1521, %.preheader.i1001 ], [ %.lcssa1522.unr, %.prol.loopexit1800 ], [ %i.fcz, %.lr.ph40.i965.new ]
  %i.fda = trunc nuw nsw i64 %.1.lcssa.i974 to i16
  %i.fdb = zext nneg i32 %.128.lcssa.i973 to i64
  %i.fdc = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fdb
  store i16 %i.fda, ptr %i.fdc, align 2, !tbaa !20
  %i.fdd = add i16 %i.chd, 1
  %i.fde = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep.i954, align 4, !tbaa !20 ; 2 uses
  %.not.i.i975 = icmp eq i16 %i.fde, 0
  br i1 %.not.i.i975, label %bb.pu, label %.preheader.i.i976

bb.pu:                                            ; preds = %._crit_edge.i972
  %i.fdf = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60.i955, align 2, !tbaa !20 ; 2 uses
  %.not.i.1.i979 = icmp eq i16 %i.fdf, 0
  br i1 %.not.i.1.i979, label %bb.pv, label %.preheader.i.i976

bb.pv:                                            ; preds = %bb.pu
  %i.fdg = add i16 %i.chd, -1
  %i.fdh = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61.i956, align 16, !tbaa !20
  %.not.i.2.i980 = icmp eq i16 %i.fdh, 0
  br i1 %.not.i.2.i980, label %bb.pw, label %.lr.ph47.i.i981

bb.pw:                                            ; preds = %bb.pv
  %i.fdi = add i16 %i.chd, -2
  %i.fdj = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep62.i957, align 2, !tbaa !20
  %.not.i.3.i985 = icmp eq i16 %i.fdj, 0
  br i1 %.not.i.3.i985, label %bb.px, label %.lr.ph47.i.i981

bb.px:                                            ; preds = %bb.pw
  %i.fdk = add i16 %i.chd, -3
  %i.fdl = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep63.i958, align 4, !tbaa !20
  %.not.i.4.i986 = icmp eq i16 %i.fdl, 0
  br i1 %.not.i.4.i986, label %bb.py, label %.lr.ph47.i.i981

bb.py:                                            ; preds = %bb.px
  %i.fdm = add i16 %i.chd, -4
  %i.fdn = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep64.i959, align 2, !tbaa !20
  %.not.i.5.i987 = icmp eq i16 %i.fdn, 0
  br i1 %.not.i.5.i987, label %bb.pz, label %.lr.ph47.i.i981

bb.pz:                                            ; preds = %bb.py
  %i.fdo = add i16 %i.chd, -5
  %i.fdp = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep65.i960, align 8, !tbaa !20
  %.not.i.6.i988 = icmp eq i16 %i.fdp, 0
  br i1 %.not.i.6.i988, label %bb.qa, label %.lr.ph47.i.i981

bb.qa:                                            ; preds = %bb.pz
  %i.fdq = add i16 %i.chd, -6
  %i.fdr = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep66.i961, align 2, !tbaa !20
  %.not.i.7.i989 = icmp eq i16 %i.fdr, 0
  br i1 %.not.i.7.i989, label %bb.qb, label %.lr.ph47.i.i981

bb.qb:                                            ; preds = %bb.qa
  %i.fds = add i16 %i.chd, -7
  %i.fdt = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep67.i962, align 4, !tbaa !20
  %.not.i.8.i990 = icmp eq i16 %i.fdt, 0
  br i1 %.not.i.8.i990, label %bb.qc, label %.lr.ph47.i.i981

bb.qc:                                            ; preds = %bb.qb
  %i.fdu = add i16 %i.chd, -8
  %i.fdv = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep68.i963, align 2, !tbaa !20
  %.not.i.9.i991 = icmp eq i16 %i.fdv, 0
  br i1 %.not.i.9.i991, label %bb.qd, label %.lr.ph47.i.i981

bb.qd:                                            ; preds = %bb.qc
  %i.fdw = add i16 %i.chd, -9
  %i.fdx = load i16, ptr %i.c, align 16, !tbaa !20
  %.not.i.10.i992 = icmp eq i16 %i.fdx, 0
  br i1 %.not.i.10.i992, label %bb.qe, label %.lr.ph47.i.i981

bb.qe:                                            ; preds = %bb.qd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ed, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %addmag0.exit1002

.preheader.i.i976:                                ; preds = %bb.pu, %._crit_edge.i972
  %i.fdy = phi i16 [ %i.fde, %._crit_edge.i972 ], [ %i.fdf, %bb.pu ]
  %indvars.iv72.in.i.lcssa.sroa.phi.i977 = phi ptr [ %indvars.iv72.in.i.lcssa.sroa.gep.i964, %._crit_edge.i972 ], [ %indvars.iv72.i.lcssa.sroa.gep.i954, %bb.pu ] ; 2 uses
  %.03341.i.lcssa.i978 = phi i16 [ %i.fdd, %._crit_edge.i972 ], [ %i.chd, %bb.pu ]
  %i.fdz = getelementptr inbounds nuw i8, ptr %i.eb, i64 26
  store i16 %.03341.i.lcssa.i978, ptr %i.fdz, align 2, !tbaa !26
  store i16 %i.cha, ptr %i.ed, align 2, !tbaa !24
  %i.fea = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.feb = getelementptr inbounds nuw i8, ptr %i.eb, i64 46
  store i16 %i.fdy, ptr %i.feb, align 2, !tbaa !20
  %i.fec = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.i977, i64 -4
  %i.fed = load i16, ptr %i.fec, align 2, !tbaa !20
  %i.fee = getelementptr inbounds nuw i8, ptr %i.eb, i64 44
  store i16 %i.fed, ptr %i.fee, align 2, !tbaa !20
  %i.fef = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.i977, i64 -20
  %i.feg = load <8 x i16>, ptr %i.fef, align 2, !tbaa !20
  store <8 x i16> %i.feg, ptr %i.fea, align 2, !tbaa !20
  br label %addmag0.exit1002

.lr.ph47.i.i981:                                  ; preds = %bb.qd, %bb.qc, %bb.qb, %bb.qa, %bb.pz, %bb.py, %bb.px, %bb.pw, %bb.pv
  %.03341.i.lcssa.ph.i982 = phi i16 [ %i.fdw, %bb.qd ], [ %i.fdu, %bb.qc ], [ %i.fds, %bb.qb ], [ %i.fdq, %bb.qa ], [ %i.fdo, %bb.pz ], [ %i.fdm, %bb.py ], [ %i.fdk, %bb.px ], [ %i.fdi, %bb.pw ], [ %i.fdg, %bb.pv ]
  %indvars.iv58.i.lcssa.ph.i983 = phi i64 [ 0, %bb.qd ], [ 2, %bb.qc ], [ 4, %bb.qb ], [ 6, %bb.qa ], [ 8, %bb.pz ], [ 10, %bb.py ], [ 12, %bb.px ], [ 14, %bb.pw ], [ 16, %bb.pv ] ; 3 uses
  %i.feh = getelementptr inbounds nuw i8, ptr %i.eb, i64 26
  store i16 %.03341.i.lcssa.ph.i982, ptr %i.feh, align 2, !tbaa !26
  store i16 %i.cha, ptr %i.ed, align 2, !tbaa !24
  %i.fei = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.fej = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph.i983
  %scevgep.i984 = getelementptr i8, ptr %i.ed, i64 %i.fej
  %i.fek = add nuw nsw i64 %indvars.iv58.i.lcssa.ph.i983, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i984, ptr noundef nonnull align 16 dereferenceable(1) %i.c, i64 range(i64 0, 23) %i.fek, i1 false), !tbaa !20
  %i.fel = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph.i983
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.fei, i8 0, i64 %i.fel, i1 false), !tbaa !20
  br label %addmag0.exit1002

addmag0.exit1002:                                 ; preds = %bb.qe, %.preheader.i.i976, %.lr.ph47.i.i981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %sub.exit37

bb.qf:                                            ; preds = %bb.pq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.fem = sext i16 %i.che to i32                 ; 2 uses
  %i.fen = sext i16 %i.chd to i32                 ; 3 uses
  %i.feo = sub nsw i32 %i.fem, %i.fen
  %i.fep = icmp slt i32 %i.feo, 10
  br i1 %i.fep, label %.lr.ph.i944, label %.lr.ph40.i916

.lr.ph.i944:                                      ; preds = %bb.qf
  %i.feq = sext i16 %i.che to i64
  %i.fer = sub nsw i32 0, %i.fen
  %i.fes = sext i32 %i.fer to i64
  %i.fet = add nsw i64 %i.feq, %i.fes             ; 2 uses
  %i.feu = add nsw i32 %i.fen, 10
  %i.fev = sub nsw i32 %i.feu, %i.fem             ; 5 uses
  %wide.trip.count.i945 = zext i32 %i.fev to i64  ; 2 uses
  %xtraiter1779 = and i64 %wide.trip.count.i945, 3 ; 3 uses
  %i.few = add nsw i32 %i.fev, -1
  %i.fex = icmp ult i32 %i.few, 3
  br i1 %i.fex, label %.epil.preheader1778, label %.lr.ph.i944.new

.lr.ph.i944.new:                                  ; preds = %.lr.ph.i944
  %unroll_iter1784 = and i64 %wide.trip.count.i945, 4294967292
  br label %bb.qh

.preheader.i952.unr-lcssa:                        ; preds = %bb.qh
  %lcmp.mod1781.not = icmp eq i64 %xtraiter1779, 0
  br i1 %lcmp.mod1781.not, label %.preheader.i952, label %.epil.preheader1778

.epil.preheader1778:                              ; preds = %.preheader.i952.unr-lcssa, %.lr.ph.i944
  %indvars.iv51.i946.epil.init = phi i64 [ 0, %.lr.ph.i944 ], [ %indvars.iv.next52.i949.3, %.preheader.i952.unr-lcssa ]
  %indvars.iv.i947.epil.init = phi i64 [ %i.fet, %.lr.ph.i944 ], [ %indvars.iv.next.i950.3, %.preheader.i952.unr-lcssa ]
  %.036.i948.epil.init = phi i64 [ 0, %.lr.ph.i944 ], [ %i.fhp, %.preheader.i952.unr-lcssa ]
  %lcmp.mod1783 = icmp ne i64 %xtraiter1779, 0
  tail call void @llvm.assume(i1 %lcmp.mod1783)
  br label %bb.qg

bb.qg:                                            ; preds = %bb.qg, %.epil.preheader1778
  %indvars.iv51.i946.epil = phi i64 [ %indvars.iv51.i946.epil.init, %.epil.preheader1778 ], [ %indvars.iv.next52.i949.epil, %bb.qg ] ; 3 uses
  %indvars.iv.i947.epil = phi i64 [ %indvars.iv.i947.epil.init, %.epil.preheader1778 ], [ %indvars.iv.next.i950.epil, %bb.qg ] ; 2 uses
  %.036.i948.epil = phi i64 [ %.036.i948.epil.init, %.epil.preheader1778 ], [ %i.ffi, %bb.qg ]
  %epil.iter1780 = phi i64 [ 0, %.epil.preheader1778 ], [ %epil.iter1780.next, %bb.qg ]
  %i.fey = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv51.i946.epil
  %i.fez = load i16, ptr %i.fey, align 2, !tbaa !20
  %i.ffa = zext i16 %i.fez to i64
  %i.ffb = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %indvars.iv.i947.epil
  %i.ffc = load i16, ptr %i.ffb, align 2, !tbaa !20
  %i.ffd = zext i16 %i.ffc to i64
  %i.ffe = add nuw nsw i64 %.036.i948.epil, %i.ffa
  %i.fff = add nuw nsw i64 %i.ffe, %i.ffd         ; 2 uses
  %i.ffg = trunc i64 %i.fff to i16
  %i.ffh = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv51.i946.epil
  store i16 %i.ffg, ptr %i.ffh, align 2, !tbaa !20
  %i.ffi = lshr i64 %i.fff, 16                    ; 2 uses
  %indvars.iv.next52.i949.epil = add nuw nsw i64 %indvars.iv51.i946.epil, 1
  %indvars.iv.next.i950.epil = add nsw i64 %indvars.iv.i947.epil, 1
  %epil.iter1780.next = add i64 %epil.iter1780, 1 ; 2 uses
  %epil.iter1780.cmp.not = icmp eq i64 %epil.iter1780.next, %xtraiter1779
  br i1 %epil.iter1780.cmp.not, label %.preheader.i952, label %bb.qg, !llvm.loop !100

.preheader.i952:                                  ; preds = %bb.qg, %.preheader.i952.unr-lcssa
  %.lcssa1519 = phi i64 [ %i.fhp, %.preheader.i952.unr-lcssa ], [ %i.ffi, %bb.qg ] ; 2 uses
  %i.ffj = icmp samesign ult i32 %i.fev, 10
  br i1 %i.ffj, label %.lr.ph40.i916, label %._crit_edge.i923

.lr.ph40.i916:                                    ; preds = %bb.qf, %.preheader.i952
  %.0.lcssa94.i917 = phi i64 [ %.lcssa1519, %.preheader.i952 ], [ 0, %bb.qf ] ; 2 uses
  %.027.lcssa93.i918 = phi i32 [ %i.fev, %.preheader.i952 ], [ 0, %bb.qf ] ; 2 uses
  %i.ffk = zext nneg i32 %.027.lcssa93.i918 to i64 ; 3 uses
  %i.ffl = sub nsw i64 2, %i.ffk
  %xtraiter1788 = and i64 %i.ffl, 7               ; 2 uses
  %lcmp.mod1789.not = icmp eq i64 %xtraiter1788, 0
  br i1 %lcmp.mod1789.not, label %.prol.loopexit1787, label %.prol.preheader1786

.prol.preheader1786:                              ; preds = %.lr.ph40.i916, %.prol.preheader1786
  %indvars.iv56.i919.prol = phi i64 [ %indvars.iv.next57.i921.prol, %.prol.preheader1786 ], [ %i.ffk, %.lr.ph40.i916 ] ; 3 uses
  %.139.i920.prol = phi i64 [ %i.ffs, %.prol.preheader1786 ], [ %.0.lcssa94.i917, %.lr.ph40.i916 ]
  %prol.iter1790 = phi i64 [ %prol.iter1790.next, %.prol.preheader1786 ], [ 0, %.lr.ph40.i916 ]
  %i.ffm = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv56.i919.prol
  %i.ffn = load i16, ptr %i.ffm, align 2, !tbaa !20
  %i.ffo = zext i16 %i.ffn to i64
  %i.ffp = add nuw nsw i64 %.139.i920.prol, %i.ffo ; 2 uses
  %i.ffq = trunc i64 %i.ffp to i16
  %i.ffr = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv56.i919.prol
  store i16 %i.ffq, ptr %i.ffr, align 2, !tbaa !20
  %i.ffs = lshr i64 %i.ffp, 16                    ; 3 uses
  %indvars.iv.next57.i921.prol = add nuw nsw i64 %indvars.iv56.i919.prol, 1 ; 2 uses
  %prol.iter1790.next = add i64 %prol.iter1790, 1 ; 2 uses
  %prol.iter1790.cmp.not = icmp eq i64 %prol.iter1790.next, %xtraiter1788
  br i1 %prol.iter1790.cmp.not, label %.prol.loopexit1787, label %.prol.preheader1786, !llvm.loop !101

.prol.loopexit1787:                               ; preds = %.prol.preheader1786, %.lr.ph40.i916
  %.lcssa1520.unr = phi i64 [ poison, %.lr.ph40.i916 ], [ %i.ffs, %.prol.preheader1786 ]
  %indvars.iv56.i919.unr = phi i64 [ %i.ffk, %.lr.ph40.i916 ], [ %indvars.iv.next57.i921.prol, %.prol.preheader1786 ]
  %.139.i920.unr = phi i64 [ %.0.lcssa94.i917, %.lr.ph40.i916 ], [ %i.ffs, %.prol.preheader1786 ]
  %i.fft = add nsw i32 %.027.lcssa93.i918, -3
  %i.ffu = icmp ult i32 %i.fft, 7
  br i1 %i.ffu, label %._crit_edge.i923, label %.lr.ph40.i916.new

bb.qh:                                            ; preds = %bb.qh, %.lr.ph.i944.new
  %indvars.iv51.i946 = phi i64 [ 0, %.lr.ph.i944.new ], [ %indvars.iv.next52.i949.3, %bb.qh ] ; 6 uses
  %indvars.iv.i947 = phi i64 [ %i.fet, %.lr.ph.i944.new ], [ %indvars.iv.next.i950.3, %bb.qh ] ; 5 uses
  %.036.i948 = phi i64 [ 0, %.lr.ph.i944.new ], [ %i.fhp, %bb.qh ]
  %niter1785 = phi i64 [ 0, %.lr.ph.i944.new ], [ %niter1785.next.3, %bb.qh ]
  %i.ffv = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv51.i946
  %i.ffw = load i16, ptr %i.ffv, align 4, !tbaa !20
  %i.ffx = zext i16 %i.ffw to i64
  %i.ffy = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %indvars.iv.i947
  %i.ffz = load i16, ptr %i.ffy, align 2, !tbaa !20
  %i.fga = zext i16 %i.ffz to i64
  %i.fgb = add nuw nsw i64 %.036.i948, %i.ffx
  %i.fgc = add nuw nsw i64 %i.fgb, %i.fga         ; 2 uses
  %i.fgd = trunc i64 %i.fgc to i16
  %i.fge = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv51.i946
  store i16 %i.fgd, ptr %i.fge, align 8, !tbaa !20
  %i.fgf = lshr i64 %i.fgc, 16
  %indvars.iv.next52.i949 = or disjoint i64 %indvars.iv51.i946, 1 ; 2 uses
  %i.fgg = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next52.i949
  %i.fgh = load i16, ptr %i.fgg, align 2, !tbaa !20
  %i.fgi = zext i16 %i.fgh to i64
  %i.fgj = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.i947
  %i.fgk = getelementptr i8, ptr %i.fgj, i64 2
  %i.fgl = load i16, ptr %i.fgk, align 2, !tbaa !20
  %i.fgm = zext i16 %i.fgl to i64
  %i.fgn = add nuw nsw i64 %i.fgf, %i.fgi
  %i.fgo = add nuw nsw i64 %i.fgn, %i.fgm         ; 2 uses
  %i.fgp = trunc i64 %i.fgo to i16
  %i.fgq = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next52.i949
  store i16 %i.fgp, ptr %i.fgq, align 2, !tbaa !20
  %i.fgr = lshr i64 %i.fgo, 16
  %indvars.iv.next52.i949.1 = or disjoint i64 %indvars.iv51.i946, 2 ; 2 uses
  %i.fgs = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next52.i949.1
  %i.fgt = load i16, ptr %i.fgs, align 8, !tbaa !20
  %i.fgu = zext i16 %i.fgt to i64
  %i.fgv = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.i947
  %i.fgw = getelementptr i8, ptr %i.fgv, i64 4
  %i.fgx = load i16, ptr %i.fgw, align 2, !tbaa !20
  %i.fgy = zext i16 %i.fgx to i64
  %i.fgz = add nuw nsw i64 %i.fgr, %i.fgu
  %i.fha = add nuw nsw i64 %i.fgz, %i.fgy         ; 2 uses
  %i.fhb = trunc i64 %i.fha to i16
  %i.fhc = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next52.i949.1
  store i16 %i.fhb, ptr %i.fhc, align 4, !tbaa !20
  %i.fhd = lshr i64 %i.fha, 16
  %indvars.iv.next52.i949.2 = or disjoint i64 %indvars.iv51.i946, 3 ; 2 uses
  %i.fhe = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next52.i949.2
  %i.fhf = load i16, ptr %i.fhe, align 2, !tbaa !20
  %i.fhg = zext i16 %i.fhf to i64
  %i.fhh = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.i947
  %i.fhi = getelementptr i8, ptr %i.fhh, i64 6
  %i.fhj = load i16, ptr %i.fhi, align 2, !tbaa !20
  %i.fhk = zext i16 %i.fhj to i64
  %i.fhl = add nuw nsw i64 %i.fhd, %i.fhg
  %i.fhm = add nuw nsw i64 %i.fhl, %i.fhk         ; 2 uses
  %i.fhn = trunc i64 %i.fhm to i16
  %i.fho = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next52.i949.2
  store i16 %i.fhn, ptr %i.fho, align 2, !tbaa !20
  %i.fhp = lshr i64 %i.fhm, 16                    ; 3 uses
  %indvars.iv.next52.i949.3 = add nuw nsw i64 %indvars.iv51.i946, 4 ; 2 uses
  %indvars.iv.next.i950.3 = add nsw i64 %indvars.iv.i947, 4 ; 2 uses
  %niter1785.next.3 = add i64 %niter1785, 4       ; 2 uses
  %niter1785.ncmp.3 = icmp eq i64 %niter1785.next.3, %unroll_iter1784
  br i1 %niter1785.ncmp.3, label %.preheader.i952.unr-lcssa, label %bb.qh, !llvm.loop !5

.lr.ph40.i916.new:                                ; preds = %.prol.loopexit1787, %.lr.ph40.i916.new
  %indvars.iv56.i919 = phi i64 [ %indvars.iv.next57.i921.7, %.lr.ph40.i916.new ], [ %indvars.iv56.i919.unr, %.prol.loopexit1787 ] ; 10 uses
  %.139.i920 = phi i64 [ %i.fjt, %.lr.ph40.i916.new ], [ %.139.i920.unr, %.prol.loopexit1787 ]
  %i.fhq = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv56.i919
  %i.fhr = load i16, ptr %i.fhq, align 2, !tbaa !20
  %i.fhs = zext i16 %i.fhr to i64
  %i.fht = add nuw nsw i64 %.139.i920, %i.fhs     ; 2 uses
  %i.fhu = trunc i64 %i.fht to i16
  %i.fhv = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv56.i919
  store i16 %i.fhu, ptr %i.fhv, align 2, !tbaa !20
  %i.fhw = lshr i64 %i.fht, 16
  %indvars.iv.next57.i921 = add nuw nsw i64 %indvars.iv56.i919, 1 ; 2 uses
  %i.fhx = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i921
  %i.fhy = load i16, ptr %i.fhx, align 2, !tbaa !20
  %i.fhz = zext i16 %i.fhy to i64
  %i.fia = add nuw nsw i64 %i.fhw, %i.fhz         ; 2 uses
  %i.fib = trunc i64 %i.fia to i16
  %i.fic = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next57.i921
  store i16 %i.fib, ptr %i.fic, align 2, !tbaa !20
  %i.fid = lshr i64 %i.fia, 16
  %indvars.iv.next57.i921.1 = add nuw nsw i64 %indvars.iv56.i919, 2 ; 2 uses
  %i.fie = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i921.1
  %i.fif = load i16, ptr %i.fie, align 2, !tbaa !20
  %i.fig = zext i16 %i.fif to i64
  %i.fih = add nuw nsw i64 %i.fid, %i.fig         ; 2 uses
  %i.fii = trunc i64 %i.fih to i16
  %i.fij = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next57.i921.1
  store i16 %i.fii, ptr %i.fij, align 2, !tbaa !20
  %i.fik = lshr i64 %i.fih, 16
  %indvars.iv.next57.i921.2 = add nuw nsw i64 %indvars.iv56.i919, 3 ; 2 uses
  %i.fil = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i921.2
  %i.fim = load i16, ptr %i.fil, align 2, !tbaa !20
  %i.fin = zext i16 %i.fim to i64
  %i.fio = add nuw nsw i64 %i.fik, %i.fin         ; 2 uses
  %i.fip = trunc i64 %i.fio to i16
  %i.fiq = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next57.i921.2
  store i16 %i.fip, ptr %i.fiq, align 2, !tbaa !20
  %i.fir = lshr i64 %i.fio, 16
  %indvars.iv.next57.i921.3 = add nuw nsw i64 %indvars.iv56.i919, 4 ; 2 uses
  %i.fis = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i921.3
  %i.fit = load i16, ptr %i.fis, align 2, !tbaa !20
  %i.fiu = zext i16 %i.fit to i64
  %i.fiv = add nuw nsw i64 %i.fir, %i.fiu         ; 2 uses
  %i.fiw = trunc i64 %i.fiv to i16
  %i.fix = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next57.i921.3
  store i16 %i.fiw, ptr %i.fix, align 2, !tbaa !20
  %i.fiy = lshr i64 %i.fiv, 16
  %indvars.iv.next57.i921.4 = add nuw nsw i64 %indvars.iv56.i919, 5 ; 2 uses
  %i.fiz = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i921.4
  %i.fja = load i16, ptr %i.fiz, align 2, !tbaa !20
  %i.fjb = zext i16 %i.fja to i64
  %i.fjc = add nuw nsw i64 %i.fiy, %i.fjb         ; 2 uses
  %i.fjd = trunc i64 %i.fjc to i16
  %i.fje = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next57.i921.4
  store i16 %i.fjd, ptr %i.fje, align 2, !tbaa !20
  %i.fjf = lshr i64 %i.fjc, 16
  %indvars.iv.next57.i921.5 = add nuw nsw i64 %indvars.iv56.i919, 6 ; 2 uses
  %i.fjg = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i921.5
  %i.fjh = load i16, ptr %i.fjg, align 2, !tbaa !20
  %i.fji = zext i16 %i.fjh to i64
  %i.fjj = add nuw nsw i64 %i.fjf, %i.fji         ; 2 uses
  %i.fjk = trunc i64 %i.fjj to i16
  %i.fjl = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next57.i921.5
  store i16 %i.fjk, ptr %i.fjl, align 2, !tbaa !20
  %i.fjm = lshr i64 %i.fjj, 16
  %indvars.iv.next57.i921.6 = add nuw nsw i64 %indvars.iv56.i919, 7 ; 2 uses
  %i.fjn = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i921.6
  %i.fjo = load i16, ptr %i.fjn, align 2, !tbaa !20
  %i.fjp = zext i16 %i.fjo to i64
  %i.fjq = add nuw nsw i64 %i.fjm, %i.fjp         ; 2 uses
  %i.fjr = trunc i64 %i.fjq to i16
  %i.fjs = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next57.i921.6
  store i16 %i.fjr, ptr %i.fjs, align 2, !tbaa !20
  %i.fjt = lshr i64 %i.fjq, 16                    ; 2 uses
  %indvars.iv.next57.i921.7 = add nuw nsw i64 %indvars.iv56.i919, 8 ; 2 uses
  %exitcond59.not.i922.7 = icmp eq i64 %indvars.iv.next57.i921.7, 10
  br i1 %exitcond59.not.i922.7, label %._crit_edge.i923, label %.lr.ph40.i916.new, !llvm.loop !6

._crit_edge.i923:                                 ; preds = %.prol.loopexit1787, %.lr.ph40.i916.new, %.preheader.i952
  %.128.lcssa.i924 = phi i32 [ %i.fev, %.preheader.i952 ], [ 10, %.lr.ph40.i916.new ], [ 10, %.prol.loopexit1787 ]
  %.1.lcssa.i925 = phi i64 [ %.lcssa1519, %.preheader.i952 ], [ %.lcssa1520.unr, %.prol.loopexit1787 ], [ %i.fjt, %.lr.ph40.i916.new ]
  %i.fju = trunc nuw nsw i64 %.1.lcssa.i925 to i16
  %i.fjv = zext nneg i32 %.128.lcssa.i924 to i64
  %i.fjw = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.fjv
  store i16 %i.fju, ptr %i.fjw, align 2, !tbaa !20
  %i.fjx = add i16 %i.che, 1
  %i.fjy = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep.i905, align 4, !tbaa !20 ; 2 uses
  %.not.i.i926 = icmp eq i16 %i.fjy, 0
  br i1 %.not.i.i926, label %bb.qi, label %.preheader.i.i927

bb.qi:                                            ; preds = %._crit_edge.i923
  %i.fjz = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep60.i906, align 2, !tbaa !20 ; 2 uses
  %.not.i.1.i930 = icmp eq i16 %i.fjz, 0
  br i1 %.not.i.1.i930, label %bb.qj, label %.preheader.i.i927

bb.qj:                                            ; preds = %bb.qi
  %i.fka = add i16 %i.che, -1
  %i.fkb = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep61.i907, align 16, !tbaa !20
  %.not.i.2.i931 = icmp eq i16 %i.fkb, 0
  br i1 %.not.i.2.i931, label %bb.qk, label %.lr.ph47.i.i932

bb.qk:                                            ; preds = %bb.qj
  %i.fkc = add i16 %i.che, -2
  %i.fkd = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep62.i908, align 2, !tbaa !20
  %.not.i.3.i936 = icmp eq i16 %i.fkd, 0
  br i1 %.not.i.3.i936, label %bb.ql, label %.lr.ph47.i.i932

bb.ql:                                            ; preds = %bb.qk
  %i.fke = add i16 %i.che, -3
  %i.fkf = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep63.i909, align 4, !tbaa !20
  %.not.i.4.i937 = icmp eq i16 %i.fkf, 0
  br i1 %.not.i.4.i937, label %bb.qm, label %.lr.ph47.i.i932

bb.qm:                                            ; preds = %bb.ql
  %i.fkg = add i16 %i.che, -4
  %i.fkh = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep64.i910, align 2, !tbaa !20
  %.not.i.5.i938 = icmp eq i16 %i.fkh, 0
  br i1 %.not.i.5.i938, label %bb.qn, label %.lr.ph47.i.i932

bb.qn:                                            ; preds = %bb.qm
  %i.fki = add i16 %i.che, -5
  %i.fkj = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep65.i911, align 8, !tbaa !20
  %.not.i.6.i939 = icmp eq i16 %i.fkj, 0
  br i1 %.not.i.6.i939, label %bb.qo, label %.lr.ph47.i.i932

bb.qo:                                            ; preds = %bb.qn
  %i.fkk = add i16 %i.che, -6
  %i.fkl = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep66.i912, align 2, !tbaa !20
  %.not.i.7.i940 = icmp eq i16 %i.fkl, 0
  br i1 %.not.i.7.i940, label %bb.qp, label %.lr.ph47.i.i932

bb.qp:                                            ; preds = %bb.qo
  %i.fkm = add i16 %i.che, -7
  %i.fkn = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep67.i913, align 4, !tbaa !20
  %.not.i.8.i941 = icmp eq i16 %i.fkn, 0
  br i1 %.not.i.8.i941, label %bb.qq, label %.lr.ph47.i.i932

bb.qq:                                            ; preds = %bb.qp
  %i.fko = add i16 %i.che, -8
  %i.fkp = load i16, ptr %indvars.iv72.i.lcssa.sroa.gep68.i914, align 2, !tbaa !20
  %.not.i.9.i942 = icmp eq i16 %i.fkp, 0
  br i1 %.not.i.9.i942, label %bb.qr, label %.lr.ph47.i.i932

bb.qr:                                            ; preds = %bb.qq
  %i.fkq = add i16 %i.che, -9
  %i.fkr = load i16, ptr %i.d, align 16, !tbaa !20
  %.not.i.10.i943 = icmp eq i16 %i.fkr, 0
  br i1 %.not.i.10.i943, label %bb.qs, label %.lr.ph47.i.i932

bb.qs:                                            ; preds = %bb.qr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ed, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %addmag0.exit953

.preheader.i.i927:                                ; preds = %bb.qi, %._crit_edge.i923
  %i.fks = phi i16 [ %i.fjy, %._crit_edge.i923 ], [ %i.fjz, %bb.qi ]
  %indvars.iv72.in.i.lcssa.sroa.phi.i928 = phi ptr [ %indvars.iv72.in.i.lcssa.sroa.gep.i915, %._crit_edge.i923 ], [ %indvars.iv72.i.lcssa.sroa.gep.i905, %bb.qi ] ; 2 uses
  %.03341.i.lcssa.i929 = phi i16 [ %i.fjx, %._crit_edge.i923 ], [ %i.che, %bb.qi ]
  %i.fkt = getelementptr inbounds nuw i8, ptr %i.eb, i64 26
  store i16 %.03341.i.lcssa.i929, ptr %i.fkt, align 2, !tbaa !26
  %i.fku = sub i16 0, %i.chb
  store i16 %i.fku, ptr %i.ed, align 2, !tbaa !24
  %i.fkv = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.fkw = getelementptr inbounds nuw i8, ptr %i.eb, i64 46
  store i16 %i.fks, ptr %i.fkw, align 2, !tbaa !20
  %i.fkx = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.i928, i64 -4
  %i.fky = load i16, ptr %i.fkx, align 2, !tbaa !20
  %i.fkz = getelementptr inbounds nuw i8, ptr %i.eb, i64 44
  store i16 %i.fky, ptr %i.fkz, align 2, !tbaa !20
  %i.fla = getelementptr i8, ptr %indvars.iv72.in.i.lcssa.sroa.phi.i928, i64 -20
  %i.flb = load <8 x i16>, ptr %i.fla, align 2, !tbaa !20
  store <8 x i16> %i.flb, ptr %i.fkv, align 2, !tbaa !20
  br label %addmag0.exit953

.lr.ph47.i.i932:                                  ; preds = %bb.qr, %bb.qq, %bb.qp, %bb.qo, %bb.qn, %bb.qm, %bb.ql, %bb.qk, %bb.qj
  %.03341.i.lcssa.ph.i933 = phi i16 [ %i.fkq, %bb.qr ], [ %i.fko, %bb.qq ], [ %i.fkm, %bb.qp ], [ %i.fkk, %bb.qo ], [ %i.fki, %bb.qn ], [ %i.fkg, %bb.qm ], [ %i.fke, %bb.ql ], [ %i.fkc, %bb.qk ], [ %i.fka, %bb.qj ]
  %indvars.iv58.i.lcssa.ph.i934 = phi i64 [ 0, %bb.qr ], [ 2, %bb.qq ], [ 4, %bb.qp ], [ 6, %bb.qo ], [ 8, %bb.qn ], [ 10, %bb.qm ], [ 12, %bb.ql ], [ 14, %bb.qk ], [ 16, %bb.qj ] ; 3 uses
  %i.flc = getelementptr inbounds nuw i8, ptr %i.eb, i64 26
  store i16 %.03341.i.lcssa.ph.i933, ptr %i.flc, align 2, !tbaa !26
  %i.fld = sub i16 0, %i.chb
  store i16 %i.fld, ptr %i.ed, align 2, !tbaa !24
  %i.fle = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.flf = sub nuw nsw i64 22, %indvars.iv58.i.lcssa.ph.i934
  %scevgep.i935 = getelementptr i8, ptr %i.ed, i64 %i.flf
  %i.flg = add nuw nsw i64 %indvars.iv58.i.lcssa.ph.i934, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i935, ptr noundef nonnull align 16 dereferenceable(1) %i.d, i64 range(i64 0, 23) %i.flg, i1 false), !tbaa !20
  %i.flh = sub nuw nsw i64 18, %indvars.iv58.i.lcssa.ph.i934
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.fle, i8 0, i64 %i.flh, i1 false), !tbaa !20
  br label %addmag0.exit953

addmag0.exit953:                                  ; preds = %bb.qs, %.preheader.i.i927, %.lr.ph47.i.i932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %sub.exit37

sub.exit37:                                       ; preds = %submag0.exit1086, %submag0.exit1044, %addmag0.exit1002, %addmag0.exit953
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %indvars.iv.next1209 = add nuw nsw i64 %indvars.iv1208, %i.dh ; 2 uses
  %i.fli = trunc nuw i64 %indvars.iv.next1209 to i32
  %i.flj = icmp sgt i32 %0, %i.fli
  br i1 %i.flj, label %.lr.ph, label %._crit_edge, !llvm.loop !102

._crit_edge:                                      ; preds = %sub.exit37, %mcexp.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.dg
  br i1 %exitcond.not, label %bb.qt, label %bb.e, !llvm.loop !103

bb.qt:                                            ; preds = %._crit_edge
  %i.flk = icmp slt i32 %i.dd, %0
  br i1 %i.flk, label %.preheader, label %._crit_edge1159, !llvm.loop !104

._crit_edge1159:                                  ; preds = %bb.qt, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bluestein(i32 noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.anon], align 16        ; 8 uses
  %i.a = shl nsw i32 %0, 1                        ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i32 [ 1, %bb.a ], [ %i.c, %bb.b ]   ; 10 uses
  %i.b = icmp slt i32 %.0.i, %i.a
  %i.c = shl nsw i32 %.0.i, 1                     ; 6 uses
  br i1 %i.b, label %bb.b, label %pow2_atleast.exit, !llvm.loop !105

pow2_atleast.exit:                                ; preds = %bb.b
  %i.d = sext i32 %i.c to i64
  %i.e = mul nsw i64 %i.d, 24                     ; 2 uses
  %i.f = tail call ptr @bench_malloc(i64 noundef %i.e) #13 ; 18 uses
  %i.g = load ptr, ptr @cached_bluestein_w, align 8, !tbaa !30 ; 3 uses
  %i.h = load ptr, ptr @cached_bluestein_y, align 8, !tbaa !30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.i = sitofp i32 %.0.i to double
  %i.j = fdiv double 1.000000e+00, %i.i           ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.k = fcmp oeq double %i.j, 0.000000e+00
  br i1 %i.k, label %fromreal.exit, label %bb.c

bb.c:                                             ; preds = %pow2_atleast.exit
  %i.l = fcmp ult double %i.j, 0.000000e+00       ; 2 uses
  %i.m = fneg double %i.j
  %.sink.i = select i1 %i.l, i16 -1, i16 1
  %.0.i117 = select i1 %i.l, double %i.m, double %i.j ; 3 uses
  store i16 %.sink.i, ptr %2, align 16, !tbaa !24
  %i.n = fcmp ult double %.0.i117, 1.000000e+00
  br i1 %i.n, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.c
  %.023.lcssa.i = phi i16 [ 0, %bb.c ], [ %i.q, %.lr.ph.i ] ; 2 uses
  %.1.lcssa.i = phi double [ %.0.i117, %bb.c ], [ %i.p, %.lr.ph.i ] ; 3 uses
  %i.o = fcmp olt double %.1.lcssa.i, f0x3EF0000000000000
  br i1 %i.o, label %.lr.ph32.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.128.i = phi double [ %i.p, %.lr.ph.i ], [ %.0.i117, %bb.c ]
  %.02327.i = phi i16 [ %i.q, %.lr.ph.i ], [ 0, %bb.c ]
  %i.p = fmul nnan double %.128.i, f0x3EF0000000000000 ; 3 uses
  %i.q = add i16 %.02327.i, 1                     ; 2 uses
  %i.r = fcmp ult double %i.p, 1.000000e+00
  br i1 %i.r, label %.preheader.i, label %.lr.ph.i, !llvm.loop !0

.lr.ph32.i:                                       ; preds = %.preheader.i, %.lr.ph32.i
  %.231.i = phi double [ %i.s, %.lr.ph32.i ], [ %.1.lcssa.i, %.preheader.i ]
  %.12430.i = phi i16 [ %i.t, %.lr.ph32.i ], [ %.023.lcssa.i, %.preheader.i ]
  %i.s = fmul nnan double %.231.i, 6.553600e+04   ; 3 uses
  %i.t = add i16 %.12430.i, -1                    ; 2 uses
  %i.u = fcmp olt double %i.s, f0x3EF0000000000000
  br i1 %i.u, label %.lr.ph32.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph32.i, %.preheader.i
  %.124.lcssa.i = phi i16 [ %.023.lcssa.i, %.preheader.i ], [ %i.t, %.lr.ph32.i ]
  %.2.lcssa.i = phi double [ %.1.lcssa.i, %.preheader.i ], [ %i.s, %.lr.ph32.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %.124.lcssa.i, ptr %i.v, align 2, !tbaa !26
  %i.w = fcmp une double %.2.lcssa.i, 0.000000e+00
  br i1 %i.w, label %.lr.ph38.i, label %fromreal.exit

.lr.ph38.i:                                       ; preds = %._crit_edge.i
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph38.i
  %indvars.iv.i = phi i64 [ 9, %.lr.ph38.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %.336.i = phi double [ %.2.lcssa.i, %.lr.ph38.i ], [ %i.ad, %bb.d ]
  %i.y = fmul double %.336.i, 6.553600e+04        ; 2 uses
  %i.z = fptosi double %i.y to i32                ; 2 uses
  %i.aa = sitofp i32 %i.z to double
  %i.ab = trunc i32 %i.z to i16
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.i
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !20
  %i.ad = fsub double %i.y, %i.aa                 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ae = icmp ne i64 %indvars.iv.i, 0
  %i.af = fcmp une double %i.ad, 0.000000e+00
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %i.ag, label %bb.d, label %fromreal.exit, !llvm.loop !2

fromreal.exit:                                    ; preds = %bb.d, %pow2_atleast.exit, %._crit_edge.i
  %i.ah = load i32, ptr @cached_bluestein_n, align 4, !tbaa !31
  %.not = icmp eq i32 %i.ah, %0
  br i1 %.not, label %bb.s, label %bb.e

bb.e:                                             ; preds = %fromreal.exit
  %.not115 = icmp eq ptr %i.g, null
  br i1 %.not115, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @bench_free(ptr noundef nonnull %i.g) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not116 = icmp eq ptr %i.h, null
  br i1 %.not116, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @bench_free(ptr noundef nonnull %i.h) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = sext i32 %i.a to i64
  %i.aj = mul nsw i64 %i.ai, 24
  %i.ak = tail call ptr @bench_malloc(i64 noundef %i.aj) #13 ; 14 uses
  %i.al = tail call ptr @bench_malloc(i64 noundef %i.e) #13 ; 23 uses
  store i32 %0, ptr @cached_bluestein_n, align 4, !tbaa !31
  store ptr %i.ak, ptr @cached_bluestein_w, align 8, !tbaa !30
  store ptr %i.al, ptr @cached_bluestein_y, align 8, !tbaa !30
  %i.am = icmp sgt i32 %0, 0                      ; 2 uses
  br i1 %i.am, label %.lr.ph.i119, label %bluestein_sequence.exit

.lr.ph.i119:                                      ; preds = %bb.i
  %mcexp.cached_n.promoted.i = load i32, ptr @mcexp.cached_n, align 4
  %i.an = uitofp nneg i32 %i.a to double          ; 2 uses
  %wide.trip.count.i = zext nneg i32 %0 to i64
  %i.ao = icmp eq i32 %i.a, %mcexp.cached_n.promoted.i
  br label %bb.j

bb.j:                                             ; preds = %mcexp.exit.i, %.lr.ph.i119
  %indvars.iv.i120 = phi i64 [ 0, %.lr.ph.i119 ], [ %indvars.iv.next.i121, %mcexp.exit.i ] ; 2 uses
  %.020.i = phi i32 [ 1, %.lr.ph.i119 ], [ %.1.i, %mcexp.exit.i ]
  %.not.i.i = phi i1 [ %i.ao, %.lr.ph.i119 ], [ true, %mcexp.exit.i ]
  %i.ap = shl nuw nsw i64 %indvars.iv.i120, 1     ; 2 uses
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = add i32 %.020.i, -1
  %i.as = add i32 %i.ar, %i.aq
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.1.i = phi i32 [ %i.as, %bb.j ], [ %i.au, %bb.k ] ; 7 uses
  %i.at = icmp sgt i32 %.1.i, %i.a
  %i.au = sub nuw nsw i32 %.1.i, %i.a
  br i1 %i.at, label %bb.k, label %bb.l, !llvm.loop !106

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.ap ; 11 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 6 uses
  br i1 %.not.i.i, label %bb.m, label %.preheader47.i.i

.preheader47.i.i:                                 ; preds = %bb.l, %.preheader47.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.preheader47.i.i ], [ 0, %bb.l ] ; 2 uses
  %.049.i.i = phi i32 [ %i.ba, %.preheader47.i.i ], [ 1, %bb.l ] ; 2 uses
  %i.ax = sitofp i32 %.049.i.i to double          ; 2 uses
  %i.ay = getelementptr inbounds nuw [48 x i8], ptr @mcexp.w, i64 %indvars.iv.i.i ; 2 uses
  tail call fastcc void @cos2pi(double noundef %i.ax, double noundef %i.an, ptr noundef nonnull %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  tail call fastcc void @sin2pi(double noundef %i.ax, double noundef %i.an, ptr noundef nonnull %i.az)
  %i.ba = shl nsw i32 %.049.i.i, 1                ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.bb = icmp slt i32 %i.ba, %i.a
  br i1 %i.bb, label %.preheader47.i.i, label %._crit_edge.i.loopexit.i, !llvm.loop !7

._crit_edge.i.loopexit.i:                         ; preds = %.preheader47.i.i
  store i32 %i.a, ptr @mcexp.cached_n, align 4, !tbaa !31
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.loopexit.i, %bb.l
end_hunk_7
