Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/dht-rader?download=true
inline.NumInlined: 6
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@apply:bb.a
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31
  tail call void %i.ag(ptr noundef %i.ae, ptr noundef %i.h, ptr noundef %i.h) #6
  %i.ah = load double, ptr %1, align 8, !tbaa !30 ; 2 uses
  %i.ai = load double, ptr %i.h, align 8, !tbaa !30
  %i.aj = fadd double %i.ah, %i.ai
  store double %i.aj, ptr %2, align 8, !tbaa !30
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25 ; 8 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !30
  %i.an = load double, ptr %i.h, align 8, !tbaa !30
  %i.ao = fmul double %i.am, %i.an                ; 2 uses
  store double %i.ao, ptr %i.h, align 8, !tbaa !30
  %i.ap = sdiv i64 %i.d, 2                        ; 2 uses
  %i.aq = icmp sgt i64 %i.d, 3                    ; 2 uses
  br i1 %i.aq, label %.lr.ph179.preheader, label %._crit_edge180

.lr.ph179.preheader:                              ; preds = %._crit_edge
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ap, i64 2) ; 2 uses
  %i.ar = add nsw i64 %smax, -1                   ; 3 uses
  %xtraiter = and i64 %i.ar, 1
  %i.as = icmp slt i64 %i.d, 6
  br i1 %i.as, label %.lr.ph179.epil.preheader, label %.lr.ph179.preheader.new

.lr.ph179.preheader.new:                          ; preds = %.lr.ph179.preheader
  %unroll_iter = and i64 %i.ar, -2
  br label %.lr.ph179

.lr.ph179:                                        ; preds = %.lr.ph179, %.lr.ph179.preheader.new
  %.2177 = phi i64 [ 1, %.lr.ph179.preheader.new ], [ %i.cq, %.lr.ph179 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph179.preheader.new ], [ %niter.next.1, %.lr.ph179 ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.2177
  %i.au = load double, ptr %i.at, align 8, !tbaa !30
  %i.av = sub nsw i64 %i.d, %.2177                ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !30
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.2177 ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !30 ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.av ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !30 ; 2 uses
  %i.bc = fneg double %i.bb
  %i.bd = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %i.az, i64 1
  %i.bh = fmul <2 x double> %i.be, %i.bg
  %i.bi = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.bb, i64 1
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bl, <2 x double> %i.bh) ; 2 uses
  %i.bn = extractelement <2 x double> %i.bm, i64 0 ; 2 uses
  %i.bo = extractelement <2 x double> %i.bm, i64 1 ; 2 uses
  %i.bp = fadd double %i.bo, %i.bn
  store double %i.bp, ptr %i.ay, align 8, !tbaa !30
  %i.bq = fsub double %i.bn, %i.bo
  store double %i.bq, ptr %i.ba, align 8, !tbaa !30
  %i.br = add nuw nsw i64 %.2177, 1               ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !30
  %i.bu = sub nsw i64 %i.d, %i.br                 ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !30
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.br ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !30 ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.bu ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !30 ; 2 uses
  %i.cb = fneg double %i.ca
  %i.cc = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.by, i64 1
  %i.cg = fmul <2 x double> %i.cd, %i.cf
  %i.ch = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = insertelement <2 x double> poison, double %i.by, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.ca, i64 1
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.ck, <2 x double> %i.cg) ; 2 uses
  %i.cm = extractelement <2 x double> %i.cl, i64 0 ; 2 uses
  %i.cn = extractelement <2 x double> %i.cl, i64 1 ; 2 uses
  %i.co = fadd double %i.cn, %i.cm
  store double %i.co, ptr %i.bx, align 8, !tbaa !30
  %i.cp = fsub double %i.cm, %i.cn
  store double %i.cp, ptr %i.bz, align 8, !tbaa !30
  %i.cq = add nuw nsw i64 %.2177, 2               ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge180.loopexit.unr-lcssa, label %.lr.ph179, !llvm.loop !64

._crit_edge180.loopexit.unr-lcssa:                ; preds = %.lr.ph179
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge180.loopexit, label %.lr.ph179.epil.preheader

.lr.ph179.epil.preheader:                         ; preds = %._crit_edge180.loopexit.unr-lcssa, %.lr.ph179.preheader
  %.2177.epil.init = phi i64 [ 1, %.lr.ph179.preheader ], [ %i.cq, %._crit_edge180.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod217 = trunc i64 %i.ar to i1
  tail call void @llvm.assume(i1 %lcmp.mod217)
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.2177.epil.init
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !30
  %i.ct = sub nsw i64 %i.d, %.2177.epil.init      ; 2 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !30
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.2177.epil.init ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !30 ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ct ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !30 ; 2 uses
  %i.da = fneg double %i.cz
  %i.db = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = insertelement <2 x double> poison, double %i.da, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %i.cx, i64 1
  %i.df = fmul <2 x double> %i.dc, %i.de
  %i.dg = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.cz, i64 1
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> %i.dj, <2 x double> %i.df) ; 2 uses
  %i.dl = extractelement <2 x double> %i.dk, i64 0 ; 2 uses
  %i.dm = extractelement <2 x double> %i.dk, i64 1 ; 2 uses
  %i.dn = fadd double %i.dm, %i.dl
  store double %i.dn, ptr %i.cw, align 8, !tbaa !30
  %i.do = fsub double %i.dl, %i.dm
  store double %i.do, ptr %i.cy, align 8, !tbaa !30
  br label %._crit_edge180.loopexit

._crit_edge180.loopexit:                          ; preds = %._crit_edge180.loopexit.unr-lcssa, %.lr.ph179.epil.preheader
  %.pre = load double, ptr %i.h, align 8, !tbaa !30
  br label %._crit_edge180

._crit_edge180:                                   ; preds = %._crit_edge180.loopexit, %._crit_edge
  %i.dp = phi double [ %i.ao, %._crit_edge ], [ %.pre, %._crit_edge180.loopexit ]
  %.2.lcssa = phi i64 [ 1, %._crit_edge ], [ %smax, %._crit_edge180.loopexit ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.2.lcssa
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !30
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.2.lcssa ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !30
  %i.du = fmul double %i.dr, %i.dt
  store double %i.du, ptr %i.ds, align 8, !tbaa !30
  %i.dv = fadd double %i.ah, %i.dp
  store double %i.dv, ptr %i.h, align 8, !tbaa !30
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !23 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !31
  tail call void %i.dz(ptr noundef %i.dx, ptr noundef nonnull %i.h, ptr noundef nonnull %i.h) #6
  %i.ea = load double, ptr %i.h, align 8, !tbaa !30
  %i.eb = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ac
  store double %i.ea, ptr %i.eb, align 8, !tbaa !30
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !29 ; 13 uses
  %i.ee = icmp eq i64 %i.d, %i.k
  br i1 %i.ee, label %.preheader, label %.preheader169

.preheader169:                                    ; preds = %._crit_edge180
  %i.ef = icmp sgt i64 %i.b, 2
  br i1 %i.ef, label %.lr.ph185, label %.loopexit

.lr.ph185:                                        ; preds = %.preheader169
  %i.eg = sub nsw i64 92681, %i.ed
  br label %bb.p

.preheader:                                       ; preds = %._crit_edge180
  %i.eh = sub nsw i64 92681, %i.ed                ; 3 uses
  br i1 %i.aq, label %.lr.ph188, label %._crit_edge189

.lr.ph188:                                        ; preds = %.preheader
  %smax203 = tail call i64 @llvm.smax.i64(i64 %i.ap, i64 2) ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph188, %bb.i
  %.3187 = phi i64 [ 1, %.lr.ph188 ], [ %i.eq, %bb.i ] ; 3 uses
  %.1159186 = phi i64 [ %i.ed, %.lr.ph188 ], [ %i.eu, %bb.i ] ; 4 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.3187
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !30
  %i.ek = sub nsw i64 %i.d, %.3187
  %i.el = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !30
  %i.en = fadd double %i.ej, %i.em
  %i.eo = mul nsw i64 %.1159186, %i.ac
  %i.ep = getelementptr inbounds [8 x i8], ptr %2, i64 %i.eo
  store double %i.en, ptr %i.ep, align 8, !tbaa !30
  %i.eq = add nuw nsw i64 %.3187, 1               ; 2 uses
  %.not167 = icmp sgt i64 %.1159186, %i.eh
  br i1 %.not167, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.er = mul nsw i64 %.1159186, %i.ed
  %i.es = srem i64 %i.er, %i.b
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.et = tail call i64 @fftw_safe_mulmod(i64 noundef %.1159186, i64 noundef %i.ed, i64 noundef %i.b) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.eu = phi i64 [ %i.es, %bb.g ], [ %i.et, %bb.h ] ; 2 uses
  %exitcond204.not = icmp eq i64 %i.eq, %smax203
  br i1 %exitcond204.not, label %._crit_edge189, label %bb.f, !llvm.loop !65

._crit_edge189:                                   ; preds = %bb.i, %.preheader
  %.1159.lcssa = phi i64 [ %i.ed, %.preheader ], [ %i.eu, %bb.i ] ; 4 uses
  %.3.lcssa = phi i64 [ 1, %.preheader ], [ %smax203, %bb.i ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.3.lcssa
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !30
  %i.ex = mul nsw i64 %.1159.lcssa, %i.ac
  %i.ey = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ex
  store double %i.ew, ptr %i.ey, align 8, !tbaa !30
  %.not165 = icmp sgt i64 %.1159.lcssa, %i.eh
  br i1 %.not165, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge189
  %i.ez = mul nsw i64 %.1159.lcssa, %i.ed
  %i.fa = srem i64 %i.ez, %i.b
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge189
  %i.fb = tail call i64 @fftw_safe_mulmod(i64 noundef %.1159.lcssa, i64 noundef %i.ed, i64 noundef %i.b) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fc = phi i64 [ %i.fa, %bb.j ], [ %i.fb, %bb.k ]
  %.4192 = add nuw nsw i64 %.3.lcssa, 1           ; 2 uses
  %i.fd = icmp slt i64 %.4192, %i.d
  br i1 %i.fd, label %.lr.ph196, label %.loopexit

.lr.ph196:                                        ; preds = %bb.l, %bb.o
  %.4194 = phi i64 [ %.4, %bb.o ], [ %.4192, %bb.l ] ; 3 uses
  %.2160193 = phi i64 [ %i.fp, %bb.o ], [ %i.fc, %bb.l ] ; 4 uses
  %i.fe = sub nuw nsw i64 %i.d, %.4194
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !30
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.4194
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !30
  %i.fj = fsub double %i.fg, %i.fi
  %i.fk = mul nsw i64 %.2160193, %i.ac
  %i.fl = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fk
  store double %i.fj, ptr %i.fl, align 8, !tbaa !30
  %.not166 = icmp sgt i64 %.2160193, %i.eh
  br i1 %.not166, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph196
  %i.fm = mul nsw i64 %.2160193, %i.ed
  %i.fn = srem i64 %i.fm, %i.b
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph196
  %i.fo = tail call i64 @fftw_safe_mulmod(i64 noundef %.2160193, i64 noundef %i.ed, i64 noundef %i.b) #6
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.fp = phi i64 [ %i.fn, %bb.m ], [ %i.fo, %bb.n ]
  %.4 = add nuw i64 %.4194, 1                     ; 2 uses
  %exitcond205.not = icmp eq i64 %.4, %i.d
  br i1 %exitcond205.not, label %.loopexit, label %.lr.ph196, !llvm.loop !66

bb.p:                                             ; preds = %.lr.ph185, %bb.s
  %.5184 = phi i64 [ 1, %.lr.ph185 ], [ %i.fy, %bb.s ] ; 3 uses
  %.3161183 = phi i64 [ %i.ed, %.lr.ph185 ], [ %i.gc, %bb.s ] ; 4 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.5184
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !30
  %i.fs = sub nsw i64 %i.d, %.5184
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fs
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !30
  %i.fv = fadd double %i.fr, %i.fu
  %i.fw = mul nsw i64 %.3161183, %i.ac
  %i.fx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fw
  store double %i.fv, ptr %i.fx, align 8, !tbaa !30
  %i.fy = add nuw nsw i64 %.5184, 1               ; 2 uses
  %.not = icmp sgt i64 %.3161183, %i.eg
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fz = mul nsw i64 %.3161183, %i.ed
  %i.ga = srem i64 %i.fz, %i.b
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.gb = tail call i64 @fftw_safe_mulmod(i64 noundef %.3161183, i64 noundef %i.ed, i64 noundef %i.b) #6
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.gc = phi i64 [ %i.ga, %bb.q ], [ %i.gb, %bb.r ]
  %exitcond202.not = icmp eq i64 %i.fy, %i.k
  br i1 %exitcond202.not, label %.loopexit, label %bb.p, !llvm.loop !67

.loopexit:                                        ; preds = %bb.s, %bb.o, %.preheader169, %bb.l
  tail call void @fftw_ifree(ptr noundef nonnull %i.h) #6
  ret void
}

declare void @fftw_ops_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @fftw_ifree0(ptr noundef) local_unnamed_addr #1

declare void @fftw_plan_destroy_internal(ptr noundef) local_unnamed_addr #1

declare void @fftw_plan_awake(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @fftw_find_generator(i64 noundef) local_unnamed_addr #1

declare i64 @fftw_power_mod(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @fftw_rader_tl_delete(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @fftw_rader_tl_find(i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mktriggen(i32 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @fftw_safe_mulmod(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @fftw_triggen_destroy(ptr noundef) local_unnamed_addr #1

declare void @fftw_rader_tl_insert(i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @fftw_is_prime(i64 noundef) local_unnamed_addr #1

declare i32 @fftw_factors_into_small_primes(i64 noundef) local_unnamed_addr #1

declare i32 @fftw_factors_into(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"solver_s", !9, i64 0, !6, i64 8}
!11 = !{!"", !10, i64 0, !6, i64 16}
!12 = !{!11, !6, i64 16}
!13 = !{!"p1 double", !9, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"double", !5, i64 0}
!17 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!18 = !{!"plan_s", !9, i64 0, !17, i64 8, !16, i64 40, !6, i64 48, !6, i64 52}
!19 = !{!"", !18, i64 0, !9, i64 56}
!20 = !{!"p1 _ZTS6plan_s", !9, i64 0}
!21 = !{!"", !19, i64 0, !20, i64 64, !20, i64 72, !13, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !20, i64 136}
!22 = !{!21, !20, i64 64}
!23 = !{!21, !20, i64 72}
!24 = !{!21, !20, i64 136}
!25 = !{!21, !13, i64 80}
!26 = !{!21, !14, i64 88}
!27 = !{!21, !14, i64 96}
!28 = !{!21, !14, i64 104}
!29 = !{!21, !14, i64 112}
!30 = !{!16, !16, i64 0}
!31 = !{!19, !9, i64 56}
!32 = !{!21, !14, i64 120}
!33 = !{!21, !14, i64 128}
!34 = distinct !{!34, !15}
!35 = !{!"problem_s", !9, i64 0}
!36 = !{!"", !35, i64 0, !9, i64 8, !9, i64 16, !13, i64 24, !13, i64 32, !5, i64 40}
!37 = !{!36, !9, i64 8}
!38 = !{!"", !6, i64 0, !5, i64 8}
!39 = !{!38, !6, i64 0}
!40 = !{!36, !9, i64 16}
!41 = !{!6, !6, i64 0}
!42 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16}
!43 = !{!42, !14, i64 0}
!44 = !{!14, !14, i64 0}
!45 = !{!21, !16, i64 32}
!46 = !{!21, !16, i64 8}
!47 = !{!21, !16, i64 16}
!48 = distinct !{null}
!49 = distinct !{!49, !15}
!50 = distinct !{!50, !15, !57, !58}
!51 = distinct !{!51, !59}
!52 = distinct !{!52, !15, !57}
!53 = !{!"p1 _ZTS9rader_tls", !9, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"triggen_s", !9, i64 0, !9, i64 8, !9, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !13, i64 48, !13, i64 56, !14, i64 64}
!56 = !{!55, !9, i64 8}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = !{!"llvm.loop.unroll.runtime.disable"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!"printer_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !6, i64 36}
!61 = !{!60, !9, i64 0}
!62 = !{!60, !9, i64 16}
!63 = distinct !{!63, !15}
!64 = distinct !{!64, !15}
!65 = distinct !{!65, !15}
!66 = distinct !{!66, !15}
!67 = distinct !{!67, !15}
end_hunk_0
